uint64_t FigSampleBufferAudioRendererSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void hoseSBAR_setAudioProcessingTapIDInternal(void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 104);
  v3 = a1[1];
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v5 = v4(v2, *MEMORY[0x277CD6400], v3);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 4294954514;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 90 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_setAudioProcessingTapIDInternal(void *)", 33554522, "[%{ptr}] Error %#m setting audio processing tap on underlying FigSBAR", *a1, v5);
  }

  APSLogErrorAt(v5);
LABEL_10:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v6 = a1[1];
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t hoseSBAR_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *cStr = 0u;
  v22 = 0u;
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus hoseSBAR_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt(0);
    return 4294894964;
  }

  if (!a2 || !a4)
  {
    APSLogErrorAt(0);
    return 4294894965;
  }

  if (!CFEqual(a2, @"VolumeLinear"))
  {
    if (CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_AudioBufferSize"))
    {
      v12 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 56));
      *a4 = v12;
      if (!v12)
      {
        v11 = 4294894966;
        goto LABEL_14;
      }

      return 0;
    }

    if (CFEqual(a2, @"APSEndpointStreamAudioHoseProtocolProperty_Name") || CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_Name"))
    {
      StringValue = *(DerivedStorage + 16);
      if (StringValue)
      {
LABEL_21:
        StringValue = CFRetain(StringValue);
      }

LABEL_22:
      v11 = 0;
      *a4 = StringValue;
      return v11;
    }

    if (CFEqual(a2, @"Model"))
    {
      cStr[0] = 0;
      GetDeviceModelString();
LABEL_28:
      v15 = CFStringCreateWithCString(a3, cStr, 0x8000100u);
      v11 = v15;
      if (!v15)
      {
        *a4 = 0;
        return v11;
      }

      *a4 = CFRetain(v15);
      CFRelease(v11);
      return 0;
    }

    if (CFEqual(a2, @"OSBuildVersion"))
    {
      cStr[0] = 0;
      GetSystemBuildVersionString();
      goto LABEL_28;
    }

    if (CFEqual(a2, @"BufferingPriority"))
    {
      FigSimpleMutexLock();
      *a4 = CFNumberCreateInt64();
      FigSimpleMutexUnlock();
      if (!*a4)
      {
        v11 = 4294894966;
        v12 = 0;
        goto LABEL_14;
      }

      return 0;
    }

    if (CFEqual(a2, @"Rate"))
    {
      FigSimpleMutexLock();
      *a4 = CFNumberCreateInt64();
      FigSimpleMutexUnlock();
      if (!*a4)
      {
        v11 = 4294894966;
        v12 = 0;
        goto LABEL_14;
      }

      return 0;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1878]))
    {
      StringValue = *(DerivedStorage + 24);
      if (!StringValue)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (CFEqual(a2, @"ClusterUUID"))
    {
      StringValue = FigCFDictionaryGetStringValue();
      if (!StringValue)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (CFEqual(a2, @"IsClusterLeader"))
    {
      StringValue = FigCFDictionaryGetBooleanValue();
      if (!StringValue)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (CFEqual(a2, @"ClusterType"))
    {
      NumberValue = FigCFDictionaryGetNumberValue();
      if (NumberValue)
      {
        v17 = CFRetain(NumberValue);
        *a4 = v17;
        if (v17)
        {
          return 0;
        }
      }

      else
      {
        *a4 = 0;
      }

      StringValue = FigCFNumberCreateSInt32();
      goto LABEL_22;
    }

    if (CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_HasAudioDataBeenSent"))
    {
      FigSimpleMutexLock();
      v18 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 320))
      {
        v18 = MEMORY[0x277CBED10];
      }

      v19 = *v18;
      if (!*v18)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (CFEqual(a2, @"ClusterSize"))
      {
        StringValue = FigCFDictionaryGetNumberValue();
        if (!StringValue)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (!CFEqual(a2, *MEMORY[0x277CD6400]))
      {
        if (CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_SupportsReceiverChoosesAnchor"))
        {
          v20 = MEMORY[0x277CBED28];
          if (!*(DerivedStorage + 282))
          {
            v20 = MEMORY[0x277CBED10];
          }
        }

        else
        {
          if (!CFEqual(a2, @"APSAudioProtocolDriverHoseProperty_IsDolbyCertified"))
          {
            if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 30 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "OSStatus hoseSBAR_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s %@ unsupported", a1, "OSStatus hoseSBAR_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
            }

            return 4294954512;
          }

          v20 = MEMORY[0x277CBED28];
        }

        StringValue = *v20;
        goto LABEL_21;
      }

      FigSimpleMutexLock();
      v19 = *(DerivedStorage + 312);
      if (!v19)
      {
LABEL_58:
        *a4 = v19;
        FigSimpleMutexUnlock();
        return 0;
      }
    }

    v19 = CFRetain(v19);
    goto LABEL_58;
  }

  v9 = *(DerivedStorage + 104);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v11 = 4294954514;
LABEL_13:
    v12 = v11;
LABEL_14:
    APSLogErrorAt(v12);
    return v11;
  }

  v11 = v10(v9, *MEMORY[0x277CD6440], a3, a4);
  if (v11)
  {
    goto LABEL_13;
  }

  return v11;
}

__CFString *hoseSBAR_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSEndpointStreamAudioHoseSBAR %p '%@'>", a1, *(DerivedStorage + 16));
  return Mutable;
}

void hoseSBAR_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseSBAR <= 50 && (gLogCategory_APSEndpointStreamAudioHoseSBAR != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSEndpointStreamAudioHoseSBAR, "void hoseSBAR_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] hoseSBAR_Finalize\n", a1);
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 8) = 0;
  }

  hoseSBAR_invalidateInternal(a1);
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(DerivedStorage + 256);
  if (v9 != -1)
  {
    notify_cancel(v9);
    *(DerivedStorage + 256) = -1;
  }

  v10 = *(DerivedStorage + 260);
  if (v10 != -1)
  {
    notify_cancel(v10);
    *(DerivedStorage + 260) = -1;
  }

  v11 = *(DerivedStorage + 112);
  if (v11)
  {
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    v13 = MEMORY[0x277CC0898];
    if (v12)
    {
      v50 = *MEMORY[0x277CC0898];
      v51 = *(MEMORY[0x277CC0898] + 16);
      v12(v11, &v50, 0.0);
    }

    *(DerivedStorage + 600) = *v13;
    *(DerivedStorage + 616) = *(v13 + 16);
    hoseSBAR_updateSynchronizerState(a1, 0);
    v14 = *(DerivedStorage + 104);
    if (v14)
    {
      v15 = *(DerivedStorage + 112);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v16)
      {
        v16(v15, v14);
      }
    }

    CFRelease(*(DerivedStorage + 112));
  }

  v17 = CMBaseObjectGetDerivedStorage();
  if (*(v17 + 120))
  {
    v18 = v17;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v19 = *(v18 + 648);
    if (v19)
    {
      CMTimebaseRemoveTimerDispatchSource(*(v18 + 120), v19);
      v20 = *(v18 + 648);
      if (v20)
      {
        dispatch_source_cancel(*(v18 + 648));
        dispatch_release(v20);
        *(v18 + 648) = 0;
      }
    }

    v21 = *(v18 + 680);
    if (v21)
    {
      CMTimebaseRemoveTimerDispatchSource(*(v18 + 120), v21);
      v22 = *(v18 + 680);
      if (v22)
      {
        dispatch_source_cancel(*(v18 + 680));
        dispatch_release(v22);
        *(v18 + 680) = 0;
      }
    }
  }

  v23 = *(DerivedStorage + 120);
  if (v23)
  {
    CFRelease(v23);
  }

  if (*(DerivedStorage + 104))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CFRelease(*(DerivedStorage + 104));
  }

  v24 = *(DerivedStorage + 368);
  if (v24)
  {
    dispatch_release(v24);
    *(DerivedStorage + 368) = 0;
  }

  v25 = *(DerivedStorage + 152);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(DerivedStorage + 464);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(DerivedStorage + 656);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(DerivedStorage + 664);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(DerivedStorage + 688);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(DerivedStorage + 976);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(DerivedStorage + 984);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(DerivedStorage + 72);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(DerivedStorage + 696);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(DerivedStorage + 64);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(DerivedStorage + 80);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = *(DerivedStorage + 704);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *(DerivedStorage + 936);
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = *(DerivedStorage + 928);
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = *(DerivedStorage + 944);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(DerivedStorage + 952);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(DerivedStorage + 960);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(DerivedStorage + 296);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(DerivedStorage + 312);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(DerivedStorage + 1000);
  if (v44)
  {
    CFRelease(v44);
    *(DerivedStorage + 1000) = 0;
  }

  v45 = *(DerivedStorage + 992);
  if (v45)
  {
    CFRelease(v45);
    *(DerivedStorage + 992) = 0;
  }

  FigSimpleMutexDestroy();
  v46 = *(DerivedStorage + 264);
  if (v46)
  {
    CFRelease(v46);
    *(DerivedStorage + 264) = 0;
  }

  v47 = *(DerivedStorage + 272);
  if (v47)
  {
    CFRelease(v47);
    *(DerivedStorage + 272) = 0;
  }

  v48 = *(DerivedStorage + 352);
  if (v48)
  {
    dispatch_release(v48);
    *(DerivedStorage + 352) = 0;
  }

  v49 = *(DerivedStorage + 360);
  if (v49)
  {
    dispatch_release(v49);
    *(DerivedStorage + 360) = 0;
  }
}

void hoseSBAR_invalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    CMBaseObjectGetDerivedStorage();
    v4 = *(v3 + 14);
    v5 = MEMORY[0x277CC0898];
    if (v4)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v6)
      {
        v25 = *v5;
        v26 = *(v5 + 2);
        v6(v4, &v25, 0.0);
      }

      hoseSBAR_updateSynchronizerState(a1, 0);
    }

    v7 = *(v3 + 13);
    if (v7)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v8)
      {
        v8(v7);
      }

      v3[672] = 0;
    }

    v9 = *(v3 + 82);
    if (v9)
    {
      CMBufferQueueReset(v9);
    }

    v10 = *(v3 + 83);
    if (v10)
    {
      CMBufferQueueReset(v10);
    }

    v3[457] = 0;
    v11 = *(v3 + 58);
    if (v11)
    {
      CFRelease(v11);
      *(v3 + 58) = 0;
    }

    *(v3 + 68) = 0x100000000;
    *(v3 + 33) = kAPSNetworkTimeInvalid;
    v12 = *v5;
    *(v3 + 552) = *v5;
    v13 = *(v5 + 2);
    *(v3 + 71) = v13;
    *(v3 + 36) = v12;
    *(v3 + 74) = v13;
    *(v3 + 600) = v12;
    *(v3 + 77) = v13;
    *(v3 + 80) = v13;
    *(v3 + 39) = v12;
    *(v3 + 50) = v13;
    *(v3 + 24) = v12;
    *(v3 + 53) = v13;
    *(v3 + 408) = v12;
    *(v3 + 56) = v13;
    *(v3 + 27) = v12;
    *(v3 + 185) = 0;
    *(v3 + 93) = 0;
    v14 = *(v3 + 85);
    if (v14)
    {
      dispatch_source_set_timer(v14, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    v15 = *(v3 + 117);
    if (v15)
    {
      CFDictionaryRemoveAllValues(v15);
    }

    v16 = *(v3 + 116);
    if (v16)
    {
      CFDictionaryRemoveAllValues(v16);
    }

    v17 = *(v3 + 118);
    if (v17)
    {
      CFDictionaryRemoveAllValues(v17);
    }

    v18 = *(v3 + 119);
    if (v18)
    {
      CFDictionaryRemoveAllValues(v18);
    }

    v19 = *(v3 + 120);
    if (v19)
    {
      CFDictionaryRemoveAllValues(v19);
    }

    v20 = CMBaseObjectGetDerivedStorage();
    *(v20 + 728) = 0;
    *(v20 + 736) = 0;
    v3[456] = 0;
    hoseSBAR_clearPendingFlushes(a1);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v21 = *(v3 + 9);
    if (v21)
    {
      CFRelease(v21);
      *(v3 + 9) = 0;
    }

    v22 = *(v3 + 14);
    if (v22)
    {
      v23 = *(v3 + 13);
      if (v23)
      {
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v24)
        {
          v24(v22, v23);
        }
      }
    }

    *v3 = 1;
  }
}

uint64_t hoseSBAR_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = *(DerivedStorage + 352);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __hoseSBAR_Invalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_926;
    block[4] = a1;
    dispatch_sync(v3, block);
  }

  return 0;
}

uint64_t hoseSBAR_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&hoseSBAR_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSEndpointStreamAudioHoseSBARInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t APSAsyncLoggerGetTypeID()
{
  if (APSAsyncLoggerGetTypeID_once != -1)
  {
    dispatch_once(&APSAsyncLoggerGetTypeID_once, &__block_literal_global_927);
  }

  return APSAsyncLoggerGetTypeID_typeID;
}

uint64_t __APSAsyncLoggerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APSAsyncLoggerGetTypeID_typeID = result;
  return result;
}

uint64_t APSAsyncLoggerLogMessage(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a2)
  {
    v8 = a2;
    if (a3)
    {
      v4 = a3[1];
      v9 = *a3;
      v10 = v4;
    }

    else
    {
      v10 = 0u;
      v9 = 0u;
    }

    v11 = mach_absolute_time();
    APSAtomicMessageQueueSendMessage(*(a1 + 16), &v8);
    v5 = *(*(a1 + 24) + 16);
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v5 + 10, &v6, 2u, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
      caulk::concurrent::messenger::enqueue((v5 + 6), v5);
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSAsyncLoggerGetSharedLogger()
{
  if (APSAsyncLoggerGetSharedLogger_onceToken != -1)
  {
    dispatch_once_f(&APSAsyncLoggerGetSharedLogger_onceToken, &APSAsyncLoggerGetSharedLogger_gLogger, asyncLogger_initOnce);
  }

  return APSAsyncLoggerGetSharedLogger_gLogger;
}

void asyncLogger_initOnce(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = *MEMORY[0x277CBECE8];
  if (APSAsyncLoggerGetTypeID_once != -1)
  {
    dispatch_once(&APSAsyncLoggerGetTypeID_once, &__block_literal_global_927);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v5 = APSAtomicMessageQueueCreate(v2, 48, (Instance + 16));
    if (v5 || (SNPrintF(v9, 64, "APSAsyncLogger.%{ptr}.logging", v4), (v5 = FigDispatchQueueCreateWithPriority()) == 0))
    {
      APSLogErrorAt(v5);
      CFRelease(v4);
    }

    else
    {
      v6 = v5;
      v7 = CFRetain(*(v4 + 16));
      v8 = APSRealTimeSignalCreate(v6, v7, asyncLogger_debugSignalHandler, MEMORY[0x277CBE550], (v4 + 24));
      if (v8)
      {
        APSLogErrorAt(v8);
        CFRelease(v4);
      }

      else
      {
        *a1 = v4;
      }

      dispatch_release(v6);
    }
  }

  else
  {
LABEL_10:

    APSLogErrorAt(0);
  }
}

uint64_t asyncLogger_debugSignalHandler(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  while (1)
  {
    result = APSAtomicMessageQueueReadMessage(a1, v5);
    if (!result)
    {
      break;
    }

    v3 = (mach_absolute_time() - *(&v6 + 1)) * 1000.0;
    v4 = UpTicksPerSecond();
    (*&v5[0])(v5 + 8, v3 / v4);
  }

  return result;
}

uint64_t APSAudioProtocolDriverReceiverAPATCreate(uint64_t a1, __int16 a2, const __CFData *a3, const __CFData *a4, unsigned int a5, CFTypeRef *a6)
{
  if (APSAudioProtocolDriverReceiverGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSAudioProtocolDriverReceiverGetClassID_sRegisterOnce, &APSAudioProtocolDriverReceiverGetClassID_sClassID, audioProtocolDriverReceiver_registerBaseClass);
  }

  Mutable = CMDerivedObjectCreate();
  if (Mutable)
  {
    v18 = Mutable;
LABEL_33:
    APSLogErrorAt(Mutable);
    return v18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = FigSimpleMutexCreate();
  *DerivedStorage = v12;
  if (!v12)
  {
    APSLogErrorAt(0);
    return 4294894836;
  }

  v13 = MEMORY[0x277CBECE8];
  if (a3)
  {
    Mutable = APSCryptorChaCha20Poly1305Create(*MEMORY[0x277CBECE8], a3, 1, (DerivedStorage + 72));
    if (Mutable)
    {
      v18 = Mutable;
      goto LABEL_33;
    }

    if (a4)
    {
      goto LABEL_8;
    }

LABEL_16:
    if (APSCryptorGetNull_sAPSCryptorNullOnce != -1)
    {
      dispatch_once_f(&APSCryptorGetNull_sAPSCryptorNullOnce, &APSCryptorGetNull_sAPSCryptorNull, nullCryptor_create);
    }

    *(DerivedStorage + 80) = CFRetain(APSCryptorGetNull_sAPSCryptorNull);
    v14 = *v13;
    goto LABEL_19;
  }

  if (APSCryptorGetNull_sAPSCryptorNullOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetNull_sAPSCryptorNullOnce, &APSCryptorGetNull_sAPSCryptorNull, nullCryptor_create);
  }

  *(DerivedStorage + 72) = CFRetain(APSCryptorGetNull_sAPSCryptorNull);
  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_8:
  v14 = *v13;
  Mutable = APSCryptorChaCha20Poly1305Create(*v13, a4, 1, (DerivedStorage + 80));
  if (Mutable)
  {
    v18 = Mutable;
    goto LABEL_33;
  }

  v15 = *(DerivedStorage + 80);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v17 = v16(v15);
  }

  else
  {
    v17 = 0;
  }

  *(DerivedStorage + 88) = v17;
  *(DerivedStorage + 96) = APSSettingsGetIntWithOverrideAndDefault(@"apatSRTCPEncrypt", 0, 1) != 0;
LABEL_19:
  Mutable = APSRTPSeqNumDictionaryCreateMutable(v14, MEMORY[0x277CBF150], (DerivedStorage + 8));
  if (Mutable)
  {
    v18 = Mutable;
    goto LABEL_33;
  }

  Mutable = APSRTCPCCFBGeneratorCreate((DerivedStorage + 104));
  if (Mutable)
  {
    v18 = Mutable;
    goto LABEL_33;
  }

  *(DerivedStorage + 16) = a2;
  *(DerivedStorage + 112) = MillisecondsToUpTicks();
  *(DerivedStorage + 144) = 0;
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 136) = 0;
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus APSAudioProtocolDriverReceiverAPATCreate(CFAllocatorRef, uint16_t, CFDataRef, CFDataRef, uint32_t, APSAudioProtocolDriverReceiverRef *)", 33554482, "[%{ptr}] Created APSAudioProtocolDriverReceiverAPAT\n", 0);
  }

  v18 = 0;
  *a6 = 0;
  return v18;
}

uint64_t protocolDriverReceiverAPAT_CopyAudioDataAvailable(uint64_t a1, __CFArray **a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v13 = 4294894835;
    APSLogErrorAt(0);
    return v13;
  }

  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_CopyAudioDataAvailable(APSAudioProtocolDriverReceiverRef, CFArrayRef *)", 33554462, "[%{ptr}] protocolDriverReceiverAPAT_CopyAudioDataAvailable\n", a1);
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    v8 = 0;
    v13 = 4294894836;
    goto LABEL_56;
  }

  v8 = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
  if (!v8)
  {
    APSLogErrorAt(0);
    v13 = 4294894836;
    goto LABEL_79;
  }

  FirstSeqNum = APSRTPSeqNumDictionaryGetFirstSeqNum(*(DerivedStorage + 8), &v37[1]);
  if (FirstSeqNum)
  {
    v13 = FirstSeqNum;
    if (FirstSeqNum != -6764)
    {
      goto LABEL_78;
    }

    goto LABEL_55;
  }

  for (i = v37[1]; ; i = v37[0] + 1)
  {
    v37[0] = i;
    v11 = *(DerivedStorage + 8);
    if (v11)
    {
      Value = CFDictionaryGetValue(*(v11 + 24), i);
      if (Value)
      {
        goto LABEL_17;
      }
    }

    CFArrayRemoveAllValues(v8);
    FirstSeqNum = APSRTPSeqNumDictionaryGetSeqNumAfterSeqNum(*(DerivedStorage + 8), v37[0], v37);
    if (FirstSeqNum == -6750)
    {
      break;
    }

    v13 = FirstSeqNum;
    if (FirstSeqNum)
    {
      goto LABEL_78;
    }

    v14 = *(DerivedStorage + 8);
    if (v14)
    {
      Value = CFDictionaryGetValue(*(v14 + 24), v37[0]);
    }

    else
    {
      Value = 0;
    }

LABEL_17:
    FirstSeqNum = APSRTPBBufGetPayloadType(Value, &v34);
    if (FirstSeqNum)
    {
      v13 = FirstSeqNum;
      goto LABEL_78;
    }

    if (v34 <= 0x71u)
    {
      if (v34 != 112)
      {
        if (v34 != 113)
        {
          goto LABEL_26;
        }

        CFArrayRemoveAllValues(v8);
LABEL_37:
        CFArrayAppendValue(v8, Value);
        continue;
      }

      CFArrayRemoveAllValues(v8);
LABEL_28:
      CFArrayAppendValue(v8, Value);
      Count = CFArrayGetCount(v8);
      v16 = v37[0] - Count + 1;
      v2 = v2 & 0xFFFFFFFF00000000 | v16 | (Count << 16);
      FirstSeqNum = APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRange(*(DerivedStorage + 8), v2);
      if (FirstSeqNum)
      {
        v13 = FirstSeqNum;
        goto LABEL_78;
      }

      FirstSeqNum = APSAPAPRTPBBufCreateWithAPAPRTPFragmentBBufs(v6, v8, &v36);
      if (FirstSeqNum)
      {
        v13 = FirstSeqNum;
        goto LABEL_78;
      }

      FirstSeqNum = APSAPAPRTPBBufCopyAPAPBBuf(v36, v6, &v35);
      if (FirstSeqNum)
      {
        v13 = FirstSeqNum;
        goto LABEL_78;
      }

      FirstSeqNum = APSAPAPBBufEncodeHeaderSeqNum(v35, v16 << 8);
      if (FirstSeqNum)
      {
        v13 = FirstSeqNum;
        goto LABEL_78;
      }

      CFArrayAppendValue(Mutable, v35);
      CFArrayRemoveAllValues(v8);
      if (v35)
      {
        CFRelease(v35);
        v35 = 0;
      }

      if (v36)
      {
        CFRelease(v36);
        v36 = 0;
      }

      continue;
    }

    if (v34 == 114)
    {
      if (!CFArrayGetCount(v8))
      {
        continue;
      }

      goto LABEL_37;
    }

    if (v34 != 115)
    {
LABEL_26:
      CFArrayRemoveAllValues(v8);
      continue;
    }

    if (CFArrayGetCount(v8))
    {
      goto LABEL_28;
    }
  }

  v17 = *(DerivedStorage + 104);
  if (!v17)
  {
    goto LABEL_55;
  }

  v18 = *(v17 + 24);
  if (!v18)
  {
    goto LABEL_55;
  }

  LODWORD(v24[0]) = 0;
  if (APSRTPSeqNumRangeSetGetFirstSeqNumRange(v18, v24))
  {
    goto LABEL_55;
  }

  v19 = v24[0];
  v20 = *(DerivedStorage + 8);
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 0x40000000;
  v24[2] = __protocolDriverReceiverAPAT_copyDeframedRTPBBufsFromRxBufferInternal_block_invoke;
  v24[3] = &unk_2784A2DA8;
  v25 = v19;
  v24[4] = &v30;
  v24[5] = &v26;
  if (v21)
  {
    APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(v21, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_blockApplier, v24);
  }

  if (!*(v27 + 24))
  {
LABEL_55:
    v13 = 0;
    goto LABEL_56;
  }

  if ((*(v31 + 12) - v37[1]) <= 0x8000u)
  {
    v22 = v37[1] | ((*(v31 + 12) - v37[1]) << 16);
  }

  else
  {
    v22 = -1;
  }

  FirstSeqNum = APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRange(*(DerivedStorage + 8), v22);
  v13 = FirstSeqNum;
  if (FirstSeqNum)
  {
LABEL_78:
    APSLogErrorAt(FirstSeqNum);
LABEL_79:
    CFRelease(Mutable);
    Mutable = 0;
  }

LABEL_56:
  if (v35)
  {
    CFRelease(v35);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  if (v13)
  {
    APSLogErrorAt(v13);
    FigSimpleMutexUnlock();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else if (Mutable)
  {
    FigSimpleMutexUnlock();
    v13 = 0;
    *a2 = Mutable;
  }

  else
  {
    v13 = 4294894835;
    APSLogErrorAt(0);
    FigSimpleMutexUnlock();
  }

  return v13;
}

uint64_t __protocolDriverReceiverAPAT_copyDeframedRTPBBufsFromRxBufferInternal_block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = a2 + HIWORD(a2);
  if (((v2 - *(a1 + 48)) & 0x8000) == 0)
  {
    return 4294960573;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t protocolDriverReceiverAPAT_SetAudioDataAvailableCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_SetAudioDataAvailableCallbacks(APSAudioProtocolDriverReceiverRef, const APSAudioProtocolDriverReceiverCallbacks *, CFTypeRef)", 33554482, "[%{ptr}] protocolDriverReceiverAPAT_SetAudioDataAvailableCallbacks\n", a1);
  }

  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 64);
  *(DerivedStorage + 56) = a2;
  *(DerivedStorage + 64) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t protocolDriverReceiverAPAT_Flush(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_Flush(APSAudioProtocolDriverReceiverRef, CMTimeRange, APSProtocolDriverReceiverFlushCompletionHandler, void *)", 33554482, "[%{ptr}] protocolDriverReceiverAPAT_Flush\n", a1);
  }

  return 0;
}

