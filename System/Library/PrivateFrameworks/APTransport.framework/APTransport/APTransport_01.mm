uint64_t APTTrafficMetricsResponseReceived(uint64_t result, uint64_t a2)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_10_9(0x768u, v3);
    OUTLINED_FUNCTION_1_28();
    LODWORD(v12) = 10;
    v4 = mach_absolute_time();
    LODWORD(v13) = 0;
    OUTLINED_FUNCTION_3_11(v4, v5, v6, v7, v8, v9, v10, v11, v12, v4, v13, a2, v14);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t stream_SendMessageCreatingReply(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  if (*(DerivedStorage + 72))
  {
    APSLogErrorAt();
    v25 = v47;
    v26 = -16617;
  }

  else
  {
    OUTLINED_FUNCTION_11_7();
    if (v10)
    {
      v9 = 48;
    }

    v11 = *(DerivedStorage + v9);
    if (*(v11 + 9))
    {
      dispatch_semaphore_wait(*(DerivedStorage + 32), 0xFFFFFFFFFFFFFFFFLL);
      v12 = *(DerivedStorage + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __stream_SendMessageCreatingReply_block_invoke;
      block[3] = &unk_278BC9E70;
      v37 = a2;
      block[8] = a3;
      block[9] = DerivedStorage;
      block[10] = v11;
      block[4] = &v46;
      block[5] = &v42;
      block[6] = &v38;
      block[7] = a1;
      dispatch_sync(v12, block);
      if (*(v47 + 6))
      {
        goto LABEL_19;
      }

      v13 = v39[3];
      v14 = *(v43 + 6);
      if (v14)
      {
        v15 = dispatch_time(0, 1000000000 * v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = dispatch_semaphore_wait(v13, v15);
      v18 = v16 != 0;
      if (!v16)
      {
        goto LABEL_18;
      }

      v19 = gLogCategory_APTransportStream;
      if (gLogCategory_APTransportStream > 50)
      {
        goto LABEL_18;
      }

      if (gLogCategory_APTransportStream == -1)
      {
        if (!OUTLINED_FUNCTION_8(&gLogCategory_APTransportStream))
        {
LABEL_18:
          OUTLINED_FUNCTION_1_27();
          v29 = 0x40000000;
          v30 = __stream_SendMessageCreatingReply_block_invoke_2;
          v31 = &unk_278BC9E98;
          v32 = &v46;
          v33 = DerivedStorage;
          v35 = v18;
          v34 = a4;
          dispatch_sync(v20, v28);
          goto LABEL_19;
        }

        v19 = gLogCategory_APTransportStream;
      }

      if (v19 == -1)
      {
        _LogCategory_Initialize();
      }

      OUTLINED_FUNCTION_9(&gLogCategory_APTransportStream, "OSStatus stream_SendMessageCreatingReply(FigTransportStreamRef, OSType, CMBlockBufferRef, CMBlockBufferRef *)", v17, "[%{ptr}] Timed out after %ds waiting for reply to last message%?{end} [%{ptr}]");
      goto LABEL_18;
    }

    APSLogErrorAt();
    v25 = v47;
    v26 = -16614;
  }

  *(v25 + 6) = v26;
LABEL_19:
  v21 = v39[3];
  if (v21)
  {
    dispatch_release(v21);
  }

  v22 = *(DerivedStorage + 64);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 0x40000000;
  v27[2] = __stream_SendMessageCreatingReply_block_invoke_3;
  v27[3] = &__block_descriptor_tmp_166;
  v27[4] = DerivedStorage;
  dispatch_sync(v22, v27);
  dispatch_semaphore_signal(*(DerivedStorage + 32));
  v23 = *(v47 + 6);
  if (v23 == -6722)
  {
    CMBaseObjectGetDerivedStorage();
    APSDispatchSyncTask();
    v23 = *(v47 + 6);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  return v23;
}

void APTransportPackageHTTPSetURL(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  if (a2)
  {
    CFRetain(a2);
  }

  *DerivedStorage = a2;
  if (v4)
  {

    CFRelease(v4);
  }
}

void httpPackage_computeMessageTypeString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6 == 1668246893)
  {
    v7 = DerivedStorage;
    CFDictionaryGetTypeID();
    v8 = CFCreateWithPlistBytes();
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v6 = *(v7 + 8);
    if (v6)
    {
LABEL_3:
      SNPrintF(a4, 64, "%C%?{end}:%@", v6, TypedValue == 0, TypedValue);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    TypedValue = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  SNPrintF(a4, 64, "");
LABEL_6:
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t httppackage_SetGroupID(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 32) = a2;
  return result;
}

uint64_t httppackage_GetErrorFromHeader(uint64_t a1)
{
  v1 = *(*(CMBaseObjectGetDerivedStorage() + 24) + 8456);
  v2 = v1 - 200;
  v3 = v1 + 200000;
  if (v2 >= 0x64)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void aptTrafficMetrics_intervalTimerHandler(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 112))
  {
    v3 = (a1 + 392);
    v4 = a1 + 320;
    if (*(a1 + 104) == 5)
    {
      aptTrafficMetrics_handleQueuedEvents(a1);
      v5 = mach_absolute_time();
      v6 = OUTLINED_FUNCTION_5_13(v5);
      aptTrafficMetrics_fillSendingWindowsRep(a1, v6 - v7, v35);
      v8 = *(a1 + 128);
      *(a1 + 392) += v8;
      *(a1 + 408) = vaddq_s64(*(a1 + 408), *(a1 + 144));
      v9 = 1;
      do
      {
        OUTLINED_FUNCTION_8_3();
        v12 = v12 || v10 == 0;
        if (!v12)
        {
          v9 = 0;
        }

        v4 += 8;
      }

      while (v10 != -2);
      if (*(a1 + 80) && v9)
      {
        goto LABEL_31;
      }

      v13 = *(a1 + 16);
      if (*v13 > 50)
      {
        goto LABEL_31;
      }

      if (*v13 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_31;
        }

        v13 = *(a1 + 16);
        v33 = *(a1 + 144);
        v8 = *(a1 + 128);
      }

      else
      {
        v33 = v11;
      }

      v31 = *(a1 + 24);
      v29 = UpTicksToMilliseconds();
      v27 = UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      UpTicksToMilliseconds();
      OUTLINED_FUNCTION_9_7();
      LogPrintF(v13, "void aptTrafficMetrics_receiverIntervalTimerHandler(APTTrafficMetricsRef)", 33554482, "[%{ptr}] Connection statistics: I:%zu/%zu/%llu/%llu/%llu/%llu %s T:%zu/%zu/%llu/%llu/%llu/%llu\n", v31, v33, v8, v29, v27);
LABEL_31:
      bzero((a1 + 128), 0x108uLL);
      *(a1 + 80) = v9;
      goto LABEL_34;
    }

    aptTrafficMetrics_handleQueuedEvents(a1);
    v14 = mach_absolute_time();
    v15 = OUTLINED_FUNCTION_5_13(v14);
    aptTrafficMetrics_fillSendingWindowsRep(a1, v15 - v16, v35);
    *v3 = vaddq_s64(*v3, *(a1 + 128));
    *(a1 + 416) += *(a1 + 152);
    v17 = 1;
    do
    {
      OUTLINED_FUNCTION_8_3();
      if (!v12 && v18 != 8)
      {
        v17 = 0;
      }

      v4 += 8;
    }

    while (v18 != 1);
    if (!*(a1 + 80) || !v17)
    {
      v22 = *(a1 + 16);
      if (*v22 <= 50)
      {
        if (*v22 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_33;
          }

          v22 = *(a1 + 16);
          v32 = *(a1 + 128);
          v34 = *(a1 + 136);
        }

        else
        {
          v32 = v19;
          v34 = v20;
        }

        v30 = *(a1 + 24);
        v28 = UpTicksToMilliseconds();
        v26 = UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        UpTicksToMilliseconds();
        OUTLINED_FUNCTION_9_7();
        LogPrintF(v22, "void aptTrafficMetrics_senderIntervalTimerHandler(APTTrafficMetricsRef)", 33554482, "[%{ptr}] Connection statistics: I:%zu/%zu/%llu/%llu/%llu/%llu%?s%?llu/%llu %s IC:%zu%?s%?llu%?s%?llu D:%llu%?s/%llu%?s T:%zu/%zu/%llu/%llu/%llu/%llu%?s%?llu/%llu\n", v30, v34, v32, v28, v26);
      }
    }

LABEL_33:
    bzero((a1 + 128), 0x108uLL);
    *(a1 + 80) = v17;
LABEL_34:
    *(a1 + 72) = v1;
    if (!*(a1 + 120))
    {
      v23 = *(a1 + 48);
      Current = CFAbsoluteTimeGetCurrent();
      v25 = dispatch_time(0, (-(Current - (floor(Current / 5.0) + 1.0) * 5.0) * 1000000000.0));
      dispatch_source_set_timer(v23, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    }
  }
}

uint64_t aptTrafficMetrics_fillSendingWindowsRep(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1[12];
  if (a2 / v7 >= 0x13)
  {
    v8 = 19;
  }

  else
  {
    v8 = a2 / v7;
  }

  v9 = a1 + 20;
  v10 = -1;
  v11 = a1 + 20;
  do
  {
    v13 = *v11++;
    v12 = v13;
    if (v13 > v6)
    {
      v6 = v12;
    }

    ++v10;
  }

  while (v10 < v8);
  v14 = a1[11];
  if (v6 > v14)
  {
    a1[11] = v6;
  }

  result = UpTicksToMilliseconds();
  if (v7 <= a2 && result - 500 * v8 <= 0x63)
  {
    v8 = (__PAIR128__(v8, v9[v8]) - 1) >> 64;
  }

  v16 = 0;
  v17 = 19;
  if (v8 < 0x13)
  {
    v17 = v8;
  }

  v18 = v17 + 1;
  do
  {
    *(a3 + v16) = (a1[11] + 9 * v9[v16] - 1) / a1[11] + 48;
    ++v16;
  }

  while (v18 != v16);
  if (v6 > v14)
  {
    *(a3 + v18) = 42;
    v18 = v16 + 1;
  }

  *(a3 + v18) = 0;
  return result;
}

uint64_t httpconnection_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();

  return FigDispatchSyncCopyPropertyImplementation();
}

uint64_t httpconnection_copyPropertyInternal(const void *a1, const void *a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"LocalInterfaceName"))
  {
    if (*(DerivedStorage + 108) != 5)
    {
      OUTLINED_FUNCTION_17();
      APSLogErrorAt();
      APSSignalErrorAt();
      return 0;
    }

    Int64 = CFStringCreateWithCString(a3, (DerivedStorage + 310), 0x8000100u);
    if (!Int64)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"LocalMACAddress"))
  {
    Int64 = CFDataCreate(a3, (DerivedStorage + 304), 6);
    if (!Int64)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"LocalNetworkIPAddress"))
  {
    Int64 = CFDataCreate(a3, (DerivedStorage + 136), 28);
    if (!Int64)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (!CFEqual(a2, @"LocalNetworkPort"))
  {
    if (CFEqual(a2, @"RemoteNetworkIPAddress"))
    {
      v17 = 0;
      *v16 = *(DerivedStorage + 164);
      *&v16[12] = *(DerivedStorage + 176);
      a1 = APSNetworkAddressCreateWithSocketAddr();
      if (a1)
      {
LABEL_44:
        APSLogErrorAt();
        return a1;
      }

      APSNetworkAddressSetPort();
      *a4 = v17;
      return a1;
    }

    if (CFEqual(a2, @"BoundInterfaceIndex"))
    {
      Int64 = CFNumberCreateInt64();
      if (!Int64)
      {
        goto LABEL_26;
      }
    }

    else if (CFEqual(a2, @"RemoteNetworkPort"))
    {
      Int64 = CFNumberCreateInt64();
      if (!Int64)
      {
LABEL_26:
        OUTLINED_FUNCTION_7_1();
        goto LABEL_44;
      }
    }

    else
    {
      if (!CFEqual(a2, @"NetTransportType"))
      {
        if (!CFEqual(a2, @"TimingInformation"))
        {
          return 4294954512;
        }

        mach_absolute_time();
        if (*(DerivedStorage + 488))
        {
          UpTicksToMilliseconds();
        }

        v13 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v15 = Mutable;
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          a1 = 0;
          *a4 = v15;
        }

        else
        {
          APSLogErrorAt();
          return 4294960568;
        }

        return a1;
      }

      OUTLINED_FUNCTION_7_1();
      if (*(DerivedStorage + 108) != 5)
      {
        return (a1 + 3);
      }

      Int64 = CFNumberCreate(a3, kCFNumberIntType, (DerivedStorage + 436));
      if (!Int64)
      {
        goto LABEL_44;
      }
    }

LABEL_16:
    a1 = 0;
    *a4 = Int64;
    return a1;
  }

  if (!*(DerivedStorage + 224))
  {
    APSLogErrorAt();
    return 4294894975;
  }

  v10 = *(DerivedStorage + 240);
  if (v10)
  {
    *v16 = -1;
    ListeningPort = APTConnectionListenerGetListeningPort(v10, v16);
    if (ListeningPort)
    {
      a1 = ListeningPort;
      goto LABEL_44;
    }

    Int64 = CFNumberCreate(a3, kCFNumberIntType, v16);
    if (!Int64)
    {
      OUTLINED_FUNCTION_7_1();
      goto LABEL_44;
    }

    goto LABEL_16;
  }

  APSLogErrorAt();

  return APSSignalErrorAt();
}

void stream_sendMessageInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  cf = 0;
  v16 = 0;
  if (*(DerivedStorage + 72))
  {
    stream_sendMessageInternal_cold_1();
    v5 = 0;
  }

  else
  {
    v4 = 56;
    if (!*(DerivedStorage + 24))
    {
      v4 = 48;
    }

    v5 = *(DerivedStorage + v4);
    if (*(v5 + 9))
    {
      v6 = stream_copyFormattedAsyncPackageForBBuf(*a1, a1[2], *(a1 + 2), &cf, &v16);
      if (v6)
      {
        stream_sendMessageInternal_cold_2(v6);
      }

      else
      {
        if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportStream, "void stream_sendMessageInternal(void *)", 33554442, "[%{ptr}] Sending message: type %'C message %{ptr}.\n", *a1, *(a1 + 2), a1[2]);
        }

        v7 = *(v5 + 24);
        v8 = cf;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v9)
        {
          v10 = v9(v7, v8);
          if (!v10)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v10 = 4294954514;
        }

        stream_sendMessageInternal_cold_3(v10);
      }
    }

    else
    {
      stream_sendMessageInternal_cold_4();
    }
  }

LABEL_12:
  if (v16)
  {
    v11 = *(v3 + 40);
    if (v11)
    {
      APTransportStreamSendBackingProviderRelinquishBBuf(v11, a1[2]);
    }

    else
    {
      v13 = *(v5 + 24);
      v14 = cf;
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v15)
      {
        v15(v13, v14);
      }
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v12 = a1[2];
  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t stream_copyFormattedAsyncPackageForBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, CFTypeRef *a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_copyFormattedAsyncPackageForBBuf_cold_1();
    return 4294950679;
  }

  if (!a2)
  {
    stream_copyFormattedAsyncPackageForBBuf_cold_5();
    return 4294950686;
  }

  if (!a4)
  {
    stream_copyFormattedAsyncPackageForBBuf_cold_4();
    return 4294950686;
  }

  if (!a5)
  {
    stream_copyFormattedAsyncPackageForBBuf_cold_3();
    return 4294950686;
  }

  v11 = DerivedStorage;
  v12 = stream_copyPackageForBBuf(a1, a2, a4, a5);
  if (v12)
  {
    v15 = v12;
    stream_copyFormattedAsyncPackageForBBuf_cold_2(v12);
  }

  else
  {
    v13 = *a4;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v14)
    {
      v15 = v14(v13);
    }

    else
    {
      v15 = 0;
    }

    v16 = *a4;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v17)
    {
      v17(v16, a3);
    }

    if (!*(v11 + 40) || !v15)
    {
      v18 = *a4;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v19)
      {
        v19(v18, a2);
      }
    }

    v20 = *(v11 + 96);
    if (v20)
    {
      v21 = *a4;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v22)
      {
        v22(v21, v20);
      }
    }

    v23 = *a4;
    v24 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v24)
    {
      v24(v23, 1634957678);
    }

    if (v15)
    {
      CFRelease(v15);
      return 0;
    }
  }

  return v15;
}

uint64_t stream_SendMessage(const void *a1, unsigned int a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

const void *APAdvertiserInfoCopyProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int *a5)
{
  v6 = a3;
  if (!a3)
  {
    APAdvertiserInfoCopyProperty_cold_1();
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

void httpconnection_checkIfNetworkStalled(uint64_t a1)
{
  memset(&v68, 0, sizeof(v68));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v68, HostTimeClock);
  v67 = **&MEMORY[0x277CC0898];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    lhs = v68;
    rhs = *(DerivedStorage + 376);
    v5 = CMTimeSubtract(&v67, &lhs, &rhs);
    v13 = *(DerivedStorage + 432);
    if (v13 == 1)
    {
      if (*(DerivedStorage + 372))
      {
        OUTLINED_FUNCTION_2_4(v5, v6, v7, v8, v9, v10, v11, v12, v57, Seconds, rhs.value, *&rhs.timescale, rhs.epoch, v64, lhs.value, *&lhs.timescale, lhs.epoch, v66, *&v67.value);
        if (OUTLINED_FUNCTION_14_0(v30, v31, v32, v33, v34, v35, v36, v37, v59, v62, *&rhs.value, rhs.epoch, v64, lhs.value) > 0)
        {
          goto LABEL_30;
        }
      }

      *(DerivedStorage + 432) = 0;
      if (gLogCategory_APTransportConnectionHTTP > 50 || gLogCategory_APTransportConnectionHTTP == -1 && !OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP))
      {
        goto LABEL_23;
      }

      v57 = v3;
    }

    else
    {
      if (v13)
      {
        if (gLogCategory_APTransportConnectionHTTP <= 90)
        {
          if (gLogCategory_APTransportConnectionHTTP == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_30;
            }

            v13 = *(DerivedStorage + 432);
          }

          LogPrintF(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_checkIfNetworkStalled(void *)", 33554522, "[%{ptr}] Invalid APTransportConnectionStallState = %d", v3, v13);
        }

LABEL_30:
        CFRelease(v3);
        return;
      }

      if (!*(DerivedStorage + 372))
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_2_4(v5, v6, v7, v8, v9, v10, v11, v12, v57, Seconds, rhs.value, *&rhs.timescale, rhs.epoch, v64, lhs.value, *&lhs.timescale, lhs.epoch, v66, *&v67.value);
      v22 = OUTLINED_FUNCTION_14_0(v14, v15, v16, v17, v18, v19, v20, v21, v58, v61, *&rhs.value, rhs.epoch, v64, lhs.value);
      if (v22 < 1)
      {
        goto LABEL_30;
      }

      *(DerivedStorage + 432) = 1;
      if (gLogCategory_APTransportConnectionHTTP > 50 || gLogCategory_APTransportConnectionHTTP == -1 && (v22 = OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP), !v22))
      {
LABEL_23:
        v42 = CFGetAllocator(v3);
        Mutable = CFDictionaryCreateMutable(v42, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v44 = Mutable;
          StallStateString = APTransportConnectionGetStallStateString(*(DerivedStorage + 432));
          CFDictionarySetValue(v44, @"StallState", StallStateString);
          if (*(DerivedStorage + 432) == 1)
          {
            OUTLINED_FUNCTION_2_4(v46, *MEMORY[0x277CBECE8], v47, v48, v49, v50, v51, v52, v57, Seconds, rhs.value, *&rhs.timescale, rhs.epoch, v64, lhs.value, *&lhs.timescale, lhs.epoch, v66, *&v67.value);
            v54 = CMTimeCopyAsDictionary(&lhs, v53);
            if (!v54)
            {
              v56 = APSLogErrorAt();
              OUTLINED_FUNCTION_5_4(v56, "Failed to allocate stall duration dictionary");
LABEL_29:
              CFRelease(v3);
              CFRelease(v44);
              v3 = v54;
              if (!v54)
              {
                return;
              }

              goto LABEL_30;
            }

            CFDictionarySetValue(v44, @"StallDuration", v54);
          }

          else
          {
            v54 = 0;
          }

          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          goto LABEL_29;
        }

        v55 = APSLogErrorAt();
        OUTLINED_FUNCTION_5_4(v55, "Failed to allocate payload dictionary");
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_2_4(v22, v23, v24, v25, v26, v27, v28, v29, v57, Seconds, rhs.value, *&rhs.timescale, rhs.epoch, v64, lhs.value, *&lhs.timescale, lhs.epoch, v66, *&v67.value);
      Seconds = CMTimeGetSeconds(&lhs);
      v57 = v3;
    }

    OUTLINED_FUNCTION_3_1();
    LogPrintF(v38, v39, v40, v41);
    goto LABEL_23;
  }
}

uint64_t session_handleKeepAliveResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

__n128 standardKeepAliveController_setKeepAliveReceivedCallback(uint64_t a1)
{
  memset(&v11, 0, sizeof(v11));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v11, HostTimeClock);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *&v11.value;
  *(DerivedStorage + 104) = *&v11.value;
  epoch = v11.epoch;
  *(DerivedStorage + 120) = v11.epoch;
  *&lhs.value = v4;
  lhs.epoch = epoch;
  v8 = *(DerivedStorage + 80);
  CMTimeSubtract(&v10, &lhs, &v8);
  *(a1 + 8) = v10;
  v6 = MEMORY[0x277CC0898];
  result = *MEMORY[0x277CC0898];
  *(DerivedStorage + 80) = *MEMORY[0x277CC0898];
  *(DerivedStorage + 96) = *(v6 + 16);
  return result;
}

uint64_t session_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();

  return FigDispatchSyncCopyPropertyImplementation();
}

uint64_t session_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_copyPropertyInternal_cold_1();
    return 4294954511;
  }

  v9 = DerivedStorage;
  if (!CFEqual(a2, *MEMORY[0x277CC1B00]))
  {
    if (CFEqual(a2, @"ConnectedOnPeerToPeerInterface"))
    {
      if ((*(v9 + 38) - 3) >= 0xFFFFFFFE)
      {
        v12 = MEMORY[0x277CBED28];
      }

      else
      {
        v12 = MEMORY[0x277CBED10];
      }

      v13 = *v12;
      *a4 = *v12;
      CFRetain(v13);
      return 0;
    }

    if (CFEqual(a2, @"InterfaceType"))
    {
      v14 = CFNumberCreate(a3, kCFNumberIntType, v9 + 19);
      *a4 = v14;
      if (v14)
      {
        return 0;
      }

      session_copyPropertyInternal_cold_2();
    }

    else if (CFEqual(a2, @"TransportType"))
    {
      valuePtr = 0;
      SessionTransportType = session_getSessionTransportType(a1, &valuePtr);
      if (SessionTransportType)
      {
        v11 = SessionTransportType;
        session_copyPropertyInternal_cold_3(SessionTransportType);
        return v11;
      }

      v18 = CFNumberCreate(a3, kCFNumberIntType, &valuePtr);
      *a4 = v18;
      if (v18)
      {
        return 0;
      }

      session_copyPropertyInternal_cold_4();
    }

    else
    {
      if (CFEqual(a2, @"ShowInfo"))
      {
        v10 = session_copyShowInfo(a1);
        goto LABEL_5;
      }

      if (!CFEqual(a2, *MEMORY[0x277CC1AF8]))
      {
        if (!CFEqual(a2, *MEMORY[0x277CC1AF0]))
        {
          return 4294954512;
        }

        v10 = v9[26];
        if (!v10)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      v16 = CFNumberCreate(a3, kCFNumberIntType, v9 + 27);
      *a4 = v16;
      if (v16)
      {
        return 0;
      }

      session_copyPropertyInternal_cold_5();
    }

    return 4294950695;
  }

  v10 = v9[5];
LABEL_4:
  v10 = CFRetain(v10);
LABEL_5:
  v11 = 0;
  *a4 = v10;
  return v11;
}

uint64_t session_CreateStreamWithID(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APTransportStreamIDGetStreamCategory(a2))
  {
    v6 = APTransportStreamIDInsertStreamCategory(a2, 3);
    APTransportKeepAliveControllerGetCMBaseObject();
    if (!v7)
    {
      v8 = *(DerivedStorage + 164) + 1;
      *(DerivedStorage + 164) = v8;
      APTransportStreamIDInsertIdentifier(v6, v8);
    }
  }

  return APSDispatchSyncTask();
}

