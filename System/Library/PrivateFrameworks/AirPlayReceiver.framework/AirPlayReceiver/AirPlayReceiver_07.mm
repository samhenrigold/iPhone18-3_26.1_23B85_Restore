uint64_t apsink_enqueueFrame(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, const __CFDictionary *a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    v11 = "";
    if (!a5)
    {
      v11 = "non-";
    }

    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_enqueueFrame(APReceiverScreenSinkRef, CMBlockBufferRef, uint64_t, CFDictionaryRef, Boolean)", 33554462, "Sink %{ptr}: enqueuing frame with time %llu (%skeyframe)\n", a1, a3, v11);
  }

  if (!*(DerivedStorage + 176))
  {
    v42 = 4294895164;
LABEL_37:
    APSLogErrorAt();
    return v42;
  }

  v12 = *(DerivedStorage + 172);
  if (!v12)
  {
    v42 = 4294895164;
    goto LABEL_37;
  }

  if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) != *(DerivedStorage + 168))
  {
    APSLogErrorAt();
    return 4294895163;
  }

  if (*(DerivedStorage + 179))
  {
    apsink_enableImageInfoCollection(a1, a4 != 0);
    v12 = *(DerivedStorage + 172);
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  if (v12 == 1)
  {
    v14 = *(DerivedStorage + 32);
    v16 = *(DerivedStorage + 80);
    v15 = *(DerivedStorage + 88);
    v17 = *(DerivedStorage + 48);
    v18 = *(DerivedStorage + 160);
    v44 = *(DerivedStorage + 104);
    v45 = *(DerivedStorage + 96);
    v19 = *(DerivedStorage + 112);
    v20 = *(DerivedStorage + 120);
    v21 = *(DerivedStorage + 128);
    v22 = *(DerivedStorage + 136);
    v23 = *(DerivedStorage + 144);
    v24 = *(DerivedStorage + 152);
    v25 = *(CMBaseObjectGetVTable() + 16);
    if (*(v25 + 24))
    {
      v26 = (*(v25 + 32))(v14, v16, v15, v17, a2, a3, v18, v13, v45, v44, v19, v20, v21, v22, v23, v24);
    }

    else
    {
      v26 = 4294954514;
    }

    goto LABEL_26;
  }

  memset(&sampleTimingArray.presentationTimeStamp, 0, sizeof(sampleTimingArray.presentationTimeStamp));
  sbuf = 0;
  if (!*(DerivedStorage + 40))
  {
    v42 = 4294895164;
    goto LABEL_37;
  }

  *&sampleTimingArray.duration.value = *MEMORY[0x277CC0898];
  sampleTimingArray.duration.epoch = *(MEMORY[0x277CC0898] + 16);
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
  CMClockMakeHostTimeFromSystemUnits(&sampleTimingArray.presentationTimeStamp, a3);
  sampleSizeArray = CMBlockBufferGetDataLength(a2);
  v27 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], a2, 1u, 0, 0, *(DerivedStorage + 40), 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &sbuf);
  if (v27)
  {
    v42 = v27;
    goto LABEL_37;
  }

  if (!a5)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    CFDictionarySetValue(ValueAtIndex, *MEMORY[0x277CC06A0], *MEMORY[0x277CBED28]);
  }

  v30 = *(DerivedStorage + 32);
  v31 = sbuf;
  v32 = *(DerivedStorage + 160);
  v33 = *(DerivedStorage + 96);
  v34 = *(DerivedStorage + 104);
  v35 = *(DerivedStorage + 112);
  v36 = *(DerivedStorage + 120);
  v37 = *(DerivedStorage + 128);
  v38 = *(DerivedStorage + 136);
  v40 = *(DerivedStorage + 144);
  v39 = *(DerivedStorage + 152);
  v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v41)
  {
    v26 = v41(v30, v31, v32, v33, v34, v35, v36, v37, v38, v40, v39);
  }

  else
  {
    v26 = 4294954514;
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

LABEL_26:
  v42 = apsink_remapEnqueueError(a1, v26);
  if (v42)
  {
    goto LABEL_37;
  }

  *(DerivedStorage + 56) = a3;
  ++*(DerivedStorage + 164);
  if (a4 && !*(DerivedStorage + 179))
  {
    APReceiverStatsCollectorLogFrameStats(a4, 0);
    return 0;
  }

  return v42;
}

uint64_t apsink_enableImageInfoCollection(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (a2)
  {
    if (*(result + 180))
    {
      return result;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    result = CMNotificationCenterAddListener();
    v5 = 1;
  }

  else
  {
    if (!*(result + 180))
    {
      return result;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    result = CMNotificationCenterRemoveListener();
    v5 = 0;
  }

  *(v4 + 180) = v5;
  return result;
}

void apsink_handleImageRelease(int a1, int a2, int a3, int a4, CFTypeRef cf)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(cf, *MEMORY[0x277CD6330]);

      APReceiverStatsCollectorLogFrameStats(Value, cf);
    }
  }
}

uint64_t apsink_Stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 176))
  {
    v3 = DerivedStorage;
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_Stop(APReceiverScreenSinkRef)", 33554462, "Stopping sink %{ptr}\n", a1);
    }

    apsink_enableHUD(a1, 0);
    apsink_enableImageInfoCollection(a1, 0);
    if (*(v3 + 24) && *(v3 + 178))
    {
      v4 = dispatch_semaphore_create(0);
      FigGetCFPreferenceDoubleWithDefault();
      FigGetCFPreferenceDoubleWithDefault();
      FigGetCFPreferenceDoubleWithDefault();
      dispatch_get_global_queue(0, 0);
      FadeOutLayerThruBlack();
      dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v4);
    }

    if (*(v3 + 32))
    {
      CMBaseObject = FigVideoQueueGetCMBaseObject();
      if (CMBaseObject)
      {
        v6 = CMBaseObject;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }

      v8 = *(v3 + 32);
      if (v8)
      {
        CFRelease(v8);
        *(v3 + 32) = 0;
      }
    }

    v9 = CMBaseObjectGetDerivedStorage();
    v10 = v9[3];
    if (v10)
    {
      [v10 removeFromSuperlayer];
    }

    v9[1] = 0;
    v9[2] = 0;

    v9[3] = 0;
    [MEMORY[0x277CD9FF0] flush];
    *(v3 + 176) = 0;
  }

  return 0;
}

void apsink_enableHUD(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    if (*(DerivedStorage + 177))
    {
      return;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"PresentationLayer", *(v4 + 16));
    [*(v4 + 24) zPosition];
    FigCFDictionarySetInt32();
    APReceiverStatsCollectorEnableHUD(*v4, Mutable);
    CFRelease(Mutable);
    v6 = 1;
  }

  else
  {
    if (!*(DerivedStorage + 177))
    {
      return;
    }

    APReceiverStatsCollectorDisableHUD(*DerivedStorage);
    v6 = 0;
  }

  *(v4 + 177) = v6;
}

uint64_t apsink_Start(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v26 = 4294895165;
    goto LABEL_42;
  }

  v5 = DerivedStorage;
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_Start(APReceiverScreenSinkRef, CFDictionaryRef)", 33554462, "Starting sink %{ptr} with options: %@\n", a1, a2);
  }

  if (*(v5 + 176))
  {
    APSLogErrorAt();
    v26 = 4294895164;
LABEL_43:
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 90 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_Start(APReceiverScreenSinkRef, CFDictionaryRef)", 33554522, "### Start sink %{ptr} failed, error: %#m\n", a1, v26);
    }

    v43 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v43)
    {
      v43(a1);
    }

    return v26;
  }

  *(v5 + 176) = 1;
  *(v5 + 164) = 0;
  FigCFDictionaryGetCGSizeIfPresent();
  if (*(v5 + 64) <= 1.0 || *(v5 + 72) <= 1.0)
  {
    v26 = APSSignalErrorAt();
    if (!v26)
    {
      return v26;
    }

    goto LABEL_43;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  Value = CFDictionaryGetValue(a2, @"PresentationLayer");
  if (!Value)
  {
    v9 = CFDictionaryGetValue(a2, @"PresentationContext");
    if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v26 = 4294895165;
      APSLogErrorAt();
      [v7 drain];
      goto LABEL_42;
    }

    v11 = v10;
    *(v6 + 8) = v11;
    Value = [v11 layer];
  }

  v12 = Value;
  *(v6 + 16) = v12;
  if (v12)
  {
    [v12 frame];
    v16 = v15;
    v18 = v17;
    *(v6 + 80) = v15;
    *(v6 + 88) = v17;
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 30)
    {
      v19 = v13;
      v20 = v14;
      if (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_setupLayers(APReceiverScreenSinkRef, CFDictionaryRef)", 33554462, "Set up presentation layer: %.2f, %.2f, %.2f, %.2f\n", v19, v20, v16, v18);
      }
    }

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v21 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    *(v6 + 24) = v21;
    [v21 setName:@"VideoLayer"];
    [*(v6 + 24) setFrame:{0.0, 0.0, v16, v18}];
    [*(v6 + 24) setBackgroundColor:CGColorGetBlack()];
    [*(v6 + 24) setEdgeAntialiasingMask:0];
    [*(v6 + 16) addSublayer:*(v6 + 24)];
    [MEMORY[0x277CD9FF0] commit];
    [v7 drain];
  }

  else
  {
    v26 = APSSignalErrorAt();
    [v7 drain];
    if (v26)
    {
      goto LABEL_42;
    }
  }

  v22 = CMBaseObjectGetDerivedStorage();
  v23 = 1;
  while (1)
  {
    v24 = FigVideoQueueCreate();
    if (!v24)
    {
      break;
    }

    v25 = v24;
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 60 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_setupVideoQueue(APReceiverScreenSinkRef)", 33554492, "### Video queue create try %d of %d failed: %#m\n", v23, 100);
    }

    usleep(0x186A0u);
    if (++v23 == 101)
    {
      *(v22 + 168) = atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed);
      APSLogErrorAt();
      v26 = v25;
      goto LABEL_42;
    }
  }

  *(v22 + 168) = atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed);
  v27 = *(v22 + 24);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v29)
  {
    v26 = 4294954514;
LABEL_41:
    APSLogErrorAt();
LABEL_42:
    APSLogErrorAt();
    goto LABEL_43;
  }

  v30 = v29(CMBaseObject, *MEMORY[0x277CD6508], v27);
  if (v30)
  {
    v26 = v30;
    goto LABEL_41;
  }

  SInt32 = FigCFNumberCreateSInt32();
  v32 = FigVideoQueueGetCMBaseObject();
  v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v33)
  {
    v33(v32, *MEMORY[0x277CD64F8], SInt32);
  }

  [*(v22 + 24) frame];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v45);
  v35 = FigVideoQueueGetCMBaseObject();
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v36)
  {
    v26 = 4294954514;
    goto LABEL_51;
  }

  v37 = v36(v35, *MEMORY[0x277CD6500], DictionaryRepresentation);
  if (v37)
  {
    v26 = v37;
    goto LABEL_51;
  }

  v38 = FigVideoQueueGetCMBaseObject();
  v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v39)
  {
    v39(v38, *MEMORY[0x277CD6510], *MEMORY[0x277CBED28]);
  }

  v40 = *(v22 + 32);
  v41 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v41)
  {
    v26 = 4294954514;
    goto LABEL_51;
  }

  v42 = v41(v40, 0);
  if (v42)
  {
    v26 = v42;
LABEL_51:
    APSLogErrorAt();
    if (!DictionaryRepresentation)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_setupVideoQueue(APReceiverScreenSinkRef)", 33554462, "Started video queue\n");
  }

  v26 = 0;
  if (DictionaryRepresentation)
  {
LABEL_52:
    CFRelease(DictionaryRepresentation);
  }

LABEL_53:
  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v26)
  {
    goto LABEL_42;
  }

  return v26;
}

uint64_t apsink_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_28;
  }

  v7 = DerivedStorage;
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "%{ptr} set propertyKey: '%@'\n", a1, a2);
  }

  if (CFEqual(a2, @"StatsDisplayEnabled"))
  {
    if (*(v7 + 176))
    {
      apsink_enableHUD(a1, *MEMORY[0x277CBED28] == a3);
      return 0;
    }

    v8 = 4294895164;
LABEL_31:
    APSLogErrorAt();
    return v8;
  }

  if (CFEqual(a2, @"StatsCollector"))
  {
    if (*(v7 + 176))
    {
      v8 = 4294895164;
      goto LABEL_31;
    }

    if (!a3)
    {
      v8 = *v7;
      *v7 = 0;
      if (!v8)
      {
        return v8;
      }

      goto LABEL_22;
    }

    v10 = CFGetTypeID(a3);
    if (APReceiverStatsCollectorGetTypeID_once != -1)
    {
      dispatch_once(&APReceiverStatsCollectorGetTypeID_once, &__block_literal_global_536);
    }

    if (v10 == APReceiverStatsCollectorGetTypeID_typeID)
    {
      v8 = *v7;
      *v7 = a3;
      CFRetain(a3);
      if (!v8)
      {
        return v8;
      }

LABEL_22:
      CFRelease(v8);
      return 0;
    }

LABEL_28:
    APSLogErrorAt();
    return 4294895165;
  }

  if (CFEqual(a2, @"ScreenFadeOutOnStop"))
  {
    v8 = 0;
    *(v7 + 178) = *MEMORY[0x277CBED28] == a3;
  }

  else
  {
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "Unknown property '%@'\n", a2);
    }

    return 4294954512;
  }

  return v8;
}

uint64_t apsink_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 4294895165;
LABEL_11:
    APSLogErrorAt();
    return v6;
  }

  if (!a4)
  {
    v6 = 4294895165;
    goto LABEL_11;
  }

  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "%{ptr} copy propertyKey: '%@'\n", a1, a2);
  }

  return 4294954512;
}

CFStringRef apsink_CopyDebugDescription(const void *a1)
{
  v5 = 0;
  ASPrintF(&v5, "%{ptr}", a1);
  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithFormat(v2, 0, @"<APReceiverScreenSinkAirPlay %p %s>", a1, v5);
  free(v5);
  return v3;
}

void apsink_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "void apsink_Finalize(CMBaseObjectRef)", 33554462, "Finalizing screen sink %{ptr}\n", a1);
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    v3(a1);
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t __APReceiverScreenSinkCreateAirPlay_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

void apsink_handleServerDisconnect()
{
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 60 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "void apsink_handleServerDisconnect(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554492, "### Media services died!\n");
  }

  atomic_fetch_add_explicit(sServerDisconnectCount, 1u, memory_order_relaxed);
}

void AirTunesDACPClient_Delete(char *a1)
{
  if (*a1 == 1684104048)
  {
    v3 = *(a1 + 9);
    if (v3)
    {
      pthread_mutex_lock(v3);
      a1[160] = 1;
      pthread_mutex_unlock(*(a1 + 9));
    }

    if (*(a1 + 19))
    {
      NetSocket_Cancel();
    }

    if (*(a1 + 18))
    {
      pthread_cond_signal((a1 + 80));
      pthread_join(*(a1 + 17), 0);
      *(a1 + 18) = 0;
    }

    *a1 = 1145127760;
    if (*(a1 + 19))
    {
      NetSocket_Delete();
      *(a1 + 19) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      pthread_cond_destroy(v4);
      *(a1 + 16) = 0;
    }

    v5 = *(a1 + 9);
    if (v5)
    {
      pthread_mutex_destroy(v5);
      *(a1 + 9) = 0;
    }

    while (1)
    {
      v6 = *(a1 + 23);
      if (!v6)
      {
        break;
      }

      *(a1 + 23) = *v6;
      _AirTunesDACPClient_FreeRequest(v6);
    }

    v7 = *(a1 + 5311);
    if (v7)
    {
      free(v7);
    }

    free(a1);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirTunesDACPClient_FreeRequest(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

uint64_t _AirTunesDACPClient_Thread(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = a1 + 40960;
  pthread_setname_np("AirPlayDACP");
  v3 = "iTunes_Ctrl_";
  v4 = "%s%016llX";
  v5 = "_dacp._tcp";
LABEL_2:
  pthread_mutex_lock((a1 + 8));
  while (!*(a1 + 160))
  {
    v6 = *(a1 + 184);
    if (v6)
    {
      *(a1 + 184) = *v6;
      --*(a1 + 192);
      pthread_mutex_unlock((a1 + 8));
      v7 = *(v6 + 16);
      if (*(v6 + 8))
      {
        if (!strcmp(*(v6 + 16), "stopSession"))
        {
          if (*(a1 + 162))
          {
            NetSocket_Disconnect();
            *(a1 + 162) = 0;
          }
        }

        goto LABEL_78;
      }

      if (*(a1 + 162))
      {
        if ((*(*(a1 + 152) + 24))() == -6753)
        {
          NetSocket_Disconnect();
          *(a1 + 162) = 0;
          goto LABEL_15;
        }

        if (*(a1 + 162))
        {
          v8 = v5;
          v9 = v4;
          v10 = v3;
          v34 = 1;
          goto LABEL_35;
        }
      }

LABEL_15:
      sdRef = 0;
      *(v2 + 508) = 0;
      SNPrintF(name, 1009, v4, v3, *(v2 + 496));
      v11 = DNSServiceResolve(&sdRef, 0, 0, name, v5, "local.", _AirTunesDACPClient_ResolveControllerCallBack, a1);
      if (v11)
      {
        v19 = v11;
        APSLogErrorAt();
      }

      else
      {
        v12 = v4;
        v13 = v3;
        if (DNSServiceRefSockFD(sdRef) < 0)
        {
          v16 = mach_absolute_time();
          v17 = UpTicksPerSecond();
          if (*(v2 + 508))
          {
LABEL_25:
            v19 = 0;
          }

          else
          {
            v18 = 5 * v17 + v16;
            while (mach_absolute_time() < v18)
            {
              usleep(0xC350u);
              if (*(v2 + 508))
              {
                goto LABEL_25;
              }
            }

            v19 = 4294960574;
          }
        }

        else
        {
          while (1)
          {
            v14 = NetSocket_Wait();
            if (v14)
            {
              v19 = v14;
              goto LABEL_26;
            }

            v15 = DNSServiceProcessResult(sdRef);
            if (v15)
            {
              break;
            }

            if (*(v2 + 508))
            {
              goto LABEL_25;
            }
          }

          v19 = v15;
          APSLogErrorAt();
        }

LABEL_26:
        v3 = v13;
        v4 = v12;
        v5 = "_dacp._tcp";
      }

      if (sdRef)
      {
        DNSServiceRefDeallocate(sdRef);
      }

      if (v19 || (v19 = NetSocket_TCPConnect(), v19))
      {
LABEL_74:
        if (*(a1 + 162))
        {
          NetSocket_Disconnect();
          *(a1 + 162) = 0;
        }

        goto LABEL_76;
      }

      v8 = v5;
      v9 = v4;
      v10 = v3;
      if (*(a1 + 161))
      {
        v34 = 1;
        *(a1 + 162) = 1;
      }

      else
      {
        v34 = 0;
      }

LABEL_35:
      v20 = *(v2 + 504);
      ShortVersionLength = APSVersionUtilsGetShortVersionLength();
      if ((snprintf(__str, 0x800uLL, "GET /ctrl-int/1/%s HTTP/1.1\r\nHost: %s\r\nActive-Remote: %u\r\n%s: AirPlay/%.*s\r\n\r\n", v7, (a1 + 41469), v20, "User-Agent", ShortVersionLength, "920.10.1") - 2048) <= 0xFFFFF800)
      {
        APSLogErrorAt();
        v19 = 4294960534;
        v3 = v10;
        v4 = v9;
        v5 = v8;
        goto LABEL_72;
      }

      NetSocket_GetNative();
      v3 = v10;
      v4 = v9;
      v5 = v8;
      while (1)
      {
        v22 = SocketWriteData();
        if (!v22)
        {
          break;
        }

        v19 = v22;
        if (v22 != 35)
        {
          goto LABEL_67;
        }

        v23 = NetSocket_Wait();
        v19 = v23;
        if (v23 == -6723)
        {
          goto LABEL_72;
        }

        if (v23)
        {
          goto LABEL_67;
        }
      }

      *(a1 + 8392) = 0;
      while (1)
      {
        v24 = HTTPReadHeader();
        if (!v24)
        {
          break;
        }

        v19 = v24;
        if (v24 != 35)
        {
          goto LABEL_70;
        }

        v25 = NetSocket_Wait();
        v19 = v25;
        if (v25 == -6723)
        {
          goto LABEL_71;
        }

        if (v25)
        {
          goto LABEL_70;
        }
      }

      v26 = HTTPHeader_Parse();
      if (v26)
      {
        v19 = v26;
LABEL_70:
        APSLogErrorAt();
LABEL_71:
        v5 = "_dacp._tcp";
        goto LABEL_72;
      }

      v27 = *(a1 + 8632);
      if (!v27)
      {
        APSLogErrorAt();
        v19 = 4294960584;
        goto LABEL_71;
      }

      if ((v27 - 300) <= 0xFFFFFF9B)
      {
        APSLogErrorAt();
        v19 = *(a1 + 8632);
        goto LABEL_71;
      }

      v28 = *(a1 + 8664);
      v5 = "_dacp._tcp";
      if (v28 >= 0x8000)
      {
        APSLogErrorAt();
        v19 = 4294960553;
        goto LABEL_72;
      }

      *(a1 + 41448) = 0;
      if (v28)
      {
        v29 = (*(*(a1 + 152) + 24))();
        v19 = v29;
        if (v29 != -6753 && v29 != -6723 && v29 != 0)
        {
LABEL_67:
          APSLogErrorAt();
        }

LABEL_72:
        if (v34)
        {
          if (!v19)
          {
            goto LABEL_78;
          }

          goto LABEL_74;
        }

        NetSocket_Disconnect();
        if (!v19)
        {
          goto LABEL_78;
        }

LABEL_76:
        v32 = *(a1 + 168);
        if (v32)
        {
          v32(v19, *(a1 + 176));
        }
      }

      else if ((v34 & 1) == 0)
      {
        NetSocket_Disconnect();
      }

LABEL_78:
      _AirTunesDACPClient_FreeRequest(v6);
      goto LABEL_2;
    }

    pthread_cond_wait((a1 + 80), (a1 + 8));
  }

  pthread_mutex_unlock((a1 + 8));
  return 0;
}

void _AirTunesDACPClient_ResolveControllerCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a4 != -65791)
  {
    if (a4)
    {

      APSLogErrorAt();
    }

    else
    {
      __strlcpy_chk();
      *(a10 + 42478) = __rev16(a7);
      *(a10 + 41468) = 1;
    }
  }
}

uint64_t _AirTunesDACPClient_ScheduleCommandInternal(uint64_t a1, const char *a2, int a3)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (*a1 != 1684104048)
  {
    APSLogErrorAt();
    return 4294960556;
  }

  pthread_mutex_lock((a1 + 8));
  if (!a3)
  {
    if (*(a1 + 192) <= 9)
    {
      if (*(a1 + 41456) && *(a1 + 41464))
      {
        goto LABEL_4;
      }

      v11 = 4294960574;
    }

    else
    {
      v11 = 4294960567;
    }

LABEL_14:
    pthread_mutex_unlock((a1 + 8));
    return v11;
  }

LABEL_4:
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040B4FB57C1uLL);
  if (!v6)
  {
    APSLogErrorAt();
LABEL_20:
    v11 = 4294960568;
    goto LABEL_14;
  }

  v7 = v6;
  *(v6 + 8) = a3;
  v8 = strdup(a2);
  v7[2] = v8;
  if (!v8)
  {
    APSLogErrorAt();
    _AirTunesDACPClient_FreeRequest(v7);
    goto LABEL_20;
  }

  v9 = (a1 + 184);
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9);
  *v10 = v7;
  ++*(a1 + 192);
  pthread_mutex_unlock((a1 + 8));
  pthread_cond_signal((a1 + 80));
  return 0;
}

uint64_t pairingServices_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&pairingServices_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t _HandleAgentServiceDisconnect()
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "void _HandleAgentServiceDisconnect(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", 33554482, "%@ agent service has disconnected.", @"com.apple.airplay.receiver.mediaremote.agent.services");
  }

  FigSimpleMutexLock();
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "void _HandleAgentServiceDisconnect(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", 33554482, "Disconnected from mediaremoted");
  }

  gAPReceiverMediaRemoteService_6 = 0;

  return FigSimpleMutexUnlock();
}

uint64_t aprmrc_handleClientDeath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    v4 = getprogname();
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "void aprmrc_handleClientDeath(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", 33554482, "### %s received '%@' notification. Killing all remote control connections...\n", v4, a3);
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  gAPReceiverMediaRemoteService_2 = 0;
  FigSimpleMutexUnlock();
  v5 = gAPReceiverMediaRemoteService_0;

  return AirPlayReceiverServerControl(v5, 0, @"partnerProcessDeath", @"MediaRemoteServices", 0, 0);
}