uint64_t protocolDriverReceiverAPAT_Tick(uint64_t a1, uint64_t a2, unint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_Tick(APSAudioProtocolDriverReceiverRef, CMTime, UInt64)", 33554462, "[%{ptr}] protocolDriverReceiverAPAT_Tick\n", a1);
  }

  FigSimpleMutexLock();
  v6 = APSRTCPCCFBGeneratorCopyRecords(*(DerivedStorage + 104), &v14);
  if (v6)
  {
    v12 = v6;
    APSLogErrorAt(v6);
    if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 90 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_Tick(APSAudioProtocolDriverReceiverRef, CMTime, UInt64)", 33554522, "[%{ptr}] Failed to copy CCFB records from Generator\n", a1);
    }
  }

  else
  {
    v7 = protocolDriverReceiverAPAT_sendCCFBIfNeededInternal(a1, a3);
    if (v7)
    {
      v12 = v7;
      APSLogErrorAt(v7);
    }

    else
    {
      v8 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      FigSimpleMutexCheckIsLockedOnThisThread();
      mach_absolute_time();
      if ((UpTicksToMilliseconds() - v8[17]) >= 0x3E9)
      {
        if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
        {
          v9 = v8[1];
          if (v9)
          {
            v9 = *(v9 + 16);
          }

          LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "void protocolDriverReceiverAPAT_updateStateLoggingInternal(APSAudioProtocolDriverReceiverRef)", 33554482, "[%{ptr}] RxBuffer: %@", a1, v9);
        }

        APSRTCPCCFBGeneratorCopyRecords(v8[13], &cf);
        if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50)
        {
          if (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize())
          {
            v10 = cf;
            if (cf)
            {
              v10 = *(cf + 2);
            }

            LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "void protocolDriverReceiverAPAT_updateStateLoggingInternal(APSAudioProtocolDriverReceiverRef)", 33554482, "[%{ptr}] CCFBGenerator Records: %@", a1, v10);
          }

          if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
          {
            v11 = v8[13];
            if (v11)
            {
              v11 = *(v11 + 24);
            }

            LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "void protocolDriverReceiverAPAT_updateStateLoggingInternal(APSAudioProtocolDriverReceiverRef)", 33554482, "[%{ptr}] CCFBGenerator SendWindow: %@", a1, v11);
          }
        }

        mach_absolute_time();
        v8[17] = UpTicksToMilliseconds();
        if (cf)
        {
          CFRelease(cf);
        }
      }

      v12 = 0;
    }
  }

  FigSimpleMutexUnlock();
  if (v14)
  {
    CFRelease(v14);
  }

  return v12;
}

uint64_t protocolDriverReceiverAPAT_sendCCFBIfNeededInternal(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  v47 = 0;
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_sendCCFBIfNeededInternal(APSAudioProtocolDriverReceiverRef, uint64_t)", 33554462, "[%{ptr}] protocolDriverReceiverAPAT_sendCCFBRecordsInternal\n", a1);
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  v5 = *(DerivedStorage + 40);
  if (!v5 || !*(v5 + 8) || !*(DerivedStorage + 128) && ((v6 = *(DerivedStorage + 120)) == 0 || *(DerivedStorage + 112) + v6 > a2))
  {
    v14 = 0;
LABEL_16:
    v15 = 0;
    goto LABEL_56;
  }

  v7 = APSRTCPCCFBGeneratorCopyRecords(*(DerivedStorage + 104), &v47);
  if (v7)
  {
    v14 = v7;
    APSLogErrorAt(v7);
    if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 90 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_sendCCFBIfNeededInternal(APSAudioProtocolDriverReceiverRef, uint64_t)", 33554522, "[%{ptr}] Failed to copy CCFB records from Generator\n", a1);
    }

    goto LABEL_16;
  }

  v45 = a2;
  v8 = CMBaseObjectGetDerivedStorage();
  v48 = 0;
  cf = 0;
  v9 = *(v8 + 104);
  v10 = MEMORY[0x277CBECE8];
  if (!v9)
  {
    APSLogErrorAt(0);
    goto LABEL_71;
  }

  if (!*(v9 + 34))
  {
LABEL_71:
    v14 = 0;
    v24 = -1;
    goto LABEL_33;
  }

  v11 = v8;
  v12 = *(v8 + 8);
  if (v12)
  {
    v13 = *(v12 + 16);
  }

  else
  {
    v13 = 0;
  }

  v16 = *(v9 + 32);
  MutableCopy = APSRTPSeqNumRangeSetCreateMutableCopy(*MEMORY[0x277CBECE8], v13, &v48);
  if (MutableCopy)
  {
    v14 = MutableCopy;
LABEL_86:
    APSLogErrorAt(MutableCopy);
    v24 = 0;
    goto LABEL_33;
  }

  MutableCopy = APSRTCPCCFBGeneratorCopyPendingSequenceNumbers(*(v11 + 104), &cf);
  if (MutableCopy)
  {
    v14 = MutableCopy;
    goto LABEL_86;
  }

  v14 = 4294960591;
  if (!v48 || !cf)
  {
    goto LABEL_85;
  }

  v18 = APSRTPSeqNumRangeSetApplyFunctionWithFilterRange(cf, 0, 0xFFFFFFFF, rtpSeqNumRangeSet_addRangeApplier, v48);
  if (v18)
  {
    v14 = v18;
LABEL_85:
    MutableCopy = v14;
    goto LABEL_86;
  }

  v19 = *(v11 + 16);
  if (v48)
  {
    v20 = *(v48 + 12);
    v21 = v20 >= v19;
    if (v20 < v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v11 + 16);
    }

    if (!v21)
    {
      v22 = *(v48 + 12);
    }
  }

  else
  {
    v22 = 0;
  }

  v14 = 0;
  v23 = v19 - v22;
  if (v23 <= 0x8000u)
  {
    v24 = (v16 + 1) | (v23 << 16);
  }

  else
  {
    v24 = -1;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v14)
  {
    APSLogErrorAt(v14);
    goto LABEL_16;
  }

  v25 = *(DerivedStorage + 20);
  v26 = *v10;
  v27 = mach_absolute_time();
  v28 = APSCompactNTPMakeWithUpTicks(v27, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
  v29 = v47;
  v30 = APSRTCPCCFBBBufArrayCreateWithRecordsAndTrailingUnReceivedRange(v26, v25 & 0xFFFF0000 | 0xBAC, v25, v28, v47, v24, 1436 - *(DerivedStorage + 88), &theArray);
  if (v30)
  {
    v14 = v30;
    APSLogErrorAt(v30);
    if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 90 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_sendCCFBIfNeededInternal(APSAudioProtocolDriverReceiverRef, uint64_t)", 33554522, "[%{ptr}] Failed to create BBuf Array with CCFB records\n", a1);
    }

    goto LABEL_16;
  }

  v15 = CFArrayCreateMutableCopy(v26, 0, theArray);
  if (v15)
  {
    v31 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    Count = CFArrayGetCount(v15);
    if (Count >= 1)
    {
      v33 = Count;
      v34 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v34);
        if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
        {
          dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
        }

        v36 = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator;
        v37 = *(v31 + 80);
        v38 = *(v31 + 96);
        v39 = *(v31 + 100);
        *(v31 + 100) = v39 + 1;
        v40 = APSSRTCPBBufCreateWithRTCPBBuf(v36, ValueAtIndex, v37, v38, v39, &cf);
        if (v40)
        {
          break;
        }

        CFArraySetValueAtIndex(v15, v34, cf);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v33 == ++v34)
        {
          goto LABEL_48;
        }
      }

      v14 = v40;
      APSLogErrorAt(v40);
      if (cf)
      {
        CFRetain(cf);
      }

      v41 = v14;
      goto LABEL_66;
    }

LABEL_48:
    v41 = (*(*(DerivedStorage + 40) + 8))(*(DerivedStorage + 48), a1, v15);
    if (v41)
    {
      v14 = v41;
LABEL_66:
      APSLogErrorAt(v41);
      goto LABEL_56;
    }

    *(DerivedStorage + 120) = 0;
    *(DerivedStorage + 128) = 0;
    if (v29 && CFDictionaryGetCount(v29[3]) || (v42 = *(DerivedStorage + 104)) != 0 && (v43 = *(v42 + 24)) != 0 && *(v43 + 24))
    {
      v14 = 0;
      *(DerivedStorage + 120) = v45;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v14 = 4294894836;
  }

LABEL_56:
  if (v47)
  {
    CFRelease(v47);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v14;
}

uint64_t protocolDriverReceiverAPAT_signalRTCPDataAvailable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 40);
  if (!v3 || !*v3)
  {
    APSLogErrorAt(0);
    v6 = 4294894835;
LABEL_8:
    FigSimpleMutexUnlock();
    return v6;
  }

  v4 = protocolDriverReceiverAPAT_processInputDataBBufsInternal(a1, &v8);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    goto LABEL_8;
  }

  FigSimpleMutexUnlock();
  if (!v8)
  {
    return 0;
  }

  IsAvailable = protocolDriverReceiverAPAT_notifyClientAudioDataIsAvailable(a1);
  v6 = IsAvailable;
  if (IsAvailable)
  {
    APSLogErrorAt(IsAvailable);
  }

  return v6;
}

uint64_t protocolDriverReceiverAPAT_processInputDataBBufsInternal(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[1] = a2;
  theArray = 0;
  context[0] = a1;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (a2)
  {
    v5 = DerivedStorage[3];
    if (v5 && *v5)
    {
      while (1)
      {
        v6 = (*DerivedStorage[3])(DerivedStorage[4], a1, &theArray, 0);
        if (v6)
        {
          break;
        }

        if (!theArray)
        {
          goto LABEL_11;
        }

        Count = CFArrayGetCount(theArray);
        if (!Count)
        {
          goto LABEL_11;
        }

        v14.length = Count;
        v14.location = 0;
        CFArrayApplyFunction(theArray, v14, protocolDriverReceiverAPAT_processInputDataBBufsApplierInternal, context);
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }
      }

      v10 = v6;
    }

    else
    {
LABEL_11:
      v8 = DerivedStorage[5];
      if (!v8 || !*v8)
      {
LABEL_19:
        v10 = 0;
        goto LABEL_20;
      }

      while (1)
      {
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }

        v6 = (*DerivedStorage[5])(DerivedStorage[6], a1, &theArray);
        if (v6)
        {
          break;
        }

        if (!theArray)
        {
          return 0;
        }

        v9 = CFArrayGetCount(theArray);
        if (!v9)
        {
          goto LABEL_19;
        }

        v15.length = v9;
        v15.location = 0;
        CFArrayApplyFunction(theArray, v15, protocolDriverReceiverAPAT_processInputDataBBufsApplierInternal, context);
      }

      v10 = v6;
    }

    APSLogErrorAt(v6);
  }

  else
  {
    APSLogErrorAt(0);
    v10 = 4294894835;
  }

LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v10;
}

uint64_t protocolDriverReceiverAPAT_notifyClientAudioDataIsAvailable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 56);
  if (!v3)
  {
    v5 = 4294894835;
LABEL_7:
    APSLogErrorAt(0);
    return v5;
  }

  v4 = *v3;
  if (!v4)
  {
    v5 = 4294894835;
    goto LABEL_7;
  }

  v4(a1, *(DerivedStorage + 64));
  return 0;
}

void protocolDriverReceiverAPAT_processInputDataBBufsApplierInternal(void *a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  CMGetAttachment(a1, @"arrivalTicks", 0);
  UInt64 = FigCFNumberGetUInt64();
  if (!UInt64)
  {
    UInt64 = mach_absolute_time();
  }

  v6 = APSRTCPBBufIsKnown(a1);
  if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
  }

  v7 = DerivedStorage[9];
  if (v6)
  {
    v8 = APSSRTCPBBufCopyRTCPBBuf(a1, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, v7, &cf);
    if (v8 == -6754)
    {
      ++DerivedStorage[19];
    }

    else if (!v8)
    {
      v8 = APSCompoundRTCPBBufApplyFunction(cf, *MEMORY[0x277CBECE8], protocolDriverReceiverAPAT_processInputRTCPBBufApplierInternal, *a2);
      if (!v8)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  v8 = APSSRTPBBufCopyRTPBBuf(a1, APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator, v7, &cf);
  if (v8 == -6754)
  {
    ++DerivedStorage[18];
    goto LABEL_49;
  }

  if (v8)
  {
    goto LABEL_49;
  }

  v9 = *a2;
  v10 = cf;
  v11 = CMBaseObjectGetDerivedStorage();
  key[0] = 0;
  v22 = 0;
  v21 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v12 = *(v11 + 8);
  if (v12)
  {
    LODWORD(v12) = CFDictionaryGetCount(*(v12 + 24));
  }

  if (v12 < *(v11 + 16))
  {
    if (!v10 || rtpBBufUtils_validateAndGetPayloadOffset(v10, 0, &sourceBytes, &key[1]))
    {
      goto LABEL_59;
    }

    if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_enqueueRTPPacketToRxBufferInternal(APSAudioProtocolDriverReceiverRef, CMBlockBufferRef, uint64_t)", 33554462, "[%{ptr}] protocolDriverReceiverAPAT_enqueueRTPPacketToRxBuffer\n", v9);
    }

    SSRC = APSRTPBBufGetSSRC(v10, &v21);
    if (SSRC)
    {
      v19 = SSRC;
      goto LABEL_69;
    }

    v14 = *(v11 + 20);
    v15 = v21;
    if (!v14)
    {
      if (v21)
      {
        goto LABEL_59;
      }

      *(v11 + 20) = v21;
      v14 = v15;
    }

    if ((v14 ^ v15) < 0x10000 && (!v15 || v15 == 2989))
    {
      SSRC = APSRTPBBufGetPayloadType(v10, &v22);
      if (SSRC)
      {
        v19 = SSRC;
        goto LABEL_69;
      }

      if ((v22 & 0xFC) != 0x70)
      {
        v19 = 4294960564;
        goto LABEL_48;
      }

      SSRC = APSRTPBBufGetSeqNum(v10, key);
      if (SSRC)
      {
        v19 = SSRC;
        goto LABEL_69;
      }

      LODWORD(sourceBytes) = bswap32(*(v11 + 20));
      SSRC = CMBlockBufferReplaceDataBytes(&sourceBytes, v10, 8uLL, 4uLL);
      if (SSRC)
      {
        v19 = SSRC;
        goto LABEL_69;
      }

      if (!*(v11 + 120))
      {
        *(v11 + 120) = UInt64;
      }

      if (v21)
      {
        v16 = 0;
      }

      else
      {
        v16 = UInt64;
      }

      v17 = APSRTCPCCFBGeneratorAddSequenceNumberAndArrivalTime(*(v11 + 104), key[0], v16);
      if (v17)
      {
        v18 = v17;
        if (v17 == -6730)
        {
          if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_enqueueRTPPacketToRxBufferInternal(APSAudioProtocolDriverReceiverRef, CMBlockBufferRef, uint64_t)", 33554482, "[%{ptr}] Drop seqNum:%d, already received\n", v9, key[0]);
          }

          goto LABEL_59;
        }

        if (gLogCategory_APSAudioProtocolDriverReceiverAPAT > 90)
        {
          goto LABEL_58;
        }

        if (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_enqueueRTPPacketToRxBufferInternal(APSAudioProtocolDriverReceiverRef, CMBlockBufferRef, uint64_t)", 33554522, "[%{ptr}] Failed to add seqNum:%d to RTCPCCFBGenerator, err:%d\n", v9, key[0], v18);
        }
      }

      if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_enqueueRTPPacketToRxBufferInternal(APSAudioProtocolDriverReceiverRef, CMBlockBufferRef, uint64_t)", 33554462, "Enqueueing BBuf with SSRC %p and seqnum %u into rxBuffer", v21, key[0]);
      }

LABEL_58:
      SSRC = APSRTPSeqNumDictionarySetValue(*(v11 + 8), key[0], v10);
      if (!SSRC)
      {
        goto LABEL_59;
      }

      v19 = SSRC;
LABEL_69:
      APSLogErrorAt(SSRC);
      if (v19 == -72462)
      {
        goto LABEL_50;
      }

LABEL_48:
      v8 = v19;
LABEL_49:
      APSLogErrorAt(v8);
      goto LABEL_50;
    }

    APSLogErrorAt(0);
LABEL_59:
    *a2[1] = 1;
  }

LABEL_50:
  protocolDriverReceiverAPAT_sendCCFBIfNeededInternal(*a2, UInt64);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t protocolDriverReceiverAPAT_processInputRTCPBBufApplierInternal(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  destination = 0;
  if (!a1)
  {
    PacketSenderSSRC = 4294960591;
LABEL_3:
    APSLogErrorAt(PacketSenderSSRC);
    return 0;
  }

  PacketSenderSSRC = CMBlockBufferCopyDataBytes(a1, 1uLL, 1uLL, &destination);
  if (PacketSenderSSRC)
  {
    goto LABEL_3;
  }

  if (destination == 207)
  {
    PacketSenderSSRC = APSRTCPXRBBufGetPacketSenderSSRC(a1, &v7);
    if (PacketSenderSSRC)
    {
      goto LABEL_3;
    }

    if (v7 == *(DerivedStorage + 20))
    {
      PacketSenderSSRC = APSRTCPXRBBufApplyFunction(a1, *MEMORY[0x277CBECE8], protocolDriverReceiverAPAT_processInputRTCPXRBlockBBufApplierInternal, a2);
      if (PacketSenderSSRC)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

uint64_t protocolDriverReceiverAPAT_processInputRTCPXRBlockBBufApplierInternal(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  MediaSourceSSRC = APSRTCPXRRLEBlockBBufGetMediaSourceSSRC(a1, &v8);
  if (MediaSourceSSRC)
  {
    goto LABEL_5;
  }

  if (v8 == *(DerivedStorage + 20))
  {
    destination = 0;
    if (!a1)
    {
      MediaSourceSSRC = 4294960591;
      goto LABEL_5;
    }

    MediaSourceSSRC = CMBlockBufferCopyDataBytes(a1, 0, 1uLL, &destination);
    if (MediaSourceSSRC)
    {
LABEL_5:
      APSLogErrorAt(MediaSourceSSRC);
      return 0;
    }

    if (destination == 25)
    {
      v5 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      FigSimpleMutexCheckIsLockedOnThisThread();
      v6 = APSRTCPXRRLEBlockBBufCopySeqNumRangeSet(a1, *MEMORY[0x277CBECE8], 1, &cf);
      if (v6 || (v6 = APSRTCPCCFBGeneratorSetSendWindow(*(v5 + 104), cf), v6))
      {
        APSLogErrorAt(v6);
      }

      else
      {
        *(v5 + 128) = 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return 0;
}

uint64_t protocolDriverReceiverAPAT_setRTCPCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_setRTCPCallbacks(APSAudioProtocolDriverHoseDataAPATRef, const APSAudioProtocolDriverHoseDataRTCPCallbacks *, CFTypeRef)", 33554482, "[%{ptr}] protocolDriverReceiverAPAT_setRTCPCallbacks\n", a1);
  }

  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 48);
  *(DerivedStorage + 40) = a2;
  *(DerivedStorage + 48) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t protocolDriverReceiverAPAT_signalRTPDataAvailable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_signalRTPDataAvailable(APSAudioProtocolDriverHoseDataAPATRef)", 33554462, "[%{ptr}] protocolDriverReceiverAPAT_signalRTPDataAvailable\n", a1);
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 24);
  if (!v3 || !*v3)
  {
    APSLogErrorAt(0);
    v6 = 4294894835;
LABEL_12:
    FigSimpleMutexUnlock();
    return v6;
  }

  v4 = protocolDriverReceiverAPAT_processInputDataBBufsInternal(a1, &v8);
  if (v4)
  {
    v6 = v4;
    APSLogErrorAt(v4);
    goto LABEL_12;
  }

  FigSimpleMutexUnlock();
  if (!v8)
  {
    return 0;
  }

  IsAvailable = protocolDriverReceiverAPAT_notifyClientAudioDataIsAvailable(a1);
  v6 = IsAvailable;
  if (IsAvailable)
  {
    APSLogErrorAt(IsAvailable);
  }

  return v6;
}

uint64_t protocolDriverReceiverAPAT_setRTPCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_setRTPCallbacks(APSAudioProtocolDriverHoseDataAPATRef, const APSAudioProtocolDriverHoseDataRTPCallbacks *, CFTypeRef)", 33554482, "[%{ptr}] protocolDriverReceiverAPAT_setRTPCallbacks\n", a1);
  }

  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 32);
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 32) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  FigSimpleMutexUnlock();
  return 0;
}

__CFString *protocolDriverReceiverAPAT_audioProtocolDriverHoseDataRTPCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APSAudioProtocolDriverReceiverAPAT <APSAudioProtocolDriverHoseDataAPATProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t protocolDriverReceiverAPAT_SetProperty(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_SetProperty(CMBaseObjectRef, CFStringRef, const void *)", 33554482, "[%{ptr}] protocolDriverReceiverAPAT_SetProperty\n", a1);
  }

  return 4294954509;
}

uint64_t protocolDriverReceiverAPAT_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "OSStatus protocolDriverReceiverAPAT_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554482, "[%{ptr}] protocolDriverReceiverAPAT_CopyProperty\n", a1);
  }

  FigSimpleMutexLock();
  if (CFEqual(a2, @"APSAudioProtocolDriverReceiverProperty_BufferFullnessCount"))
  {
    v8 = *(DerivedStorage + 8);
    if (v8)
    {
      CFDictionaryGetCount(*(v8 + 24));
    }

    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (Int64)
    {
      goto LABEL_12;
    }

LABEL_18:
    APSLogErrorAt(0);
    v11 = 4294894836;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"APSAudioProtocolDriverReceiverProperty_RTPSignatureFailureCount"))
  {
    v9 = CFNumberCreateInt64();
    *a4 = v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!CFEqual(a2, @"APSAudioProtocolDriverReceiverProperty_RTCPSignatureFailureCount"))
    {
      v11 = 4294954509;
      goto LABEL_13;
    }

    v13 = CFNumberCreateInt64();
    *a4 = v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

LABEL_12:
  v11 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  return v11;
}

__CFString *protocolDriverReceiverAPAT_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSAudioProtocolDriverReceiverAPAT %p>", a1);
  return Mutable;
}

void protocolDriverReceiverAPAT_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSAudioProtocolDriverReceiverAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverReceiverAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioProtocolDriverReceiverAPAT, "void protocolDriverReceiverAPAT_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] Finalizing APSAudioProtocolDriverReceiverAPAT\n", a1);
  }

  FigSimpleMutexDestroy();
  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[13];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[9];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[10];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[6];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[8];
  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t APSCryptorGetClassID()
{
  if (APSCryptorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetClassID_sRegisterOnce, &APSCryptorGetClassID_sClassID, cryptor_registerBaseClass);
  }

  return APSCryptorGetClassID_sClassID;
}

uint64_t cryptor_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&cryptor_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSCryptorGetTypeID()
{
  if (APSCryptorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetClassID_sRegisterOnce, &APSCryptorGetClassID_sClassID, cryptor_registerBaseClass);
  }

  v1 = APSCryptorGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

void APSTimeProfilerTaskBegin(CFTypeRef cf)
{
  if (profiler_getShared_sAPSTimeProfilerOnce != -1)
  {
    dispatch_once_f(&profiler_getShared_sAPSTimeProfilerOnce, &profiler_getShared_sAPSTimeProfiler, profiler_initialize);
  }

  if (profiler_getShared_sAPSTimeProfiler)
  {
    v2 = 1;
    v4[0] = 1;
    v4[1] = CFRetain(cf);
    v4[2] = mach_absolute_time();
    APSAtomicMessageQueueSendMessage(qword_27D00B918, v4);
    v3 = *(qword_27D00B920 + 16);
    atomic_compare_exchange_strong_explicit(v3 + 10, &v2, 2u, memory_order_release, memory_order_relaxed);
    if (v2 == 1)
    {
      caulk::concurrent::messenger::enqueue((v3 + 6), v3);
    }
  }
}

void profiler_initialize(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  Int64 = APSSettingsGetInt64(@"enableTimeProfiler", 0);
  *a1 = Int64 != 0;
  if (Int64)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("APSTimeProfiler", v3);
    *(a1 + 8) = v4;
    *(a1 + 16) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    v5 = *MEMORY[0x277CBECE8];
    APSAtomicMessageQueueCreate(*MEMORY[0x277CBECE8], 24, (a1 + 24));
    APSRealTimeSignalCreate(*(a1 + 8), a1, profiler_messageSignalHandler, 0, (a1 + 32));
    v6 = MEMORY[0x277CBF138];
    *(a1 + 40) = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 48) = CFDictionaryCreateMutable(v5, 0, v6, 0);
    dispatch_set_context(*(a1 + 16), a1);
    dispatch_source_set_event_handler_f(*(a1 + 16), profiler_timerTick);
    dispatch_source_set_timer(*(a1 + 16), 0, 0x12A05F200uLL, 0x4C4B40uLL);
    v7 = *(a1 + 16);

    dispatch_resume(v7);
  }
}

void profiler_timerTick(uint64_t a1)
{
  CFDictionaryApplyFunction(*(a1 + 48), profiler_taskProfileLogAndFreeApplier, 0);
  v2 = *(a1 + 48);

  CFDictionaryRemoveAllValues(v2);
}

void profiler_taskProfileLogAndFreeApplier(uint64_t a1, uint64_t *a2)
{
  if (gLogCategory_APSTimeProfiler <= 50 && (gLogCategory_APSTimeProfiler != -1 || _LogCategory_Initialize()))
  {
    v4 = *a2;
    v5 = UpTicksToMicroseconds();
    v6 = UpTicksToMicroseconds();
    v7 = UpTicksToMicroseconds();
    LogPrintF(&gLogCategory_APSTimeProfiler, "void profiler_taskProfileLogAndFreeApplier(const void *, const void *, void *)", 33554482, "TASK ['%@'] count=%llu min=%lluus max=%lluus avg=%lluus", a1, v4, v5, v6, v7);
  }

  free(a2);
}