uint64_t session_createStreamWithIDInternal(uint64_t *a1)
{
  v47 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v45 = 0;
  v46 = 0;
  v44 = 0;
  if (*DerivedStorage)
  {
    session_createStreamWithIDInternal_cold_1(&v47);
LABEL_83:
    v16 = 0;
LABEL_84:
    v39 = 0;
    goto LABEL_66;
  }

  v3 = DerivedStorage;
  if (DerivedStorage[120])
  {
    session_createStreamWithIDInternal_cold_2(&v47);
    goto LABEL_83;
  }

  APTransportStreamIDGetToken(a1[1]);
  v4 = FigCFWeakReferenceTableCopyValue();
  if (v4)
  {
    v39 = v4;
    session_createStreamWithIDInternal_cold_3(&v47);
    v16 = 0;
    goto LABEL_66;
  }

  StreamName = session_createStreamName(*a1, a1[1], &v46);
  v47 = StreamName;
  if (StreamName)
  {
    session_createStreamWithIDInternal_cold_4(StreamName);
    goto LABEL_83;
  }

  Int64 = CFDictionaryGetInt64();
  if (v47)
  {
    v7 = 0;
    v47 = 0;
  }

  else
  {
    v7 = Int64;
  }

  if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    session_createStreamWithIDInternal_cold_5(v7);
  }

  v8 = session_createConnectionForStream(*a1, a1[1], v46, *(v3 + 38), *(v3 + 39), v7, a1[2], &v45);
  v47 = v8;
  if (v8)
  {
    session_createStreamWithIDInternal_cold_6(v8);
    goto LABEL_83;
  }

  v43 = v7;
  v9 = *a1;
  v10 = a1[1];
  MutableCopy = a1[2];
  v49 = 0;
  cf = 0;
  v12 = CMBaseObjectGetDerivedStorage();
  if (MutableCopy)
  {
    v13 = CFDictionaryGetInt64();
    if (v10 == 1668575852)
    {
      v10 = 1919120492;
      MutableCopy = CFRetain(MutableCopy);
    }

    else
    {
      if (v13 != 1668575852)
      {
        v16 = 0;
        MutableCopy = 0;
        goto LABEL_24;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(0, 3, MutableCopy);
      CFDictionarySetInt64();
    }
  }

  else
  {
    if (v10 != 1668575852)
    {
      v16 = 0;
      goto LABEL_24;
    }

    v10 = 1919120492;
  }

  v14 = session_createStreamName(v9, v10, &cf);
  if (v14)
  {
    v17 = v14;
    session_createStreamWithIDInternal_cold_7(v14);
  }

  else
  {
    v15 = session_createConnectionForStream(v9, v10, cf, *(v12 + 152), *(v12 + 156), v43, MutableCopy, &v49);
    if (!v15)
    {
      v16 = v49;
LABEL_24:
      v17 = 0;
      v49 = 0;
      goto LABEL_25;
    }

    v17 = v15;
    APSLogErrorAt();
    if (v49)
    {
      CFRelease(v49);
    }
  }

  v16 = 0;
LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v47 = v17;
  if (v17)
  {
    session_createStreamWithIDInternal_cold_8(v17);
    goto LABEL_84;
  }

  v18 = v46;
  v41 = v45;
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v42 = v16;
  if (Mutable)
  {
    v24 = Mutable;
    if (v16)
    {
      v25 = kAPTransportStreamOption_ReceiveConnection;
      if (*(v22 + 24) != 1)
      {
        v25 = kAPTransportStreamOption_SendConnection;
      }

      CFDictionaryAddValue(Mutable, *v25, v16);
    }

    if ((*(v22 + 152) - 5) >= 0xFFFFFFFE)
    {
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
    }

    v26 = *(v22 + 272);
    if (v26)
    {
      CFDictionaryAddValue(v24, @"EventRecorder", v26);
    }

    if (v21)
    {
      v27 = CFDictionaryGetInt64();
      Int64Ranged = CFDictionaryGetInt64Ranged();
      Value = CFDictionaryGetValue(v21, @"SendBackingProvider");
      if (Value)
      {
        CFDictionaryAddValue(v24, @"SendBackingProvider", Value);
      }
    }

    else
    {
      v27 = 0;
      Int64Ranged = 0;
    }

    if (*(v22 + 24) != 1)
    {
      goto LABEL_52;
    }

    if (v20 != 1935897198)
    {
      if (Int64Ranged > 1651861088)
      {
        if (Int64Ranged != 1935897198)
        {
          v30 = 1651861089;
LABEL_50:
          if (Int64Ranged == v30)
          {
            goto LABEL_51;
          }

LABEL_52:
          v34 = CFGetAllocator(v19);
          v32 = v41;
          v33 = APTransportStreamCreate(v34, v19, v20, v18, v43, v41, v27, v24, &v44);
          goto LABEL_53;
        }
      }

      else if (Int64Ranged != 1634754914)
      {
        v30 = 1634754932;
        goto LABEL_50;
      }
    }

LABEL_51:
    v31 = CFGetAllocator(v19);
    v32 = v41;
    v33 = APTransportStreamUnbufferedCreate(v31, v19, v20, v18, v41, v24, &v44);
LABEL_53:
    v35 = v33;
    v36 = &gLogCategory_AsyncCnxAirPlayHTTP;
    if (v33)
    {
      session_createStreamWithIDInternal_cold_9(v33);
    }

    else if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createStreamWithConnections(FigTransportSessionRef, APTransportConnectionRef, APTransportConnectionRef, FigTransportStreamID, CFStringRef, FigThreadPriority, CFDictionaryRef, FigTransportStreamRef *)", 33554482, "[%{ptr}] APTransportSession with stream [%{ptr}] holds connection [%{ptr}]\n", v19, v44, v32);
    }

    CFRelease(v24);
    goto LABEL_59;
  }

  session_createStreamWithIDInternal_cold_10();
  v35 = -16601;
  v36 = &gLogCategory_AsyncCnxAirPlayHTTP;
LABEL_59:
  v47 = v35;
  v37 = FigCFWeakReferenceTableAddValueAssociatedWithKey();
  v47 = v37;
  if (v37)
  {
    session_createStreamWithIDInternal_cold_11(v37);
    v39 = 0;
  }

  else
  {
    v38 = v36[56];
    if (v38 <= 30 && (v38 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createStreamWithIDInternal(void *)", 33554462, "[%{ptr}] APTransportSession returning %llu stream %{ptr}\n", *a1, a1[1], v44);
    }

    v39 = 0;
    *a1[3] = v44;
    v44 = 0;
  }

  v16 = v42;
LABEL_66:
  if (v46)
  {
    CFRelease(v46);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v47;
}

uint64_t session_createStreamName(uint64_t a1, uint64_t a2, __CFString **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(DerivedStorage + 32));
    if (MutableCopy)
    {
      v7 = MutableCopy;
      v8 = APTransportStreamIDCreateStringRepresentation(a2);
      if (v8)
      {
        v9 = v8;
        CFStringAppendFormat(v7, 0, @"-%@", v8);
        *a3 = v7;
        CFRelease(v9);
        return 0;
      }

      session_createStreamName_cold_1(v7);
    }

    else
    {
      session_createStreamName_cold_2();
    }

    return 4294950695;
  }

  else
  {
    session_createStreamName_cold_3();
    return 4294950696;
  }
}

CFStringRef APTransportStreamIDCreateStringRepresentation(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  *cStr = 0;
  if ((a1 & 0x300000000) != 0)
  {
    SNPrintF(cStr, 10, "%08X");
  }

  else
  {
    SNPrintF(cStr, 10, "%C");
  }

  return CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
}

uint64_t session_createConnectionForStream(const void *a1, int64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const __CFDictionary *a7, void *a8)
{
  v11 = a5;
  v167 = *MEMORY[0x277D85DE8];
  v163 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  cf = 0;
  v160 = 0;
  v15 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = Mutable;
  if (!Mutable)
  {
    session_createConnectionForStream_cold_57();
    goto LABEL_291;
  }

  alloc = v15;
  v18 = DerivedStorage;
  v19 = Mutable;
  if (a7)
  {
    Value = CFDictionaryGetValue(a7, @"QualityOfService");
    if (Value)
    {
      CFDictionarySetValue(v19, @"QualityOfService", Value);
    }

    v21 = CFDictionaryGetValue(a7, *MEMORY[0x277CC1B08]);
    if (v21)
    {
      CFDictionarySetValue(v19, @"DelegatedID", v21);
    }

    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      CFDictionarySetValue(v19, @"TrafficRegistrationOptions", TypedValue);
    }
  }

  if (a2 > 1819042675)
  {
    v17 = v19;
    if (a2 <= 1869575778)
    {
      if (a2 <= 1835626095)
      {
        if (a2 != 1819042676)
        {
          v23 = 1835100526;
LABEL_18:
          if (a2 != v23)
          {
            goto LABEL_124;
          }

          goto LABEL_33;
        }

LABEL_23:
        if (*(v18 + 24) == 1)
        {
          CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED28]);
          v24 = FigCFWeakReferenceTableCopyValue();
          if (!v24)
          {
            session_createConnectionForStream_cold_32();
            goto LABEL_168;
          }

          v25 = CFGetAllocator(a1);
          v26 = session_createConnection(v25, APTransportConnectionUDPCreate, a3, a4, v11, a6, 0, 0, 0xFFFFFFFF, v24, v17, &cf);
          v163 = v26;
          if (v26)
          {
            session_createConnectionForStream_cold_30(v26);
            goto LABEL_168;
          }

          v27 = cf;
        }

        else
        {
          v27 = 0;
          v24 = 0;
        }

        APTransportConnectionGetCMBaseObject();
        v64 = v63;
        v65 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v65)
        {
          v66 = 4294954514;
          v163 = -12782;
LABEL_165:
          session_createConnectionForStream_cold_31(v66);
          goto LABEL_168;
        }

        v66 = v65(v64, @"PackageType", @"RTCP");
        v163 = v66;
        if (v66)
        {
          goto LABEL_165;
        }

LABEL_118:
        if (gLogCategory_APTransportSession > 30 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_233;
        }

        v152 = a2;
LABEL_121:
        LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createConnectionForStream(FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportSessionInterfaceType, APTransportSessionInterfaceFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554462, "[%{ptr}] APTransportSession created UDP connection %{ptr} for %'C stream\n", a1, v27, v152);
LABEL_233:
        v99 = 0;
LABEL_234:
        MutableCopy = 0;
        goto LABEL_235;
      }

      if (a2 != 1835626096)
      {
        if (a2 != 1869570660)
        {
          goto LABEL_124;
        }

        if (*(v18 + 24) != 1)
        {
          session_createConnectionForStream_cold_33(&v163);
          goto LABEL_291;
        }

        CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED10]);
        v24 = FigCFWeakReferenceTableCopyValue();
        if (!v24)
        {
          session_createConnectionForStream_cold_35();
          goto LABEL_168;
        }

        v41 = CFGetAllocator(a1);
        v42 = session_createConnection(v41, APTransportConnectionTCPCreate, a3, a4, v11, a6, 0, 0, 0xFFFFFFFF, v24, v19, &cf);
        v163 = v42;
        if (v42)
        {
          session_createConnectionForStream_cold_34(v42);
          goto LABEL_168;
        }

        FigCFWeakReferenceTableRemoveValue();
        v27 = cf;
        FigCFWeakReferenceTableAddValueAssociatedWithKey();
        if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createConnectionForStream(FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportSessionInterfaceType, APTransportSessionInterfaceFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554462, "[%{ptr}] APTransportSession created TCP connection %{ptr} for %'C stream\n", a1, v27, 1869570660);
        }

        goto LABEL_233;
      }

LABEL_87:
      if (*(v18 + 24) == 1)
      {
        CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED28]);
        v24 = FigCFWeakReferenceTableCopyValue();
        if (!v24)
        {
          session_createConnectionForStream_cold_14();
          goto LABEL_168;
        }

        v61 = CFGetAllocator(a1);
        v62 = session_createConnection(v61, APTransportConnectionUDPCreate, a3, a4, v11, a6, 0, 0, 0xFFFFFFFF, v24, v19, &cf);
        v163 = v62;
        if (v62)
        {
          session_createConnectionForStream_cold_12(v62);
          goto LABEL_168;
        }

        v27 = cf;
      }

      else
      {
        v27 = 0;
        v24 = 0;
      }

      APTransportConnectionGetCMBaseObject();
      v84 = v83;
      v85 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v85)
      {
        v86 = v85(v84, @"PackageType", @"RTP");
        v163 = v86;
        if (!v86)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v86 = 4294954514;
        v163 = -12782;
      }

      session_createConnectionForStream_cold_13(v86);
      goto LABEL_168;
    }

    if (a2 <= 1935897197)
    {
      if (a2 != 1869575779)
      {
        if (a2 == 1919120492)
        {
          if (*(v18 + 24) == 1)
          {
            CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED10]);
            CFDictionarySetValue(v19, @"IsServer", *MEMORY[0x277CBED28]);
            v28 = CFGetAllocator(a1);
            v29 = session_createConnection(v28, APTransportConnectionHTTPCreate, a3, a4, v11, a6, 0, 0, 0xFFFFFFFF, 0, v19, &cf);
            v163 = v29;
            if (v29)
            {
              session_createConnectionForStream_cold_38(v29);
              goto LABEL_291;
            }

            v27 = cf;
          }

          else
          {
            CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED28]);
            CFDictionarySetValue(v19, @"IsServer", *MEMORY[0x277CBED10]);
            v89 = CFGetAllocator(a1);
            v90 = session_createConnection(v89, APTransportConnectionHTTPCreate, a3, a4, v11, a6, *(v18 + 64), 0, 0xFFFFFFFF, 0, v19, &cf);
            v163 = v90;
            if (v90)
            {
              session_createConnectionForStream_cold_36(v90);
              goto LABEL_291;
            }

            v27 = cf;
            v91 = *(v18 + 40);
            APTransportConnectionGetCMBaseObject();
            v93 = CMBaseObjectSetProperty(v92, @"SessionUUID", v91);
            v163 = v93;
            if (v93)
            {
              session_createConnectionForStream_cold_37(v93);
              goto LABEL_291;
            }
          }

          FigCFWeakReferenceTableRemoveValue();
          FigCFWeakReferenceTableAddValueAssociatedWithKey();
          if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createConnectionForStream(FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportSessionInterfaceType, APTransportSessionInterfaceFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554462, "[%{ptr}] APTransportSession created HTTP connection %{ptr} for %'C stream\n", a1, v27, 1919120492, v153);
          }

          goto LABEL_278;
        }

LABEL_124:
        if (a7)
        {
          Int64Ranged = CFDictionaryGetInt64Ranged();
          if (APTransportStreamIDGetStreamCategory(a2) == 1)
          {
            if (Int64Ranged)
            {
              v88 = FigCFWeakReferenceTableCopyValue();
              cf = v88;
              if (v88)
              {
                v27 = v88;
                if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createConnectionForStream(FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportSessionInterfaceType, APTransportSessionInterfaceFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554472, "[%{ptr}] APTransportSession returned shared %'C connection %{ptr} for %'C stream\n", a1, Int64Ranged, v27, a2);
                }

LABEL_278:
                v99 = 0;
                MutableCopy = 0;
LABEL_279:
                v24 = 0;
                goto LABEL_235;
              }

              session_createConnectionForStream_cold_49();
              goto LABEL_291;
            }

            goto LABEL_283;
          }

          v108 = a6;
          alloca = Int64Ranged;
        }

        else
        {
          if (APTransportStreamIDGetStreamCategory(a2) == 1)
          {
LABEL_283:
            session_createConnectionForStream_cold_56(&v163);
            goto LABEL_291;
          }

          v108 = a6;
          alloca = 0;
        }

        CMBaseObjectGetDerivedStorage();
        *cStr = 0;
        v164 = 0;
        FigCFDictionaryGetBooleanIfPresent();
        v109 = *MEMORY[0x277CBED28];
        v110 = *MEMORY[0x277CBED10];
        CFDictionarySetValue(v17, @"AllowPackageAggregation", *MEMORY[0x277CBED10]);
        v111 = CFDictionaryGetInt64Ranged();
        if (APTransportStreamIDGetStreamCategory(a2) != 3)
        {
          CFDictionarySetValue(v17, @"IsListener", v109);
          v113 = CFGetAllocator(a1);
          Connection = session_createConnection(v113, APTransportConnectionTCPCreate, a3, a4, v11, v108, 0, 0, 0xFFFFFFFF, 0, v17, cStr);
          v115 = 0;
          v116 = alloca;
          if (Connection)
          {
            v117 = Connection;
            session_createConnectionForStream_cold_50(Connection);
            v115 = 0;
            goto LABEL_271;
          }

          goto LABEL_256;
        }

        v154 = v111;
        v112 = APTransportConnectionTCPCreate;
        if (alloca <= 1651861088)
        {
          v17 = v19;
          if (alloca != 1634754914 && alloca != 1634754932)
          {
            goto LABEL_252;
          }

LABEL_205:
          if (APSSettingsIsFeatureEnabled() || APSSettingsIsFeatureEnabled() || APSSettingsIsFeatureEnabled() || v154 && v154 != 1601463152)
          {
            FigCFDictionarySetInt();
            if (APSSettingsIsFeatureEnabled())
            {
              v132 = v109;
            }

            else
            {
              v132 = v110;
            }

            CFDictionarySetValue(v17, @"IsPackageDeliveryTrackingEnabled", v132);
            if (alloca == 1634754932)
            {
              v133 = v109;
            }

            else
            {
              v133 = v110;
            }

            CFDictionarySetValue(v17, @"IsPackageArrivalTicksEnabled", v133);
            FigCFDictionarySetUInt32();
            v134 = APTransportConnectionUnbufferedNWCreate;
          }

          else
          {
            if (_MergedGlobals != -1)
            {
              session_createConnectionForStream_cold_51();
            }

            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            v134 = APTransportConnectionTCPUnbufferedCreate;
          }

          v112 = v134;
          goto LABEL_252;
        }

        v17 = v19;
        if (alloca == 1935897198)
        {
          v112 = APTransportConnectionTCPUnbufferedCreate;
        }

        else if (alloca == 1651861089)
        {
          goto LABEL_205;
        }

LABEL_252:
        CFDictionarySetValue(v17, @"IsListener", v110);
        v115 = FigCFWeakReferenceTableCopyValue();
        if (!v115)
        {
          session_createConnectionForStream_cold_54();
          v117 = 4294950683;
          goto LABEL_271;
        }

        v143 = CFGetAllocator(a1);
        v144 = session_createConnection(v143, v112, a3, a4, v11, v108, 0, 0, 0xFFFFFFFF, v115, v17, cStr);
        if (v144)
        {
          v117 = v144;
          session_createConnectionForStream_cold_52(v144);
          goto LABEL_271;
        }

        APTransportStreamIDGetPort(a2);
        v145 = APSSetFBOPropertyInt64();
        if (v145)
        {
          v117 = v145;
          session_createConnectionForStream_cold_53(v145);
          goto LABEL_271;
        }

        v116 = alloca;
LABEL_256:
        v146 = @"GenericTCP";
        if (v116 > 1651861088)
        {
          if (v116 == 1651861089)
          {
            v147 = kAPTransportConnectionPackageType_RTPBuffered;
            goto LABEL_265;
          }

          if (v116 == 1935897198)
          {
            v147 = kAPTransportConnectionPackageType_Screen;
            goto LABEL_265;
          }
        }

        else
        {
          if (v116 == 1634754914)
          {
            v147 = kAPTransportConnectionPackageType_BufferedAPAP;
            goto LABEL_265;
          }

          if (v116 == 1634754932)
          {
            v147 = kAPTransportConnectionPackageType_Datagram;
LABEL_265:
            v146 = *v147;
          }
        }

        v148 = *cStr;
        APTransportConnectionGetCMBaseObject();
        v150 = v149;
        v151 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v151)
        {
          v117 = v151(v150, @"PackageType", v146);
          if (!v117)
          {
            cf = v148;
            *cStr = 0;
LABEL_273:
            if (v115)
            {
              CFRelease(v115);
            }

            v163 = v117;
            if (v117)
            {
              session_createConnectionForStream_cold_55(v117);
              goto LABEL_291;
            }

            v99 = 0;
            MutableCopy = 0;
            v24 = 0;
            v27 = cf;
LABEL_235:
            *a8 = v27;
            cf = 0;
            goto LABEL_236;
          }
        }

        else
        {
          v117 = 4294954514;
        }

        APSLogErrorAt();