uint64_t APReceiverMediaRemoteXPCService_CommandHandler(const void *a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 40 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_CommandHandler(CFStringRef, CFDictionaryRef, CFDictionaryRef *)", 33554472, "Received %@ message from Client\n", a1);
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  gAPReceiverMediaRemoteService_2 = 1;
  FigSimpleMutexUnlock();
  if (CFEqual(a1, @"sendData"))
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"objectID");
      if (Value)
      {
        v7 = Value;
        v8 = CFDictionaryGetValue(a2, @"data");
        if (v8)
        {
          v9 = v8;
          if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
          {
            Length = CFDataGetLength(v9);
            LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_CommandHandler(CFStringRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "sendData: %@ (%d bytes)\n", v7, Length);
          }

          FigSimpleMutexCheckIsNotLockedOnThisThread();
          v20 = APReceiverMediaRemoteXPCService_copyCommChannelEntry(v7);
          if (v20)
          {
            v21 = v20;
            v22 = v20[3];
            if (v22)
            {
              v23 = v20[4];
              if (v23)
              {
                v24 = CFRetain(v23);
                CFRelease(v21);
                if (v24)
                {
                  v25 = FigCFWeakReferenceHolderCopyReferencedObject();
                  if (!v25)
                  {
                    APSLogErrorAt();
                    v11 = 4294960587;
                    goto LABEL_42;
                  }

LABEL_35:
                  if (gLogCategory_APReceiverMediaRemoteXPCService <= 30 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
                  {
                    v26 = CFDataGetLength(v9);
                    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_sendDataThroughCommChannel(CFNumberRef, CFDataRef)", 33554462, "Sending data of %d bytes through commChannel %@ with context [%{ptr}]\n", v26, v7, v25);
                  }

                  v11 = v22(v7, v9, v25);
                  if (v11)
                  {
                    APSLogErrorAt();
                  }

                  if (!v24)
                  {
LABEL_43:
                    if (v25)
                    {
                      CFRelease(v25);
                    }

                    if (!v11)
                    {
                      *a3 = 0;
                      return v11;
                    }

LABEL_74:
                    APSLogErrorAt();
                    return v11;
                  }

LABEL_42:
                  CFRelease(v24);
                  goto LABEL_43;
                }
              }

              else
              {
                CFRelease(v21);
                v24 = 0;
              }

              v25 = 0;
              goto LABEL_35;
            }

            CFRelease(v20);
          }

          v11 = 4294960587;
          APSLogErrorAt();
          goto LABEL_74;
        }
      }
    }

LABEL_83:
    APSLogErrorAt();
    return 4294960591;
  }

  if (CFEqual(a1, @"connect"))
  {
    APReceiverMediaRemoteXPCService_enqueueAndPostEvent(@"connectAck", 0);
    return 0;
  }

  if (CFEqual(a1, @"copyProperty"))
  {
    if (!a2)
    {
      goto LABEL_83;
    }

    v12 = CFDictionaryGetValue(a2, @"propertyKey");
    if (!v12)
    {
      goto LABEL_83;
    }

    v13 = v12;
    v45 = 0;
    v44 = 0;
    if (CFEqual(v12, @"AirPlaySecuritySetting"))
    {
      v46 = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt();
        v46 = -6728;
LABEL_25:
        v11 = v46;
LABEL_66:
        if (v11 == -72025)
        {
          return 4294960569;
        }

        if (v11)
        {
          if (v11 == -6727)
          {
            return v11;
          }

          goto LABEL_74;
        }

        v40 = v44;
        v41 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v41)
        {
          v42 = v41;
          if (v40)
          {
            CFDictionarySetValue(v41, @"propertyValue", v40);
            CFRelease(v40);
          }

          v11 = 0;
          *a3 = v42;
        }

        else
        {
          APSLogErrorAt();
          return 4294960568;
        }

        return v11;
      }

      v16 = Mutable;
      v18 = APReceiverSystemInfoCopyProperty(*(gAPReceiverMediaRemoteService_0 + 160), v15, @"Password", 0, &v46);
      if (v46)
      {
        APSLogErrorAt();
        v19 = 0;
      }

      else
      {
        v19 = APReceiverSystemInfoCopyProperty(*(gAPReceiverMediaRemoteService_0 + 160), v17, @"SecurityMode", 0, &v46);
        if (!v46)
        {
          CFDictionaryAddValue(v16, @"password", v18);
          CFDictionaryAddValue(v16, @"securityMode", v19);
          v44 = v16;
          if (!v18)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        APSLogErrorAt();
      }

      CFRelease(v16);
      if (!v18)
      {
LABEL_23:
        if (v19)
        {
          CFRelease(v19);
        }

        goto LABEL_25;
      }

LABEL_22:
      CFRelease(v18);
      goto LABEL_23;
    }

    if (CFEqual(v13, @"AirPlayGroupPublicName"))
    {
      v35 = *(gAPReceiverMediaRemoteService_0 + 160);
      v36 = @"AirPlayGroupPublicName";
    }

    else if (CFEqual(v13, @"AirPlayGroupUUID") || CFEqual(v13, @"AirPlayGroupID"))
    {
      v35 = *(gAPReceiverMediaRemoteService_0 + 160);
      v36 = @"AirPlayGroupID";
    }

    else
    {
      if (CFEqual(v13, @"AirPlayedFromGroupLeader"))
      {
        if (CFObjectGetPropertyInt64Sync() && !CFObjectGetPropertyInt64Sync())
        {
          v43 = MEMORY[0x277CBED28];
        }

        else
        {
          v43 = MEMORY[0x277CBED10];
        }

        v39 = CFRetain(*v43);
        goto LABEL_65;
      }

      if (CFEqual(v13, @"AuthorizationString"))
      {
        APReceiverSystemInfoEnsurePIN(*(gAPReceiverMediaRemoteService_0 + 160));
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v38 = *MEMORY[0x277CBED28];
        v36 = @"Passcode";
        v37 = 0;
        goto LABEL_64;
      }

      if (CFEqual(v13, @"GroupContainsDiscoverableLeader"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"GroupContainsDiscoverableLeader";
      }

      else if (CFEqual(v13, @"IsAirPlayGroupLeader"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"IsAirPlayGroupLeader";
      }

      else if (CFEqual(v13, @"IsSilentPrimary"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"IsSilentPrimary";
      }

      else if (CFEqual(v13, @"ReceiverSessionIsActive"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"ReceiverSessionIsActive";
      }

      else if (CFEqual(v13, @"SystemPairingIdentity"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"SystemPairingIdentity";
      }

      else if (CFEqual(v13, @"TightSyncUUID"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"TightSyncUUID";
      }

      else if (CFEqual(v13, @"IsTightSyncGroupLeader"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"IsTightSyncGroupLeader";
      }

      else if (CFEqual(v13, @"ParentGroupUUID") || CFEqual(v13, @"ParentGroupID"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"ParentGroupID";
      }

      else if (CFEqual(v13, @"ParentGroupContainsDiscoverableLeader"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"ParentGroupContainsDiscoverableLeader";
      }

      else if (CFEqual(v13, @"ParentGroupLeaderSupportsRelay"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"ParentGroupLeaderSupportsRelay";
      }

      else if (CFEqual(v13, @"ParentGroupSupportsGroupCohesion"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"ParentGroupLeaderSupportsGroupCohesion";
      }

      else if (CFEqual(v13, @"ClusterUUID"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"ClusterUUID";
      }

      else if (CFEqual(v13, @"ClusterType"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"ClusterType";
      }

      else if (CFEqual(v13, @"ClusterSize"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"ClusterSize";
      }

      else if (CFEqual(v13, @"IsClusterLeader"))
      {
        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"IsClusterLeader";
      }

      else
      {
        if (!CFEqual(v13, @"ClusterLeaderUUID"))
        {
          if (!CFEqual(v13, @"MRInfo"))
          {
            v11 = 4294960591;
            goto LABEL_74;
          }

          v11 = APReceiverMediaRemoteXPCService_copyPropertyFromMRSession(v13, &v44);
          goto LABEL_66;
        }

        v35 = *(gAPReceiverMediaRemoteService_0 + 160);
        v36 = @"ClusterLeaderUUID";
      }
    }

    v37 = &v45;
    v38 = 0;
LABEL_64:
    v39 = APReceiverSystemInfoCopyProperty(v35, v34, v36, v38, v37);
LABEL_65:
    v44 = v39;
    v11 = v45;
    goto LABEL_66;
  }

  if (CFEqual(a1, @"setProperty"))
  {
    *a3 = 0;
    if (a2)
    {
      v28 = CFDictionaryGetValue(a2, @"propertyKey");
      if (v28)
      {
        v29 = v28;
        v30 = CFDictionaryGetValue(a2, @"propertyValue");
        if (v30)
        {
          v31 = v30;
          if (CFEqual(v29, @"IsClusterLeader"))
          {
            v11 = APReceiverSystemInfoSetProperty(*(gAPReceiverMediaRemoteService_0 + 160), v32, @"IsClusterLeader", v33, v31);
            if (!v11)
            {
              return v11;
            }
          }

          else
          {
            v11 = 4294960591;
          }

          goto LABEL_74;
        }
      }
    }

    goto LABEL_83;
  }

  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_CommandHandler(CFStringRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Command %@ not supported\n", a1);
  }

  return 4294960561;
}

CFTypeRef APReceiverMediaRemoteXPCService_copyCommChannelEntry(const void *a1)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(gAPReceiverMediaRemoteService_1, a1);
  if (Value)
  {
    v3 = CFRetain(Value);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t APReceiverMediaRemoteXPCService_enqueueAndPostEvent(const void *a1, const void *a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  if (a1)
  {
    v4 = malloc_type_malloc(0x10uLL, 0x600405BB7FD7CuLL);
    *v4 = CFRetain(a1);
    if (a2)
    {
      v5 = CFRetain(a2);
    }

    else
    {
      v5 = 0;
    }

    v4[1] = v5;
    FigSimpleMutexLock();
    CFArrayAppendValue(gAPReceiverMediaRemoteService_3, v4);
  }

  else
  {
    FigSimpleMutexLock();
  }

  Count = CFArrayGetCount(gAPReceiverMediaRemoteService_3);
  while (1)
  {
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    v7 = gAPReceiverMediaRemoteService_2;
    FigSimpleMutexUnlock();
    if (v7 != 1)
    {
      break;
    }

    FirstValue = FigCFArrayGetFirstValue();
    if (!FirstValue)
    {
      break;
    }

    v9 = FirstValue;
    v10 = APSXPCServerPostEvent();
    if (v10)
    {
      if (gLogCategory_APReceiverMediaRemoteXPCService <= 90)
      {
        v12 = v10;
        if (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "void APReceiverMediaRemoteXPCService_enqueueAndPostEvent(CFStringRef, CFDictionaryRef)", 33554522, "Failed to post event: %'@ %#m", *v9, v12);
        }
      }

      break;
    }

    CFArrayRemoveValueAtIndex(gAPReceiverMediaRemoteService_3, 0);
    CFRelease(*v9);
    v11 = v9[1];
    if (v11)
    {
      CFRelease(v11);
    }

    free(v9);
  }

  v13 = CFArrayGetCount(gAPReceiverMediaRemoteService_3);
  result = FigSimpleMutexUnlock();
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 50)
  {
    if (gLogCategory_APReceiverMediaRemoteXPCService != -1)
    {
      return LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "void APReceiverMediaRemoteXPCService_enqueueAndPostEvent(CFStringRef, CFDictionaryRef)", 33554482, "Posted events: %d%?{end}, remaining: %d", Count - v13, v13 == 0, v13);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "void APReceiverMediaRemoteXPCService_enqueueAndPostEvent(CFStringRef, CFDictionaryRef)", 33554482, "Posted events: %d%?{end}, remaining: %d", Count - v13, v13 == 0, v13);
    }
  }

  return result;
}

uint64_t APReceiverMediaRemoteXPCService_copyPropertyFromMRSession(const void *a1, void *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (CFEqual(a1, @"MRInfo"))
  {
    v3 = *(gAPReceiverMediaRemoteService_0 + 88);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APReceiverMediaRemoteXPCService_copyPropertyFromMRSession_block_invoke;
    block[3] = &unk_278C60380;
    block[4] = &v13;
    block[5] = &v9;
    block[6] = @"MRInfo";
    dispatch_sync(v3, block);
    v4 = v10;
    if (a2)
    {
      *a2 = v10[3];
      v4[3] = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    *(v14 + 6) = -6735;
    v4 = v10;
  }

  v5 = v4[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(v14 + 6);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void APReceiverMediaRemoteXPCService_PostEvent(const void *a1, const void *a2, const __CFData *a3)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  if (gLogCategory_APReceiverMediaRemoteXPCService <= 40 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_PostEvent(CFStringRef, CFNumberRef, CFDataRef)", 33554472, "Posting event: %@ for channel: %@\n", a1, a2);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    if ((gAPReceiverMediaRemoteService_6 & 1) == 0)
    {
      if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus _ConnectToAgentServiceIfNeeded(void)", 33554482, "Sending '%@' command to the agent service %@", @"connect", @"com.apple.airplay.receiver.mediaremote.agent.services");
      }

      v8 = APSXPCClientSendCommandCreatingReply();
      if (v8)
      {
        v12 = v8;
        if (gLogCategory_APReceiverMediaRemoteXPCService <= 90 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus _ConnectToAgentServiceIfNeeded(void)", 33554522, "Failed to send %@ to the agent service with err: %#m", @"connect", v12);
        }

        FigSimpleMutexUnlock();
        goto LABEL_56;
      }

      if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus _ConnectToAgentServiceIfNeeded(void)", 33554482, "Connected to mediaremoted");
      }

      gAPReceiverMediaRemoteService_6 = 1;
    }

    FigSimpleMutexUnlock();
    if (CFEqual(a1, @"didReceiveMediaRemoteData"))
    {
      if (a3)
      {
        if (a2)
        {
          v9 = APReceiverMediaRemoteXPCService_copyCommChannelEntry(a2);
          if (v9)
          {
            v10 = v9;
            if (v9[2])
            {
              if (gLogCategory_APReceiverMediaRemoteXPCService <= 40 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
              {
                Length = CFDataGetLength(a3);
                LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_PostEvent(CFStringRef, CFNumberRef, CFDataRef)", 33554472, "didReceiveData: %@ (%d bytes)\n", a2, Length);
              }

              CFDictionarySetValue(v7, @"objectID", a2);
              CFDictionarySetValue(v7, @"clientUUID", v10[2]);
              CFDictionarySetValue(v7, @"data", a3);
              APReceiverMediaRemoteXPCService_enqueueAndPostEvent(a1, v7);
            }

            else
            {
              APSLogErrorAt();
            }

            CFRelease(v10);
            goto LABEL_38;
          }
        }
      }
    }

    else
    {
      if (!CFEqual(a1, @"didCloseCommChannel"))
      {
        if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_PostEvent(CFStringRef, CFNumberRef, CFDataRef)", 33554482, "Command %@ not supported\n", a1);
        }

        goto LABEL_38;
      }

      if (a2)
      {
        CFDictionarySetValue(v7, @"objectID", a2);
        if (gLogCategory_APReceiverMediaRemoteXPCService <= 50 && (gLogCategory_APReceiverMediaRemoteXPCService != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCService, "OSStatus APReceiverMediaRemoteXPCService_PostEvent(CFStringRef, CFNumberRef, CFDataRef)", 33554482, "Closing communication channel %@\n", a2);
        }

        APReceiverMediaRemoteXPCService_enqueueAndPostEvent(a1, v7);
        goto LABEL_38;
      }
    }

LABEL_56:
    APSLogErrorAt();
LABEL_38:

    CFRelease(v7);
    return;
  }

  APSLogErrorAt();
}

uint64_t _APReceiverMediaRemoteXPCServiceCommChannelEntryGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPReceiverMediaRemoteXPCServiceCommChannelEntryTypeID = result;
  return result;
}

void _APReceiverMediaRemoteXPCServiceCommChannelEntryFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[3] = 0;
  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }
}

uint64_t APReceiverUIControllerGetClassID()
{
  if (APReceiverUIControllerGetClassID_once != -1)
  {
    dispatch_once(&APReceiverUIControllerGetClassID_once, &__block_literal_global_3701);
  }

  return APReceiverUIControllerGetClassID_classID;
}

uint64_t __APReceiverUIControllerGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APReceiverUIControllerGetClassID_classDesc, ClassID, 1, &APReceiverUIControllerGetClassID_classID);
}

uint64_t APReceiverUIControllerGetTypeID()
{
  if (APReceiverUIControllerGetClassID_once != -1)
  {
    dispatch_once(&APReceiverUIControllerGetClassID_once, &__block_literal_global_3701);
  }

  return CMBaseClassGetCFTypeID();
}

void APReceiverAudioSessionGhostFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void audioSession_handleMediaDataControlRequest_3715(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v19 = 0;
  v11 = *(a6 + 40);
  if (gLogCategory_APReceiverAudioSessionGhost <= 50 && (gLogCategory_APReceiverAudioSessionGhost != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionGhost, "void audioSession_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "%@ Media Data Control Request: %C\n", *(v11 + 16), a3);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    if (a3 <= 1718839393)
    {
      if (a3 == 1634562925)
      {
        CFStringGetTypeID();
        CFDictionaryGetTypedValue();
        goto LABEL_45;
      }

      if (a3 == 1718383464)
      {
        if (a5)
        {
          v14 = CFGetTypeID(a5);
          if (v14 == CFDictionaryGetTypeID())
          {
            v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
            if (!v19)
            {
              if (APSAudioTransportTimeIsValid())
              {
LABEL_13:
                CFDictionaryGetInt64Ranged();
LABEL_45:
                APMediaDataControlServerSendResponse(a1, a2, a4, v13, v19);
                goto LABEL_46;
              }

              goto LABEL_53;
            }

            goto LABEL_54;
          }
        }

        goto LABEL_41;
      }

LABEL_43:
      v18 = -6714;
      goto LABEL_44;
    }

    if (a3 == 1718839394)
    {
      if (*v11 == 103)
      {
        if (a5)
        {
          v17 = CFGetTypeID(a5);
          if (v17 == CFDictionaryGetTypeID())
          {
            if (CFDictionaryContainsKey(a5, @"flushFromSeq"))
            {
              CFDictionaryGetInt64Ranged();
              v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
              if (v19)
              {
                goto LABEL_54;
              }

              APSAudioTransportTimeIsValid();
            }

            v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
            if (v19)
            {
LABEL_54:
              APSLogErrorAt();
              goto LABEL_45;
            }

            if (APSAudioTransportTimeIsValid())
            {
              goto LABEL_13;
            }

LABEL_53:
            APSLogErrorAt();
            v18 = -72151;
            goto LABEL_44;
          }
        }

LABEL_41:
        APSLogErrorAt();
        v18 = -6756;
LABEL_44:
        v19 = v18;
        goto LABEL_45;
      }
    }

    else
    {
      if (a3 != 1936875892)
      {
        goto LABEL_43;
      }

      if (*v11 == 103)
      {
        if (a5)
        {
          v15 = CFGetTypeID(a5);
          if (v15 == CFDictionaryGetTypeID())
          {
            Int64Ranged = CFDictionaryGetInt64Ranged();
            if (Int64Ranged != 1)
            {
              *(v11 + 32) = Int64Ranged != 0;
              v19 = 0;
              if (!Int64Ranged && APSAudioTransportTimeIsValid())
              {
                APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
              }

              goto LABEL_45;
            }

            v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
            if (v19)
            {
              goto LABEL_54;
            }

            if (APSAudioTransportTimeIsValid())
            {
              v19 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
              if (!v19)
              {
                CFDictionaryGetInt64Ranged();
                CFDictionaryGetInt64();
                CFDictionaryGetInt64();
                CFDictionaryGetInt64Ranged();
                *(v11 + 32) = 1;
                APMediaDataControlServerSendResponse(a1, a2, a4, v13, 0);
LABEL_46:
                CFRelease(v13);
                return;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        goto LABEL_41;
      }
    }

    APSLogErrorAt();
    goto LABEL_43;
  }

  APSLogErrorAt();

  APMediaDataControlServerSendResponse(a1, a2, a4, 0, -6728);
}

uint64_t APReceiverAudioSessionGhostStartPacketProcesser(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 40);
    v4 = 0;
    dispatch_sync_f(*(v1 + 112), &v3, controlServer_startInternal);
    if (v4)
    {
      APSLogErrorAt();
    }
  }

  return 0;
}

uint64_t APReceiverAudioSessionGhostStopPacketProcesser(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = 0;
  dispatch_sync_f(*(v1 + 112), &v4, controlServer_stopInternal);
  v2 = v5;
  if (v5)
  {
    APSLogErrorAt();
  }

  return v2;
}

uint64_t APReceiverAudioSessionGhostFlushAudio(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  if (a7)
  {
    v7 = MEMORY[0x277CEA038];
    *a7 = *MEMORY[0x277CEA038];
    *(a7 + 12) = *(v7 + 12);
  }

  return 0;
}

uint64_t APReceiverAudioSessionGhostSetRateAndAnchorTime(uint64_t a1, int a2, uint64_t a3, __int128 *a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  if (a1)
  {
    *(a1 + 32) = a2 != 0;
    if (a6)
    {
      v7 = *a4;
      *(a6 + 12) = *(a4 + 12);
      *a6 = v7;
    }

    result = 0;
    if (a7)
    {
      v9 = MEMORY[0x277CEA280];
      *a7 = *MEMORY[0x277CEA280];
      *(a7 + 16) = *(v9 + 16);
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return result;
}

uint64_t APReceiverAudioSessionGhostConvertProgressRTPTimeToSecond(uint64_t a1, int a2, int a3, int a4, double *a5, double *a6)
{
  if (a1)
  {
    APSAudioFormatDescriptionGetSampleRate();
    v12 = v11;
    APSAudioFormatDescriptionGetSampleRate();
    if (a5)
    {
      *a5 = (a3 - a2) / v12;
    }

    result = 0;
    if (a6)
    {
      *a6 = (a4 - a2) / v13;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return result;
}

CFTypeRef APReceiverAudioSessionGhostCopyProperty(uint64_t a1, CFTypeRef cf1, int *a3)
{
  if (a1)
  {
    if (CFEqual(cf1, @"MediaDataControlPort"))
    {
      result = CFNumberCreateInt64();
      if (result)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

    if (CFEqual(cf1, @"IsPlayingBufferedAudio"))
    {
      if (*a1 == 103)
      {
        v6 = MEMORY[0x277CBED28];
        if (!*(a1 + 32))
        {
          v6 = MEMORY[0x277CBED10];
        }

        result = CFRetain(*v6);
        goto LABEL_10;
      }

      APSLogErrorAt();
    }

    else
    {
      if (CFEqual(cf1, @"PlatformAudioLatency"))
      {
        Object = CFNumberGetObject();
        result = CFRetain(Object);
        if (result)
        {
LABEL_10:
          v8 = 0;
          goto LABEL_11;
        }

        goto LABEL_20;
      }

      if (CFEqual(cf1, @"AudioFormat"))
      {
        v10 = *(a1 + 24);
        if (v10)
        {
          result = CFRetain(v10);
          if (result)
          {
            goto LABEL_10;
          }
        }

LABEL_20:
        APSLogErrorAt();
        result = 0;
        v8 = -6728;
        goto LABEL_11;
      }

      if (gLogCategory_APReceiverAudioSessionGhost <= 50 && (gLogCategory_APReceiverAudioSessionGhost != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionGhost, "CFTypeRef APReceiverAudioSessionGhostCopyProperty(void *, CFStringRef, OSStatus *)", 33554482, "%@ Unhandled property: %@\n", *(a1 + 16), cf1);
      }
    }

    result = 0;
    v8 = -72154;
  }

  else
  {
    APSLogErrorAt();
    result = 0;
    v8 = -6705;
  }

LABEL_11:
  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

CFTypeRef APReceiverAudioSessionGhostCopyAudioBufferInfo(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  Empty = CFDictionaryGetEmpty();

  return CFRetain(Empty);
}

uint64_t APValeriaHelperGetTypeID()
{
  if (APValeriaHelperGetTypeID_once != -1)
  {
    dispatch_once(&APValeriaHelperGetTypeID_once, &__block_literal_global_3819);
  }

  return APValeriaHelperGetTypeID_typeID;
}

uint64_t __APValeriaHelperGetTypeID_block_invoke()
{
  APValeriaHelperGetTypeID_valeriaHelperClass = 0;
  unk_27E37ED70 = "APValeriaHelper";
  qword_27E37ED78 = 0;
  unk_27E37ED80 = 0;
  qword_27E37ED88 = vhelper_finalize;
  unk_27E37ED90 = 0u;
  unk_27E37EDA0 = 0u;
  result = _CFRuntimeRegisterClass();
  APValeriaHelperGetTypeID_typeID = result;
  return result;
}

void *vhelper_finalize(void *result, uint64_t a2)
{
  v2 = result;
  if (result[4])
  {
    if (gLogCategory_APValeriaHelper <= 100)
    {
      if (gLogCategory_APValeriaHelper != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_finalize(CFTypeRef)", 33554532, "### helper %{ptr}: discovery must be stopped before deallocation!\n", v2);
      }
    }

    goto LABEL_23;
  }

  if (result[13])
  {
    if (gLogCategory_APValeriaHelper <= 100)
    {
      if (gLogCategory_APValeriaHelper != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_finalize(CFTypeRef)", 33554532, "### helper %{ptr}: receiver must be stopped before deallocation!\n", v2);
      }
    }

    goto LABEL_23;
  }

  if (result[18])
  {
    if (gLogCategory_APValeriaHelper <= 100)
    {
      if (gLogCategory_APValeriaHelper != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_finalize(CFTypeRef)", 33554532, "### helper %{ptr}: activation must be stopped before deallocation!\n", v2);
      }
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v3 = result[2];
  if (v3)
  {
    CFRelease(v3);
    v2[2] = 0;
  }

  FigSimpleMutexDestroy();
  v2[3] = 0;
  FigSimpleMutexDestroy();
  v2[12] = 0;
  result = FigSimpleMutexDestroy();
  v2[17] = 0;
  if (gLogCategory_APValeriaHelper <= 50)
  {
    if (gLogCategory_APValeriaHelper != -1)
    {
      return LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_finalize(CFTypeRef)", 33554482, "helper %{ptr} finalized\n", v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_finalize(CFTypeRef)", 33554482, "helper %{ptr} finalized\n", v2);
    }
  }

  return result;
}

uint64_t APValeriaHelperCreate(uint64_t a1, uint64_t *a2)
{
  LogSetAppID();
  if (APValeriaHelperGetTypeID_once != -1)
  {
    dispatch_once(&APValeriaHelperGetTypeID_once, &__block_literal_global_3819);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    *(Instance + 128) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 24) = FigSimpleMutexCreate();
    *(v4 + 96) = FigSimpleMutexCreate();
    *(v4 + 136) = FigSimpleMutexCreate();
    *(v4 + 88) = FigGetCFPreferenceNumberWithDefault() != 0;
    if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APValeriaHelper, "OSStatus APValeriaHelperCreate(CFAllocatorRef, APValeriaHelperRef *)", 33554482, "helper %{ptr} created\n", v4);
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return result;
}

uint64_t APValeriaHelperDiscoveryStart(void *a1, uint64_t a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (!a2)
  {
    v11 = 4294960591;
LABEL_16:
    APSLogErrorAt();
    goto LABEL_13;
  }

  if (a1[4])
  {
    v11 = 4294960587;
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt32();
  v7 = FigRouteDiscovererXPCRemoteCreate();
  if (v7)
  {
    v11 = v7;
    goto LABEL_19;
  }

  active = vhelper_registerActiveHelper(a1);
  a1[7] = active;
  if (!active)
  {
    v11 = 4294960588;
LABEL_19:
    APSLogErrorAt();
    if (!Mutable)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  a1[5] = a2;
  a1[6] = a3;
  a1[4] = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  v9 = a1[4];
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v10)
  {
    v10(v9, *MEMORY[0x277D27038], *MEMORY[0x277D27010]);
  }

  if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APValeriaHelper, "OSStatus APValeriaHelperDiscoveryStart(APValeriaHelperRef, APValeriaHelperDiscoveredEndpointsCallback, void *)", 33554482, "helper %{ptr} started discovery\n", a1);
  }

  v11 = 0;
  if (Mutable)
  {
LABEL_12:
    CFRelease(Mutable);
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t vhelper_registerActiveHelper(uint64_t a1)
{
  if (vhelper_getActiveHelpers_once != -1)
  {
    dispatch_once(&vhelper_getActiveHelpers_once, &__block_literal_global_41);
  }

  if (FigCFWeakReferenceTableAddValueAndGetKey())
  {
    APSLogErrorAt();
  }

  return 0;
}

void vhelper_handleAvailableEndpointsChanged(uint64_t a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  if (active)
  {
    v4 = active;
    FigSimpleMutexLock();
    if (!*(v4 + 32) || *(v4 + 56) != a2 || !*(v4 + 40))
    {
      FigSimpleMutexUnlock();
LABEL_5:
      CFRelease(v4);
      return;
    }

    v5 = &unk_27E37E000;
    if (gLogCategory_APValeriaHelper <= 30 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_handleAvailableEndpointsChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554462, "helper %{ptr}: available endpoints changed\n", v4);
    }

    v7 = *(v4 + 40);
    v6 = *(v4 + 48);
    theArray = 0;
    v8 = *(v4 + 32);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = *MEMORY[0x277CBECE8];
      v11 = v9(v8, *MEMORY[0x277D27028], *MEMORY[0x277CBECE8], &theArray);
      if (!v11)
      {
        Mutable = theArray;
        if (!*(v4 + 88) || !theArray)
        {
          FigSimpleMutexUnlock();
          if (!v7)
          {
            goto LABEL_45;
          }

          goto LABEL_34;
        }

        Count = CFArrayGetCount(theArray);
        if (Count < 1)
        {
          Mutable = 0;
          v20 = 0;
        }

        else
        {
          v14 = Count;
          v15 = 0;
          Mutable = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
            cf = 0;
            v17 = CFGetAllocator(ValueAtIndex);
            CMBaseObject = FigEndpointGetCMBaseObject();
            v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v19)
            {
              v19(CMBaseObject, @"Features", v17, &cf);
            }

            if (APSFeaturesHasFeature())
            {
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
              }

              CFArrayAppendValue(Mutable, ValueAtIndex);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            ++v15;
          }

          while (v14 != v15);
          v20 = 0;
          v5 = &unk_27E37E000;
        }

LABEL_30:
        if (theArray)
        {
          CFRelease(theArray);
        }

        FigSimpleMutexUnlock();
        if (v20)
        {
          APSLogErrorAt();
          goto LABEL_45;
        }

        if (!v7)
        {
          goto LABEL_45;
        }

LABEL_34:
        if (Mutable)
        {
          v21 = v5[134];
          if (v21 <= 30 && (v21 != -1 || _LogCategory_Initialize()))
          {
            v22 = CFArrayGetCount(Mutable);
            LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_handleAvailableEndpointsChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554462, "helper %{ptr}: discovered endpoint count: %d\n", v4, v22);
          }

          v7(Mutable, v6);
LABEL_42:
          CFRelease(Mutable);
          goto LABEL_5;
        }

LABEL_45:
        if (!Mutable)
        {
          goto LABEL_5;
        }

        goto LABEL_42;
      }

      v20 = v11;
    }

    else
    {
      v20 = -12782;
    }

    APSLogErrorAt();
    Mutable = 0;
    goto LABEL_30;
  }
}

uint64_t vhelper_lookupAndRetainActiveHelperWithID(uint64_t a1)
{
  if (vhelper_getActiveHelpers_once != -1)
  {
    dispatch_once(&vhelper_getActiveHelpers_once, &__block_literal_global_41);
  }

  v2 = vhelper_getActiveHelpers_table;

  return MEMORY[0x282112740](v2, a1);
}

uint64_t __vhelper_getActiveHelpers_block_invoke()
{
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    v1 = result;
    if (gLogCategory_APValeriaHelper <= 100)
    {
      if (gLogCategory_APValeriaHelper != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APValeriaHelper, "FigCFWeakReferenceTableRef vhelper_getActiveHelpers(void)_block_invoke", 33554532, "### Can't create active helpers table, error: %#m\n", v1);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t APValeriaHelperDiscoveryStartAndCopyMatchingEndpoint(void *a1, const void *a2, uint64_t a3, void *a4)
{
  FigSimpleMutexLock();
  if (a1[4])
  {
    v16 = 4294960587;
    APSLogErrorAt();
    v11 = 0;
    v13 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    FigCFDictionarySetInt32();
    v9 = FigRouteDiscovererXPCRemoteCreate();
    if (v9)
    {
      v16 = v9;
      APSLogErrorAt();
      v13 = 0;
      v11 = 0;
    }

    else
    {
      active = vhelper_registerActiveHelper(a1);
      v11 = active;
      a1[7] = active;
      if (active)
      {
        a1[5] = vhelper_findMatchingEndpoint;
        a1[6] = active;
        if (a2)
        {
          v12 = CFRetain(a2);
        }

        else
        {
          v12 = 0;
        }

        a1[9] = v12;
        v13 = dispatch_semaphore_create(0);
        a1[8] = v13;
        dispatch_retain(v13);
        a1[4] = 0;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        v14 = a1[4];
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v15)
        {
          v15(v14, *MEMORY[0x277D27038], *MEMORY[0x277D27010]);
        }

        if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APValeriaHelper, "OSStatus APValeriaHelperDiscoveryStartAndCopyMatchingEndpoint(APValeriaHelperRef, CFDictionaryRef, int, FigEndpointRef *)", 33554482, "helper %{ptr} started endpoint discovery\n", a1);
        }

        v16 = 0;
      }

      else
      {
        v16 = 4294960588;
        APSLogErrorAt();
        v13 = 0;
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  FigSimpleMutexUnlock();
  if (v16)
  {
LABEL_28:
    if (!v13)
    {
      return v16;
    }

LABEL_29:
    dispatch_release(v13);
    return v16;
  }

  if ((a3 & 0x80000000) != 0)
  {
    v17 = -1;
  }

  else
  {
    v17 = dispatch_time(0, 1000000000 * a3);
  }

  if (!dispatch_semaphore_wait(v13, v17))
  {
    FigSimpleMutexLock();
    if (a1[4] && a1[7] == v11)
    {
      if (a4)
      {
        v20 = a1[10];
        if (v20)
        {
          v20 = CFRetain(v20);
        }

        *a4 = v20;
      }

      v21 = a1[10];
      if (v21)
      {
        CFRelease(v21);
        v16 = 0;
        a1[10] = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 4294960573;
    }

    FigSimpleMutexUnlock();
    goto LABEL_28;
  }

  if (gLogCategory_APValeriaHelper <= 90 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APValeriaHelper, "OSStatus APValeriaHelperDiscoveryStartAndCopyMatchingEndpoint(APValeriaHelperRef, CFDictionaryRef, int, FigEndpointRef *)", 33554522, "helper %{ptr}: finding endpoint timed out after %d secs\n", a1, a3);
  }

  APValeriaHelperDiscoveryStop(a1, v18);
  v16 = 4294960574;
  if (v13)
  {
    goto LABEL_29;
  }

  return v16;
}

uint64_t APValeriaHelperDiscoveryStop(void *a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (a1[4])
  {
    vhelper_unregisterActiveHelperWithID(a1[7]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = a1[4];
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, *MEMORY[0x277D27038], *MEMORY[0x277D27018]);
    }

    v5 = a1[4];
    if (v5)
    {
      CFRelease(v5);
      a1[4] = 0;
    }

    v6 = a1[10];
    if (v6)
    {
      CFRelease(v6);
      a1[10] = 0;
    }

    v7 = a1[9];
    if (v7)
    {
      CFRelease(v7);
      a1[9] = 0;
    }

    a1[5] = 0;
    a1[6] = 0;
    a1[7] = 0;
    v8 = a1[8];
    if (v8)
    {
      dispatch_semaphore_signal(v8);
      v9 = a1[8];
      if (v9)
      {
        dispatch_release(v9);
        a1[8] = 0;
      }
    }

    if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APValeriaHelper, "void APValeriaHelperDiscoveryStop(APValeriaHelperRef)", 33554482, "helper %{ptr} stopped discovery\n", a1);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t vhelper_unregisterActiveHelperWithID(uint64_t a1)
{
  if (vhelper_getActiveHelpers_once != -1)
  {
    dispatch_once(&vhelper_getActiveHelpers_once, &__block_literal_global_41);
  }

  return FigCFWeakReferenceTableRemoveValue();
}

void vhelper_findMatchingEndpoint(const __CFArray *a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  if (active)
  {
    v5 = active;
    FigSimpleMutexLock();
    if (v5[4] && v5[7] == a2 && v5[5])
    {
      Count = CFArrayGetCount(a1);
      v7 = v5[10];
      if (v7)
      {
        CFRelease(v7);
        v5[10] = 0;
      }

      if (Count >= 1)
      {
        v8 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
          v12 = 0;
          v13 = &v12;
          v14 = 0x2000000000;
          v15 = 1;
          if (!v5[9])
          {
            break;
          }

          CFDictionaryApplyBlock();
          if (*(v13 + 24))
          {
            break;
          }

          _Block_object_dispose(&v12, 8);
          if (Count == ++v8)
          {
            goto LABEL_16;
          }
        }

        v5[10] = CFRetain(ValueAtIndex);
        _Block_object_dispose(&v12, 8);
      }

LABEL_16:
      if (v5[10])
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        v5[5] = 0;
        v10 = v5[8];
        if (v10)
        {
          dispatch_semaphore_signal(v10);
          v11 = v5[8];
          if (v11)
          {
            dispatch_release(v11);
            v5[8] = 0;
          }
        }
      }
    }

    FigSimpleMutexUnlock();
    CFRelease(v5);
  }
}

void __vhelper_findMatchingEndpoint_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || v6(CMBaseObject, a2, *MEMORY[0x277CBECE8], &cf) || !FigCFEqual())
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t APValeriaHelperReceiverStart(void *a1, const void *a2, int a3)
{
  cf = 0;
  FigSimpleMutexLock();
  if (!a2)
  {
    v15 = -6705;
LABEL_22:
    APSLogErrorAt();
    goto LABEL_17;
  }

  if (a1[13])
  {
    v15 = -6709;
    goto LABEL_22;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  v8 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"UseDynamicPort", *v8);
  CFDictionarySetValue(v7, @"SBufConsumer", a2);
  v15 = AirPlayReceiverServerCreate(v7, &cf);
  if (v15)
  {
    goto LABEL_23;
  }

  v10 = a1[2];
  if (v10)
  {
    CFRelease(v10);
    a1[2] = 0;
  }

  v11 = cf;
  a1[2] = AirPlayReceiverServerCopyProperty(cf, v9, @"deviceInfo", 0, &v15);
  if (v15 || (v15 = CFObjectControlSync()) != 0)
  {
LABEL_23:
    APSLogErrorAt();
  }

  else
  {
    active = vhelper_registerActiveHelper(a1);
    a1[14] = active;
    if (active)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      a1[13] = v11;
      cf = 0;
      if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APValeriaHelper, "OSStatus APValeriaHelperReceiverStart(APValeriaHelperRef, FigValeriaRef, Boolean)", 33554482, "helper %{ptr} started receiver\n", a1);
      }
    }

    else
    {
      APSLogErrorAt();
      v15 = -6708;
      CFObjectControlSync();
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  FigSimpleMutexUnlock();
  return v15;
}

void vhelper_handleClientDisconnected(uint64_t a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  if (active)
  {
    v4 = active;
    FigSimpleMutexLock();
    if (*(v4 + 104) && *(v4 + 112) == a2)
    {
      if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_handleClientDisconnected(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "helper %{ptr}: client disconnected\n", v4);
      }

      *(v4 + 128) = 0;
    }

    FigSimpleMutexUnlock();

    CFRelease(v4);
  }
}

void vhelper_handleClientConnected(uint64_t a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  if (active)
  {
    v4 = active;
    FigSimpleMutexLock();
    if (*(v4 + 104) && *(v4 + 112) == a2)
    {
      if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_handleClientConnected(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "helper %{ptr}: client connected\n", v4);
      }

      *(v4 + 128) = 1;
      v5 = *(v4 + 120);
      if (v5)
      {
        dispatch_semaphore_signal(v5);
        v6 = *(v4 + 120);
        if (v6)
        {
          dispatch_release(v6);
          *(v4 + 120) = 0;
        }
      }
    }

    FigSimpleMutexUnlock();

    CFRelease(v4);
  }
}

uint64_t APValeriaHelperReceiverStop(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (*(a1 + 104))
  {
    vhelper_unregisterActiveHelperWithID(*(a1 + 112));
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CFObjectControlSync();
    v3 = *(a1 + 104);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 104) = 0;
    }

    *(a1 + 112) = 0;
    *(a1 + 128) = 0;
    v4 = *(a1 + 120);
    if (v4)
    {
      dispatch_semaphore_signal(v4);
      v5 = *(a1 + 120);
      if (v5)
      {
        dispatch_release(v5);
        *(a1 + 120) = 0;
      }
    }

    if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APValeriaHelper, "void APValeriaHelperReceiverStop(APValeriaHelperRef)", 33554482, "helper %{ptr} stopped receiver\n", a1);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t APValeriaHelperReceiverGetListeningPort(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 104);
  if (!v4)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v5 = AirPlayReceiverServerCopyProperty(v4, v3, @"listeningPort", 0, 0);
  FigSimpleMutexUnlock();
  if (!v5)
  {
    return 0;
  }

  v6 = CFGetInt64Ranged();
  CFRelease(v5);
  return v6;
}

uint64_t APValeriaHelperReceiverWaitForConnection(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (!*(a1 + 104))
  {
    v6 = 4294960587;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_22;
  }

  if (*(a1 + 128))
  {
    v6 = 0;
LABEL_22:
    FigSimpleMutexUnlock();
    return v6;
  }

  if (*(a1 + 120))
  {
    v6 = 4294960575;
    goto LABEL_21;
  }

  v4 = dispatch_semaphore_create(0);
  *(a1 + 120) = v4;
  dispatch_retain(v4);
  FigSimpleMutexUnlock();
  if (!v4)
  {
    return 0;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = dispatch_time(0, 1000000000 * a2);
  }

  if (dispatch_semaphore_wait(v4, v5))
  {
    if (gLogCategory_APValeriaHelper <= 90 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APValeriaHelper, "OSStatus APValeriaHelperReceiverWaitForConnection(APValeriaHelperRef, int)", 33554522, "helper %{ptr}: connection timeout after %d secs\n", a1, a2);
    }

    v6 = 4294960574;
  }

  else
  {
    v6 = 0;
  }

  dispatch_release(v4);
  return v6;
}

uint64_t APValeriaHelperActivationStart(void *a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (!a2)
  {
    v11 = 4294960591;
LABEL_25:
    APSLogErrorAt();
    goto LABEL_20;
  }

  if (a1[18])
  {
    v11 = 4294960587;
    goto LABEL_25;
  }

  if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APValeriaHelper, "OSStatus APValeriaHelperActivationStart(APValeriaHelperRef, FigEndpointRef)", 33554482, "helper %{ptr} creating control channel\n", a1);
  }

  v4 = *MEMORY[0x277CBECE8];
  ControlChannelOnlyContext = FigRoutingContextRemoteCreateControlChannelOnlyContext();
  if (ControlChannelOnlyContext)
  {
    v11 = ControlChannelOnlyContext;
    goto LABEL_25;
  }

  active = vhelper_registerActiveHelper(a1);
  a1[19] = active;
  if (!active)
  {
    v11 = 4294960588;
    goto LABEL_25;
  }

  a1[18] = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D27050], *MEMORY[0x277CBED28]);
  v8 = a1[18];
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    v11 = 4294954514;
    goto LABEL_15;
  }

  v10 = v9(v8, a2, Mutable);
  if (v10)
  {
    v11 = v10;
LABEL_15:
    APSLogErrorAt();
    vhelper_stopActivation(a1);
    if (!Mutable)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APValeriaHelper, "OSStatus APValeriaHelperActivationStart(APValeriaHelperRef, FigEndpointRef)", 33554482, "helper %{ptr} started activation\n", a1);
  }

  v11 = 0;
  if (Mutable)
  {
LABEL_19:
    CFRelease(Mutable);
  }