uint64_t profiler_messageSignalHandler(uint64_t a1)
{
  __dst = 0;
  key = 0;
  v19 = 0;
  v2 = *MEMORY[0x277CBECE8];
  v3 = MEMORY[0x277CBF128];
  v16 = vdupq_n_s64(1uLL).u64[0];
  while (1)
  {
    result = APSAtomicMessageQueueReadMessage(*(a1 + 24), &__dst);
    if (!result)
    {
      return result;
    }

    valuePtr = 0;
    if (__dst == 1)
    {
      v5 = key;
      if (!CFDictionaryGetValue(*(a1 + 40), key))
      {
        Mutable = CFArrayCreateMutable(v2, 0, v3);
        if (!Mutable)
        {
          goto LABEL_30;
        }

        v15 = Mutable;
        CFDictionaryAddValue(*(a1 + 40), v5, Mutable);
        CFRelease(v15);
      }

      Mutable = CFArrayAppendInt64();
      if (Mutable)
      {
        goto LABEL_30;
      }

LABEL_24:
      if (v5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (__dst != 2)
      {
        v5 = key;
        goto LABEL_24;
      }

      v5 = key;
      Mutable = CFDictionaryGetValue(*(a1 + 40), key);
      if (!Mutable)
      {
        goto LABEL_30;
      }

      v7 = Mutable;
      if (CFArrayGetCount(Mutable) <= 0)
      {
        Mutable = 0;
        goto LABEL_30;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
      Value = CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      CFArrayRemoveValueAtIndex(v7, 0);
      if (!Value)
      {
        Mutable = 0;
        goto LABEL_30;
      }

      v10 = v19 - valuePtr;
      if (v19 < valuePtr)
      {
        Mutable = 0;
        goto LABEL_30;
      }

      v11 = CFDictionaryGetValue(*(a1 + 48), v5);
      if (v11)
      {
LABEL_12:
        v12.i64[0] = v16;
        v12.i64[1] = v10;
        *v11 = vaddq_s64(*v11, v12);
        v13 = v11[1].u64[0];
        v14 = v11[1].u64[1];
        if (v13 >= v10)
        {
          v13 = v10;
        }

        if (v14 <= v10)
        {
          v14 = v10;
        }

        v11[1].i64[0] = v13;
        v11[1].i64[1] = v14;
        if (v5)
        {
LABEL_25:
          CFRelease(v5);
        }
      }

      else
      {
        Mutable = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
        if (Mutable)
        {
          v11 = Mutable;
          Mutable->i64[0] = 0;
          Mutable->i64[1] = 0;
          Mutable[1] = xmmword_22234D060;
          CFDictionaryAddValue(*(a1 + 48), v5, Mutable);
          goto LABEL_12;
        }

LABEL_30:
        APSLogErrorAt(Mutable);
        if (v5)
        {
          goto LABEL_25;
        }
      }
    }
  }
}

void APSTimeProfilerTaskEnd(CFTypeRef cf)
{
  if (profiler_getShared_sAPSTimeProfilerOnce != -1)
  {
    dispatch_once_f(&profiler_getShared_sAPSTimeProfilerOnce, &profiler_getShared_sAPSTimeProfiler, profiler_initialize);
  }

  if (profiler_getShared_sAPSTimeProfiler)
  {
    v4[0] = 2;
    v4[1] = CFRetain(cf);
    v4[2] = mach_absolute_time();
    APSAtomicMessageQueueSendMessage(qword_27D00B918, v4);
    v2 = *(qword_27D00B920 + 16);
    v3 = 1;
    atomic_compare_exchange_strong_explicit(v2 + 10, &v3, 2u, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      caulk::concurrent::messenger::enqueue((v2 + 6), v2);
    }
  }
}

BOOL APSAccessControlIsValidConfig(int a1, int a2)
{
  switch(a1)
  {
    case 2:
      return 1;
    case 1:
      return (a2 - 1) < 2;
    case 0:
      return 1;
  }

  return 0;
}

uint64_t APSNetworkAddressGetTypeID()
{
  if (APSNetworkAddressGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSNetworkAddressGetTypeID_sInitOnce, &APSNetworkAddressGetTypeID_sTypeID, networkAddress_getTypeID);
  }

  return APSNetworkAddressGetTypeID_sTypeID;
}

uint64_t networkAddress_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

__CFString *networkAddress_CopyDebugDescription(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (!Mutable || (Mutable = SockAddrToString(), Mutable))
  {
    APSLogErrorAt(Mutable);
  }

  else
  {
    CFStringAppendFormat(v3, 0, @"<APSNetworkAddress %p '%s'>", a1, v5);
  }

  return v3;
}

BOOL networkAddress_Equal(_OWORD *a1, _OWORD *a2)
{
  v4 = CFGetTypeID(a1);
  if (APSNetworkAddressGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSNetworkAddressGetTypeID_sInitOnce, &APSNetworkAddressGetTypeID_sTypeID, networkAddress_getTypeID);
  }

  if (v4 != APSNetworkAddressGetTypeID_sTypeID)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (APSNetworkAddressGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSNetworkAddressGetTypeID_sInitOnce, &APSNetworkAddressGetTypeID_sTypeID, networkAddress_getTypeID);
  }

  if (v5 == APSNetworkAddressGetTypeID_sTypeID && BYTE1(a1[1]) == BYTE1(a2[1]) && (Port = SockAddrGetPort(), Port == SockAddrGetPort()))
  {
    return SockAddrCompareAddr() == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t APSNetworkAddressCreateWithSocketAddr(uint64_t a1, __int128 *a2, void *a3)
{
  if (APSNetworkAddressGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSNetworkAddressGetTypeID_sInitOnce, &APSNetworkAddressGetTypeID_sTypeID, networkAddress_getTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    Instance[1] = 0u;
    Instance[2] = 0u;
    v7 = *a2;
    *(Instance + 28) = *(a2 + 12);
    Instance[1] = v7;
    if (gLogCategory_APSNetworkAddress <= 30 && (gLogCategory_APSNetworkAddress != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSNetworkAddress, "OSStatus APSNetworkAddressCreateWithSocketAddr(CFAllocatorRef, sockaddr_ip, APSNetworkAddressRef *)", 33554462, "APSNetworkAddress %{ptr} created\n", v6);
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  return result;
}

uint64_t APSNetworkAddressCreateWithString(uint64_t a1, CFStringRef theString, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buffer = 0u;
  v12 = 0u;
  memset(&v10[2], 0, 28);
  if (CFStringGetCString(theString, buffer, 128, 0x8000100u))
  {
    v6 = StringToSockAddr();
    if (v6)
    {
      v8 = v6;
      if (gLogCategory_APSNetworkAddress <= 90 && (gLogCategory_APSNetworkAddress != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSNetworkAddress, "OSStatus APSNetworkAddressCreateWithString(CFAllocatorRef, CFStringRef, APSNetworkAddressRef *)", 33554522, "### APSNetworkAddressCreateWithString StringToSockAddr err=%#m inIPPort=%@ IPPort=%s", v8, theString, buffer);
      }
    }

    else
    {
      v10[0] = v10[2];
      *(v10 + 12) = *(&v10[2] + 12);
      v7 = APSNetworkAddressCreateWithSocketAddr(a1, v10, a3);
      v8 = v7;
      if (v7)
      {
        APSLogErrorAt(v7);
      }
    }
  }

  else if (gLogCategory_APSNetworkAddress <= 90 && (gLogCategory_APSNetworkAddress != -1 || _LogCategory_Initialize()))
  {
    v8 = 4294960554;
    LogPrintF(&gLogCategory_APSNetworkAddress, "OSStatus APSNetworkAddressCreateWithString(CFAllocatorRef, CFStringRef, APSNetworkAddressRef *)", 33554522, "### APSNetworkAddressCreateWithString CFStringGetCString err=%#m inIPPort=%@", 4294960554, theString);
  }

  else
  {
    return 4294960554;
  }

  return v8;
}

__n128 APSNetworkAddressGetSocketAddr@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 16);
  result = *(a1 + 28);
  *(a2 + 12) = result;
  return result;
}

uint64_t APSNetworkAddressCopyStringRepresentationWithFlags(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  if (a3)
  {
    v4 = SockAddrToString();
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }

    else
    {
      *a3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v7, 0x8000100u);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v5;
}

uint64_t APSNetworkAddressGetCStringRepresentationWithFlags(uint64_t a1, uint64_t a2, char *a3, CFIndex a4)
{
  theString = 0;
  v6 = APSNetworkAddressCopyStringRepresentationWithFlags(a1, a2, &theString);
  if (v6)
  {
    v8 = v6;
    APSLogErrorAt(v6);
  }

  else
  {
    CString = CFStringGetCString(theString, a3, a4, 0x8000100u);
    if (CString)
    {
      v8 = 0;
    }

    else
    {
      APSLogErrorAt(CString);
      v8 = 4294960533;
    }
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v8;
}

uint64_t APSNetworkAddressCopyInterfaceName(uint64_t a1, CFStringRef *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (*(a1 + 17) == 30)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      APSLogErrorAt(v3);
      return 4294960560;
    }

    if (!if_indextoname(v3, cStr))
    {
      APSLogErrorAt(0);
      return 4294960569;
    }

    v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  }

  else
  {
    v4 = 0;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t APSNetworkAddressSetInterfaceName(uint64_t a1, CFStringRef theString)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!theString)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (*(a1 + 17) != 30)
  {
    return 4294960591;
  }

  CString = CFStringGetCString(theString, buffer, 128, 0x8000100u);
  if (CString)
  {
    v4 = if_nametoindex(buffer);
    if (v4)
    {
      v5 = v4;
      result = 0;
      *(a1 + 40) = v5;
    }

    else
    {
      APSLogErrorAt(v4);
      return 4294960569;
    }
  }

  else
  {
    APSLogErrorAt(CString);
    return 4294960560;
  }

  return result;
}

uint64_t APSRealTimePTPClockGetTypeID()
{
  if (gAPSRealTimePTPClockInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimePTPClockInitOnce, 0, _APSRealTimePTPClockGetTypeID);
  }

  return gAPSRealTimePTPClockTypeID;
}

uint64_t _APSRealTimePTPClockGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRealTimePTPClockTypeID = result;
  return result;
}

void _APSRealTimePTPClockFinalize(uint64_t a1)
{
  if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRealTimePTPClock, "void _APSRealTimePTPClockFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalized", a1);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_sync_f(*v2, v2, rtPTPClockServer_deregisterClientInternal);
    *(a1 + 16) = 0;
  }
}

void rtPTPClockServer_deregisterClientInternal(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    if (gLogCategory_APSRealTimePTPClock <= 50)
    {
      if (gLogCategory_APSRealTimePTPClock != -1 || (v3 = _LogCategory_Initialize(), v2 = a1[3], v3))
      {
        LogPrintF(&gLogCategory_APSRealTimePTPClock, "void rtPTPClockServer_deregisterClientInternal(void *)", 33554482, "Server [%{ptr}] deregister client %d -> %d", a1, v2, v2 - 1);
        v2 = a1[3];
      }
    }

    v4 = v2 - 1;
    a1[3] = v4;
    if (!v4)
    {
      if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSRealTimePTPClock, "void rtPTPClockServer_deregisterClientInternal(void *)", 33554482, "Server [%{ptr}] suspending", a1);
      }

      v5 = a1[2];
      if (v5)
      {
        CFRelease(v5);
        a1[2] = 0;
      }

      v6 = a1[1];

      dispatch_suspend(v6);
    }
  }

  else if (gLogCategory_APSRealTimePTPClock <= 90 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRealTimePTPClock, "void rtPTPClockServer_deregisterClientInternal(void *)", 33554522, "### Server [%{ptr}] attempt to deregister with no clients", a1);
  }
}

uint64_t APSRealTimePTPClockCreate(CFTypeRef *a1)
{
  if (a1)
  {
    if (gAPSRealTimePTPClockInitOnce != -1)
    {
      dispatch_once_f(&gAPSRealTimePTPClockInitOnce, 0, _APSRealTimePTPClockGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      *(Instance + 16) = 0;
      if (rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServerOnce != -1)
      {
        dispatch_once_f(&rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServerOnce, &rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServer, rtPTPClockServer_init);
      }

      context = &rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServer;
      v7 = 0;
      dispatch_sync_f(rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServer, &context, rtPTPClockServer_registerClientInternal);
      v4 = v7;
      if (v7)
      {
        if (gLogCategory_APSRealTimePTPClock <= 90 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSRealTimePTPClock, "OSStatus APSRealTimePTPClockCreate(APSRealTimePTPClockRef *)", 33554522, "### [%{ptr}] failed to register with server (err=%#m)", v3, v4);
        }
      }

      else
      {
        v3[2] = &rtPTPClockServer_getSharedServer_sAPSRealTimePTPClockServer;
        if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSRealTimePTPClock, "OSStatus APSRealTimePTPClockCreate(APSRealTimePTPClockRef *)", 33554482, "[%{ptr}] created", v3);
        }

        *a1 = CFRetain(v3);
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

  return v4;
}

uint64_t rtPTPClockServer_registerClientInternal(uint64_t *a1)
{
  v2 = *a1;
  memset(v6, 0, sizeof(v6));
  if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRealTimePTPClock, "void rtPTPClockServer_registerClientInternal(void *)", 33554482, "Server [%{ptr}] register client %d -> %d", v2, *(v2 + 24), *(v2 + 24) + 1);
  }

  v3 = *(v2 + 24);
  if (v3)
  {
    goto LABEL_12;
  }

  if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRealTimePTPClock, "void rtPTPClockServer_registerClientInternal(void *)", 33554482, "Server [%{ptr}] resuming", v2);
  }

  result = CM8021ASClockCreate();
  if (!result)
  {
    rtPTPClockServer_getRelativeRateAndAnchor(v2, v6);
    APSRealTimeWritableWrite(*(v2 + 32), v6);
    dispatch_resume(*(v2 + 8));
    v3 = *(v2 + 24);
LABEL_12:
    result = 0;
    *(v2 + 24) = v3 + 1;
    goto LABEL_13;
  }

  if (gLogCategory_APSRealTimePTPClock <= 90)
  {
    v5 = result;
    if (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APSRealTimePTPClock, "void rtPTPClockServer_registerClientInternal(void *)", 33554522, "### Server [%{ptr}] failed to create CM8021ASClock (err=%#m)", v2, v5);
    }

    result = v5;
  }

LABEL_13:
  *(a1 + 2) = result;
  return result;
}

void rtPTPClockServer_getRelativeRateAndAnchor(uint64_t a1, uint64_t a2)
{
  v15 = **&MEMORY[0x277CC0898];
  v14 = v15;
  v13 = v15;
  v12 = v15;
  v10 = 0;
  v11 = 0;
  do
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v15, HostTimeClock);
    CMTimeMake(&rhs, 1, 1);
    lhs = v15;
    CMTimeAdd(&v14, &lhs, &rhs);
    rhs = v15;
    CM8021ASClockGetClockTimeForHostTime();
    rhs = v14;
    CM8021ASClockGetClockTimeForHostTime();
    v4 = v11;
  }

  while (v11 != v10);
  *a2 = v15;
  v5 = *&v13.value;
  *(a2 + 24) = *&v13.value;
  epoch = v13.epoch;
  *(a2 + 40) = v13.epoch;
  *(a2 + 48) = v4;
  lhs = v12;
  *&v7.value = v5;
  v7.epoch = epoch;
  CMTimeSubtract(&rhs, &lhs, &v7);
  *(a2 + 56) = CMTimeGetSeconds(&rhs);
}

void rtPTPClockServer_init(dispatch_source_t *a1)
{
  APSRealTimeWritableCreate(0, 0x40uLL, a1 + 4);
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("APSRealTimePTPClockServer", v2);
  *a1 = v3;
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  a1[1] = v4;
  dispatch_source_set_timer(v4, 0, 0x1DCD6500uLL, 0xF4240uLL);
  dispatch_set_context(a1[1], a1);
  dispatch_source_set_event_handler_f(a1[1], rtPTPClockServer_updateRelativeRateAndAnchorTime);
  if (gLogCategory_APSRealTimePTPClock <= 50 && (gLogCategory_APSRealTimePTPClock != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRealTimePTPClock, "void rtPTPClockServer_init(void *)", 33554482, "Server [%{ptr}] initialized", a1);
  }
}

uint64_t rtPTPClockServer_updateRelativeRateAndAnchorTime(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  rtPTPClockServer_getRelativeRateAndAnchor(a1, v3);
  return APSRealTimeWritableWrite(*(a1 + 32), v3);
}

CMTime *APSRealTimePTPClockGetEstimatedPTPTimeForHostTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, CMTime *a4@<X8>)
{
  v6 = *(a1 + 16);
  *&v15.value = *a2;
  v15.epoch = *(a2 + 16);
  *a4 = **&MEMORY[0x277CC0898];
  v22 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v7 = APSRealTimeWritableRead(*(v6 + 32), __dst);
  if (v7)
  {
    return APSLogErrorAt(v7);
  }

  lhs = v15;
  rhs = __dst[0];
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeMultiplyByFloat64(&lhs, &time, *(&v22 + 1));
  time = __dst[1];
  result = CMTimeAdd(a4, &time, &lhs);
  if (gLogCategory_APSRealTimePTPClock <= 30)
  {
    if (gLogCategory_APSRealTimePTPClock != -1 || (result = _LogCategory_Initialize(), result))
    {
      v17 = 0;
      memset(&lhs, 0, sizeof(lhs));
      time = v15;
      result = CM8021ASClockGetClockTimeForHostTime();
      if (gLogCategory_APSRealTimePTPClock <= 30)
      {
        if (gLogCategory_APSRealTimePTPClock != -1 || (result = _LogCategory_Initialize(), result))
        {
          time = v15;
          Seconds = CMTimeGetSeconds(&time);
          time = *a4;
          v10 = CMTimeGetSeconds(&time);
          v11 = v22;
          time = lhs;
          v12 = CMTimeGetSeconds(&time);
          v13 = v17;
          if (v22 == v17)
          {
            rhs = *a4;
            v16 = lhs;
            CMTimeSubtract(&time, &rhs, &v16);
            v14 = CMTimeGetSeconds(&time);
          }

          else
          {
            v14 = NAN;
          }

          result = LogPrintF(&gLogCategory_APSRealTimePTPClock, "CMTime rtPTPClockServer_getEstimatedPTPTimeForHostTime(APSRealTimePTPClockServer *, CMTime, uint64_t *)", 33554462, "Server [%{ptr}] convert (hostTime: %1.6f) -> (estimated: (ptpTime: %1.6f, ptpGM: %llu), actual: (ptpTime: %1.6f, ptpGM: %llu), diffTime: %1.6f)", v6, *&Seconds, *&v10, v11, *&v12, v13, *&v14);
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v22;
  }

  return result;
}

CMTime *APSRealTimePTPClockGetEstimatedHostTimeForPTPTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, CMTime *a4@<X8>)
{
  v6 = *(a1 + 16);
  *&v15.value = *a2;
  v15.epoch = *(a2 + 16);
  *a4 = **&MEMORY[0x277CC0898];
  v22 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v7 = APSRealTimeWritableRead(*(v6 + 32), __dst);
  if (v7)
  {
    return APSLogErrorAt(v7);
  }

  lhs = v15;
  rhs = __dst[1];
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeMultiplyByFloat64(&lhs, &time, 1.0 / *(&v22 + 1));
  time = __dst[0];
  result = CMTimeAdd(a4, &time, &lhs);
  if (gLogCategory_APSRealTimePTPClock <= 30)
  {
    if (gLogCategory_APSRealTimePTPClock != -1 || (result = _LogCategory_Initialize(), result))
    {
      v17 = 0;
      memset(&lhs, 0, sizeof(lhs));
      time = v15;
      result = CM8021ASClockGetHostTimeForClockTime();
      if (gLogCategory_APSRealTimePTPClock <= 30)
      {
        if (gLogCategory_APSRealTimePTPClock != -1 || (result = _LogCategory_Initialize(), result))
        {
          time = v15;
          Seconds = CMTimeGetSeconds(&time);
          time = *a4;
          v10 = CMTimeGetSeconds(&time);
          v11 = v22;
          time = lhs;
          v12 = CMTimeGetSeconds(&time);
          v13 = v17;
          if (v22 == v17)
          {
            rhs = *a4;
            v16 = lhs;
            CMTimeSubtract(&time, &rhs, &v16);
            v14 = CMTimeGetSeconds(&time);
          }

          else
          {
            v14 = NAN;
          }

          result = LogPrintF(&gLogCategory_APSRealTimePTPClock, "CMTime rtPTPClockServer_getEstimatedHostTimeForPTPTime(APSRealTimePTPClockServer *, CMTime, uint64_t *)", 33554462, "Server [%{ptr}] convert (ptpTime: %1.6f) -> (estimated: (hostTime: %1.6f, ptpGM: %llu), actual: (hostTime: %1.6f, ptpGM: %llu), diffTime: %1.6f)", v6, *&Seconds, *&v10, v11, *&v12, v13, *&v14);
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v22;
  }

  return result;
}

uint64_t APSRealTimeSafeSemaphoreCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    if (APSRealTimeSafeSemaphoreGetTypeID::sRegisterAPSRealTimeSafeSemaphoreOnce != -1)
    {
      dispatch_once_f(&APSRealTimeSafeSemaphoreGetTypeID::sRegisterAPSRealTimeSafeSemaphoreOnce, 0, registerAPSRealTimeSafeSemaphore);
    }

    if (_CFRuntimeCreateInstance())
    {
      operator new();
    }

    APSLogErrorAt(0);
    return 4294960568;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t registerAPSRealTimeSafeSemaphore(void *a1)
{
  sAPSRealTimeSafeSemaphoreClass = 0;
  *algn_27D00B998 = "APSRealTimeSafeSemaphore";
  qword_27D00B9A0 = APSRealTimeSafeSemaphoreInit;
  unk_27D00B9A8 = 0;
  qword_27D00B9B0 = APSRealTimeSafeSemaphoreFinalize;
  unk_27D00B9B8 = 0;
  qword_27D00B9C0 = 0;
  unk_27D00B9C8 = 0;
  qword_27D00B9D0 = APSRealTimeSafeSemaphoreCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sAPSRealTimeSafeSemaphoreID = result;
  return result;
}

__CFString *APSRealTimeSafeSemaphoreCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v1, 0);
  CFStringAppendFormat(Mutable, 0, @"APSRealTimeSafeSemaphore");
  return Mutable;
}

uint64_t APSRealTimeSafeSemaphoreFinalize(void *a1)
{
  result = a1[2];
  if (result)
  {
    MEMORY[0x223DB5630]();

    JUMPOUT(0x223DB5660);
  }

  return result;
}

uint64_t APSRealTimeSafeSemaphoreGetTypeID()
{
  if (APSRealTimeSafeSemaphoreGetTypeID::sRegisterAPSRealTimeSafeSemaphoreOnce != -1)
  {
    dispatch_once_f(&APSRealTimeSafeSemaphoreGetTypeID::sRegisterAPSRealTimeSafeSemaphoreOnce, 0, registerAPSRealTimeSafeSemaphore);
  }

  return sAPSRealTimeSafeSemaphoreID;
}

uint64_t APSDynamicLatencyManagerGetTypeID()
{
  if (gAPSDynamicLatencyManagerInitOnce != -1)
  {
    dispatch_once_f(&gAPSDynamicLatencyManagerInitOnce, 0, _APSDynamicLatencyManagerGetTypeID);
  }

  return gAPSDynamicLatencyManagerTypeID;
}

uint64_t _APSDynamicLatencyManagerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSDynamicLatencyManagerTypeID = result;
  return result;
}

uint64_t _APSDynamicLatencyManagerFinalize(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[16];
  if (v5)
  {
    CFRelease(v5);
  }

  result = FigSimpleMutexDestroy();
  if (gLogCategory_APSDynamicLatencyManager <= 50)
  {
    if (gLogCategory_APSDynamicLatencyManager != -1)
    {
      return LogPrintF(&gLogCategory_APSDynamicLatencyManager, "void _APSDynamicLatencyManagerFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalized", a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSDynamicLatencyManager, "void _APSDynamicLatencyManagerFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalized", a1);
    }
  }

  return result;
}

uint64_t _APSDynamicLatencyManagerCreate(const void *a1, const void *a2, unint64_t a3, unint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus _APSDynamicLatencyManagerCreate(CFStringRef, const uint32_t *, size_t, size_t, CFDictionaryRef, _APSDynamicLatencyManagerLatencyTierChangeCallback, void *, _APSDynamicLatencyManagerSetVariantCallback, void *, APSDynamicLatencyManagerRef *)", 33554462, "_APSDynamicLatencyManagerCreate\n");
  }

  if (!a2 || !a3 || a4 >= a3 || !a1 || !a10)
  {
    APSLogErrorAt(0);
    return -6705;
  }

  v32 = a6;
  if (gAPSDynamicLatencyManagerInitOnce != -1)
  {
    dispatch_once_f(&gAPSDynamicLatencyManagerInitOnce, 0, _APSDynamicLatencyManagerGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return -6728;
  }

  v19 = Instance;
  v31 = a8;
  *(Instance + 16) = 0u;
  v20 = Instance + 16;
  *(Instance + 128) = 0;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  v21 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v20 + 104) = Mutable;
  if (!Mutable || (v23 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(v19 + 128) = v23) == 0) || (v24 = FigSimpleMutexCreate(), (*(v19 + 80) = v24) == 0))
  {
    APSLogErrorAt(0);
    v33 = -6728;
LABEL_38:
    CFRelease(v19);
    return v33;
  }

  *(v19 + 16) = 0x500000E10;
  *(v19 + 24) = xmmword_22234D070;
  *(v19 + 40) = 0x4024000000000000;
  if (a5)
  {
    if (CFDictionaryContainsKey(a5, @"MinSessionDurationSecs"))
    {
      *(v19 + 20) = CFDictionaryGetInt64Ranged();
    }

    if (CFDictionaryContainsKey(a5, @"PromotionWindowSecs"))
    {
      *v20 = CFDictionaryGetInt64Ranged();
    }

    if (CFDictionaryContainsKey(a5, @"GlitchesPerWindowToPromoteTier"))
    {
      CFDictionaryGetDouble();
      *(v19 + 24) = v25;
    }

    if (CFDictionaryContainsKey(a5, @"GlitchesPerWindowToDemoteTier"))
    {
      CFDictionaryGetDouble();
      *(v19 + 32) = v26;
    }

    if (CFDictionaryContainsKey(a5, @"GlitchesPerWindowToWorstTier"))
    {
      CFDictionaryGetDouble();
      *(v19 + 40) = v27;
    }
  }

  v28 = dynamicLatencyManager_SetTiers(v19, a1, a2, a3, a4);
  v33 = v28;
  if (v28)
  {
    APSLogErrorAt(v28);
    goto LABEL_38;
  }

  *(v19 + 48) = v32;
  *(v19 + 56) = a7;
  *(v19 + 64) = v31;
  *(v19 + 72) = a9;
  *a10 = v19;
  if (gLogCategory_APSDynamicLatencyManager <= 50)
  {
    if (gLogCategory_APSDynamicLatencyManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v33;
      }

      v19 = *a10;
    }

    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus _APSDynamicLatencyManagerCreate(CFStringRef, const uint32_t *, size_t, size_t, CFDictionaryRef, _APSDynamicLatencyManagerLatencyTierChangeCallback, void *, _APSDynamicLatencyManagerSetVariantCallback, void *, APSDynamicLatencyManagerRef *)", 33554482, "[%{ptr}] created! Variant=%@ initialLatencyTierIdx=%u latencyMs=%u promotionWindowSecs=%d minSessionDurationSec=%u maxGlitchesPerWindowToPromote=%f minGlitchesPerWindowToDemote=%f minGlitchesPerWindowToWorst=%f\n", v19, *(v19 + 88), a4, *(*(v19 + 96) + 4 * a4), *(v19 + 16), *(v19 + 20), *(v19 + 24), *(v19 + 32), *(v19 + 40));
  }

  return v33;
}

uint64_t dynamicLatencyManager_SetTiers(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus dynamicLatencyManager_SetTiers(APSDynamicLatencyManagerRef, CFStringRef, const uint32_t *, size_t, size_t)", 33554462, "[%{ptr}] dynamicLatencyManager_SetTiers\n", a1);
  }

  FigSimpleMutexLock();
  CFDictionaryRemoveAllValues(*(a1 + 120));
  CFDictionaryRemoveAllValues(*(a1 + 128));
  v10 = *(a1 + 88);
  *(a1 + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 104) = a4;
  v12 = 4 * a4;
  v13 = malloc_type_malloc(v12, 0x100004052888210uLL);
  *(a1 + 96) = v13;
  if (v13)
  {
    memcpy(v13, a3, v12);
    v14 = 0;
    *(a1 + 112) = a5;
  }

  else
  {
    APSLogErrorAt(0);
    v14 = 4294960568;
  }

  FigSimpleMutexUnlock();
  return v14;
}