LABEL_271:
        if (*cStr)
        {
          CFRelease(*cStr);
        }

        goto LABEL_273;
      }

      goto LABEL_87;
    }

    if (a2 == 1935897198)
    {
      if (*(v18 + 24) == 1)
      {
        CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED10]);
        v24 = FigCFWeakReferenceTableCopyValue();
        if (!v24)
        {
          session_createConnectionForStream_cold_11();
          goto LABEL_168;
        }

        v79 = CFGetAllocator(a1);
        v80 = session_createConnection(v79, APTransportConnectionTCPUnbufferedCreate, a3, a4, v11, a6, 0, 0, 0xFFFFFFFF, v24, v19, &cf);
        v163 = v80;
        if (v80)
        {
          session_createConnectionForStream_cold_9(v80);
          goto LABEL_168;
        }

        v27 = cf;
        APTransportConnectionGetCMBaseObject();
        v82 = CMBaseObjectSetProperty(v81, @"PackageType", @"Screen");
        v163 = v82;
        if (v82)
        {
          session_createConnectionForStream_cold_10(v82);
          goto LABEL_168;
        }
      }

      else
      {
        v27 = 0;
        v24 = 0;
      }

      if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createConnectionForStream(FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportSessionInterfaceType, APTransportSessionInterfaceFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554462, "[%{ptr}] APTransportSession created TCP Unbuffered connection %{ptr} for %'C stream\n", a1, v27, 1935897198);
      }

      goto LABEL_233;
    }

    if (a2 != 1935897205)
    {
      goto LABEL_124;
    }

    if (*(v18 + 24) != 1)
    {
      v27 = 0;
      v24 = 0;
LABEL_227:
      if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createConnectionForStream(FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportSessionInterfaceType, APTransportSessionInterfaceFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554462, "[%{ptr}] APTransportSession created UDP nw_connection %{ptr} for %'C stream\n", a1, v27, 1935897205);
      }

      goto LABEL_233;
    }

    CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED28]);
    v24 = FigCFWeakReferenceTableCopyValue();
    if (!v24)
    {
      session_createConnectionForStream_cold_8();
      goto LABEL_168;
    }

    APTransportConnectionGetCMBaseObject();
    v52 = v51;
    v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v53)
    {
      v54 = v53(v52, @"RemoteNetworkIPAddress", alloc, &v160);
      v163 = v54;
      if (!v54)
      {
        APSNetworkAddressCopyInterfaceName();
        if (cf1)
        {
          if (CFEqual(cf1, @"awdl0"))
          {
            v55 = @"llw0";
            goto LABEL_81;
          }

          if (cf1 && CFEqual(cf1, @"nan0"))
          {
            v55 = @"llw1";
LABEL_81:
            APSNetworkAddressSetInterfaceName();
            v56 = cf1;
            cf1 = v55;
            CFRetain(v55);
            if (v56)
            {
              CFRelease(v56);
            }
          }
        }

        v135 = CFGetAllocator(a1);
        v136 = session_createConnection(v135, APTransportConnectionUDPNWCreate, a3, a4, v11, a6, 0, v160, 0xFFFFFFFF, 0, v19, &cf);
        v163 = v136;
        if (v136)
        {
          session_createConnectionForStream_cold_4(v136);
          goto LABEL_168;
        }

        v27 = cf;
        APTransportConnectionGetCMBaseObject();
        v138 = CMBaseObjectSetProperty(v137, @"PackageType", @"Screen");
        v163 = v138;
        if (v138)
        {
          session_createConnectionForStream_cold_5(v138);
          goto LABEL_168;
        }

        v139 = cf1;
        if (cf1)
        {
          APTransportConnectionGetCMBaseObject();
          v141 = CMBaseObjectSetProperty(v140, @"LocalInterfaceName", v139);
          v163 = v141;
          if (v141)
          {
            session_createConnectionForStream_cold_6(v141);
            goto LABEL_168;
          }
        }

        goto LABEL_227;
      }
    }

    else
    {
      v54 = 4294954514;
      v163 = -12782;
    }

    session_createConnectionForStream_cold_7(v54);
    goto LABEL_168;
  }

  v17 = v19;
  if (a2 <= 1734700575)
  {
    if (a2 <= 1668575851)
    {
      if (a2 != 1634497568)
      {
        v23 = 1635088495;
        goto LABEL_18;
      }

LABEL_33:
      if (*(v18 + 24) == 1)
      {
        CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED10]);
        v24 = FigCFWeakReferenceTableCopyValue();
        if (!v24)
        {
          session_createConnectionForStream_cold_29();
          goto LABEL_168;
        }

        Int64 = CFDictionaryGetInt64();
        v33 = APTransportConnectionUDPCreate;
        if (Int64)
        {
          v33 = APTransportConnectionUDPNWCreate;
          if (gLogCategory_APTransportSession <= 50)
          {
            if (gLogCategory_APTransportSession != -1 || (v34 = _LogCategory_Initialize(), v33 = APTransportConnectionUDPNWCreate, v34))
            {
              session_createConnectionForStream_cold_15(a1, v31, v32);
              v33 = APTransportConnectionUDPNWCreate;
            }
          }
        }

        v35 = v33;
        v36 = CFGetAllocator(a1);
        v37 = session_createConnection(v36, v35, a3, a4, v11, a6, 0, 0, 0xFFFFFFFF, v24, v17, &cf);
        v163 = v37;
        if (v37)
        {
          session_createConnectionForStream_cold_27(v37);
          goto LABEL_168;
        }

        v27 = cf;
      }

      else
      {
        v27 = 0;
        v24 = 0;
      }

      APTransportConnectionGetCMBaseObject();
      v58 = v57;
      v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v59)
      {
        v60 = 4294954514;
        v163 = -12782;
LABEL_153:
        session_createConnectionForStream_cold_28(v60);
LABEL_168:
        v99 = 0;
LABEL_169:
        MutableCopy = 0;
        goto LABEL_236;
      }

      v60 = v59(v58, @"PackageType", @"RTP");
      v163 = v60;
      if (v60)
      {
        goto LABEL_153;
      }

      goto LABEL_118;
    }

    if (a2 != 1668575852)
    {
      if (a2 != 1702260340)
      {
        goto LABEL_124;
      }

      if (*(v18 + 24) == 1)
      {
        CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED10]);
        v38 = *MEMORY[0x277CBED28];
        CFDictionarySetValue(v19, @"IsServer", *MEMORY[0x277CBED28]);
        if (CFDictionaryGetInt64())
        {
          CFDictionarySetValue(v19, @"AssertPowerDuringEventHandling", v38);
        }

        v24 = FigCFWeakReferenceTableCopyValue();
        if (!v24)
        {
          session_createConnectionForStream_cold_42();
          goto LABEL_168;
        }

        v39 = CFGetAllocator(a1);
        v40 = session_createConnection(v39, APTransportConnectionHTTPCreate, a3, a4, v11, a6, 0, 0, 0xFFFFFFFF, v24, v19, &cf);
        v163 = v40;
        if (v40)
        {
          session_createConnectionForStream_cold_41(v40);
          goto LABEL_168;
        }

        v27 = cf;
      }

      else
      {
        CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED28]);
        CFDictionarySetValue(v19, @"IsServer", *MEMORY[0x277CBED10]);
        v94 = CFGetAllocator(a1);
        v95 = session_createConnection(v94, APTransportConnectionHTTPCreate, a3, a4, v11, a6, *(v18 + 64), 0, 0xFFFFFFFF, 0, v19, &cf);
        v163 = v95;
        if (v95)
        {
          session_createConnectionForStream_cold_39(v95);
          goto LABEL_291;
        }

        v27 = cf;
        v96 = *(v18 + 40);
        APTransportConnectionGetCMBaseObject();
        v98 = CMBaseObjectSetProperty(v97, @"SessionUUID", v96);
        v163 = v98;
        if (v98)
        {
          session_createConnectionForStream_cold_40(v98);
          goto LABEL_291;
        }

        v24 = 0;
      }

      FigCFWeakReferenceTableRemoveValue();
      FigCFWeakReferenceTableAddValueAssociatedWithKey();
      if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createConnectionForStream(FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportSessionInterfaceType, APTransportSessionInterfaceFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554462, "[%{ptr}] APTransportSession created HTTP connection %{ptr} for %'C stream\n", a1, v27, 1702260340);
      }

      goto LABEL_233;
    }

    v67 = v18;
    if (*(v18 + 24) == 1)
    {
      v68 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED10]);
      CFDictionarySetValue(v17, @"IsServer", v68);
      if (*(v67 + 260))
      {
        *cStr = *(v67 + 248);
        v166 = *(v67 + 264);
        FigCFDictionarySetCMTime();
      }

      v69 = CFGetAllocator(a1);
      v70 = session_createConnection(v69, APTransportConnectionHTTPCreate, a3, a4, v11, a6, *(v67 + 64), *(v67 + 128), 0xFFFFFFFF, 0, v17, &cf);
      v163 = v70;
      if (v70)
      {
        session_createConnectionForStream_cold_45(v70);
        goto LABEL_291;
      }

      v27 = cf;
      v71 = *(v67 + 40);
      APTransportConnectionGetCMBaseObject();
      v73 = CMBaseObjectSetProperty(v72, @"SessionUUID", v71);
      v163 = v73;
      if (v73)
      {
        session_createConnectionForStream_cold_46(v73);
        goto LABEL_291;
      }

      if (*(v67 + 128))
      {
        APSNetworkAddressGetPort();
        v74 = APSSetFBOPropertyInt64();
        v163 = v74;
        if (v74)
        {
          session_createConnectionForStream_cold_47(v74);
LABEL_291:
          v99 = 0;
          MutableCopy = 0;
LABEL_292:
          v24 = 0;
          goto LABEL_236;
        }
      }

      else
      {
        v131 = APSSetFBOPropertyInt64();
        v163 = v131;
        if (v131)
        {
          session_createConnectionForStream_cold_48(v131);
          goto LABEL_291;
        }
      }

      session_performWifiManagerRegistration(v67, 1);
      MutableCopy = 0;
LABEL_196:
      FigCFWeakReferenceTableRemoveValue();
      FigCFWeakReferenceTableAddValueAssociatedWithKey();
      if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createConnectionForStream(FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportSessionInterfaceType, APTransportSessionInterfaceFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554462, "[%{ptr}] APTransportSession created HTTP connection %{ptr} for %'C stream\n", a1, v27, 1668575852);
      }

      v99 = 0;
      goto LABEL_279;
    }

    v100 = a8;
    v101 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v17, @"IsListener", *MEMORY[0x277CBED28]);
    CFDictionarySetValue(v17, @"IsServer", v101);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionarySetValue(MutableCopy, @"PerformInitialTrafficRegistration", v101);
    CFDictionaryReplaceValue(v17, @"TrafficRegistrationOptions", MutableCopy);
    v103 = CFGetAllocator(a1);
    v104 = session_createConnection(v103, APTransportConnectionHTTPCreate, a3, a4, v11, a6, *(v67 + 64), 0, *(v67 + 124), 0, v17, &cf);
    v163 = v104;
    if (v104)
    {
      session_createConnectionForStream_cold_43(v104);
    }

    else
    {
      v27 = cf;
      v105 = *(v67 + 40);
      APTransportConnectionGetCMBaseObject();
      v107 = CMBaseObjectSetProperty(v106, @"SessionUUID", v105);
      v163 = v107;
      if (!v107)
      {
        a8 = v100;
        goto LABEL_196;
      }

      session_createConnectionForStream_cold_44(v107);
    }

    v99 = 0;
    goto LABEL_292;
  }

  if (a2 <= 1802529909)
  {
    if (a2 == 1734700576)
    {
      goto LABEL_33;
    }

    if (a2 != 1735287668)
    {
      goto LABEL_124;
    }

    goto LABEL_23;
  }

  if (a2 == 1802529910)
  {
    if (*(v18 + 24) != 1)
    {
      v27 = 0;
      v99 = 0;
      MutableCopy = 0;
      v24 = 0;
      v163 = APSSignalErrorAt();
      goto LABEL_235;
    }

    v24 = FigCFWeakReferenceTableCopyValue();
    if (!v24)
    {
      session_createConnectionForStream_cold_3();
      goto LABEL_168;
    }

    v75 = CFGetAllocator(a1);
    v76 = session_createConnection(v75, APTransportConnectionUDPCreate, a3, a4, v11, a6, 0, 0, 0xFFFFFFFF, v24, v19, &cf);
    v163 = v76;
    if (v76)
    {
      session_createConnectionForStream_cold_1(v76);
      goto LABEL_168;
    }

    v27 = cf;
    APTransportConnectionGetCMBaseObject();
    v78 = CMBaseObjectSetProperty(v77, @"PackageType", @"LowPowerKeepAlive");
    v163 = v78;
    if (v78)
    {
      session_createConnectionForStream_cold_2(v78);
      goto LABEL_168;
    }

    if (gLogCategory_APTransportSession > 30 || gLogCategory_APTransportSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_233;
    }

    v152 = 1802529910;
    goto LABEL_121;
  }

  if (a2 != 1819042165)
  {
    goto LABEL_124;
  }

  if (*(v18 + 24) != 1)
  {
    v99 = 0;
    v24 = 0;
    goto LABEL_183;
  }

  v43 = *MEMORY[0x277CBED10];
  CFDictionarySetValue(v19, @"IsListener", *MEMORY[0x277CBED10]);
  v24 = FigCFWeakReferenceTableCopyValue();
  if (!v24)
  {
    session_createConnectionForStream_cold_25();
    goto LABEL_168;
  }

  if (CFDictionaryGetInt64())
  {
    v155 = a8;
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    APSIsPersistentGroupSDBCapable();
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    APSSettingsGetIntWithDefault();
    CFDictionarySetInt64();
    IntWithDefault = APSSettingsGetIntWithDefault();
    v45 = *MEMORY[0x277CBED28];
    if (IntWithDefault)
    {
      v46 = *MEMORY[0x277CBED28];
    }

    else
    {
      v46 = v43;
    }

    CFDictionarySetValue(v19, @"DisablePacketExpiryDrop", v46);
    if (*(v18 + 160))
    {
      v47 = v45;
    }

    else
    {
      v47 = v43;
    }

    CFDictionarySetValue(v19, @"ForceLowLatencyConnection", v47);
    if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
    {
      session_createConnectionForStream_cold_15(a1, v48, v49);
    }

    v50 = APTransportConnectionUDPNWCreate;
    a8 = v155;
  }

  else
  {
    v50 = APTransportConnectionUDPCreate;
  }

  if ((*(v18 + 152) - 5) < 0xFFFFFFFE)
  {
    v118 = CFGetAllocator(a1);
    v119 = session_createConnection(v118, v50, a3, a4, v11, a6, 0, 0, 0xFFFFFFFF, v24, v19, &cf);
    v163 = v119;
    if (v119)
    {
      session_createConnectionForStream_cold_23(v119);
      goto LABEL_168;
    }

    v99 = 0;
LABEL_183:
    v27 = cf;
    APTransportConnectionGetCMBaseObject();
    v128 = v127;
    v129 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v129)
    {
      v130 = v129(v128, @"PackageType", @"RTP");
      v163 = v130;
      if (!v130)
      {
        if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_createConnectionForStream(FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportSessionInterfaceType, APTransportSessionInterfaceFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554462, "[%{ptr}] APTransportSession created UDP connection %{ptr} for %'C stream\n", a1, v27, 1819042165);
        }

        goto LABEL_234;
      }
    }

    else
    {
      v130 = 4294954514;
      v163 = -12782;
    }

    session_createConnectionForStream_cold_24(v130);
    goto LABEL_169;
  }

  v120 = *(v18 + 64);
  if (!v120)
  {
    session_createConnectionForStream_cold_22(&v163);
LABEL_333:
    v99 = 0;
    goto LABEL_339;
  }

  if (a4 == 4)
  {
    v121 = 5;
  }

  else
  {
    v121 = 3;
  }

  Address = APTransportDeviceGetAddress(v120, v121, 1, cStr, 1024, 0, 0);
  v163 = Address;
  if (Address)
  {
    session_createConnectionForStream_cold_16(Address);
    goto LABEL_333;
  }

  v99 = CFStringCreateWithCString(alloc, cStr, 0x8000100u);
  if (v99)
  {
    v123 = APSNetworkAddressCreateWithString();
    v163 = v123;
    if (v123)
    {
      session_createConnectionForStream_cold_17(v123);
    }

    else
    {
      v124 = APSNetworkAddressCopyInterfaceName();
      v163 = v124;
      if (v124)
      {
        session_createConnectionForStream_cold_18(v124);
      }

      else
      {
        v125 = CFGetAllocator(a1);
        v126 = session_createConnection(v125, v50, a3, a4, v11, a6, 0, v160, 0xFFFFFFFF, 0, v19, &cf);
        v163 = v126;
        if (!v126)
        {
          goto LABEL_183;
        }

        session_createConnectionForStream_cold_19(v126);
      }
    }
  }

  else
  {
    session_createConnectionForStream_cold_21();
  }

LABEL_339:
  MutableCopy = 0;
  v17 = v19;
LABEL_236:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (v160)
  {
    CFRelease(v160);
  }

  return v163;
}

uint64_t session_createConnection(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t, uint64_t, CFTypeRef *), uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, CFTypeRef *a12)
{
  v51 = 0;
  cf = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  if ((a4 - 1) > 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_23D383720[a4 - 1];
  }

  v15 = (16 * a5) & 0x20;
  if ((a5 & 8) != 0)
  {
    v15 = 32;
  }

  v16 = a2(a1, a3, v15 & 0xFFFFFFFB | (4 * (a5 & 1)) | v14, a6, a11, &cf);
  if (v16)
  {
    v21 = v16;
    session_createConnection_cold_1(v16);
  }

  else
  {
    if (a7)
    {
      APTransportConnectionGetCMBaseObject();
      v18 = v17;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v19)
      {
        v21 = 4294954514;
        goto LABEL_32;
      }

      v20 = v19(v18, @"TransportDevice", a7);
      if (v20)
      {
        v21 = v20;
LABEL_32:
        APSLogErrorAt();
        goto LABEL_33;
      }

LABEL_30:
      v21 = 0;
      *a12 = cf;
      cf = 0;
      goto LABEL_35;
    }

    if (a8)
    {
      APTransportConnectionGetCMBaseObject();
      v23 = v22;
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v24)
      {
        v21 = 4294954514;
        goto LABEL_32;
      }

      v25 = v24(v23, @"RemoteNetworkIPAddress", a8);
      if (v25)
      {
        v21 = v25;
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (a10)
    {
      APTransportConnectionGetCMBaseObject();
      v27 = v26;
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v28)
      {
        v21 = 4294954514;
        goto LABEL_32;
      }

      v29 = *MEMORY[0x277CBECE8];
      v30 = v28(v27, @"RemoteNetworkIPAddress", *MEMORY[0x277CBECE8], &v51);
      if (v30)
      {
        v21 = v30;
        goto LABEL_32;
      }

      v31 = v51;
      APTransportConnectionGetCMBaseObject();
      v33 = v32;
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v34)
      {
        v21 = 4294954514;
        goto LABEL_32;
      }

      v35 = v34(v33, @"RemoteNetworkIPAddress", v31);
      if (v35)
      {
        v21 = v35;
        goto LABEL_32;
      }

      APTransportConnectionGetCMBaseObject();
      v37 = CMBaseObjectCopyProperty(v36, @"BoundInterfaceIndex", v29, &v50);
      if (v37)
      {
        v21 = v37;
        session_createConnection_cold_2(v37);
      }

      else
      {
        v38 = v50;
        APTransportConnectionGetCMBaseObject();
        v40 = CMBaseObjectSetProperty(v39, @"BoundInterfaceIndex", v38);
        if (!v40)
        {
          APTransportConnectionGetCMBaseObject();
          CMBaseObjectCopyProperty(v41, @"LocalInterfaceName", v29, &v49);
          v42 = v49;
          if (v49)
          {
            APTransportConnectionGetCMBaseObject();
            CMBaseObjectSetProperty(v43, @"LocalInterfaceName", v42);
          }

          goto LABEL_30;
        }

        v21 = v40;
        session_createConnection_cold_3(v40);
      }
    }

    else
    {
      if ((a9 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }

      APTransportSocketCreate(*MEMORY[0x277CBECE8], a9, &v48);
      v44 = v48;
      if (v48)
      {
        APTransportConnectionGetCMBaseObject();
        v46 = CMBaseObjectSetProperty(v45, @"ConnectedSocket", v44);
        if (!v46)
        {
          goto LABEL_30;
        }

        v21 = v46;
        session_createConnection_cold_4(v46);
      }

      else
      {
        session_createConnection_cold_5();
        v21 = 4294950695;
      }
    }
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  return v21;
}

uint64_t APTransportConnectionUDPCreate(uint64_t a1, const void *a2, int a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v7 = a4;
    APTransportConnectionGetClassID(a1, a2);
    v10 = CMDerivedObjectCreate();
    v17 = v10;
    if (v10)
    {
      APTransportConnectionUDPCreate_cold_1(v10);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 88) = CFDictionaryGetInt64() != 0;
      *(DerivedStorage + 112) = CFDictionaryGetInt64();
      CFUUIDGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      *(DerivedStorage + 120) = TypedValue;
      if (TypedValue)
      {
        CFRetain(TypedValue);
      }

      *(DerivedStorage + 16) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      *(DerivedStorage + 108) = a3;
      *(DerivedStorage + 232) = -1;
      SNPrintF(label, 128, "APTransportConnectionUDP.%{ptr}", 0);
      if (v7)
      {
        v13 = FigDispatchQueueCreateWithPriority();
      }

      else
      {
        v13 = dispatch_queue_create(label, 0);
      }

      *(DerivedStorage + 8) = v13;
      if (v13)
      {
        SNPrintF(label, 128, "APTransportConnectionUDP.callbackState.%{ptr}", 0);
        v14 = FigDispatchQueueCreateWithPriority();
        *(DerivedStorage + 24) = v14;
        if (v14)
        {
          *(DerivedStorage + 56) = 0;
          v15 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *(DerivedStorage + 128) = v15;
          if (v15)
          {
            if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APTransportConnectionUDP, "OSStatus APTransportConnectionUDPCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554482, "[%{ptr}] APTransportConnectionUDP with name %@ created.\n", 0, a2);
            }

            APTTrafficMetricsCreate(&gLogCategory_APTransportConnectionUDP, 0, (DerivedStorage + 264), 0);
            *a6 = 0;
          }

          else
          {
            APTransportConnectionUDPCreate_cold_2();
          }
        }

        else
        {
          APTransportConnectionUDPCreate_cold_3();
        }
      }

      else
      {
        APTransportConnectionUDPCreate_cold_4();
      }
    }
  }

  else
  {
    APTransportConnectionUDPCreate_cold_5();
  }

  return v17;
}

uint64_t APTransportConnectionGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_17 != -1)
  {
    APTransportConnectionGetClassID_cold_1();
  }

  return qword_281309C40;
}

uint64_t APTTrafficMetricsCreate(int *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = mach_absolute_time();
  v9 = 0;
  if (a1 && a2)
  {
    v10 = v8;
    if (_MergedGlobals_19 != -1)
    {
      OUTLINED_FUNCTION_7_8();
      dispatch_once_f(v17, v18, v19);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      APSLogErrorAt();
      return 4294960568;
    }

    v12 = Instance;
    bzero((Instance + 16), 0x2C0uLL);
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    *(v12 + 32) = CUObfuscatedPtr();
    *(v12 + 88) = 1;
    *label = 5;
    if (APSSettingsGetInt64IfPresent() && *a1 <= 50 && (*a1 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(a1, "int64_t aptTrafficMetrics_getLoggingIntervalSecs(LogCategory *, void *)", 33554482, "[%{ptr}] APTransportMetrics interval set to %d seconds by prefs.\n", a2, *label);
    }

    *(v12 + 96) = SecondsToUpTicks() / 0xAuLL;
    *(v12 + 72) = v10;
    *(v12 + 104) = a4;
    SNPrintF(label, 64, "APTTrafficMetrics.%{ptr}", a2);
    v13 = dispatch_queue_create(label, 0);
    *(v12 + 40) = v13;
    if (v13 && (v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13), (*(v12 + 48) = v14) != 0))
    {
      v15 = APSAtomicMessageQueueCreate();
      if (v15)
      {
        v9 = v15;
      }

      else
      {
        v9 = APSRealTimeSignalCreate();
        if (!v9)
        {
          dispatch_set_context(*(v12 + 48), v12);
          dispatch_source_set_event_handler_f(*(v12 + 48), aptTrafficMetrics_intervalTimerHandler);
          dispatch_source_set_timer(*(v12 + 48), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          dispatch_resume(*(v12 + 48));
          *a3 = v12;
          return v9;
        }
      }

      APSLogErrorAt();
    }

    else
    {
      APSLogErrorAt();
      v9 = 0;
    }

    CFRelease(v12);
  }

  return v9;
}

void rtppackage_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageRTP <= 30 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
  {
    rtppackage_Finalize_cold_1(a1);
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

_BYTE *udpconnection_callEventCallback(const void *a1, unsigned int a2, const void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    return APSDispatchAsyncFHelper();
  }

  return result;
}

_BYTE *udpconnection_callEventCallback_0(const void *a1, unsigned int a2, const void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    return APSDispatchAsyncFHelper();
  }

  return result;
}

const void *rtppackage_CopyMessageData(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  v3 = MessageData;
  if (MessageData)
  {
    CFRetain(MessageData);
  }

  return v3;
}

uint64_t rtppackage_ensureHeaderIsSet(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MessageType = APTransportParcelGetMessageType(*DerivedStorage);
  result = APTransportParcelIsHeaderSet(*DerivedStorage);
  if (!result)
  {
    v6 = 0;
    switch(MessageType)
    {
      case 0x616C7420:
        v5 = 25984;
        break;
      case 0x61726564:
        v5 = 27008;
        break;
      case 0x6175786F:
        v5 = 27264;
        break;
      case 0x61787264:
        v5 = 27776;
        break;
      case 0x6F767264:
        v5 = 28032;
        break;
      case 0x67726564:
        v5 = 24960;
        break;
      case 0x6D61696E:
        v5 = 25728;
        break;
      case 0x6D726564:
        v5 = 26752;
        break;
      case 0x6F6F7663:
        v5 = 27520;
        break;
      case 0x67656E20:
        v5 = 24704;
        break;
      default:
        if (gLogCategory_APTransportPackageRTP <= 90 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportPackageRTP, "void rtppackage_ensureHeaderIsSet(APTransportPackageRef)", 33554522, "[%{ptr}] Unhandled message type %'C.\n", a1, MessageType);
        }

        return APTransportParcelSetHeader(*DerivedStorage, &v6);
    }

    v6 = v5;
    return APTransportParcelSetHeader(*DerivedStorage, &v6);
  }

  return result;
}

void udpconnection_deferCallEventCallback(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    dispatch_sync_f(*(DerivedStorage + 136), a1, udpconnection_callEventCallbackOnEventQueue);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *a1;
  if (*a1)
  {

    CFRelease(v4);
  }
}

void udpconnection_deferCallEventCallback_0(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    dispatch_sync_f(*(DerivedStorage + 48), a1, udpconnection_callEventCallbackOnEventQueue_0);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *a1;
  if (*a1)
  {

    CFRelease(v4);
  }
}

uint64_t udpconnection_callEventCallbackOnEventQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 16);
  v4 = *(DerivedStorage + 120);
  v5 = *(DerivedStorage + 128);
  v6 = *(a1 + 8);

  return v5(v6, v3, v4);
}

uint64_t udpconnection_callEventCallbackOnEventQueue_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 16);
  v4 = *(DerivedStorage + 32);
  v5 = *(DerivedStorage + 40);
  v6 = *(a1 + 8);

  return v5(v6, v3, v4);
}

CMBlockBufferRef rtppackage_CreateBBufRepresentation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  rtppackage_ensureHeaderIsSet(a1);
  APTransportParcelCreateBBufRepresentation(*DerivedStorage, *MEMORY[0x277CBECE8], 0, &v4);
  return v4;
}

uint64_t rtppackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

uint64_t APTransportParcelMakeWithAllocators(const void *a1, const __CFAllocator *a2, size_t a3, size_t a4, uint64_t *a5)
{
  if (!a3)
  {
    APTransportParcelMakeWithAllocators_cold_4();
LABEL_14:
    v11 = 0;
    v15 = 4294954516;
    goto LABEL_11;
  }

  if (!a5)
  {
    APTransportParcelMakeWithAllocators_cold_3();
    goto LABEL_14;
  }

  v10 = MEMORY[0x23EEDC950](a1, 56, 0x1070040D1448509, 0);
  v11 = v10;
  if (!v10)
  {
    APTransportParcelMakeWithAllocators_cold_2();
    goto LABEL_17;
  }

  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 48) = a1;
  *v10 = a3;
  if (a1)
  {
    CFRetain(a1);
  }

  if (a4)
  {
    v12 = MEMORY[0x23EEDC950](a2, a4 + a3, 597347841, 0);
    if (v12)
    {
      v13 = v12;
      v14 = CMBlockBufferCreateWithMemoryBlock(*(v11 + 48), v12, a4 + a3, a2, 0, a3, a4, 0, (v11 + 32));
      if (v14)
      {
        v15 = v14;
        APSLogErrorAt();
        CFAllocatorDeallocate(a2, v13);
        goto LABEL_11;
      }

      *(v11 + 40) = v13;
      goto LABEL_10;
    }

    APTransportParcelMakeWithAllocators_cold_1();
LABEL_17:
    v15 = 4294954510;
    goto LABEL_11;
  }

LABEL_10:
  v15 = 0;
  *a5 = v11;
  v11 = 0;