LABEL_20:
  FigSimpleMutexUnlock();
  return v11;
}

void vhelper_stopActivation(uint64_t a1)
{
  if (*(a1 + 144))
  {
    vhelper_unregisterActiveHelperWithID(*(a1 + 152));
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v2 = *(a1 + 144);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v3)
    {
      v3(v2, 0, 0);
    }

    v4 = *(a1 + 144);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 144) = 0;
    }

    *(a1 + 152) = 0;
    if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_stopActivation(APValeriaHelperRef)", 33554482, "helper %{ptr} stopped activation\n", a1);
    }
  }
}

void vhelper_handleCurrentEndpointChanged(uint64_t a1, uint64_t a2)
{
  active = vhelper_lookupAndRetainActiveHelperWithID(a2);
  cf = 0;
  if (!active)
  {
    return;
  }

  v4 = active;
  FigSimpleMutexLock();
  v5 = *(v4 + 144);
  if (v5 && *(v4 + 152) == a2)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v6 || v6(v5, &cf))
    {
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      goto LABEL_21;
    }

    v8 = cf;
    v16 = 0;
    if (cf)
    {
      if (*(v4 + 16) && APValeriaHelperReceiverGetListeningPort(v4, v7))
      {
        FigEndpointExtendedGetClassID();
        if (CMBaseObjectIsMemberOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = *MEMORY[0x277CBECE8];
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(v4 + 16));
        CFDictionarySetInt64();
        CFDictionarySetValue(MutableCopy, @"IsValeria", *MEMORY[0x277CBED28]);
        v12 = *(*(CMBaseObjectGetVTable() + 24) + 72);
        if (!v12 || v12(v9, @"APValeria", MutableCopy, 0, 0))
        {
          APSLogErrorAt();
        }

        else
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterRemoveListener();
          CMBaseObject = FigEndpointGetCMBaseObject();
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v14(CMBaseObject, *MEMORY[0x277CC1450], v10, &v16);
          }

          if (gLogCategory_APValeriaHelper <= 50 && (gLogCategory_APValeriaHelper != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APValeriaHelper, "void vhelper_sendActivationCommand(APValeriaHelperRef, FigEndpointRef)", 33554482, "helper %{ptr} sent %@ to '%@'\n", v4, @"activateEndpointForAddress", v16);
          }
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

  FigSimpleMutexUnlock();
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v4);
}

uint64_t APValeriaHelperActivationStop(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  vhelper_stopActivation(a1);

  return FigSimpleMutexUnlock();
}

uint64_t apProcessor_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v8 = 4294895345;
    goto LABEL_32;
  }

  v7 = DerivedStorage;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus apProcessor_SetProperty(CFTypeRef, CFStringRef, CFTypeRef)", 33554462, "copy propertyKey: '%@'\n", a2);
  }

  if (CFEqual(a2, @"pairingRequired"))
  {
    if (a3)
    {
      v8 = 0;
      *(v7 + 410) = CFGetInt64() != 0;
      return v8;
    }

    v8 = 4294895345;
LABEL_32:
    APSLogErrorAt();
    return v8;
  }

  if (CFEqual(a2, @"didSetup"))
  {
    if (a3)
    {
      v8 = 0;
      *(v7 + 45) = CFGetInt64() != 0;
      return v8;
    }

    v8 = 4294895345;
    goto LABEL_32;
  }

  if (CFEqual(a2, @"didRecord"))
  {
    if (a3)
    {
      v8 = 0;
      *(v7 + 46) = CFGetInt64() != 0;
      return v8;
    }

    v8 = 4294895345;
    goto LABEL_32;
  }

  if (CFEqual(a2, @"networkClockStartDurationMs"))
  {
    if (a3)
    {
      v8 = 0;
      *(v7 + 560) = FigCFNumberGetUInt64();
      return v8;
    }

    v8 = 4294895345;
    goto LABEL_32;
  }

  if (CFEqual(a2, @"nowPlayingSessionStartDurationMs"))
  {
    if (a3)
    {
      v8 = 0;
      *(v7 + 552) = FigCFNumberGetUInt64();
      return v8;
    }

    v8 = 4294895345;
    goto LABEL_32;
  }

  v8 = 4294895342;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus apProcessor_SetProperty(CFTypeRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Unknown property %@\n", a1, a2);
  }

  return v8;
}

void *apProcessor_CopyProperty(uint64_t a1, const void *a2, int *a3)
{
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    APSLogErrorAt();
    v13 = -71951;
    goto LABEL_15;
  }

  v7 = DerivedStorage;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "CFTypeRef apProcessor_CopyProperty(CFTypeRef, CFStringRef, OSStatus *)", 33554462, "copy propertyKey: '%@'\n", a2);
  }

  if (CFEqual(a2, @"pairingVerified"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 408);
LABEL_10:
    v10 = MEMORY[0x277CBED10];
    v11 = v9 == 0;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"pairingPerformedIsSufficientForAuth"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 409);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"pairingRequired"))
  {
    v15 = 1;
    if (!CFObjectGetPropertyInt64Sync())
    {
      v15 = CFObjectGetPropertyInt64Sync() != 0;
    }

    *(v7 + 410) = v15;
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    v17 = *(v7 + 410);
    if (PropertyInt64Sync)
    {
      if (*(v7 + 410))
      {
        v17 = 1;
      }

      else
      {
        v18 = *(v7 + 24);
        v17 = 1;
        if (v18 != 4 && v18 != 64)
        {
          v17 = v18 == 128;
        }
      }

      *(v7 + 410) = v17;
    }

    if (v17)
    {
      v8 = MEMORY[0x277CBED28];
    }

    else
    {
      v8 = MEMORY[0x277CBED10];
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"MCActive"))
  {
    v8 = MEMORY[0x277CBED28];
    v10 = MEMORY[0x277CBED10];
    v11 = *(v7 + 104) == 0;
LABEL_11:
    if (v11)
    {
      v8 = v10;
    }

LABEL_13:
    v12 = *v8;
LABEL_14:
    v13 = 0;
    v20 = CFRetain(v12);
    goto LABEL_15;
  }

  if (CFEqual(a2, @"RemoteControl"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 440);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"didSetup"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 45);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"didRecord"))
  {
    v8 = MEMORY[0x277CBED28];
    v9 = *(v7 + 46);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"hijackID"))
  {
    v12 = *(v7 + 456);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_41:
    APSLogErrorAt();
    v13 = -71955;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"ClientVersion"))
  {
    v20 = CFNumberCreate(0, kCFNumberSInt32Type, (v7 + 272));
    if (v20)
    {
LABEL_45:
      v13 = 0;
      goto LABEL_15;
    }

    APSLogErrorAt();
    v13 = -71950;
  }

  else
  {
    if (CFEqual(a2, @"parentGroupInfo"))
    {
      v19 = *(v7 + 448);
      v20 = v19;
      if (v19)
      {
        CFRetain(v19);
      }

      goto LABEL_45;
    }

    if (CFEqual(a2, @"senderSupportsMultiHop"))
    {
      v8 = MEMORY[0x277CBED28];
      v9 = *(v7 + 441);
      goto LABEL_10;
    }

    if (CFEqual(a2, @"type"))
    {
      airplayReqProcessor_copyType(a1, &v20);
      goto LABEL_45;
    }

    if (CFEqual(a2, @"isMediaSession"))
    {
      if (!*(v7 + 440))
      {
        v8 = MEMORY[0x277CBED28];
        v9 = *(v7 + 47);
        goto LABEL_10;
      }

      goto LABEL_41;
    }

    v13 = -71954;
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "CFTypeRef apProcessor_CopyProperty(CFTypeRef, CFStringRef, OSStatus *)", 33554482, "[%{ptr}] Unknown property %@\n", a1, a2);
    }
  }