uint64_t _APSDynamicLatencyManagerUpdateTiers(uint64_t a1, const void *a2, const void *a3, unint64_t a4, unint64_t a5)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus _APSDynamicLatencyManagerUpdateTiers(APSDynamicLatencyManagerRef, CFStringRef, const uint32_t *, size_t, size_t)", 33554462, "[%{ptr}] _APSDynamicLatencyManagerUpdateTiers\n", a1);
  }

  if (a1 && a2 && a3 && a4 && a5 < a4)
  {
    v10 = dynamicLatencyManager_SetTiers(a1, a2, a3, a4, a5);
    v11 = v10;
    if (v10)
    {
      APSLogErrorAt(v10);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v11;
}

uint64_t APSDynamicLatencyManagerGetRef(unsigned int a1)
{
  if (a1 < 2)
  {
    if (a1)
    {
      if (APSDynamicLatencyManagerGetRef_sInitOnce == -1)
      {
        return APSDynamicLatencyManagerGetRef_sAPSDynamicLatencyManager;
      }

      v2 = dynamicLatencyManager_GetSCR;
    }

    else
    {
      if (APSDynamicLatencyManagerGetRef_sInitOnce == -1)
      {
        return APSDynamicLatencyManagerGetRef_sAPSDynamicLatencyManager;
      }

      v2 = dynamicLatencyManager_GetLLA;
    }

    dispatch_once_f(&APSDynamicLatencyManagerGetRef_sInitOnce, &APSDynamicLatencyManagerGetRef_sAPSDynamicLatencyManager, v2);
    return APSDynamicLatencyManagerGetRef_sAPSDynamicLatencyManager;
  }

  APSLogErrorAt(0);
  return 0;
}

void dynamicLatencyManager_GetSCR(uint64_t *a1)
{
  v11 = 0;
  v2 = &kDLMConfigurations;
  v9 = 0;
  v10 = 0;
  v3 = 7;
  v8 = 0;
  while (!FigCFEqual())
  {
    v2 += 5;
    if (!--v3)
    {
      v2 = 0;
      break;
    }
  }

  if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "void dynamicLatencyManager_GetSCR(void *)", 33554482, "Initializing with variant=%@ and latencyTierIndex=%u\n", *v2, 0, v8, v9, v10, v11);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    dynamicLatencyManager_GetCreationOptions(1, &v11 + 1, &v11, &v10, &v9, &v8);
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    v6 = _APSDynamicLatencyManagerCreate(*v2, v2 + 1, v2[4], 0, v5, dynamicLatencyManager_LatencyTierChangeCallback, 0, dynamicLatencyManager_SetVariantCallback, 0, a1);
    if (v6)
    {
      APSLogErrorAt(v6);
    }

    else
    {
      dynamicLatencyManager_SetVariantCallback(*a1, *v2);
      dynamicLatencyManager_LatencyTierChangeCallback(*a1, v7, 0);
    }

    CFRelease(v5);
  }

  else
  {

    APSLogErrorAt(0);
  }
}

void dynamicLatencyManager_GetCreationOptions(int a1, _DWORD *a2, _DWORD *a3, double *a4, double *a5, double *a6)
{
  v18 = -6705;
  *a2 = APSSettingsGetIntWithOverrideAndDefault(@"DLMMinSessionDurationSec", 0, 5);
  if (a1)
  {
    *a3 = APSSettingsGetIntWithOverrideAndDefault(@"scrDLMPromotionWindowSec", 0, 60);
    APSSettingsGetDouble(@"scrDLMGlitchesPerWindowToPromoteTier", &v18);
    if (v18)
    {
      v11 = 0.0;
    }

    *a4 = v11;
    APSSettingsGetDouble(@"scrDLMGlitchesPerWindowToDemoteTier", &v18);
    if (v18)
    {
      v12 = 0.2;
    }

    *a5 = v12;
    APSSettingsGetDouble(@"scrDLMGlitchesPerWindowToWorstTier", &v18);
    v14 = v18 == 0;
    v15 = 1.0;
  }

  else
  {
    *a3 = APSSettingsGetIntWithOverrideAndDefault(@"llaDLMPromotionWindowSec", 0, 3600);
    APSSettingsGetDouble(@"llaDLMGlitchesPerWindowToPromoteTier", &v18);
    if (v18)
    {
      v16 = 0.0;
    }

    *a4 = v16;
    APSSettingsGetDouble(@"llaDLMGlitchesPerWindowToDemoteTier", &v18);
    if (v18)
    {
      v17 = 1.0;
    }

    *a5 = v17;
    APSSettingsGetDouble(@"llaDLMGlitchesPerWindowToWorstTier", &v18);
    v14 = v18 == 0;
    v15 = 10.0;
  }

  if (!v14)
  {
    v13 = v15;
  }

  *a6 = v13;
}

uint64_t dynamicLatencyManager_SetVariantCallback(uint64_t a1, const void *a2)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus dynamicLatencyManager_SetVariantCallback(APSDynamicLatencyManagerRef, CFStringRef, void *)", 33554462, "[%{ptr}] dynamicLatencyManager_SetVariantCallback\n", a1);
  }

  if (a2)
  {
    v4 = 0;
    while (!FigCFEqual())
    {
      v4 += 40;
      if (v4 == 120)
      {
        return 0;
      }
    }

    if (CFEqual(@"llaDLMVariant", @"wirelessdisplay_enable_timestamps_diagnostic"))
    {
      v5 = @"com.apple.coremedia";
    }

    else
    {
      v5 = @"com.apple.airplay";
    }

    CFPreferencesSetAppValue(@"llaDLMVariant", a2, v5);
    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus dynamicLatencyManager_SetVariantCallback(APSDynamicLatencyManagerRef, CFStringRef, void *)", 33554482, "[%{ptr}] SetVariantCallback wrote variant (key=%s value=%@) to storage\n", a1, "llaDLMVariant", a2);
    }
  }

  else
  {
    APSLogErrorAt(0);
  }

  return 0;
}

uint64_t dynamicLatencyManager_LatencyTierChangeCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus dynamicLatencyManager_LatencyTierChangeCallback(APSDynamicLatencyManagerRef, uint32_t, size_t, void *)", 33554462, "[%{ptr}] dynamicLatencyManager_LatencyTierChangeCallback\n", a1);
  }

  if (dynamicLatencyManager_IsLLAVariant(*(a1 + 88)))
  {
    APSSettingsSetInt64(@"llaDLMTierIndex", a3);
    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus dynamicLatencyManager_LatencyTierChangeCallback(APSDynamicLatencyManagerRef, uint32_t, size_t, void *)", 33554482, "[%{ptr}] LatencyTierChangeCallback wrote latencyTierIndex (key=%s value=%u) to storage\n", a1, "llaDLMTierIndex", a3);
    }
  }

  return 0;
}

uint64_t dynamicLatencyManager_IsLLAVariant(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    while (!FigCFEqual())
    {
      v1 += 40;
      if (v1 == 120)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

void dynamicLatencyManager_GetLLA(uint64_t *a1)
{
  v19 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0.0;
  v2 = &kDLMConfigurations;
  v15 = 0;
  v3 = 7;
  while (!FigCFEqual())
  {
    v2 += 5;
    if (!--v3)
    {
      v2 = 0;
      break;
    }
  }

  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "const APSDLMPVariantConfig *dynamicLatencyManager_GetConfigurationAndLatencyIndex(size_t *)", 33554462, "GetConfigurationAndLatencyIndex\n");
  }

  v4 = APSSettingsCopyValueEx(@"llaDLMVariant", 0, &v19 + 1);
  v5 = v4;
  v6 = 0;
  if (HIDWORD(v19) || !v4)
  {
LABEL_34:
    if (v5)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v7 = CFGetTypeID(v4);
  if (v7 != CFStringGetTypeID() || CFStringGetLength(v5) < 1)
  {
    v6 = 0;
    goto LABEL_38;
  }

  if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "const APSDLMPVariantConfig *dynamicLatencyManager_GetConfigurationAndLatencyIndex(size_t *)", 33554482, "Read variant=%@ from storage\n", v5);
  }

  v8 = &kDLMConfigurations;
  v9 = 7;
  do
  {
    if (FigCFEqual())
    {
      if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSDynamicLatencyManager, "const APSDLMPVariantConfig *dynamicLatencyManager_GetConfigurationAndLatencyIndex(size_t *)", 33554482, "Found configuration for variant=%@\n", v5);
      }

      Int64 = APSSettingsGetInt64(@"llaDLMTierIndex", &v19 + 1);
      if (!HIDWORD(v19))
      {
        v6 = Int64;
        if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSDynamicLatencyManager, "const APSDLMPVariantConfig *dynamicLatencyManager_GetConfigurationAndLatencyIndex(size_t *)", 33554482, "Read latencyTierIndex=%u from storage\n", v6);
        }

        if (v6 < 5)
        {
          goto LABEL_33;
        }

        APSLogErrorAt(0);
        if (gLogCategory_APSDynamicLatencyManager <= 90 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSDynamicLatencyManager, "const APSDLMPVariantConfig *dynamicLatencyManager_GetConfigurationAndLatencyIndex(size_t *)", 33554522, "LatencyTierIndex=%u must be smaller than numTiers=%u. Using default index=%d\n", v6, 5, 0);
        }
      }

      v6 = 0;
LABEL_33:
      v2 = v8;
      goto LABEL_34;
    }

    v8 += 5;
    --v9;
  }

  while (v9);
  APSLogErrorAt(0);
  if (gLogCategory_APSDynamicLatencyManager <= 90 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "const APSDLMPVariantConfig *dynamicLatencyManager_GetConfigurationAndLatencyIndex(size_t *)", 33554522, "Configuration for variant=%@ not found\n", v5);
  }

  v6 = 0;
  if (v5)
  {
LABEL_38:
    CFRelease(v5);
  }

LABEL_39:
  if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "void dynamicLatencyManager_GetLLA(void *)", 33554482, "Initializing with variant=%@ and latencyTierIndex=%u\n", *v2, v6);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v12 = Mutable;
    dynamicLatencyManager_GetCreationOptions(0, &v19, &v18, &v17, &v16, &v15);
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    v13 = _APSDynamicLatencyManagerCreate(*v2, v2 + 1, v2[4], v6, v12, dynamicLatencyManager_LatencyTierChangeCallback, 0, dynamicLatencyManager_SetVariantCallback, 0, a1);
    if (v13)
    {
      APSLogErrorAt(v13);
    }

    else
    {
      dynamicLatencyManager_SetVariantCallback(*a1, *v2);
      dynamicLatencyManager_LatencyTierChangeCallback(*a1, v14, v6);
    }

    CFRelease(v12);
  }

  else
  {
    APSLogErrorAt(0);
  }
}

uint64_t APSDynamicLatencyManagerSetVariant(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerSetVariant(APSDynamicLatencyManagerRef, CFStringRef)", 33554462, "[%{ptr}] APSDynamicLatencyManagerSetVariant\n", a1);
  }

  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  FigSimpleMutexLock();
  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  if (FigCFEqual())
  {
    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerSetVariant(APSDynamicLatencyManagerRef, CFStringRef)", 33554482, "[%{ptr}] SetVariant: variant=%@ is already set. Ignoring\n", a1, a2);
    }

    goto LABEL_38;
  }

  v6 = 7;
  v7 = &kDLMConfigurations;
  while (1)
  {
    v8 = *v7;
    if (FigCFEqual())
    {
      break;
    }

    v7 += 5;
    if (!--v6)
    {
      APSLogErrorAt(0);
      v9 = 4294960569;
      goto LABEL_39;
    }
  }

  v10 = dynamicLatencyManager_SetTiers(a1, v8, v7 + 1, 5, 0);
  if (v10)
  {
    v9 = v10;
LABEL_36:
    APSLogErrorAt(v10);
    goto LABEL_39;
  }

  for (i = 0; i != 120; i += 40)
  {
    if (FigCFEqual())
    {
      v13 = 0;
      goto LABEL_25;
    }
  }

  v12 = 0;
  while (!FigCFEqual())
  {
    v12 += 40;
    if (v12 == 160)
    {
      APSLogErrorAt(0);
      v9 = 4294960591;
      goto LABEL_39;
    }
  }

  v13 = 1;
LABEL_25:
  dynamicLatencyManager_GetCreationOptions(v13, (a1 + 20), (a1 + 16), (a1 + 24), (a1 + 32), (a1 + 40));
  v14 = *(a1 + 64);
  if (v14)
  {
    v10 = v14(a1, a2, *(a1 + 72));
    if (v10)
    {
      v9 = v10;
      goto LABEL_36;
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v10 = v15(a1, *(v7 + 2), 0, *(a1 + 56));
    v9 = v10;
    if (!v10)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_38:
  v9 = 0;
LABEL_39:
  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

uint64_t APSDynamicLatencyManagerAddPerformanceReport(uint64_t a1, const __CFDictionary *a2)
{
  v26 = 0;
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerAddPerformanceReport(APSDynamicLatencyManagerRef, CFDictionaryRef)", 33554462, "[%{ptr}] APSDynamicLatencyManagerAddPerformanceReport\n", a1);
  }

  if (!a1)
  {
    BooleanIfPresent = 0;
    goto LABEL_42;
  }

  if (!a2)
  {
    BooleanIfPresent = 0;
    goto LABEL_42;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  Int64 = CFDictionaryGetInt64();
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (!BooleanIfPresent)
  {
LABEL_42:
    APSLogErrorAt(BooleanIfPresent);
    return -6705;
  }

  v7 = CFDictionaryGetInt64();
  v8 = CFDictionaryGetInt64();
  Value = CFDictionaryGetValue(a2, @"GlitchDurationHistogram");
  if (!Value)
  {
    APSLogErrorAt(0);
    return -6727;
  }

  v10 = *(a1 + 20);
  if (v7 >= v10)
  {
    v11 = Value;
    v25 = v8;
    FigSimpleMutexLock();
    if (*(a1 + 88))
    {
      v12 = 0;
      while (!FigCFEqual())
      {
        v12 += 40;
        if (v12 == 160)
        {
          goto LABEL_16;
        }
      }

      if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerAddPerformanceReport(APSDynamicLatencyManagerRef, CFDictionaryRef)", 33554482, "[%{ptr}] AddPerformanceReport skipping report endpointID=%@ sessionID=%llu because isLiveAdaptive=%s\n", a1, TypedValue, Int64, "no");
      }

      goto LABEL_61;
    }

    APSLogErrorAt(0);
LABEL_16:
    if (CFDictionaryContainsKey(*(a1 + 128), TypedValue))
    {
      if (CFDictionaryGetInt64() == Int64)
      {
        if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerAddPerformanceReport(APSDynamicLatencyManagerRef, CFDictionaryRef)", 33554482, "[%{ptr}] AddPerformanceReport skipping report from endpointID=%@ sessionID=%llu because it is on deny list\n", a1, TypedValue, Int64);
        }

        goto LABEL_61;
      }

      CFDictionaryRemoveAllValues(*(a1 + 128));
    }

    v13 = CFDictionaryGetValue(*(a1 + 120), TypedValue);
    if (v13)
    {
      v14 = CFRetain(v13);
      if (v14)
      {
        goto LABEL_23;
      }
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v14 = Mutable;
      CFDictionarySetValue(*(a1 + 120), TypedValue, Mutable);
LABEL_23:
      v24 = v7;
      if (CFArrayGetCount(v14) && CFArrayGetValueAtIndex(v14, 0) && Int64 == CFDictionaryGetInt64())
      {
        CFArraySetValueAtIndex(v14, 0, a2);
        v16 = @"Updated";
      }

      else
      {
        CFArrayInsertValueAtIndex(v14, 0, a2);
        v16 = @"Added";
      }

      v17 = 0;
      for (i = 0; i < CFArrayGetCount(v14) && v17 < *(a1 + 16); ++i)
      {
        CFArrayGetValueAtIndex(v14, i);
        v17 += CFDictionaryGetInt64();
      }

      if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
      {
        FigSimpleMutexLock();
        v19 = v11[31];
        FigSimpleMutexUnlock();
        Count = CFArrayGetCount(v14);
        v21 = CFArrayGetCount(v14);
        LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerAddPerformanceReport(APSDynamicLatencyManagerRef, CFDictionaryRef)", 33554482, "[%{ptr}] %@ report endpointID=%@ sessionID=%llu durationSec=%llu glitches=%u minRenderDeadlineMs=%lld isLiveAdaptive=%s (totalReports=%d totalDurationSec=%llu old reports=%u)\n", a1, v16, TypedValue, Int64, v24, v19, v25, "no", Count, v17, v21 - i);
      }

      if (i < CFArrayGetCount(v14))
      {
        v27.length = CFArrayGetCount(v14) - i;
        v27.location = i;
        CFArrayReplaceValues(v14, v27, 0, 0);
      }

      FigSimpleMutexUnlock();
      CFRelease(v14);
      return v26;
    }

    APSLogErrorAt(0);
    v26 = -6728;
LABEL_61:
    FigSimpleMutexUnlock();
    return v26;
  }

  if (gLogCategory_APSDynamicLatencyManager <= 50)
  {
    if (gLogCategory_APSDynamicLatencyManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v26;
      }

      v10 = *(a1 + 20);
    }

    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerAddPerformanceReport(APSDynamicLatencyManagerRef, CFDictionaryRef)", 33554482, "[%{ptr}] AddPerformanceReport skipping report endpointID=%@ sessionID=%llu because duration=%llu is shorter than minimum=%u\n", a1, TypedValue, Int64, v7, v10);
  }

  return v26;
}

uint64_t APSDynamicLatencyManagerUpdate(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 16);
  context = xmmword_22234D080;
  LODWORD(context) = v4;
  v13 = 0.0;
  v14 = 0x7FFFFFFFLL;
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerUpdate(APSDynamicLatencyManagerRef, Boolean *)", 33554462, "[%{ptr}] APSDynamicLatencyManagerUpdate\n", a1);
  }

  if (!a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  FigSimpleMutexLock();
  if (!CFDictionaryGetCount(*(a1 + 120)))
  {
    goto LABEL_33;
  }

  v5 = *(a1 + 112);
  CFDictionaryApplyFunction(*(a1 + 120), dynamicLatencyManager_EndpointPerformance, &context);
  if (v5)
  {
    if (v13 > *(a1 + 40))
    {
      v6 = 0;
      v7 = @"Dropping";
      goto LABEL_15;
    }

    if (v13 > *(a1 + 32))
    {
      v6 = v5 - 1;
      v7 = @"Demoting";
      goto LABEL_15;
    }
  }

  if (v5 < *(a1 + 104) - 1 && *(&context + 1) >= *(a1 + 16))
  {
    v7 = @"Unchanged";
    v6 = v5;
    if (v13 <= *(a1 + 24))
    {
      v11 = *(*(a1 + 96) + 4 * v5) - *(*(a1 + 96) + 4 * (v5 + 1));
      v6 = v14 <= v11 ? v5 : v5 + 1;
      if (v14 > v11)
      {
        v7 = @"Promoting";
      }
    }
  }

  else
  {
    v7 = @"Unchanged";
    v6 = v5;
  }

LABEL_15:
  if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerUpdate(APSDynamicLatencyManagerRef, Boolean *)", 33554482, "[%{ptr}] UpdateTiers maxWeightedGlitches=%f minTotalDurationSec=%llu minRenderDeadlineMs=%lld oldLatencyTiersIdx=%d (%dms) newLatencyTiersIdx=%d (%dms) (%@)\n", a1, *&v13, *(&context + 1), v14, v5, *(*(a1 + 96) + 4 * v5), v6, *(*(a1 + 96) + 4 * v6), v7);
  }

  if (v5 != v6)
  {
    *(a1 + 112) = v6;
    v8 = *(*(a1 + 96) + 4 * v6);
    if (dynamicLatencyManager_IsLLAVariant(*(a1 + 88)))
    {
      CFDictionaryApplyFunction(*(a1 + 120), dynamicLatencyManager_AddSessionToDenyList, a1);
    }

    else if (v6 < v5)
    {
      CFDictionaryRemoveAllValues(*(a1 + 120));
    }

    CFDictionaryRemoveAllValues(*(a1 + 120));
    *a2 = 1;
    FigSimpleMutexUnlock();
    v9 = *(a1 + 48);
    if (v9)
    {
      return v9(a1, v8, v6, *(a1 + 56));
    }

    return 0;
  }

LABEL_33:
  *a2 = 0;
  FigSimpleMutexUnlock();
  return 0;
}

void dynamicLatencyManager_AddSessionToDenyList(const void *a1, CFArrayRef theArray, uint64_t a3)
{
  if (CFArrayGetCount(theArray))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      v7 = *(a3 + 128);
      Value = CFDictionaryGetValue(ValueAtIndex, @"SessionID");

      CFDictionarySetValue(v7, a1, Value);
    }
  }
}

uint64_t dynamicLatencyManager_EndpointPerformance(int a1, CFArrayRef theArray, unsigned int *a3)
{
  if (theArray && a3 && CFArrayGetCount(theArray))
  {
    return FigCFArrayApplyFunction();
  }

  return APSLogErrorAt(0);
}

uint64_t dynamicLatencyManager_SessionPerformance(const __CFDictionary *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    *a2 += CFDictionaryGetInt64();
    Int64 = CFDictionaryGetInt64();
    if ((Int64 & 0x8000000000000000) == 0)
    {
      *(a2 + 16) += Int64;
      ++*(a2 + 24);
    }

    Value = CFDictionaryGetValue(a1, @"GlitchDurationHistogram");
    v6 = &qword_22234D580;
    v7 = 3;
    do
    {
      result = APSStatsHistogramGetSampleCountInRange(Value, *(v6 - 2), *(v6 - 1));
      v9 = *v6;
      v6 += 3;
      *(a2 + 8) = *(a2 + 8) + result * v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    return APSLogErrorAt(0);
  }

  return result;
}