LABEL_11:
  APTransportParcelFree(v11);
  return v15;
}

void APTransportParcelFree(void *ptr)
{
  if (ptr)
  {
    v2 = *(ptr + 6);
    *(ptr + 5) = 0;
    v3 = *(ptr + 2);
    if (v3)
    {
      CFRelease(v3);
      *(ptr + 2) = 0;
    }

    v4 = *(ptr + 4);
    if (v4)
    {
      CFRelease(v4);
      *(ptr + 4) = 0;
    }

    CFAllocatorDeallocate(*(ptr + 6), ptr);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t APTransportParcelSetMessageData(void *a1, CMBlockBufferRef theBuffer)
{
  v2 = a1[4];
  if (v2 == theBuffer)
  {
    return 0;
  }

  if (!a1[5])
  {
LABEL_5:
    a1[4] = theBuffer;
    if (theBuffer)
    {
      CFRetain(theBuffer);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  lengthAtOffsetOut = 0uLL;
  totalLengthOut = 0;
  CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &lengthAtOffsetOut + 1);
  if (lengthAtOffsetOut == __PAIR128__(a1[5] + *a1, totalLengthOut))
  {
    v2 = a1[4];
    goto LABEL_5;
  }

  APSLogErrorAt();
  return 4294954516;
}

void udpconnection_sendPackageInternal(const void **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  kdebug_trace();
  if (*DerivedStorage)
  {
    udpconnection_sendPackageInternal_cold_1();
    goto LABEL_29;
  }

  if (*(DerivedStorage + 56) != 5)
  {
LABEL_29:
    v6 = 0;
    goto LABEL_30;
  }

  v3 = a1[1];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v4 || (v5 = v4(v3)) == 0)
  {
    udpconnection_sendPackageInternal_cold_3();
    goto LABEL_29;
  }

  v6 = v5;
  IOVecArrayWithBlockBuffer = FigMakeIOVecArrayWithBlockBuffer();
  if (IOVecArrayWithBlockBuffer)
  {
    udpconnection_sendPackageInternal_cold_2(IOVecArrayWithBlockBuffer);
    goto LABEL_30;
  }

  DataLength = CMBlockBufferGetDataLength(v6);
  APTTrafficMetricsSendStarted(*(DerivedStorage + 264), DataLength);
  if (!*(DerivedStorage + 88))
  {
    kdebug_trace();
    v12 = writev(*(DerivedStorage + 232), &v19, v18);
    if (v12 != CMBlockBufferGetDataLength(v6))
    {
      if (*__error())
      {
        v13 = *__error();
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v13 = 4294960596;
      }

      if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionUDP, "void udpconnection_sendPackageInternal(void *)", 33554522, "[%{ptr}] UDP send error: %#m\n", *a1, v13);
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  memset(&v17.msg_namelen, 0, 24);
  v9 = *(DerivedStorage + 193);
  if (v9 == 2)
  {
    v10 = 16;
    v11 = 232;
  }

  else
  {
    if (v9 != 30)
    {
      LODWORD(v13) = 0;
      goto LABEL_21;
    }

    v10 = 28;
    v11 = 236;
  }

  v14 = *(DerivedStorage + v11);
  v17.msg_name = (DerivedStorage + 192);
  v17.msg_namelen = v10;
  v17.msg_iov = &v19;
  v17.msg_iovlen = v18;
  v17.msg_control = 0;
  *&v17.msg_controllen = 0;
  v15 = sendmsg(v14, &v17, 0);
  if (v15 == CMBlockBufferGetDataLength(v6))
  {
LABEL_18:
    LODWORD(v13) = 0;
LABEL_19:
    APTTrafficMetricsSendFinished(*(DerivedStorage + 264), v13, DataLength);
    goto LABEL_21;
  }

  if (*__error())
  {
    v13 = *__error();
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = 4294960596;
  }

  if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionUDP, "void udpconnection_sendPackageInternal(void *)", 33554522, "[%{ptr}] UDP connection send error: %#m\n", *a1, v13);
  }

LABEL_21:
  if (!v13)
  {
LABEL_22:
    CFRelease(v6);
    goto LABEL_23;
  }

LABEL_30:
  udpconnection_callEventCallback_0(*a1, 8u, a1[1]);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_23:
  v16 = a1[1];
  if (v16)
  {
    CFRelease(v16);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void udpconnection_sendPackageInternal_0(const void *a1, const void *a2, int a3)
{
  v64 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v62 = 0;
  v7 = mach_absolute_time();
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v8)
  {
    v9 = v8(a2);
  }

  else
  {
    v9 = 0;
  }

  SequenceNumberForPackage = udpconnection_getSequenceNumberForPackage(a2);
  memset(dst, 0, sizeof(dst));
  v61 = 0;
  if (*DerivedStorage)
  {
    APSLogErrorAt();
    goto LABEL_12;
  }

  if (*(DerivedStorage + 144) != 5)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_56;
  }

  v11 = SequenceNumberForPackage;
  *src = 1;
  v60 = 0;
  *&src[2] = SequenceNumberForPackage;
  uuid_copy(dst, src);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v12 || (v13 = v12(a2)) == 0)
  {
    APSLogErrorAt();
LABEL_12:
    APSSignalErrorAt();
    goto LABEL_13;
  }

  v14 = v13;
  v15 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_0(v15);
  if (APSDispatchDataCreateWithBlockBuffer())
  {
    goto LABEL_67;
  }

  v16 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
  if (!v9)
  {
    v17 = 0;
    goto LABEL_27;
  }

  if (v9 >= v7)
  {
    v17 = UpTicksToMilliseconds();
  }

  else
  {
    v17 = -UpTicksToMilliseconds();
  }

  v16 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
  if (v17 > *(DerivedStorage + 328))
  {
LABEL_27:
    v27 = *(DerivedStorage + 336);
    if (v17 >= v27)
    {
      v28 = *(DerivedStorage + 336);
    }

    else
    {
      v28 = v17;
    }

    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = v17;
    }

    if (*(DerivedStorage + 196))
    {
      v30 = 344;
      if (!a3)
      {
        v30 = 352;
      }

      v31 = *(DerivedStorage + v30);
      if (v31)
      {
        v29 = v31;
      }
    }

    if (gLogCategory_APTransportConnectionUDPNW <= 30)
    {
      if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), v39 = v38, v40 = _LogCategory_Initialize(), v16 = v39, v40))
      {
        v52 = v7;
        OUTLINED_FUNCTION_1();
        v33 = v32;
        LogPrintF(v34, v35, v36, v37, a1, v11, v52, v9, v17, v29);
        v16 = v33;
      }
    }

    v41 = *(DerivedStorage + 376);
    if (v41)
    {
      v42 = v16[214];
      if (v42 <= 30)
      {
        if (v42 != -1 || (OUTLINED_FUNCTION_10_4(), v47 = _LogCategory_Initialize(), v41 = *(DerivedStorage + 376), v47))
        {
          v51 = v41;
          OUTLINED_FUNCTION_1();
          LogPrintF(v43, v44, v45, v46, a1, v51);
          v41 = *(DerivedStorage + 376);
        }
      }

      if (v41 == -1)
      {
        v29 = 0;
      }

      else
      {
        v29 = v41;
      }
    }

    if (!APSRecycleBinTakeItem())
    {
      v48 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_19_0(v48);
      nw_content_context_set_expiration_milliseconds(v61, v29);
      nw_content_context_set_packet_id();
      DataLength = CMBlockBufferGetDataLength(v14);
      APTTrafficMetricsSendStarted(*(DerivedStorage + 408), DataLength);
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      nw_retain(v61);
      v50 = *(DerivedStorage + 296);
      completion[0] = MEMORY[0x277D85DD0];
      completion[1] = 0x40000000;
      completion[2] = __udpconnection_sendPackageInternal_block_invoke;
      completion[3] = &__block_descriptor_tmp_182;
      v54 = v11;
      completion[4] = a1;
      completion[5] = a2;
      completion[6] = DerivedStorage;
      completion[7] = v61;
      completion[8] = DataLength;
      nw_connection_send(v50, v62, v61, 1, completion);
      goto LABEL_56;
    }

LABEL_67:
    APSLogErrorAt();
    goto LABEL_56;
  }

  if (*(DerivedStorage + 368))
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 30)
    {
      if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), v26 = _LogCategory_Initialize(), v16 = &OBJC_IVAR___APBonjourCacheManager__removedItems, v26))
      {
        OUTLINED_FUNCTION_1();
        LogPrintF(v18, v19, v20, v21, a1, v11, v7, v9, v17);
        v16 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
      }
    }

    v17 = *(DerivedStorage + 328) + 1;
    goto LABEL_27;
  }

  if (gLogCategory_APTransportConnectionUDPNW <= 30)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_1();
      LogPrintF(v22, v23, v24, v25, a1, v11, v7, v9, v17);
    }
  }

  if (a3)
  {
    atomic_fetch_add_explicit((DerivedStorage + 360), 1uLL, memory_order_relaxed);
    APSAsyncLoggerGetSharedLogger();
    v55 = a1;
    v56 = v11;
    v57 = v17;
    v58 = 0;
    APSAsyncLoggerLogMessage();
  }

LABEL_56:
  if (v61)
  {
    nw_release(v61);
    v61 = 0;
  }

  if (v62)
  {
    dispatch_release(v62);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t rtppackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t udpconnection_SendPackage(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  CFRetain(a2);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t udpconnection_SendPackage_0(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && a2)
  {
    if (*DerivedStorage)
    {
      APSLogErrorAt();
      return 4294894970;
    }

    else
    {
      v5 = *(DerivedStorage + 192);
      v6 = CMBaseObjectGetDerivedStorage();
      v7 = v6;
      if (v5 == 3)
      {
        if (*(v6 + 144) == 5)
        {
          v8 = *(v6 + 72);
          *(v8 + 72) = mach_absolute_time();
          APSWrapperGetValue();
          if (FigSimpleMutexTryLock())
          {
            udpconnection_sendPackageInternal_0(a1, a2, *(v7 + 196) != 0);
            APSWrapperGetValue();
            FigSimpleMutexUnlock();
          }

          else if (gLogCategory_APTransportConnectionUDPNW <= 30)
          {
            if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), _LogCategory_Initialize()))
            {
              OUTLINED_FUNCTION_1();
              LogPrintF(v10, v11, v12, v13, a1);
            }
          }
        }

        return 0;
      }

      else
      {
        cf = CFRetain(a1);
        v15 = CFRetain(a2);
        if (APSAtomicMessageQueueSendMessage())
        {
          cf = 0;
          v15 = 0;
          APSRealTimeSignalRaise();
          a1 = 0;
        }

        else
        {
          APSLogErrorAt();
          a1 = 4294960549;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v15)
        {
          CFRelease(v15);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_0();
    APSLogErrorAt();
  }

  return a1;
}

uint64_t APTransportParcelSetHeader(size_t *a1, const void *a2)
{
  if (a2)
  {
    v3 = a1[5];
    if (v3)
    {
      memcpy(v3, a2, *a1);
    }

    else
    {
      BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
      if (BlockBufferCopyingMemoryBlock)
      {
        v5 = BlockBufferCopyingMemoryBlock;
        APTransportParcelSetHeader_cold_1(BlockBufferCopyingMemoryBlock);
        return v5;
      }
    }

    v5 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    APTransportParcelSetHeader_cold_2();
    return 4294954516;
  }

  return v5;
}

uint64_t APTransportParcelCreateBBufRepresentation(uint64_t *a1, const __CFAllocator *a2, const void *a3, CMBlockBufferRef *a4)
{
  blockBufferOut = 0;
  if (!a1[5])
  {
    if (a3)
    {
      BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
      if (BlockBufferCopyingMemoryBlock)
      {
        v11 = BlockBufferCopyingMemoryBlock;
        APTransportParcelCreateBBufRepresentation_cold_3(BlockBufferCopyingMemoryBlock);
        goto LABEL_23;
      }
    }

    else
    {
      if (!*(a1 + 8))
      {
        APTransportParcelCreateBBufRepresentation_cold_5();
        goto LABEL_22;
      }

      v14 = a1[2];
      if (v14)
      {
        v14 = CFRetain(v14);
      }

      blockBufferOut = v14;
    }

    v15 = a1[4];
    if (!v15)
    {
      goto LABEL_9;
    }

    if (CMBlockBufferIsEmpty(v15))
    {
      goto LABEL_9;
    }

    v16 = a1[4];
    DataLength = CMBlockBufferGetDataLength(v16);
    appended = CMBlockBufferAppendBufferReference(blockBufferOut, v16, 0, DataLength, 0);
    if (!appended)
    {
      goto LABEL_9;
    }

    v11 = appended;
    APTransportParcelCreateBBufRepresentation_cold_4(appended);
    goto LABEL_23;
  }

  v8 = *a1;
  v9 = CMBlockBufferGetDataLength(a1[4]);
  if (!a3)
  {
    if (*(a1 + 8))
    {
      goto LABEL_8;
    }

    APTransportParcelCreateBBufRepresentation_cold_2();
LABEL_22:
    v11 = 4294954516;
    goto LABEL_23;
  }

  memcpy(a1[5], a3, *a1);
LABEL_8:
  customBlockSource.version = 0;
  customBlockSource.AllocateBlock = 0;
  customBlockSource.FreeBlock = parcel_bbufFree;
  customBlockSource.refCon = CFRetain(a1[4]);
  v12 = CMBlockBufferCreateWithMemoryBlock(a2, a1[5], v9 + v8, *MEMORY[0x277CBED00], &customBlockSource, 0, v9 + v8, 0, &blockBufferOut);
  if (!v12)
  {
LABEL_9:
    v11 = 0;
    *a4 = blockBufferOut;
    return v11;
  }

  v11 = v12;
  APTransportParcelCreateBBufRepresentation_cold_1(v12);
LABEL_23:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v11;
}

void udpconnection_sourceEventHandlerCallback(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  cf = 0;
  blockBufferOut = 0;
  v4 = MEMORY[0x277CBECF0];
  if (!v2)
  {
    APSLogErrorAt();
    APSSignalErrorAt();
    v10 = 0;
    v5 = 0;
    goto LABEL_12;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    v10 = 0;
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 56) != 5)
  {
    goto LABEL_9;
  }

  v8 = *v4;
  v9 = MEMORY[0x23EEDC950](*v4, 1472, 2089464830, 0);
  if (!v9)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_5_12();
    APSSignalErrorAt();
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  v11 = recvfrom(v3, v9, 0x5C0uLL, 0, 0, 0);
  v12 = *MEMORY[0x277CBECE8];
  if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v10, 0x5C0uLL, v8, 0, 0, v11, 0, &blockBufferOut))
  {
    if ((*(v7 + 64))(v12, blockBufferOut, &cf))
    {
      APSLogErrorAt();
    }

    else
    {
      udpconnection_callEventCallback_0(v5, 7u, cf);
    }

    goto LABEL_9;
  }

  APSLogErrorAt();
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v10)
  {
    CFAllocatorDeallocate(*v4, v10);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t APTransportPackageRTPCreateWithBBuf(const void *a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  blockBufferOut = 0;
  cf = 0;
  APTransportPackageGetClassID(a1, a2);
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v14 = v6;
    APTransportPackageRTPCreateWithBBuf_cold_1(v6);
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  v8 = APTransportParcelMakeWithAllocators(a1, *MEMORY[0x277CBECF0], 2uLL, 0, DerivedStorage);
  if (v8)
  {
    v14 = v8;
    APTransportPackageRTPCreateWithBBuf_cold_2(v8);
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v16 = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a2, 0, &v16, 0, &dataPointerOut);
  if (DataPointer)
  {
    v14 = DataPointer;
    APTransportPackageRTPCreateWithBBuf_cold_3(DataPointer);
    goto LABEL_19;
  }

  if (v16 <= 1)
  {
    APTransportPackageRTPCreateWithBBuf_cold_8();
LABEL_18:
    v14 = 4294960591;
    goto LABEL_19;
  }

  if ((*dataPointerOut & 0xC0) != 0x80)
  {
    APTransportPackageRTPCreateWithBBuf_cold_4();
    v14 = 4294960581;
    goto LABEL_19;
  }

  v10 = dataPointerOut[1] & 0x7F;
  if ((v10 - 96) >= 0xEu || ((0x3D13u >> (v10 - 96)) & 1) == 0)
  {
    if (gLogCategory_APTransportPackageRTP <= 90 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
    {
      APTransportPackageRTPCreateWithBBuf_cold_5(v10);
    }

    goto LABEL_18;
  }

  APTransportParcelSetMessageType(*DerivedStorage, dword_23D3837E0[(v10 - 96)]);
  DataLength = CMBlockBufferGetDataLength(a2);
  v12 = CMBlockBufferCreateWithBufferReference(a1, a2, 2uLL, DataLength - 2, 0, &blockBufferOut);
  if (v12)
  {
    v14 = v12;
    APTransportPackageRTPCreateWithBBuf_cold_6(v12);
    goto LABEL_19;
  }

  v13 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
  if (v13)
  {
    v14 = v13;
    APTransportPackageRTPCreateWithBBuf_cold_7(v13);
    goto LABEL_19;
  }

LABEL_11:
  if (gLogCategory_APTransportPackageRTP <= 30 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
  {
    APTransportPackageRTPCreateWithBBuf_cold_9(&cf);
  }

  v14 = 0;
  *a3 = cf;
  cf = 0;
LABEL_19:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void __stream_packageReceived_block_invoke(void *a1)
{
  v2 = *(a1[4] + 120);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v6 = v5(v4);
    }

    else
    {
      v6 = 0;
    }

    v2(v3, v6, a1[7], *(a1[4] + 112));
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[5];

  CFRelease(v9);
}

void __stream_packageReceived_block_invoke_0(void *a1)
{
  v2 = *(a1[4] + 200);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v6 = v5(v4);
    }

    else
    {
      v6 = 0;
    }

    v2(v3, v6, a1[7], *(a1[4] + 192));
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[5];

  CFRelease(v9);
}

uint64_t rtppackage_GetMessageType(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v1);
}

void browser_handleBTLEEventExternal(uint64_t a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  if (a3)
  {
    CFRetain(a3);
  }

  v8 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __browser_handleBTLEEventExternal_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v10 = a2;
  block[4] = a4;
  block[5] = a3;
  dispatch_async(v8, block);
}

void __browser_handleBTLEEventExternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v24 = *DerivedStorage;
      v25 = **v6;
      if (v25 > 40)
      {
        goto LABEL_47;
      }

      if (v25 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_47;
        }

        v24 = *v6;
      }

      LogPrintF(v24, "OSStatus browser_handleBTLEEventInternal(APBrowserRef, APBrowserBTLEEventType, CFDictionaryRef)", 33554472, "BTLE manager stopped browsing.\n");
      goto LABEL_47;
    }

    if (v2 != 4)
    {
      goto LABEL_23;
    }

    v17 = *DerivedStorage;
    v18 = **v6;
    if (v18 <= 40)
    {
      if (v18 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        v17 = *v6;
      }

      LogPrintF(v17, "OSStatus browser_handleBTLEEventInternal(APBrowserRef, APBrowserBTLEEventType, CFDictionaryRef)", 33554472, "BTLE manager object is invalidated.\n");
    }

LABEL_40:
    v35 = v3;
    goto LABEL_41;
  }

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      Value = CFDictionaryGetValue(v4, @"deviceID");
      if (!Value)
      {
        __browser_handleBTLEEventExternal_block_invoke_cold_3();
        goto LABEL_47;
      }

      v20 = Value;
      v21 = CMBaseObjectGetDerivedStorage();
      v22 = *v21;
      v23 = **v21;
      if (v23 > 20)
      {
        goto LABEL_45;
      }

      if (v23 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_45:
          v36 = browser_removeBonjourWithBTLE(v3, v20);
          if (v36)
          {
            __browser_handleBTLEEventExternal_block_invoke_cold_1(v36);
          }

          else
          {
            v37 = CMBaseObjectGetDerivedStorage();
            CFDictionaryRemoveValue(*(v37 + 112), v20);
            updated = browser_updateAVDevicePresent(v3);
            if (!updated)
            {
              goto LABEL_47;
            }

            __browser_handleBTLEEventExternal_block_invoke_cold_2(updated);
          }

          goto LABEL_64;
        }

        v22 = *v21;
      }

      LogPrintF(v22, "OSStatus browser_handleBTLERemoveEvent(APBrowserRef, CFStringRef)", 33554452, "Lost BTLE device %@.\n", v20);
      goto LABEL_45;
    }

LABEL_23:
    v26 = *DerivedStorage;
    v27 = **v6;
    if (v27 > 60)
    {
      goto LABEL_47;
    }

    if (v27 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_47;
      }

      v26 = *v6;
    }

    LogPrintF(v26, "OSStatus browser_handleBTLEEventInternal(APBrowserRef, APBrowserBTLEEventType, CFDictionaryRef)", 33554492, "Unrecognized BTLE manager event %d.\n");
    goto LABEL_47;
  }

  v7 = CFDictionaryGetValue(v4, @"deviceID");
  v8 = CFDictionaryGetValue(v4, @"ipAddress");
  v9 = CFDictionaryGetValue(v4, @"port");
  v10 = CFDictionaryGetValue(v4, @"supportsSolo");
  v11 = CFDictionaryGetValue(v4, @"rssi");
  if (!v7)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_11();
    goto LABEL_47;
  }

  if (!v8)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_10();
    goto LABEL_47;
  }

  if (!v9)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_9();
    goto LABEL_47;
  }

  if (!v10)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_8();
    goto LABEL_47;
  }

  v12 = v11;
  if (!v11)
  {
    __browser_handleBTLEEventExternal_block_invoke_cold_7();
    goto LABEL_47;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v14 = CFDictionaryGetValue(*(v13 + 112), v7);
  v15 = v14;
  if (v14)
  {
    CFRetain(v14);
    Mutable = v15;
    goto LABEL_27;
  }

  v28 = CFGetAllocator(v3);
  Mutable = CFDictionaryCreateMutable(v28, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
LABEL_27:
    v29 = *v13;
    v30 = **v13;
    if (v30 <= 40)
    {
      if (v30 != -1)
      {
LABEL_29:
        v31 = "Update for";
        if (!v15)
        {
          v31 = "Found new";
        }

        LogPrintF(v29, "OSStatus browser_handleBTLEAddOrUpdateEvent(APBrowserRef, CFStringRef, CFStringRef, CFNumberRef, CFBooleanRef, CFNumberRef)", 33554472, "%s BTLE device with id: %@ ipAddress: %@ port: %@ supportsSolo: %@\n", v31, v7, v8, v9, v10);
        goto LABEL_33;
      }

      if (_LogCategory_Initialize())
      {
        v29 = *v13;
        goto LABEL_29;
      }
    }

LABEL_33:
    CFDictionarySetValue(Mutable, @"deviceID ", v7);
    CFDictionarySetValue(Mutable, @"IPAddress", v8);
    CFDictionarySetValue(Mutable, @"port", v9);
    CFDictionarySetValue(Mutable, @"supportsSolo", v10);
    CFDictionarySetValue(Mutable, @"btleRSSI", v12);
    if (!v15 && (mach_absolute_time(), CFAbsoluteTimeGetCurrent(), v32 = CMBaseObjectGetDerivedStorage(), APSEventRecorderSetTimeInDictionary(), CFDictionarySetValue(*(v32 + 112), v7, Mutable), v33 = browser_updateAVDevicePresent(v3), v33))
    {
      __browser_handleBTLEEventExternal_block_invoke_cold_4(v33);
    }

    else
    {
      started = browser_startBTLEDeviceQuery(v3, v7);
      if (!started)
      {
        v35 = Mutable;
LABEL_41:
        CFRelease(v35);
        goto LABEL_47;
      }

      __browser_handleBTLEEventExternal_block_invoke_cold_5(started);
    }

    CFRelease(Mutable);
    goto LABEL_64;
  }

  __browser_handleBTLEEventExternal_block_invoke_cold_6();
LABEL_64:
  APSLogErrorAt();
LABEL_47:
  CFRelease(*(a1 + 32));
  v39 = *(a1 + 40);
  if (v39)
  {

    CFRelease(v39);
  }
}