LABEL_15:
  if (a3)
  {
    *a3 = v13;
  }

  return v20;
}

void airplayReqProcessor_copyType(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  Int64 = CFNumberCreateInt64();
  if (a2)
  {
    *a2 = Int64;
  }

  else if (Int64)
  {

    CFRelease(Int64);
  }
}

uint64_t airplayReqProcessor_GetMCRPForTargetSessionID(uint64_t a1, int a2, void *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 104);
  if (v4)
  {
    if (CFDictionaryGetCount(v4))
    {
      CFDictionaryApplyBlock();
      if (a3)
      {
        *a3 = v9[3];
      }
    }
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  return 0;
}

uint64_t APReceiverRequestProcessorCopyProperty_3958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

uint64_t airplayReqProcessor_GetMCRPForMCSession(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 104))
  {
    Value = 0;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  v5 = DerivedStorage;
  Int64 = CFNumberCreateInt64();
  Value = CFDictionaryGetValue(*(v5 + 104), Int64);
  if (Int64)
  {
    CFRelease(Int64);
  }

  if (a3)
  {
LABEL_5:
    *a3 = Value;
  }

  return 0;
}

uint64_t airplayReqProcessor_HandleRequest(const void *a1, uint64_t a2, const __CFDictionary *a3, CFMutableDictionaryRef *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage[36].i64[0])
  {
    DerivedStorage[38].i64[0] = mach_absolute_time();
  }

  v9 = DerivedStorage[2].i64[0];
  if (v9)
  {
    ++*(v9 + 500);
  }

  if (!DerivedStorage[7].i64[1])
  {
    DerivedStorage[7].i64[1] = CFDictionaryGetHardwareAddress();
  }

  if (!DerivedStorage[8].i8[6])
  {
    CFDictionaryGetCString();
    airplayReqProcessor_updateUIClientName(a1, &DerivedStorage[8].i8[6]);
  }

  v10 = 4294895363;
  if (*(DerivedStorage->i64[0] + 256))
  {
    if (a2 <= 1885434724)
    {
      if (a2 > 1801807215)
      {
        if (a2 == 1801807216)
        {
          goto LABEL_23;
        }

        v11 = 1836348024;
      }

      else
      {
        if (a2 == 1718628917)
        {
          goto LABEL_23;
        }

        v11 = 1768842863;
      }
    }

    else if (a2 <= 1886417779)
    {
      if (a2 == 1885434725)
      {
        goto LABEL_23;
      }

      v11 = 1885435493;
    }

    else
    {
      if (a2 == 1886417780 || a2 == 1919119972)
      {
        goto LABEL_23;
      }

      v11 = 1937012080;
    }

    if (a2 != v11)
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_HandleRequest(APReceiverRequestProcessorRef, OSType, CFDictionaryRef, CFDictionaryRef *)", 33554522, "[%{ptr}] Unsupported request denied: %'C for RC-only server\n", a1, a2);
      }

      goto LABEL_184;
    }
  }

LABEL_23:
  if (!DerivedStorage[25].i8[8] && DerivedStorage[25].i8[10])
  {
    if (a2 <= 1885435492)
    {
      if (a2 == 1702064240 || a2 == 1768842863)
      {
        goto LABEL_24;
      }

      v14 = 1885434725;
    }

    else if (a2 > 1886613611)
    {
      if (a2 == 1886613612)
      {
        goto LABEL_24;
      }

      v14 = 1886614892;
    }

    else
    {
      if (a2 == 1885435493)
      {
        goto LABEL_24;
      }

      v14 = 1886417780;
    }

    if (a2 != v14)
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_HandleRequest(APReceiverRequestProcessorRef, OSType, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Unverified request denied: %'C\n", a1, a2);
      }

      v43 = CFDictionaryCopyCString();
      v44 = v43;
      if (v43)
      {
        v45 = strlen(v43);
        if (v45 && memchr(v44, 47, v45) && TextToSourceVersion() > 0x1E9037)
        {
LABEL_205:
          free(v44);
          goto LABEL_184;
        }
      }

      else
      {
        v45 = 0;
      }

      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "void airplayReqProcessor_requestReportIfIncompatibleSender(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554522, "### [%{ptr}] Reporting incompatible sender: '%.*s'\n", a1, v45, v44);
      }

      if (!v44)
      {
        goto LABEL_184;
      }

      goto LABEL_205;
    }
  }

LABEL_24:
  *a4 = 0;
  mach_absolute_time();
  if (a2 != 1668246893 && a2 != 1885434725 && a2 != 1885435493)
  {
    airplayReqProcessor_updateLastControlMessage(a1, a2, 0);
  }

  v12 = 4294895361;
  if (a2 <= 1886283374)
  {
    if (a2 > 1735615345)
    {
      if (a2 <= 1801807215)
      {
        if (a2 <= 1735616869)
        {
          if (a2 == 1735615346 || a2 == 1735616561)
          {
            goto LABEL_125;
          }

          v13 = 1735616614;
          goto LABEL_124;
        }

        if (a2 == 1735616870 || a2 == 1735684980)
        {
          goto LABEL_125;
        }

        if (a2 != 1768842863)
        {
          goto LABEL_185;
        }

        Info = airplayReqProcessor_requestProcessGetInfo(a1, a3, a4);
        goto LABEL_183;
      }

      if (a2 <= 1885434724)
      {
        switch(a2)
        {
          case 0x6B656570:
            Info = airplayReqProcessor_requestProcessFeedback(a1, a3, a4);
            break;
          case 0x6D747278:
            Info = airplayReqProcessor_requestProcessMetrics(a1, a3, a4);
            break;
          case 0x6F707473:
            Info = airplayReqProcessor_requestProcessOptions(a4);
            break;
          default:
            goto LABEL_185;
        }

        goto LABEL_183;
      }

      if (a2 <= 1885435492)
      {
        if (a2 == 1885434725)
        {
          DerivedStorage[36].i8[8] = 1;
          v10 = airplayReqProcessor_requestProcessPairSetup(a1, a3, a4);
          mach_absolute_time();
          v40 = UpTicksToMilliseconds();
          v41.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v41.i64[1] = v40;
          DerivedStorage[29] = vaddq_s64(DerivedStorage[29], v41);
          goto LABEL_184;
        }

        v13 = 1885435252;
        goto LABEL_124;
      }

      if (a2 == 1885435493)
      {
        DerivedStorage[36].i8[8] = 1;
        Info = airplayReqProcessor_requestProcessPairVerify(a1, a3, a4);
        goto LABEL_183;
      }

      v13 = 1886151033;
    }

    else
    {
      if (a2 <= 1718383463)
      {
        if (a2 > 1634627170)
        {
          switch(a2)
          {
            case 0x616E6E63:
              Info = airplayReqProcessor_requestProcessAnnounce(a1, a3);
              break;
            case 0x636F6D6D:
              Info = airplayReqProcessor_requestProcessCommand(a1, a3, a4);
              break;
            case 0x65737070:
              DerivedStorage[36].i8[8] = 1;
              airplayReqProcessor_requestProcessEnsurePairPin(a1);
              v10 = 0;
              goto LABEL_184;
            default:
              goto LABEL_185;
          }
        }

        else
        {
          switch(a2)
          {
            case 0x6163746E:
              goto LABEL_125;
            case 0x616D736D:
              Info = airplayReqProcessor_requestProcessSetAudioMode(a1, a3);
              break;
            case 0x616E6368:
              Info = airplayReqProcessor_requestProcessGetAnchor(a1, a3, a4);
              break;
            default:
              goto LABEL_185;
          }
        }

        goto LABEL_183;
      }

      if (a2 <= 1718839393)
      {
        switch(a2)
        {
          case 0x666C7368:
            Info = airplayReqProcessor_requestProcessFlush(a1, a3, a4);
            break;
          case 0x66703235:
            Info = airplayReqProcessor_requestProcessFPSetup(a1, a3, a4);
            break;
          case 0x66707332:
            Info = airplayReqProcessor_requestProcessFPSetup2(a1, a3, a4);
            break;
          default:
            goto LABEL_185;
        }

        goto LABEL_183;
      }

      if (a2 > 1735422065)
      {
        if (a2 == 1735422066)
        {
          goto LABEL_125;
        }

        if (a2 != 1735422573)
        {
          goto LABEL_185;
        }

        Info = airplayReqProcessor_requestProcessGetParameter(a1, a3, a4);
        goto LABEL_183;
      }

      if (a2 == 1718839394)
      {
        Info = airplayReqProcessor_requestProcessFlushBuffered(a1, a3, a4);
        goto LABEL_183;
      }

      v13 = 1735222134;
    }

    goto LABEL_124;
  }

  if (a2 <= 1920365170)
  {
    if (a2 <= 1886614891)
    {
      if (a2 > 1886545266)
      {
        if (a2 == 1886545267 || a2 == 1886611505)
        {
          goto LABEL_125;
        }

        if (a2 != 1886613612)
        {
          goto LABEL_185;
        }

        DerivedStorage[36].i8[8] = 1;
        Info = airplayReqProcessor_requestProcessPairSetupPINLegacy(a1, a3, a4);
      }

      else
      {
        if (a2 == 1886283375 || a2 == 1886414964)
        {
          goto LABEL_125;
        }

        if (a2 != 1886417780)
        {
          goto LABEL_185;
        }

        DerivedStorage[36].i8[8] = 1;
        Info = airplayReqProcessor_requestProcessPairSetupPINStart(a1, a3);
      }

      goto LABEL_183;
    }

    if (a2 <= 1918984563)
    {
      if (a2 != 1886614892)
      {
        if (a2 == 1886679924)
        {
          goto LABEL_125;
        }

        v13 = 1886809964;
        goto LABEL_124;
      }

      DerivedStorage[36].i8[8] = 1;
      Info = airplayReqProcessor_requestProcessPairSetupUnauthenticatedLegacy(a1, a3, a4);
      goto LABEL_183;
    }

    if (a2 <= 1919119971)
    {
      if (a2 == 1918984564)
      {
        goto LABEL_125;
      }

      v13 = 1918989413;
      goto LABEL_124;
    }

    if (a2 == 1919119972)
    {
      Info = airplayReqProcessor_requestProcessRecord(a1, a3, a4);
      goto LABEL_183;
    }

    v13 = 1920168547;
LABEL_124:
    if (a2 != v13)
    {
      goto LABEL_185;
    }

LABEL_125:
    v58 = 0;
    v20 = CMBaseObjectGetDerivedStorage();
    v57 = 0;
    v56 = 0;
    if (APSIsAPMSpeaker())
    {
      APSLogErrorAt();
      v53 = -71931;
LABEL_231:
      v58 = v53;
      goto LABEL_155;
    }

    Int64 = CFDictionaryGetInt64();
    airplayReqProcessor_GetMCRPForMCSession(a1, Int64, &v56);
    v57 = 0;
    v22 = v56;
    if (v56)
    {
      goto LABEL_139;
    }

    if (!airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v58))
    {
LABEL_224:
      APSLogErrorAt();
LABEL_155:
      v10 = v58;
LABEL_184:
      DerivedStorage[36].i32[3] = v10;
      v12 = v10;
      goto LABEL_185;
    }

    if (Int64)
    {
      *&v59 = 0;
      HIBYTE(v59) = 0;
      *(&v59 + 7) = Int64;
      v57 = airplayReqProcessor_createAndStoreMediaControlRequestProcessorForMCSession(a1, Int64, &v59);
      if (!v57)
      {
        v23 = *(*v20 + 88);
        v24 = CMBaseObjectGetDerivedStorage();
        v25 = *(v24 + 32);
        if (v25 && *(v25 + 464))
        {
          v26 = v24;
          v55 = v20;
          if (gAirPlayReceiverReverseConnectionInitOnce != -1)
          {
            dispatch_once_f(&gAirPlayReceiverReverseConnectionInitOnce, 0, _AirPlayReceiverReverseConnectionGetTypeID);
          }

          Instance = _CFRuntimeCreateInstance();
          if (Instance)
          {
            v28 = Instance;
            *(Instance + 80) = 0;
            *(Instance + 48) = 0u;
            *(Instance + 64) = 0u;
            *(Instance + 16) = 0u;
            *(Instance + 32) = 0u;
            dispatch_retain(v23);
            *(v28 + 72) = v23;
            __strlcpy_chk();
            *(v28 + 38) = v59;
            *(v28 + 56) = Int64;
            v29 = *(v26[4] + 464);
            *(v28 + 64) = v29;
            CFRetain(v29);
            *(v28 + 80) = 1;
            v30 = AirPlayReceiverServerStoreReverseConnectionContext(*v26, v28 + 38, v28);
            if (!v30)
            {
              CFRelease(v28);
              v57 = 0;
              v31 = Int64;
              v20 = v55;
LABEL_138:
              airplayReqProcessor_GetMCRPForMCSession(a1, v31, &v56);
              v57 = 0;
              v22 = v56;
              if (v56)
              {
LABEL_139:
                if (a2 != 1886151033 || Int64)
                {
                  goto LABEL_143;
                }

                v58 = airplayReqProcessor_hijackCurrentSessionIfNeeded(a1);
                if (!v58)
                {
                  v22 = v56;
LABEL_143:
                  v33 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                  if (v33)
                  {
                    v34 = v33(v22, a2, a3, a4);
                  }

                  else
                  {
                    v34 = -71934;
                  }

                  v58 = v34;
                  if (!Int64)
                  {
                    if (a2 != 1886151033 || v34)
                    {
                      if (a2 == 1937010544)
                      {
                        airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 0);
                        airplayReqProcessor_deregisterReqProcWithSessionManagerIfNeeded(a1);
                      }
                    }

                    else
                    {
                      v35 = v20[57];
                      if (v35)
                      {
                        CFRelease(v35);
                        v20[57] = 0;
                      }

                      v36 = CMBaseObjectGetDerivedStorage();
                      v20[57] = CFStringCreateF(0, "%##a", v36 + 276);
                      airplayReqProcessor_handleNewSessionFromHTUnawareSender(a1, 0);
                      v57 = airplayReqProcessor_registerReqProcWithSessionManager(a1, 0);
                      if (v57)
                      {
                        APSLogErrorAt();
                        v58 = -71934;
                      }

                      else
                      {
                        airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 1);
                      }
                    }
                  }

                  goto LABEL_155;
                }

                goto LABEL_224;
              }

              goto LABEL_230;
            }

            v54 = v30;
            APSLogErrorAt();
            CFRelease(v28);
          }

          else
          {
            APSLogErrorAt();
            v54 = -6728;
          }
        }

        else
        {
          APSLogErrorAt();
          v54 = -6705;
        }

        v57 = v54;
      }

LABEL_230:
      APSLogErrorAt();
      v53 = -71946;
      goto LABEL_231;
    }

    v32 = airplayReqProcessor_createAndStoreMediaControlRequestProcessorForMCSession(a1, 0, 0);
    v31 = 0;
    v57 = v32;
    if (v32)
    {
      APSLogErrorAt();
      v53 = -71930;
      goto LABEL_231;
    }

    goto LABEL_138;
  }

  if (a2 <= 1936941937)
  {
    if (a2 <= 1936027767)
    {
      if (a2 == 1920365171 || a2 == 1936024939)
      {
        goto LABEL_125;
      }

      if (a2 != 1936027749)
      {
        goto LABEL_185;
      }

      v16 = a1;
      v17 = a3;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      if (a2 > 1936749164)
      {
        if (a2 == 1936749165)
        {
          Info = airplayReqProcessor_requestProcessSetParameter(a1, a3);
        }

        else
        {
          if (a2 != 1936875892)
          {
            goto LABEL_185;
          }

          Info = airplayReqProcessor_requestProcessSetRateAndAnchorTime(a1, a3, a4);
        }

        goto LABEL_183;
      }

      if (a2 != 1936027768)
      {
        v13 = 1936748658;
        goto LABEL_124;
      }

      v16 = a1;
      v17 = a3;
      v18 = 1;
      v19 = a4;
    }

    Info = airplayReqProcessor_requestProcessSetPeers(v16, v17, v18, v19);
LABEL_183:
    v10 = Info;
    goto LABEL_184;
  }

  if (a2 <= 1937011315)
  {
    if (a2 == 1936941938)
    {
      goto LABEL_125;
    }

    if (a2 == 1936942192)
    {
      Info = airplayReqProcessor_requestProcessSetupSDP(a1, a3, a4);
      goto LABEL_183;
    }

    v13 = 1937010544;
    goto LABEL_124;
  }

  if (a2 <= 1952741229)
  {
    if (a2 == 1937011316)
    {
      Info = airplayReqProcessor_requestProcessSetRate(a1, a3, a4);
    }

    else
    {
      if (a2 != 1937012080)
      {
        goto LABEL_185;
      }

      Info = airplayReqProcessor_requestProcessSetupPlist(a1, a3, a4);
    }

    goto LABEL_183;
  }

  if (a2 == 1952741230 || a2 == 1953719408)
  {
    v37 = CMBaseObjectGetDerivedStorage();
    LOBYTE(v56) = 1;
    LODWORD(v59) = 0;
    v38 = gLogCategory_APReceiverRequestProcessorAirPlay;
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50)
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay != -1)
      {
LABEL_163:
        if (v38 > 20)
        {
          v39 = 0;
        }

        else
        {
          v39 = v38 != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessTearDown(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Teardown %?@\n", a1, v39, a3);
        goto LABEL_208;
      }

      if (_LogCategory_Initialize())
      {
        v38 = gLogCategory_APReceiverRequestProcessorAirPlay;
        goto LABEL_163;
      }
    }

LABEL_208:
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v47 = TypedValue;
    if (TypedValue)
    {
      CFDataGetBytePtr(TypedValue);
      CFDataGetLength(v47);
      CFDictionaryGetTypeID();
      v47 = CFCreateWithPlistBytes();
    }

    v48 = *(v37 + 32);
    if (v48)
    {
      AirPlayReceiverSessionTearDown(v48, v47, 0, &v56);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v50 = Mutable;
      if (v56)
      {
        v51 = *(v37 + 32);
        if (v51)
        {
          CFRelease(v51);
          *(v37 + 32) = 0;
        }

        v52 = *(v37 + 448);
        if (v52)
        {
          CFRelease(v52);
          *(v37 + 448) = 0;
        }

        *(v37 + 44) = 0;
        *(v37 + 46) = 0;
        airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 0);
        airplayReqProcessor_deregisterReqProcWithSessionManagerIfNeeded(a1);
      }

      v10 = 0;
      *a4 = v50;
    }

    else
    {
      APSLogErrorAt();
      v10 = 4294895362;
    }

    if (v47)
    {
      CFRelease(v47);
    }

    goto LABEL_184;
  }

LABEL_185:
  if (!DerivedStorage[36].i64[0])
  {
    DerivedStorage[38].i64[1] += mach_absolute_time() - DerivedStorage[38].i64[0];
  }

  DerivedStorage[38].i64[0] = 0;
  return v12;
}

void airplayReqProcessor_updateUIClientName(uint64_t a1, const char *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) && *a2)
  {
    v4 = DerivedStorage;
    v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
    v6 = *(v4 + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(v6, @"ClientName", v5);
    }

    CFRelease(v5);
  }
}

void airplayReqProcessor_updateLastControlMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = CFStringCreateF(0, "%C:%@", a2, a3);
  }

  else
  {
    v6 = CFStringCreateF(0, "%C");
  }

  v7 = v6;
  if (FigCFEqual())
  {
    v8 = *(DerivedStorage + 600) + 1;
  }

  else
  {
    v9 = *(DerivedStorage + 592);
    *(DerivedStorage + 592) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v8 = 1;
  }

  *(DerivedStorage + 600) = v8;
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t airplayReqProcessor_requestProcessAnnounce(const void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessAnnounce(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554482, "[%{ptr}] Announce\n", a1);
  }

  if (!airplayReqProcessor_isAllowedToConnectBasedOnACL(a1))
  {
    APSLogErrorAt();
    return -71930;
  }

  if (!airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v25))
  {
    goto LABEL_115;
  }

  if (*(DerivedStorage + 44))
  {
    return -71931;
  }

  CFDictionaryGetData();
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
LABEL_116:
    APSLogErrorAt();
    return -71938;
  }

  v6 = TypedValue;
  v7 = *(DerivedStorage + 24);
  if ((v7 == 4 || v7 == 128 || v7 == 64) && !APReceiverSystemInfoAllowsP2PConnectionFromMACAddress(*(*DerivedStorage + 160), DerivedStorage + 128))
  {
    APSLogErrorAt();
    return -71933;
  }

  v25 = airplayReqProcessor_hijackCurrentSessionIfNeeded(a1);
  if (v25)
  {
LABEL_115:
    APSLogErrorAt();
    return v25;
  }

  if (SDPFindSessionSection())
  {
    goto LABEL_116;
  }

  SDPFindType();
  SNScanF(0, 0, "%*s %llu", DerivedStorage + 264);
  SDPFindType();
  TruncateUTF8();
  if (SDPFindMediaSection())
  {
    goto LABEL_111;
  }

  if (strncmp_prefix())
  {
    goto LABEL_19;
  }

  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v10 = CMBaseObjectGetDerivedStorage();
  Length = CFDataGetLength(v6);
  BytePtr = CFDataGetBytePtr(v6);
  if (SDPFindMediaSection() || SNScanF(v44, Length, "audio 0 RTP/AVP %d", &v40 + 4) != 1 || SDPFindAttribute() || SNScanF(v44, Length, "%d %&s", &v40, &v39, &v38) != 2 || v40 != HIDWORD(v40))
  {
    goto LABEL_79;
  }

  if (strnicmpx())
  {
    if (strnicmpx())
    {
      if (strnicmpx() && strnicmpx())
      {
        goto LABEL_111;
      }

      *(v10 + 84) = 0x16000000001;
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_requestProcessAnnounceAudio(APReceiverRequestProcessorRef, CFDataRef)", 33554482, "*** [%{ptr}] Not using compression\n", a1);
      }
    }

    else
    {
      v46 = 0;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      if (SDPFindAttribute() || SNScanF(v44, Length, "%d %&c", &v40, &v46, &v28) != 2 || v40 != HIDWORD(v40))
      {
        goto LABEL_79;
      }

      v26 = 3;
      v27 = "AAC";
      SDPFindParameter();
      if (strncmpx())
      {
        if (strncmpx())
        {
          if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_requestProcessAnnounceAudio(APReceiverRequestProcessorRef, CFDataRef)", 33554522, "### [%{ptr}] Unsuported AAC format: '%.*s'\n", a1, Length, v44);
          }

          goto LABEL_111;
        }

        v18 = 8;
      }

      else
      {
        v18 = 4;
      }

      *(v10 + 84) = v18;
      v26 = 4;
      v27 = "1024";
      SDPFindParameter();
      if (SNScanF(v27, v26, "%u", v10 + 88) != 1)
      {
        goto LABEL_79;
      }
    }
  }

  else
  {
    LODWORD(v46) = 0;
    LODWORD(v28) = 0;
    LODWORD(v27) = 0;
    LODWORD(v26) = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v29 = 0;
    if (SDPFindAttribute() || SNScanF(v44, Length, "%d %d %d %d %d %d %d %d %d %d %d %d", &v40, &v46, &v28, &v27, &v26, &v32 + 4, &v32, &v31 + 4, &v31, &v30 + 4, &v30, &v29) != 12 || v40 != HIDWORD(v40))
    {
      goto LABEL_79;
    }

    v11 = v46;
    *(v10 + 84) = 2;
    *(v10 + 88) = v11;
  }

  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  SDPFindAttribute();
  if (v37)
  {
    v28 = 0;
    LODWORD(v27) = 0;
    if (Base64Decode() || v33 >= 0x101 || !*(v10 + 384))
    {
      goto LABEL_79;
    }

    OowSGu();
    if (v19)
    {
      if (*(v10 + 384))
      {
        IPaI1oem5iL();
        *(v10 + 384) = 0;
      }

      goto LABEL_79;
    }

    if (v27 != 16)
    {
      jEHf8Xzsv8K(v28);
      goto LABEL_79;
    }

    v20 = v28;
    *(v10 + 48) = *v28;
    jEHf8Xzsv8K(v20);
    if ((*(v10 + 356) & 0xFFFFFFFE) != 2)
    {
      goto LABEL_111;
    }
  }

  SDPFindAttribute();
  v21 = v37;
  v22 = v35;
  if (v37 && v35)
  {
    if (!Base64Decode() && v33 == 16)
    {
      v23 = 1;
      goto LABEL_102;
    }

LABEL_79:
    APSLogErrorAt();
    goto LABEL_111;
  }

  if (v37 | v35)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90)
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_111;
        }

        v21 = v37;
        v22 = v35;
      }

      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_requestProcessAnnounceAudio(APReceiverRequestProcessorRef, CFDataRef)", 33554522, "### [%{ptr}] Key/IV missing: key %p/%p\n", a1, v21, v22);
    }