uint64_t APSDynamicLatencyManagerReset(uint64_t a1, BOOL *a2)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerReset(APSDynamicLatencyManagerRef, Boolean *)", 33554462, "[%{ptr}] APSDynamicLatencyManagerReset\n", a1);
  }

  if (a1 && a2)
  {
    if (gLogCategory_APSDynamicLatencyManager <= 50 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
    {
      Count = CFDictionaryGetCount(*(a1 + 120));
      LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerReset(APSDynamicLatencyManagerRef, Boolean *)", 33554482, "[%{ptr}] Deleting performance reports for %d endpoints\n", a1, Count);
    }

    FigSimpleMutexLock();
    CFDictionaryRemoveAllValues(*(a1 + 120));
    CFDictionaryRemoveAllValues(*(a1 + 128));
    v5 = *(a1 + 112);
    *(a1 + 112) = 0;
    FigSimpleMutexUnlock();
    if (v5 && (v6 = *(a1 + 48)) != 0 && (v7 = v6(a1, **(a1 + 96), 0, *(a1 + 56)), v7))
    {
      v8 = v7;
      APSLogErrorAt(v7);
    }

    else
    {
      v8 = 0;
      *a2 = v5 != 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v8;
}

uint64_t APSDynamicLatencyManagerGetLatencyTier(void *a1, _DWORD *a2, void *a3)
{
  if (gLogCategory_APSDynamicLatencyManager <= 30 && (gLogCategory_APSDynamicLatencyManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDynamicLatencyManager, "OSStatus APSDynamicLatencyManagerGetLatencyTier(APSDynamicLatencyManagerRef, uint32_t *, size_t *)", 33554462, "[%{ptr}] APSDynamicLatencyManagerGetLatencyTier\n", a1);
  }

  if (a1 && a2 && a3)
  {
    FigSimpleMutexLock();
    v6 = a1[14];
    *a2 = *(a1[12] + 4 * v6);
    *a3 = v6;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSDisplayUtilsGetAggregatedDisplayProtectionBits()
{
  if (protectionBitsFromPrefsIfPresent_onceToken != -1)
  {
    dispatch_once(&protectionBitsFromPrefsIfPresent_onceToken, &__block_literal_global_1152);
  }

  if (protectionBitsFromPrefsIfPresent_isPrefPresent)
  {
    return protectionBitsFromPrefsIfPresent_protectionBits;
  }

  DisplayList = IOMobileFramebufferCreateDisplayList();
  if (DisplayList)
  {
    v2 = DisplayList;
    Count = CFArrayGetCount(DisplayList);
    if (Count < 1)
    {
      CFRelease(v2);
    }

    else
    {
      v4 = Count;
      v5 = 0;
      v6 = 0;
      v7 = -1;
      do
      {
        CFArrayGetValueAtIndex(v2, v6);
        if (!IOMobileFramebufferOpenByName())
        {
          ProtectionOptions = IOMobileFramebufferGetProtectionOptions();
          v9 = 0;
          if (ProtectionOptions)
          {
            v9 = -1;
          }

          v7 &= v9;
          if (!ProtectionOptions)
          {
            ++v5;
          }
        }

        ++v6;
      }

      while (v4 != v6);
      CFRelease(v2);
      if (v5)
      {
        return FVDUtilsSupportedProtectionFlags();
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
  }

  return 0;
}

uint64_t __protectionBitsFromPrefsIfPresent_block_invoke()
{
  result = APSSettingsGetUInt64IfPresent(@"fakeDisplayProtectionBits", &protectionBitsFromPrefsIfPresent_protectionBits);
  protectionBitsFromPrefsIfPresent_isPrefPresent = result;
  if (result)
  {
    if (gLogCategory_APSDisplayUtils <= 50)
    {
      if (gLogCategory_APSDisplayUtils != -1)
      {
        return LogPrintF(&gLogCategory_APSDisplayUtils, "Boolean protectionBitsFromPrefsIfPresent(uint64_t *)_block_invoke", 33554482, "Using display protection bits from prefs: 0x%llx", protectionBitsFromPrefsIfPresent_protectionBits);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APSDisplayUtils, "Boolean protectionBitsFromPrefsIfPresent(uint64_t *)_block_invoke", 33554482, "Using display protection bits from prefs: 0x%llx", protectionBitsFromPrefsIfPresent_protectionBits);
      }
    }
  }

  return result;
}

uint64_t APSDisplayUtilsCopyDisplayCapabilities(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (gLogCategory_APSDisplayUtils <= 50 && (gLogCategory_APSDisplayUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDisplayUtils, "OSStatus APSDisplayUtilsCopyDisplayCapabilities(uint32_t, CFDictionaryRef *)", 33554482, "Copying display capabilities for display with ID=%u", a1);
  }

  AggregatedDisplayProtectionBits = APSDisplayUtilsGetAggregatedDisplayProtectionBits();
  if (AggregatedDisplayProtectionBits && gLogCategory_APSDisplayUtils <= 50 && (gLogCategory_APSDisplayUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDisplayUtils, "OSStatus APSDisplayUtilsCopyDisplayCapabilities(uint32_t, CFDictionaryRef *)", 33554482, "Display protection bits: 0x%llx", AggregatedDisplayProtectionBits);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetInt64();
  if (gLogCategory_APSDisplayUtils <= 30 && (gLogCategory_APSDisplayUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDisplayUtils, "OSStatus APSDisplayUtilsCopyDisplayCapabilities(uint32_t, CFDictionaryRef *)", 33554462, "DisplayCapabilities for display with ID=%u: %@", a1, Mutable);
  }

  *a2 = Mutable;
  return 0;
}

uint64_t APSWiFiTrafficRegistrationGetTypeID()
{
  if (gAPSWiFiTrafficRegistrationInitOnce != -1)
  {
    dispatch_once_f(&gAPSWiFiTrafficRegistrationInitOnce, 0, _APSWiFiTrafficRegistrationGetTypeID);
  }

  return gAPSWiFiTrafficRegistrationTypeID;
}

uint64_t _APSWiFiTrafficRegistrationGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSWiFiTrafficRegistrationTypeID = result;
  return result;
}

void _APSWiFiTrafficRegistrationFinalize(uint64_t a1)
{
  v7 = 0;
  [*(a1 + 40) clearTrafficRegistration:*(a1 + 32) error:&v7];
  v2 = v7;
  if (v7)
  {
    v3 = *(a1 + 56);
    if (*v3 <= 90)
    {
      if (*v3 != -1)
      {
LABEL_4:
        LogPrintF(v3, "void _APSWiFiTrafficRegistrationFinalize(CFTypeRef)", 33554522, "[%{ptr}] Failed to clear Traffic Registration [%{ptr}] %@", *(a1 + 48), a1, v2);
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        v3 = *(a1 + 56);
        v2 = v7;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  v4 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___APSWiFiRegistrationPostRegistrationRemovedEvent_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v4, block);
  v5 = *(a1 + 24);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 24) = 0;
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 16) = 0;
  }
}

uint64_t APSWiFiTrafficRegistrationCreate(void *a1, void *a2, unsigned int *a3, int a4, int a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v40 = 0u;
  v41 = 0u;
  *label = 0u;
  v39 = 0u;
  if (!a1 || !a2 || !a8)
  {
    APSLogErrorAt(0);
    v19 = 0;
    v20 = 0;
    v32 = 4294960591;
    goto LABEL_43;
  }

  if (gAPSWiFiTrafficRegistrationInitOnce != -1)
  {
    dispatch_once_f(&gAPSWiFiTrafficRegistrationInitOnce, 0, _APSWiFiTrafficRegistrationGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    v19 = 0;
    v20 = 0;
    v32 = 4294960568;
    goto LABEL_43;
  }

  v17 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = a6;
  *(Instance + 56) = a7;
  SNPrintF(label, 64, "APSWiFiTrafficRegistration.eventQueue.%{ptr}", Instance);
  v18 = dispatch_queue_create(label, 0);
  v17[3] = v18;
  if (!v18)
  {
    APSLogErrorAt(0);
    v20 = 0;
    v19 = 0;
LABEL_51:
    v32 = 4294960568;
    goto LABEL_42;
  }

  v19 = [objc_alloc(MEMORY[0x277D7BB10]) initWithAddress:*a3 | (*(a3 + 2) << 32)];
  if (!v19)
  {
    APSLogErrorAt(0);
    v20 = 0;
    goto LABEL_51;
  }

  v20 = [objc_alloc(MEMORY[0x277D7BA68]) initWithUniqueIdentifier:a2 peerAddress:v19];
  if (!v20)
  {
    APSLogErrorAt(0);
    goto LABEL_51;
  }

  if (!a4 || ![a2 isEqualToString:*MEMORY[0x277D7BA38]])
  {
    goto LABEL_26;
  }

  [a1 performRealtimeConnectivityCheckWithConfiguration:v20 error:&v37];
  if ([v37 code] == 13)
  {
    if (!a5)
    {
      goto LABEL_20;
    }

LABEL_17:
    v22 = v17[7];
    if (*v22 <= 50)
    {
      if (*v22 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_25;
        }

        v22 = v17[7];
      }

      LogPrintF(v22, "OSStatus APSWiFiTrafficRegistrationCreate(AWDLServiceDiscoveryManager *, AWDLTrafficRegistrationService, uint8_t *, Boolean, Boolean, void *, LogCategory *, APSWiFiTrafficRegistrationRef *)", 33554482, "[%{ptr}] Traffic Registration query failed: %@. Proceeding anyway.", v17[6], v37);
    }

LABEL_25:
    v37 = 0;
    goto LABEL_26;
  }

  v21 = [v37 code];
  if (a5 && v21 == 35)
  {
    goto LABEL_17;
  }

LABEL_20:
  v23 = NSErrorToOSStatus();
  if (v23)
  {
    v32 = v23;
    goto LABEL_56;
  }

  v24 = v17[7];
  if (*v24 <= 30)
  {
    if (*v24 != -1)
    {
LABEL_23:
      LogPrintF(v24, "OSStatus APSWiFiTrafficRegistrationCreate(AWDLServiceDiscoveryManager *, AWDLTrafficRegistrationService, uint8_t *, Boolean, Boolean, void *, LogCategory *, APSWiFiTrafficRegistrationRef *)", 33554462, "[%{ptr}] Traffic Registration query succeeded", v17[6]);
      goto LABEL_26;
    }

    if (_LogCategory_Initialize())
    {
      v24 = v17[7];
      goto LABEL_23;
    }
  }

LABEL_26:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v34 = v17[7];
    if (*v34 <= 90)
    {
      if (*v34 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_58;
        }

        v34 = v17[7];
      }

      v35 = v17[6];
      v36 = IsAppleInternalBuild();
      LogPrintF(v34, "OSStatus APSWiFiTrafficRegistrationCreate(AWDLServiceDiscoveryManager *, AWDLTrafficRegistrationService, uint8_t *, Boolean, Boolean, void *, LogCategory *, APSWiFiTrafficRegistrationRef *)", 33554522, "[%{ptr}] Unable to configure Traffic Registration.%?{end} Please update this device to a more recent build.", v35, v36 == 0);
    }

LABEL_58:
    v32 = 4294960526;
    goto LABEL_42;
  }

  Int64 = APSSettingsGetInt64(@"legacyTrafficRegistration", 0);
  [v20 setLegacyUpgradeRequired:Int64 != 0];
  [a1 setTrafficRegistration:v20 error:&v37];
  v23 = NSErrorToOSStatus();
  if (v23)
  {
    v32 = v23;
LABEL_56:
    APSLogErrorAt(v23);
    goto LABEL_42;
  }

  v26 = v17[7];
  v27 = *v26;
  if (*v26 <= 50)
  {
    if (v27 != -1)
    {
LABEL_30:
      v28 = Int64 != 0;
      v29 = v17[6];
      if (*MEMORY[0x277D7BA38] == a2)
      {
        v30 = "AirPlay";
      }

      else
      {
        v30 = "?";
      }

      if (v27 > 30)
      {
        v31 = 1;
      }

      else
      {
        v31 = v27 == -1 && _LogCategory_Initialize() == 0;
      }

      LogPrintF(v26, "OSStatus APSWiFiTrafficRegistrationCreate(AWDLServiceDiscoveryManager *, AWDLTrafficRegistrationService, uint8_t *, Boolean, Boolean, void *, LogCategory *, APSWiFiTrafficRegistrationRef *)", 33554482, "[%{ptr}] Created %s Traffic Registration%?s [%{ptr}]%?{end} with %@", v29, v30, v28, " (legacy)", v17, v31, v20, v37, *label, *&label[8], v39, v40, v41);
      goto LABEL_41;
    }

    if (_LogCategory_Initialize())
    {
      v26 = v17[7];
      v27 = *v26;
      goto LABEL_30;
    }
  }

LABEL_41:
  v17[5] = a1;
  v17[4] = v20;
  v32 = 0;
  *a8 = CFRetain(v17);
LABEL_42:
  CFRelease(v17);
LABEL_43:

  return v32;
}

void APSWiFiTrafficRegistrationSetRemovalHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __APSWiFiTrafficRegistrationSetRemovalHandler_block_invoke;
  v3[3] = &unk_2784A3EF0;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_sync(v2, v3);
}

void __APSWiFiTrafficRegistrationSetRemovalHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _Block_copy(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  if (v5)
  {
    _Block_release(v5);
    v4 = *(a1 + 40);
  }

  *(v4 + 16) = v3;
}

uint64_t APSConnectionInterfaceManagerGetTypeID()
{
  if (APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerInitOnce != -1)
  {
    dispatch_once_f(&APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerInitOnce, &APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerTypeID, interfaceManager_registerCMClass);
  }

  return APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerTypeID;
}

uint64_t interfaceManager_registerCMClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void connectionInterfaceManager_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

uint64_t APSConnectionInterfaceManagerCreate(const __CFAllocator *a1, void *a2)
{
  if (APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerInitOnce != -1)
  {
    dispatch_once_f(&APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerInitOnce, &APSConnectionInterfaceManagerGetTypeID_connectionInterfaceManagerTypeID, interfaceManager_registerCMClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v8 = 4294895426;
    APSLogErrorAt(0);
    return v8;
  }

  v5 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v6 = dispatch_queue_create("com.apple.airplay.connectionInterfaceManager", 0);
  v5[2] = v6;
  if (!v6)
  {
    APSLogErrorAt(0);
LABEL_11:
    v8 = 4294895426;
    CFRelease(v5);
    return v8;
  }

  Mutable = CFSetCreateMutable(a1, 0, 0);
  v5[4] = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt(0);
    APSSignalErrorAt(0xFFFEE742, "Failed allocating set", "APSConnectionInterfaceManagerCreate");
    goto LABEL_11;
  }

  v8 = 0;
  *a2 = v5;
  return v8;
}

uint64_t APSConnectionInterfaceManagerSelectInterface(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v3 = *(a1 + 16);
  v7 = 0;
  v5[2] = a3;
  context[0] = &v7;
  context[1] = v5;
  context[2] = connectionInterfaceManager_selectInterfaceInternal;
  if (!v3)
  {
    return 4294960591;
  }

  dispatch_sync_f(v3, context, APSDispatchSyncTaskCallback);
  return v7;
}

uint64_t connectionInterfaceManager_selectInterfaceInternal(uint64_t *a1)
{
  if (!*(a1 + 2))
  {
    APSLogErrorAt(0);
    v5 = 4294895425;
    APSSignalErrorAt(0xFFFEE741, "Invalid interface", "connectionInterfaceManager_selectInterfaceInternal");
    return v5;
  }

  if (!CFSetGetCount(*(*a1 + 32)))
  {
    if (gLogCategory_APSConnectionInterfaceManager <= 40 && (gLogCategory_APSConnectionInterfaceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSConnectionInterfaceManager, "OSStatus connectionInterfaceManager_selectInterfaceInternal(void *)", 33554472, "Requested interface %d with no previous selection\n", *(a1 + 2));
    }

    v2 = *a1;
    *(*a1 + 24) = *(a1 + 2);
    goto LABEL_15;
  }

  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(a1 + 2);
  if (v3 == v4)
  {
    if (gLogCategory_APSConnectionInterfaceManager > 30)
    {
      goto LABEL_15;
    }

    if (gLogCategory_APSConnectionInterfaceManager == -1)
    {
      v9 = _LogCategory_Initialize();
      v2 = *a1;
      if (!v9)
      {
LABEL_15:
        v6 = (*(v2 + 40) + 1);
        *(v2 + 40) = v6;
        CFSetSetValue(*(v2 + 32), v6);
        v7 = a1[2];
        v5 = 0;
        if (v7)
        {
          *v7 = *(*a1 + 40);
        }

        return v5;
      }

      v3 = *(v2 + 24);
    }

    LogPrintF(&gLogCategory_APSConnectionInterfaceManager, "OSStatus connectionInterfaceManager_selectInterfaceInternal(void *)", 33554462, "Requested the already selected interface %d\n", v3);
    v2 = *a1;
    goto LABEL_15;
  }

  v5 = 4294895424;
  if (gLogCategory_APSConnectionInterfaceManager <= 30)
  {
    if (gLogCategory_APSConnectionInterfaceManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v5;
      }

      v4 = *(a1 + 2);
      v3 = *(*a1 + 24);
    }

    LogPrintF(&gLogCategory_APSConnectionInterfaceManager, "OSStatus connectionInterfaceManager_selectInterfaceInternal(void *)", 33554462, "Requested interface %d while %d was already selected\n", v4, v3);
  }

  return v5;
}

uint64_t APSConnectionInterfaceManagerReleaseInterfaceSelection(uint64_t a1, unsigned int a2)
{
  v3[0] = a1;
  v3[1] = a2;
  dispatch_sync_f(*(a1 + 16), v3, connectionInterfaceManager_releaseInterfaceSelection);
  return 0;
}

CFIndex connectionInterfaceManager_releaseInterfaceSelection(_DWORD *a1)
{
  if (gLogCategory_APSConnectionInterfaceManager <= 30 && (gLogCategory_APSConnectionInterfaceManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSConnectionInterfaceManager, "void connectionInterfaceManager_releaseInterfaceSelection(void *)", 33554462, "Releasing interface selection for token %d\n", a1[2]);
  }

  CFSetRemoveValue(*(*a1 + 32), a1[2]);
  result = CFSetGetCount(*(*a1 + 32));
  if (!result)
  {
    if (gLogCategory_APSConnectionInterfaceManager <= 40)
    {
      if (gLogCategory_APSConnectionInterfaceManager != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APSConnectionInterfaceManager, "void connectionInterfaceManager_releaseInterfaceSelection(void *)", 33554472, "No selection token left. Releasing interface reservation\n");
      }
    }

    *(*a1 + 24) = 0;
  }

  return result;
}

uint64_t APSReferencingAllocatorCreate(const __CFAllocator *a1, void *a2, CFAllocatorRef *a3)
{
  memset(&context.reallocate, 0, 24);
  if (a2 && a3)
  {
    context.version = 0;
    context.info = a2;
    context.retain = MEMORY[0x277CBE558];
    context.release = MEMORY[0x277CBE550];
    context.copyDescription = MEMORY[0x277CBE530];
    context.allocate = refAllocator_Allocate;
    v4 = CFAllocatorCreate(a1, &context);
    *a3 = v4;
    if (v4)
    {
      return 0;
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
}

uint64_t APSReferencingAllocatorGetOverheadBytes()
{
  if (APSReferencingAllocatorGetOverheadBytes_sOnce != -1)
  {
    dispatch_once_f(&APSReferencingAllocatorGetOverheadBytes_sOnce, &APSReferencingAllocatorGetOverheadBytes_sOverheadBytes, refAllocator_calculateOverheadBytes);
  }

  return APSReferencingAllocatorGetOverheadBytes_sOverheadBytes;
}

void refAllocator_calculateOverheadBytes(void *a1)
{
  context.reallocate = 0;
  memset(&context.retain, 0, 24);
  cf = 0;
  context.version = 0;
  context.info = a1;
  context.allocate = refAllocatorOverhead_Allocate;
  context.deallocate = refAllocatorOverhead_Deallocate;
  context.preferredSize = 0;
  v1 = CFAllocatorCreate(*MEMORY[0x277CBECE8], &context);
  v2 = v1;
  if (!v1 || (v1 = APSReferencingAllocatorCreate(v1, *MEMORY[0x277CBEEE8], &cf), v1))
  {
    APSLogErrorAt(v1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t APSPSGDataSourceGetClassID()
{
  if (APSPSGDataSourceGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSPSGDataSourceGetClassID_sRegisterOnce, &APSPSGDataSourceGetClassID_sClassID, psgDataSource_registerBaseClass);
  }

  return APSPSGDataSourceGetClassID_sClassID;
}

uint64_t psgDataSource_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&psgDataSource_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSPSGDataSourceGetTypeID()
{
  if (APSPSGDataSourceGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSPSGDataSourceGetClassID_sRegisterOnce, &APSPSGDataSourceGetClassID_sClassID, psgDataSource_registerBaseClass);
  }

  v1 = APSPSGDataSourceGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSFlatQueueGetTypeID()
{
  if (gAPSFlatQueueInitOnce != -1)
  {
    dispatch_once_f(&gAPSFlatQueueInitOnce, 0, _APSFlatQueueGetTypeID);
  }

  return gAPSFlatQueueTypeID;
}

uint64_t _APSFlatQueueGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSFlatQueueTypeID = result;
  return result;
}

void _APSFlatQueueFinalize(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 96))
  {
    v2 = *(a1 + 80);
    do
    {
      (*(a1 + 32))(a1 + 16, *(a1 + 72) + *(a1 + 16) * v2);
      v2 = (*(a1 + 80) + 1) & *(a1 + 64);
      *(a1 + 80) = v2;
      v3 = *(a1 + 96) - 1;
      *(a1 + 96) = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v4(a1 + 16);
  }

  v5 = *(a1 + 72);

  free(v5);
}

uint64_t APSFlatQueueCreate(__int128 *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v5 = 4294960591;
  if (a3 && *a1)
  {
    if (gAPSFlatQueueInitOnce != -1)
    {
      dispatch_once_f(&gAPSFlatQueueInitOnce, 0, _APSFlatQueueGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 96) = 0;
      *(Instance + 64) = 0u;
      *(Instance + 80) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      v8 = *a1;
      v9 = a1[1];
      *(Instance + 48) = *(a1 + 4);
      *(Instance + 16) = v8;
      *(Instance + 32) = v9;
      v10 = iceil2();
      v7[7] = v10;
      v7[8] = v10 - 1;
      v11 = malloc_type_malloc(v7[2] * v10, 0xEE79D249uLL);
      v7[9] = v11;
      if (v11)
      {
        v5 = 0;
        *a3 = v7;
      }

      else
      {
        CFRelease(v7);
        return 4294960568;
      }

      return v5;
    }

    v5 = 4294960568;
  }

  v13 = *(a1 + 3);
  if (v13)
  {
    v13(a1, a2);
  }

  return v5;
}

uint64_t APSFlatQueueGetCapacity(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t APSFlatQueueGetCount(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t APSFlatQueueEnqueue(uint64_t a1, void *__src)
{
  result = 4294960591;
  if (a1 && __src)
  {
    v5 = *(a1 + 96);
    if (v5 == *(a1 + 56))
    {
      if (v5)
      {
        v6 = 2 * v5;
      }

      else
      {
        v6 = 1;
      }

      v7 = malloc_type_realloc(*(a1 + 72), *(a1 + 16) * v6, 0x998F6812uLL);
      if (!v7)
      {
        return 4294960568;
      }

      v8 = v7;
      v10 = (a1 + 88);
      v9 = *(a1 + 88);
      v11 = *(a1 + 56);
      v12 = *(a1 + 80);
      if (v9 <= v11 - v12)
      {
        memcpy(&v7[*(a1 + 16) * v11], v7, *(a1 + 16) * v9);
      }

      else
      {
        memcpy(&v7[*(a1 + 16) * (v12 + v11)], &v7[*(a1 + 16) * v12], *(a1 + 16) * (v11 - v12));
        v10 = (a1 + 80);
      }

      *v10 += *(a1 + 56);
      *(a1 + 56) = v6;
      *(a1 + 64) = v6 - 1;
      *(a1 + 72) = v8;
    }

    else
    {
      v8 = *(a1 + 72);
    }

    v13 = *(a1 + 24);
    if (v13)
    {
      result = v13();
      if (result)
      {
        return result;
      }
    }

    else
    {
      memcpy(&v8[*(a1 + 16) * *(a1 + 88)], __src, *(a1 + 16));
    }

    result = 0;
    v14 = *(a1 + 96) + 1;
    *(a1 + 88) = (*(a1 + 88) + 1) & *(a1 + 64);
    *(a1 + 96) = v14;
  }

  return result;
}

uint64_t APSFlatQueueDequeue(size_t *a1, void *__dst)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (!a1[12])
  {
    return 4294960546;
  }

  if (__dst)
  {
    memcpy(__dst, (a1[9] + a1[2] * a1[10]), a1[2]);
LABEL_5:
    result = 0;
    a1[10] = (a1[10] + 1) & a1[8];
    --a1[12];
    return result;
  }

  v4 = a1[4];
  if (!v4)
  {
    goto LABEL_5;
  }

  result = v4();
  if (!result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t APSFlatQueuePeek(size_t *a1, void *__dst)
{
  result = 4294960591;
  if (a1 && __dst)
  {
    if (a1[12])
    {
      memcpy(__dst, (a1[9] + a1[2] * a1[10]), a1[2]);
      return 0;
    }

    else
    {
      return 4294960546;
    }
  }

  return result;
}

uint64_t APSFlatQueueRemoveAllValues(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (*(a1 + 32))
  {
    if (*(a1 + 96))
    {
      v2 = *(a1 + 80);
      while (1)
      {
        result = (*(a1 + 32))(a1 + 16, *(a1 + 72) + *(a1 + 16) * v2);
        if (result)
        {
          break;
        }

        v2 = (*(a1 + 80) + 1) & *(a1 + 64);
        *(a1 + 80) = v2;
        v4 = *(a1 + 96) - 1;
        *(a1 + 96) = v4;
        if (!v4)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(a1 + 80) = *(a1 + 88);
    *(a1 + 96) = 0;
  }

  return result;
}

uint64_t APSFlatQueueDequeueWhileF(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  result = 4294960591;
  if (a1 && a2)
  {
    if (a1[12])
    {
      v7 = a1[10];
      while (1)
      {
        v8 = a1[9] + a1[2] * v7;
        result = a2(v8, a3);
        if (!result)
        {
          break;
        }

        v9 = a1[4];
        if (v9)
        {
          result = v9(a1 + 2, v8);
          if (result)
          {
            break;
          }
        }

        v7 = (a1[10] + 1) & a1[8];
        a1[10] = v7;
        v10 = a1[12] - 1;
        a1[12] = v10;
        if (!v10)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t APSFlatQueueDequeueWhileB(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = flatQueue_dequeueWhileBCallbackF;
  }

  else
  {
    v3 = 0;
  }

  return APSFlatQueueDequeueWhileF(a1, v3, a2);
}

uint64_t APSDebugAllocatorCreate(const void *a1, __CFString *a2, CFAllocatorRef *a3)
{
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E004095A892B6uLL);
  if (!v6)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v7 = v6;
  memset(&v21, 0, sizeof(v21));
  atomic_store(1uLL, v6);
  if (a1)
  {
    v8 = CFRetain(a1);
  }

  else
  {
    v8 = 0;
  }

  v7[2] = v8;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = &stru_28358B348;
  }

  v7[3] = CFRetain(v9);
  if ((APSSettingsGetIntWithOverrideAndDefault(@"debugAllocatorHighWaterUs", 0, 100) & 0x80000000) != 0)
  {
    IntWithOverrideAndDefault = 0;
  }

  else
  {
    IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"debugAllocatorHighWaterUs", 0, 100);
  }

  v7[6] = IntWithOverrideAndDefault;
  v11 = *MEMORY[0x277CBECE8];
  v12 = APSAtomicMessageQueueCreate(*MEMORY[0x277CBECE8], 40, v7 + 4);
  if (v12)
  {
    v19 = v12;
LABEL_27:
    APSLogErrorAt(v12);
    goto LABEL_20;
  }

  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v14 = dispatch_queue_create("APSDebugAllocator", v13);
  v7[7] = v14;
  if (!v14)
  {
LABEL_28:
    APSLogErrorAt(0);
    v19 = 4294960568;
    goto LABEL_20;
  }

  v12 = APSRealTimeSignalCreate(v14, v7, dbgAllocator_messageSignalHandler, 0, v7 + 5);
  if (v12)
  {
    v19 = v12;
    goto LABEL_27;
  }

  atomic_store(0, v7 + 11);
  atomic_store(0, v7 + 12);
  Mutable = CFDictionaryCreateMutable(v11, 0, 0, 0);
  v7[9] = Mutable;
  if (!Mutable)
  {
    goto LABEL_28;
  }

  v16 = CFDictionaryCreateMutable(v11, 0, 0, 0);
  v7[10] = v16;
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7[7]);
  v7[8] = v17;
  if (!v17)
  {
    goto LABEL_28;
  }

  dispatch_set_context(v17, v7);
  dispatch_source_set_event_handler_f(v7[8], dbgAllocator_timerTick);
  dispatch_source_set_timer(v7[8], 0, 0x12A05F200uLL, 0x4C4B40uLL);
  dispatch_resume(v7[8]);
  v21.copyDescription = 0;
  v21.version = 0;
  v21.allocate = dbgAllocator_allocate;
  v21.reallocate = 0;
  v21.deallocate = dbgAllocator_deallocate;
  v21.preferredSize = dbgAllocator_preferredSize;
  v21.info = v7;
  v21.retain = dbgAllocator_retain;
  v21.release = dbgAllocator_release;
  v18 = CFAllocatorCreate(v11, &v21);
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = 0;
  v7[1] = v18;
  *a3 = v18;
LABEL_20:
  dbgAllocator_release(v7);
  return v19;
}

void dbgAllocator_release(void *a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 5);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_source_cancel(v4);
      dispatch_sync_f(*(a1 + 7), a1, dbgAllocator_flush);
      dispatch_release(*(a1 + 8));
    }

    v5 = *(a1 + 7);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(a1 + 10);
    if (v6)
    {
      CFDictionaryApplyFunction(v6, dbgAllocator_freeStatsApplier, a1);
      CFRelease(*(a1 + 10));
    }

    v7 = *(a1 + 9);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 2);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 3);
    if (v9)
    {
      CFRelease(v9);
    }

    free(a1);
  }
}

uint64_t dbgAllocator_deallocate(void *a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v4 = mach_absolute_time();
  CFAllocatorDeallocate(*(a2 + 16), a1);
  LODWORD(v8) = 2;
  *&v9 = a1;
  v10 = mach_absolute_time() - v4;
  result = APSAtomicMessageQueueSendMessage(*(a2 + 32), &v8);
  v6 = *(*(a2 + 40) + 16);
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v6 + 10, &v7, 2u, memory_order_release, memory_order_relaxed);
  if (v7 == 1)
  {

    return caulk::concurrent::messenger::enqueue((v6 + 6), v6);
  }

  return result;
}

uint64_t dbgAllocator_allocate(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = mach_absolute_time();
  v7 = MEMORY[0x223DB3470](a3[2], a1, 4199042959, a2);
  v8 = mach_absolute_time();
  if (v7)
  {
    v9 = 1;
    v12[1] = a1;
    v12[0] = 1;
    v12[2] = 0;
    v12[3] = v7;
    v12[4] = v8 - v6;
    APSAtomicMessageQueueSendMessage(a3[4], v12);
    v10 = *(a3[5] + 16);
    atomic_compare_exchange_strong_explicit(v10 + 10, &v9, 2u, memory_order_release, memory_order_relaxed);
    if (v9 == 1)
    {
      caulk::concurrent::messenger::enqueue((v10 + 6), v10);
    }
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v7;
}

void dbgAllocator_timerTick(void *context)
{
  if (gLogCategory_APSDebugAllocator <= 50 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_timerTick(void *)", 33554482, "[%{ptr} '%@'] stats", *(context + 1), *(context + 3));
  }

  CFDictionaryApplyFunction(*(context + 10), dbgAllocator_logStatsApplier, context);
  v2 = *(context + 10);

  CFDictionaryApplyFunction(v2, dbgAllocator_resetStatsApplier, context);
}

double dbgAllocator_resetStatsApplier(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 8) = -1;
  *(a2 + 40) = -1;
  return result;
}