uint64_t browser_addOrUpdateService(const void *a1, __CFString *a2, const __CFDictionary *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (!*(DerivedStorage + 24))
  {
    return 0;
  }

  if (a2 && a3)
  {
    v9 = DerivedStorage;
    if (browser_skipBonjourUpdate(a1, a3))
    {
      goto LABEL_64;
    }

    v10 = CFGetAllocator(a1);
    v11 = APBrowserCopyDeviceIDFromBonjourInfo(v10, a3, &key);
    if (v11)
    {
      v41 = v11;
      goto LABEL_84;
    }

    Value = CFDictionaryGetValue(*(v9 + 216), key);
    if (Value)
    {
      v13 = Value;
      if (a4)
      {
        CFDictionarySetValue(Value, @"DiscoveryMetrics", a4);
      }

      v14 = key;
      v15 = CMBaseObjectGetDerivedStorage();
      v50 = 0;
      if (CFDictionaryGetValue(a3, @"name"))
      {
        if (@"RAOP" == a2 || @"RAOP" && CFEqual(a2, @"RAOP"))
        {
          goto LABEL_49;
        }

        v19 = *(v15 + 72);
        if (v19 == a2 || v19 && CFEqual(a2, v19))
        {
          if (*(v15 + 64))
          {
            goto LABEL_49;
          }

          goto LABEL_83;
        }

        if (@"AirPlayNANFull" == a2 || @"AirPlayNANFull" && CFEqual(a2, @"AirPlayNANFull") || @"AirPlayNANPartial" == a2 || @"AirPlayNANPartial" && CFEqual(a2, @"AirPlayNANPartial"))
        {
LABEL_49:
          OUTLINED_FUNCTION_3_12();
          if (!(v25 ^ v26 | v24))
          {
LABEL_54:
            Transports = APBrowserGetTransports(a3, 1, &v50);
            if (Transports)
            {
              v41 = Transports;
            }

            else
            {
              v28 = OUTLINED_FUNCTION_11_8();
              v30 = CFDictionaryGetValue(v28, v29);
              cf = v30;
              if (!v30)
              {
                v37 = OUTLINED_FUNCTION_11_8();
                CFDictionarySetValue(v37, v38, a3);
                goto LABEL_59;
              }

              CFRetain(v30);
              v31 = OUTLINED_FUNCTION_11_8();
              CFDictionaryRemoveValue(v31, v32);
              v33 = BonjourDevice_MergeInfo();
              if (!v33)
              {
                v34 = OUTLINED_FUNCTION_11_8();
                CFDictionarySetValue(v34, v35, v36);
                CFRelease(cf);
LABEL_59:
                if (CFDictionaryGetInt64() && *(v15 + 24) != 1 && (v50 & 4) != 0 && (v39 = browser_cacheP2PDNSAddresses(a1, v14, v13), v39))
                {
                  v41 = v39;
                }

                else
                {
                  updated = browser_updateEventInfoForDevice(a1, v14);
                  if (!updated)
                  {
                    goto LABEL_64;
                  }

                  v41 = updated;
                }

                goto LABEL_92;
              }

              v41 = v33;
            }

LABEL_92:
            APSLogErrorAt();
            goto LABEL_84;
          }

          if (v23 == -1)
          {
            if (!OUTLINED_FUNCTION_7(v21))
            {
              goto LABEL_54;
            }

            v21 = *v15;
          }

          OUTLINED_FUNCTION_11(v21, "OSStatus browser_updateNearbyDevice(APBrowserRef, CFNumberRef, CFMutableDictionaryRef, CFStringRef, CFDictionaryRef)", v22, "Update for %s device with id: %@ name: %@, key: %@\n");
          goto LABEL_54;
        }

        if (@"AirPlayPartial" != a2 && (!@"AirPlayPartial" || !CFEqual(a2, @"AirPlayPartial")))
        {
          goto LABEL_83;
        }

        if (*(v15 + 24) == 3)
        {
          goto LABEL_49;
        }

LABEL_64:
        v41 = 0;
        goto LABEL_80;
      }

LABEL_93:
      APSLogErrorAt();
      v41 = 4294960534;
      goto LABEL_84;
    }

    v16 = key;
    v17 = CMBaseObjectGetDerivedStorage();
    if (!CFDictionaryGetValue(a3, @"name"))
    {
      goto LABEL_93;
    }

    if (@"RAOP" == a2 || @"RAOP" && CFEqual(a2, @"RAOP"))
    {
      v18 = @"RAOPBonjourInfo";
      goto LABEL_70;
    }

    v20 = *(v17 + 72);
    if (v20 == a2 || v20 && CFEqual(a2, v20))
    {
      v18 = *(v17 + 64);
      if (v18)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (@"AirPlayNANFull" == a2 || @"AirPlayNANFull" && CFEqual(a2, @"AirPlayNANFull"))
      {
        v18 = @"AirPlayNANFullBonjourInfo";
        goto LABEL_70;
      }

      if (@"AirPlayNANPartial" == a2 || @"AirPlayNANPartial" && CFEqual(a2, @"AirPlayNANPartial"))
      {
        v18 = @"AirPlayNANPartialBonjourInfo";
        goto LABEL_70;
      }

      if (@"AirPlayPartial" == a2 || @"AirPlayPartial" && CFEqual(a2, @"AirPlayPartial"))
      {
        if (*(v17 + 24) != 3)
        {
          goto LABEL_64;
        }

        v18 = @"AirPlayP2PBonjourInfo";
LABEL_70:
        OUTLINED_FUNCTION_3_12();
        if (!(v25 ^ v26 | v24))
        {
LABEL_75:
          v45 = CFGetAllocator(a1);
          Mutable = CFDictionaryCreateMutable(v45, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v47 = Mutable;
            CFDictionarySetValue(Mutable, v18, a3);
            if (a4)
            {
              CFDictionarySetValue(v47, @"DiscoveryMetrics", a4);
            }

            CFDictionarySetValue(*(v17 + 216), v16, v47);
            v41 = browser_updateEventInfoForDevice(a1, v16);
            if (!v41)
            {
              CFRelease(v47);
              goto LABEL_80;
            }

            APSLogErrorAt();
            CFRelease(v47);
          }

          else
          {
            APSLogErrorAt();
            v41 = 4294960568;
          }

          goto LABEL_84;
        }

        if (v44 == -1)
        {
          if (!OUTLINED_FUNCTION_7(v42))
          {
            goto LABEL_75;
          }

          v42 = *v17;
        }

        OUTLINED_FUNCTION_11(v42, "OSStatus browser_addNearbyDevice(APBrowserRef, CFNumberRef, CFStringRef, CFDictionaryRef, CFDictionaryRef)", v43, "Add new %s device with id: %@ name: %@\n");
        goto LABEL_75;
      }
    }

LABEL_83:
    APSLogErrorAt();
    v41 = 4294960591;
LABEL_84:
    APSLogErrorAt();
    goto LABEL_80;
  }

  APSLogErrorAt();
  v41 = 4294960591;
LABEL_80:
  if (key)
  {
    CFRelease(key);
  }

  return v41;
}

uint64_t browser_updateEventInfoForDevice(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v81 = 0;
  if (!a2)
  {
    browser_updateEventInfoForDevice_cold_11();
    v29 = 0;
    v63 = 0;
    v73 = 4294960591;
    goto LABEL_129;
  }

  v5 = DerivedStorage;
  Value = CFDictionaryGetValue(*(DerivedStorage + 216), a2);
  if (!Value)
  {
    browser_updateEventInfoForDevice_cold_10();
    v29 = 0;
    v63 = 0;
    v73 = 4294960534;
    goto LABEL_129;
  }

  v7 = Value;
  ServiceAvailabilityForDevice = browser_queryServiceAvailabilityForDevice(a1, a2, &v88 + 1, &v88, 0);
  if (ServiceAvailabilityForDevice)
  {
    v73 = ServiceAvailabilityForDevice;
    browser_updateEventInfoForDevice_cold_1(ServiceAvailabilityForDevice);
    v29 = 0;
LABEL_156:
    v63 = 0;
    goto LABEL_129;
  }

  v9 = CFDictionaryGetValue(v7, *(v5 + 64));
  APBrowserGetIsLocallyAdvertised(v9, &v87 + 1);
  APBrowserGetTransports(v9, 0, &v83 + 1);
  APBrowserGetTransportsRequiringBroker(v9, &v85);
  if (v9)
  {
    v10 = CFDictionaryGetValue(v9, @"cached");
  }

  else
  {
    v10 = *MEMORY[0x277CBED10];
  }

  v11 = CFDictionaryGetValue(v7, @"AirPlayNANFullBonjourInfo");
  APBrowserGetIsLocallyAdvertised(v11, &v87);
  APBrowserGetTransports(v11, 0, &v83);
  v12 = CFDictionaryGetValue(v7, @"RAOPBonjourInfo");
  APBrowserGetIsLocallyAdvertised(v12, &v86);
  APBrowserGetTransports(v12, 0, &v82);
  v13 = CFDictionaryGetValue(v7, @"AirPlayP2PBonjourInfo");
  APBrowserGetTransports(v13, 0, &v81);
  v14 = CFDictionaryGetValue(v7, @"AirPlayNANPartialBonjourInfo");
  APBrowserGetTransports(v14, 0, &v82 + 1);
  if (HIBYTE(v87) | v87)
  {
    v15 = 1;
  }

  else
  {
    v15 = v86 != 0;
  }

  v77 = v15;
  v16 = FigCFEqual();
  v17 = CFGetAllocator(a1);
  v18 = *v5;
  if (!v16)
  {
    v90[0] = 0;
    v19 = CFDictionaryGetValue(v7, @"AirPlayBonjourInfo");
    v20 = CFDictionaryGetValue(v7, @"AirPlayNANFullBonjourInfo");
    v21 = CFDictionaryGetValue(v7, @"RAOPBonjourInfo");
    if (v19 || v20 || v21)
    {
      AdvertiserInfoForDevice = APBrowserCreateAdvertiserInfoForDevice(v17, v19, v20, v21, v90);
      if (AdvertiserInfoForDevice)
      {
        browser_updateEventInfoForDevice_cold_5(AdvertiserInfoForDevice, v18);
        goto LABEL_165;
      }

LABEL_20:
      v29 = v90[0];
      goto LABEL_21;
    }

LABEL_165:
    if (v90[0])
    {
      CFRelease(v90[0]);
    }

    goto LABEL_167;
  }

  v90[0] = 0;
  v23 = CFDictionaryGetValue(v7, @"SidePlayBonjourInfo");
  if (v23)
  {
    v24 = v23;
    v25 = CFDictionaryGetValue(v23, @"txt");
    if (v25)
    {
      v26 = v25;
      v27 = CFDictionaryGetValue(v24, @"name");
      if (v27)
      {
        v28 = APAdvertiserInfoCreateWithSidePlayDataAndDeviceName(v17, v26, v27, v90);
        if (!v28)
        {
          goto LABEL_20;
        }

        browser_updateEventInfoForDevice_cold_2(v28, v18);
      }

      else
      {
        browser_updateEventInfoForDevice_cold_3();
      }
    }

    else
    {
      browser_updateEventInfoForDevice_cold_4();
    }

    goto LABEL_165;
  }

LABEL_167:
  v29 = 0;
LABEL_21:
  v30 = (v83 & 0x2B00000000) != 0;
  v31 = ((BYTE4(v83) | v82) & 0x2B) != 0;
  DeviceRelationship = browser_getDeviceRelationship(a1, a2, v29);
  v33 = *v5;
  v34 = **v5;
  v80 = a1;
  v79 = DeviceRelationship;
  if (v34 > 40)
  {
    goto LABEL_72;
  }

  if (v34 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_72;
    }

    v76 = v10;
    v33 = *v5;
  }

  else
  {
    v76 = v10;
  }

  v35 = "W";
  v36 = "A";
  if ((v83 & 0x200000000) != 0)
  {
    v37 = "W";
  }

  else
  {
    v37 = "w";
  }

  if ((v83 & 0x400000000) != 0)
  {
    v38 = "A";
  }

  else
  {
    v38 = "a";
  }

  v75 = v38;
  v39 = "N";
  v40 = "n";
  if ((v83 & 0x80) != 0)
  {
    v41 = "N";
  }

  else
  {
    v41 = "n";
  }

  v42 = "U";
  if ((v83 & 0x800000000) != 0)
  {
    v43 = "U";
  }

  else
  {
    v43 = "u";
  }

  if ((v83 & 0x100000000) != 0)
  {
    v44 = "E";
  }

  else
  {
    v44 = "e";
  }

  if ((v83 & 0x1000000000) != 0)
  {
    v45 = "D";
  }

  else
  {
    v45 = "d";
  }

  if ((v83 & 0x2000000000) != 0)
  {
    v46 = "B";
  }

  else
  {
    v46 = "b";
  }

  if ((v82 & 2) == 0)
  {
    v35 = "w";
  }

  if ((v82 & 4) != 0)
  {
    v47 = "A";
  }

  else
  {
    v47 = "a";
  }

  if ((v82 & 8) == 0)
  {
    v42 = "u";
  }

  if (v82)
  {
    v48 = "E";
  }

  else
  {
    v48 = "e";
  }

  if ((v82 & 0x10) != 0)
  {
    v49 = "D";
  }

  else
  {
    v49 = "d";
  }

  if ((v82 & 0x20) != 0)
  {
    v50 = "B";
  }

  else
  {
    v50 = "b";
  }

  if ((v81 & 4) == 0)
  {
    v36 = "a";
  }

  v51 = "S";
  if ((v82 & 0x8000000000) != 0)
  {
    v40 = "N";
  }

  if ((v81 & 0x80) == 0)
  {
    v51 = "s";
  }

  if (v76 == *MEMORY[0x277CBED28])
  {
    v39 = "Y";
  }

  LogPrintF(v33, "OSStatus browser_updateEventInfoForDevice(APBrowserRef, CFNumberRef)", 33554472, "Device %@ transports: _airplay=%s%s%s%s%s%s%s%s _raop=%s%s%s%s%s%s _airplay-p2p=%s%s%s cached=%s\n", a2, v37, v75, v41, v43, v44, v45, v46, off_278BCA3D8[DeviceRelationship], v35, v47, v42, v48, v49, v50, v36, v40, v51, v39);
LABEL_72:
  v52 = CMBaseObjectGetDerivedStorage();
  v53 = CFDictionaryContainsKey(v52[26], a2);
  if (!v31)
  {
    if (!v53)
    {
      goto LABEL_87;
    }

    v57 = *v52;
    v58 = **v52;
    if (v58 <= 15)
    {
      if (v58 != -1)
      {
LABEL_85:
        LogPrintF(v57, "void browser_updateDeviceInfraNetworkSignature(APBrowserRef, CFNumberRef, Boolean)", 33554447, "[%{ptr}] Device %@ no longer present on Infra", a1, a2);
        goto LABEL_86;
      }

      if (_LogCategory_Initialize())
      {
        v57 = *v52;
        goto LABEL_85;
      }
    }

LABEL_86:
    CFDictionaryRemoveValue(v52[26], a2);
    goto LABEL_87;
  }

  if (!v53)
  {
    v54 = [v52[25] primaryNetworkSignature];
    v55 = *v52;
    v56 = **v52;
    if (v56 <= 15)
    {
      if (v56 != -1)
      {
LABEL_78:
        LogPrintF(v55, "void browser_updateDeviceInfraNetworkSignature(APBrowserRef, CFNumberRef, Boolean)", 33554447, "[%{ptr}] Device %@ seen over Infra with network signature %'@", a1, a2, v54);
        goto LABEL_79;
      }

      if (_LogCategory_Initialize())
      {
        v55 = *v52;
        goto LABEL_78;
      }
    }

LABEL_79:
    FigCFDictionarySetValue();
  }

LABEL_87:
  CMBaseObjectGetDerivedStorage();
  if (v29 && APSRotatingKeyMapperIsInitialized())
  {
    v59 = APAdvertiserInfoCopyProperty(v29, 0, @"bluetoothAddress", 0, 0);
    v60 = APSRotatingKeyMapperSetDesiredKeyForID();
    if (!v60)
    {
      if (!v59)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    browser_updateEventInfoForDevice_cold_6(v60);
    if (v59)
    {
LABEL_91:
      CFRelease(v59);
    }
  }

LABEL_92:
  v61 = CFGetAllocator(a1);
  v62 = APBrowserCreateDetailedModeEventInfoDictionary(v61, a2, *(v5 + 40), v29, v88, HIBYTE(v88), v30, v31, v85, DeviceRelationship, v77, v84, &v89);
  if (v62)
  {
    v73 = v62;
    browser_updateEventInfoForDevice_cold_7(v62);
    goto LABEL_156;
  }

  if (v29)
  {
    v63 = APAdvertiserInfoCopyProperty(v29, 0, @"publicCUSystemPairingIdentity", 0, 0);
    if (v63)
    {
      CFDictionarySetValue(*(v5 + 176), v63, a2);
    }
  }

  else
  {
    v63 = 0;
  }

  v64 = v89;
  v65 = v83;
  v66 = HIDWORD(v83);
  v67 = v81;
  v68 = v82;
  v78 = BYTE4(v82);
  mach_absolute_time();
  CFAbsoluteTimeGetCurrent();
  v91 = 0;
  if (v64)
  {
    if (!browser_copyDeviceEventRecorder(v7, a2, &v91))
    {
      if ((v66 & 2) != 0)
      {
        APSEventRecorderRecordEventWithFlagsAtTime();
        if ((v66 & 4) == 0)
        {
LABEL_101:
          if ((v65 & 0x80) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_140;
        }
      }

      else if ((v66 & 4) == 0)
      {
        goto LABEL_101;
      }

      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v65 & 0x80) == 0)
      {
LABEL_102:
        if ((v66 & 8) == 0)
        {
          goto LABEL_103;
        }

        goto LABEL_141;
      }

LABEL_140:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v66 & 8) == 0)
      {
LABEL_103:
        if ((v66 & 1) == 0)
        {
          goto LABEL_104;
        }

        goto LABEL_142;
      }

LABEL_141:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v66 & 1) == 0)
      {
LABEL_104:
        if ((v66 & 0x10) == 0)
        {
          goto LABEL_105;
        }

        goto LABEL_143;
      }

LABEL_142:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v66 & 0x10) == 0)
      {
LABEL_105:
        if ((v66 & 0x20) == 0)
        {
          goto LABEL_106;
        }

        goto LABEL_144;
      }

LABEL_143:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v66 & 0x20) == 0)
      {
LABEL_106:
        if ((v68 & 2) == 0)
        {
          goto LABEL_107;
        }

        goto LABEL_145;
      }

LABEL_144:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v68 & 2) == 0)
      {
LABEL_107:
        if ((v68 & 4) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_146;
      }

LABEL_145:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v68 & 4) == 0)
      {
LABEL_108:
        if ((v68 & 8) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_147;
      }

LABEL_146:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v68 & 8) == 0)
      {
LABEL_109:
        if ((v68 & 1) == 0)
        {
          goto LABEL_110;
        }

        goto LABEL_148;
      }

LABEL_147:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v68 & 1) == 0)
      {
LABEL_110:
        if ((v68 & 0x10) == 0)
        {
          goto LABEL_111;
        }

        goto LABEL_149;
      }

LABEL_148:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v68 & 0x10) == 0)
      {
LABEL_111:
        if ((v68 & 0x20) == 0)
        {
          goto LABEL_112;
        }

        goto LABEL_150;
      }

LABEL_149:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v68 & 0x20) == 0)
      {
LABEL_112:
        if ((v67 & 4) == 0)
        {
          goto LABEL_114;
        }

        goto LABEL_113;
      }

LABEL_150:
      APSEventRecorderRecordEventWithFlagsAtTime();
      if ((v67 & 4) == 0)
      {
LABEL_114:
        if (v78 < 0)
        {
          APSEventRecorderRecordEventWithFlagsAtTime();
        }

        if (v67 < 0)
        {
          APSEventRecorderRecordEventWithFlagsAtTime();
        }

        if (v79)
        {
          APSEventRecorderRecordEventWithFlagsAtTime();
        }

        v69 = v80;
        if ((v66 & 0x20) != 0)
        {
          v90[0] = 0;
          v90[1] = 0;
          v70 = CFDictionaryGetValue(v7, @"DiscoveryMetrics");
          if (APSEventRecorderGetTimeFromDictionaryIfPresent())
          {
            APSEventRecorderRecordEventWithFlagsAtTime();
            CFDictionaryRemoveValue(v70, @"btleBeaconEventTime");
          }
        }

        v71 = v91;
        if (v65 | v66 | v68)
        {
          APSEventRecorderRecordEventWithFlagsAtTime();
        }

        CFDictionarySetValue(v64, @"eventRecorder", v71);
        if (!v71)
        {
          goto LABEL_127;
        }

        goto LABEL_126;
      }

LABEL_113:
      APSEventRecorderRecordEventWithFlagsAtTime();
      goto LABEL_114;
    }

    APSLogErrorAt();
    v71 = v91;
    v69 = v80;
    if (v91)
    {
LABEL_126:
      CFRelease(v71);
    }
  }

  else
  {
    browser_updateEventInfoForDevice_cold_8();
    v69 = v80;
  }

LABEL_127:
  v72 = browser_setEventInfoForDevice(v69, a2, v89);
  v73 = v72;
  if (v72)
  {
    browser_updateEventInfoForDevice_cold_9(v72);
  }

LABEL_129:
  if (v84)
  {
    CFRelease(v84);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v73;
}