LABEL_111:
    APSLogErrorAt();
    return -71936;
  }

  v23 = 0;
LABEL_102:
  *(v10 + 92) = 11025;
  *(v10 + 80) = v23;
  Length = 0;
  v44 = 0;
  SDPFindAttribute();
  if (Length && SNScanF(v44, Length, "%u", v10 + 92) != 1)
  {
    goto LABEL_79;
  }

  *(v10 + 96) = 88200;
  v24 = v10 + 96;
  Length = 0;
  v44 = 0;
  SDPFindAttribute();
  if (Length)
  {
    if (SNScanF(v44, Length, "%u", v24) != 1)
    {
      goto LABEL_79;
    }
  }

LABEL_19:
  if (*(DerivedStorage + 8))
  {
    v8 = *(DerivedStorage + 24);
    if (v8 <= 15)
    {
      if (v8 > 3)
      {
        if (v8 == 4)
        {
          v9 = "AWDL";
          goto LABEL_68;
        }

        if (v8 == 8)
        {
          v9 = "USB";
          goto LABEL_68;
        }
      }

      else
      {
        if (v8 == 1)
        {
          v9 = "Enet";
          goto LABEL_68;
        }

        if (v8 == 2)
        {
          v9 = "WiFi";
          goto LABEL_68;
        }
      }
    }

    else if (v8 <= 63)
    {
      if (v8 == 16)
      {
        v9 = "Direct";
        goto LABEL_68;
      }

      if (v8 == 32)
      {
        v9 = "BTLE";
        goto LABEL_68;
      }
    }

    else
    {
      switch(v8)
      {
        case 64:
          v9 = "WFD";
          goto LABEL_68;
        case 128:
          v9 = "NAN";
          goto LABEL_68;
        case 256:
          v9 = "IPsecBT";
LABEL_68:
          v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"AirPlay starting...\n%s\n%s\n", DerivedStorage + 134, v9);
          v13 = *(DerivedStorage + 8);
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v14)
          {
            v14(v13, 30, v12);
          }

          CFRelease(v12);
          goto LABEL_71;
      }
    }

    if (v8 == 512)
    {
      v9 = "IPSecWiFi";
    }

    else
    {
      v9 = "?";
    }

    goto LABEL_68;
  }

LABEL_71:
  __strlcpy_chk();
  *(DerivedStorage + 44) = 1;
  *(DerivedStorage + 440) = 0;
  v15 = *(DerivedStorage + 456);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 456) = 0;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 456) = CFStringCreateF(0, "%##a", v16 + 276);
  if (!airplayReqProcessor_registerReqProcWithSessionManager(a1, 0))
  {
    return 0;
  }

  APSLogErrorAt();
  return -71934;
}

uint64_t airplayReqProcessor_requestProcessOptions(CFMutableDictionaryRef *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetCString();
    result = 0;
    *a1 = v3;
  }

  else
  {
    APSLogErrorAt();
    return 4294895362;
  }

  return result;
}

uint64_t airplayReqProcessor_requestProcessSetParameter(uint64_t a1, const __CFDictionary *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = 4294895366;
  if (!*(CMBaseObjectGetDerivedStorage() + 45))
  {
    return 4294895365;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    if (CFStringCopyUTF8CString())
    {
      APSLogErrorAt();
      return 0;
    }

    TypedValue = CFStringGetLength(TypedValue);
  }

  CFDataGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  if (!TypedValue && (!v6 || !CFDataGetLength(v6)))
  {
    return 0;
  }

  if (!strnicmp_prefix())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *v51 = 0;
    Value = CFDictionaryGetValue(a2, @"applyTS");
    if (Value)
    {
      v33 = Value;
      CFStringGetTypeID();
      v34 = CFDictionaryGetTypedValue();
      CFDataGetTypeID();
      v35 = CFDictionaryGetTypedValue();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v37 = Mutable;
        CFDictionarySetValue(Mutable, @"artworkMIMEType", v34);
        if (v35 && CFDataGetLength(v35) >= 1)
        {
          v38 = v37;
          v39 = v35;
        }

        else
        {
          v39 = *MEMORY[0x277CBEEE8];
          v38 = v37;
        }

        CFDictionarySetValue(v38, @"artworkData", v39);
        if (AirPlayReceiverSessionSetProperty(*(DerivedStorage + 32), v43, @"metaData", v33, v37))
        {
          APSLogErrorAt();
          v7 = 4294895362;
        }

        else
        {
          v7 = 0;
        }

        CFRelease(v37);
        return v7;
      }

LABEL_81:
      APSLogErrorAt();
      return 4294895362;
    }

LABEL_80:
    APSLogErrorAt();
    return 4294895366;
  }

  if (!strnicmpx())
  {
    CMBaseObjectGetDerivedStorage();
    v50 = 0;
    if (CFDictionaryGetValue(a2, @"applyTS"))
    {
      v49 = 0;
      *v51 = 0;
      v47 = 0;
      v48 = 0;
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      CFDataGetTypeID();
      v40 = CFDictionaryGetTypedValue();
      v41 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v41)
      {
        v42 = v41;
        CFDataGetBytePtr(v40);
        CFDataGetLength(v40);
        CFDataGetBytePtr(v40);
        DMAPContentBlock_GetNextChunk();
        APSLogErrorAt();
        CFRelease(v42);
        return v4;
      }

      goto LABEL_81;
    }

    goto LABEL_80;
  }

  v7 = 4294895364;
  if (strnicmpx())
  {
    return v7;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  LODWORD(v48) = 0;
  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  BytePtr = CFDataGetBytePtr(v9);
  Length = CFDataGetLength(v9);
  if (Length < 1)
  {
    return 0;
  }

  v12 = &BytePtr[Length];
  v13 = &BytePtr[Length];
  v14 = 4294895355;
  while (1)
  {
    v15 = v13 - BytePtr;
    for (i = BytePtr; *i != 58; ++i)
    {
      if (!--v15)
      {
        return v14;
      }
    }

    if (i == BytePtr)
    {
      return v14;
    }

    v17 = i + 1;
    v46 = v14;
    if ((i + 1) < v12)
    {
      while (1)
      {
        v18 = *v17;
        if (v18 != 32 && v18 != 9)
        {
          break;
        }

        if (++v17 >= v12)
        {
          v17 = v12;
          break;
        }
      }
    }

    v20 = v17;
    if (v17 < v12)
    {
      v21 = v13 - v17;
      v20 = v17;
      while (1)
      {
        v22 = *v20;
        if (v22 == 10 || v22 == 13)
        {
          break;
        }

        ++v20;
        if (!--v21)
        {
          v20 = v12;
          break;
        }
      }
    }

    v45 = v13;
    v24 = v20 - v17;
    if (strnicmpx())
    {
      if (strnicmpx())
      {
        return v46;
      }

      v50 = 0;
      *v51 = 0;
      LODWORD(v47) = 0;
      if (SNScanF(v17, v20 - v17, "%u/%u/%u", v51, &v47, &v50) != 3)
      {
        v4 = 4294895364;
LABEL_84:
        APSLogErrorAt();
        return v4;
      }

      v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v25)
      {
        v4 = 4294895362;
        goto LABEL_84;
      }

      v26 = v25;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      LODWORD(v48) = AirPlayReceiverSessionSetProperty(*(v8 + 32), v27, @"progress", 0, v26);
      CFRelease(v26);
      if (v48)
      {
        return 4294895354;
      }

      goto LABEL_44;
    }

    if (v24 >= 0x100)
    {
      APSLogErrorAt();
      return 4294895364;
    }

    if (*(v8 + 440))
    {
      break;
    }

    __memcpy_chk();
    v51[v24] = 0;
    strtod(v51, 0);
    if (*(v8 + 32))
    {
      LODWORD(v48) = CFObjectSetPropertyDouble();
      if (v48)
      {
        goto LABEL_89;
      }
    }

    else
    {
      LODWORD(v48) = CFObjectSetPropertyDouble();
      if (v48)
      {
LABEL_89:
        APSLogErrorAt();
        return 4294895362;
      }
    }

LABEL_44:
    if (v20 >= v12)
    {
      v13 = v45;
    }

    else
    {
      v13 = v45;
      v28 = v45 - v20;
      while (1)
      {
        v29 = *v20;
        if (v29 != 13 && v29 != 10)
        {
          break;
        }

        ++v20;
        if (!--v28)
        {
          v20 = v12;
          break;
        }
      }
    }

    BytePtr = v20;
    v14 = v46;
    if (v20 >= v12)
    {
      return 0;
    }
  }

  APSLogErrorAt();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetParameterText(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554482, "[%{ptr}] Set volume not applicable for remote control session.\n", a1);
  }

  return 0;
}

uint64_t airplayReqProcessor_requestProcessFlush(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v16 = 0;
  *v15 = *MEMORY[0x277CEA038];
  v4 = *v15;
  *&v15[12] = *(MEMORY[0x277CEA038] + 12);
  v14[0] = v4;
  *(v14 + 12) = *&v15[12];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 40 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessFlush(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554472, "Flush\n");
  }

  v6 = 4294895362;
  if (!*(DerivedStorage + 46))
  {
    return 4294895365;
  }

  CFDictionaryGetInt64Ranged();
  v16 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
  if (v16 || (v13[0] = *v15, *(v13 + 12) = *&v15[12], !APSAudioTransportTimeIsValid()))
  {
    APSLogErrorAt();
    return 4294895366;
  }

  v7 = *(DerivedStorage + 32);
  v13[0] = *v15;
  *(v13 + 12) = *&v15[12];
  v16 = AirPlayReceiverSessionFlushAudio(v7, 0, MEMORY[0x277CEA038], 0, v13);
  if (v16 || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
  {
    APSLogErrorAt();
    return v6;
  }

  v9 = Mutable;
  if (LODWORD(v14[0]) == 2)
  {
    v13[0] = v14[0];
    *(v13 + 12) = *(v14 + 12);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    goto LABEL_16;
  }

  if (LODWORD(v14[0]) != 1)
  {
LABEL_16:
    v6 = 0;
    *a3 = v9;
    return v6;
  }

  v10 = CFStringCreateMutable(0, 0);
  if (v10)
  {
    v11 = v10;
    CFStringAppendFormat(v10, 0, @"rtptime=%u", DWORD1(v14[0]));
    CFDictionarySetValue(v9, @"RTP-Info", v11);
    *a3 = v9;
    CFRelease(v11);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    CFRelease(v9);
  }

  return v6;
}

uint64_t airplayReqProcessor_requestProcessFlushBuffered(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v23 = 0;
  *v22 = *MEMORY[0x277CEA038];
  v5 = *v22;
  *&v22[12] = *(MEMORY[0x277CEA038] + 12);
  v21[0] = v5;
  *(v21 + 12) = *&v22[12];
  v20[0] = v5;
  *(v20 + 12) = *&v22[12];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessFlushBuffered(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Flush (buffered)\n", a1);
  }

  v7 = 4294895366;
  if (!*(DerivedStorage + 46))
  {
    return 4294895365;
  }

  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APSLogErrorAt();
    return v7;
  }

  v9 = TypedValue;
  CFDataGetBytePtr(TypedValue);
  CFDataGetLength(v9);
  CFDictionaryGetTypeID();
  v10 = CFCreateWithPlistBytes();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessFlushBuffered(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "Flush (buffered) requestParams = %@\n", v10);
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v23 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
  if (v23 || (v19[0] = *v22, *(v19 + 12) = *&v22[12], v12 = APSAudioTransportTimeIsValid() != 0, CFDictionaryGetInt64Ranged(), (v23 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary()) != 0))
  {
    APSLogErrorAt();
    Mutable = 0;
    v16 = 0;
    goto LABEL_23;
  }

  v13 = *(DerivedStorage + 32);
  v19[0] = *v22;
  *(v19 + 12) = *&v22[12];
  v18[0] = v21[0];
  *(v18 + 12) = *(v21 + 12);
  v23 = AirPlayReceiverSessionFlushAudio(v13, v12, v19, Int64Ranged, v18);
  if (v23)
  {
    APSLogErrorAt();
    Mutable = 0;
LABEL_34:
    v16 = 0;
LABEL_35:
    v7 = 4294895362;
    goto LABEL_23;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    goto LABEL_34;
  }

  if (LODWORD(v20[0]) == 2)
  {
    v19[0] = v20[0];
    *(v19 + 12) = *(v20 + 12);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    goto LABEL_21;
  }

  if (LODWORD(v20[0]) != 1)
  {
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  v15 = CFStringCreateMutable(0, 0);
  v16 = v15;
  if (!v15)
  {
    APSLogErrorAt();
    goto LABEL_35;
  }

  CFStringAppendFormat(v15, 0, @"rtptime=%u", DWORD1(v20[0]));
  CFDictionarySetValue(Mutable, @"RTP-Info", v16);
LABEL_22:
  v7 = 0;
  *a3 = Mutable;
  Mutable = 0;
LABEL_23:
  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v7;
}

uint64_t airplayReqProcessor_requestProcessGetAnchor(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v21 = 0;
  *v20 = *MEMORY[0x277CEA038];
  *&v20[12] = *(MEMORY[0x277CEA038] + 12);
  memset(v19, 0, sizeof(v19));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessGetAnchor(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Get Anchor \n", a1);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895362;
  }

  v7 = Mutable;
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v9 = TypedValue;
    CFDataGetBytePtr(TypedValue);
    CFDataGetLength(v9);
    CFDictionaryGetTypeID();
    v10 = CFCreateWithPlistBytes();
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessGetAnchor(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "GetAnchor requestParams = %@\n", v10);
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    v12 = *(DerivedStorage + 32);
    if (v12)
    {
      v13 = *(v12 + 576);
      if (v13)
      {
        v14 = *(v13 + 96);
        if (v14)
        {
          v15 = v14(*(v13 + 40), Int64Ranged, v20, v19);
          if (!v15)
          {
            v21 = 0;
            APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            goto LABEL_19;
          }

          v16 = v15;
        }

        else
        {
          v16 = -12782;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        v16 = -6718;
      }
    }

    else
    {
      APSLogErrorAt();
      v16 = -72152;
    }

    v21 = v16;
LABEL_19:
    CFDictionarySetInt64();
    if (CFDictionaryGetCount(v7) >= 1 && (v21 = airplayReqProcessor_preparePlistResponse(v7, a3)) != 0)
    {
      APSLogErrorAt();
      v17 = 4294895362;
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    goto LABEL_24;
  }

  v17 = 4294895366;
  APSLogErrorAt();
LABEL_24:
  CFRelease(v7);
  return v17;
}

uint64_t airplayReqProcessor_requestProcessSetRate(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v26 = 0;
  *v25 = *MEMORY[0x277CEA038];
  v5 = *v25;
  *&v25[12] = *(MEMORY[0x277CEA038] + 12);
  v24[0] = v5;
  *(v24 + 12) = *&v25[12];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetRate(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Set Rate\n", a1, v21, v22, v23);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895362;
  }

  v8 = Mutable;
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v10 = TypedValue;
    CFDataGetBytePtr(TypedValue);
    CFDataGetLength(v10);
    CFDictionaryGetTypeID();
    v11 = CFCreateWithPlistBytes();
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetRate(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "SetRate requestParams = %@\n", v11);
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged == 1)
    {
      v26 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
      if (v26)
      {
        v19 = 4294895366;
      }

      else
      {
        v27[0] = *v25;
        *(v27 + 12) = *&v25[12];
        if (APSAudioTransportTimeIsValid())
        {
          goto LABEL_14;
        }

        v19 = 4294895366;
      }

      APSLogErrorAt();
LABEL_25:
      if (v11)
      {
        CFRelease(v11);
      }

      goto LABEL_27;
    }

LABEL_14:
    v13 = *(DerivedStorage + 32);
    if (v13)
    {
      v14 = *(v13 + 576);
      if (v14)
      {
        v15 = *(v14 + 104);
        if (v15)
        {
          v16 = *(v14 + 40);
          v27[0] = *v25;
          *(v27 + 12) = *&v25[12];
          v17 = v15(v16, Int64Ranged, v27, v24, &v21);
          if (!v17)
          {
            v26 = 0;
            v27[0] = v24[0];
            *(v27 + 12) = *(v24 + 12);
            APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
LABEL_22:
            CFDictionarySetInt64();
            if (CFDictionaryGetCount(v8) >= 1 && (v26 = airplayReqProcessor_preparePlistResponse(v8, a3)) != 0)
            {
              APSLogErrorAt();
              v19 = 4294895362;
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_25;
          }

          v18 = v17;
        }

        else
        {
          v18 = -12782;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        v18 = -6718;
      }
    }

    else
    {
      APSLogErrorAt();
      v18 = -72152;
    }

    v26 = v18;
    goto LABEL_22;
  }

  v19 = 4294895366;
  APSLogErrorAt();
LABEL_27:
  CFRelease(v8);
  return v19;
}

uint64_t airplayReqProcessor_requestProcessSetRateAndAnchorTime(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v32 = 0;
  *v31 = *MEMORY[0x277CEA038];
  v5 = *v31;
  *&v31[12] = *(MEMORY[0x277CEA038] + 12);
  v30[0] = v5;
  *(v30 + 12) = *&v31[12];
  v29[0] = v5;
  *(v29 + 12) = *&v31[12];
  v26 = 0;
  v27 = 0;
  v28 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetRateAndAnchorTime(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Set Rate And Anchor Time\n", a1);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895362;
  }

  v8 = Mutable;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    if (*(DerivedStorage + 46))
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetRateAndAnchorTime(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] didRecord = %s\n", a1, v9);
  }

  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v11 = TypedValue;
    CFDataGetBytePtr(TypedValue);
    CFDataGetLength(v11);
    CFDictionaryGetTypeID();
    v12 = CFCreateWithPlistBytes();
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetRateAndAnchorTime(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "SetRateAndAnchorTime requestParams = %@\n", v12);
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged == 1)
    {
      v32 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
      if (v32)
      {
        v19 = 4294895366;
      }

      else
      {
        v25[0] = *v31;
        *(v25 + 12) = *&v31[12];
        if (APSAudioTransportTimeIsValid())
        {
          v32 = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
          if (!v32)
          {
            v14 = CFDictionaryGetInt64Ranged();
            Int64 = CFDictionaryGetInt64();
            v16 = CFDictionaryGetInt64();
            v17 = CFDictionaryGetInt64Ranged();
            goto LABEL_24;
          }

          v19 = 4294895366;
        }

        else
        {
          v19 = 4294895366;
        }
      }

      APSLogErrorAt();
LABEL_34:
      if (v12)
      {
        CFRelease(v12);
      }

      goto LABEL_36;
    }

    v16 = 0;
    Int64 = 0;
    v14 = 0;
    v17 = 0;
LABEL_24:
    v18 = *(DerivedStorage + 32);
    v25[0] = *v31;
    *(v25 + 12) = *&v31[12];
    v24[0] = v30[0];
    *(v24 + 12) = *(v30 + 12);
    *&v21 = v16;
    *(&v21 + 1) = Int64;
    v22 = v14;
    v23 = v17;
    v32 = AirPlayReceiverSessionSetRateAndAnchorTime(v18, Int64Ranged, v25, v24, &v21);
    if (!v32)
    {
      if (Int64Ranged != 1 || (v28 & 0x100000000) != 0)
      {
        goto LABEL_29;
      }

      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
    }

    CFDictionarySetInt64();
LABEL_29:
    v25[0] = v29[0];
    *(v25 + 12) = *(v29 + 12);
    if (APSAudioTransportTimeIsValid())
    {
      v25[0] = v29[0];
      *(v25 + 12) = *(v29 + 12);
      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    }

    if (CFDictionaryGetCount(v8) >= 1 && (v32 = airplayReqProcessor_preparePlistResponse(v8, a3)) != 0)
    {
      APSLogErrorAt();
      v19 = 4294895362;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_34;
  }

  v19 = 4294895366;
  APSLogErrorAt();
LABEL_36:
  CFRelease(v8);
  return v19;
}

uint64_t airplayReqProcessor_requestProcessSetPeers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    v5 = DerivedStorage;
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v7 = TypedValue;
      CFDataGetBytePtr(TypedValue);
      CFDataGetLength(v7);
      CFArrayGetTypeID();
      v8 = CFCreateWithPlistBytes();
      v9 = *(v5 + 32);
      if (!CFEqual(*(v9 + 672), @"PTP"))
      {
        goto LABEL_24;
      }

      v10 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (v9 + 152), 0x8000100u);
      v11 = APSNetworkClockSetPeersFromSetPeersMessagePayload();
      if (v11)
      {
        APSLogErrorAt();
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v11)
      {
        v12 = 4294895362;
        APSLogErrorAt();
      }

      else
      {
LABEL_24:
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetPeers(APReceiverRequestProcessorRef, CFDictionaryRef, Boolean, CFDictionaryRef *)", 33554462, "SetPeers peers = %@\n", v8);
        }

        v12 = 0;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294895366;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895358;
  }

  return v12;
}

uint64_t airplayReqProcessor_requestProcessGetParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 45))
  {
    return 4294895365;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (CFStringCompare(TypedValue, @"text/parameters", 0))
  {
    return 4294895364;
  }

  CFDictionaryGetData();
  APSLogErrorAt();
  return 4294895366;
}

uint64_t airplayReqProcessor_requestProcessRecord(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v107 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  cf = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessRecord(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Record\n", a1);
  }

  v6 = 4294895359;
  if (!*(DerivedStorage + 45))
  {
    v6 = 4294895365;
    goto LABEL_192;
  }

  v7 = *(DerivedStorage + 24);
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v72 = a3;
  v73 = v7;
  if (TypedValue)
  {
    v9 = TypedValue;
    v87 = CFStringCopyUTF8CString();
    if (v87)
    {
      goto LABEL_205;
    }

    CFStringGetLength(v9);
    v10 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v86 = v81;
    while (!HTTPParseParameter())
    {
      if (strnicmpx())
      {
        if (strnicmpx())
        {
          if (strnicmpx())
          {
            if (strnicmpx())
            {
              if (strnicmpx())
              {
                if (!strnicmpx())
                {
                  v74 = TextToInt32();
                }
              }

              else
              {
                v75 = TextToInt32();
              }
            }

            else
            {
              v76 = TextToInt32();
            }
          }

          else
          {
            v77 = TextToInt32();
          }
        }

        else
        {
          v78 = TextToInt32();
        }
      }

      else
      {
        v10 = TextToInt32();
      }
    }

    v6 = 4294895359;
  }

  else
  {
    v10 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
  }

  v71 = DerivedStorage;
  v11 = *(DerivedStorage + 32);
  theArray = 0;
  *(v11 + 352) = mach_absolute_time();
  if (*(v11 + 683))
  {
    goto LABEL_53;
  }

  *&block = 0;
  if (*(v11 + 192) != 128)
  {
    _AirPlayReceiverSessionRemoveTrafficRegistration(v11);
    v12 = *(v11 + 192);
    APTransportGetSharedTransport();
    CMBaseObject = FigTransportGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v14 || v14(CMBaseObject, *MEMORY[0x277CE4F30], *MEMORY[0x277CBECE8], &block))
    {
      goto LABEL_32;
    }

    if (v12 == 4)
    {
      if (APTransportTrafficRegistrarAWDLTrafficRegistrationCreate())
      {
LABEL_32:
        APSLogErrorAt();
LABEL_40:
        if (block)
        {
          CFRelease(block);
        }

        goto LABEL_42;
      }
    }

    else if (APTransportTrafficRegistrarInfraTransactionCreate())
    {
      goto LABEL_32;
    }

    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      v15 = "Infra Transaction";
      if (v12 == 4)
      {
        v15 = "Traffic Registration";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _AirPlayReceiverSessionAddTrafficRegistration(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] Added %s [%{ptr}]", v11, v15, *(v11 + 432));
    }

    goto LABEL_40;
  }