uint64_t dbgAllocator_logStatsApplier(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = result;
  if (!*a2 && !a2[4])
  {
    return result;
  }

  if (gLogCategory_APSDebugAllocator <= 50)
  {
    if (gLogCategory_APSDebugAllocator != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_logStatsApplier(const void *, const void *, void *)", 33554482, "[%{ptr} '%@']  size=%llu", *(a3 + 8), *(a3 + 24), v5);
    }
  }

  v6 = *a2;
  if (*a2 && gLogCategory_APSDebugAllocator <= 50)
  {
    if (gLogCategory_APSDebugAllocator == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_12;
      }

      v6 = *a2;
    }

    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v9 = UpTicksToMicroseconds();
    v10 = UpTicksToMicroseconds();
    v11 = UpTicksToMicroseconds();
    result = LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_logStatsApplier(const void *, const void *, void *)", 33554482, "[%{ptr} '%@']   alloc: count=%llu min=%lluus max=%lluus avg=%lluus", v7, v8, v6, v9, v10, v11);
  }

LABEL_12:
  v12 = a2[4];
  if (v12 && gLogCategory_APSDebugAllocator <= 50)
  {
    if (gLogCategory_APSDebugAllocator != -1)
    {
LABEL_15:
      v13 = *(a3 + 8);
      v14 = *(a3 + 24);
      v15 = UpTicksToMicroseconds();
      v16 = UpTicksToMicroseconds();
      v17 = UpTicksToMicroseconds();
      return LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_logStatsApplier(const void *, const void *, void *)", 33554482, "[%{ptr} '%@']   dealloc: count=%llu min=%lluus max=%lluus avg=%lluus", v13, v14, v12, v15, v16, v17);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v12 = a2[4];
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t dbgAllocator_messageSignalHandler(uint64_t a1)
{
  v17 = 0;
  *key = 0u;
  *v16 = 0u;
  __swp(v2, (a1 + 88));
  __swp(v1, (a1 + 96));
  if (v2 && gLogCategory_APSDebugAllocator <= 50 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_messageSignalHandler(void *)", 33554482, "[%{ptr} '%@'] missed allocs %llu", *(a1 + 8), *(a1 + 24), v2);
  }

  if (v1 && gLogCategory_APSDebugAllocator <= 50 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_messageSignalHandler(void *)", 33554482, "[%{ptr} '%@'] missed deallocs %llu", *(a1 + 8), *(a1 + 24), v1);
  }

  while (1)
  {
    result = APSAtomicMessageQueueReadMessage(*(a1 + 32), key);
    if (!result)
    {
      return result;
    }

    v5 = v17;
    v6 = UpTicksToMicroseconds();
    v7 = v6;
    if (LODWORD(key[0]) == 2)
    {
      value = 0;
      if (v6 >= *(a1 + 48))
      {
        if (gLogCategory_APSDebugAllocator <= 90 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_messageHandler(APSDebugAllocatorInfo *, const APSDebugAllocatorMessage *)", 33554522, "[%{ptr} '%@'] ### dealloc( %p) t=%lluus", *(a1 + 8), *(a1 + 24), v16[0], v7);
        }
      }

      else if (gLogCategory_APSDebugAllocator <= 30 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_messageHandler(APSDebugAllocatorInfo *, const APSDebugAllocatorMessage *)", 33554462, "[%{ptr} '%@'] dealloc( %p) t=%lluus", *(a1 + 8), *(a1 + 24), v16[0], v7);
      }

      v12 = v16[0];
      if (CFDictionaryGetValueIfPresent(*(a1 + 72), v16[0], &value))
      {
        v13 = CFDictionaryGetValue(*(a1 + 80), value);
        v14 = v13[5];
        ++v13[4];
        if (v5 < v14)
        {
          v13[5] = v5;
        }

        if (v5 > v13[6])
        {
          v13[6] = v5;
        }

        v13[7] += v5;
        CFDictionaryRemoveValue(*(a1 + 72), v12);
      }
    }

    else if (LODWORD(key[0]) == 1)
    {
      if (v6 >= *(a1 + 48))
      {
        if (gLogCategory_APSDebugAllocator <= 90 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_messageHandler(APSDebugAllocatorInfo *, const APSDebugAllocatorMessage *)", 33554522, "[%{ptr} '%@'] ### alloc( %llu) -> %p t=%lluus", *(a1 + 8), *(a1 + 24), key[1], v16[1], v7);
        }
      }

      else if (gLogCategory_APSDebugAllocator <= 30 && (gLogCategory_APSDebugAllocator != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSDebugAllocator, "void dbgAllocator_messageHandler(APSDebugAllocatorInfo *, const APSDebugAllocatorMessage *)", 33554462, "[%{ptr} '%@'] alloc( %llu) -> %p t=%lluus", *(a1 + 8), *(a1 + 24), key[1], v16[1], v7);
      }

      v8 = key[1];
      v9 = CFDictionaryGetValue(*(a1 + 80), key[1]);
      if (v9)
      {
LABEL_34:
        CFDictionarySetValue(*(a1 + 72), v16[1], v8);
        v11 = v9[1];
        ++*v9;
        if (v5 < v11)
        {
          v9[1] = v5;
        }

        if (v5 > v9[2])
        {
          v9[2] = v5;
        }

        v9[3] += v5;
      }

      else
      {
        v10 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
        if (v10)
        {
          v9 = v10;
          *(v10 + 2) = 0u;
          *(v10 + 3) = 0u;
          *v10 = 0u;
          *(v10 + 1) = 0u;
          v10[1] = -1;
          v10[5] = -1;
          CFDictionarySetValue(*(a1 + 80), v8, v10);
          goto LABEL_34;
        }

        APSLogErrorAt(0);
      }
    }
  }
}

uint64_t APSPriorityDispatcherGetTypeID()
{
  if (gAPSPriorityDispatcherInitOnce != -1)
  {
    dispatch_once_f(&gAPSPriorityDispatcherInitOnce, 0, _APSPriorityDispatcherGetTypeID);
  }

  return gAPSPriorityDispatcherTypeID;
}

uint64_t _APSPriorityDispatcherGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSPriorityDispatcherTypeID = result;
  return result;
}

uint64_t _APSPriorityDispatcherFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
    a1[2] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
    a1[5] = 0;
  }

  result = a1[3];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    a1[3] = 0;
  }

  if (gLogCategory_APSPriorityDispatcher <= 50)
  {
    if (gLogCategory_APSPriorityDispatcher != -1)
    {
      return LogPrintF(&gLogCategory_APSPriorityDispatcher, "void _APSPriorityDispatcherFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalized", a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSPriorityDispatcher, "void _APSPriorityDispatcherFinalize(CFTypeRef)", 33554482, "[%{ptr}] finalized", a1);
    }
  }

  return result;
}

uint64_t APSPriorityDispatcherCreate(NSObject *a1, uint64_t a2, CFTypeRef *a3)
{
  if (a1 && a3)
  {
    if (gAPSPriorityDispatcherInitOnce != -1)
    {
      dispatch_once_f(&gAPSPriorityDispatcherInitOnce, 0, _APSPriorityDispatcherGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      dispatch_retain(a1);
      v7[2] = a1;
      v8 = FigSimpleMutexCreate();
      v7[3] = v8;
      if (v8)
      {
        v9 = priorityDispatcher_setPriority(v7, a2, 1);
        if (v9)
        {
          v11 = v9;
          APSLogErrorAt(v9);
        }

        else
        {
          if (gLogCategory_APSPriorityDispatcher <= 50 && (gLogCategory_APSPriorityDispatcher != -1 || _LogCategory_Initialize()))
          {
            MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue();
            LogPrintF(&gLogCategory_APSPriorityDispatcher, "OSStatus APSPriorityDispatcherCreate(dispatch_queue_t, FigThreadPriority, APSPriorityDispatcherRef *)", 33554482, "[%{ptr}] created with initial priority %d", v7, MachThreadPriorityValue);
          }

          v11 = 0;
          *a3 = CFRetain(v7);
        }
      }

      else
      {
        APSLogErrorAt(0);
        v11 = 4294960568;
      }

      CFRelease(v7);
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

  return v11;
}

uint64_t priorityDispatcher_setPriority(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v4 = a2;
  FigSimpleMutexLock();
  if (!a3)
  {
    if (*(a1 + 32) == v4)
    {
      v13 = 0;
      goto LABEL_16;
    }

    if (gLogCategory_APSPriorityDispatcher <= 50 && (gLogCategory_APSPriorityDispatcher != -1 || _LogCategory_Initialize()))
    {
      MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue();
      v7 = FigThreadGetMachThreadPriorityValue();
      LogPrintF(&gLogCategory_APSPriorityDispatcher, "OSStatus priorityDispatcher_setPriority(APSPriorityDispatcherRef, FigThreadPriority, Boolean)", 33554482, "[%{ptr}] changing priority from %d to %d", a1, MachThreadPriorityValue, v7);
    }
  }

  v8 = FigThreadGetMachThreadPriorityValue();
  label = dispatch_queue_get_label(*(a1 + 16));
  SNPrintF(v15, 256, "APSPriorityDispatcher.%{ptr}.pri.%d%?{end}.%s", a1, v8, *label == 0, label);
  v10 = FigDispatchQueueCreateWithPriority();
  if (!v10)
  {
    APSLogErrorAt(0);
    v13 = 4294960568;
LABEL_16:
    FigSimpleMutexUnlock();
    return v13;
  }

  v11 = v10;
  v12 = *(a1 + 40);
  if (v12)
  {
    dispatch_release(v12);
    *(a1 + 40) = 0;
  }

  dispatch_retain(v11);
  *(a1 + 40) = v11;
  *(a1 + 32) = v4;
  dispatch_retain(*(a1 + 16));
  dispatch_async_f(*(a1 + 40), *(a1 + 16), priorityDispatcher_syncFlushOnQueue);
  FigSimpleMutexUnlock();
  dispatch_release(v11);
  return 0;
}

void priorityDispatcher_syncFlushOnQueue(NSObject *a1)
{
  dispatch_sync_f(a1, 0, priorityDispatcher_flush);
  if (a1)
  {

    dispatch_release(a1);
  }
}

uint64_t priorityDispatcher_dispatchBlock(uint64_t a1, void *aBlock, int a3)
{
  if (a1 && aBlock)
  {
    v5 = _Block_copy(aBlock);
    if (v5)
    {
      v6 = v5;
      v7 = priorityDispatcher_dispatchFunction(a1, priorityDispatcher_invokeAndReleaseBlock, v5, a3);
      v8 = v7;
      if (v7)
      {
        APSLogErrorAt(v7);
        _Block_release(v6);
      }
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

  return v8;
}

void priorityDispatcher_invokeAndReleaseBlock(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

uint64_t _APSRTPJitterBufferNullDecodeInputCallback(uint64_t a1, int *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*a2)
  {
    if (*(a5 + 8))
    {
      v6 = 0;
      result = 4294960546;
    }

    else
    {
      *(a3 + 16) = &_APSRTPJitterBufferNullDecodeInputCallback_missingData;
      *(a3 + 8) = *(*a5 + 100);
      if (a4)
      {
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        *a4 = a5 + 16;
      }

      result = 0;
      v6 = 1;
      *(a5 + 32) = 1;
    }
  }

  else
  {
    result = 0;
    v6 = 1;
  }

  *a2 = v6;
  return result;
}

uint64_t __APSRTPJitterBufferGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APSRTPJitterBufferGetTypeID_typeID = result;
  return result;
}

uint64_t APSRTPJitterBufferGetTypeID()
{
  if (APSRTPJitterBufferGetTypeID_once != -1)
  {
    dispatch_once(&APSRTPJitterBufferGetTypeID_once, &__block_literal_global_1277);
  }

  return APSRTPJitterBufferGetTypeID_typeID;
}

const void *APSRTPJitterBufferGetEmptyPacket(uint64_t a1, int *a2)
{
  if (!a1 || (v3 = *(a1 + 48)) == 0)
  {
    APSLogErrorAt(0);
    result = 0;
    v5 = -6718;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = CMSimpleQueueDequeue(v3);
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = -6728;
  }

  if (!result)
  {
    result = 0;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v5;
  }

  return result;
}

intptr_t APSRTPJitterBufferDiscardPacket(intptr_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    a2[184] = 0;
    CMSimpleQueueEnqueue(*(result + 56), a2);
    v3 = *(v2 + 64);

    return dispatch_semaphore_signal(v3);
  }

  return result;
}

uint64_t __APSRTPJitterBufferRead_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 10)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke", 10, "'%@' Read request for %u bytes (%u samples) of pcm audio\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 48));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke", 10, "'%@' Read request for %u bytes (%u samples) of pcm audio\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 48));
    }
  }

  return result;
}

uint64_t __APSRTPJitterBufferRead_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke_2", 30, "'%@' Skipping %u bytes (%u samples) of decoded audio\n", *(*(v1 + 32) + 16), (*(*(v1 + 32) + 136) * *(v1 + 40)), *(v1 + 40));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke_2", 30, "'%@' Skipping %u bytes (%u samples) of decoded audio\n", *(*(v1 + 32) + 16), (*(*(v1 + 32) + 136) * *(v1 + 40)), *(v1 + 40));
    }
  }

  return result;
}

uint64_t __APSRTPJitterBufferRead_block_invoke_3(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 10)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke_3", 10, "'%@' Reading %u bytes (%u samples) of decoded audio; wPtr %lx, rPtr %lx\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 44), *(v1 + 48), *(*(v1 + 32) + 228));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke_3", 10, "'%@' Reading %u bytes (%u samples) of decoded audio; wPtr %lx, rPtr %lx\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 44), *(v1 + 48), *(*(v1 + 32) + 228));
    }
  }

  return result;
}

uint64_t __APSRTPJitterBufferRead_block_invoke_4(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke_4", 30, "'%@' Entering legacy buffering mode (%u ms underrun) - %u samples enqueued, %u packets enqueued\n", *(*(v1 + 32) + 16), 1000 * *(v1 + 40) / *(*(v1 + 32) + 112), *(v1 + 44), *(v1 + 48));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke_4", 30, "'%@' Entering legacy buffering mode (%u ms underrun) - %u samples enqueued, %u packets enqueued\n", *(*(v1 + 32) + 16), 1000 * *(v1 + 40) / *(*(v1 + 32) + 112), *(v1 + 44), *(v1 + 48));
    }
  }

  return result;
}

uint64_t __APSRTPJitterBufferRead_block_invoke_5(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 40)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke_5", 40, "'%@' Underrun occurred\n", *(*(v1 + 32) + 16));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "OSStatus APSRTPJitterBufferRead(APSRTPJitterBufferRef, uint32_t, void *, size_t)_block_invoke_5", 40, "'%@' Underrun occurred\n", *(*(v1 + 32) + 16));
    }
  }

  return result;
}

uint64_t APSRTPJitterBufferCopyStatistics(unsigned int *a1, CFTypeRef *a2)
{
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v4 = Mutable;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      *a2 = CFRetain(v4);
      CFRelease(v4);
      return 0;
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
}

uint64_t APSRateControllerAVCWrapperGetTypeID()
{
  if (gAPSRateControllerAVCWrapperInitOnce != -1)
  {
    dispatch_once_f(&gAPSRateControllerAVCWrapperInitOnce, 0, _APSRateControllerAVCWrapperGetTypeID);
  }

  return gAPSRateControllerAVCWrapperTypeID;
}

uint64_t _APSRateControllerAVCWrapperGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRateControllerAVCWrapperTypeID = result;
  return result;
}

void _APSRateControllerAVCWrapperFinalize(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "void _APSRateControllerAVCWrapperFinalize(CFTypeRef)", 33554462, "[%{ptr}] APSRateControllerAVCWrapper finalized", a1);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  [*(a1 + 24) stop];

  v4 = *(a1 + 16);
}

uint64_t APSRateControllerAVCWrapperCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a3)
  {
    if (gAPSRateControllerAVCWrapperInitOnce != -1)
    {
      dispatch_once_f(&gAPSRateControllerAVCWrapperInitOnce, 0, _APSRateControllerAVCWrapperGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 64) = 0;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 16) = [[APSRateControllerDelegate alloc] initWithContext:Instance];
      v13 = 0;
      v14 = &v13;
      v15 = 0x3052000000;
      v16 = __Block_byref_object_copy_;
      v8 = getAVCRateControllerClass_softClass;
      v17 = __Block_byref_object_dispose_;
      v18 = getAVCRateControllerClass_softClass;
      if (!getAVCRateControllerClass_softClass)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __getAVCRateControllerClass_block_invoke;
        v12[3] = &unk_2784A4060;
        v12[4] = &v13;
        __getAVCRateControllerClass_block_invoke(v12);
        v8 = v14[5];
      }

      _Block_object_dispose(&v13, 8);
      v9 = [[v8 alloc] initWithDelegate:v7[2] dumpID:a1 isUplink:1 isForSimulation:0 useExternalThread:1 rateSharingGroupToken:a2];
      v7[3] = v9;
      if (v9)
      {
        *a3 = CFRetain(v7);
        if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "OSStatus APSRateControllerAVCWrapperCreate(CFStringRef, uint32_t, APSRateControllerAVCWrapperRef *)", 33554462, "[%{ptr}] APSRateControllerAVCWrapper created.", v7);
        }

        v10 = 0;
      }

      else
      {
        APSLogErrorAt(0);
        v10 = 4294960568;
      }

      CFRelease(v7);
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

  return v10;
}

void sub_222302420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVCRateControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVConferenceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVConferenceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784A32A8;
    v6 = 0;
    AVConferenceLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AVConferenceLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AVCRateController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    abort_report_np("Unable to find class %s", "AVCRateController");
  }

  getAVCRateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __AVConferenceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AVConferenceLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t APSRateControllerAVCWrapperConfigure(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (a2 > 0xFFFFFFFE)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a2;
  }

  if (a3 > 0xFFFFFFFE)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = a3;
  }

  LODWORD(v10) = 12;
  v7 = *(a1 + 24);
  *(&v10 + 4) = 0;
  if (a4 > 0xFFFFFFFE)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = a4;
  }

  HIDWORD(v10) = v5;
  v11 = v6;
  v12 = v8;
  [v7 configure:&v10];
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "OSStatus APSRateControllerAVCWrapperConfigure(APSRateControllerAVCWrapperRef, uint64_t, uint64_t, uint64_t)", 33554462, "[%{ptr}] Configure rate controller maxBitrate: %u, minBitrate: %u, initialBitrate: %u", a1, v5, v6, v8, v10);
  }

  return 0;
}

uint64_t APSRateControllerAVCWrapperStart(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "OSStatus APSRateControllerAVCWrapperStart(APSRateControllerAVCWrapperRef)", 33554462, "[%{ptr}] APSRateControllerAVCWrapper start", a1);
  }

  [*(a1 + 24) start];
  return 0;
}

uint64_t APSRateControllerAVCWrapperStop(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "OSStatus APSRateControllerAVCWrapperStop(APSRateControllerAVCWrapperRef)", 33554462, "[%{ptr}] APSRateControllerAVCWrapper stop", a1);
  }

  [*(a1 + 24) stop];
  return 0;
}

uint64_t APSRateControllerAVCWrapperSetMaxBitrate(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xFFFFFFFE)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a2;
  }

  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "OSStatus APSRateControllerAVCWrapperSetMaxBitrate(APSRateControllerAVCWrapperRef, uint64_t)", 33554462, "[%{ptr}] setting maxBitrate to %u", a1, v3);
  }

  [*(a1 + 24) setMaxTargetBitrate:v3];
  return 0;
}

uint64_t APSRateControllerAVCWrapperSetMinBitrate(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xFFFFFFFE)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a2;
  }

  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "OSStatus APSRateControllerAVCWrapperSetMinBitrate(APSRateControllerAVCWrapperRef, uint64_t)", 33554462, "[%{ptr}] setting minBitrate to %u", a1, v3);
  }

  [*(a1 + 24) setMinTargetBitrate:v3];
  return 0;
}

uint64_t APSRateControllerAVCWrapperGetMaxBitrate(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "uint64_t APSRateControllerAVCWrapperGetMaxBitrate(APSRateControllerAVCWrapperRef)", 33554462, "[%{ptr}] getting maxBitrate %u", a1, [*(a1 + 24) maxTargetBitrate]);
  }

  return [*(a1 + 24) maxTargetBitrate];
}

uint64_t APSRateControllerAVCWrapperGetMinBitrate(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "uint64_t APSRateControllerAVCWrapperGetMinBitrate(APSRateControllerAVCWrapperRef)", 33554462, "[%{ptr}] getting minBitrate %u", a1, [*(a1 + 24) minTargetBitrate]);
  }

  return [*(a1 + 24) minTargetBitrate];
}

uint64_t APSRateControllerAVCWrapperGetTargetBitrate(uint64_t a1)
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 30 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSRateControllerAVCWrapper, "uint64_t APSRateControllerAVCWrapperGetTargetBitrate(APSRateControllerAVCWrapperRef)", 33554462, "[%{ptr}] getting TargetBitrate: %llu", a1, *(a1 + 32));
  }

  return *(a1 + 32);
}

uint64_t APSRateControllerAVCWrapperAddFeedbackReport(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (CFDictionaryGetCount(*(a2 + 24)))
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __APSRateControllerAVCWrapperAddFeedbackReport_block_invoke;
      v6[3] = &__block_descriptor_40_e13_i20__0S8r_v12l;
      v6[4] = a1;
      v4 = APSRTPSeqNumDictionaryApplyBlock(v2, 0, v6);
      v2 = v4;
      if (v4)
      {
        APSLogErrorAt(v4);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t __APSRateControllerAVCWrapperAddFeedbackReport_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  [v7 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithUnsignedShort:", a2), 0}];
  Value = CFDictionaryGetValue(a3, @"PacketSendTimestamp");
  if (Value && ([v7 setObject:Value atIndexedSubscript:1], (v9 = CFDictionaryGetValue(a3, @"PacketRecvTimestamp")) != 0) && (objc_msgSend(v7, "setObject:atIndexedSubscript:", v9, 2), (v10 = CFDictionaryGetValue(a3, @"PacketLength")) != 0) && ((objc_msgSend(v7, "setObject:atIndexedSubscript:", v10, 3), (v11 = CFDictionaryGetValue(a3, @"ProbingSequenceID")) != 0) ? (v12 = &unk_28358E678) : (v12 = &unk_28358E690), v11 ? (v13 = v11) : (v13 = &unk_28358E690), objc_msgSend(v7, "setObject:atIndexedSubscript:", v12, 4), objc_msgSend(v7, "setObject:atIndexedSubscript:", v13, 5), (v14 = CFDictionaryGetValue(a3, @"ReportTimestamp")) != 0))
  {
    [v7 setObject:v14 atIndexedSubscript:6];
    [objc_msgSend(*(*(a1 + 32) + 24) "feedbackController")];
    v15 = 0;
  }

  else
  {
    APSLogErrorAt(0);
    v15 = 4294960591;
  }

  objc_autoreleasePoolPop(v6);
  return v15;
}

uint64_t APSRateControllerAVCWrapperSetTargetBitrateDidChangeCallback(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    *(a1 + 40) = a2;
    v4 = *(a1 + 48);
    if (a2)
    {
      *(a1 + 48) = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else if (v4)
    {
      CFRelease(*(a1 + 48));
      result = 0;
      *(a1 + 48) = 0;
      return result;
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSRateControllerAVCWrapperSetProbingSequenceRequestedCallback(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1)
  {
    *(a1 + 56) = a2;
    v4 = *(a1 + 64);
    if (a2)
    {
      *(a1 + 64) = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    else if (v4)
    {
      CFRelease(*(a1 + 64));
      result = 0;
      *(a1 + 64) = 0;
      return result;
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

void APSTapToRadarInvoke(const void *a1, const void *a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  if (!IsAppleInternalBuild())
  {
    if (gLogCategory_APSTapToRadar > 50 || gLogCategory_APSTapToRadar == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    v14 = "Not invoking TTR on non-internal builds\n";
    v15 = 33554482;
    goto LABEL_11;
  }

  if (!getTapToRadarServiceClass())
  {
    if (gLogCategory_APSTapToRadar > 90 || gLogCategory_APSTapToRadar == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    v14 = "TapToRadarService does not exist. A radar cannot be started\n";
    v15 = 33554522;
LABEL_11:

    LogPrintF(&gLogCategory_APSTapToRadar, "void APSTapToRadarInvoke(CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFArrayRef, Boolean)", v15, v14);
    return;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", @"AirPlay has detected an internal error. Please help us make AirPlay better by logging a bug. Thanks.", a4];
  v13 = [objc_msgSend(getTapToRadarServiceClass() "shared")];
  if (!v13)
  {
    goto LABEL_44;
  }

  if ([v13 authorizationStatus] == 1)
  {
    if (gLogCategory_APSTapToRadar <= 50 && (gLogCategory_APSTapToRadar != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSTapToRadar, "void apsTapToRadarInvokeDetailed(CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFArrayRef, Boolean)", 33554482, "Not invoking Tap-to-Radar because the user has denied authorization");
    }

    return;
  }

  if (gLogCategory_APSTapToRadar <= 50 && (gLogCategory_APSTapToRadar != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSTapToRadar, "void apsTapToRadarInvokeDetailed(CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFArrayRef, Boolean)", 33554482, "Invoking tap-to-radar (noDialogScreen=%d) with radar title: %@ for component %@\n", a6, a2, a1);
  }

  if (!a2)
  {
    goto LABEL_44;
  }

  if (a6)
  {
    v16 = 0;
    Mutable = 0;
    if (!a1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (!v12)
  {
LABEL_44:
    APSLogErrorAt(0);
    return;
  }

  v18 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBF188], @"AirPlay Error");
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBF198], v12);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBF1E8], @"Tap-to-Radar");
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBF1C0], @"Cancel");
  v19 = CFUserNotificationCreate(v18, 10.0, 0, 0, Mutable);
  if (!v19)
  {
    APSLogErrorAt(0);
    if (!Mutable)
    {
      return;
    }

    goto LABEL_31;
  }

  v16 = v19;
  if (!a1)
  {
    goto LABEL_26;
  }

LABEL_25:
  CFRetain(a1);
LABEL_26:
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __apsTapToRadarInvokeDetailed_block_invoke;
  block[3] = &__block_descriptor_73_e5_v8__0l;
  v21 = a6;
  block[4] = v16;
  block[5] = a1;
  block[6] = a2;
  block[7] = a3;
  block[8] = a5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (Mutable)
  {
LABEL_31:
    CFRelease(Mutable);
  }
}

uint64_t getTapToRadarServiceClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1400;
  v0 = getTapToRadarServiceClass_softClass;
  v7 = __Block_byref_object_dispose__1401;
  v8 = getTapToRadarServiceClass_softClass;
  if (!getTapToRadarServiceClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getTapToRadarServiceClass_block_invoke;
    v2[3] = &unk_2784A4060;
    v2[4] = &v3;
    __getTapToRadarServiceClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22230340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __apsTapToRadarInvokeDetailed_block_invoke(uint64_t a1)
{
  v14 = 0;
  if (!*(a1 + 72))
  {
    v14 = 3;
    CFUserNotificationReceiveResponse(*(a1 + 32), 10.0, &v14);
    if (v14)
    {
      v3 = 0;
LABEL_16:
      v6 = 0;
      goto LABEL_17;
    }
  }

  v2 = *(a1 + 40);
  if (apsRadarLogging_radarComponentEntryForAPSRadarComponentID_onceToken != -1)
  {
    dispatch_once(&apsRadarLogging_radarComponentEntryForAPSRadarComponentID_onceToken, &__block_literal_global_63);
  }

  v3 = [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries valueForKey:{v2, v14}];
  if (!v3)
  {
    APSLogErrorAt(0);
    goto LABEL_16;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__1400;
  v4 = getRadarDraftClass_softClass;
  v24 = __Block_byref_object_dispose__1401;
  v25 = getRadarDraftClass_softClass;
  if (!getRadarDraftClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getRadarDraftClass_block_invoke;
    v18 = &unk_2784A4060;
    v19 = &v20;
    __getRadarDraftClass_block_invoke(&v15);
    v4 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  v5 = objc_alloc_init(v4);
  v6 = v5;
  if (v5)
  {
    [v5 setTitle:*(a1 + 48)];
    v7 = *(a1 + 56);
    if (!v7)
    {
      v7 = *(a1 + 48);
    }

    [v6 setProblemDescription:v7];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = __Block_byref_object_copy__1400;
    v8 = getRadarComponentClass_softClass;
    v24 = __Block_byref_object_dispose__1401;
    v25 = getRadarComponentClass_softClass;
    if (!getRadarComponentClass_softClass)
    {
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __getRadarComponentClass_block_invoke;
      v18 = &unk_2784A4060;
      v19 = &v20;
      __getRadarComponentClass_block_invoke(&v15);
      v8 = v21[5];
    }

    _Block_object_dispose(&v20, 8);
    v3 = [[v8 alloc] initWithName:objc_msgSend(v3 version:"componentName") identifier:{objc_msgSend(v3, "componentVersion"), objc_msgSend(objc_msgSend(v3, "componentID"), "integerValue")}];
    if (v3)
    {
      [v6 setComponent:v3];
      [v6 setClassification:6];
      [v6 setReproducibility:6];
      [v6 setDeviceIDs:*(a1 + 64)];
      [v6 setIsUserInitiated:*(a1 + 72) == 0];
      [v6 setShouldCapturePerformanceTrace:1];
      [v6 setDiagnosticExtensionIDs:&unk_28358E6C0];
      [objc_msgSend(getTapToRadarServiceClass() "shared")];
    }

    else
    {
      APSLogErrorAt(0);
    }
  }

  else
  {
    APSLogErrorAt(0);
    v3 = 0;
  }

LABEL_17:

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_2223037C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRadarDraftClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarDraft");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getRadarDraftClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "RadarDraft");
    return __getRadarComponentClass_block_invoke(v3);
  }

  return result;
}

void __getRadarComponentClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("RadarComponent");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getRadarComponentClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v2 = abort_report_np("Unable to find class %s", "RadarComponent");
    __apsTapToRadarInvokeDetailed_block_invoke_2(v2, v3);
  }
}

void __apsTapToRadarInvokeDetailed_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2 && gLogCategory_APSTapToRadar <= 90 && (gLogCategory_APSTapToRadar != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSTapToRadar, "void apsTapToRadarInvokeDetailed(CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFArrayRef, Boolean)_block_invoke_2", 33554522, "Failed to create draft in Tap-to-Radar: %@", [a2 localizedDescription]);
  }
}

void TapToRadarKitLibrary()
{
  v10 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = TapToRadarKitLibraryCore_frameworkLibrary;
  v8 = TapToRadarKitLibraryCore_frameworkLibrary;
  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __TapToRadarKitLibraryCore_block_invoke;
    v2[4] = &unk_2784A3308;
    v3 = &v5;
    v4 = v2;
    v9 = xmmword_2784A32F0;
    v6[3] = _sl_dlopen();
    TapToRadarKitLibraryCore_frameworkLibrary = *(v3[1] + 24);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  v1 = v2[0];
  if (!v0)
  {
    v1 = abort_report_np("%s", v2[0]);
    __break(1u);
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v1);
  }
}

void sub_222303AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TapToRadarKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  TapToRadarKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __apsRadarLogging_radarComponentEntryForAPSRadarComponentID_block_invoke()
{
  apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries)
  {
    v0 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay (New Bugs)" version:@"All" ID:@"629193"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v0 forKeyedSubscript:@"AirPlay (New Bugs)"];
    v1 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay Core" version:@"All" ID:@"629196"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v1 forKeyedSubscript:@"AirPlay Core"];
    v2 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay Audio - Buffered" version:@"All" ID:@"1158817"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v2 forKeyedSubscript:@"AirPlay Audio - Buffered"];
    v3 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay Audio - Streaming" version:@"All" ID:@"1158818"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v3 forKeyedSubscript:@"AirPlay Audio - Streaming"];
    v4 = [APSRadarComponentEntry componentEntryWithName:@"AirPlay Performance" version:@"All" ID:@"953616"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v4 forKeyedSubscript:@"AirPlay Performance"];
    v5 = [APSRadarComponentEntry componentEntryWithName:@"CoreMedia Buffered AirPlay" version:@"All" ID:@"629211"];
    [apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries setObject:v5 forKeyedSubscript:@"CoreMedia Buffered AirPlay"];
    v6 = [APSRadarComponentEntry componentEntryWithName:@"CoreMedia AP Video" version:@"All" ID:@"629212"];
    v7 = apsRadarLogging_radarComponentEntryForAPSRadarComponentID_entries;

    return [v7 setObject:v6 forKeyedSubscript:@"CoreMedia AP Video"];
  }

  else
  {

    return APSLogErrorAt(0);
  }
}

Class __getTapToRadarServiceClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getTapToRadarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    abort_report_np("Unable to find class %s", "TapToRadarService");
    return APSTimedInfoManagerGetTypeID();
  }

  return result;
}