uint64_t APBrowserGetTransports(const __CFDictionary *a1, int a2, _DWORD *a3)
{
  if (a1 && (a2 ? (v4 = @"removedServices") : (v4 = @"services"), (Value = CFDictionaryGetValue(a1, v4)) != 0 && (v6 = Value, Count = CFArrayGetCount(Value), Count >= 1)))
  {
    v8 = Count;
    v9 = 0;
    v10 = 0;
    do
    {
      CFArrayGetValueAtIndex(v6, v9);
      v10 |= CFDictionaryGetInt64();
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return 0;
}

const __CFDictionary *APBrowserGetIsLocallyAdvertised(const __CFDictionary *result, char *a2)
{
  if (!result)
  {
    goto LABEL_9;
  }

  result = CFDictionaryGetValue(result, @"services");
  if (!result)
  {
    goto LABEL_9;
  }

  v3 = result;
  Count = CFArrayGetCount(result);
  if (Count < 1)
  {
    result = 0;
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v3, v6);
    Int64 = CFDictionaryGetInt64();
    result = 0;
    if (!Int64)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }

  result = 0;
  v8 = 1;
LABEL_10:
  *a2 = v8;
  return result;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName(uint64_t a1, const __CFData *a2, uint64_t a3, uint64_t a4, const __CFString *a5, CFMutableDictionaryRef **a6)
{
  v33 = 0;
  v34 = 0;
  if (!a5)
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_11();
    return 4294960591;
  }

  if (!a2 && !a3 && !a4)
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_10();
    return 4294960591;
  }

  APAdvertiserInfoCreate(a1, &v34);
  v11 = v34;
  if (!v34)
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_9();
    return 4294960568;
  }

  _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(a5, &v33);
  v12 = v33;
  if (v33)
  {
    v13 = v33;
  }

  else
  {
    v13 = a5;
  }

  CFDictionarySetValue(v11[10], @"deviceName", v13);
  if (!a2)
  {
    goto LABEL_10;
  }

  v37 = 0;
  value = 0;
  v36 = 0;
  v35 = 0;
  if (APAdvertiserInfoGetBitListValueFromTXTRecord(@"cn", a2, &v35))
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_1();
LABEL_95:
    v17 = v39;
    goto LABEL_28;
  }

  CFDictionarySetInt64();
  BooleanFromTXTRecord = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (BooleanFromTXTRecord != -6727)
  {
    v17 = BooleanFromTXTRecord;
    if (BooleanFromTXTRecord)
    {
LABEL_27:
      APSLogErrorAt();
      goto LABEL_28;
    }

    v20 = MEMORY[0x277CBED28];
    if (!v37)
    {
      v20 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v11[10], @"rfc2617DigestAuthKey", *v20);
  }

  if (APAdvertiserInfoGetBitListValueFromTXTRecord(@"et", a2, &v35))
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_2();
    goto LABEL_95;
  }

  CFDictionarySetInt64();
  Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (Int64FromTXTRecord != -6727)
  {
    v17 = Int64FromTXTRecord;
    if (Int64FromTXTRecord)
    {
      goto LABEL_27;
    }

    v22 = _APAdvertiserInfoSetLegacyFeatures(v11[10], v36);
    if (v22)
    {
      v17 = v22;
      APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_3(v22);
      goto LABEL_28;
    }
  }

  v23 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v23 != -6727)
  {
    v17 = v23;
    if (v23)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"firmwareVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v24 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v24 != -6727)
  {
    v17 = v24;
    if (v24)
    {
      goto LABEL_27;
    }

    CFDictionarySetInt64();
  }

  BitListValueFromTXTRecord = APAdvertiserInfoGetBitListValueFromTXTRecord(@"md", a2, &v35);
  if (BitListValueFromTXTRecord != -6727)
  {
    v17 = BitListValueFromTXTRecord;
    if (BitListValueFromTXTRecord)
    {
      goto LABEL_27;
    }

    CFDictionarySetInt64();
  }

  v26 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v26 != -6727)
  {
    v17 = v26;
    if (v26)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"deviceModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v27 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (v27 != -6727)
  {
    v17 = v27;
    if (v27)
    {
      goto LABEL_27;
    }

    v28 = MEMORY[0x277CBED28];
    if (!v37)
    {
      v28 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v11[10], @"password", *v28);
  }

  v29 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v29 != -6727)
  {
    v17 = v29;
    if (v29)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"publicKey", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  if (APSTXTRecordUtilsCopyCFStringFromTXTRecord())
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_4();
    goto LABEL_95;
  }

  CFDictionarySetValue(v11[10], @"transportTypes", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (APSTXTRecordUtilsCopyCFStringFromTXTRecord())
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_5();
    goto LABEL_95;
  }

  CFDictionarySetValue(v11[10], @"airTunesProtocolVersion", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  v30 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v30 != -6727)
  {
    v17 = v30;
    if (v30)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"airPlayVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v31 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v31 != -6727)
  {
    v17 = v31;
    if (v31)
    {
      goto LABEL_27;
    }

    CFDictionarySetValue(v11[10], @"OSVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v32 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v32 == -6727)
  {
    v17 = 0;
  }

  else
  {
    v17 = v32;
    if (v32)
    {
      goto LABEL_27;
    }

    CFDictionarySetInt64();
  }

LABEL_28:
  if (value)
  {
    CFRelease(value);
  }

  if (v17)
  {
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_6(v17);
    goto LABEL_54;
  }

LABEL_10:
  if (!a4)
  {
    goto LABEL_19;
  }

  value = 0;
  v14 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v14 != -6727)
  {
    if (!v14)
    {
      CFDictionarySetValue(v11[10], @"nanServiceType", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      goto LABEL_18;
    }

    APSLogErrorAt();
  }

  if (value)
  {
    CFRelease(value);
  }

LABEL_18:
  v15 = _APAdvertiserInfoAddAirPlayData(v11, a4);
  if (v15)
  {
    v17 = v15;
    APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_7(v15);
    goto LABEL_54;
  }

LABEL_19:
  if (a3)
  {
    v16 = _APAdvertiserInfoAddAirPlayData(v11, a3);
    if (v16)
    {
      v17 = v16;
      APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_8(v16);
LABEL_54:
      CFRelease(v11);
      if (!v12)
      {
        return v17;
      }

      goto LABEL_22;
    }
  }

  v17 = 0;
  *a6 = v11;
  if (v12)
  {
LABEL_22:
    CFRelease(v12);
  }

  return v17;
}

uint64_t stream_copyPropertyInternal(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_copyPropertyInternal_cold_1();
    return 4294950679;
  }

  v8 = DerivedStorage;
  v9 = 56;
  if (*(DerivedStorage + 24))
  {
    v10 = 56;
  }

  else
  {
    v10 = 48;
  }

  v11 = *(DerivedStorage + v10);
  if (*(DerivedStorage + 24))
  {
    v9 = 48;
  }

  v12 = *(DerivedStorage + v9);
  if (!CFEqual(a2, @"ReverseConnectionLocalPort"))
  {
    if (CFEqual(a2, @"ReverseConnectionRemotePort"))
    {
      if (*(v12 + 24))
      {
        APTransportConnectionGetCMBaseObject();
        v18 = v17;
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v16 = v19(v18, @"RemoteNetworkPort", a3, a4);
          if (v16)
          {
            goto LABEL_19;
          }

          return v16;
        }

        v16 = 4294954514;
LABEL_19:
        APSLogErrorAt();
        return v16;
      }

      stream_copyPropertyInternal_cold_3();
    }

    else
    {
      if (CFEqual(a2, @"SendConnection"))
      {
        v21 = *(*(v8 + 48) + 24);
        if (v21)
        {
          v22 = CFRetain(v21);
          *a4 = v22;
          if (v22)
          {
            return 0;
          }
        }

        else
        {
          *a4 = 0;
        }

        stream_copyPropertyInternal_cold_4();
        return 4294960569;
      }

      if (*(v11 + 24))
      {
        APTransportConnectionGetCMBaseObject();
        v24 = v23;
        v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v25)
        {
          v16 = v25(v24, a2, a3, a4);
          if (!v16)
          {
            return v16;
          }
        }

        else
        {
          v16 = 4294954514;
        }

        goto LABEL_19;
      }

      stream_copyPropertyInternal_cold_5();
    }

    return 4294960587;
  }

  if (!*(v12 + 24))
  {
    stream_copyPropertyInternal_cold_2();
    return 4294960587;
  }

  APTransportConnectionGetCMBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    v16 = 4294954514;
    goto LABEL_19;
  }

  v16 = v15(v14, @"LocalNetworkPort", a3, a4);
  if (v16)
  {
    goto LABEL_19;
  }

  return v16;
}

uint64_t APTransportStreamCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, const __CFDictionary *a8, CFTypeRef *a9)
{
  v44 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a2)
  {
    APTransportStreamCreate_cold_15();
    return 4294950686;
  }

  if (!a6)
  {
    APTransportStreamCreate_cold_14();
    v35 = 4294950686;
    goto LABEL_55;
  }

  v12 = a5;
  FigTransportStreamGetClassID();
  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    v35 = v17;
    APTransportStreamCreate_cold_1(v17);
    goto LABEL_55;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = CFRetain(a2);
  *DerivedStorage = a3;
  *(DerivedStorage + 80) = v19;
  *(DerivedStorage + 88) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  SNPrintF(label, 64, "APTransportStream.%{ptr}", cf);
  if (v12)
  {
    v20 = FigDispatchQueueCreateWithPriority();
  }

  else
  {
    v20 = dispatch_queue_create(label, 0);
  }

  *(DerivedStorage + 64) = v20;
  if (!v20)
  {
    APTransportStreamCreate_cold_13();
LABEL_54:
    v35 = 4294950685;
    goto LABEL_55;
  }

  SNPrintF(label, 64, "APTransportStream.%{ptr}.notification", cf);
  v21 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 184) = v21;
  if (!v21)
  {
    APTransportStreamCreate_cold_12();
    goto LABEL_54;
  }

  v22 = dispatch_semaphore_create(1);
  *(DerivedStorage + 32) = v22;
  if (!v22)
  {
    APTransportStreamCreate_cold_11();
    goto LABEL_54;
  }

  Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x277CBF158]);
  *(DerivedStorage + 104) = Mutable;
  if (!Mutable)
  {
    APTransportStreamCreate_cold_10();
    goto LABEL_54;
  }

  v24 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x277CBF150]);
  *(DerivedStorage + 112) = v24;
  if (!v24)
  {
    APTransportStreamCreate_cold_9();
    goto LABEL_54;
  }

  *(DerivedStorage + 96) = a7;
  *(DerivedStorage + 24) = 0;
  v25 = cf;
  v26 = CMBaseObjectGetDerivedStorage();
  if (a8)
  {
    Value = CFDictionaryGetValue(a8, @"SendConnection");
    if (Value)
    {
      ConnectionState = stream_createConnectionState(Value, stream_handleEventFromSendConnection_0, cf, 0, (v26 + 48));
      if (ConnectionState)
      {
        v35 = ConnectionState;
        APTransportStreamCreate_cold_2(ConnectionState);
        goto LABEL_63;
      }

      v39 = stream_createConnectionState(a6, stream_handleEventFromReceiveConnection, cf, 1, (v26 + 56));
      if (v39)
      {
        v35 = v39;
        APTransportStreamCreate_cold_3(v39);
        goto LABEL_63;
      }

      *(v26 + 24) = 1;
    }

    v28 = CFDictionaryGetValue(a8, @"ReceiveConnection");
    if (v28)
    {
      v40 = stream_createConnectionState(v28, stream_handleEventFromReceiveConnection, v25, 1, (v26 + 56));
      if (v40)
      {
        v35 = v40;
        APTransportStreamCreate_cold_4(v40);
        goto LABEL_63;
      }

      v41 = stream_createConnectionState(a6, stream_handleEventFromSendConnection_0, v25, 0, (v26 + 48));
      if (v41)
      {
        v35 = v41;
        APTransportStreamCreate_cold_5(v41);
        goto LABEL_63;
      }

      *(v26 + 24) = 0;
    }
  }

  if (*(v26 + 48))
  {
LABEL_18:
    if (!a8)
    {
      goto LABEL_31;
    }

    v29 = CFDictionaryGetValue(a8, @"EventRecorder");
    *(DerivedStorage + 136) = v29;
    if (!v29 || (CFRetain(v29), !*(DerivedStorage + 136)) || (v30 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(DerivedStorage + 144) = v30) != 0))
    {
      v31 = CFDictionaryGetValue(a8, @"SendBackingProvider");
      *(DerivedStorage + 40) = v31;
      if (v31)
      {
        CFRetain(v31);
      }

      v32 = CFDictionaryGetValue(a8, @"IssueReporter");
      *(DerivedStorage + 8) = v32;
      if (v32)
      {
        CFRetain(v32);
      }

      v33 = CFDictionaryGetValue(a8, @"NANDataSession");
      *(DerivedStorage + 16) = v33;
      if (v33)
      {
        CFRetain(v33);
      }

      if (gLogCategory_APTransportStream > 50)
      {
        goto LABEL_35;
      }

      if (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize())
      {
        APTransportStreamCreate_cold_8(&cf, DerivedStorage + 40, v34);
      }

LABEL_31:
      if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportStream, "OSStatus APTransportStreamCreate(CFAllocatorRef, FigTransportSessionRef, FigTransportStreamID, CFStringRef, FigThreadPriority, APTransportConnectionRef, uint64_t, CFDictionaryRef, FigTransportStreamRef *)", 33554482, "APTransportStream %{ptr} with name %@ created.\n", cf, a4);
      }

LABEL_35:
      v35 = 0;
      *a9 = cf;
      return v35;
    }

    APTransportStreamCreate_cold_7();
    goto LABEL_54;
  }

  v37 = stream_createConnectionState(a6, stream_handleEventFromSendConnection_0, v25, 0, (v26 + 48));
  if (!v37)
  {
    *(v26 + 56) = *(v26 + 48);
    goto LABEL_18;
  }

  v35 = v37;
  APTransportStreamCreate_cold_6(v37);
LABEL_63:
  APSLogErrorAt();
LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  return v35;
}

uint64_t stream_setPropertyInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_setPropertyInternal_cold_1();
    return 4294950679;
  }

  v3 = DerivedStorage;
  v4 = 56;
  if (*(DerivedStorage + 24))
  {
    v5 = 56;
  }

  else
  {
    v5 = 48;
  }

  v6 = *(DerivedStorage + v5);
  if (*(DerivedStorage + 24))
  {
    v4 = 48;
  }

  v7 = *(DerivedStorage + v4);
  if (!CFEqual(*(a1 + 8), @"ReverseConnectionLocalPort"))
  {
    if (CFEqual(*(a1 + 8), @"ReverseConnectionRemotePort"))
    {
      if (!*(v7 + 24))
      {
        stream_setPropertyInternal_cold_3();
        return 4294960587;
      }

      v13 = *(a1 + 16);
      APTransportConnectionGetCMBaseObject();
      v15 = v14;
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v16)
      {
        v12 = v16(v15, @"RemoteNetworkPort", v13);
        if (v12)
        {
          goto LABEL_25;
        }

        return v12;
      }

      v12 = 4294954514;
    }

    else
    {
      if (!CFEqual(*(a1 + 8), @"QualityOfService"))
      {
        v22 = CFEqual(*(a1 + 8), @"PackageSendTimeout");
        v23 = *(v6 + 24);
        if (v22)
        {
          if (v23)
          {
            v24 = *(a1 + 16);
            APTransportConnectionGetCMBaseObject();
            v26 = v25;
            v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v27)
            {
              v28 = v27(v26, @"PackageSendTimeout", v24);
              v30 = v28;
              if (v28 == -12784)
              {
                *(v3 + 176) = CFGetInt64Ranged();
                v28 = -12784;
              }

              if (!v28)
              {
                return 0;
              }
            }

            else
            {
              v30 = -12782;
            }

            APSLogErrorAt();
            return v30;
          }

          stream_setPropertyInternal_cold_5();
        }

        else
        {
          if (v23)
          {
            v29 = APTransportConnectionSetProperty(v23, *(a1 + 8), *(a1 + 16));
            v12 = v29;
            if (v29)
            {
              stream_setPropertyInternal_cold_6(v29);
            }

            return v12;
          }

          stream_setPropertyInternal_cold_7();
        }

        return 4294960587;
      }

      if (!*(v7 + 24))
      {
        stream_setPropertyInternal_cold_4();
        return 4294960587;
      }

      v17 = *(a1 + 16);
      APTransportConnectionGetCMBaseObject();
      v19 = v18;
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v20)
      {
        v12 = v20(v19, @"QualityOfService", v17);
        if (v12)
        {
          goto LABEL_25;
        }

        return v12;
      }

      v12 = 4294954514;
    }

LABEL_25:
    APSLogErrorAt();
    return v12;
  }

  if (!*(v7 + 24))
  {
    stream_setPropertyInternal_cold_2();
    return 4294960587;
  }

  v8 = *(a1 + 16);
  APTransportConnectionGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    v12 = 4294954514;
    goto LABEL_25;
  }

  v12 = v11(v10, @"LocalNetworkPort", v8);
  if (v12)
  {
    goto LABEL_25;
  }

  return v12;
}

uint64_t APTransportStreamSendPlistMessageCreatingPlistReply(uint64_t a1, uint64_t a2, CFPropertyListRef propertyList, void *a4)
{
  v19 = 0;
  cf = 0;
  if (propertyList)
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      APTransportStreamSendPlistMessageCreatingPlistReply_cold_2();
      v13 = 0;
      v12 = 4294950685;
      goto LABEL_19;
    }

    v8 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v12 = BlockBufferWithCFDataNoCopy;
      APTransportStreamSendPlistMessageCreatingPlistReply_cold_1(BlockBufferWithCFDataNoCopy);
      v13 = 0;
      goto LABEL_18;
    }

    v10 = cf;
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    v12 = 4294954514;
    goto LABEL_15;
  }

  v12 = v11(a1, a2, v10, &v19);
  if (v12)
  {
LABEL_15:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v13 = 0;
  if (!a4 || !v19)
  {
LABEL_17:
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    v12 = CFDataWithBlockBufferNoCopy;
    APTransportStreamSendPlistMessageCreatingPlistReply_cold_3(CFDataWithBlockBufferNoCopy);
    goto LABEL_16;
  }

  v16 = CFPropertyListCreateWithData(v14, 0, 0, 0, 0);
  v13 = v16;
  if (v16)
  {
    v17 = CFGetTypeID(v16);
    if (v17 == CFDictionaryGetTypeID())
    {
      v12 = 0;
      *a4 = v13;
LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

    APTransportStreamSendPlistMessageCreatingPlistReply_cold_4();
  }

  else
  {
    APTransportStreamSendPlistMessageCreatingPlistReply_cold_5();
  }

  v12 = 4294950686;
  if (v8)
  {
LABEL_18:
    CFRelease(v8);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v12;
}

uint64_t udpconnection_SetProperty(uint64_t a1, const void *a2, __CFString *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_SetProperty_cold_1(buffer);
    goto LABEL_63;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"PackageType"))
  {
    if (CFEqual(a2, @"RemoteNetworkInfo"))
    {
      if (a3)
      {
        v9 = CFGetTypeID(a3);
        if (v9 == CFDictionaryGetTypeID())
        {
          v10 = CMBaseObjectGetDerivedStorage();
          Value = CFDictionaryGetValue(a3, @"IPAddress");
          if (Value)
          {
            CFStringGetCString(Value, buffer, 128, 0x8000100u);
            StringToSockAddr(buffer, v10 + 240, 28, 0);
          }

          Int64Ranged = CFDictionaryGetInt64Ranged();
          if (Int64Ranged)
          {
            *(v10 + 280) = Int64Ranged;
          }

          SockAddrSetPort();
          v15 = CFDictionaryGetValue(a3, @"MACAddress");
          if (v15)
          {
            v16 = *(v10 + 272);
            *(v10 + 272) = v15;
            CFRetain(v15);
            if (v16)
            {
              CFRelease(v16);
            }
          }

          goto LABEL_33;
        }
      }

      udpconnection_SetProperty_cold_2(buffer);
    }

    else
    {
      if (CFEqual(a2, @"RemoteNetworkIPAddress"))
      {
        if (a3)
        {
          v14 = CFGetTypeID(a3);
          if (v14 == APSNetworkAddressGetTypeID())
          {
            APSNetworkAddressGetSocketAddr();
            *(v7 + 15) = *buffer;
            *(v7 + 252) = *&buffer[3];
            SockAddrSetPort();
            v7[268] = APSNetworkAddressIsIPv6() == 0;
            goto LABEL_25;
          }
        }

        udpconnection_SetProperty_cold_3(buffer);
        goto LABEL_63;
      }

      if (!CFEqual(a2, @"RemoteNetworkMACAddress"))
      {
        if (CFEqual(a2, @"RemoteNetworkPort"))
        {
          *(v7 + 70) = CFGetInt64();
          SockAddrSetPort();
          goto LABEL_25;
        }

        if (CFEqual(a2, @"BoundInterfaceIndex"))
        {
          *(v7 + 71) = CFGetInt64();
        }

        else
        {
          if (CFEqual(a2, @"LocalInterfaceName"))
          {
            if (a3)
            {
              v21 = CFGetTypeID(a3);
              if (v21 == CFStringGetTypeID())
              {
                *(v7 + 27) = CFRetain(a3);
                goto LABEL_25;
              }
            }

            udpconnection_SetProperty_cold_8(buffer);
            goto LABEL_63;
          }

          if (!CFEqual(a2, @"ClientUPID"))
          {
            v13 = 4294954512;
            goto LABEL_49;
          }

          *(v7 + 36) = CFGetInt64();
        }

LABEL_33:
        v13 = 0;
        goto LABEL_34;
      }

      if (a3 && (v18 = CFGetTypeID(a3), v18 == CFDataGetTypeID()))
      {
        v19 = *(v7 + 34);
        if (v19)
        {
          CFRelease(v19);
        }

        Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], a3);
        *(v7 + 34) = Copy;
        if (CFDataGetLength(Copy) == 6)
        {
          goto LABEL_25;
        }

        udpconnection_SetProperty_cold_4(buffer);
      }

      else
      {
        udpconnection_SetProperty_cold_5(buffer);
      }
    }

LABEL_63:
    v13 = buffer[0];
    if (!buffer[0])
    {
      goto LABEL_34;
    }

    goto LABEL_49;
  }

  if (@"RTCP" != a3 && (!a3 || !@"RTCP" || !CFEqual(a3, @"RTCP")))
  {
    if (@"RTP" == a3 || a3 && @"RTP" && CFEqual(a3, @"RTP") || @"Screen" == a3 || a3 && @"Screen" && CFEqual(a3, @"Screen"))
    {
      *(v7 + 19) = APTransportPackageRTPCreateWithBBuf;
      *(v7 + 20) = APTransportPackageRTPCreate;
      v8 = APTransportPackageRTPCreateWithMessageSize;
      goto LABEL_24;
    }

    if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_setPropertyInternal(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554522, "[%{ptr}] Unhandled package type %'@.", a1, a3);
    }

    v13 = 4294954516;
LABEL_49:
    APSLogErrorAt();
    goto LABEL_34;
  }

  *(v7 + 19) = APTransportPackageRTCPCreateWithBBuf;
  *(v7 + 20) = APTransportPackageRTCPCreate;
  v8 = APTransportPackageRTCPCreateWithMessageSize;
LABEL_24:
  *(v7 + 21) = v8;
LABEL_25:
  v13 = 0;
LABEL_34:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t udpconnection_SetProperty_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);

  return MEMORY[0x2821127C0](v6, udpconnection_setPropertyInternal, a1, a2, a3);
}

uint64_t CMBaseObjectCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t CMBaseObjectSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t stream_createConnectionState(const void *a1, NSObject *a2, NSObject *a3, int a4, dispatch_object_t **a5)
{
  v18 = 0;
  if (a5 && a1 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E00401F955E56uLL);
    v18 = v11;
    if (v11 && (v12 = v11, v13 = dispatch_semaphore_create(0), (*v12 = v13) != 0))
    {
      *(v12 + 4) = 0;
      v12[3] = CFRetain(a1);
      v12[4] = a2;
      *(v12 + 24) = a4;
      v15 = *(DerivedStorage + 88);
      v12[11] = v15;
      if (v15)
      {
        CFRetain(v15);
      }

      v12[10] = a3;
      if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportStream)))
      {
        OUTLINED_FUNCTION_9(&gLogCategory_APTransportStream, "OSStatus stream_createConnectionState(APTransportConnectionRef, APTransportConnectionEventCallback, FigTransportStreamRef, APTransportStreamDirection, APTransportStreamConnectionStateRef *)", v14, "[%{ptr}] APTransportStream with name %@ holds %s connection [%{ptr}].\n");
      }

      v16 = 0;
      *a5 = v12;
      v18 = 0;
    }

    else
    {
      APSLogErrorAt();
      v16 = 4294950685;
    }
  }

  else
  {
    APSLogErrorAt();
    v16 = 4294950686;
  }

  stream_forgetConnectionState(&v18);
  return v16;
}

void stream_forgetConnectionState(dispatch_object_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      stream_invalidateConnectionState(*a1);
      if (*v2)
      {
        dispatch_release(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t stream_Resume(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __stream_Resume_block_invoke;
  v5[3] = &unk_278BC7E08;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t stream_Resume_0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __stream_Resume_block_invoke_0;
  v5[3] = &unk_278BC9DE0;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t stream_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __stream_SetProperty_block_invoke;
  v9[3] = &unk_278BC7DE0;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t APTransportConnectionSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  APTransportConnectionGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t udpconnection_AddEventCallback(const void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        dispatch_retain(a4);
        if (a1)
        {
          CFRetain(a1);
        }

        APSDispatchAsyncFHelper();
        return 0;
      }

      else
      {
        v8 = 4294894974;
        udpconnection_AddEventCallback_cold_1();
      }
    }

    else
    {
      v8 = 4294894974;
      udpconnection_AddEventCallback_cold_2();
    }
  }

  else
  {
    v8 = 4294894974;
    udpconnection_AddEventCallback_cold_3();
  }

  return v8;
}

uint64_t udpconnection_AddEventCallback_0(const void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        dispatch_retain(a4);
        if (a1)
        {
          CFRetain(a1);
        }

        APSDispatchAsyncFHelper();
        return 0;
      }

      else
      {
        v8 = 4294894974;
        udpconnection_AddEventCallback_cold_1_0();
      }
    }

    else
    {
      v8 = 4294894974;
      udpconnection_AddEventCallback_cold_2_0();
    }
  }

  else
  {
    v8 = 4294894974;
    udpconnection_AddEventCallback_cold_3_0();
  }

  return v8;
}

uint64_t udpconnection_Resume(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  valuePtr = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    udpconnection_Resume_cold_1(a1);
  }

  if (!*(DerivedStorage + 152))
  {
    udpconnection_Resume_cold_18(&valuePtr);
    goto LABEL_24;
  }

  if (!*(DerivedStorage + 160))
  {
    udpconnection_Resume_cold_17(&valuePtr);
    goto LABEL_24;
  }

  if (*(DerivedStorage + 192) == 3)
  {
    v5 = *(DerivedStorage + 72);
    if (!v5)
    {
      udpconnection_Resume_cold_16(&valuePtr);
      goto LABEL_24;
    }

    __swp(v5 + 16, (v5 + 16));
    if (((v5 + 16) & 1) == 0)
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        udpconnection_Resume_cold_2();
      }

      v6 = *(v5 + 40);
      v7 = CFRetain(v5);
      dispatch_async_f(v6, v7, udpconnectionInlineInactivityMonitor_fire);
    }

    valuePtr = 0;
  }

  if (!*(DerivedStorage + 176))
  {
    if (!*(DerivedStorage + 241) || !*(DerivedStorage + 280))
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        udpconnection_Resume_cold_15(a1, v2, v3);
      }

      valuePtr = -72320;
      goto LABEL_24;
    }

    v24 = udpconnection_setupNWConnection(a1, 0);
    valuePtr = v24;
    if (v24)
    {
      udpconnection_Resume_cold_14(v24);
      goto LABEL_24;
    }