LABEL_42:
  v16 = *(v11 + 592);
  if (v16)
  {
    *&v95 = 0;
    *(&v95 + 1) = &v95;
    *&v96 = 0x2000000000;
    DWORD2(v96) = 0;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    v18 = (v17 ? v17(v16) : MEMORY[0x277D85CD0]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v18)
    {
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 0x40000000;
      *&v104 = __APReceiverSBufConsumerStart_block_invoke;
      *(&v104 + 1) = &unk_278C60CC8;
      *&v105 = &v95;
      *(&v105 + 1) = v16;
      dispatch_sync(v18, &block);
      v19 = *(*(&v95 + 1) + 24);
    }

    else
    {
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      v19 = v20 ? v20(v16) : 4294954514;
      *(*(&v95 + 1) + 24) = v19;
    }

    _Block_object_dispose(&v95, 8);
    if (v19)
    {
      goto LABEL_123;
    }
  }

LABEL_53:
  if ((*(v11 + 476) & 0x80000000) != 0)
  {
    goto LABEL_93;
  }

  memset(v99, 0, sizeof(v99));
  v100 = 0;
  v98 = -1;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v105 = 0u;
  v106 = 0u;
  block = 0u;
  v104 = 0u;
  v93 = 0;
  *v94 = 0;
  *&v92.sa_len = 0;
  *&v92.sa_data[6] = 0;
  v21 = SocketAccept();
  if (v21)
  {
    v19 = v21;
    goto LABEL_127;
  }

  v22 = *(v11 + 476);
  if ((v22 & 0x80000000) == 0)
  {
    if (close(v22) && *__error())
    {
      __error();
    }

    *(v11 + 476) = -1;
  }

  v94[1] = 28;
  getsockname(v98, &v92, &v94[1]);
  v23 = HTTPClientCreateWithSocket();
  if (v23)
  {
    v19 = v23;
    goto LABEL_127;
  }

  v98 = -1;
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    ClientID = HTTPClientGetClientID();
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ControlStart(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] Event HTTPClient connected to %##a with CID 0x%08X\n", v11, v99, ClientID);
  }

  SNPrintF(&block, 64, "AirPlayReceiverSession.%{ptr}.eventQueue", v11);
  v25 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v26 = dispatch_queue_create(&block, v25);
  if (!v26)
  {
    APSLogErrorAt();
    v19 = 0xFFFFFFFFLL;
    goto LABEL_84;
  }

  v27 = v26;
  HTTPClientSetDispatchQueue();
  dispatch_release(v27);
  APSLogUtilsGetHTTPClientCoreLogCategory();
  HTTPClientSetLogging();
  APSLogUtilsGetAsyncCnxLogCategory();
  HTTPClientSetConnectionLogging();
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  CFRetain(v11);
  *&v95 = v11;
  *(&v95 + 1) = _HandleEventConnectionInvalidated;
  HTTPClientSetDelegate();
  HTTPClientSetFlags();
  v28 = *(v11 + 488);
  if (v28)
  {
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v29)
    {
      if (v29(v28))
      {
        v91 = 0;
        v89 = 0u;
        v90 = 0u;
        v30 = *(v11 + 488);
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v31)
        {
          v32 = v31(v30, "Events-Salt", 11, "Events-Read-Encryption-Key", 26, 32, v102);
          if (v32)
          {
            v19 = v32;
          }

          else
          {
            v33 = *(v11 + 488);
            v34 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v34)
            {
              v35 = v34(v33, "Events-Salt", 11, "Events-Write-Encryption-Key", 27, 32, v101);
              if (v35)
              {
                v19 = v35;
              }

              else
              {
                v36 = NetTransportChaCha20Poly1305Configure();
                if (!v36)
                {
                  for (i = 0; i != 32; ++i)
                  {
                    v102[i] = 0;
                  }

                  for (j = 0; j != 32; ++j)
                  {
                    v101[j] = 0;
                  }

                  HTTPClientSetTransportDelegate();
                  goto LABEL_79;
                }

                v19 = v36;
              }
            }

            else
            {
              v19 = 4294954514;
            }
          }
        }

        else
        {
          v19 = 4294954514;
        }

LABEL_127:
        APSLogErrorAt();
        goto LABEL_84;
      }
    }
  }

LABEL_79:
  if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ControlStart(AirPlayReceiverSessionRef)", 33554482, "[%{ptr}] Event connection established. Local: %##a. Remote: %##a\n", v11, &v92, v99);
  }

  v19 = 0;
LABEL_84:
  if ((v98 & 0x80000000) == 0)
  {
    if (close(v98) && *__error())
    {
      __error();
    }

    v98 = -1;
  }

  if (v19)
  {
    if (gLogCategory_AirPlayReceiverCore <= 60 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus _ControlStart(AirPlayReceiverSessionRef)", 33554492, "[%{ptr}] Event start failed: %#m\n", v11, v19);
    }

    goto LABEL_123;
  }

LABEL_93:
  if (*(v11 + 683))
  {
    goto LABEL_94;
  }

  v46 = *(v11 + 576);
  if (v46)
  {
    v47 = *(v46 + 72);
    if (!v47)
    {
      v19 = 4294954514;
      goto LABEL_123;
    }

    v48 = v47(*(v46 + 40));
    if (v48)
    {
      v19 = v48;
      goto LABEL_123;
    }
  }

  if (*(v11 + 616))
  {
    v49 = _ScreenStart(v11);
    if (v49)
    {
      v19 = v49;
      goto LABEL_123;
    }
  }

  v50 = AirPlayReceiverSessionPlatformControl(v11, @"startSession");
  if (v50)
  {
    v19 = v50;
    goto LABEL_132;
  }

  v51 = *(v11 + 568);
  if (v51 && !*(v11 + 753))
  {
    Count = CFDictionaryGetCount(v51);
    v53 = _cfDictionaryCopyKeysAndValues(*(v11 + 568), 0, &theArray);
    if (!v53)
    {
      if (Count >= 1)
      {
        v54 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v54);
          v56 = APReceiverAudioSessionPlatformControl(ValueAtIndex, @"RASP::StartSession");
          if (v56)
          {
            break;
          }

          if (Count == ++v54)
          {
            goto LABEL_94;
          }
        }

        v19 = v56;
        goto LABEL_123;
      }

      goto LABEL_94;
    }

    v19 = v53;
LABEL_123:
    APSLogErrorAt();
    goto LABEL_132;
  }

LABEL_94:
  *(v11 + 458) = 1;
  v39 = *(v11 + 88);
  if (v39)
  {
    v39(v11, *(v11 + 56));
  }

  if (!*(v11 + 683))
  {
    *(v11 + 528) = *(v11 + 352);
    v40 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v11 + 16));
    *(v11 + 184) = v40;
    if (!v40)
    {
      APSLogErrorAt();
      v19 = 4294960596;
      goto LABEL_132;
    }

    v41 = v40;
    dispatch_set_context(v40, v11);
    dispatch_source_set_event_handler_f(v41, _PerformPeriodTasks);
    v42 = dispatch_time(0, 250000000);
    dispatch_source_set_timer(v41, v42, 0xEE6B280uLL, 0xEE6B280uLL);
    dispatch_resume(v41);
  }

  if (APSIsAPMSpeaker())
  {
    v44 = APReceiverSystemInfoCopyProperty(*(*(v11 + 24) + 160), v43, @"TightSyncUUID", 0, 0);
    if (v44)
    {
      v45 = v44;
      if (!*(v11 + 683) && !*(v11 + 680) && !*(v11 + 496) && !APSMultiPrimariesEnabled())
      {
        if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverCore, "OSStatus AirPlayReceiverSessionStart(AirPlayReceiverSessionRef, AirPlayReceiverSessionStartInfo *)", 33554482, "[%{ptr}] Start single-select session. Posting StopTightSyncBuddy notification.\n", v11);
        }

        notify_post("kAirPlayWHANotification_InterruptedByPreWHASender");
      }

      CFRelease(v45);
    }
  }

  v19 = 0;
LABEL_132:
  if (theArray)
  {
    CFRelease(theArray);
  }

  *(v11 + 268) = v19;
  mach_absolute_time();
  v57 = UpTicksToMilliseconds();
  if (gLogCategory_AirPlayReceiverCore <= 50)
  {
    v58 = v57;
    if (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize())
    {
      v69 = *(v11 + 272);
      v70 = *(v11 + 288);
      v59 = SourceVersionToCString();
      v60 = 78;
      if (*(v11 + 683))
      {
        v61 = 89;
      }

      else
      {
        v61 = 78;
      }

      if (*(v11 + 681))
      {
        v62 = 89;
      }

      else
      {
        v62 = 78;
      }

      if (*(v11 + 681))
      {
        if (APSIsMemberOfHTGroup())
        {
          v60 = 89;
        }

        else
        {
          v60 = 78;
        }
      }

      if (v73 <= 15)
      {
        if (v73 > 3)
        {
          if (v73 == 4)
          {
            v63 = "AWDL";
            goto LABEL_171;
          }

          if (v73 == 8)
          {
            v63 = "USB";
            goto LABEL_171;
          }
        }

        else
        {
          if (v73 == 1)
          {
            v63 = "Enet";
            goto LABEL_171;
          }

          if (v73 == 2)
          {
            v63 = "WiFi";
            goto LABEL_171;
          }
        }
      }

      else if (v73 <= 63)
      {
        if (v73 == 16)
        {
          v63 = "Direct";
          goto LABEL_171;
        }

        if (v73 == 32)
        {
          v63 = "BTLE";
          goto LABEL_171;
        }
      }

      else
      {
        switch(v73)
        {
          case 64:
            v63 = "WFD";
            goto LABEL_171;
          case 128:
            v63 = "NAN";
            goto LABEL_171;
          case 256:
            v63 = "IPsecBT";
LABEL_171:
            v64 = "Scr=";
            v65 = "";
            if (*(v11 + 440))
            {
              v65 = " ms ";
            }

            else
            {
              v64 = "";
            }

            LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _LogStarted(AirPlayReceiverSessionRef, AirPlayReceiverSessionStartInfo *, OSStatus)", 33554482, "[%{ptr}] AirPlay session started: From=%@ D=0x%012llx A=%##a V=%s RO=%c PC=%c HT=%c T=%s L=%u samples Bonjour=%u ms Conn=%u ms Auth=%u ms Ann=%u ms Setup=%u ms %s%?u%sRec=%u ms: %#m\n", v11, v70, v69, v11 + 224, v59, v61, v62, v60, v63, *(v11 + 584), v10, v78, v77, v76, v75, v64, *(v11 + 440), v74, v65, v58, v19);
            v6 = 4294895359;
            goto LABEL_175;
        }
      }

      v63 = "?";
      if (v73 == 512)
      {
        v63 = "IPSecWiFi";
      }

      goto LABEL_171;
    }
  }

LABEL_175:
  v87 = v19;
  if (v19 <= 452)
  {
    if (v19 == -6721)
    {
      goto LABEL_192;
    }

    if (v19)
    {
      goto LABEL_206;
    }

    *(v71 + 588) = 0;
    *(v71 + 576) = mach_absolute_time();
    airplayReqProcessor_reportPerfMetricsIfNeeded(a1);
    v87 = CFArrayEnsureCreatedAndAppend();
    if (!v87)
    {
      if (*(v71 + 408))
      {
        CFArrayEnsureCreatedAndAppend();
      }

      APReceiverSystemInfoCopyInfoDict(*(*v71 + 160), cf, *MEMORY[0x277CBECE8], &v79);
      if (v79)
      {
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessRecord(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Sending system info update after session starts.\n", a1);
        }

        APReceiverRequestProcessorSendSystemInfoUpdate(a1, v79);
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v67 = Mutable;
        CFObjectGetPropertyInt64Sync();
        CFDictionarySetInt64();
        v6 = 0;
        *(v71 + 46) = 1;
        *v72 = v67;
        goto LABEL_192;
      }

      goto LABEL_206;
    }

LABEL_205:
    APSLogErrorAt();
    v6 = 0;
    goto LABEL_192;
  }

  if (v19 != 453 && v19 != 200453)
  {
LABEL_206:
    APSLogErrorAt();
    v6 = 4294895362;
  }

LABEL_192:
  if (v81)
  {
    free(v81);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  return v6;
}

uint64_t airplayReqProcessor_requestProcessSetupPlist(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v65 = -71934;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Session = 0;
  v62 = 0;
  v63 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v6 = &unk_27E37E000;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Setup started\n", a1);
  }

  if (!*(DerivedStorage + 408))
  {
    APSLogErrorAt();
    v10 = 0;
    v40 = 0;
    Session = -6711;
LABEL_127:
    v65 = -71930;
    goto LABEL_139;
  }

  v60 = a3;
  mach_absolute_time();
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APSLogErrorAt();
    v10 = 0;
    v40 = 0;
    goto LABEL_127;
  }

  v8 = TypedValue;
  CFDataGetBytePtr(TypedValue);
  CFDataGetLength(v8);
  CFDictionaryGetTypeID();
  v9 = CFCreateWithPlistBytes();
  *(DerivedStorage + 120) = CFDictionaryGetHardwareAddress();
  strncpy((DerivedStorage + 332), (*(DerivedStorage + 16) + 140), 0x11uLL);
  CFDictionaryGetHardwareAddress();
  CFDictionaryGetCString();
  airplayReqProcessor_updateUIClientName(a1, (DerivedStorage + 134));
  CFDictionaryGetData();
  if (!Session)
  {
    if (v62 != 16)
    {
      APSLogErrorAt();
      v40 = 0;
      v10 = 0;
      Session = -6743;
      v41 = -71930;
      goto LABEL_89;
    }

    *(DerivedStorage + 264) = bswap64(v70);
  }

  LOBYTE(v66) = 0;
  CFDictionaryGetCString();
  if (!*(DerivedStorage + 32))
  {
    Int64 = CFDictionaryGetInt64();
    v12 = CFDictionaryGetInt64() | Int64;
    v13 = v12 != 0;
    v14 = CFDictionaryGetInt64();
    v15 = v14 != 0;
    v59 = CFDictionaryGetInt64() != 0;
    v58 = CFDictionaryGetInt64() == 0;
    v16 = CFDictionaryGetInt64() != 0;
    CFStringGetTypeID();
    v17 = CFDictionaryGetTypedValue();
    if (v12 && v14)
    {
      APSLogErrorAt();
      v6 = &unk_27E37E000;
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] isPC and isRemoteControlOnly can't both be true at the same time.\n", a1);
      }
    }

    else
    {
      if (!*(*DerivedStorage + 256) || v14)
      {
        if (airplayReqProcessor_isAllowedToConnectBasedOnACL(a1))
        {
          if (v14 || v12)
          {
            if (v14)
            {
              v19 = 1;
LABEL_45:
              Session = airplayReqProcessor_requestCreateSession(a1, 1, v15, v59, v13, v16, v17);
              if (!Session)
              {
                __strlcpy_chk();
                *(DerivedStorage + 440) = v15;
                *(DerivedStorage + 40) = v19;
                v30 = CMBaseObjectGetDerivedStorage();
                v6 = &unk_27E37E000;
                if (v9 && *(v30 + 40) != 1 && IsAppleTV())
                {
                  Value = CFDictionaryGetValue(v9, @"model");
                  v32 = MEMORY[0x23EF18C00](Value);
                  if ((v32 - 1) < 3 || v32 == 100)
                  {
                    v33 = 1;
                    v34 = "yes";
                  }

                  else
                  {
                    v33 = 0;
                    v34 = "no";
                  }

                  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "Boolean airplayReqProcessor_senderSupportsMultiHop(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554482, "[%{ptr}] senderSupportsMultiHop: %s\n", a1, v34);
                  }
                }

                else
                {
                  v33 = 0;
                }

                *(DerivedStorage + 441) = v33;
                Session = airplayReqProcessor_registerReqProcWithSessionManager(a1, v19);
                if (Session)
                {
                  APSLogErrorAt();
                  v40 = 0;
                  v65 = -71934;
                  v10 = 1;
                  goto LABEL_137;
                }

                v10 = 1;
LABEL_86:
                v39 = AirPlayReceiverSessionSetSecurityInfo(*(DerivedStorage + 32), v9, *(DerivedStorage + 400), (DerivedStorage + 384), *(DerivedStorage + 420), 0, 0);
                Session = v39;
                if (v39 != -6762)
                {
                  if (v39 == -6754)
                  {
                    v40 = 0;
                    v41 = -71943;
LABEL_89:
                    v65 = v41;
                    goto LABEL_137;
                  }

                  if (!v39)
                  {
                    LODWORD(cf) = 0;
                    if (*(CMBaseObjectGetDerivedStorage() + 40) == 2 && APSIsMemberOfHTGroup() && (CFArrayGetTypeID(), (v42 = CFDictionaryGetTypedValue()) != 0) && (Count = CFArrayGetCount(v42), Count >= 1))
                    {
                      v44 = Count;
                      v45 = 0;
                      while (1)
                      {
                        CFDictionaryGetTypeID();
                        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
                        if (cf)
                        {
                          APSLogErrorAt();
                          goto LABEL_102;
                        }

                        v47 = CFDictionaryGetInt64();
                        if ((!CFDictionaryContainsKey(TypedValueAtIndex, @"isMedia") || CFDictionaryGetInt64()) && (v47 == 103 || v47 == 96))
                        {
                          break;
                        }

                        if (v44 == ++v45)
                        {
                          goto LABEL_102;
                        }
                      }

                      v48 = CFDictionaryGetValue(TypedValueAtIndex, @"clientID");
                      v40 = v48;
                      if (v48)
                      {
                        CFRetain(v48);
                        v6 = &unk_27E37E000;
                        if (v40 == @"com.apple.TVAirPlay")
                        {
                          v40 = @"com.apple.TVAirPlay";
                          goto LABEL_114;
                        }

                        if (CFEqual(v40, @"com.apple.TVAirPlay"))
                        {
                          goto LABEL_114;
                        }
                      }

                      else
                      {
                        v6 = &unk_27E37E000;
                      }

                      v49 = v6[162];
                      if (v49 <= 50 && (v49 != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Hijacking active connection and becoming main session, as HT session got media audio setup for clientID %@.\n", a1, v40);
                      }

                      Session = APReceiverRequestProcessorHijackAndBecomeMainSession(a1);
                      if (Session)
                      {
LABEL_158:
                        APSLogErrorAt();
                        v65 = -71934;
                        goto LABEL_137;
                      }
                    }

                    else
                    {
LABEL_102:
                      v40 = 0;
                      v6 = &unk_27E37E000;
                    }

LABEL_114:
                    Session = AirPlayReceiverSessionSetup(*(DerivedStorage + 32), v9, &v63);
                    if (Session)
                    {
                      APSLogErrorAt();
                      v41 = -71930;
                      goto LABEL_89;
                    }

                    Session = airplayReqProcessor_preparePlistResponse(v63, v60);
                    if (!Session)
                    {
                      if (!*(DerivedStorage + 45))
                      {
                        *(DerivedStorage + 44) = 257;
                        airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 1);
                      }

                      v65 = 0;
                      v50 = v6[162];
                      if (v50 <= 50 && (v50 != -1 || _LogCategory_Initialize()))
                      {
                        mach_absolute_time();
                        v51 = UpTicksToMilliseconds();
                        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Setup Completed in %lld ms\n", a1, v51);
                      }

                      goto LABEL_137;
                    }

                    goto LABEL_158;
                  }

                  APSLogErrorAt();
                }

                v40 = 0;
                v65 = -71934;
                goto LABEL_137;
              }

              APSLogErrorAt();
              v40 = 0;
              v10 = 0;
              v52 = -71934;
              goto LABEL_165;
            }

            v19 = 2;
            goto LABEL_35;
          }

          if (!airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v65))
          {
LABEL_162:
            APSLogErrorAt();
            v40 = 0;
            v10 = 0;
            goto LABEL_166;
          }

          v18 = *(DerivedStorage + 24);
          if (v18 != 4 && v18 != 128 && v18 != 64 || APReceiverSystemInfoAllowsP2PConnectionFromMACAddress(*(*DerivedStorage + 160), DerivedStorage + 128))
          {
            v65 = airplayReqProcessor_hijackCurrentSessionIfNeeded(a1);
            if (!v65)
            {
              v19 = 0;
LABEL_35:
              v24 = *(DerivedStorage + 456);
              if (v24)
              {
                CFRelease(v24);
                *(DerivedStorage + 456) = 0;
              }

              CFStringGetTypeID();
              v25 = CFDictionaryGetTypedValue();
              *(DerivedStorage + 456) = v25;
              if (v25)
              {
                CFRetain(v25);
                if (*(DerivedStorage + 456))
                {
                  goto LABEL_44;
                }
              }

              v26 = CFDictionaryGetInt64();
              v27 = CFDictionaryGetInt64();
              v28 = CMBaseObjectGetDerivedStorage();
              if (v26)
              {
                v29 = CFStringCreateF(0, "%.6a");
              }

              else
              {
                v29 = CFStringCreateF(0, "%##a", v28 + 276);
              }

              *(DerivedStorage + 456) = v29;
              if (v29)
              {
                airplayReqProcessor_handleNewSessionFromHTUnawareSender(a1, v27);
LABEL_44:
                airplayReqProcessor_copyParentGroupInfoFromSetupRequest(a1, v9, (DerivedStorage + 448));
                *(DerivedStorage + 47) = v58;
                goto LABEL_45;
              }

              APSLogErrorAt();
              v40 = 0;
              v10 = 0;
              Session = -71934;
LABEL_166:
              v6 = &unk_27E37E000;
              goto LABEL_137;
            }

            goto LABEL_162;
          }

          APSLogErrorAt();
          v40 = 0;
          v10 = 0;
          Session = -71951;
          v52 = -71933;
        }

        else
        {
          APSLogErrorAt();
          v40 = 0;
          v10 = 0;
          v52 = -71930;
        }

LABEL_165:
        v65 = v52;
        goto LABEL_166;
      }

      APSLogErrorAt();
      v6 = &unk_27E37E000;
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "[%{ptr}] RC-only server doesn't allow non-RC sessions\n", a1);
      }
    }

    v40 = 0;
    v10 = 0;
    Session = -71951;
    v65 = -71933;
    goto LABEL_137;
  }

  if (*(DerivedStorage + 440))
  {
    v10 = 0;
    goto LABEL_86;
  }

  cf = 0;
  v20 = CFDictionaryGetInt64();
  v21 = CFDictionaryGetInt64();
  v22 = v21 == 0;
  airplayReqProcessor_copyParentGroupInfoFromSetupRequest(a1, v9, &cf);
  if (v20)
  {
    v23 = cf;
    if (!FigCFEqual())
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Updating ParentGroupInfo: %@ -> %@", a1, *(DerivedStorage + 448), v23);
      }

      v35 = *(DerivedStorage + 448);
      *(DerivedStorage + 448) = v23;
      if (v23)
      {
        CFRetain(v23);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      APReceiverSessionManagerUpdateParentGroupInfo(*(DerivedStorage + 432));
    }
  }

  v36 = *(DerivedStorage + 47);
  if (v36 == v22)
  {
    goto LABEL_83;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay > 50)
  {
    goto LABEL_75;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay != -1)
  {
    goto LABEL_68;
  }

  if (_LogCategory_Initialize())
  {
    v36 = *(DerivedStorage + 47);
LABEL_68:
    v37 = "yes";
    if (v36)
    {
      v38 = "yes";
    }

    else
    {
      v38 = "no";
    }

    if (v21)
    {
      v37 = "no";
    }

    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Updating IsMediaSession: %s -> %s", a1, v38, v37);
  }

LABEL_75:
  *(DerivedStorage + 47) = v22;
  if (*(DerivedStorage + 40) != 2 || v21)
  {
    goto LABEL_82;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Hijacking active connection and becoming main session, as persistent session became media session.\n", a1);
  }

  Session = APReceiverRequestProcessorHijackAndBecomeMainSession(a1);
  if (Session)
  {
    APSLogErrorAt();
    v65 = -71934;
  }

  else
  {
LABEL_82:
    Session = APReceiverSessionManagerUpdateAndNotifyReceiverSessionState(*(DerivedStorage + 432));
    if (!Session)
    {
LABEL_83:
      if (cf)
      {
        CFRelease(cf);
      }

      v10 = 0;
      v6 = &unk_27E37E000;
      goto LABEL_86;
    }

    APSLogErrorAt();
  }

  v40 = 0;
  v10 = 0;
  v6 = &unk_27E37E000;