uint64_t APSTimedInfoManagerGetTypeID()
{
  if (gAPSTimedInfoManagerInitOnce != -1)
  {
    dispatch_once_f(&gAPSTimedInfoManagerInitOnce, 0, _APSTimedInfoManagerGetTypeID);
  }

  return gAPSTimedInfoManagerTypeID;
}

uint64_t _APSTimedInfoManagerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSTimedInfoManagerTypeID = result;
  return result;
}

void _APSTimedInfoManagerFinalize(uint64_t a1)
{
  if (gLogCategory_APSTimedInfoManager <= 30 && (gLogCategory_APSTimedInfoManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSTimedInfoManager, "void _APSTimedInfoManagerFinalize(CFTypeRef)", 33554462, "[%{ptr}] Finalized", a1);
  }

  timedInfoManager_removeAllElemFromCurrentElem(*(a1 + 80), *(a1 + 80));
  FigSimpleMutexDestroy();
  CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 16));
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }
}

void *timedInfoManager_removeAllElemFromCurrentElem(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if (a1 == a2)
    {
      do
      {
LABEL_7:
        v6 = *v4;
        v7 = v4[5];
        if (v7)
        {
          CFRelease(v7);
        }

        free(v4);
        v4 = v6;
      }

      while (v6);
    }

    else
    {
      v4 = a1;
      while (1)
      {
        v5 = v4;
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (v4 == a2)
        {
          *v5 = 0;
          goto LABEL_7;
        }
      }
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

uint64_t APSTimedInfoManagerCreate(CFTypeRef *a1)
{
  if (a1)
  {
    if (gAPSTimedInfoManagerInitOnce != -1)
    {
      dispatch_once_f(&gAPSTimedInfoManagerInitOnce, 0, _APSTimedInfoManagerGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      *(Instance + 80) = 0;
      *(Instance + 48) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      v4 = FigDispatchQueueCreateWithPriority();
      *(v3 + 24) = v4;
      if (v4 && (v5 = FigSimpleMutexCreate(), (*(v3 + 32) = v5) != 0))
      {
        v6 = MEMORY[0x277CC0898];
        *(v3 + 48) = *MEMORY[0x277CC0898];
        *(v3 + 64) = *(v6 + 16);
        *(v3 + 72) = 0;
        if (gLogCategory_APSTimedInfoManager <= 30 && (gLogCategory_APSTimedInfoManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSTimedInfoManager, "OSStatus APSTimedInfoManagerCreate(APSTimedInfoManagerRef *)", 33554462, "[%{ptr}] Created", v3);
        }

        v7 = 0;
        *a1 = CFRetain(v3);
      }

      else
      {
        APSLogErrorAt(0);
        v7 = 4294960568;
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

  return v7;
}

uint64_t APSTimedInfoManagerResume(uint64_t a1, const void *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  FigSimpleMutexLock();
  v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (*(a1 + 72))
  {
    APSLogErrorAt(0);
    v8 = 4294960587;
    APSSignalErrorAt(0xFFFFE5CBLL, "APSTimedInfoManager already resumed.", "APSTimedInfoManagerResume");
    goto LABEL_12;
  }

  if (*(a1 + 16))
  {
    APSLogErrorAt(0);
  }

  else
  {
    v5 = v4;
    v6 = *(a1 + 40);
    *(a1 + 40) = a2;
    CFRetain(a2);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, *(a1 + 24));
    *(a1 + 16) = v7;
    if (!v7)
    {
      APSLogErrorAt(0);
      v8 = 4294960568;
      goto LABEL_12;
    }

    dispatch_set_context(v7, v5);
    dispatch_source_set_timer(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(*(a1 + 16), timedInfoManager_fireNotification);
    dispatch_source_set_cancel_handler_f(*(a1 + 16), FigCFRelease);
    dispatch_resume(*(a1 + 16));
    CMTimebaseAddTimerDispatchSource(*(a1 + 40), *(a1 + 16));
    *(a1 + 72) = 1;
    if (*(a1 + 73) && (*(a1 + 60) & 1) != 0)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 16);
      v12 = *(a1 + 48);
      CMTimebaseSetTimerDispatchSourceNextFireTime(v9, v10, &v12, 1u);
      v8 = 0;
      *(a1 + 73) = 0;
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  return v8;
}

void FigCFRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void timedInfoManager_fireNotification(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    FigSimpleMutexLock();
    v3 = v2 + 80;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      time1 = *(v3 + 16);
      v10 = *(v2 + 48);
      if (CMTimeCompare(&time1, &v10) <= 0)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        v4 = *(v3 + 8);
        if (v4)
        {
          v5 = *(v4 + 16);
          v6 = *(v4 + 32);
          *(v2 + 64) = v6;
          *(v2 + 48) = v5;
          v7 = *(v2 + 40);
          v8 = *(v2 + 16);
          *&time1.value = *(v2 + 48);
          time1.epoch = v6;
          CMTimebaseSetTimerDispatchSourceNextFireTime(v7, v8, &time1, 1u);
        }

        else
        {
          v9 = MEMORY[0x277CC0898];
          *(v2 + 48) = *MEMORY[0x277CC0898];
          *(v2 + 64) = *(v9 + 16);
        }

        *(v2 + 80) = timedInfoManager_removeAllElemFromCurrentElem(*(v2 + 80), v3);
        break;
      }
    }

    FigSimpleMutexUnlock();
    CFRelease(v2);
  }

  else
  {

    APSLogErrorAt(0);
  }
}

uint64_t APSTimedInfoManagerSuspend(uint64_t a1, int a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 72))
    {
      CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
      *(a1 + 72) = 0;
      if (a2)
      {
        v4 = MEMORY[0x277CC0898];
        *(a1 + 48) = *MEMORY[0x277CC0898];
        *(a1 + 64) = *(v4 + 16);
        *(a1 + 80) = timedInfoManager_removeAllElemFromCurrentElem(*(a1 + 80), *(a1 + 80));
      }

      else
      {
        *(a1 + 73) = 1;
      }

      v5 = *(a1 + 16);
      if (v5)
      {
        dispatch_source_cancel(*(a1 + 16));
        dispatch_release(v5);
        *(a1 + 16) = 0;
      }

      v6 = *(a1 + 40);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 40) = 0;
      }
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSTimedInfoManagerAddTimedInfo(uint64_t a1, __int128 *a2, const void *a3)
{
  if (!a1)
  {
    goto LABEL_33;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    APSLogErrorAt(0);
    v17 = 4294960591;
    APSSignalErrorAt(0xFFFFE5CFLL, "Invalid fire time", "APSTimedInfoManagerAddTimedInfo");
    return v17;
  }

  if (!a3)
  {
LABEL_33:
    APSLogErrorAt(0);
    return 4294960591;
  }

  FigSimpleMutexLock();
  v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x106004041D4C332uLL);
  if (v6)
  {
    v7 = v6;
    v8 = *a2;
    v6[4] = *(a2 + 2);
    *(v6 + 1) = v8;
    v6[5] = CFRetain(a3);
    v9 = *(a1 + 80);
    if (v9)
    {
      time1 = *(v9 + 16);
      v20 = *(v7 + 2);
      if (CMTimeCompare(&time1, &v20) < 0)
      {
        *v7 = v9;
        v7[1] = 0;
        *(v9 + 8) = v7;
      }

      else
      {
        v10 = *v9;
        if (*v9)
        {
          v11 = v9;
          while (1)
          {
            time1 = *(v10 + 2);
            v20 = *(v7 + 2);
            v12 = CMTimeCompare(&time1, &v20);
            v13 = *v11;
            if (v12 < 0)
            {
              break;
            }

            v10 = *v13;
            v11 = *v11;
            if (!*v13)
            {
              goto LABEL_16;
            }
          }

          v10 = *v11;
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

LABEL_16:
        *v7 = v10;
        *v13 = v7;
        v7[1] = v13;
        if (*v7)
        {
          *(*v7 + 8) = v7;
        }

        v7 = 0;
      }
    }

    else
    {
      *v7 = 0;
      v7[1] = 0;
    }

    if (v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    *(a1 + 80) = v14;
    if ((*(a1 + 60) & 1) != 0 && (time1 = *(a1 + 48), v20 = *a2, CMTimeCompare(&time1, &v20) < 0))
    {
      v17 = 0;
    }

    else
    {
      if (*(a1 + 72))
      {
        v15 = *(a1 + 40);
        v16 = *(a1 + 16);
        time1 = *a2;
        CMTimebaseSetTimerDispatchSourceNextFireTime(v15, v16, &time1, 1u);
      }

      else
      {
        *(a1 + 73) = 1;
      }

      v17 = 0;
      v18 = *a2;
      *(a1 + 64) = *(a2 + 2);
      *(a1 + 48) = v18;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v17 = 4294960591;
    APSSignalErrorAt(0xFFFFE5CFLL, "Failed to allocate memory for timed info", "APSTimedInfoManagerAddTimedInfo");
  }

  FigSimpleMutexUnlock();
  return v17;
}

uint64_t APSTimedInfoManagerFlush(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
    v2 = timedInfoManager_removeAllElemFromCurrentElem(*(a1 + 80), *(a1 + 80));
    v3 = MEMORY[0x277CC0898];
    *(a1 + 80) = v2;
    *(a1 + 48) = *v3;
    *(a1 + 64) = *(v3 + 16);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSTimedInfoManagerFlushWithinTimeRange(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v4 = *(a1 + 80);
    if (!v4)
    {
LABEL_16:
      FigSimpleMutexUnlock();
      return 0;
    }

    while (1)
    {
      v6 = a2[1];
      *&range.start.value = *a2;
      *&range.start.epoch = v6;
      *&range.duration.timescale = a2[2];
      v12 = *(v4 + 16);
      v7 = CMTimeRangeContainsTime(&range, &v12);
      v8 = *v4;
      if (v7)
      {
        break;
      }

LABEL_15:
      v4 = v8;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v9 = *(v4 + 1);
    if (v9)
    {
      *v9 = v8;
      v5 = *v4;
      if (!*v4)
      {
LABEL_10:
        *&range.start.value = *(v4 + 1);
        range.start.epoch = *(v4 + 4);
        v12 = *(a1 + 48);
        if (!CMTimeCompare(&range.start, &v12))
        {
          CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
        }

        v10 = *(v4 + 5);
        if (v10)
        {
          CFRelease(v10);
        }

        free(v4);
        goto LABEL_15;
      }
    }

    else
    {
      *(a1 + 80) = v8;
      v5 = v8;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    *(v5 + 1) = v9;
    goto LABEL_10;
  }

  APSLogErrorAt(0);
  return 4294960591;
}

uint64_t APSWrapperGetTypeID()
{
  if (gAPSWrapperInitOnce != -1)
  {
    dispatch_once_f(&gAPSWrapperInitOnce, 0, _APSWrapperGetTypeID);
  }

  return gAPSWrapperTypeID;
}

uint64_t _APSWrapperGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSWrapperTypeID = result;
  return result;
}

uint64_t _APSWrapperFinalize(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    return v1(*(result + 16));
  }

  return result;
}

uint64_t APSWrapperCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294960591;
  }

  if (gAPSWrapperInitOnce != -1)
  {
    dispatch_once_f(&gAPSWrapperInitOnce, 0, _APSWrapperGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v7 = Instance;
  Instance[2] = a1;
  Instance[3] = a2;
  *a3 = CFRetain(Instance);
  CFRelease(v7);
  return 0;
}

uint64_t APSWrapperGetValue(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t APSStatsHistogramGetTypeID()
{
  if (APSStatsHistogramGetTypeID_once != -1)
  {
    dispatch_once(&APSStatsHistogramGetTypeID_once, &__block_literal_global_1509);
  }

  return APSStatsHistogramGetTypeID_typeID;
}

uint64_t __APSStatsHistogramGetTypeID_block_invoke()
{
  APSStatsHistogramGetTypeID_histogramClass = 0;
  *algn_280D68AC8 = "APSStatsHistogram";
  qword_280D68AD0 = 0;
  unk_280D68AD8 = 0;
  qword_280D68AE0 = hist_finalize;
  unk_280D68AE8 = 0;
  qword_280D68AF0 = 0;
  unk_280D68AF8 = 0;
  qword_280D68B00 = hist_copyDebugDescription;
  result = _CFRuntimeRegisterClass();
  APSStatsHistogramGetTypeID_typeID = result;
  return result;
}

uint64_t APSStatsHistogramCreateFromSerializedDictionary(const __CFDictionary *a1, uint64_t *a2)
{
  v24 = 0;
  if (a1)
  {
    if (a2)
    {
      if (APSStatsHistogramGetTypeID_once != -1)
      {
        dispatch_once(&APSStatsHistogramGetTypeID_once, &__block_literal_global_1509);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v5 = Instance;
        *(Instance + 128) = 0;
        *(Instance + 96) = 0u;
        *(Instance + 112) = 0u;
        *(Instance + 64) = 0u;
        *(Instance + 80) = 0u;
        *(Instance + 32) = 0u;
        *(Instance + 48) = 0u;
        *(Instance + 16) = 0u;
        v6 = FigSimpleMutexCreate();
        *(v5 + 16) = v6;
        if (!v6)
        {
          APSLogErrorAt(0);
          v24 = -6728;
          if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateFromSerializedDictionary(CFDictionaryRef, APSStatsHistogramRef *)", 33554522, "%s FigSimpleMutexCreate failed\n");
          }

          goto LABEL_25;
        }

        v7 = @"Name";
        Value = CFDictionaryGetValue(a1, @"Name");
        if (Value)
        {
          v9 = CFRetain(Value);
          *(v5 + 24) = v9;
          if (v9)
          {
            v7 = @"UnitName";
            v10 = CFDictionaryGetValue(a1, @"UnitName");
            if (v10)
            {
              v11 = CFRetain(v10);
              *(v5 + 32) = v11;
              if (v11)
              {
                Int64Ranged = CFDictionaryGetInt64Ranged();
                *(v5 + 120) = Int64Ranged;
                if (!Int64Ranged)
                {
                  APSLogErrorAt(0);
                  v24 = -6709;
                  if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateFromSerializedDictionary(CFDictionaryRef, APSStatsHistogramRef *)", 33554522, "%s bucketCount must be greater than 0\n");
                  }

                  goto LABEL_25;
                }

                CFDictionaryGetDouble();
                *(v5 + 88) = SecondsToUpTicksF();
                CFDictionaryGetDouble();
                *(v5 + 40) = v13;
                CFDictionaryGetDouble();
                *(v5 + 48) = v14;
                *(v5 + 128) = CFDictionaryGetInt64() != 0;
                CFDictionaryGetDouble();
                *(v5 + 72) = v15;
                *(v5 + 124) = CFDictionaryGetInt64Ranged();
                *(v5 + 104) = mach_absolute_time();
                CFDictionaryGetDouble();
                v16 = *(v5 + 104);
                *(v5 + 96) = v16 - SecondsToUpTicksF();
                CFDictionaryGetDouble();
                *(v5 + 56) = v17;
                CFDictionaryGetDouble();
                *(v5 + 64) = v18;
                CFDictionaryGetDouble();
                *(v5 + 80) = v19;
                v7 = @"Samples";
                if (CFDictionaryGetValue(a1, @"Samples"))
                {
                  v20 = malloc_type_calloc(*(v5 + 120), 4uLL, 0x100004052888210uLL);
                  *(v5 + 112) = v20;
                  if (v20)
                  {
                    if (*(v5 + 120))
                    {
                      v21 = 0;
                      v22 = 0;
                      do
                      {
                        FigCFArrayGetInt32AtIndex();
                        ++v22;
                        v21 += 4;
                      }

                      while (v22 < *(v5 + 120));
                    }

                    *a2 = v5;
                    return v24;
                  }

                  APSLogErrorAt(0);
                  v24 = -6728;
                  if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateFromSerializedDictionary(CFDictionaryRef, APSStatsHistogramRef *)", 33554522, "%s calloc failed!\n");
                  }

LABEL_25:
                  CFRelease(v5);
                  return v24;
                }
              }
            }

            else
            {
              *(v5 + 32) = 0;
            }
          }
        }

        else
        {
          *(v5 + 24) = 0;
        }

        APSLogErrorAt(0);
        v24 = -6727;
        if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateFromSerializedDictionary(CFDictionaryRef, APSStatsHistogramRef *)", 33554522, "%s requires element with key '%@'\n", "OSStatus APSStatsHistogramCreateFromSerializedDictionary(CFDictionaryRef, APSStatsHistogramRef *)", v7);
        }

        goto LABEL_25;
      }

      APSLogErrorAt(0);
      v24 = -6728;
      if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateFromSerializedDictionary(CFDictionaryRef, APSStatsHistogramRef *)", 33554522, "%s _CFRuntimeCreateInstance failed\n");
      }
    }

    else
    {
      APSLogErrorAt(0);
      v24 = -6705;
      if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateFromSerializedDictionary(CFDictionaryRef, APSStatsHistogramRef *)", 33554522, "%s Parameter 'outHistogram' is NULL\n");
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    v24 = -6705;
    if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateFromSerializedDictionary(CFDictionaryRef, APSStatsHistogramRef *)", 33554522, "%s Parameter 'inHistogram' is NULL\n");
    }
  }

  return v24;
}

uint64_t APSStatsHistogramRemoveAllValues(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 72) > 0.0)
    {
      FigSimpleMutexLock();
      bzero(*(v1 + 112), 4 * *(v1 + 120));
      *(v1 + 124) = 0;
      *(v1 + 96) = 0;
      *(v1 + 104) = 0;

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t APSStatsHistogramCreateSerializedDictionary(uint64_t a1, __CFDictionary **a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt(0);
        if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateSerializedDictionary(APSStatsHistogramRef, CFDictionaryRef *)", 33554522, "%s CFDictionaryCreateMutable failed\n", "OSStatus APSStatsHistogramCreateSerializedDictionary(APSStatsHistogramRef, CFDictionaryRef *)");
        }

        return 4294960568;
      }

      v6 = Mutable;
      if (*(a1 + 120))
      {
        CFDictionarySetInt64();
        CFDictionarySetValue(v6, @"Name", *(a1 + 24));
        CFDictionarySetValue(v6, @"UnitName", *(a1 + 32));
        UpTicksToSecondsF();
        FigCFDictionarySetDouble();
        FigCFDictionarySetDouble();
        FigCFDictionarySetDouble();
        v7 = MEMORY[0x277CBED28];
        if (!*(a1 + 128))
        {
          v7 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v6, @"ConvertToRate", *v7);
        FigCFDictionarySetDouble();
        FigSimpleMutexLock();
        v8 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
        if (v8)
        {
          v9 = v8;
          if (*(a1 + 120))
          {
            v10 = 0;
            do
            {
              FigCFArrayAppendInt32();
              ++v10;
            }

            while (v10 < *(a1 + 120));
          }

          CFDictionarySetValue(v6, @"Samples", v9);
          CFDictionarySetInt64();
          UpTicksToSecondsF();
          FigCFDictionarySetDouble();
          FigCFDictionarySetDouble();
          FigCFDictionarySetDouble();
          FigCFDictionarySetDouble();
          *a2 = v6;
          FigSimpleMutexUnlock();
          CFRelease(v9);
          return 0;
        }

        APSLogErrorAt(0);
        if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateSerializedDictionary(APSStatsHistogramRef, CFDictionaryRef *)", 33554522, "%s CFArrayCreateMutable failed\n", "OSStatus APSStatsHistogramCreateSerializedDictionary(APSStatsHistogramRef, CFDictionaryRef *)");
        }

        FigSimpleMutexUnlock();
        v11 = 4294960568;
      }

      else
      {
        APSLogErrorAt(0);
        if (gLogCategory_APStatsHistogram <= 90 && (gLogCategory_APStatsHistogram != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateSerializedDictionary(APSStatsHistogramRef, CFDictionaryRef *)", 33554522, "%s bucketCount must be greater than 0\n", "OSStatus APSStatsHistogramCreateSerializedDictionary(APSStatsHistogramRef, CFDictionaryRef *)");
        }

        v11 = 4294960587;
      }

      CFRelease(v6);
      return v11;
    }

    APSLogErrorAt(0);
    if (gLogCategory_APStatsHistogram == -1)
    {
      _LogCategory_Initialize();
    }

    result = LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateSerializedDictionary(APSStatsHistogramRef, CFDictionaryRef *)", 33554522, "%s Parameter 'outSerialized' is NULL\n");
  }

  else
  {
    APSLogErrorAt(0);
    if (gLogCategory_APStatsHistogram == -1)
    {
      _LogCategory_Initialize();
    }

    result = LogPrintF(&gLogCategory_APStatsHistogram, "OSStatus APSStatsHistogramCreateSerializedDictionary(APSStatsHistogramRef, CFDictionaryRef *)", 33554522, "%s Parameter 'inHist' is NULL\n");
  }

  __break(1u);
  return result;
}

__CFString *APSStatsHistogramCopyAsRTCString(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a1)
  {
    FigSimpleMutexLock();
    v3 = *(a1 + 124);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 1.0;
    }

    LODWORD(v4) = **(a1 + 112);
    CFStringAppendFormat(Mutable, 0, @"%u,%.1f,%d,", v3, *(a1 + 56), (*&v4 * 100.0 / v5 + 0.5));
    if (*(a1 + 120) >= 2u)
    {
      v6 = 1;
      do
      {
        v7 = *(a1 + 72);
        v8 = *(a1 + 40) + v7 * v6;
        LODWORD(v7) = *(*(a1 + 112) + 4 * v6);
        CFStringAppendFormat(Mutable, 0, @"%.1f,%d,", *&v8, (*&v7 * 100.0 / v5 + 0.5));
        ++v6;
      }

      while (v6 < *(a1 + 120));
    }

    CFStringAppendFormat(Mutable, 0, @"%.1f", *(a1 + 64));
    FigSimpleMutexUnlock();
  }

  return Mutable;
}