LABEL_76:
    udpconnection_callEventCallback(a1, 0, 0);
    goto LABEL_77;
  }

  if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    udpconnection_Resume_cold_3(a1);
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x2000000000;
  v33 = 0;
  v10 = dispatch_semaphore_create(0);
  if (v10)
  {
    v11 = v10;
    v12 = udpconnection_createUDPParameters(a1, *(v9 + 216), &v36);
    if (v12)
    {
      v23 = v12;
      udpconnection_Resume_cold_4(v12);
      v15 = 0;
    }

    else
    {
      v13 = nw_listener_create(v36);
      *(v9 + 304) = v13;
      if (v13)
      {
        v14 = v13;
        v15 = FigDispatchQueueCreateWithPriority();
        if (v15)
        {
          nw_listener_set_queue(*(v9 + 304), v15);
          v16 = *(v9 + 304);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 0x40000000;
          handler[2] = __udpconnection_setupListenerNW_block_invoke;
          handler[3] = &__block_descriptor_tmp_125;
          handler[4] = v9;
          handler[5] = a1;
          nw_listener_set_new_connection_handler(v16, handler);
          dispatch_retain(v11);
          v17 = *(v9 + 304);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 0x40000000;
          v29[2] = __udpconnection_setupListenerNW_block_invoke_2;
          v29[3] = &unk_278BC7800;
          v29[4] = &v31;
          v29[5] = v11;
          v29[6] = v14;
          v29[7] = v15;
          MEMORY[0x23EEDE8D0](v17, v29);
          if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
          {
            udpconnection_Resume_cold_5((v9 + 304));
          }

          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 0x40000000;
          v28[2] = __udpconnection_setupListenerNW_block_invoke_3;
          v28[3] = &__block_descriptor_tmp_134;
          v28[4] = v9;
          udpconnection_runLockedInlineIfNecessary(a1, v28);
          v18 = dispatch_time(0, 10000000000);
          if (!dispatch_semaphore_wait(v11, v18))
          {
            if (*(v32[0] + 24))
            {
              APSLogErrorAt();
              if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
              {
                udpconnection_Resume_cold_7(v32, a1, v25);
              }

              v15 = 0;
            }

            else
            {
              v19 = CMBaseObjectGetDerivedStorage();
              v37 = MEMORY[0x277D85DD0];
              v38 = 0x40000000;
              v39 = __udpconnection_setLocalNetworkInfo_block_invoke;
              v40 = &__block_descriptor_tmp_140;
              v41 = v19;
              udpconnection_runLockedInlineIfNecessary(a1, &v37);
              v20 = nw_parameters_copy_local_endpoint(v36);
              v15 = v20;
              if (v20)
              {
                nw_endpoint_get_address(v20);
                SockAddrCopy();
                nw_listener_get_port(v14);
                SockAddrSetPort();
                if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_setupListenerNW(APTransportConnectionRef)", 33554482, "[%{ptr}] Listening on %##a", a1, v34);
                }
              }

              if (!*(v9 + 400))
              {
                if (*(v9 + 288) || (v21 = udpconnection_setupNWConnection(a1, 0), !v21))
                {
                  v22 = *(v9 + 216);
                  if (v22 && CFStringHasPrefix(v22, @"llw") && *(v9 + 192) == 3)
                  {
                    if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
                    {
                      udpconnection_Resume_cold_9(a1);
                    }

                    v37 = MEMORY[0x277D85DD0];
                    v38 = 0x40000000;
                    v39 = __udpconnection_setupListenerNW_block_invoke_4;
                    v40 = &__block_descriptor_tmp_139;
                    v41 = v9;
                    udpconnection_runLockedInlineIfNecessary(a1, &v37);
                    v23 = 0;
                    *(v9 + 304) = 0;
                    goto LABEL_74;
                  }

                  goto LABEL_73;
                }

                udpconnection_Resume_cold_8(v21, a1, v15, &v37, v42);
                goto LABEL_67;
              }
            }

LABEL_73:
            v23 = 0;
            goto LABEL_74;
          }

          udpconnection_Resume_cold_6(a1, &v37, v42);
LABEL_67:
          v15 = v37;
          v23 = v42[0];
          goto LABEL_74;
        }

        udpconnection_Resume_cold_10(v29);
      }

      else
      {
        udpconnection_Resume_cold_11(v29);
        v15 = 0;
      }

      v23 = LODWORD(v29[0]);
    }

LABEL_74:
    dispatch_release(v11);
    goto LABEL_75;
  }

  udpconnection_Resume_cold_12(v29);
  v15 = 0;
  v23 = LODWORD(v29[0]);
LABEL_75:
  nw_release(v15);
  nw_release(v36);
  _Block_object_dispose(&v31, 8);
  valuePtr = v23;
  if (!v23)
  {
    goto LABEL_76;
  }

  udpconnection_Resume_cold_13(v23);
LABEL_24:
  *(DerivedStorage + 144) = 4;
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  udpconnection_callEventCallback(a1, 4u, v8);
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_77:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t udpconnection_Resume_0(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, udpconnection_resumeInternal);
  return 0;
}

void stream_postCachedConnectionEvent(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_5_2();
      CFRetain(v6);
      OUTLINED_FUNCTION_1_2();
      v9 = 0x40000000;
      v10 = __stream_postCachedConnectionEvent_block_invoke_0;
      v11 = &__block_descriptor_tmp_157;
      v14 = v5;
      v12 = v4;
      v13 = a1;
      dispatch_async(v7, block);
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

uint64_t udpconnection_setPropertyInternal(uint64_t a1, const void *a2, __CFString *a3)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_setPropertyInternal_cold_1(&v17);
    return v17;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"PackageType"))
  {
    if (@"RTCP" == a3 || a3 && @"RTCP" && CFEqual(a3, @"RTCP"))
    {
      *(v7 + 8) = APTransportPackageRTCPCreateWithBBuf;
      *(v7 + 9) = APTransportPackageRTCPCreate;
      v8 = APTransportPackageRTCPCreateWithMessageSize;
LABEL_17:
      *(v7 + 10) = v8;
      return v17;
    }

    if (@"RTP" == a3 || a3 && @"RTP" && CFEqual(a3, @"RTP"))
    {
      *(v7 + 8) = APTransportPackageRTPCreateWithBBuf;
      *(v7 + 9) = APTransportPackageRTPCreate;
      v8 = APTransportPackageRTPCreateWithMessageSize;
      goto LABEL_17;
    }

    if (@"LowPowerKeepAlive" == a3 || a3 && @"LowPowerKeepAlive" && CFEqual(a3, @"LowPowerKeepAlive"))
    {
      *(v7 + 8) = APTPackageLowPowerKeepAliveCreateWithBBuf;
      *(v7 + 9) = APTPackageLowPowerKeepAliveCreate;
      *(v7 + 10) = 0;
      return v17;
    }

    if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionUDP, "OSStatus udpconnection_setPropertyInternal(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554522, "[%{ptr}] Unhandled package type %'@.", a1, a3);
    }

    return -12780;
  }

  if (CFEqual(a2, @"LowPowerOffloadBBuf"))
  {
    if (a3 && (v12 = CFGetTypeID(a3), v12 == CMBlockBufferGetTypeID()))
    {
      if (CMBlockBufferGetDataLength(a3) >= 0x21)
      {
        udpconnection_setPropertyInternal_cold_3();
      }

      else
      {
        v13 = *(v7 + 12);
        *(v7 + 12) = a3;
        CFRetain(a3);
        if (v13)
        {
          CFRelease(v13);
        }

        v14 = udpconnection_setupKeepAliveOffload(a1);
        v17 = v14;
        if (v14)
        {
          udpconnection_setPropertyInternal_cold_2(v14);
        }
      }
    }

    else
    {
      udpconnection_setPropertyInternal_cold_4();
    }
  }

  else if (CFEqual(a2, @"LowPowerOffloadInterval"))
  {
    *(v7 + 26) = CFGetInt64();
    if (v17)
    {
      udpconnection_setPropertyInternal_cold_5(v17);
    }
  }

  else if (CFEqual(a2, @"RemoteNetworkIPAddress"))
  {
    if (a3 && (v10 = CFGetTypeID(a3), v10 == APSNetworkAddressGetTypeID()))
    {
      APSNetworkAddressGetSocketAddr();
      *(v7 + 12) = *v16;
      *(v7 + 204) = *&v16[12];
      SockAddrSetPort();
    }

    else
    {
      udpconnection_setPropertyInternal_cold_6();
    }
  }

  else if (CFEqual(a2, @"RemoteNetworkPort"))
  {
    *(v7 + 55) = CFGetInt64();
    if (v17)
    {
      udpconnection_setPropertyInternal_cold_7(v17);
    }

    else
    {
      v11 = v7 + 192;
      SockAddrSetPort();
      if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionUDP, "OSStatus udpconnection_setPropertyInternal(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Remote port set: %##a", a1, v11);
      }
    }
  }

  else
  {
    if (!CFEqual(a2, @"BoundInterfaceIndex"))
    {
      return -12784;
    }

    if (*(v7 + 58) == -1)
    {
      *(v7 + 56) = CFGetInt64();
      if (v17)
      {
        udpconnection_setPropertyInternal_cold_9(v17);
      }
    }

    else
    {
      udpconnection_setPropertyInternal_cold_8(&v17, a1);
    }
  }

  return v17;
}

uint64_t stream_waitUntilConnectedInternal(uint64_t a1, CFTypeRef *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = stream_waitUntilConnectionSetup(a1, 0);
  *(v18 + 6) = v5;
  if (v5)
  {
    APSLogErrorAt();
  }

  else if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v13[3] = Mutable;
    if (Mutable)
    {
      v7 = *(DerivedStorage + 64);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 0x40000000;
      v11[2] = __stream_waitUntilConnectedInternal_block_invoke;
      v11[3] = &unk_278BC9E28;
      v11[4] = &v17;
      v11[5] = v16;
      v11[6] = &v12;
      v11[7] = DerivedStorage;
      dispatch_sync(v7, v11);
      if (!*(v18 + 6))
      {
        *a2 = CFRetain(v13[3]);
      }
    }

    else
    {
      APSLogErrorAt();
      *(v18 + 6) = -16611;
    }
  }

  v8 = v13[3];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v18 + 6);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
  return v9;
}

uint64_t stream_waitUntilConnectionSetup(uint64_t a1, int a2)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2000000000;
  v35[3] = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  OUTLINED_FUNCTION_2_19();
  v22 = 0x40000000;
  v23 = __stream_waitUntilConnectionSetup_block_invoke;
  v24 = &unk_278BC9FD0;
  v30 = a2;
  v25 = &v36;
  v26 = v35;
  v27 = v5;
  v28 = DerivedStorage;
  v29 = a1;
  dispatch_sync(v6, block);
  v7 = v32[3];
  if (v7)
  {
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    OUTLINED_FUNCTION_1_2();
    v13 = 0x40000000;
    v14 = __stream_waitUntilConnectionSetup_block_invoke_2;
    v15 = &unk_278BC9FF8;
    v20 = a2;
    v16 = &v36;
    v17 = v35;
    v18 = DerivedStorage;
    v19 = a1;
    dispatch_sync(v8, v12);
    v9 = v32[3];
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  v10 = *(v37 + 6);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v36, 8);
  return v10;
}

void __stream_waitUntilConnectionSetup_block_invoke(void *a1)
{
  v2 = a1[7];
  if (*(v2 + 72))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_11();
  }

  else
  {
    stream_getConnectionState(v2, *(a1 + 18), (*(a1[5] + 8) + 24));
    v3 = *(*(a1[5] + 8) + 24);
    if (*(v3 + 9))
    {
      if (!*(v3 + 8))
      {
        *(*(a1[6] + 8) + 24) = *v3;
        dispatch_retain(*(*(a1[6] + 8) + 24));
        if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportStream)))
        {
          OUTLINED_FUNCTION_9(&gLogCategory_APTransportStream, "OSStatus stream_waitUntilConnectionSetup(FigTransportStreamRef, APTransportStreamConnectionType)_block_invoke", v4, "[%{ptr}] Waiting for connection [%{ptr}].");
        }
      }
    }

    else
    {
      APSLogErrorAt();
      APSSignalErrorAt();
      OUTLINED_FUNCTION_8_1();
      *(v6 + 24) = v5;
    }
  }
}

uint64_t stream_getConnectionState(uint64_t result, int a2, void *a3)
{
  if (!a3)
  {
    return stream_getConnectionState_cold_2();
  }

  if (!result)
  {
    return stream_getConnectionState_cold_1();
  }

  v3 = *(result + 24);
  if (a2 != 1)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = *(result + 56);
    goto LABEL_8;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(result + 48);
LABEL_8:
  *a3 = v4;
  return result;
}

void udpconnection_resumeInternal(const void *a1)
{
  valuePtr[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
  {
    udpconnection_resumeInternal_cold_1(a1);
  }

  if (*(DerivedStorage + 64))
  {
    if (*(DerivedStorage + 72))
    {
      if (!*(DerivedStorage + 88))
      {
        if (!*(DerivedStorage + 193) || !*(DerivedStorage + 220))
        {
          if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportConnectionUDP, "void udpconnection_resumeInternal(void *)", 33554522, "[%{ptr}] Failed to resume: Don't know how to open a network connection to IP: %##a, port: %d", a1, DerivedStorage + 192, *(DerivedStorage + 220));
          }

          valuePtr[0] = -72320;
          goto LABEL_15;
        }

        v5 = CMBaseObjectGetDerivedStorage();
        *&v25.sa_len = 0;
        *&v25.sa_data[6] = 0;
        v27 = 0;
        v26 = 0;
        v24 = 0;
        v6 = socket(*(v5 + 193), 2, 17);
        if (v6 < 0)
        {
          if (!*__error())
          {
            v7 = -6700;
LABEL_22:
            APSLogErrorAt();
LABEL_53:
            valuePtr[0] = v7;
            APSLogErrorAt();
            goto LABEL_15;
          }

          v7 = *__error();
          if (v7)
          {
            goto LABEL_22;
          }
        }

        SocketSetNonBlocking();
        if (*(v5 + 224))
        {
          v11 = *(v5 + 193);
          if (v11 == 2)
          {
            v12 = v6;
            v13 = 0;
            v14 = 25;
          }

          else
          {
            if (v11 != 30)
            {
              goto LABEL_35;
            }

            v12 = v6;
            v13 = 41;
            v14 = 125;
          }

          v15 = setsockopt(v12, v13, v14, (v5 + 224), 4u);
          v7 = v15;
          if (v15)
          {
            udpconnection_resumeInternal_cold_10(v15);
            goto LABEL_49;
          }
        }

LABEL_35:
        v16 = *(v5 + 108);
        if ((v16 & 0x1B) != 0)
        {
          SocketSetP2P();
          v16 = *(v5 + 108);
        }

        if ((v16 & 0x20) != 0)
        {
          if (gLogCategory_APTransportConnectionUDP <= 30 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
          {
            udpconnection_resumeInternal_cold_11(a1, v9, v10);
          }

          *&handle.byte0 = 4;
          setsockopt(v6, 0xFFFF, 4225, &handle, 4u);
        }

        SocketSetQoS();
        v17 = *(v5 + 120);
        if (v17)
        {
          handle = CFUUIDGetUUIDBytes(v17);
          setsockopt(v6, 0xFFFF, 4360, &handle, 0x10u);
        }

        Size = SockAddrGetSize();
        if (connect(v6, (v5 + 192), Size))
        {
          if (!*__error())
          {
            v19 = 4294960596;
LABEL_48:
            udpconnection_resumeInternal_cold_12(a1, v19, &handle);
            v7 = *&handle.byte0;
LABEL_49:
            if ((v6 & 0x80000000) == 0 && close(v6) && *__error())
            {
              __error();
            }

            goto LABEL_53;
          }

          v19 = *__error();
          if (v19)
          {
            goto LABEL_48;
          }
        }

        v24 = 28;
        v20 = getsockname(v6, &v25, &v24);
        if (v20)
        {
          v7 = v20;
          udpconnection_resumeInternal_cold_13(v20);
          goto LABEL_49;
        }

        if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportConnectionUDP, "OSStatus udpconnection_setupConnectorSocket(APTransportConnectionRef, int)", 33554482, "[%{ptr}] connected to %##a (from %##a)%?s%?lu\n", a1, v5 + 192, &v25, *(v5 + 224) != 0, " on bound interface index: ", *(v5 + 224) != 0, *(v5 + 224));
        }

        *(v5 + 232) = v6;
        v21 = udpconnection_setupKeepAliveOffload(a1);
        valuePtr[0] = v21;
        if (v21)
        {
          udpconnection_resumeInternal_cold_14(v21);
          goto LABEL_15;
        }

LABEL_24:
        *(DerivedStorage + 56) = 5;
        APTTrafficMetricsConnectionFormed(*(DerivedStorage + 264));
        udpconnection_callEventCallback_0(a1, 5u, 0);
        goto LABEL_25;
      }

      CMBaseObjectGetDerivedStorage();
      valuePtr[1] = 0;
      *&handle.byte0 = -1;
      v24 = -1;
      v4 = ServerSocketPairOpen();
      if (v4)
      {
        v8 = v4;
        udpconnection_resumeInternal_cold_2(v4);
      }

      else
      {
        v8 = 0;
      }

      free(0);
      free(0);
      valuePtr[0] = v8;
      if (!v8)
      {
        goto LABEL_24;
      }

      udpconnection_resumeInternal_cold_9(v8);
    }

    else
    {
      udpconnection_resumeInternal_cold_15(valuePtr);
    }
  }

  else
  {
    udpconnection_resumeInternal_cold_16(valuePtr);
  }

LABEL_15:
  *(DerivedStorage + 56) = 4;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
  udpconnection_callEventCallback_0(a1, 4u, v3);
  if (v3)
  {
    CFRelease(v3);
  }

LABEL_25:
  if (a1)
  {
    CFRelease(a1);
  }
}

void udpconnection_addEventCallbackInternal(const void **a1)
{
  udpconnection_setEventCallback(a1);
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *a1;
  if (*a1)
  {

    CFRelease(v3);
  }
}

void udpconnection_addEventCallbackInternal_0(const void **a1)
{
  udpconnection_setEventCallback_0(a1);
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *a1;
  if (*a1)
  {

    CFRelease(v3);
  }
}

uint64_t udpconnection_setEventCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 120) = *(a1 + 8);
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 136) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(DerivedStorage + 136) = v4;
    dispatch_retain(v4);
  }

  return 0;
}

uint64_t udpconnection_setEventCallback_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 32) = *(a1 + 8);
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 48) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(DerivedStorage + 48) = v4;
    dispatch_retain(v4);
  }

  return 0;
}

uint64_t udpconnection_setupKeepAliveOffload(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 96);
  if (!v2 || (*(DerivedStorage + 232) & 0x80000000) != 0)
  {
    return 0;
  }

  if (*(DerivedStorage + 104) <= 0)
  {
    v6 = 4294894974;
    OUTLINED_FUNCTION_17();
    APSLogErrorAt();
    APSSignalErrorAt();
    return v6;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  DataLength = CMBlockBufferGetDataLength(v2);
  v4 = DataLength;
  v5 = CMBlockBufferCopyDataBytes(*(DerivedStorage + 96), 0, DataLength, v9);
  if (v5)
  {
    v6 = v5;
    goto LABEL_12;
  }

  BYTE2(v10) = v4;
  LOWORD(v10) = *(DerivedStorage + 104);
  HIBYTE(v10) = 1;
  if (!setsockopt(*(DerivedStorage + 232), 17, 2, v9, 0x24u))
  {
    goto LABEL_8;
  }

  if (!*__error())
  {
    v6 = 4294960596;
    goto LABEL_12;
  }

  v6 = *__error();
  if (v6)
  {
LABEL_12:
    APSLogErrorAt();
    return v6;
  }

LABEL_8:
  v7 = *(DerivedStorage + 96);
  if (!v7)
  {
    return 0;
  }

  CFRelease(v7);
  v6 = 0;
  *(DerivedStorage + 96) = 0;
  return v6;
}

uint64_t APTTrafficMetricsConnectionFormed(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_2_20(0x744u, v1);
    OUTLINED_FUNCTION_1_28();
    LODWORD(v10) = 1;
    v2 = mach_absolute_time();
    OUTLINED_FUNCTION_0_10(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t udpconnection_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    udpconnection_copyPropertyInternal_cold_1();
    return 4294954511;
  }

  if (!CFEqual(a2, @"LocalNetworkPort"))
  {
    return 4294954512;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_copyPropertyInternal_cold_2();
    v9 = 4294954511;
    goto LABEL_8;
  }

  if (!*(DerivedStorage + 88) || !*(DerivedStorage + 240))
  {
    v9 = 4294954509;
LABEL_8:
    APSLogErrorAt();
    return v9;
  }

  v8 = CFNumberCreate(a3, kCFNumberIntType, (DerivedStorage + 240));
  v9 = 0;
  *a4 = v8;
  return v9;
}