LABEL_137:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_139:
  if (v63)
  {
    CFRelease(v63);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  v53 = Session;
  if (Session)
  {
    v54 = v6[162];
    if (v54 > 90)
    {
      goto LABEL_148;
    }

    if (v54 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_148:
        if (v10)
        {
          LOBYTE(cf) = 0;
          AirPlayReceiverSessionTearDown(*(DerivedStorage + 32), 0, Session, &cf);
          if (!cf)
          {
            v55 = v6[162];
            if (v55 <= 90 && (v55 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Failed to tear down session [%{ptr}]\n", a1, *(DerivedStorage + 32));
            }
          }

          v56 = *(DerivedStorage + 32);
          if (v56)
          {
            CFRelease(v56);
            *(DerivedStorage + 32) = 0;
          }
        }

        return v65;
      }

      v53 = Session;
    }

    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupPlist(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Setup session failed: %#m\n", a1, v53);
    goto LABEL_148;
  }

  return v65;
}

uint64_t airplayReqProcessor_requestProcessSetupSDP(const void *a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v63[0] = *MEMORY[0x277D85DE8];
  if (!*(CMBaseObjectGetDerivedStorage() + 44))
  {
    return 4294895365;
  }

  v6 = CFDictionaryGetValue(a2, @"SDPSessionType");
  v7 = 4294895366;
  if (v6 && CFStringCompare(v6, @"audio", 0) == kCFCompareEqualTo)
  {
    v61 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Session = 0;
    v58 = 0;
    cf = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    Int64 = 0;
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupSDPAudio(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Setup audio\n", a1);
    }

    if (!airplayReqProcessor_isAllowedToConnectBasedOnACL(a1))
    {
      APSLogErrorAt();
      v9 = 0;
      v10 = 0;
      v11 = -71930;
      goto LABEL_14;
    }

    if (airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v61))
    {
      if (!*(DerivedStorage + 44) || *(DerivedStorage + 45))
      {
        v9 = 0;
        v10 = 0;
        v11 = -71931;
LABEL_14:
        v61 = v11;
        goto LABEL_15;
      }

      theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!theDict)
      {
        APSLogErrorAt();
        v9 = 0;
        v10 = 0;
        v61 = -71934;
        goto LABEL_15;
      }

      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v14 = Mutable;
        CFDictionarySetValue(theDict, @"streams", Mutable);
        v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v15)
        {
          APSLogErrorAt();
          v10 = 0;
          v9 = 0;
          v61 = -71934;
          goto LABEL_29;
        }

        CFArrayAppendValue(v14, v15);
        v10 = CFDictionaryCopyCString();
        v58 = v10;
        strlen(v10);
        Session = HTTPParseParameter();
        if (Session)
        {
          APSLogErrorAt();
          goto LABEL_28;
        }

        if (strnicmpx())
        {
LABEL_28:
          v9 = 0;
          v61 = -71932;
          goto LABEL_29;
        }

        v47 = v14;
        v48 = DerivedStorage;
        v50 = v10;
        CFDictionarySetInt64();
        v16 = 0;
        value = *MEMORY[0x277CBED28];
        while (1)
        {
          v17 = v16;
          if (HTTPParseParameter())
          {
            v23 = *(DerivedStorage + 84);
            if (v23 > 8 || ((1 << v23) & 0x116) == 0)
            {
LABEL_106:
              v9 = 0;
              v61 = -71932;
              goto LABEL_29;
            }

            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
            v25 = *(DerivedStorage + 32);
            if (v25)
            {
              valuea = 0;
              goto LABEL_61;
            }

            CFStringGetTypeID();
            TypedValue = CFDictionaryGetTypedValue();
            if (*(DerivedStorage + 456) || (v27 = CMBaseObjectGetDerivedStorage(), v28 = CFStringCreateF(0, "%##a", v27 + 276), (*(DerivedStorage + 456) = v28) != 0))
            {
              airplayReqProcessor_handleNewSessionFromHTUnawareSender(a1, 0);
              Session = airplayReqProcessor_requestCreateSession(a1, v17, 0, 0, 0, 0, TypedValue);
              if (!Session)
              {
                *(DerivedStorage + 440) = 0;
                Session = airplayReqProcessor_registerReqProcWithSessionManager(a1, 0);
                if (Session)
                {
                  APSLogErrorAt();
                  v9 = 0;
                  v61 = -71934;
                  valuea = 1;
                  goto LABEL_127;
                }

                v25 = *(DerivedStorage + 32);
                valuea = 1;
LABEL_61:
                if (*(DerivedStorage + 80))
                {
                  v29 = AirPlayReceiverSessionSetSecurityInfo(v25, theDict, *(DerivedStorage + 400), (DerivedStorage + 384), *(DerivedStorage + 420), (DerivedStorage + 48), (DerivedStorage + 64));
                  v30 = 0;
                  Session = v29;
                  do
                  {
                    *(DerivedStorage + 48 + v30++) = 0;
                  }

                  while (v30 != 16);
                  for (i = 0; i != 16; ++i)
                  {
                    *(DerivedStorage + 64 + i) = 0;
                  }

                  if (!v29)
                  {
                    v25 = *(DerivedStorage + 32);
                    goto LABEL_68;
                  }

LABEL_125:
                  APSLogErrorAt();
                  v9 = 0;
LABEL_126:
                  v61 = -71934;
LABEL_127:
                  v10 = v50;
LABEL_91:
                  if (valuea && Session)
                  {
                    v51 = 0;
                    AirPlayReceiverSessionTearDown(*(DerivedStorage + 32), 0, Session, &v51);
                    if (!v51 && gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessSetupSDPAudio(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Failed to tear down session [%{ptr}] for SDP audio\n", a1, *(DerivedStorage + 32));
                    }

                    v43 = *(DerivedStorage + 32);
                    if (v43)
                    {
                      CFRelease(v43);
                      *(DerivedStorage + 32) = 0;
                    }
                  }

LABEL_29:
                  CFRelease(theDict);
                  CFRelease(v14);
                  if (v15)
                  {
                    CFRelease(v15);
                  }

LABEL_15:
                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (v9)
                  {
                    CFRelease(v9);
                  }

                  if (v10)
                  {
                    free(v10);
                  }

                  return v61;
                }

LABEL_68:
                Session = AirPlayReceiverSessionSetup(v25, theDict, &cf);
                if (Session)
                {
                  APSLogErrorAt();
                  v9 = 0;
                  if (Session == 61)
                  {
                    v44 = -71939;
                  }

                  else
                  {
                    v44 = -71934;
                  }

                  v61 = v44;
LABEL_122:
                  v10 = v50;
                  DerivedStorage = v48;
                  goto LABEL_91;
                }

                CFArrayGetTypeID();
                v32 = CFDictionaryGetTypedValue();
                if (Session)
                {
                  goto LABEL_76;
                }

                Count = CFArrayGetCount(v32);
                if (Count < 1)
                {
                  goto LABEL_76;
                }

                v34 = Count;
                v35 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v32, v35);
                  if (!ValueAtIndex)
                  {
                    goto LABEL_76;
                  }

                  v37 = CFGetTypeID(ValueAtIndex);
                  if (v37 != CFDictionaryGetTypeID())
                  {
                    goto LABEL_76;
                  }

                  Int64 = CFDictionaryGetInt64();
                  if (Int64 == 96)
                  {
                    break;
                  }

                  if (v34 == ++v35)
                  {
                    goto LABEL_76;
                  }
                }

                v38 = CFDictionaryGetInt64();
                if (v38 <= 0 || (v39 = v38, v40 = CFDictionaryGetInt64(), v40 <= 0))
                {
LABEL_76:
                  APSLogErrorAt();
                  v9 = 0;
                  v61 = -71934;
                  v10 = v50;
                  v14 = v47;
                  DerivedStorage = v48;
                  goto LABEL_91;
                }

                v41 = v40;
                v14 = v47;
                if (v17)
                {
                  v42 = CFDictionaryGetInt64();
                  if (v42 <= 0)
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
                  v42 = 0;
                }

                v57 = &v62;
                Session = snprintf_add(&v57, v63, "RTP/AVP/UDP;unicast;mode=record;server_port=%d;control_port=%d;timing_port=%d", v39, v41, 0);
                if (!Session)
                {
                  DerivedStorage = v48;
                  if (v42)
                  {
                    Session = snprintf_add(&v57, v63, ";event_port=%d", v42);
                    if (Session)
                    {
                      goto LABEL_125;
                    }
                  }

                  v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (!v9)
                  {
                    APSLogErrorAt();
                    goto LABEL_126;
                  }

                  Session = CFDictionarySetCString();
                  v10 = v50;
                  if (Session || (Session = CFDictionarySetCString()) != 0 || (v62 = 0, __strlcpy_chk(), (Session = CFDictionarySetCString()) != 0))
                  {
                    APSLogErrorAt();
                    v61 = -71934;
                  }

                  else
                  {
                    airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(a1, 1);
                    *(v48 + 45) = 1;
                    *a3 = v9;
                    v61 = 0;
                    v9 = 0;
                  }

                  goto LABEL_91;
                }

LABEL_121:
                APSLogErrorAt();
                v9 = 0;
                v61 = -71934;
                goto LABEL_122;
              }

              APSLogErrorAt();
              v9 = 0;
              v61 = -71934;
            }

            else
            {
              APSLogErrorAt();
              v9 = 0;
              Session = -71934;
            }

            v10 = v50;
            goto LABEL_29;
          }

          if (!strnicmpx())
          {
            if (SNScanF(v54, v53, "%d", &Int64) != 1)
            {
              goto LABEL_105;
            }

            goto LABEL_46;
          }

          if (!strnicmpx())
          {
            break;
          }

          if (strnicmpx())
          {
            if (strnicmpx())
            {
              v18 = strnicmpx();
              v16 = 1;
              if (v18)
              {
                v19 = strnicmpx();
                v16 = v17;
                if (v19)
                {
                  v20 = strnicmpx();
                  v16 = v17;
                  if (v20)
                  {
                    strnicmpx();
                    v16 = v17;
                  }
                }
              }
            }

            else
            {
              v21 = strnicmpx();
              v16 = v17;
              if (v21)
              {
                v22 = strnicmpx();
                v16 = v17;
                if (!v22)
                {
                  CFDictionarySetValue(theDict, @"usingScreen", value);
                  v16 = v17;
                }
              }
            }
          }

          else
          {
            if (SNScanF(v54, v53, "%d", &Int64) != 1)
            {
LABEL_105:
              APSLogErrorAt();
              goto LABEL_106;
            }

LABEL_46:
            CFDictionarySetInt64();
            v16 = v17;
          }
        }

        if (SNScanF(v54, v53, "%d", &Int64) != 1)
        {
          goto LABEL_105;
        }

        goto LABEL_46;
      }

      APSLogErrorAt();
      v61 = -71934;
      CFRelease(theDict);
    }

    else
    {
      APSLogErrorAt();
    }

    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  return v7;
}

void airplayReqProcessor_registerPlaybackStateWithServerIfNeeded(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 440))
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 351) != a2)
    {
      v5 = *DerivedStorage;
      v6 = a2 ? @"StartingPlaying" : @"StoppedPlaying";
      AirPlayReceiverServerUpdateStatus(v5, v6);
      *(v4 + 351) = a2;
      if (*(v4 + 350) != a2)
      {
        if (a2)
        {
          if (*(v4 + 24) != 4)
          {
            return;
          }

          v7 = @"StartedPlayingOverAWDL";
        }

        else
        {
          v7 = @"StoppedPlayingOverAWDL";
        }

        AirPlayReceiverServerUpdateStatus(*v4, v7);
        *(v4 + 350) = a2;
      }
    }
  }
}

void airplayReqProcessor_deregisterReqProcWithSessionManagerIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 352))
  {
    v3 = DerivedStorage;
    APReceiverSessionManagerRemoveSession(*(DerivedStorage + 432), a1);
    *(v3 + 352) = 0;
  }
}

uint64_t airplayReqProcessor_requestProcessGetInfo(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  Variable = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MutableCopy = 0;
  v14 = 0;
  cf = 0;
  CFDictionaryGetData();
  CFDictionaryGetTypeID();
  v6 = CFCreateWithPlistBytes();
  CFArrayGetTypeID();
  if (CFDictionaryGetTypedValue() && (MutableCopy = FigCFArrayCreateMutableCopy()) == 0)
  {
    APSLogErrorAt();
    v9 = 4294895350;
  }

  else
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v8 = TypedValue;
      Variable = CFStringCopyUTF8CString();
      if (Variable)
      {
        APSLogErrorAt();
      }

      else
      {
        CFStringGetLength(v8);
        while (1)
        {
          Variable = URLGetOrCopyNextVariable();
          if (Variable)
          {
            break;
          }

          Variable = CFArrayEnsureCreatedAndAppendCString();
          if (Variable)
          {
            v9 = 4294895362;
LABEL_9:
            APSLogErrorAt();
            goto LABEL_23;
          }
        }

        Int64Ranged = CFDictionaryGetInt64Ranged();
        *(DerivedStorage + 444) = Int64Ranged;
        v11 = *(DerivedStorage + 32);
        if (v11)
        {
          if (gLogCategory_AirPlayReceiverCore <= 30 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverCore, "void AirPlayReceiverSessionSetUserVersion(AirPlayReceiverSessionRef, uint32_t)", 33554462, "[%{ptr}] setting user version to %u\n", v11, Int64Ranged);
          }

          *(v11 + 608) = Int64Ranged;
        }

        if (*(DerivedStorage + 408))
        {
          CFArrayEnsureCreatedAndAppend();
        }

        else
        {
            ;
          }
        }

        Variable = APReceiverSystemInfoCopyInfoDict(*(*DerivedStorage + 160), MutableCopy, 0, &v14);
        if (Variable)
        {
          v9 = 4294895362;
          goto LABEL_9;
        }

        Variable = airplayReqProcessor_createSessionInfoDict(a1, v14, &cf);
        if (Variable)
        {
          v9 = 4294895362;
          goto LABEL_9;
        }

        Variable = airplayReqProcessor_preparePlistResponse(cf, a3);
        if (Variable)
        {
          v9 = 4294895362;
          goto LABEL_9;
        }
      }

      v9 = 0;
    }

    else
    {
      APSLogErrorAt();
      v9 = 4294895366;
    }
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v12 = Variable;
  if (Variable && gLogCategory_APReceiverRequestProcessorAirPlay <= 90)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v9;
      }

      v12 = Variable;
    }

    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessGetInfo(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Get info failed: %#m, %#m\n", a1, v9, v12);
  }

  return v9;
}

uint64_t airplayReqProcessor_requestProcessFPSetup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessFPSetup(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] F %d\n", a1, (*(DerivedStorage + 396) + 1));
  }

  ++*(DerivedStorage + 396);
  if (!airplayReqProcessor_isAllowedToConnectBasedOnACL(a1))
  {
    APSLogErrorAt();
    return 4294895366;
  }

  if (*(DerivedStorage + 8))
  {
    v5 = *(*(DerivedStorage + 16) + 192);
    if (v5 <= 15)
    {
      if (v5 > 3)
      {
        if (v5 == 4)
        {
          v6 = "AWDL";
          goto LABEL_31;
        }

        if (v5 == 8)
        {
          v6 = "USB";
          goto LABEL_31;
        }
      }

      else
      {
        if (v5 == 1)
        {
          v6 = "Enet";
          goto LABEL_31;
        }

        if (v5 == 2)
        {
          v6 = "WiFi";
          goto LABEL_31;
        }
      }
    }

    else if (v5 <= 63)
    {
      if (v5 == 16)
      {
        v6 = "Direct";
        goto LABEL_31;
      }

      if (v5 == 32)
      {
        v6 = "BTLE";
        goto LABEL_31;
      }
    }

    else
    {
      switch(v5)
      {
        case 64:
          v6 = "WFD";
          goto LABEL_31;
        case 128:
          v6 = "NAN";
          goto LABEL_31;
        case 256:
          v6 = "IPsecBT";
          goto LABEL_31;
      }
    }

    if (v5 == 512)
    {
      v6 = "IPSecWiFi";
    }

    else
    {
      v6 = "?";
    }

LABEL_31:
    if (*(DerivedStorage + 408))
    {
      v7 = " (Paired)";
    }

    else
    {
      v7 = "";
    }

    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"AirPlay starting...\n%s\n%s%s\n", DerivedStorage + 134, v6, v7);
    v9 = *(DerivedStorage + 8);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v10)
    {
      v10(v9, 30, v8);
    }

    CFRelease(v8);
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v12 = Int64Ranged;
  if (Int64Ranged == 8)
  {
    v13 = 2;
LABEL_41:
    *(DerivedStorage + 356) = v13;
    v14 = *(DerivedStorage + 384);
    if (*(DerivedStorage + 392))
    {
      if (v14)
      {
        IPaI1oem5iL();
        *(DerivedStorage + 384) = 0;
        *(DerivedStorage + 392) = 0;
      }
    }

    else if (v14)
    {
LABEL_47:
      CFDictionaryGetData();
      APSLogErrorAt();
      return 4294895366;
    }

    *(DerivedStorage + 360) = 0;
    *(DerivedStorage + 368) = 0;
    *(DerivedStorage + 376) = 0;
    if (APCUGetFairPlayHWInfoEx())
    {
      v16 = 4294895362;
    }

    else
    {
      cp2g1b9ro();
      if (!v15)
      {
        goto LABEL_47;
      }

      v16 = 4294895362;
    }

    APSLogErrorAt();
    return v16;
  }

  if (Int64Ranged == 32)
  {
    v13 = 3;
    goto LABEL_41;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 60 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessFPSetup(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "### [%{ptr}] Bad ET: %d\n", a1, v12);
  }

  return 4294895364;
}

uint64_t airplayReqProcessor_requestProcessFPSetup2(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v11 = 0;
  CMBaseObjectGetDerivedStorage();
  v10 = 0;
  memset(length, 0, sizeof(length));
  v8 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 30 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessFPSetup2(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "FP-Setup2\n");
    }

    CFDictionaryGetData();
    APSLogErrorAt();
    v7 = 4294895366;
    CFRelease(v5);
  }

  else
  {
    APSLogErrorAt();
    v7 = 0;
    v11 = -71950;
  }

  if (*&length[1])
  {
    jEHf8Xzsv8K(*&length[1]);
  }

  if (v7 && gLogCategory_APReceiverRequestProcessorAirPlay <= 60 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessFPSetup2(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "### [%{ptr}] FP-Setup2 Failed: %d, %#m\n", a1, v7, v11);
  }

  return v11;
}

void airplayReqProcessor_requestProcessEnsurePairPin(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_requestProcessEnsurePairPin(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554482, "[%{ptr}] Ensure pair Pin\n", a1);
  }

  v3 = *(*DerivedStorage + 160);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APReceiverSystemInfoEnsurePIN_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v3;
  dispatch_sync(v4, block);
}

uint64_t airplayReqProcessor_requestProcessPairSetupPINStart(const void *a1, uint64_t a2)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v13 = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairSetupPINStart(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554482, "[%{ptr}] Control pair-setup PIN start\n", a1);
  }

  if (airplayReqProcessor_isAllowedToConnectBasedOnACL(a1))
  {
    if (airplayReqProcessor_isAllowedToConnectBasedOnUserPermission(a1, &v15))
    {
      PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
      Int64Ranged = CFDictionaryGetInt64Ranged();
      if (Int64Ranged == 5)
      {
        v6 = 1;
      }

      else
      {
        v6 = PropertyInt64Sync;
      }

      v14 = airplayReqProcessor_copyPasscodeForPairingType(*(*DerivedStorage + 160), Int64Ranged, v6, &v13);
      if (v14)
      {
        APSLogErrorAt();
        v15 = -71934;
        v7 = v13;
        if (v13)
        {
LABEL_18:
          CFRelease(v7);
        }
      }

      else
      {
        v7 = v13;
        v8 = airplayReqProcessor_displayPINIfNeeded(a1, v13, v6);
        v14 = v8;
        v9 = v8 == -6721 || v8 == 200453;
        if (v9 || v8 == 453)
        {
          v15 = -71937;
        }

        if (v7)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      APSLogErrorAt();
    }

    v10 = v15;
    if (!v15)
    {
      return v10;
    }

    goto LABEL_20;
  }

  v10 = 4294895366;
  APSLogErrorAt();
  v15 = -71930;
LABEL_20:
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || (v11 = _LogCategory_Initialize(), v10 = v15, v11))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairSetupPINStart(APReceiverRequestProcessorRef, CFDictionaryRef)", 33554522, "### [%{ptr}] Control pair-setup PIN start failed: %d\n", a1, v10);
      return v15;
    }
  }

  return v10;
}

uint64_t airplayReqProcessor_requestProcessPairSetupUnauthenticatedLegacy(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theData = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairSetupUnauthenticatedLegacy(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Control pair-setup UA\n", a1);
  }

  v7 = 1;
  if (!CFObjectGetPropertyInt64Sync())
  {
    v7 = CFObjectGetPropertyInt64Sync() != 0;
  }

  v8 = 4294895356;
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  if (APSIsAPMSpeaker() || (v17 = *(DerivedStorage + 24), v16 = 4294960528, v17 != 4) && v17 != 64 && v17 != 128)
  {
    if (v7)
    {
      v16 = 4294960528;
      goto LABEL_27;
    }

    if (*(DerivedStorage + 400) || (v10 = APPairingServicesLegacyCreate(*MEMORY[0x277CBECE8], (DerivedStorage + 400)), !v10))
    {
      Value = CFDictionaryGetValue(a2, *MEMORY[0x277CEA360]);
      if (Value)
      {
        v12 = Value;
        v13 = *(DerivedStorage + 400);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v14)
        {
          v15 = v14(v13, 0, PropertyInt64Sync, v12, &theData, &v22);
          v16 = v15;
          if (v15 == -72192)
          {
LABEL_14:
            v8 = 4294895362;
            goto LABEL_27;
          }

          if (!v15)
          {
            if (theData)
            {
              BytePtr = CFDataGetBytePtr(theData);
              Length = CFDataGetLength(theData);
            }

            else
            {
              BytePtr = 0;
              Length = 0;
            }

            v16 = airplayReqProcessor_prepareBinaryDataResponse("application/x-apple-binary-plist", BytePtr, Length, 0, a3);
            if (!v16)
            {
              v8 = 0;
              goto LABEL_27;
            }

            goto LABEL_38;
          }
        }

        else
        {
          v16 = 4294954514;
        }
      }

      else
      {
        APSLogErrorAt();
        v16 = 0;
      }

      v8 = 4294895366;
      goto LABEL_27;
    }

    v16 = v10;
LABEL_38:
    APSLogErrorAt();
    goto LABEL_14;
  }

LABEL_27:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v16 && gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairSetupUnauthenticatedLegacy(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Control pair-setup PIN failed: %#m\n", a1, v16);
  }

  return v8;
}

uint64_t airplayReqProcessor_requestProcessPairSetupPINLegacy(const void *a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v26 = 0;
  cf = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairSetupPINLegacy(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Control pair-setup PIN Legacy\n", a1);
  }

  v7 = 4294895362;
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  v9 = airplayReqProcessor_copyPasscodeForPairingType(*(*DerivedStorage + 160), 1001, PropertyInt64Sync, &v27);
  if (v9)
  {
    v12 = v9;
    APSLogErrorAt();
    v10 = v27;
  }

  else
  {
    v10 = v27;
    v11 = airplayReqProcessor_displayPINIfNeeded(a1, v27, PropertyInt64Sync);
    v12 = v11;
    if (v11 == -6721)
    {
      goto LABEL_12;
    }

    if (v11 == 453 || v11 == 200453)
    {
      goto LABEL_12;
    }

    if (!*(DerivedStorage + 400))
    {
      v12 = APPairingServicesLegacyCreate(*MEMORY[0x277CBECE8], (DerivedStorage + 400));
      if (v12)
      {
        goto LABEL_35;
      }
    }

    Value = CFDictionaryGetValue(a2, *MEMORY[0x277CEA360]);
    if (Value)
    {
      v15 = Value;
      v16 = *(DerivedStorage + 400);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v17)
      {
        v12 = 4294954514;
        goto LABEL_35;
      }

      v18 = v17(v16, v10, PropertyInt64Sync, v15, &cf, &v26);
      v12 = v18;
      if (v18 == -72192)
      {
        goto LABEL_13;
      }

      if (v18 != -6760)
      {
        if (!v18)
        {
          if (v26)
          {
            v21 = *(DerivedStorage + 8);
            if (v21)
            {
              APReceiverUIControllerHidePIN(v21);
            }

            APReceiverSystemInfoSetProperty(*(*DerivedStorage + 160), v19, @"Passcode", v20, 0);
          }

          if (cf)
          {
            BytePtr = CFDataGetBytePtr(cf);
            Length = CFDataGetLength(cf);
          }

          else
          {
            BytePtr = 0;
            Length = 0;
          }

          v12 = airplayReqProcessor_prepareBinaryDataResponse("application/x-apple-binary-plist", BytePtr, Length, 0, a3);
          if (!v12)
          {
            v7 = 0;
            goto LABEL_13;
          }
        }

LABEL_35:
        APSLogErrorAt();
        goto LABEL_13;
      }

LABEL_12:
      v7 = 4294895359;
      goto LABEL_13;
    }

    APSLogErrorAt();
    v7 = 4294895366;
  }

LABEL_13:
  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12 && gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairSetupPINLegacy(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Control pair-setup passcode PIN failed: %#m\n", a1, v12);
  }

  return v7;
}