__CFString *APSStatsHistogramCopyPercentageValuesAsRTCString(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a1)
  {
    FigSimpleMutexLock();
    v3 = *(a1 + 124);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 1.0;
    }

    LODWORD(v4) = **(a1 + 112);
    CFStringAppendFormat(Mutable, 0, @"%d", (*&v4 * 100.0 / v5 + 0.5));
    if (*(a1 + 120) >= 2u)
    {
      v7 = 1;
      do
      {
        LODWORD(v6) = *(*(a1 + 112) + 4 * v7);
        CFStringAppendFormat(Mutable, 0, @",%d", (v6 * 100.0 / v5 + 0.5));
        ++v7;
      }

      while (v7 < *(a1 + 120));
    }

    FigSimpleMutexUnlock();
  }

  return Mutable;
}

__CFString *APSStatsHistogramCopyValuesAsRTCString(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a1)
  {
    FigSimpleMutexLock();
    CFStringAppendFormat(Mutable, 0, @"%d", **(a1 + 112));
    if (*(a1 + 120) >= 2u)
    {
      v3 = 1;
      do
      {
        CFStringAppendFormat(Mutable, 0, @",%d", *(*(a1 + 112) + 4 * v3++));
      }

      while (v3 < *(a1 + 120));
    }

    FigSimpleMutexUnlock();
  }

  return Mutable;
}

uint64_t APSStatsHistogramGetTotalSampleCount(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v2 = *(a1 + 124);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APSStatsHistogramGetSampleCountInRange(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v6 = *(a1 + 120);
  if (v6)
  {
    v7 = 0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    if (v9 >= v8)
    {
      v9 = *(a1 + 40);
    }

    for (i = 1; i <= v6; ++i)
    {
      v11 = v9;
      if (v6 == i)
      {
        v9 = *(a1 + 64);
        if (v9 <= *(a1 + 48))
        {
          v9 = *(a1 + 48);
        }
      }

      else
      {
        v9 = v8 + *(a1 + 72) * i;
      }

      if (v11 >= a2 && v9 <= a3)
      {
        v7 = (*(*(a1 + 112) + 4 * (i - 1)) + v7);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t APSLocalAudioCapabilityMonitorGetTypeID()
{
  if (gAPSLocalAudioCapabilityMonitorInitOnce != -1)
  {
    dispatch_once_f(&gAPSLocalAudioCapabilityMonitorInitOnce, 0, _APSLocalAudioCapabilityMonitorGetTypeID);
  }

  return gAPSLocalAudioCapabilityMonitorTypeID;
}

uint64_t _APSLocalAudioCapabilityMonitorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSLocalAudioCapabilityMonitorTypeID = result;
  return result;
}

void _APSLocalAudioCapabilityMonitorFinalize(void *a1)
{
  if (gLogCategory_APSLocalAudioCapabilityMonitor <= 50 && (gLogCategory_APSLocalAudioCapabilityMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSLocalAudioCapabilityMonitor, "void _APSLocalAudioCapabilityMonitorFinalize(CFTypeRef)", 33554482, "[%{ptr}] Finalize APSLocalAudioCapabilityMonitor. \n", a1);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexDestroy();
  v5 = a1[3];
  if (v5)
  {
    dispatch_release(v5);
    a1[3] = 0;
  }
}

void apsCapabilityMonitor_handleFormatInfoChanged(uint64_t a1, void *a2)
{
  v15 = 0;
  cf = 0;
  v2 = a2[4];
  if (!v2 || (v4 = *(CMBaseObjectGetVTable() + 16)) == 0)
  {
    v7 = 4294948075;
    goto LABEL_19;
  }

  v5 = *(v4 + 48);
  if (!v5)
  {
    v7 = 4294948071;
    goto LABEL_19;
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = v5(v2, *MEMORY[0x277D272E8], *MEMORY[0x277CBECE8], &cf);
  if (v7)
  {
LABEL_19:
    APSLogErrorAt(v7);
    goto LABEL_20;
  }

  v8 = a2[4];
  if (!v8 || (v9 = *(CMBaseObjectGetVTable() + 16)) == 0)
  {
    v7 = 4294948075;
    goto LABEL_19;
  }

  v10 = *(v9 + 48);
  if (!v10)
  {
    v7 = 4294948071;
    goto LABEL_19;
  }

  v7 = v10(v8, *MEMORY[0x277D272E0], v6, &v15);
  if (v7)
  {
    goto LABEL_19;
  }

  FigSimpleMutexLock();
  v11 = a2[5];
  v12 = cf;
  a2[5] = cf;
  if (v12)
  {
    CFRetain(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v13 = a2[6];
  v14 = v15;
  a2[6] = v15;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t APSLocalAudioCapabilityMonitorInitialize()
{
  if (APSLocalAudioCapabilityMonitorInitialize_once != -1)
  {
    dispatch_once(&APSLocalAudioCapabilityMonitorInitialize_once, &__block_literal_global_1587);
  }

  return gCreationErr;
}

void __APSLocalAudioCapabilityMonitorInitialize_block_invoke()
{
  if (gAPSLocalAudioCapabilityMonitorInitOnce != -1)
  {
    dispatch_once_f(&gAPSLocalAudioCapabilityMonitorInitOnce, 0, _APSLocalAudioCapabilityMonitorGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
LABEL_14:
    v5 = -6728;
    goto LABEL_11;
  }

  v1 = Instance;
  *(Instance + 16) = 0u;
  v2 = (Instance + 16);
  *(Instance + 48) = 0;
  *(Instance + 32) = 0u;
  v3 = dispatch_queue_create("APSLocalAudioCapabilityMonitor.queue", 0);
  v2[1] = v3;
  if (!v3 || (v4 = FigSimpleMutexCreate(), (*v2 = v4) == 0))
  {
    APSLogErrorAt(0);
    CFRelease(v1);
    goto LABEL_14;
  }

  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (gLogCategory_APSLocalAudioCapabilityMonitor <= 50 && (gLogCategory_APSLocalAudioCapabilityMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSLocalAudioCapabilityMonitor, "OSStatus APSLocalAudioCapabilityMonitorCreate(void)", 33554482, "[%{ptr}] APSLocalAudioCapabilityMonitor created", v1);
  }

  gAPSLocalAudioCapabilityMonitor = v1;
  dispatch_async(*(v1 + 24), &__block_literal_global_16_1593);
  v5 = 0;
LABEL_11:
  gCreationErr = v5;
}

void __APSLocalAudioCapabilityMonitorCreate_block_invoke()
{
  cf = 0;
  v3 = 0;
  v1 = 0;
  UsingAuxiliaryAVAudioSession = FigAudioSessionCreateUsingAuxiliaryAVAudioSession();
  if (!UsingAuxiliaryAVAudioSession)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    UsingAuxiliaryAVAudioSession = FigNotificationCenterAddWeakListener();
    if (!UsingAuxiliaryAVAudioSession)
    {
      UsingAuxiliaryAVAudioSession = 4294948075;
    }
  }

  APSLogErrorAt(UsingAuxiliaryAVAudioSession);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t APSLocalAudioCapabilityMonitorGetSharedInstance(void *a1)
{
  if (APSLocalAudioCapabilityMonitorInitialize_once == -1)
  {
    if (!a1)
    {
      return gCreationErr;
    }
  }

  else
  {
    dispatch_once(&APSLocalAudioCapabilityMonitorInitialize_once, &__block_literal_global_1587);
    if (!a1)
    {
      return gCreationErr;
    }
  }

  v2 = gAPSLocalAudioCapabilityMonitor;
  if (gAPSLocalAudioCapabilityMonitor)
  {
    v2 = CFRetain(gAPSLocalAudioCapabilityMonitor);
  }

  *a1 = v2;
  return gCreationErr;
}

uint64_t APSLocalAudioCapabilityMonitorCopyProperty(void *a1, uint64_t a2, void *a3)
{
  if (!a2 || !a3)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v6 = a1[5];
    if (v6)
    {
LABEL_5:
      v6 = CFRetain(v6);
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      v7 = 4294954512;
      goto LABEL_7;
    }

    FigSimpleMutexLock();
    v6 = a1[6];
    if (v6)
    {
      goto LABEL_5;
    }
  }

  *a3 = v6;
  FigSimpleMutexUnlock();
  v7 = 0;
LABEL_7:
  if (gLogCategory_APSLocalAudioCapabilityMonitor <= 50 && (gLogCategory_APSLocalAudioCapabilityMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSLocalAudioCapabilityMonitor, "OSStatus APSLocalAudioCapabilityMonitorCopyProperty(APSLocalAudioCapabilityMonitorRef, CFStringRef, void *)", 33554482, "[%{ptr}] PropertyKey: '%@' PropertyValue: '%@'\n", a1, a2, *a3);
  }

  return v7;
}

uint64_t APSFormatSelectorGetClassID()
{
  if (APSFormatSelectorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSFormatSelectorGetClassID_sRegisterOnce, &APSFormatSelectorGetClassID_sClassID, formatSelector_registerBaseClass);
  }

  return APSFormatSelectorGetClassID_sClassID;
}

uint64_t formatSelector_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&formatSelector_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSFormatSelectorGetTypeID()
{
  if (APSFormatSelectorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSFormatSelectorGetClassID_sRegisterOnce, &APSFormatSelectorGetClassID_sClassID, formatSelector_registerBaseClass);
  }

  v1 = APSFormatSelectorGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSRealTimeReadableGetTypeID()
{
  if (gAPSRealTimeReadableInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimeReadableInitOnce, 0, _APSRealTimeReadableGetTypeID);
  }

  return gAPSRealTimeReadableTypeID;
}

uint64_t _APSRealTimeReadableGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRealTimeReadableTypeID = result;
  return result;
}

uint64_t _APSRealTimeReadableFinalize(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    free(v1);
  }

  return FigSimpleMutexDestroy();
}

uint64_t APSRealTimeReadableCreate(const void *a1, size_t a2, CFTypeRef *a3)
{
  if (a2 && a3)
  {
    if (gAPSRealTimeReadableInitOnce != -1)
    {
      dispatch_once_f(&gAPSRealTimeReadableInitOnce, 0, _APSRealTimeReadableGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      v8 = malloc_type_malloc(a2, 0xF099C89uLL);
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = v8;
      if (a1)
      {
        memcpy(v8, a1, a2);
      }

      else
      {
        bzero(v8, a2);
      }

      v7[5] = v9;
      v7[2] = a2;
      v7[3] = v9;
      v10 = FigSimpleMutexCreate();
      v7[4] = v10;
      if (v10)
      {
        v11 = 0;
        *a3 = CFRetain(v7);
      }

      else
      {
LABEL_16:
        APSLogErrorAt(0);
        v11 = 4294960568;
      }

      CFRelease(v7);
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

  return v11;
}

uint64_t APSRealTimeReadableRead(uint64_t a1, void *__dst)
{
  if (a1 && __dst)
  {
    v2 = (a1 + 24);
    v3 = atomic_exchange_explicit((a1 + 24), 0, memory_order_acquire);
    if (v3)
    {
      memcpy(__dst, v3, *(a1 + 16));
      v4 = 0;
      atomic_store(v3, v2);
    }

    else
    {
      APSLogErrorAt(0);
      v4 = 4294960537;
      APSSignalErrorAt(0xFFFFE599, "APSRealTimeReadableRead got NULL value! Concurrent readers?", "APSRealTimeReadableRead");
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v4;
}

uint64_t APSRealTimeReadableWrite(size_t *a1, const void *a2)
{
  if (a1 && a2)
  {
    v4 = malloc_type_malloc(a1[2], 0x65D42D2CuLL);
    if (v4)
    {
      v5 = v4;
      memcpy(v4, a2, a1[2]);
      FigSimpleMutexLock();
      v6 = (a1 + 3);
      v7 = a1[5];
      while (1)
      {
        v8 = v7;
        atomic_compare_exchange_strong_explicit(v6, &v8, v5, memory_order_release, memory_order_relaxed);
        if (v8 == v7)
        {
          break;
        }

        pthread_yield_np();
        v7 = a1[5];
        v6 = (a1 + 3);
      }

      a1[5] = v5;
      FigSimpleMutexUnlock();
      free(v7);
      return 0;
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
}

uint64_t APSRealTimeAllocatorGetDefault()
{
  if (APSRealTimeAllocatorGetDefault::sRTAllocatorOnce != -1)
  {
    dispatch_once(&APSRealTimeAllocatorGetDefault::sRTAllocatorOnce, &__block_literal_global_1621);
  }

  return APSRealTimeAllocatorGetDefault::sRTAllocator;
}

void __APSRealTimeAllocatorGetDefault_block_invoke()
{
  MEMORY[0x223DB55F0]();
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
LABEL_7:

    dispatch_once(&rtReleaser_getInstance(void)::sRTReleaserOnce, &__block_literal_global_7);
    return;
  }

  APSCaulkMemoryResourceAllocatorCreate(*MEMORY[0x277D7F098], 0, &APSRealTimeAllocatorGetDefault::sRTAllocator);
  if (APSSettingsGetIntWithOverrideAndDefault(@"debugRTAllocator", 0, 0))
  {
    APSDebugAllocatorCreate(APSRealTimeAllocatorGetDefault::sRTAllocator, @"APSRealTimeAllocator", &APSRealTimeAllocatorGetDefault::sRTAllocator);
  }

  if (rtReleaser_getInstance(void)::sRTReleaserOnce != -1)
  {
    goto LABEL_7;
  }
}

uint64_t ___ZL22rtReleaser_getInstancev_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  rtReleaser_getInstance(void)::sRTReleaser = dispatch_queue_create("APSRealTimeReleaser", v0);
  APSAtomicMessageQueueCreate(*MEMORY[0x277CBECE8], 8, &qword_27D00BB30);
  v1 = rtReleaser_getInstance(void)::sRTReleaser;
  v2 = qword_27D00BB30;

  return APSRealTimeSignalCreate(v1, v2, rtReleaser_serviceMessageQueue, 0, &qword_27D00BB38);
}

uint64_t rtReleaser_serviceMessageQueue(uint64_t a1)
{
  for (cf = 0; ; CFRelease(cf))
  {
    result = APSAtomicMessageQueueReadMessage(a1, &cf);
    if (!result)
    {
      break;
    }
  }

  return result;
}

void APSRealTimeAllocatorAllocate()
{
  if (APSRealTimeAllocatorGetDefault::sRTAllocatorOnce != -1)
  {
    dispatch_once(&APSRealTimeAllocatorGetDefault::sRTAllocatorOnce, &__block_literal_global_1621);
  }

  JUMPOUT(0x223DB3470);
}

void APSRealTimeAllocatorDeallocate(void *ptr)
{
  if (APSRealTimeAllocatorGetDefault::sRTAllocatorOnce != -1)
  {
    dispatch_once(&APSRealTimeAllocatorGetDefault::sRTAllocatorOnce, &__block_literal_global_1621);
  }

  v2 = APSRealTimeAllocatorGetDefault::sRTAllocator;

  CFAllocatorDeallocate(v2, ptr);
}

void APSCFRealTimeRelease(CFTypeRef cf)
{
  v5 = cf;
  if (rtReleaser_getInstance(void)::sRTReleaserOnce == -1)
  {
    if (!cf)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&rtReleaser_getInstance(void)::sRTReleaserOnce, &__block_literal_global_7);
    if (!cf)
    {
      return;
    }
  }

  v2 = CFGetAllocator(cf);
  if (APSRealTimeAllocatorGetDefault::sRTAllocatorOnce != -1)
  {
    dispatch_once(&APSRealTimeAllocatorGetDefault::sRTAllocatorOnce, &__block_literal_global_1621);
  }

  if (v2 == APSRealTimeAllocatorGetDefault::sRTAllocator)
  {

    CFRelease(cf);
  }

  else
  {
    APSAtomicMessageQueueSendMessage(qword_27D00BB30, &v5);
    v3 = *(qword_27D00BB38 + 16);
    v4 = 1;
    atomic_compare_exchange_strong_explicit(v3 + 10, &v4, 2u, memory_order_release, memory_order_relaxed);
    if (v4 == 1)
    {

      caulk::concurrent::messenger::enqueue((v3 + 6), v3);
    }
  }
}

uint64_t APSAudioStats_MarkEvent(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    if (gLogCategory_APSAudioStats <= 50)
    {
      v4 = *(result + 16);
      if (gLogCategory_APSAudioStats != -1 || (result = _LogCategory_Initialize(), result))
      {
        v5 = *(v3 + 24);
        v6 = 0.0;
        if (v5 > 0.0)
        {
          v6 = *(v3 + 392) / v5;
        }

        result = LogPrintF(&gLogCategory_APSAudioStats, "void APSAudioSampleCounter_MarkEvent(APSAudioSampleCounter *const, CFStringRef, CFStringRef, const AudioStreamBasicDescription *)", 33554482, "%@ Event: %'@; %.3lfs", v4, a2, *&v6);
      }
    }

    *(v3 + 392) = 0;
  }

  else
  {

    return APSLogErrorAt(0);
  }

  return result;
}

uint64_t __APSAudioStatsGetTypeID_block_invoke()
{
  APSAudioStatsGetTypeID_histogramClass = 0;
  unk_27D00BB50 = "APSAudioStats";
  qword_27D00BB58 = 0;
  unk_27D00BB60 = 0;
  qword_27D00BB68 = APSAudioStatsFinalize;
  unk_27D00BB70 = 0;
  qword_27D00BB78 = 0;
  unk_27D00BB80 = 0;
  qword_27D00BB88 = APSAudioStatsCopyDebugDescription;
  result = _CFRuntimeRegisterClass();
  APSAudioStatsGetTypeID_typeID = result;
  return result;
}

uint64_t APSIssueReporterProtocolGetProtocolID()
{
  if (APSIssueReporterProtocolGetProtocolID_sAPSIssueReporterProtocolIDOnce != -1)
  {
    dispatch_once_f(&APSIssueReporterProtocolGetProtocolID_sAPSIssueReporterProtocolIDOnce, &APSIssueReporterProtocolGetProtocolID_sAPSIssueReporterProtocolID, issueReporter_registerProtocol);
  }

  return APSIssueReporterProtocolGetProtocolID_sAPSIssueReporterProtocolID;
}

uint64_t APSRealTimeDispatcherGetTypeID()
{
  if (gAPSRealTimeDispatcherInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimeDispatcherInitOnce, 0, _APSRealTimeDispatcherGetTypeID);
  }

  return gAPSRealTimeDispatcherTypeID;
}

uint64_t _APSRealTimeDispatcherGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRealTimeDispatcherTypeID = result;
  return result;
}

void _APSRealTimeDispatcherFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t APSRealTimeDispatcherCreate(NSObject *a1, CFTypeRef *a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSRealTimeDispatcherInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimeDispatcherInitOnce, 0, _APSRealTimeDispatcherGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v5 = Instance;
  Instance[3] = 0;
  v6 = Instance + 3;
  Instance[2] = 0;
  Instance[4] = 0;
  dispatch_retain(a1);
  *(v6 - 1) = a1;
  v7 = APSAtomicMessageQueueCreate(*MEMORY[0x277CBECE8], 16, v6);
  if (v7)
  {
    v9 = v7;
    goto LABEL_14;
  }

  v8 = CFRetain(v5[3]);
  v7 = APSRealTimeSignalCreate(a1, v8, rtDispatcher_signalHandler, rtDispatcher_signalFinalizer, v5 + 4);
  v9 = v7;
  if (v7)
  {
LABEL_14:
    APSLogErrorAt(v7);
    goto LABEL_9;
  }

  *a2 = CFRetain(v5);
LABEL_9:
  CFRelease(v5);
  return v9;
}

void rtDispatcher_signalFinalizer(const void *a1)
{
  v2 = 0;
  v3 = 0;
  while (APSAtomicMessageQueueReadMessage(a1, &v2))
  {
    v2(v3);
  }

  CFRelease(a1);
}

uint64_t rtDispatcher_signalHandler(uint64_t a1)
{
  v3 = 0;
  for (i = 0; ; v3(i))
  {
    result = APSAtomicMessageQueueReadMessage(a1, &v3);
    if (!result)
    {
      break;
    }
  }

  return result;
}

uint64_t APSRealTimeDispatcherAsync(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  if (a2)
  {
    v3 = result;
    result = APSAtomicMessageQueueSendMessage(*(result + 24), v6);
    v4 = *(*(v3 + 32) + 16);
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v4 + 10, &v5, 2u, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {

      return caulk::concurrent::messenger::enqueue((v4 + 6), v4);
    }
  }

  return result;
}

uint64_t APSRTPPassThroughJitterBufferAcquireRelinquishedNode(uint64_t a1, void *a2)
{
  v2 = 4294895295;
  if (a1 && a2)
  {
    _X0 = 0;
    _X1 = 0;
    v2 = 4294895294;
    *a2 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    while (1)
    {
      v12 = _X0;
      if (!_X0)
      {
        break;
      }

      _X2 = *_X0;
      _X1 = 0;
      __asm { CASPAL          X0, X1, X2, X3, [X9] }

      if (_X0 == v12)
      {
        v15 = v12;
        goto LABEL_15;
      }
    }

    while (1)
    {
      v16 = atomic_load((a1 + 116));
      if (!v16)
      {
        atomic_compare_exchange_strong((a1 + 116), &v16, 1u);
        if (!v16)
        {
          break;
        }
      }

      pthread_yield_np();
    }

    v17 = *(a1 + 200);
    v15 = *v17;
    if (*v17 != v17)
    {
      v19 = *v15;
      v18 = v15[1];
      *(v19 + 8) = v18;
      *v18 = v19;
      atomic_store(0, (a1 + 116));
      atomic_fetch_add((a1 + 112), 0xFFFFFFFF);
LABEL_15:
      v25 = v15 + 2;
      *(v15 + 13) = 0;
      *(v15 + 14) = 0;
      if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        v26 = "YES";
        if (!v12)
        {
          v26 = "NO";
        }

        LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "OSStatus APSRTPPassThroughJitterBufferAcquireRelinquishedNode(APSRTPPassThroughJitterBufferRef, APSRTPPassThroughJitterBufferNode **)", 33554462, "[%{ptr}] Acquired %{ptr} from free list? %s\n", a1, v25, v26);
      }

      v2 = 0;
      *a2 = v25;
      return v2;
    }

    _X2 = 0;
    atomic_store(0, (a1 + 116));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    while (_X2)
    {
      v15 = _X2;
      _X4 = *_X2;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X4, X5, [X9] }

      if (_X2 == v15)
      {
        goto LABEL_15;
      }
    }

    if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "OSStatus APSRTPPassThroughJitterBufferAcquireRelinquishedNode(APSRTPPassThroughJitterBufferRef, APSRTPPassThroughJitterBufferNode **)", 33554462, "[%{ptr}] No resources available\n", a1);
    }
  }

  return v2;
}

uint64_t APSRTPPassThroughJitterBufferRelinquishNode(uint64_t a1, uint64_t a2)
{
  result = 4294895295;
  if (a1 && a2)
  {
    if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "OSStatus APSRTPPassThroughJitterBufferRelinquishNode(APSRTPPassThroughJitterBufferRef, APSRTPPassThroughJitterBufferNode *)", 33554462, "[%{ptr}] Relinquish %{ptr}\n", a1, a2);
    }

    _X0 = 0;
    _X1 = 0;
    _X2 = (a2 - 16);
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    *(a2 - 8) = 0;
    do
    {
      *_X2 = _X0;
      _X5 = 0;
      __asm { CASPAL          X4, X5, X2, X3, [X8] }

      _ZF = _X4 == _X0;
      _X0 = _X4;
    }

    while (!_ZF);
    return 0;
  }

  return result;
}

uint64_t APSRTPPassThroughJitterBufferInsertNode(uint64_t a1, uint64_t a2)
{
  result = 4294895295;
  if (a1 && a2)
  {
    if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "OSStatus APSRTPPassThroughJitterBufferInsertNode(APSRTPPassThroughJitterBufferRef, APSRTPPassThroughJitterBufferNode *)", 33554462, "[%{ptr}] Insert %{ptr}\n", a1, a2);
    }

    v5 = *(*a2 + 4);
    v6 = a1 + 224;
    v7 = atomic_load((a1 + 216));
    do
    {
      v8 = (v7 & 0x4000000000000000) >> 62;
      if ((v7 & 0x4000000000000000) != 0)
      {
        v9 = v7 >> 31;
      }

      else
      {
        LODWORD(v9) = v7;
      }

      if ((v7 & 0x4000000000000000) != 0)
      {
        LODWORD(v10) = v7;
      }

      else
      {
        v10 = v7 >> 31;
      }

      v11 = 31;
      v12 = v5;
      while (1)
      {
        v13 = v12 % 0x1F;
        if ((v9 & (1 << v13)) == 0)
        {
          break;
        }

        if (*(v6 + 124 * v8 + 4 * v13) == v5)
        {
LABEL_36:
          APSRTPPassThroughJitterBufferRelinquishNode(a1, a2);
          return 0;
        }

        v12 = v13 + 1;
        if (!--v11)
        {
          v13 = -1;
          break;
        }
      }

      v14 = 31;
      v15 = v5;
      do
      {
        v16 = v15 % 0x1F;
        if ((v10 & (1 << v16)) == 0)
        {
          break;
        }

        if (*(v6 + 124 * (v8 ^ 1) + 4 * v16) == v5)
        {
          goto LABEL_36;
        }

        v15 = v16 + 1;
        --v14;
      }

      while (v14);
      v17 = v7;
      if (v13 == -1)
      {
        if ((v7 & 0x4000000000000000) != 0)
        {
          v18 = 0xFFFFFFFF80000000;
        }

        else
        {
          v18 = 0xC00000007FFFFFFFLL;
        }

        v17 = (v7 & 0xBFFFFFFFFFFFFFFFLL | (((v8 ^ 1) & 1) << 62)) & v18;
        v13 = v5 % 0x1F;
        LODWORD(v8) = (v7 & 0x4000000000000000) == 0;
      }

      v19 = (1 << v13);
      if (v8)
      {
        v19 = (1 << v13) << 31;
      }

      v20 = v7;
      atomic_compare_exchange_strong((a1 + 216), &v20, v19 | v17);
      _ZF = v20 == v7;
      v7 = v20;
    }

    while (!_ZF);
    _X4 = 0;
    _X5 = 0;
    *(v6 + 124 * ((v17 >> 62) & 1) + 4 * v13) = v5;
    _X2 = (a2 - 16);
    __asm { CASPAL          X4, X5, X4, X5, [X8] }

    *(a2 - 8) = 0;
    do
    {
      result = 0;
      *_X2 = _X4;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X2, X3, [X8] }

      _ZF = _X6 == _X4;
      _X4 = _X6;
    }

    while (!_ZF);
  }

  return result;
}