void stream_recordConnectionEvent(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = mach_absolute_time();
  Current = CFAbsoluteTimeGetCurrent();
  if (*DerivedStorage == 1702260340)
  {
    if (a2 == 3)
    {
      v11 = 150994949;
      goto LABEL_31;
    }

    if (a2 == 5)
    {
      v11 = 150994950;
      goto LABEL_31;
    }

    if (gLogCategory_APTransportStream <= 60 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
    {
      stream_recordConnectionEvent_cold_1(a2, v8, v9);
    }
  }

  else
  {
    if (*DerivedStorage != 1668575852)
    {
      return;
    }

    if (a2 > 2)
    {
      if (a2 == 5)
      {
        if (*(CMBaseObjectGetDerivedStorage() + 144))
        {
          ConnectionAddressFromEventData = stream_createConnectionAddressFromEventData(a1, a3);
          if (ConnectionAddressFromEventData)
          {
            v13 = ConnectionAddressFromEventData;
            if (APSEventRecorderGetTimeFromDictionaryIfPresent())
            {
              APSEventRecorderRecordEventWithFlagsAtTime();
            }

            else
            {
              stream_recordConnectionEvent_cold_2(a1, v13, v14);
            }

            CFRelease(v13);
          }
        }

        v11 = 150994948;
        goto LABEL_31;
      }

      if (a2 == 3)
      {
        v11 = 150994946;
        if (*(CMBaseObjectGetDerivedStorage() + 144))
        {
          v15 = stream_createConnectionAddressFromEventData(a1, a3);
          if (v15)
          {
            v16 = v15;
            APSEventRecorderSetTimeInDictionary();
            CFRelease(v16);
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (a2 == 1)
      {
        v11 = 150994944;
        goto LABEL_31;
      }

      if (a2 == 2)
      {
        v11 = 150994945;
LABEL_31:
        stream_recordConnectionEvent_cold_3(DerivedStorage, v7, v11, Current);
        return;
      }
    }

    if (gLogCategory_APTransportStream <= 60 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
    {
      stream_recordConnectionEvent_cold_4(a2, v8, v9);
    }
  }
}

uint64_t udpconnection_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_CopyProperty_cold_1(cStr);
    goto LABEL_76;
  }

  v9 = DerivedStorage;
  if (CFEqual(a2, @"LocalNetworkPort"))
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (*v10)
    {
      udpconnection_CopyProperty_cold_2(cStr);
    }

    else
    {
      if (v10[176])
      {
        v11 = CFNumberCreate(a3, kCFNumberIntType, v10 + 224);
        *a4 = v11;
        if (!v11)
        {
          v12 = 4294894973;
          udpconnection_CopyProperty_cold_3();
LABEL_7:
          APSLogErrorAt();
LABEL_56:
          APSLogErrorAt();
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      udpconnection_CopyProperty_cold_4(cStr);
    }

    v12 = *cStr;
    if (!*cStr)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (CFEqual(a2, @"LocalNetworkInfo"))
  {
    v13 = CMBaseObjectGetDerivedStorage();
    memset(parameters, 0, sizeof(parameters));
    v49 = 0;
    v47 = 0;
    *bytes = 0;
    cStr[0] = 0;
    if (*v13)
    {
      udpconnection_CopyProperty_cold_5(&v50);
    }

    else
    {
      v14 = v13;
      Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v16 = Mutable;
        if (v14[176])
        {
          CFDictionarySetInt64();
        }

        v17 = *(v14 + 27);
        if (v17 && CFStringHasPrefix(v17, @"llw") || v14[400])
        {
          if (!CFStringGetCString(*(v14 + 27), buffer, 16, 0x8000100u))
          {
            udpconnection_CopyProperty_cold_10((v14 + 216), a1, &v50);
            goto LABEL_89;
          }

          v18 = CUGetInterfaceAddresses();
          if (v18)
          {
            udpconnection_CopyProperty_cold_6(v18, a1, buffer, &v50);
            goto LABEL_89;
          }

          v19 = *(v14 + 29);
          if (v19 && !nw_endpoint_get_address(v19))
          {
            udpconnection_CopyProperty_cold_7(&v50);
LABEL_89:
            v12 = v50;
            CFRelease(v16);
            goto LABEL_90;
          }

          SockAddrToString();
          v21 = *MEMORY[0x277CBECE8];
          v22 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
          if (!v22)
          {
            udpconnection_CopyProperty_cold_9(&v50);
            goto LABEL_89;
          }

          v23 = v22;
          CFDictionarySetValue(v16, @"IPAddress", v22);
          v24 = CFDataCreate(v21, bytes, 6);
          if (!v24)
          {
            udpconnection_CopyProperty_cold_8(v23, &v50);
            goto LABEL_89;
          }

          v25 = v24;
          CFDictionarySetValue(v16, @"MACAddress", v24);
          *a4 = v16;
          CFRelease(v23);
          CFRelease(v25);
        }

        else
        {
          *a4 = v16;
        }

LABEL_28:
        v12 = 0;
        goto LABEL_29;
      }

      udpconnection_CopyProperty_cold_11(&v50);
    }

    v12 = v50;
LABEL_90:
    if (!v12)
    {
      goto LABEL_29;
    }

    udpconnection_CopyProperty_cold_26(v12);
    goto LABEL_56;
  }

  if (CFEqual(a2, @"RemoteNetworkMACAddress"))
  {
    Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], v9[34]);
    *a4 = Copy;
    if (!Copy)
    {
      v12 = 4294894973;
      udpconnection_CopyProperty_cold_12();
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, @"NWConnectionUUID"))
  {
    v27 = CMBaseObjectGetDerivedStorage();
    *cStr = 0;
    v52 = 0;
    parameters[0] = 0;
    v54 = 0;
    *buffer = 0;
    if (*v27)
    {
      udpconnection_CopyProperty_cold_13(bytes);
    }

    else
    {
      v28 = v27;
      if (*(v27 + 176))
      {
        if (*(v27 + 240))
        {
          if (*(v27 + 288))
          {
            v29 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
            if (*(v27 + 312))
            {
              v30 = 0;
              goto LABEL_63;
            }

            UDPParameters = udpconnection_createUDPParameters(a1, *(v27 + 216), parameters);
            if (UDPParameters)
            {
              v12 = UDPParameters;
              udpconnection_CopyProperty_cold_14(UDPParameters);
              v30 = 0;
              goto LABEL_73;
            }

            nw_parameters_set_delegated_unique_pid();
            v33 = *(v28 + 216);
            if (v33 && CFStringHasPrefix(v33, @"llw"))
            {
              v34 = *(v28 + 272);
              if (!v34)
              {
                udpconnection_CopyProperty_cold_15();
                v30 = 0;
                v12 = 4294894967;
                goto LABEL_73;
              }

              v56.location = 0;
              v56.length = 6;
              CFDataGetBytes(v34, v56, buffer);
              address_with_ethernet = nw_endpoint_create_address_with_ethernet();
            }

            else
            {
              address_with_ethernet = nw_endpoint_create_address((v28 + 240));
            }

            v30 = address_with_ethernet;
            if (address_with_ethernet)
            {
              nw_parameters_set_reuse_local_address(parameters[0], 1);
              nw_parameters_set_include_peer_to_peer(parameters[0], 1);
              nw_parameters_set_local_endpoint(parameters[0], *(v28 + 232));
              v36 = nw_endpoint_copy_address_string(*(v28 + 232));
              v37 = nw_endpoint_copy_address_string(v30);
              if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
              {
                port = nw_endpoint_get_port(*(v28 + 232));
                v39 = nw_endpoint_get_port(v30);
                v45 = port;
                v29 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
                LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_copyNWPathUUID(APTransportConnectionRef, CFAllocatorRef, CFDataRef *)", 33554462, "nw_path_evaluator %s:%d -> %s:%d (udp) upid: %llu\n", v36, v45, v37, v39, *(v28 + 288));
              }

              if (v36)
              {
                free(v36);
              }

              if (v37)
              {
                free(v37);
              }

              evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
              *(v28 + 312) = evaluator_for_endpoint;
              if (evaluator_for_endpoint)
              {
LABEL_63:
                if (nw_path_evaluator_get_client_id())
                {
                  v42 = CFDataCreate(a3, cStr, 16);
                  if (v42)
                  {
                    *a4 = v42;
                    v43 = v29[214];
                    if (v43 <= 50 && (v43 != -1 || _LogCategory_Initialize()))
                    {
                      if (*(v28 + 176))
                      {
                        v44 = "src";
                      }

                      else
                      {
                        v44 = "dst";
                      }

                      LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_copyNWPathUUID(APTransportConnectionRef, CFAllocatorRef, CFDataRef *)", 33554482, "[%{ptr}] Connection UUID copied for PID %llu, remote %s address: %##a", a1, *(v28 + 288), v44, v28 + 240);
                    }

                    v12 = 0;
                    goto LABEL_73;
                  }

                  udpconnection_CopyProperty_cold_17(bytes);
                }

                else
                {
                  udpconnection_CopyProperty_cold_16(bytes);
                }

                goto LABEL_97;
              }

              udpconnection_CopyProperty_cold_18(bytes);
            }

            else
            {
              udpconnection_CopyProperty_cold_19(bytes);
            }

LABEL_97:
            v12 = *bytes;
LABEL_73:
            nw_release(v30);
            nw_release(parameters[0]);
            if (!v12)
            {
              goto LABEL_29;
            }

            udpconnection_CopyProperty_cold_23(v12);
            goto LABEL_56;
          }

          udpconnection_CopyProperty_cold_20(bytes);
        }

        else
        {
          udpconnection_CopyProperty_cold_21(bytes);
        }
      }

      else
      {
        udpconnection_CopyProperty_cold_22(bytes);
      }
    }

    v30 = 0;
    goto LABEL_97;
  }

  if (!CFEqual(a2, @"LocalInterfaceName"))
  {
    if (!CFEqual(a2, @"PrimaryPacketDropCount"))
    {
      v12 = 4294954512;
      goto LABEL_56;
    }

    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (!Int64)
    {
      v12 = 4294894973;
      udpconnection_CopyProperty_cold_25();
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  if (*(v9 + 36) != 5)
  {
    udpconnection_CopyProperty_cold_24(cStr);
LABEL_76:
    v12 = *cStr;
    if (!*cStr)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

  v31 = v9[27];
  if (v31)
  {
    v31 = CFRetain(v31);
  }

  v12 = 0;
  *a4 = v31;
LABEL_29:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t udpconnection_CopyProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();

  return FigDispatchSyncCopyPropertyImplementation();
}

void __stream_waitUntilConnectionSetup_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 72))
  {
    __stream_waitUntilConnectionSetup_block_invoke_2_cold_1();
  }

  else
  {
    stream_getConnectionState(v2, *(a1 + 64), (*(*(a1 + 40) + 8) + 24));
    v4 = *(*(*(a1 + 40) + 8) + 24);
    if (!*(v4 + 8))
    {
      *(v4 + 9) = 0;
      v5 = *(*(*(*(a1 + 40) + 8) + 24) + 12);
      if (v5 == -71882)
      {
        v6 = -71891;
      }

      else
      {
        v6 = *(*(*(*(a1 + 40) + 8) + 24) + 12);
      }

      if (v5 == -71880)
      {
        v7 = -71890;
      }

      else
      {
        v7 = v6;
      }

      *(*(*(a1 + 32) + 8) + 24) = v7;
      *(*(*(*(a1 + 40) + 8) + 24) + 12) = 0;
    }

    if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
    {
      __stream_waitUntilConnectionSetup_block_invoke_2_cold_2(a1, a1 + 40, v3);
    }
  }
}

void __stream_eventReceived_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  if (v3)
  {
    v3(*(a1 + 40), 1651470958, 0, *(v2 + 112));
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

void __stream_eventReceived_block_invoke_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  if (v3)
  {
    v3(*(a1 + 40), 1651470958, 0, *(v2 + 192));
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

uint64_t stream_acquireMessageBBufInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dataPointerOut = 0;
  v20 = 0;
  if (*(DerivedStorage + 72))
  {
    stream_acquireMessageBBufInternal_cold_1(&v21);
    v5 = 0;
    v12 = 0;
    v13 = v21;
    goto LABEL_10;
  }

  v3 = DerivedStorage;
  v4 = 56;
  if (!*(DerivedStorage + 24))
  {
    v4 = 48;
  }

  v5 = *(DerivedStorage + v4);
  v6 = *(v5 + 24);
  v7 = *(a1 + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v8)
  {
    v13 = 4294954514;
LABEL_9:
    APSLogErrorAt();
    v12 = 0;
    goto LABEL_10;
  }

  v9 = v8(v6, v7, &v20);
  if (v9)
  {
    v13 = v9;
    goto LABEL_9;
  }

  v10 = v20;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v11)
  {
    v12 = v11(v10);
  }

  else
  {
    v12 = 0;
  }

  CFSetAddValue(*(v3 + 104), v12);
  DataPointer = CMBlockBufferGetDataPointer(v12, 0, 0, 0, &dataPointerOut);
  v13 = DataPointer;
  if (!DataPointer)
  {
    CFDictionarySetValue(*(v3 + 112), dataPointerOut, v20);
    **(a1 + 16) = v12;
    v20 = 0;
    goto LABEL_16;
  }

  stream_acquireMessageBBufInternal_cold_2(DataPointer);
LABEL_10:
  v14 = v20;
  if (v20)
  {
    v15 = *(v5 + 24);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v16)
    {
      v16(v15, v14);
    }
  }

LABEL_16:
  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t udpconnection_AcquirePackageWithMessageSize(const void *a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v7 = *(DerivedStorage + 168);
    if (v7)
    {
      v8 = CFGetAllocator(a1);
      v9 = v7(v8, a2, a3);
      if (!v9)
      {
        if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_acquirePackageWithMessageSizeInternal(APTransportConnectionRef, size_t, APTransportPackageRef *)", 33554462, "[%{ptr}] APTransportConnectionUDPNW created UDP package %{ptr} with size %d.\n", a1, *a3, a2);
        }

        goto LABEL_8;
      }

      v10 = v9;
      udpconnection_AcquirePackageWithMessageSize_cold_2(v9);
    }

    else
    {
      udpconnection_AcquirePackageWithMessageSize_cold_3();
      v10 = 4294894969;
    }

LABEL_14:
    APSLogErrorAt();
    goto LABEL_9;
  }

  if (!udpconnection_AcquirePackageWithMessageSize_cold_1())
  {
    v10 = v12;
    goto LABEL_14;
  }

LABEL_8:
  v10 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t udpconnection_acquirePackageWithMessageSizeInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_acquirePackageWithMessageSizeInternal_cold_1();
    return 4294954511;
  }

  else
  {
    v3 = *(DerivedStorage + 80);
    if (v3)
    {
      v4 = CFGetAllocator(*a1);
      v5 = v3(v4, a1[1], a1[2]);
      if (v5)
      {
        v6 = v5;
        udpconnection_acquirePackageWithMessageSizeInternal_cold_2(v5);
      }

      else
      {
        if (gLogCategory_APTransportConnectionUDP <= 30 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
        {
          udpconnection_acquirePackageWithMessageSizeInternal_cold_3(a1, (a1 + 2), (a1 + 1));
        }

        return 0;
      }
    }

    else
    {
      udpconnection_acquirePackageWithMessageSizeInternal_cold_4();
      return 4294894969;
    }
  }

  return v6;
}

uint64_t rtppackage_createWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  cf = 0;
  APTransportPackageGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v9 = v5;
    rtppackage_createWithMessageSize_cold_1(v5);
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = 1450;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[1] = 0;
    v8 = APTransportParcelMake(2uLL, v6, DerivedStorage);
    if (!v8)
    {
      if (gLogCategory_APTransportPackageRTP <= 30 && (gLogCategory_APTransportPackageRTP != -1 || _LogCategory_Initialize()))
      {
        rtppackage_createWithMessageSize_cold_3(&cf);
      }

      v9 = 0;
      *a3 = cf;
      return v9;
    }

    v9 = v8;
    rtppackage_createWithMessageSize_cold_2(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t APTransportPackageRTPCreateWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  v3 = rtppackage_createWithMessageSize(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    APTransportPackageRTPCreateWithMessageSize_cold_1(v3);
  }

  return v4;
}

uint64_t stream_acquireMessageBBufInternal_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t udpconnection_resumeInternal_cold_4()
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_9_6();
  return OUTLINED_FUNCTION_11_5(&gLogCategory_APTransportConnectionUDP, "OSStatus udpconnection_setupListenerSocket(APTransportConnectionRef, int, int)", v0, "[%{ptr}] Setup V6 listener %?s%?##a on port %u %?s%?lu\n");
}

uint64_t udpconnection_resumeInternal_cold_3()
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_9_6();
  return OUTLINED_FUNCTION_11_5(&gLogCategory_APTransportConnectionUDP, "OSStatus udpconnection_setupListenerSocket(APTransportConnectionRef, int, int)", v0, "[%{ptr}] Setup V4 listener %?s%?##a on port %u %?s%?lu\n");
}

uint64_t stream_SetMessageCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __stream_SetMessageCallbacks_block_invoke;
  block[3] = &__block_descriptor_tmp_40;
  block[4] = DerivedStorage;
  block[5] = a4;
  block[6] = a2;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v9, block);
  return 0;
}

uint64_t stream_SetMessageCallbacks_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 184);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __stream_SetMessageCallbacks_block_invoke_0;
  v10[3] = &__block_descriptor_tmp_159;
  v10[4] = DerivedStorage;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;
  dispatch_sync(v8, v10);
  return 0;
}

uint64_t udpconnection_setPropertyInternal_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  *a1 = -12785;

  return APSSignalErrorAt();
}

uint64_t stream_Invalidate(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();

  return APSDispatchSyncTask();
}

uint64_t stream_Invalidate_0(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();

  return APSDispatchSyncTask();
}

uint64_t stream_invalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    v3 = DerivedStorage;
    *(DerivedStorage + 24) = 1;
    v4 = *(DerivedStorage + 40);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v5(v4, 0);
    }

    v6 = v3[4];
    if (v6)
    {
      APTransportSessionUnregisterStream(v6, *v3);
    }

    v7 = v3[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __stream_invalidateInternal_block_invoke;
    block[3] = &__block_descriptor_tmp_5;
    block[4] = v3;
    dispatch_sync(v7, block);
    v8 = v3[5];
    if (v8)
    {
      CFRelease(v8);
    }

    if (gLogCategory_APTransportStreamUnbuffered <= 50 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportStreamUnbuffered, "OSStatus stream_invalidateInternal(void *)", 33554482, "[%{ptr}] APTransportStreamUnbuffered with name %@ invalidated. connection: [%{ptr}]\n", a1, v3[1], v3[5]);
    }

    v3[5] = 0;
  }

  return 0;
}

uint64_t stream_invalidateInternal_0(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 72))
  {
    v3 = DerivedStorage;
    *(DerivedStorage + 72) = 1;
    OUTLINED_FUNCTION_11_7();
    if (v4)
    {
      v7 = 48;
    }

    else
    {
      v7 = v6;
    }

    v8 = *(v5 + v7);
    if (!v4)
    {
      v6 = 48;
    }

    v9 = *(v5 + v6);
    if (v8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v11 = *(v8 + 24);
    v12 = *(v5 + 96);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v13)
    {
      v13(v11, v12);
    }

    if (v10)
    {
      v14 = *(v10 + 24);
      v15 = *(v3 + 96);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v16)
      {
        v16(v14, v15);
      }
    }

    APTransportSessionUnregisterStream(*(v3 + 80), *v3);
    v17 = *(v3 + 32);
    if (v17)
    {
      dispatch_semaphore_signal(v17);
    }

    CFDictionaryApplyFunction(*(v3 + 112), stream_relinquishPackage, a1);
    stream_invalidateConnectionState(v8);
    stream_invalidateConnectionState(v10);
    v18 = *(v3 + 184);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __stream_invalidateInternal_block_invoke_0;
    block[3] = &__block_descriptor_tmp_135;
    block[4] = v3;
    dispatch_sync(v18, block);
    v19 = *(v3 + 168);
    if (v19)
    {
      *(v3 + 152) = -16617;
      dispatch_semaphore_signal(v19);
    }

    CFSetRemoveAllValues(*(v3 + 104));
    CFDictionaryRemoveAllValues(*(v3 + 112));
    v21 = *(v3 + 120);
    if (v21)
    {
      CFRelease(v21);
      *(v3 + 120) = 0;
    }

    v22 = *(v3 + 128);
    if (v22)
    {
      CFRelease(v22);
      *(v3 + 128) = 0;
    }

    v23 = *(v3 + 40);
    if (v23)
    {
      CFRelease(v23);
      *(v3 + 40) = 0;
    }

    v24 = *(v3 + 104);
    if (v24)
    {
      CFRelease(v24);
      *(v3 + 104) = 0;
    }

    v25 = *(v3 + 112);
    if (v25)
    {
      CFRelease(v25);
      *(v3 + 112) = 0;
    }

    v26 = *(v3 + 8);
    if (v26)
    {
      CFRelease(v26);
      *(v3 + 8) = 0;
    }

    v27 = *(v3 + 16);
    if (v27)
    {
      CFRelease(v27);
      *(v3 + 16) = 0;
    }

    if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportStream)))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportStream, "OSStatus stream_invalidateInternal(void *)", v20, "[%{ptr}] APTransportStream (%@) invalidated.\n");
    }
  }

  return 0;
}

uint64_t APTransportSessionUnregisterStream(const void *a1, uint64_t a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294954511;
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t stream_relinquishPackage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    stream_relinquishPackage_cold_1();
  }

  v5 = 56;
  if (!*(DerivedStorage + 24))
  {
    v5 = 48;
  }

  v6 = *(*(DerivedStorage + v5) + 24);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 48);
  if (v10)
  {

    return v10(v6, a2);
  }

  return result;
}

uint64_t udpconnection_RelinquishPackage(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t udpconnection_RelinquishPackage_0(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void stream_invalidateConnectionState(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      *(a1 + 8) = 0;
      *(a1 + 12) = -16617;
      dispatch_semaphore_signal(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
      if (*(a1 + 24))
      {
        if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportStream)))
        {
          OUTLINED_FUNCTION_9(&gLogCategory_APTransportStream, "void stream_invalidateConnectionState(APTransportStreamConnectionStateRef)", v4, "[%{ptr}] APTransportStream with name %@ invalidated %s connection [%{ptr}].\n");
        }
      }
    }

    *(a1 + 24) = 0;
    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 40) = 0;
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 88) = 0;
    }
  }
}

void udpconnection_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "void udpconnection_Finalize(CMBaseObjectRef)", 33554482, "APTransportConnectionUDPNW %{ptr} with name %@ finalizing.\n", a1, *(DerivedStorage + 16));
  }

  udpconnection_invalidateInternal(a1, 0);
  v3 = *(DerivedStorage + 312);
  if (v3)
  {
    nw_release(v3);
  }

  nw_release(*(DerivedStorage + 296));
  nw_release(*(DerivedStorage + 320));
  v4 = *(DerivedStorage + 408);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 408) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  v7 = *(DerivedStorage + 200);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 200) = 0;
  }

  v8 = *(DerivedStorage + 392);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 392) = 0;
  }

  v9 = *(DerivedStorage + 112);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 112) = 0;
  }

  v10 = *(DerivedStorage + 136);
  if (v10)
  {
    dispatch_release(v10);
    *(DerivedStorage + 136) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 8) = 0;
  v11 = *(DerivedStorage + 40);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 40) = 0;
  }

  v12 = *(DerivedStorage + 48);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 48) = 0;
  }

  v13 = *(DerivedStorage + 384);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 384) = 0;
  }

  v14 = *(DerivedStorage + 208);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 208) = 0;
  }

  nw_release(*(DerivedStorage + 32));
  v15 = *(DerivedStorage + 56);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 56) = 0;
  }

  v16 = *(DerivedStorage + 64);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 64) = 0;
  }

  v17 = *(DerivedStorage + 72);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 72) = 0;
  }

  v18 = *(DerivedStorage + 80);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 80) = 0;
  }

  v19 = *(DerivedStorage + 88);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 88) = 0;
  }

  v20 = *(DerivedStorage + 96);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 96) = 0;
  }

  v21 = *(DerivedStorage + 104);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 104) = 0;
  }
}

void udpconnection_Finalize_0(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionUDP <= 50 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionUDP, "void udpconnection_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] APTransportConnectionUDP with name %@ finalizing.\n", a1, DerivedStorage[2]);
  }

  udpconnection_invalidateInternal_0(a1, 0);
  v3 = DerivedStorage[33];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[33] = 0;
  }

  v4 = DerivedStorage[12];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[12] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[2] = 0;
  }

  v6 = DerivedStorage[15];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[15] = 0;
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[3] = 0;
  }

  v8 = DerivedStorage[6];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[6] = 0;
  }

  v9 = DerivedStorage[1];
  if (v9)
  {
    dispatch_release(v9);
    DerivedStorage[1] = 0;
  }

  v10 = DerivedStorage[16];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[16] = 0;
  }
}

void udpconnection_invalidateInternal(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    OUTLINED_FUNCTION_17_1();
    if (v8 ^ v9 | v7 && (v6 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUDPNW)))
    {
      v34 = *(v5 + 2);
      OUTLINED_FUNCTION_3_1();
      LogPrintF(v10, v11, v12, v13, a1, v34);
    }

    *v5 = 1;
    v14 = CMBaseObjectGetDerivedStorage();
    APTTrafficMetricsConnectionClosed(*(v14 + 408));
    if (*(v14 + 64))
    {
      atomic_fetch_and_explicit(APSWrapperGetValue(), 0xFFFFFFFE, memory_order_relaxed);
    }

    *(v14 + 144) = 6;
    if (*(v14 + 176) && *(v14 + 304))
    {
      OUTLINED_FUNCTION_17_1();
      if (v8 ^ v9 | v7 && (v15 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUDPNW)))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v16, v17, v18, v19, a1);
      }

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 0x40000000;
      v36[2] = __udpconnection_cleanUp_block_invoke;
      v36[3] = &__block_descriptor_tmp_3;
      v36[4] = v14;
      udpconnection_runLockedInlineIfNecessary(a1, v36);
      *(v14 + 304) = 0;
    }

    if (*(v14 + 296))
    {
      OUTLINED_FUNCTION_17_1();
      if (v8 ^ v9 | v7 && (v20 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUDPNW)))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v21, v22, v23, v24, a1);
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 0x40000000;
      v35[2] = __udpconnection_cleanUp_block_invoke_2;
      v35[3] = &__block_descriptor_tmp_47;
      v35[4] = v14;
      udpconnection_runLockedInlineIfNecessary(a1, v35);
    }

    v25 = *(v14 + 72);
    if (v25)
    {
      __swp(v25 + 17, (v25 + 17));
      if (((v25 + 17) & 1) == 0)
      {
        OUTLINED_FUNCTION_17_1();
        if (v8 ^ v9 | v7)
        {
          if (v26 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUDPNW))
          {
            v33 = *(v25 + 24);
            OUTLINED_FUNCTION_3_1();
            LogPrintF(v27, v28, v29, v30, v33, v25);
          }
        }
      }
    }

    v31 = *(v14 + 272);
    if (v31)
    {
      CFRelease(v31);
      *(v14 + 272) = 0;
    }

    v32 = *(v14 + 216);
    if (v32)
    {
      CFRelease(v32);
      *(v14 + 216) = 0;
    }

    nw_release(*(v14 + 232));
    if (a2)
    {
      dispatch_sync_f(*(v5 + 14), a1, udpconnection_clearCallbackState);
    }

    else
    {
      udpconnection_clearCallbackState(a1);
    }
  }
}

void udpconnection_invalidateInternal_0(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    APTTrafficMetricsConnectionClosed(*(DerivedStorage + 264));
    if (gLogCategory_APTransportConnectionUDP <= 30 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionUDP, "OSStatus udpconnection_invalidateInternal(APTransportConnectionRef, Boolean)", v6, "APTransportConnectionUDP [%{ptr}] with name %@ invalidating.\n");
    }

    *v5 = 1;
    v7 = CMBaseObjectGetDerivedStorage();
    v8 = v7;
    if (*(v7 + 88))
    {
      v9 = *(v7 + 248);
      if (v9)
      {
        dispatch_source_cancel(*(v7 + 248));
        dispatch_release(v9);
        *(v8 + 248) = 0;
      }

      *(v8 + 232) = -1;
      v10 = *(v8 + 256);
      if (v10)
      {
        dispatch_source_cancel(*(v8 + 256));
        dispatch_release(v10);
        *(v8 + 256) = 0;
      }

      *(v8 + 236) = -1;
    }

    else
    {
      v11 = *(v7 + 232);
      if ((v11 & 0x80000000) == 0)
      {
        if (close(v11) && *__error())
        {
          __error();
        }

        *(v8 + 232) = -1;
      }
    }

    *(v8 + 56) = 6;
    if (a2)
    {
      v12 = *(v5 + 24);

      dispatch_sync_f(v12, a1, udpconnection_clearCallbackState_0);
    }

    else
    {

      udpconnection_clearCallbackState_0(a1);
    }
  }
}

uint64_t APTTrafficMetricsConnectionClosed(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_2_20(0x748u, v1);
    OUTLINED_FUNCTION_1_28();
    LODWORD(v10) = 9;
    v2 = mach_absolute_time();
    OUTLINED_FUNCTION_0_10(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    return APSRealTimeSignalRaise();
  }

  return result;
}

void _APTTrafficMetricsFinalize(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 48));
  if (*(a1 + 64))
  {
    APSRealTimeSignalInvalidate();
  }

  v2 = *(a1 + 40);
  if (v2 && *(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___APTTrafficMetricsFinalize_block_invoke;
    block[3] = &__block_descriptor_tmp_17;
    block[4] = a1;
    dispatch_sync(v2, block);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
  }
}