uint64_t airplayReqProcessor_requestProcessPairSetup(const void *a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v7 = airplayReqProcessor_copyPairingType(a2);
  airplayReqProcessor_updateLastControlMessage(a1, 1885434725, v7);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairSetupCoreUtils(APReceiverRequestProcessorRef, CFDictionaryRef, uint32_t, CFDictionaryRef *)", 33554482, "[%{ptr}] Control pair-setup CU, type %u\n", a1, Int64Ranged);
  }

  v10 = 4294895362;
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  v12 = (PropertyInt64Sync & 0xFFFFFFFD) == 1;
  if (!airplayReqProcessor_isAllowedToConnectBasedOnACL(a1))
  {
    APSLogErrorAt();
    v14 = 0;
    PairingParamsDict = 0;
    goto LABEL_80;
  }

  if (!APSIsAPMSpeaker())
  {
    v13 = *(DerivedStorage + 24);
    if ((v13 == 4 || v13 == 128 || v13 == 64) && !PropertyInt64Sync)
    {
      v12 = 1;
      PropertyInt64Sync = 1;
    }
  }

  if (!Int64Ranged && v12 || Int64Ranged == 4 && PropertyInt64Sync == 1)
  {
    PairingParamsDict = 0;
    v14 = 4294960528;
    v10 = 4294895356;
LABEL_21:
    v15 = cf;
    goto LABEL_22;
  }

  v16 = airplayReqProcessor_copyPasscodeForPairingType(*(*DerivedStorage + 160), Int64Ranged, PropertyInt64Sync, &cf);
  if (v16)
  {
    v14 = v16;
    APSLogErrorAt();
    PairingParamsDict = 0;
    goto LABEL_21;
  }

  if (Int64Ranged != 1)
  {
    v14 = 0;
    goto LABEL_41;
  }

  v15 = cf;
  v17 = airplayReqProcessor_displayPINIfNeeded(a1, cf, PropertyInt64Sync);
  v14 = v17;
  PairingParamsDict = 0;
  v10 = 4294895359;
  if (v17 != -6721 && v17 != 453 && v17 != 200453)
  {
LABEL_41:
    if (!*(DerivedStorage + 400))
    {
      v18 = APPairingServicesCoreUtilsCreate(*MEMORY[0x277CBECE8], *(*DerivedStorage + 257), (DerivedStorage + 400));
      if (v18)
      {
        v14 = v18;
        goto LABEL_85;
      }

      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairSetupCoreUtils(APReceiverRequestProcessorRef, CFDictionaryRef, uint32_t, CFDictionaryRef *)", 33554482, "[%{ptr}] Created pairing services [%{ptr}] for pair-setup.\n", a1, *(DerivedStorage + 400));
      }

      v14 = 0;
    }

    v19 = Int64Ranged == 5 || Int64Ranged == 3;
    if (Int64Ranged == 5)
    {
      v20 = @"com.apple.ScreenCapture";
    }

    else
    {
      v20 = 0;
    }

    PairingParamsDict = airplayReqProcessor_createPairingParamsDict(0, 0, v19, Int64Ranged == 4, v20);
    if (PairingParamsDict)
    {
      v21 = *(DerivedStorage + 400);
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v22)
      {
        v22(v21, @"pairingParams", PairingParamsDict);
      }

      Value = CFDictionaryGetValue(a2, *MEMORY[0x277CEA360]);
      v10 = 4294895362;
      if (Value)
      {
        v24 = Value;
        v25 = *(DerivedStorage + 400);
        v26 = cf;
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v27)
        {
          v28 = v27(v25, v26, PropertyInt64Sync, v24, &v37, &v38);
          v14 = v28;
          switch(v28)
          {
            case 0xFFFEE600:
              goto LABEL_21;
            case 0xFFFFE598:
              v10 = 4294895359;
              goto LABEL_21;
            case 0:
              if (v38)
              {
                v31 = *(DerivedStorage + 8);
                if (v31)
                {
                  APReceiverUIControllerHidePIN(v31);
                }

                APReceiverSystemInfoSetProperty(*(*DerivedStorage + 160), v29, @"Passcode", v30, 0);
                if (Int64Ranged == 4)
                {
                  EncryptionContext = airplayReqProcessor_createEncryptionContext(a1, &v36);
                  if (EncryptionContext)
                  {
                    v14 = EncryptionContext;
                    goto LABEL_88;
                  }

                  *(DerivedStorage + 420) = 1;
                  *(DerivedStorage + 408) = 1;
                  if ((PropertyInt64Sync & 0xFFFFFFFE) == 2)
                  {
                    *(DerivedStorage + 409) = 1;
                  }
                }
              }

              if (v37)
              {
                BytePtr = CFDataGetBytePtr(v37);
                Length = CFDataGetLength(v37);
              }

              else
              {
                BytePtr = 0;
                Length = 0;
              }

              v14 = airplayReqProcessor_prepareBinaryDataResponse("application/x-apple-binary-plist", BytePtr, Length, v36, a3);
              if (!v14)
              {
                v10 = 0;
                goto LABEL_21;
              }

LABEL_88:
              APSLogErrorAt();
              goto LABEL_21;
          }
        }

        else
        {
          v14 = 4294954514;
        }

        APSLogErrorAt();
        v10 = 4294895356;
        goto LABEL_21;
      }

      APSLogErrorAt();
LABEL_80:
      v10 = 4294895366;
      goto LABEL_21;
    }

LABEL_85:
    APSLogErrorAt();
    PairingParamsDict = 0;
    v10 = 4294895362;
    goto LABEL_21;
  }

LABEL_22:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (PairingParamsDict)
  {
    CFRelease(PairingParamsDict);
  }

  if (v14 && gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairSetupCoreUtils(APReceiverRequestProcessorRef, CFDictionaryRef, uint32_t, CFDictionaryRef *)", 33554522, "### [%{ptr}] Control pair-setup CU failed: %#m\n", a1, v14);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

uint64_t airplayReqProcessor_requestProcessPairVerify(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  EncryptionContext = 0;
  cf = 0;
  v44 = 0;
  v42 = 0;
  mach_absolute_time();
  ++*(DerivedStorage + 416);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v8 = EncryptionContext;
  v40 = airplayReqProcessor_copyPairingType(a2);
  if (EncryptionContext)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairVerify(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Control pair-verify legacy, count %d\n", a1, *(DerivedStorage + 416));
    }

    goto LABEL_22;
  }

  CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  CFObjectGetPropertyInt64Sync();
  if (PropertyInt64Sync == 2)
  {
    if (Int64Ranged != 8)
    {
LABEL_7:
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90)
      {
        if (gLogCategory_APReceiverRequestProcessorAirPlay == -1 && !_LogCategory_Initialize())
        {
          v10 = 0;
          PairingParamsDict = 0;
          v30 = v40;
          goto LABEL_67;
        }

        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairVerify(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "[%{ptr}] Control pair-verify CU, type %u, is not allowed based on access control\n", a1, Int64Ranged);
      }

      v10 = 0;
      goto LABEL_97;
    }
  }

  else
  {
    if (APSIsRestrictiveHKAccessControl())
    {
      v11 = (Int64Ranged & 0xFFFFFFFE) == 6;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairVerify(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Control pair-verify CU, type %u, count %d\n", a1, Int64Ranged, *(DerivedStorage + 416));
  }

LABEL_22:
  Int64 = CFDictionaryGetInt64();
  if (!EncryptionContext)
  {
    *(DerivedStorage + 420) = Int64 != 0;
  }

  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CEA360]);
  if (!Value)
  {
    v10 = 4294895362;
LABEL_96:
    APSLogErrorAt();
LABEL_97:
    PairingParamsDict = 0;
    goto LABEL_91;
  }

  v14 = Value;
  v41 = a1;
  if (!*(DerivedStorage + 400))
  {
    v15 = *MEMORY[0x277CBECE8];
    if (v8)
    {
      EncryptionContext = APPairingServicesLegacyCreate(v15, (DerivedStorage + 400));
      if (!EncryptionContext)
      {
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairVerify(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Created legacy pairing services [%{ptr}]\n", a1, *(DerivedStorage + 400));
        }

        goto LABEL_33;
      }

      v10 = 4294895362;
    }

    else
    {
      EncryptionContext = APPairingServicesCoreUtilsCreate(v15, *(*DerivedStorage + 257), (DerivedStorage + 400));
      if (!EncryptionContext)
      {
        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessPairVerify(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Created pairing services [%{ptr}] for pair-verify\n", a1, *(DerivedStorage + 400));
        }

        goto LABEL_41;
      }

      v10 = 4294895362;
    }

    goto LABEL_96;
  }

  if (v8)
  {
LABEL_33:
    PairingParamsDict = 0;
    v17 = 1;
    v18 = 1;
    goto LABEL_56;
  }

LABEL_41:
  v19 = Int64Ranged & 0xFFFFFFFE;
  v20 = @"com.apple.admin";
  if (Int64Ranged != 7)
  {
    v20 = 0;
  }

  v21 = Int64Ranged == 3;
  v22 = @"com.apple.ScreenCapture";
  if (Int64Ranged == 5)
  {
    v21 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (v19 == 6)
  {
    v23 = v20;
  }

  else
  {
    v23 = v22;
  }

  v24 = v19 != 6 && v21;
  PairingParamsDict = airplayReqProcessor_createPairingParamsDict(Int64Ranged == 8, v19 == 6, v24, 0, v23);
  if (!PairingParamsDict)
  {
    v10 = 4294895362;
    APSLogErrorAt();
    v30 = v40;
    a1 = v41;
    goto LABEL_67;
  }

  v25 = *(DerivedStorage + 400);
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v26)
  {
    v26(v25, @"pairingParams", PairingParamsDict);
  }

  v18 = v19 != 6;
  v17 = Int64Ranged != 8;
LABEL_56:
  v27 = *(DerivedStorage + 400);
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v28)
  {
    EncryptionContext = -12782;
    goto LABEL_65;
  }

  EncryptionContext = v28(v27, v14, &cf, &v42);
  if (EncryptionContext)
  {
LABEL_65:
    v10 = 4294895362;
    APSLogErrorAt();
LABEL_66:
    v30 = v40;
    a1 = v41;
    goto LABEL_67;
  }

  if (!v42)
  {
    goto LABEL_103;
  }

  v29 = CFObjectGetPropertyInt64Sync();
  if (!v8)
  {
    EncryptionContext = airplayReqProcessor_createEncryptionContext(v41, &v44);
    if (EncryptionContext)
    {
      APSLogErrorAt();
      v10 = 0;
      goto LABEL_66;
    }
  }

  *(DerivedStorage + 408) = 1;
  if (v17)
  {
    if (!v18)
    {
      *(DerivedStorage + 411) = 1;
    }
  }

  else
  {
    *(DerivedStorage + 412) = 1;
  }

  if (v29 == 1 || *(DerivedStorage + 412) || *(DerivedStorage + 411) || Int64Ranged == 5)
  {
    *(DerivedStorage + 409) = 1;
  }

  a1 = v41;
  if (EncryptionContext == -6745)
  {
    v10 = 4294895356;
LABEL_91:
    v30 = v40;
    goto LABEL_67;
  }

  v30 = v40;
  if (EncryptionContext == -6716)
  {
    v10 = 4294895363;
    goto LABEL_67;
  }

  if (EncryptionContext)
  {
    v10 = 4294895366;
    goto LABEL_66;
  }

LABEL_103:
  if (cf)
  {
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v30 = v40;
  a1 = v41;
  EncryptionContext = airplayReqProcessor_prepareBinaryDataResponse("application/octet-stream", BytePtr, Length, v44, a3);
  if (EncryptionContext)
  {
    v10 = 4294895362;
    APSLogErrorAt();
  }

  else
  {
    v10 = 0;
  }

LABEL_67:
  airplayReqProcessor_updateLastControlMessage(a1, 1885435493, v30);
  if (EncryptionContext)
  {
    v31 = *(DerivedStorage + 400);
    if (v31)
    {
      v32 = *(CMBaseObjectGetVTable() + 16);
      if (*(v32 + 24))
      {
        (*(v32 + 40))(v31);
      }
    }
  }

  mach_absolute_time();
  v33 = CMBaseObjectGetDerivedStorage();
  v34 = CFDictionaryGetInt64Ranged() - 3;
  if (v34 > 5)
  {
    v36 = 528;
    v35 = 536;
  }

  else
  {
    v35 = qword_23EAA1BC8[v34];
    v36 = qword_23EAA1BF8[v34];
  }

  *(v33 + v35) += UpTicksToMilliseconds();
  ++*(v33 + v36);
  if (v30)
  {
    CFRelease(v30);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (PairingParamsDict)
  {
    CFRelease(PairingParamsDict);
  }

  return v10;
}

uint64_t airplayReqProcessor_requestProcessFeedback(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  theDict = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 32);
  if (!v6)
  {
    return 0;
  }

  AirPlayReceiverSessionControl(v6, v7, @"updateFeedback", 0, a2, &theDict);
  if (!theDict)
  {
    return 0;
  }

  if (CFDictionaryGetCount(theDict) >= 1 && (v8 = airplayReqProcessor_preparePlistResponse(theDict, a3), v8))
  {
    v9 = 4294895362;
    v11 = v8;
    APSLogErrorAt();
    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 90 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessFeedback(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Feedback failed: %#m, %#m\n", a1, 4294895362, v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v9;
}

uint64_t airplayReqProcessor_requestProcessMetrics(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessMetrics(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Metrics\n", a1);
  }

  if (!*(DerivedStorage + 32))
  {
    Mutable = 0;
    v7 = 0;
    v12 = 4294895358;
    v14 = 4294960576;
    v15 = -6720;
    goto LABEL_21;
  }

  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v7 = TypedValue;
  if (TypedValue)
  {
    CFDataGetBytePtr(TypedValue);
    CFDataGetLength(v7);
    CFDictionaryGetTypeID();
    v7 = CFCreateWithPlistBytes();
    v10 = AirPlayReceiverSessionCopyProperty(*(DerivedStorage + 32), v8, @"metrics", v9, 0);
    if (v10)
    {
      Mutable = v10;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt();
        v14 = 4294960568;
        v15 = -6728;
        v12 = 4294895362;
        goto LABEL_21;
      }
    }

    v15 = airplayReqProcessor_preparePlistResponse(Mutable, a3);
    if (!v15)
    {
      v12 = 0;
      goto LABEL_12;
    }

    APSLogErrorAt();
    v12 = 4294895362;
  }

  else
  {
    v12 = 4294895358;
    APSLogErrorAt();
    Mutable = 0;
  }

  v14 = v15;
  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_21:
  if (gLogCategory_APReceiverRequestProcessorAirPlay > 90)
  {
    goto LABEL_12;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay != -1)
  {
    goto LABEL_23;
  }

  if (_LogCategory_Initialize())
  {
    v14 = v15;
LABEL_23:
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessMetrics(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Metrics failed: %#m, %#m\n", a1, v12, v14);
  }

LABEL_12:
  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

uint64_t airplayReqProcessor_requestProcessCommand(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  updated = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v49 = 0;
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v7 = TypedValue;
  if (!TypedValue)
  {
    v13 = 4294895366;
    APSLogErrorAt();
    Value = 0;
    goto LABEL_34;
  }

  CFDataGetBytePtr(TypedValue);
  CFDataGetLength(v7);
  CFDictionaryGetTypeID();
  v7 = CFCreateWithPlistBytes();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (!v8)
  {
    CFDictionaryGetInt64();
    Value = CFDictionaryGetValue(v7, @"params");
    if (!Value)
    {
      v13 = 4294895366;
      goto LABEL_90;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      Value = 0;
      v13 = 0;
      v32 = -71946;
      goto LABEL_92;
    }

    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"reqProcRef", a1);
    CFDictionarySetValue(Mutable, @"params", Value);
    v12 = *(DerivedStorage + 32);
    if (v12)
    {
      updated = AirPlayReceiverSessionControl(v12, v11, @"didReceiveData", 0, Mutable, 0);
      if (!updated)
      {
        Value = 0;
        v13 = 0;
        goto LABEL_40;
      }

      APSLogErrorAt();
      Value = 0;
      goto LABEL_99;
    }

    APSLogErrorAt();
    Value = 0;
LABEL_96:
    updated = -6709;
    v13 = 4294895365;
    goto LABEL_40;
  }

  Value = v8;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessCommand(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Received command: '%@'\n", a1, Value);
  }

  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(DerivedStorage + 432), 0, 0, &v49);
  if (CFEqual(Value, @"APValeria"))
  {
    CFDictionaryGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    if (v14)
    {
      v15 = v14;
      v16 = CMBaseObjectGetDerivedStorage();
      v51 = 0;
      v17 = *(v16 + 24);
      v18 = v17 == 64;
      if (v17 == 128)
      {
        v18 = 1;
      }

      v19 = v17 == 4 || v18;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v15);
      ASPrintF(&v51, "%##a", v16 + 276);
      CFDictionarySetCString();
      v21 = MEMORY[0x277CBED10];
      if (v19)
      {
        v21 = MEMORY[0x277CBED28];
      }

      CFDictionarySetValue(MutableCopy, @"IsP2P", *v21);
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus airplayReqProcessor_processValeriaCommand(APReceiverRequestProcessorRef, CFDictionaryRef)", 50, "[%{ptr}] Sending '%@', address: %s, p2p: %d\n", a1, @"activateEndpointForAddress", v51, v19);
      }

      v25 = APSXPCClientSendCommandCreatingReply();
      if (v25)
      {
        APSLogErrorAt();
        if (!MutableCopy)
        {
          goto LABEL_39;
        }
      }

      else if (!MutableCopy)
      {
LABEL_39:
        free(v51);
        v13 = 0;
        Mutable = 0;
        updated = v25;
        goto LABEL_40;
      }

      CFRelease(MutableCopy);
      goto LABEL_39;
    }

    v13 = 4294895366;
    goto LABEL_90;
  }

  if (CFEqual(Value, @"duckAudio") || CFEqual(Value, @"unduckAudio"))
  {
    if (CFDictionaryContainsKey(v7, @"params"))
    {
      CFDictionaryGetTypeID();
      Empty = CFDictionaryGetTypedValue();
      if (!Empty)
      {
        v13 = 4294895366;
LABEL_90:
        APSLogErrorAt();
        Mutable = 0;
        v32 = -6705;
LABEL_92:
        updated = v32;
        goto LABEL_40;
      }
    }

    else
    {
      Empty = CFDictionaryGetEmpty();
    }

    v24 = *(DerivedStorage + 32);
    if (v24)
    {
      if (*(DerivedStorage + 40) != 2)
      {
        APSLogErrorAt();
        Mutable = 0;
        updated = -6773;
        v13 = 4294895363;
        goto LABEL_40;
      }

      updated = AirPlayReceiverSessionControl(v24, v22, Value, 0, Empty, 0);
      if (!updated)
      {
LABEL_33:
        v13 = 0;
LABEL_34:
        Mutable = 0;
        goto LABEL_40;
      }

      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (CFEqual(Value, @"mute"))
  {
    if (v49)
    {
      CFDictionaryGetTypeID();
      CFDictionaryGetTypedValue();
      updated = CFObjectSetProperty();
      if (!updated)
      {
        goto LABEL_33;
      }

      v13 = 4294895366;
    }

    else
    {
      v13 = 4294895366;
    }

LABEL_133:
    APSLogErrorAt();
    goto LABEL_34;
  }

  if (CFEqual(Value, @"unmute"))
  {
    if (v49)
    {
      CFDictionaryGetTypeID();
      CFDictionaryGetTypedValue();
      updated = CFObjectSetProperty();
      if (!updated)
      {
        goto LABEL_33;
      }

      v13 = 4294895366;
    }

    else
    {
      v13 = 4294895366;
    }

    goto LABEL_133;
  }

  if (!CFEqual(Value, @"changeRelativeVolume") && !CFEqual(Value, @"performPWDKeyExchange"))
  {
    if (CFEqual(Value, @"updateMRNowPlayingInfo"))
    {
      CFDictionaryGetTypeID();
      v30 = CFDictionaryGetTypedValue();
      if (!v30)
      {
        v13 = 4294895366;
        goto LABEL_90;
      }

      updated = airplayReqProcessor_processUpdateMRNowPlayingInfo(a1, v30);
      if (!updated)
      {
        goto LABEL_33;
      }

      v13 = 4294895366;
      goto LABEL_133;
    }

    if (CFEqual(Value, @"updateMRSupportedCommands"))
    {
      CFDictionaryGetTypeID();
      v31 = CFDictionaryGetTypedValue();
      if (!v31)
      {
        v13 = 4294895366;
        goto LABEL_90;
      }

      updated = airplayReqProcessor_processUpdateMRExtendedMetadata(a1, v31, @"mrSupportedCommandsFromSender", @"mrSupportedCommandsFromSender");
      if (!updated)
      {
        goto LABEL_33;
      }

      v13 = 4294895366;
      goto LABEL_133;
    }

    if (CFEqual(Value, @"setMRInfo"))
    {
      if (*(DerivedStorage + 32))
      {
        v33 = DerivedStorage;
        CFDictionaryGetTypeID();
        v34 = CFDictionaryGetTypedValue();
        if (!v34)
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        v35 = v34;
        if (!CFDictionaryContainsKey(v34, @"mrInfo"))
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        v36 = CFDictionaryGetValue(v35, @"mrInfo");
        AirPlayReceiverSessionSetProperty(*(v33 + 32), v37, @"MRInfo", 0, v36);
        goto LABEL_33;
      }
    }

    else
    {
      v47 = DerivedStorage;
      if (CFEqual(Value, @"setSenderDisplayLatencyMs"))
      {
        CFDictionaryGetTypeID();
        if (!CFDictionaryGetTypedValue())
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (updated)
        {
          v13 = 4294895366;
          goto LABEL_133;
        }

        if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessCommand(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Session [%{ptr}] senderDisplayLatencyMs=%u\n", a1, *(DerivedStorage + 32), Int64Ranged);
        }

        v13 = 0;
        Mutable = 0;
        *(*(v47 + 32) + 720) = Int64Ranged;
        goto LABEL_40;
      }

      if (CFEqual(Value, @"updateMRPlaybackState"))
      {
        CFDictionaryGetTypeID();
        v39 = CFDictionaryGetTypedValue();
        if (!v39)
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        updated = airplayReqProcessor_processUpdateMRExtendedMetadata(a1, v39, @"mrPlaybackState", @"mrPlaybackState");
        if (!updated)
        {
          goto LABEL_33;
        }

        v13 = 4294895366;
        goto LABEL_133;
      }

      if (CFEqual(Value, @"updateMRNowPlayingClient"))
      {
        CFDictionaryGetTypeID();
        v40 = CFDictionaryGetTypedValue();
        if (!v40)
        {
          v13 = 4294895366;
          goto LABEL_90;
        }

        updated = airplayReqProcessor_processUpdateMRExtendedMetadata(a1, v40, @"mrNowPlayingClient", @"mrNowPlayingClient");
        if (!updated)
        {
          goto LABEL_33;
        }

        v13 = 4294895366;
        goto LABEL_133;
      }

      if (!CFEqual(Value, @"fadeAudio"))
      {
        v13 = 4294895366;
        updated = -6705;
        goto LABEL_133;
      }

      CFDictionaryGetTypeID();
      v41 = CFDictionaryGetTypedValue();
      if (!v41)
      {
        v13 = 4294895366;
        goto LABEL_90;
      }

      v43 = v41;
      v44 = *(DerivedStorage + 32);
      if (v44)
      {
        updated = AirPlayReceiverSessionControl(v44, v42, Value, 0, v43, 0);
        if (!updated)
        {
          goto LABEL_33;
        }

        goto LABEL_98;
      }
    }

LABEL_95:
    APSLogErrorAt();
    Mutable = 0;
    goto LABEL_96;
  }

  if (!v49)
  {
    v13 = 4294895366;
    goto LABEL_133;
  }

  CFDictionaryGetTypeID();
  v28 = CFDictionaryGetTypedValue();
  if (!v28)
  {
    v13 = 4294895366;
    goto LABEL_90;
  }

  updated = AirPlayReceiverSessionControl(v49, v29, Value, 0, v28, &cf);
  if (updated)
  {
LABEL_98:
    APSLogErrorAt();
    Mutable = 0;
LABEL_99:
    v13 = 4294895362;
    goto LABEL_40;
  }

  Mutable = 0;
  v13 = 0;
  if (a3 && cf)
  {
    updated = airplayReqProcessor_preparePlistResponse(cf, a3);
    if (!updated)
    {
      goto LABEL_33;
    }

    goto LABEL_98;
  }

LABEL_40:
  airplayReqProcessor_updateLastControlMessage(a1, 1668246893, Value);
  v26 = updated;
  if (!updated)
  {
    goto LABEL_51;
  }

  if (!Value)
  {
    if (gLogCategory_APReceiverRequestProcessorAirPlay > 90)
    {
      goto LABEL_51;
    }

    if (gLogCategory_APReceiverRequestProcessorAirPlay == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_51;
      }

      v26 = updated;
    }

    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessCommand(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Command processing failed with error %#m\n", a1, v26, v45, v46);
    goto LABEL_51;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay > 90)
  {
    goto LABEL_51;
  }

  if (gLogCategory_APReceiverRequestProcessorAirPlay != -1)
  {
    goto LABEL_44;
  }

  if (_LogCategory_Initialize())
  {
    v26 = updated;
LABEL_44:
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "APSTransportMessageProcessingStatus airplayReqProcessor_requestProcessCommand(APReceiverRequestProcessorRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "### [%{ptr}] Command from Client Identifier '%@' failed: %#m, %#m\n", a1, Value, v13, v26);
  }

LABEL_51:
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v13;
}