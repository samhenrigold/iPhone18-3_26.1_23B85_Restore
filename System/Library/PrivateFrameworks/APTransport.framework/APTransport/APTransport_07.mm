uint64_t udpconnection_RunInline(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 192) != 3)
  {
    return 4294894975;
  }

  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 72);
  *(v4 + 72) = mach_absolute_time();
  if ((atomic_fetch_or_explicit(APSWrapperGetValue(), 0, memory_order_relaxed) & 3) != 1)
  {
    APSRealTimeSignalRaise();
    return 0;
  }

  Value = APSWrapperGetValue();
  if (udpconnection_runInlineInternal(Value, *(v3 + 32), 0) || gLogCategory_APTransportConnectionUDPNW > 30)
  {
    return 0;
  }

  if (gLogCategory_APTransportConnectionUDPNW != -1 || (OUTLINED_FUNCTION_10_4(), result = _LogCategory_Initialize(), result))
  {
    OUTLINED_FUNCTION_1();
    LogPrintF(v7, v8, v9, v10, a1);
    return 0;
  }

  return result;
}

void udpconnectionInlineInactivityMonitor_fire(uint64_t a1)
{
  v2 = mach_absolute_time();
  v30 = 0;
  if (a1)
  {
    v3 = *(a1 + 72);
    if (MillisecondsToUpTicks() + v3 > v2)
    {
      if (*(a1 + 64))
      {
        if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUDPNW)))
        {
          v27 = *(a1 + 24);
          OUTLINED_FUNCTION_3_1();
          LogPrintF(v4, v5, v6, v7, v27, a1);
        }

        *(a1 + 64) = 0;
      }

      v8 = UpTicksToNanoseconds();
      v9 = dispatch_time(0, v8);
      v10 = *(a1 + 40);
      CFRetain(a1);
      OUTLINED_FUNCTION_5_7();
      dispatch_after_f(v9, v10, v11, v12);
      goto LABEL_10;
    }

    if (!*(a1 + 64))
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUDPNW)))
      {
        v28 = *(a1 + 24);
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v13, v14, v15, v16, v28, a1);
      }

      *(a1 + 64) = 1;
    }

    v17 = FigCFWeakReferenceHolderCopyReferencedObject();
    Value = APSWrapperGetValue();
    udpconnection_runInlineInternal(Value, *(a1 + 48), &v30);
    if (v30 && (*(a1 + 17) & 1) != 0)
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUDPNW)))
      {
        v29 = *(a1 + 24);
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v19, v20, v21, v22, v29, a1);
      }

      nw_context_cancel();
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v23 = dispatch_time(0, 20000000);
      v24 = *(a1 + 40);
      CFRetain(a1);
      OUTLINED_FUNCTION_5_7();
      dispatch_after_f(v23, v24, v25, v26);
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    CFRelease(v17);
LABEL_10:
    CFRelease(a1);
  }
}

uint64_t udpconnection_runInlineInternal(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = FigSimpleMutexTryLock();
  if (v4)
  {
    OUTLINED_FUNCTION_20_0(722863900);
    v5 = nw_context_run_queued_blocks_inline();
    OUTLINED_FUNCTION_20_0(722863904);
    FigSimpleMutexUnlock();
    if (a3)
    {
      *a3 = v5 ^ 1;
    }
  }

  return v4;
}

uint64_t udpconnection_receiveDataLoop(uint64_t result)
{
  if (!*(result + 16))
  {
    v1 = result;
    APTTrafficMetricsMessageReadStarted(*(result + 88), 1);
    CFRetain(v1);
    return nw_connection_receive_multiple();
  }

  return result;
}

void __udpconnection_receiveDataLoop_block_invoke(uint64_t a1, dispatch_data_t data, uint64_t a3, int a4, NSObject *a5)
{
  v9 = *(*(a1 + 32) + 88);
  if (data)
  {
    size = dispatch_data_get_size(data);
    if (a5)
    {
LABEL_3:
      error_code = nw_error_get_error_code(a5);
      goto LABEL_6;
    }
  }

  else
  {
    size = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  error_code = 0;
LABEL_6:
  APTTrafficMetricsMessageReadFinished(v9, size, error_code);
  v12 = *(a1 + 32);
  cf = 0;
  v28 = 0;
  if (*(v12 + 16))
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_39;
  }

  if (!a5)
  {
    if (!data)
    {
      APSLogErrorAt();
      if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportConnectionUDPNW)))
      {
        OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_receiveDataCallback(APTransportConnectionUDPNWReceiveLoopContextRef, dispatch_data_t, nw_error_t, Boolean *)", v26, "### [%{ptr}] Received callback with no content.\n");
      }

      goto LABEL_34;
    }

    if (!*(v12 + 80))
    {
      v14 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (!v14)
      {
        goto LABEL_36;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      APSRealTimeAllocatorGetDefault();
      if (APSCMBlockBufferCreateWithDispatchData())
      {
        APSLogErrorAt();
        APSSignalErrorAt();
        goto LABEL_36;
      }

      v21 = *(DerivedStorage + 152);
      Default = APSRealTimeAllocatorGetDefault();
      if (v21(Default, v28, &cf))
      {
        APSLogErrorAt();
        goto LABEL_36;
      }

      SequenceNumberForPackage = udpconnection_getSequenceNumberForPackage(cf);
      v24 = CMBaseObjectGetDerivedStorage();
      udpconnection_markSignPostExplicit(*(v24 + 384), 722863896, SequenceNumberForPackage);
      udpconnection_callEventCallback(v14, 7u, cf);
LABEL_26:
      if (*(v12 + 64) && (atomic_fetch_and_explicit(APSWrapperGetValue(), 0xFFFFFFFD, memory_order_relaxed) & 2) != 0 && gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_receiveDataCallback(APTransportConnectionUDPNWReceiveLoopContextRef, dispatch_data_t, nw_error_t, Boolean *)", 33554482, "[%{ptr}] Did receive first packet offline\n", *(v12 + 24));
      }

      goto LABEL_36;
    }

    if (APSRealTimeReadableRingBufferWrite())
    {
      APSLogErrorAt();
      goto LABEL_34;
    }

    v16 = *(v12 + 96);
    v17 = *(v12 + 72);
    v30 = 0;
    v29 = 0;
    if (v17 == APTransportPackageRTPCreateWithBBuf)
    {
      if (APSDispatchDataCopyBytes())
      {
        APSLogErrorAt();
      }

      else if ((BYTE1(v29) & 0x7E) == 0x60)
      {
        v18 = bswap32(WORD1(v29)) >> 16;
LABEL_18:
        udpconnection_markSignPostExplicit(v16, 722863896, v18);
        v14 = 0;
        goto LABEL_26;
      }
    }

    v18 = 0;
    goto LABEL_18;
  }

  v13 = nw_error_get_error_code(a5);
  if (nw_error_get_error_domain(a5) == nw_error_domain_posix && v13 == 89)
  {
    v14 = 0;
    v15 = 1;
    goto LABEL_37;
  }

  v14 = nw_error_copy_cf_error(a5);
  if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportConnectionUDPNW)))
  {
    OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_receiveDataCallback(APTransportConnectionUDPNWReceiveLoopContextRef, dispatch_data_t, nw_error_t, Boolean *)", v19, "### [%{ptr}] Received callback with error %@\n");
  }

  if (v14)
  {
    CFRelease(v14);
LABEL_34:
    v15 = 0;
    v14 = 0;
    goto LABEL_37;
  }

LABEL_36:
  v15 = 0;
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_39:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  APTTrafficMetricsMessageProcessed(*(*(a1 + 32) + 88));
  if (v15 || a4)
  {
    if (!v15)
    {
      udpconnection_receiveDataLoop(*(a1 + 32));
    }

    v25 = *(a1 + 32);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  else
  {
    APTTrafficMetricsMessageReadStarted(*(*(a1 + 32) + 88), 1);
  }
}

void udpconnection_sendBatchInternal(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(a2);
  if (*DerivedStorage)
  {
    APSLogErrorAt();

    APSSignalErrorAt();
  }

  else if (*(DerivedStorage + 144) == 5)
  {
    v6 = Count;
    v7 = Count - 1;
    if (Count < 1)
    {
LABEL_8:
      v12 = *(DerivedStorage + 196);
      v13 = -1;
      if (v12 == 1718776692)
      {
        v13 = 0;
      }

      v14 = *(DerivedStorage + 296);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = __udpconnection_sendBatchInternal_block_invoke;
      v16[3] = &__block_descriptor_tmp_185;
      if (v12 == 1818325876)
      {
        v15 = v7;
      }

      else
      {
        v15 = v13;
      }

      v16[4] = v6;
      v16[5] = a1;
      v16[6] = a2;
      v16[7] = v15;
      nw_connection_batch(v14, v16);
    }

    else
    {
      v8 = 0;
      while (CFArrayGetValueAtIndex(a2, v8))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 != APTransportPackageGetTypeID(v10, v11))
        {
          break;
        }

        if (v6 == ++v8)
        {
          goto LABEL_8;
        }
      }

      APSLogErrorAt();
    }
  }
}

uint64_t APTransportConnectionUDPNWCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "dispatch queue allocation failed");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_6(uint64_t *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t APTransportConnectionUDPNWCreate_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "callback state queue allocation failed");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "dispatch queue allocation failed");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_21(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "inline mutex creation failed");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_22(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "failed to copy nw_context");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_23(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "weak reference holder allocation failed");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_25(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6(v2, "outConnection is NULL");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_14_2(v2, "UDP connection already invalidated");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_14_2(v2, "UDP connection already invalidated");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE57Fu, "UDP connection is not a listener");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE57Au, "UDP connection already invalidated");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_6(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = a1;
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportConnectionUDPNW), result))
    {
      result = OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_copyLocalNetworkInfo(APTransportConnectionRef, CFAllocatorRef, CFDictionaryRef *)", v7, "[%{ptr}] Copying local network information: Failed to get interface address for '%s'. Error: %#m\n");
    }
  }

  *a4 = v5;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE56Cu, "Failed to get local address");
  *a1 = result;
  return result;
}

void udpconnection_CopyProperty_cold_8(const void *a1, _DWORD *a2)
{
  APSLogErrorAt();
  *a2 = APSSignalErrorAt();
  CFRelease(a1);
}

uint64_t udpconnection_CopyProperty_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create ip address string\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_10(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportConnectionUDPNW), result))
    {
      result = OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_copyLocalNetworkInfo(APTransportConnectionRef, CFAllocatorRef, CFDictionaryRef *)", v5, "[%{ptr}] Copying local network information: Failed to convert interface name '%@'\n");
    }
  }

  *a3 = -72322;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create network dictionary\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE57Au, "UDP connection already invalidated");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE57Fu, "Failed to get nw client id");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create CFDataRef");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create nw_evaluator\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create remote nw_endpoint\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_20(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6(v2, "Client PID is not valid");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_21(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6(v2, "Remote address is not valid");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_22(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE57Fu, "UDP connection is not a listener");
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_24(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE580u, "Querying interface name on a disconnected Connection");
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_14_2(v2, "UDP connection already invalidated");
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6(v2, "inPropertyValue is not a type of CFDictionaryRef");
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6(v2, "inPropertyValue is not a type of APSNetworkAddress");
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6(v2, "inPropertyValue does not have a valid MAC address length");
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6(v2, "inPropertyValue is not a type of CFData");
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6(v2, "inPropertyValue is not a type of CFString");
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_getLocalAddress(APTransportConnectionRef, char *, sockaddr_ip *)", v2, "[%{ptr}] Getting local address: Failed to get interface address for '%s'. Error: %#m\n");
    }

    result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportConnectionUDPNW);
    if (result)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_getLocalAddress(APTransportConnectionRef, char *, sockaddr_ip *)", v2, "[%{ptr}] Getting local address: Failed to get interface address for '%s'. Error: %#m\n");
    }
  }

  return result;
}

uint64_t udpconnection_createUDPParameters_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create replicateOptions\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create localEndpoint\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create interface\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to copy protocol stack\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create UDP parameters\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6(v2, "Invalid outParameters\n");
  *a1 = result;
  return result;
}

uint64_t udpconnection_createRemoteEndpoint_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "nw_endpoint_create_host failed.");
  *a1 = result;
  return result;
}

uint64_t udpconnection_Resume_cold_2()
{
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t udpconnection_Resume_cold_5(uint64_t *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_1();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t udpconnection_Resume_cold_6(uint64_t a1, void *a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportConnectionUDPNW), result))
    {
      result = OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_setupListenerNW(APTransportConnectionRef)", v6, "[%{ptr}] Timed out waiting for server ready!");
    }
  }

  *a3 = -6722;
  *a2 = 0;
  return result;
}

uint64_t udpconnection_Resume_cold_8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v8 = a1;
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportConnectionUDPNW), result))
    {
      result = OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_setupListenerNW(APTransportConnectionRef)", v10, "[%{ptr}] setup connection from receiver to sender failed!");
    }
  }

  *a5 = v8;
  *a4 = a3;
  return result;
}

uint64_t udpconnection_Resume_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create listener queue");
  *a1 = result;
  return result;
}

uint64_t udpconnection_Resume_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to create nw_listener");
  *a1 = result;
  return result;
}

uint64_t udpconnection_Resume_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "create semaphore failed.");
  *a1 = result;
  return result;
}

uint64_t udpconnection_Resume_cold_16(_DWORD *a1)
{
  APSLogErrorAt();
  *a1 = -72322;

  return APSLogErrorAt();
}

uint64_t udpconnection_Resume_cold_17(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72327;
  return result;
}

uint64_t udpconnection_Resume_cold_18(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72327;
  return result;
}

BOOL udpconnection_AcquirePackage_cold_1()
{
  OUTLINED_FUNCTION_2();
  v0 = APSLogErrorAt();
  v1 = OUTLINED_FUNCTION_14_2(v0, "UDP connection already invalidated");
  return OUTLINED_FUNCTION_16_0(v1);
}

BOOL udpconnection_AcquirePackageWithMessageSize_cold_1()
{
  OUTLINED_FUNCTION_2();
  v0 = APSLogErrorAt();
  v1 = OUTLINED_FUNCTION_14_2(v0, "UDP connection already invalidated");
  return OUTLINED_FUNCTION_16_0(v1);
}

uint64_t udpconnection_setupNWConnection_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "nw_connection_create failed.");
  *a1 = result;
  return result;
}

uint64_t __udpconnection_setupListenerNW_block_invoke_2_cold_3(uint64_t a1)
{
  port = nw_listener_get_port(*(a1 + 48));
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v1, v2, v3, v4, port);
}

uint64_t __udpconnection_setupListenerNW_block_invoke_2_cold_4(uint64_t a1)
{
  port = nw_listener_get_port(*(a1 + 48));
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v1, v2, v3, v4, port);
}

uint64_t udpconnection_handleNWConnectionStateChange_cold_1(uint64_t a1, const void *a2, const void *a3, CFNumberRef *a4)
{
  APTTrafficMetricsConnectionClosed(*(a1 + 408));
  FigSimpleMutexLock();
  *(a1 + 144) = 6;
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
  *a4 = v8;
  udpconnection_callEventCallback(a3, *(a1 + 144), v8);
  return FigSimpleMutexUnlock();
}

uint64_t _APTransportConnectionUDPNWReceiveLoopContextFinalize_cold_2()
{
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t __udpconnection_sendPackageInternal_block_invoke_cold_1(const void **a1, uint64_t a2, uint64_t a3)
{
  result = udpconnection_callEventCallback(*a1, 8u, *(a2 + 40));
  if (gLogCategory_APTransportConnectionUDPNW <= 50)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUDPNW), result))
    {
      v10 = *a1;
      OUTLINED_FUNCTION_3_1();
      return LogPrintF(v6, v7, v8, v9, v10, a3);
    }
  }

  return result;
}

void __udpconnection_sendBatchInternal_block_invoke_cold_1(uint64_t a1, CFIndex *a2)
{
  v4 = 0;
  do
  {
    v5 = *(a1 + 40);
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v4);
    udpconnection_sendPackageInternal_0(v5, ValueAtIndex, v4++ == *(a1 + 56));
  }

  while (v4 < *a2);
}

uint64_t _APTransportConnectionUDPNWInlineInactivityMonitorFinalize_cold_1()
{
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v0, v1, v2, v3);
}

void carBonjourBrowser_dispatchEvent(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 128);
  if (v7)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 136);
    if (gLogCategory_APBrowserCarBonjour <= 20 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
    {
      v10 = *(v8 + 16);
      EventString = APBrowserGetEventString(a2);
      LogPrintF(&gLogCategory_APBrowserCarBonjour, "void carBonjourBrowser_dispatchEvent(APBrowserRef, APBrowserEventType, CFDictionaryRef)", 33554452, "%@ dispatching event %s with info %@\n", v10, EventString, a3);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v12 = *(v8 + 120);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carBonjourBrowser_dispatchEvent_block_invoke;
    block[3] = &__block_descriptor_tmp_82;
    block[4] = v7;
    block[5] = a1;
    v14 = a2;
    block[6] = a3;
    block[7] = v9;
    dispatch_async(v12, block);
  }
}

uint64_t carBonjourBrowser_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carBonjourBrowser_invalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_17;
    block[4] = DerivedStorage;
    dispatch_sync(v2, block);
  }

  return 0;
}

void __carBonjourBrowser_setMode_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 32))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_8_1();
    v15 = -12785;
LABEL_33:
    *(v14 + 24) = v15;
    return;
  }

  if (!*(v2 + 128))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_8_1();
    v15 = -72060;
    goto LABEL_33;
  }

  v3 = *(a1 + 48);
  if (*(a1 + 48))
  {
    if (v3 == 3)
    {
      if (!*(v2 + 104))
      {
        if (gLogCategory_APBrowserCarBonjour <= 50)
        {
          if (gLogCategory_APBrowserCarBonjour != -1 || (v7 = _LogCategory_Initialize(), v2 = *(a1 + 40), v7))
          {
            OUTLINED_FUNCTION_5_8();
            OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarBonjour, "OSStatus carBonjourBrowser_setMode(APBrowserRef, APBrowserMode)_block_invoke", v4, "[%@] Enabling CarPlayHelper event listening\n");
            v2 = *(a1 + 40);
          }
        }

        if (*(v2 + 48))
        {
          APSPowerAssertionRaiseTemporary();
          v2 = *(a1 + 40);
        }

        v8 = *(v2 + 96);
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v9)
        {
          v9(v8, 1);
        }

        *(*(a1 + 40) + 104) = 1;
      }

      return;
    }

    if (gLogCategory_APBrowserCarBonjour > 60)
    {
      goto LABEL_17;
    }

    if (gLogCategory_APBrowserCarBonjour == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v2 = *(a1 + 40);
      v3 = *(a1 + 48);
    }

    LogPrintF(&gLogCategory_APBrowserCarBonjour, "OSStatus carBonjourBrowser_setMode(APBrowserRef, APBrowserMode)_block_invoke", 33554492, "[%@] Unrecognized browse mode %d\n", *(v2 + 16), v3);
LABEL_17:
    OUTLINED_FUNCTION_8_1();
    *(v6 + 24) = -72062;

    APSLogErrorAt();
    return;
  }

  if (*(v2 + 104))
  {
    if (gLogCategory_APBrowserCarBonjour <= 50)
    {
      if (gLogCategory_APBrowserCarBonjour != -1 || (v10 = _LogCategory_Initialize(), v2 = *(a1 + 40), v10))
      {
        OUTLINED_FUNCTION_5_8();
        OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarBonjour, "OSStatus carBonjourBrowser_setMode(APBrowserRef, APBrowserMode)_block_invoke", v5, "[%@] Disabling CarPlayHelper event listening\n");
        v2 = *(a1 + 40);
      }
    }

    v11 = *(v2 + 96);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v12)
    {
      v12(v11, 0);
    }

    v13 = *(a1 + 40);
    ++*(v13 + 108);
    *(v13 + 104) = 0;
  }
}

uint64_t carBonjourBrowser_setMode_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -72062;
  return result;
}

uint64_t carBonjourBrowser_getDNSForDeviceID_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12780;
  return result;
}

uint64_t carBonjourBrowser_getDNSForDeviceID_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12780;
  return result;
}

uint64_t __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_5(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*a1 + 8) + 24) = -12786;
  return result;
}

void __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_7()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -6762;
}

void __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_8()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12786;
}

void __carBonjourBrowser_reconfirmDevice_block_invoke_cold_4()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12786;
}

uint64_t __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_6(uint64_t a1, uint64_t a2)
{
  APSLogErrorAt();
  --*(a2 + 72);

  return APSLogErrorAt();
}

void carBonjourBrowser_removeAllDevices_cold_2(const void *a1, uint64_t a2, _DWORD *a3)
{
  carBonjourBrowser_dispatchEvent(a1, 6, 0);
  if (*(a2 + 112))
  {
    v6 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarBonjour, "OSStatus carBonjourBrowser_removeAllDevices(APBrowserRef, Boolean)", v5, "Releasing osTransaction: %s\n");
    }

    free(v6);
    v7 = *(a2 + 112);
    if (v7)
    {
      os_release(v7);
      *(a2 + 112) = 0;
    }
  }

  *a3 = 0;
}

uint64_t carPlayHelperWiFi_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carPlayHelperWiFi_invalidate_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    block[6] = a1;
    dispatch_sync(v3, block);
  }

  return 0;
}

void carPlayHelperWiFi_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    OUTLINED_FUNCTION_1_2();
    v18 = 3221225472;
    v19 = __carPlayHelperWiFi_finalize_block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0l;
    v21 = DerivedStorage;
    dispatch_sync(v3, block);
  }

  carPlayHelperWiFi_invalidate(a1);
  v4 = DerivedStorage[1];
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = DerivedStorage[1];
    if (v5)
    {
      dispatch_release(v5);
      DerivedStorage[1] = 0;
    }
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_12);
    v7 = DerivedStorage[2];
    if (v7)
    {
      dispatch_release(v7);
      DerivedStorage[2] = 0;
    }
  }

  v8 = DerivedStorage[3];
  if (v8)
  {
    dispatch_sync(v8, &__block_literal_global_14);
    v9 = DerivedStorage[3];
    if (v9)
    {
      dispatch_release(v9);
      DerivedStorage[3] = 0;
    }
  }

  v10 = DerivedStorage[16];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[16] = 0;
  }

  v11 = DerivedStorage[4];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[4] = 0;
  }

  v12 = DerivedStorage[12];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[12] = 0;
  }

  v13 = DerivedStorage[11];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[11] = 0;
  }

  v14 = DerivedStorage[9];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[9] = 0;
  }

  v15 = DerivedStorage[8];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[8] = 0;
  }

  v16 = DerivedStorage[7];
  if (v16)
  {
    dispatch_release(v16);
    DerivedStorage[7] = 0;
  }
}

NSObject *__carPlayHelperWiFi_invalidate_block_invoke(NSObject *result)
{
  isa = result[4].isa;
  if (!*isa)
  {
    v2 = result;
    v3 = *(isa + 9);
    if (v3)
    {
      APConnectivityHelperRemoveAllRegistrations(v3, v2[5].isa);
    }

    v4 = v2[6].isa;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    carPlayHelperWiFi_dispatchEvent(v4, 3, 0);
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = dispatch_semaphore_signal(result);
    }

    *v2[4].isa = 1;
  }

  return result;
}

void carPlayHelperWiFi_setInterfaceWatchingEnabled(const void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v5 = DerivedStorage;
    CFRetain(a1);
    OUTLINED_FUNCTION_1_2();
    v8 = 3221225472;
    v9 = __carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke;
    v10 = &__block_descriptor_49_e5_v8__0l;
    v13 = a2;
    v11 = v5;
    v12 = a1;
    dispatch_async(v6, block);
  }
}

void __carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = *(a1 + 32);
  if (!*v3)
  {
    if (*(v3 + 80) == *(a1 + 48))
    {
      goto LABEL_12;
    }

    if (*(a1 + 48))
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke_2;
      v14[3] = &__block_descriptor_48_e24_v16__0__NSNotification_8l;
      v4 = *(a1 + 40);
      v14[4] = v3;
      v14[5] = v4;
      v5 = [v2 addObserverForName:@"CRPairedVehiclesDidChangeNotification" object:0 queue:0 usingBlock:v14];
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      *(v7 + 48) = v5;
      v8 = APConnectivityHelperRegisterForEvent(*(v7 + 72), v6, 3);
      if (v8)
      {
        v10 = v8;
        goto LABEL_17;
      }

      v9 = APConnectivityHelperRegisterForEvent(*(*(a1 + 32) + 72), *(a1 + 40), 9);
      if (v9)
      {
        v10 = v9;
LABEL_17:
        APSLogErrorAt();
        goto LABEL_18;
      }
    }

    else
    {
      if (*(v3 + 48))
      {
        [v2 removeObserver:?];
        v3 = *(a1 + 32);
        *(v3 + 48) = 0;
      }

      v11 = APConnectivityHelperDeregisterForEvent(*(v3 + 72), *(a1 + 40), 3);
      if (v11)
      {
        v10 = v11;
        goto LABEL_17;
      }

      v12 = APConnectivityHelperDeregisterForEvent(*(*(a1 + 32) + 72), *(a1 + 40), 9);
      if (v12)
      {
        v10 = v12;
        goto LABEL_17;
      }
    }

    *(*(a1 + 32) + 80) = *(a1 + 48);
    goto LABEL_12;
  }

  v10 = 4294954511;
LABEL_18:
  if (gLogCategory_APBrowserCarWiFiHelper <= 90 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
  {
    if (*(a1 + 48))
    {
      v13 = "enable";
    }

    else
    {
      v13 = "disable";
    }

    LogPrintF(&gLogCategory_APBrowserCarWiFiHelper, "void carPlayHelperWiFi_setInterfaceWatchingEnabled(APCarPlayHelperRef, Boolean)_block_invoke", 33554522, "[%{ptr}] Failed to %s WiFi interface watching %#m\n", *(a1 + 40), v13, v10);
  }

LABEL_12:
  CFRelease(*(a1 + 40));
}

void *__carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke_3(void *result)
{
  v1 = *(result + 4);
  if (!*v1)
  {
    if (v1[80])
    {
      return carPlayHelperWiFi_updateCarKitInCarStatus(*(result + 5));
    }
  }

  return result;
}

intptr_t __carPlayHelperWiFi_updateCarKitNetworkStatus_block_invoke(void *a1, int a2, void *a3)
{
  if (gLogCategory_APBrowserCarWiFiHelper <= 30 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
  {
    v6 = "No";
    if (a2)
    {
      v6 = "Yes";
    }

    LogPrintF(&gLogCategory_APBrowserCarWiFiHelper, "OSStatus carPlayHelperWiFi_updateCarKitNetworkStatus(APCarPlayHelperRef)_block_invoke", 33554462, "CRAllowsConnectionsForWiFiUUID: %@ allowed: %s %?@\n", a1[5], v6, a3 != 0, a3);
  }

  if (!a3 || ![a3 code])
  {
    *(*(a1[4] + 8) + 24) = a2;
  }

  v7 = *(a1[6] + 56);

  return dispatch_semaphore_signal(v7);
}

void __carPlayHelperWiFi_registerForCarKitInCarNotification_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == *(*(a1 + 40) + 40))
  {
    if (gLogCategory_APBrowserCarWiFiHelper <= 30 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrowserCarWiFiHelper, "OSStatus carPlayHelperWiFi_registerForCarKitInCarNotification(APCarPlayHelperRef)_block_invoke_2", 33554462, "CRInCarNotification received\n");
    }

    *(*(*(a1 + 32) + 8) + 24) = carPlayHelperWiFi_updateCarKitInCarStatus(*(a1 + 48));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      APSLogErrorAt();
    }
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void carPlayHelperWiFi_updateCarKitInCarStatus_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_CRBluetoothIndicatesInCar(void (^)(BOOL description:{NSString *, NSError *))"), @"APCarPlayHelperWiFi.m", 55, @"%s", dlerror()}];
  __break(1u);
}

void CarKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayHelperWiFi.m", 46, @"%s", *a1}];
  __break(1u);
}

uint64_t carPlayHelperWiFi_networkChanged_cold_2(uint64_t a1)
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t stream_SetReadyToSendCallback()
{
  OUTLINED_FUNCTION_5_9();
  v51 = 0x2000000000;
  v52 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = OUTLINED_FUNCTION_2_8(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v31, v32, v33, v34, v35, v36, v37, block, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v39 = 0x40000000;
  v40 = __stream_SetReadyToSendCallback_block_invoke;
  v41 = &unk_278BC7F10;
  v43 = v14;
  v44 = v3;
  v42 = v4;
  dispatch_sync(v13, &block);
  if (!v46[3])
  {
    goto LABEL_11;
  }

  v22 = OUTLINED_FUNCTION_3_7();
  v33 = __stream_SetReadyToSendCallback_block_invoke_2;
  v34 = &__block_descriptor_tmp_42;
  v35 = v1;
  v36 = v3;
  v37 = v2;
  dispatch_sync(v22, &v31);
  v23 = v46[3];
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v1)
  {
    if (v24)
    {
      v25 = stream_readyToSendCallback;
      v26 = v23;
      v27 = v0;
LABEL_7:
      v28 = v24(v26, v25, v27);
      goto LABEL_9;
    }
  }

  else if (v24)
  {
    v26 = v23;
    v25 = 0;
    v27 = 0;
    goto LABEL_7;
  }

  v28 = -12782;
LABEL_9:
  *(v50 + 24) = v28;
  if (v28)
  {
    APSLogErrorAt();
  }

LABEL_11:
  v29 = v46[3];
  if (v29)
  {
    CFRelease(v29);
  }

  OUTLINED_FUNCTION_7_4(v29, v15, v16, v17, v18, v19, v20, v21, v31, v32, v33, v34, v35, v36, v37, block, v39, v40, v41, v42, v43, v44);
  _Block_object_dispose(v49, 8);
  return v0;
}

uint64_t stream_SetReadyToSendBatchCallback()
{
  OUTLINED_FUNCTION_5_9();
  v51 = 0x2000000000;
  v52 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = OUTLINED_FUNCTION_2_8(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v31, v32, v33, v34, v35, v36, v37, block, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v39 = 0x40000000;
  v40 = __stream_SetReadyToSendBatchCallback_block_invoke;
  v41 = &unk_278BC7FD0;
  v43 = v14;
  v44 = v3;
  v42 = v4;
  dispatch_sync(v13, &block);
  if (!v46[3])
  {
    goto LABEL_11;
  }

  v22 = OUTLINED_FUNCTION_3_7();
  v33 = __stream_SetReadyToSendBatchCallback_block_invoke_2;
  v34 = &__block_descriptor_tmp_48;
  v35 = v1;
  v36 = v3;
  v37 = v2;
  dispatch_sync(v22, &v31);
  v23 = v46[3];
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v1)
  {
    if (v24)
    {
      v25 = stream_readyToSendBatchCallback;
      v26 = v23;
      v27 = v0;
LABEL_7:
      v28 = v24(v26, v25, v27);
      goto LABEL_9;
    }
  }

  else if (v24)
  {
    v26 = v23;
    v25 = 0;
    v27 = 0;
    goto LABEL_7;
  }

  v28 = -12782;
LABEL_9:
  *(v50 + 24) = v28;
  if (v28)
  {
    APSLogErrorAt();
  }

LABEL_11:
  v29 = v46[3];
  if (v29)
  {
    CFRelease(v29);
  }

  OUTLINED_FUNCTION_7_4(v29, v15, v16, v17, v18, v19, v20, v21, v31, v32, v33, v34, v35, v36, v37, block, v39, v40, v41, v42, v43, v44);
  _Block_object_dispose(v49, 8);
  return v0;
}

uint64_t stream_CopyProperty_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16617;
  return result;
}

uint64_t stream_CopyProperty_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16611;
  return result;
}

void __stream_handleEventFromSendConnection_block_invoke_cold_1(const void *a1, const void *a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v7)
  {
    v8 = v7(a2);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v9)
  {
    v10 = v9(a2);
  }

  else
  {
    v10 = 1634957678;
  }

  if (*(DerivedStorage + 24))
  {
    v12 = -16617;
  }

  else
  {
    if (v10 == 1634957678)
    {
      CFRetain(a1);
      if (a2)
      {
        CFRetain(a2);
      }

      if (v8)
      {
        CFRetain(v8);
      }

      OUTLINED_FUNCTION_4_8();
      v14 = 0x40000000;
      v15 = __stream_packageReceived_block_invoke;
      v16 = &__block_descriptor_tmp_36;
      v17 = DerivedStorage;
      v18 = a1;
      v19 = a2;
      v20 = v8;
      dispatch_async(v11, block);
    }

    else if (gLogCategory_APTransportStreamUnbuffered < 61 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportStreamUnbuffered, "OSStatus stream_packageReceived(FigTransportStreamRef, APTransportPackageRef)", 33554492, "[%{ptr}] received unsupported package type='%C'\n", a1, v10);
    }

    v12 = 0;
  }

  *a3 = v12;
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t stream_readyToSendBatchCallback_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t stream_readyToSendBatchCallback_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t stream_readyToSendBatchCallback_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *(*a1 + 24) = result;
  return result;
}

uint64_t stream_readyToSendBatchCallback_cold_7(uint64_t a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *(*a1 + 24) = result;
  return result;
}

void __APBrowserRapportManagerInvalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 51))
  {
    v3 = -72284;
  }

  else
  {
    APBrowserRapportManager_stop(*(a1 + 40));
    APBrowserRapportManager_dispatchEvent(v2, 4, 0);
    *(v2 + 51) = 1;
    if (*(v2 + 40))
    {
      if (_MergedGlobals_5 != -1)
      {
        dispatch_once(&_MergedGlobals_5, &__block_literal_global_20);
      }

      FigCFWeakReferenceTableRemoveValue();
      v3 = 0;
      *(v2 + 40) = 0;
    }

    else
    {
      v3 = 0;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

uint64_t __APBrowserRapportManagerGetMode_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 51);
  if (*(v1 + 51))
  {
    v2 = -72284;
  }

  else
  {
    **(result + 48) = *(v1 + 48);
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

uint64_t __APBrowserRapportManagerSetEventHandler_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = -72284;
  v3 = *(result + 40);
  if (!*(v3 + 51))
  {
    if (*(v3 + 48))
    {
      result = APSLogErrorAt();
      v2 = -72283;
    }

    else
    {
      v2 = 0;
      *(v3 + 56) = *(result + 48);
    }
  }

  *(*(*(v1 + 32) + 8) + 24) = v2;
  return result;
}

uint64_t __APBrowserRapportManagerCopyShowInfo_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = -72284;
  v3 = *(result + 40);
  if (!*(v3 + 51))
  {
    v4 = *(result + 48);
    v5 = APBrowserRapportManager_ensurePreferencesUpdated(*(result + 40), 0);
    if (v5)
    {
      v13 = v5;
      result = APSLogErrorAt();
      v2 = v13;
    }

    else
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        v7 = Mutable;
        CFStringAppendF(Mutable, "+-+ APBrowserRapportManager state +-+\n");
        CFStringAppendF(v7, "\n");
        if (*(v3 + 50))
        {
          v8 = "yes";
        }

        else
        {
          v8 = "no";
        }

        CFStringAppendF(v7, "Rapport: enabled=%s", v8);
        v9 = *(v3 + 48);
        if (*(v3 + 48))
        {
          if (v9 == 1)
          {
            v10 = "Detailed";
          }

          else
          {
            if (gLogCategory_APBrowserRapportManager <= 60 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APBrowserRapportManager, "const char *APBrowserRapportManager_stringForRapportMode(APBrowserRapportMode)", 33554492, "Unknown Rapport mode %d\n", v9);
            }

            v10 = "Unknown";
          }
        }

        else
        {
          v10 = "None";
        }

        CFStringAppendF(v7, " mode=%s", v10);
        if (*(v3 + 72))
        {
          v11 = "yes";
        }

        else
        {
          v11 = "no";
        }

        CFStringAppendF(v7, " scanning=%s", v11);
        Count = CFDictionaryGetCount(*(v3 + 80));
        CFStringAppendF(v7, " devicesDetected=%d", Count);
        result = CFStringAppendF(v7, "\n");
        if (Count)
        {
          CFStringAppendF(v7, "Detected Devices:\n");
          OUTLINED_FUNCTION_1_2();
          OUTLINED_FUNCTION_4_0();
          result = CFDictionaryApplyBlock();
        }

        v2 = 0;
        *v4 = v7;
      }

      else
      {
        result = APSLogErrorAt();
        v2 = -72280;
      }
    }
  }

  *(*(*(v1 + 32) + 8) + 24) = v2;
  return result;
}

uint64_t APBrowserRapportManager_stop(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBrowserRapportManager)))
  {
    OUTLINED_FUNCTION_5();
    LogPrintF(v2, v3, v4, v5);
  }

  *(a1 + 48) = 0;
  v6 = APBrowserRapportManager_update(a1);
  if (v6)
  {
    APSLogErrorAt();
  }

  else
  {
    APBrowserRapportManager_dispatchEvent(a1, 3, 0);
  }

  return v6;
}

id *APBrowserRapportManager_tryNextEffectiveID(id *result, const void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_22;
  }

  v2 = result;
  if (!*(result + 24))
  {
    return result;
  }

  TypeID = CFDictionaryGetTypeID();
  if (OUTLINED_FUNCTION_6_8(TypeID) && (CFSetGetTypeID(), (TypedValue = CFDictionaryGetTypedValue()) != 0))
  {
    v6 = TypedValue;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v2[9] activeDevices];
    result = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (result)
    {
      v8 = result;
      v9 = *v17;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        if ([v11 idsDeviceIdentifier] == a2 || objc_msgSend(v11, "idsDeviceIdentifier") && CFEqual(a2, objc_msgSend(v11, "idsDeviceIdentifier")))
        {
          v12 = [v11 effectiveIdentifier];
          if (!CFSetContainsValue(v6, v12))
          {
            if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBrowserRapportManager)))
            {
              OUTLINED_FUNCTION_5();
              LogPrintF(v13, v14, v15, "[%@:%@] Trying as next effective ID\n", a2, v12);
            }

            result = APBrowserRapportManager_sendGetInfo(v2, v11, a2, v12);
            if (!result)
            {
              break;
            }
          }
        }

        if (v8 == ++v10)
        {
          result = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          v8 = result;
          if (result)
          {
            goto LABEL_7;
          }

          return result;
        }
      }
    }
  }

  else
  {
LABEL_22:

    return APSLogErrorAt();
  }

  return result;
}

uint64_t APBrowserRapportManager_sendDeviceEvent_cold_1(uint64_t a1, uint64_t a2)
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

void __APConnectivityHelperCreateWithWiFiInterfaceClass_block_invoke(uint64_t a1, void *a2)
{
  if (qword_281309B90 != -1)
  {
    dispatch_once(&qword_281309B90, &__block_literal_global_85);
  }

  v3 = FigCFWeakReferenceTableCopyValue();
  if (v3)
  {
    v4 = v3;
    CFRetain(v3);
    v5 = a2;
    v6 = v4[2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___APConnectivityHelperHandleCWFEventExternal_block_invoke;
    v7[3] = &unk_278BC72B0;
    v7[4] = a2;
    v7[5] = v4;
    dispatch_async(v6, v7);
    CFRelease(v4);
  }
}

void _APConnectivityHelperStartListeningToEvent(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 232))
  {
    APSLogErrorAt();
    started = -72203;
  }

  else
  {
    v6 = a1[2];
    if (v6)
    {
      if (gLogCategory_APConnectivityHelper <= 50)
      {
        OUTLINED_FUNCTION_2_9();
        if (!v8 || _LogCategory_Initialize())
        {
          EventString = APConnectivityHelperGetEventString(v6);
          LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperStartListeningToEvent(void *)", started + 10, "[%{ptr}] Start listening for event %'s", v5, EventString);
        }
      }

      switch(v6)
      {
        case 1:
          *(v5 + 87) = 1;
          started = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v5, a2, a3);
          if (started)
          {
            APSLogErrorAt();
            *(v5 + 87) = 0;
          }

          break;
        case 2:
          if (*(v5 + 85) || *(v5 + 86))
          {
            goto LABEL_85;
          }

          if (*(v5 + 56))
          {
            started = _APConnectivityHelperStartWiFiPowerListener(v5);
            if (started)
            {
              goto LABEL_73;
            }
          }

          else
          {
            *(v5 + 86) = 1;
            started = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v5, a2, a3);
            if (started)
            {
              goto LABEL_73;
            }
          }

          break;
        case 3:
          if (*(v5 + 81) || *(v5 + 82))
          {
            goto LABEL_85;
          }

          if (*(v5 + 56))
          {
            started = _APConnectivityHelperStartWiFiNetworkListener(v5);
            if (started)
            {
              goto LABEL_73;
            }
          }

          else
          {
            *(v5 + 82) = 1;
            started = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v5, a2, a3);
            if (started)
            {
              goto LABEL_73;
            }
          }

          break;
        case 4:
          if (*(v5 + 120))
          {
            goto LABEL_85;
          }

          *(v5 + 120) = 1;
          v18 = _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity(v5, *MEMORY[0x277CE16A0], _APConnectivityHelperHandleUSBNetworkChangedEvent);
          if (v18)
          {
            started = v18;
            APSLogErrorAt();
            *(v5 + 120) = 0;
            _APConnectivityHelperStopUSBInterfaceListener(v5);
            APSLogErrorAt();
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_11_4();
          if (v10 ^ v11 | v8 && (v19 != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
          {
            v16 = "OSStatus _APConnectivityHelperStartUSBInterfaceListener(APConnectivityHelperRef)";
            v17 = "[%{ptr}] USB interface watching started.\n";
            goto LABEL_62;
          }

          goto LABEL_85;
        case 5:
          goto LABEL_20;
        case 6:
          if (*(v5 + 176))
          {
            goto LABEL_85;
          }

          *(v5 + 176) = 1;
          v13 = _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity(v5, *MEMORY[0x277CE1690], _APConnectivityHelperHandleIPv6ChangedEvent);
          if (v13)
          {
            started = v13;
            APSLogErrorAt();
            *(v5 + 176) = 0;
            _APConnectivityHelperStopIPv6AddressListener(v5);
            APSLogErrorAt();
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_11_4();
          if (v10 ^ v11 | v8 && (v15 != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
          {
            v16 = "OSStatus _APConnectivityHelperStartIPv6AddressListener(APConnectivityHelperRef)";
            v17 = "[%{ptr}] IPv6 address watching started.\n";
            goto LABEL_62;
          }

          goto LABEL_85;
        case 7:
          *(v5 + 208) = 1;
          started = _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted(v5, a2, a3);
          if (started)
          {
            APSLogErrorAt();
            *(v5 + 208) = 0;
          }

          break;
        case 8:
          if (!*(v5 + 153))
          {
            if (!*(v5 + 154))
            {
              OUTLINED_FUNCTION_11_4();
              if (v10 ^ v11 | v8 && (v23 != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
              {
                OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartAWDLSoloSupportListener(APConnectivityHelperRef)", v22, "[%{ptr}] Starting AWDL solo support listener.\n");
              }

              v24 = objc_opt_new();
              *(v5 + 144) = v24;
              if (v24)
              {
                v26[0] = MEMORY[0x277D85DD0];
                v26[1] = 3221225472;
                v26[2] = ___APConnectivityHelperStartAWDLSoloSupportListener_block_invoke;
                v26[3] = &unk_278BC8380;
                v26[4] = v5;
                [v24 setStateUpdatedHandler:v26];
                [*(v5 + 144) beginMonitoring];
                *(v5 + 154) = 1;
              }

              else
              {
                APSLogErrorAt();
              }
            }

            goto LABEL_85;
          }

          started = _APConnectivityHelperSendAWDLSoloSupportEvent(v5, a2, a3);
          if (!started)
          {
            break;
          }

          goto LABEL_89;
        case 9:
          if (*(v5 + 83) || *(v5 + 84))
          {
            goto LABEL_85;
          }

          if (*(v5 + 56))
          {
            started = _APConnectivityHelperStartLinkDebounceFailedListener(v5);
            if (!started)
            {
              break;
            }
          }

          else
          {
            *(v5 + 84) = 1;
            started = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v5, a2, a3);
            if (!started)
            {
              break;
            }
          }

LABEL_73:
          APSLogErrorAt();
          goto LABEL_89;
        case 10:
          if (*(v5 + 192))
          {
            goto LABEL_85;
          }

          *(v5 + 192) = 1;
          v20 = _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity(v5, *MEMORY[0x277CE1688], _APConnectivityHelperHandleIPv4ChangedEvent);
          if (v20)
          {
            started = v20;
            APSLogErrorAt();
            *(v5 + 192) = 0;
            _APConnectivityHelperStopIPv4AddressListener(v5);
            APSLogErrorAt();
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_11_4();
          if (v10 ^ v11 | v8 && (v21 != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
          {
            v16 = "OSStatus _APConnectivityHelperStartIPv4AddressListener(APConnectivityHelperRef)";
            v17 = "[%{ptr}] IPv4 address watching started.\n";
LABEL_62:
            OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, v16, v14, v17);
          }

LABEL_85:
          started = 0;
          break;
        default:
          v8 = (v6 - 100) > 9 || ((1 << (v6 - 100)) & 0x39F) == 0;
          if (v8)
          {
LABEL_20:
            OUTLINED_FUNCTION_9_4();
            if (v10 ^ v11 | v8 && (v12 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperStartListeningToEvent(void *)", 33554492, "[%{ptr}] Unrecognized event type %d.\n", v5, v6);
            }
          }

          else
          {
            OUTLINED_FUNCTION_9_4();
            if (v10 ^ v11 | v8 && (v9 != -1 || _LogCategory_Initialize()))
            {
              v25 = APConnectivityHelperGetEventString(v6);
              LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperStartListeningToEvent(void *)", 33554492, "[%{ptr}] Invalid event type %s.\n", v5, v25);
            }
          }

          break;
      }
    }

    else
    {
      started = -72201;
LABEL_89:
      APSLogErrorAt();
    }
  }

  a1[3] = started;
}

uint64_t _APConnectivityHelperDeregisterForEvent(uint64_t a1, const void *a2, void *key)
{
  v16 = a1;
  v17 = key;
  if (a2)
  {
    v3 = key;
    v6 = key;
    Value = CFDictionaryGetValue(*(a1 + 248), key);
    if (!Value)
    {
      return 0;
    }

    v8 = Value;
    if (!CFSetContainsValue(Value, a2))
    {
      return 0;
    }

    CFSetRemoveValue(v8, a2);
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      EventString = APConnectivityHelperGetEventString(v3);
      Count = CFSetGetCount(v8);
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperDeregisterForEvent(APConnectivityHelperRef, CFTypeRef, APConnectivityHelperEventType)", 33554482, "[%{ptr}] Deregistered client [%{ptr}] for event %'s. %ld registered clients", a1, a2, EventString, Count, v16, v17);
    }

    v11 = v3 - 1;
    if (v3 - 1) <= 9 && ((0x3EFu >> v11))
    {
      v12 = dword_23D383828[v11];
      if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        APConnectivityHelperGetEventString(v12);
        OUTLINED_FUNCTION_7_0(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperDispatchDeregisterEventIfNecessary(APConnectivityHelperRef, CFTypeRef, APConnectivityHelperEventType)", v13, "[%{ptr}] Dispatching deregister event %'s to client [%{ptr}]");
      }

      _APConnectivityHelperDispatchEventToClient(a1, a2, v12, 0);
    }

    if (!CFSetGetCount(v8))
    {
      CFDictionaryRemoveValue(*(a1 + 248), v6);
      _APConnectivityHelperStopListeningToEvent(&v16);
      v14 = HIDWORD(v17);
      if (HIDWORD(v17))
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v14;
}

uint64_t _APConnectivityHelperDeregisterActivity(uint64_t a1, const void *a2, void *key)
{
  if (!a2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v3 = key;
  v6 = key;
  Value = CFDictionaryGetValue(*(a1 + 256), key);
  if (Value)
  {
    v8 = Value;
    if (CFSetContainsValue(Value, a2))
    {
      CFSetRemoveValue(v8, a2);
      if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        CFSetGetCount(v8);
        OUTLINED_FUNCTION_9(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperDeregisterActivity(APConnectivityHelperRef, CFTypeRef, APConnectivityHelperActivityType)", v9, "[%{ptr}] Deregistered client [%{ptr}] for activity %'s. %ld registered clients");
      }

      if (!CFSetGetCount(v8))
      {
        CFDictionaryRemoveValue(*(a1 + 256), v6);
        if (v3)
        {
          v10 = 4294960561;
          APSLogErrorAt();
          APSLogErrorAt();
          return v10;
        }

        _APConnectivityHelperStopWakeOnWireless(a1);
      }
    }
  }

  return 0;
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke_4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_12_1(a1);
  _APConnectivityHelperDeregisterActivity(v1, v2, v3);
  OUTLINED_FUNCTION_8_1();
  *(v5 + 24) = v4;
  OUTLINED_FUNCTION_8_1();
  *(v6 + 24) = 0;
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke_5(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_12_1(a1);
  _APConnectivityHelperDeregisterForEvent(v1, v2, v3);
  OUTLINED_FUNCTION_8_1();
  *(v5 + 24) = v4;
  OUTLINED_FUNCTION_8_1();
  *(v6 + 24) = 0;
}

uint64_t _APConnectivityHelperInvalidate(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 232))
  {
    result = 4294895093;
  }

  else
  {
    _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(*a1, a2, a3);
    _APConnectivityHelperEnsureWiFiPowerListenerStopped(v4, v5, v6);
    _APConnectivityHelperEnsureWiFiNetworkListenerStopped(v4, v7, v8);
    _APConnectivityHelperEnsureUSBInterfaceListenerStopped(v4);
    _APConnectivityHelperEnsureIPv6AddressesListenerStopped(v4);
    _APConnectivityHelperEnsureIPv4AddressesListenerStopped(v4);
    _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(v4, v9, v10);
    _APConnectivityHelperEnsureAWDLSoloSupportListenerStopped(v4, v11, v12);
    _APConnectivityHelperStopWakeOnWireless(v4);
    if (*(v4 + 40))
    {
      if (qword_281309B90 != -1)
      {
        dispatch_once(&qword_281309B90, &__block_literal_global_85);
      }

      FigCFWeakReferenceTableRemoveValue();
      *(v4 + 40) = 0;
    }

    [*(v4 + 48) invalidate];
    result = _APConnectivityHelperDispatchEvent(v4, 0x64, 0);
    *(v4 + 232) = 1;
  }

  a1[2] = result;
  return result;
}

void _APConnectivityHelperStopWakeOnWireless(uint64_t a1)
{
  if (*(a1 + 72))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v4 = ___APConnectivityHelperStopWakeOnWireless_block_invoke;
    v5 = &__block_descriptor_40_e5_v8__0l;
    v6 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v4(block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), block);
    }

    *(a1 + 72) = 0;
  }
}

uint64_t _APConnectivityHelperHandleWiFiLinkChangedInternal(_BYTE *cf, void *a2, uint64_t a3)
{
  v10 = cf;
  if (!cf[81])
  {
    return 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
  {
    OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperHandleWiFiLinkChangedInternal(APConnectivityHelperRef, NSDictionary *)", a3, "[%{ptr}] Wifi Link changed %@");
  }

  v5 = CFGetAllocator(cf);
  theDict = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (theDict)
  {
    v12 = 0;
    _APConnectivityHelperPopulateCurrentWiFiNetworkInfo(&v10);
    if (v12)
    {
      APSLogErrorAt();
      v8 = 0;
      v7 = theDict;
    }

    else
    {
      if (a2)
      {
        v6 = [a2 objectForKeyedSubscript:*MEMORY[0x277D02A88]];
        if (v6)
        {
          if ([v6 isLinkDownDebounceInProgress])
          {
            CFDictionarySetValue(theDict, @"wifiNetworkIsLinkDownDebounceInProgress", *MEMORY[0x277CBED28]);
          }
        }
      }

      v7 = theDict;
      v8 = _APConnectivityHelperDispatchEvent(cf, 3, theDict);
      if (v8)
      {
        APSLogErrorAt();
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895096;
  }

  return v8;
}

uint64_t _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 209) && !*(a1 + 210))
  {
    return 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
  {
    OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStopAWDLDevicePresentListener(APConnectivityHelperRef)", a3, "[%{ptr}] Stopping AWDL device present listener.\n");
  }

  *(a1 + 209) = 0;
  _APConnectivityHelperUpdateInterfaceAddedListener(a1);
  if (!*(a1 + 216))
  {
    return 0;
  }

  v4 = _APConnectivityHelperDispatchEvent(a1, 0x6B, 0);
  if (v4)
  {
    APSLogErrorAt();
    APSLogErrorAt();
  }

  return v4;
}

void _APConnectivityHelperStopInterfaceAddedRetryTimer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    if (gLogCategory_APConnectivityHelper > 30)
    {
      goto LABEL_7;
    }

    if (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperStopInterfaceAddedRetryTimer(APConnectivityHelperRef)", a3, "[%{ptr}] Stop InterfaceAdded timer\n");
    }

    v3 = *(a1 + 96);
    if (v3)
    {
LABEL_7:
      dispatch_source_cancel(v3);
      dispatch_release(v3);
      *(a1 + 96) = 0;
    }
  }
}

uint64_t _APConnectivityHelperEnsureUSBInterfaceListenerStopped(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    return 0;
  }

  v1 = _APConnectivityHelperStopUSBInterfaceListener(a1);
  if (v1)
  {
    APSLogErrorAt();
  }

  return v1;
}

uint64_t _APConnectivityHelperEnsureIPv6AddressesListenerStopped(uint64_t a1)
{
  if (!*(a1 + 176))
  {
    return 0;
  }

  v1 = _APConnectivityHelperStopIPv6AddressListener(a1);
  if (v1)
  {
    APSLogErrorAt();
  }

  return v1;
}

uint64_t _APConnectivityHelperEnsureIPv4AddressesListenerStopped(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    return 0;
  }

  v1 = _APConnectivityHelperStopIPv4AddressListener(a1);
  if (v1)
  {
    APSLogErrorAt();
  }

  return v1;
}

uint64_t _APConnectivityHelperEnsureAWDLSoloSupportListenerStopped(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 154))
  {
    return 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
  {
    v6 = a1;
    OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStopAWDLSoloSupportListener(APConnectivityHelperRef)", a3, "[%{ptr}] Stopping AWDL solo support listener.\n");
  }

  [*(a1 + 144) endMonitoring];

  *(a1 + 144) = 0;
  *(a1 + 154) = 0;
  if (!*(a1 + 216))
  {
    return 0;
  }

  v4 = _APConnectivityHelperDispatchEvent(a1, 0x6C, 0);
  if (v4)
  {
    APSLogErrorAt();
    APSLogErrorAt();
  }

  return v4;
}

uint64_t _APConnectivityHelperStopUSBInterfaceListener(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    return 0;
  }

  _APConnectivityHelperStopListeningToDynamicStoreNetworkEntity(a1, *MEMORY[0x277CE16A0]);
  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
  {
    OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStopUSBInterfaceListener(APConnectivityHelperRef)", v2, "[%{ptr}] USB interface listener stopped.\n");
  }

  CFDictionaryRemoveAllValues(*(a1 + 112));
  *(a1 + 120) = 0;
  if (!*(a1 + 216))
  {
    return 0;
  }

  v3 = _APConnectivityHelperDispatchEvent(a1, 0x68, 0);
  if (v3)
  {
    APSLogErrorAt();
  }

  return v3;
}

uint64_t _APConnectivityHelperStopIPv6AddressListener(uint64_t a1)
{
  if (!*(a1 + 176))
  {
    return 0;
  }

  _APConnectivityHelperStopListeningToDynamicStoreNetworkEntity(a1, *MEMORY[0x277CE1690]);
  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
  {
    OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStopIPv6AddressListener(APConnectivityHelperRef)", v2, "[%{ptr}] IPv6 address listener stopped.\n");
  }

  CFDictionaryRemoveAllValues(*(a1 + 128));
  *(a1 + 176) = 0;
  if (!*(a1 + 216))
  {
    return 0;
  }

  v3 = _APConnectivityHelperDispatchEvent(a1, 0x6A, 0);
  if (v3)
  {
    APSLogErrorAt();
  }

  return v3;
}

uint64_t _APConnectivityHelperStopIPv4AddressListener(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    return 0;
  }

  _APConnectivityHelperStopListeningToDynamicStoreNetworkEntity(a1, *MEMORY[0x277CE1688]);
  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
  {
    OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStopIPv4AddressListener(APConnectivityHelperRef)", v2, "[%{ptr}] IPv4 address listener stopped.\n");
  }

  CFDictionaryRemoveAllValues(*(a1 + 136));
  *(a1 + 192) = 0;
  if (!*(a1 + 216))
  {
    return 0;
  }

  v3 = _APConnectivityHelperDispatchEvent(a1, 0x6E, 0);
  if (v3)
  {
    APSLogErrorAt();
  }

  return v3;
}

uint64_t _APConnectivityHelperStopListeningToEvent_cold_4(uint64_t a1)
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t __APConnectivityHelperRegisterForEvent_block_invoke_cold_1(uint64_t a1, uint64_t a2, int *a3, const __CFSet *a4)
{
  APConnectivityHelperGetEventString(*a3);
  CFSetGetCount(a4);
  return OUTLINED_FUNCTION_9(&gLogCategory_APConnectivityHelper, "OSStatus APConnectivityHelperRegisterForEvent(APConnectivityHelperRef, CFTypeRef, APConnectivityHelperEventType)_block_invoke", v5, "[%{ptr}] Registered client [%{ptr}] for event %'s. %ld registered clients");
}

BOOL __APConnectivityHelperRegisterForEvent_block_invoke_cold_4()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8_1();
  return *(v0 + 24) == 0;
}

uint64_t __APConnectivityHelperRegisterActivity_block_invoke_cold_5(uint64_t *a1, uint64_t a2, _DWORD *a3, CFSetRef theSet)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  if (*a3)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = "Wake on Wireless";
  }

  if (theSet)
  {
    Count = CFSetGetCount(theSet);
  }

  else
  {
    Count = 0;
  }

  return LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus APConnectivityHelperRegisterActivity(APConnectivityHelperRef, CFTypeRef, APConnectivityHelperActivityType)_block_invoke", 33554522, "[%{ptr}] Failed to register client [%{ptr}] for activity %'s. %ld registered clients", v4, v5, v6, Count);
}

void APConnectivityHelperCopyCurrentWiFiNetworkInfo_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t _APConnectivityHelperDispatchEventToClient_cold_1(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      EventString = APConnectivityHelperGetEventString(a2);
      return LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperDispatchEventToClient(APConnectivityHelperRef, CFTypeRef, APConnectivityHelperEventType, CFDictionaryRef)", 33554522, "[%{ptr}] Failed to dispatch event %'s to client [%{ptr}]. No event handler registered.", a3, EventString, a4);
    }
  }

  return result;
}

uint64_t _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted_cold_2(uint64_t a1, uint64_t a2)
{
  APSLogErrorAt();
  _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(a2, v3, v4);

  return APSLogErrorAt();
}

uint64_t _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_2(uint64_t a1, uint64_t a2)
{
  APSLogErrorAt();
  _APConnectivityHelperStopWiFiDeviceAttachmentListener(a2, v3, v4);
  APSLogErrorAt();

  return _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(a2, v5, v6);
}

void _APConnectivityHelperUpdateInterfaceAddedListener_cold_1(dispatch_object_t *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = ___APConnectivityHelperStartInterfaceAddedRetryTimer_block_invoke;
  a2[3] = &__block_descriptor_40_e5_v8__0l;
  a2[4] = a3;
  dispatch_source_set_event_handler(v7, a2);
  v8 = *a1;
  *a4 = MEMORY[0x277D85DD0];
  a4[1] = 3221225472;
  a4[2] = ___APConnectivityHelperStartInterfaceAddedRetryTimer_block_invoke_2;
  a4[3] = &__block_descriptor_40_e5_v8__0l;
  a4[4] = a3;
  dispatch_source_set_cancel_handler(v8, a4);
  v9 = *a1;
  v10 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v9, v10, 0x77359400uLL, 0x3B9ACA00uLL);
  dispatch_resume(*a1);
}

uint64_t _APConnectivityHelperEnsureWiFiPowerListenerStopped_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = _APConnectivityHelperDispatchEvent(a1, 0x66, 0);
  *a3 = v4;
  if (!v4)
  {
    return 1;
  }

  APSLogErrorAt();
  APSLogErrorAt();
  return 0;
}

void _APConnectivityHelperSendAWDLSoloSupportEvent_cold_2(char a1, CFMutableDictionaryRef theDict, uint64_t a3, _DWORD *a4)
{
  v7 = MEMORY[0x277CBED28];
  if (!a1)
  {
    v7 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(theDict, @"isAWDLSoloSupported", *v7);
  v8 = _APConnectivityHelperDispatchEvent(a3, 8, theDict);
  *a4 = v8;
  if (v8)
  {
    APSLogErrorAt();
  }

  CFRelease(theDict);
}

uint64_t _APConnectivityHelperSendAWDLSoloSupportEvent_cold_3()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t _APConnectivityHelperHandleUSBInterfaceChange_cold_2(uint64_t a1, uint64_t a2)
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

void _APConnectivityHelperHandleIPv4ChangedEvent_cold_2()
{
  OUTLINED_FUNCTION_10_5();
  CFDictionarySetValue(v4, @"networkInterfaceName", v2);
  CFDictionarySetValue(v0, @"IPv4Addresses", v3);
  Count = CFArrayGetCount(v3);
  v6 = *(v1 + 136);
  if (Count)
  {
    CFDictionarySetValue(v6, v2, v0);
  }

  else
  {
    CFDictionaryRemoveValue(v6, v2);
  }

  if (_APConnectivityHelperDispatchEvent(v1, 0xA, v0))
  {
    APSLogErrorAt();
  }

  CFRelease(v0);
}

uint64_t APTPacingControllerSetMaxPacingRate(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (a2)
  {
    if (*(a1 + 72) != a2)
    {
      *(a1 + 72) = a2;
      if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_7_0(&gLogCategory_APTPacingController, "OSStatus APTPacingControllerSetMaxPacingRate(APTPacingControllerRef, uint64_t)", v4, "[%{ptr}] maxPacingRate=%llu");
      }

      if (*(a1 + 80))
      {
        CFRetain(a1);
        dispatch_async_f(*(a1 + 40), a1, pacingController_updateYieldTimerIfNeededAsync);
      }
    }

    v5 = 0;
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294960591;
  }

  FigSimpleMutexUnlock();
  return v5;
}

void APTPacingControllerYieldOnQueueWithContinuationBlock_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  _Block_release(a2);
}

uint64_t APTNANDataSessionIssueReportCreate(const void *a1, const void *a2, CFTypeRef *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFNumberGetTypeID();
    v8 = 0;
    v9 = 4294960591;
    if (a2 && v6 == TypeID)
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFNumberGetTypeID())
      {
        v11 = objc_alloc_init(MEMORY[0x277D7BA80]);
        v8 = v11;
        if (v11)
        {
          [v11 setRtpSequenceNumber:a1];
          [v8 setRtpStartTime:a2];
          v9 = 0;
          *a3 = CFRetain(v8);
        }

        else
        {
          v9 = 4294960568;
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 4294960591;
  }

  return v9;
}

uint64_t APTransportPackageTCPGetHeaderSize_cold_1(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13(v2, "outHeaderSize is NULL");
  *a1 = result;
  return result;
}

uint64_t APTransportPackageTCPGetPayloadSize_cold_3(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13(v2, "inHeader is NULL");
  *a1 = result;
  return result;
}

uint64_t APTransportPackageTCPGetPayloadSize_cold_4(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13(v2, "outPayloadSize is NULL");
  *a1 = result;
  return result;
}

void connectionlistener_resumeInternal(_DWORD *a1)
{
  v2 = *a1;
  if (*(*a1 + 89))
  {
    v4 = -71862;
  }

  else if (*(v2 + 88))
  {
    v4 = 0;
  }

  else
  {
    v3 = ServerSocketPairOpen();
    if (v3)
    {
      v5 = v3;
      APSLogErrorAt();
      v4 = v5;
    }

    else
    {
      if (gLogCategory_APTConnectionListener <= 50 && (gLogCategory_APTConnectionListener != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTConnectionListener, "OSStatus connectionlistener_setupListenerSocket(APTConnectionListenerRef)", 33554482, "[%{ptr}] Started listening on port %d\n", v2, *(v2 + 24));
      }

      v4 = 0;
    }

    free(0);
    free(0);
    if (v4)
    {
      APSLogErrorAt();
    }

    else
    {
      *(v2 + 88) = 1;
    }
  }

  a1[2] = v4;
}

_DWORD *connectionlistener_getListeningPortInternal(_DWORD *result)
{
  v1 = result;
  v2 = -71863;
  v3 = *result;
  if (*(*result + 89))
  {
    v2 = -71862;
  }

  else if (*(v3 + 88))
  {
    v2 = 0;
    result[2] = *(v3 + 24);
  }

  else
  {
    result = APSLogErrorAt();
  }

  v1[3] = v2;
  return result;
}

void connectionlistener_invalidateInternal(uint64_t a1)
{
  v2 = *a1;
  if (*(*a1 + 89))
  {
    v3 = -71862;
  }

  else
  {
    connectionlistener_cleanUp(*a1);
    *(v2 + 89) = 1;
    if (*(v2 + 48))
    {
      CFRetain(v2);
      APSDispatchAsyncFHelper();
    }

    v3 = 0;
  }

  *(a1 + 8) = v3;
}

void APTConnectionListenerCreate_cold_2(const void *a1, _DWORD *a2)
{
  v4 = APSLogErrorAt();
  *a2 = OUTLINED_FUNCTION_4_9(v4, "dispatch_queue_create failed");
  CFRelease(a1);
}

uint64_t APTConnectionListenerCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_8(v2, "inCallbackQueue is NULL");
  *a1 = result;
  return result;
}

uint64_t APTConnectionListenerCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_8(v2, "inConnectedCallback is NULL");
  *a1 = result;
  return result;
}

uint64_t APTConnectionListenerCreate_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_8(v2, "outListener is NULL");
  *a1 = result;
  return result;
}

uint64_t APTConnectionListenerGetListeningPort_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_8(v2, "outPort is NULL");
  *a1 = result;
  return result;
}

uint64_t connectionlistener_listenerSocketEventHandler_cold_1(uint64_t a1, uint64_t a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTConnectionListener <= 90)
  {
    if (gLogCategory_APTConnectionListener != -1)
    {
      return LogPrintF(&gLogCategory_APTConnectionListener, "OSStatus connectionlistener_acceptConnection(APTConnectionListenerRef, SocketRef)", 33554522, "### [%{ptr}] %###s SocketAccept error: %d", a2, "OSStatus connectionlistener_acceptConnection(APTConnectionListenerRef, SocketRef)", a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APTConnectionListener, "OSStatus connectionlistener_acceptConnection(APTConnectionListenerRef, SocketRef)", 33554522, "### [%{ptr}] %###s SocketAccept error: %d", a2, "OSStatus connectionlistener_acceptConnection(APTConnectionListenerRef, SocketRef)", a1);
    }
  }

  return result;
}

int *connectionlistener_listenerSocketEventHandler_cold_4(unsigned int *a1)
{
  result = *a1;
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        return __error();
      }
    }
  }

  return result;
}

void __getHMMutableHomeManagerConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getHMMutableHomeManagerConfigurationClass(void)_block_invoke") description:{@"APHomeKitDeviceMonitor.m", 34, @"Unable to find class %s", "HMMutableHomeManagerConfiguration"}];
  __break(1u);
}

void HomeKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *HomeKitLibrary(void)") description:{@"APHomeKitDeviceMonitor.m", 28, @"%s", *a1}];
  __break(1u);
}

void __getHMHomeManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getHMHomeManagerClass(void)_block_invoke") description:{@"APHomeKitDeviceMonitor.m", 31, @"Unable to find class %s", "HMHomeManager"}];
  __break(1u);
}

uint64_t unbufnw_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"LastDeliveredPackage"))
  {
    if (*(v6 + 38))
    {
      unbufnwGuts_updatePackageTrackingInternal(v6);
      v7 = *(v6 + 304);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      a2 = 0;
      *a4 = v7;
      goto LABEL_23;
    }

LABEL_30:
    a2 = 4294954509;
    goto LABEL_23;
  }

  if (CFEqual(a2, @"MaxPackageSize"))
  {
    *bytes = 0;
    v8 = *(v6 + 208);
    if (!v8)
    {
      APSLogErrorAt();
      goto LABEL_30;
    }

    v9 = v8(bytes);
    if (v9)
    {
      a2 = v9;
      goto LABEL_39;
    }

    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (!Int64)
    {
LABEL_10:
      OUTLINED_FUNCTION_22_0();
LABEL_39:
      APSLogErrorAt();
      goto LABEL_23;
    }

LABEL_22:
    a2 = 0;
    goto LABEL_23;
  }

  if (CFEqual(a2, @"LocalNetworkIPAddress"))
  {
    *bytes = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
    if (!*(v6 + 36))
    {
      if (*(v6 + 248))
      {
        if (*(v6 + 312) != 5)
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_21_0();
          a2 = (v17 + 3);
          goto LABEL_23;
        }

        v11 = nw_connection_copy_connected_local_endpoint();
        if (v11)
        {
          a2 = v11;
          nw_endpoint_get_address(v11);
          SockAddrCopy();
          nw_release(a2);
          v12 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 28);
          *a4 = v12;
          if (!v12)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }

LABEL_38:
        OUTLINED_FUNCTION_22_0();
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (CFEqual(a2, @"LocalNetworkPort"))
  {
    if (*(v6 + 36))
    {
      v14 = *(v6 + 232);
      if (v14)
      {
        nw_listener_get_port(v14);
        v15 = CFNumberCreateInt64();
        *a4 = v15;
        if (v15)
        {
          goto LABEL_22;
        }

        goto LABEL_38;
      }

LABEL_37:
      APSLogErrorAt();
      OUTLINED_FUNCTION_21_0();
      a2 = (v19 - 5);
      goto LABEL_23;
    }

LABEL_36:
    APSLogErrorAt();
    OUTLINED_FUNCTION_21_0();
    a2 = v18 | 2u;
    goto LABEL_23;
  }

  if (gLogCategory_APTransportConnectionUnbufferedNW <= 30 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportConnectionUnbufferedNW)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus unbufnw_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", v13, "[%{ptr}] unknown property %@\n");
  }

  a2 = 4294954512;
LABEL_23:
  FigSimpleMutexUnlock();
  return a2;
}

uint64_t unbufnw_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v5 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APTransportConnectionUnbufferedNW <= 30 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportConnectionUnbufferedNW)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus unbufnw_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", v6, "[%{ptr}] set property %@ to %@\n");
  }

  if (!CFEqual(a2, @"PackageType"))
  {
    if (CFEqual(a2, @"RemoteNetworkIPAddress"))
    {
      if (*(v5 + 80))
      {
        goto LABEL_130;
      }

      if (a3)
      {
        v7 = CFGetTypeID(a3);
        if (v7 == APSNetworkAddressGetTypeID())
        {
          APSNetworkAddressGetSocketAddr();
          *(v5 + 88) = v48[0];
          *(v5 + 100) = *(v48 + 12);
LABEL_23:
          SockAddrSetPort();
          goto LABEL_34;
        }
      }

      goto LABEL_134;
    }

    if (CFEqual(a2, @"RemoteNetworkPort"))
    {
      if (*(v5 + 80))
      {
        goto LABEL_130;
      }

      if (a3)
      {
        v11 = CFGetTypeID(a3);
        if (v11 == CFNumberGetTypeID())
        {
          *(v5 + 116) = OUTLINED_FUNCTION_23();
          goto LABEL_23;
        }
      }

      goto LABEL_134;
    }

    if (CFEqual(a2, @"BoundInterfaceIndex"))
    {
      if (*(v5 + 80))
      {
        goto LABEL_130;
      }

      if (a3)
      {
        v18 = CFGetTypeID(a3);
        if (v18 == CFNumberGetTypeID())
        {
          OUTLINED_FUNCTION_17_2();
          *(v5 + 120) = CFGetInt64Ranged();
          goto LABEL_34;
        }
      }

      goto LABEL_134;
    }

    if (CFEqual(a2, @"BoundLocalNetworkIPAddress"))
    {
      OUTLINED_FUNCTION_10_6();
      if (v14 && *(v5 + 36))
      {
        if (*(v5 + 80))
        {
          goto LABEL_130;
        }

        if (a3)
        {
          v19 = CFGetTypeID(a3);
          if (v19 == APSNetworkAddressGetTypeID())
          {
            APSNetworkAddressGetSocketAddr();
            v20 = BYTE1(v48[0]);
            v21 = WORD1(v48[0]);
            v22 = BYTE4(v48[0]);
            v46 = *(v48 + 5);
            v47 = BYTE7(v48[0]);
            v23 = BYTE8(v48[0]);
            *v51 = *(v48 + 9);
            *&v51[15] = DWORD2(v48[1]);
            if (BYTE1(v48[0]) == 2)
            {
              if ((BYTE4(v48[0]) & 0xF0) != 0xE0)
              {
                goto LABEL_134;
              }
            }

            else if (BYTE1(v48[0]) != 30 || BYTE8(v48[0]) != 255)
            {
              goto LABEL_134;
            }

            *(v5 + 128) = v48[0];
            *(v5 + 129) = v20;
            *(v5 + 130) = v21;
            *(v5 + 132) = v22;
            *(v5 + 133) = v46;
            *(v5 + 135) = v47;
            *(v5 + 136) = v23;
            *(v5 + 137) = *v51;
            *(v5 + 152) = *&v51[15];
            goto LABEL_23;
          }
        }
      }

LABEL_134:
      APSLogErrorAt();
      v40 = -72322;
      goto LABEL_135;
    }

    if (CFEqual(a2, @"BoundLocalNetworkPort"))
    {
      if (*(v5 + 36))
      {
        if (*(v5 + 80))
        {
          goto LABEL_130;
        }

        if (a3)
        {
          v24 = CFGetTypeID(a3);
          if (v24 == CFNumberGetTypeID())
          {
            OUTLINED_FUNCTION_17_2();
            *(v5 + 124) = CFGetInt64Ranged();
            goto LABEL_23;
          }
        }
      }

      goto LABEL_134;
    }

    if (CFEqual(a2, @"HopLimit"))
    {
      if (*(v5 + 80))
      {
LABEL_130:
        APSLogErrorAt();
        v40 = -72342;
LABEL_135:
        v50 = v40;
        goto LABEL_34;
      }

      if (!a3)
      {
        goto LABEL_134;
      }

      v25 = CFGetTypeID(a3);
      if (v25 != CFNumberGetTypeID())
      {
        goto LABEL_134;
      }

      OUTLINED_FUNCTION_17_2();
      CFGetInt64Ranged();
      v26 = *(v5 + 160);
      *(v5 + 160) = a3;
    }

    else
    {
      if (CFEqual(a2, @"QualityOfService"))
      {
        if (a3)
        {
          v27 = CFGetTypeID(a3);
          if (v27 == CFNumberGetTypeID())
          {
            v28 = OUTLINED_FUNCTION_23();
            if (*(v5 + 272) != v28)
            {
              *(v5 + 272) = v28;
              TrafficClassForSocketQoS = APTransportConnectionGetTrafficClassForSocketQoS(v28);
              if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus unbufnw_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] socketQoS=%u (trafficClass=%u)", *(v5 + 16), v28, TrafficClassForSocketQoS);
              }

              if (TrafficClassForSocketQoS != *(v5 + 276))
              {
                *(v5 + 276) = TrafficClassForSocketQoS;
                if (*(v5 + 248))
                {
                  nw_connection_reset_traffic_class();
                }
              }
            }

            goto LABEL_34;
          }
        }

        goto LABEL_134;
      }

      if (!CFEqual(a2, @"BBufBackingAllocator"))
      {
        if (CFEqual(a2, @"ShouldReceivePackages"))
        {
          if (a3)
          {
            v31 = CFGetTypeID(a3);
            if (v31 == CFBooleanGetTypeID())
            {
              Value = CFBooleanGetValue(a3);
              if (!atomic_exchange((v5 + 436), Value) && Value)
              {
                CFRetain(v5);
                OUTLINED_FUNCTION_3_9();
                v42 = 0x40000000;
                v43 = __unbufnw_SetProperty_block_invoke;
                v44 = &__block_descriptor_tmp_27_0;
                v45 = v5;
                dispatch_async(v33, block);
              }

              goto LABEL_34;
            }
          }
        }

        else
        {
          if (!CFEqual(a2, @"DataPacer"))
          {
            if (gLogCategory_APTransportConnectionUnbufferedNW <= 30 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportConnectionUnbufferedNW)))
            {
              OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus unbufnw_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", v35, "[%{ptr}] unknown property '%@'");
            }

            goto LABEL_34;
          }

          if (!a3 || (v36 = CFGetTypeID(a3), v36 == APSDataPacerGetTypeID()))
          {
            OUTLINED_FUNCTION_12_2();
            if (!v37 && !*(v5 + 40))
            {
              v38 = *(v5 + 280);
              if (v38 != a3)
              {
                if (v38)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_2_11();
                  FigNotificationCenterRemoveWeakListener();
                  v39 = *(v5 + 280);
                }

                else
                {
                  v39 = 0;
                }

                *(v5 + 280) = a3;
                if (a3)
                {
                  CFRetain(a3);
                }

                if (v39)
                {
                  CFRelease(v39);
                }

                if (*(v5 + 280))
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_2_11();
                  FigNotificationCenterAddWeakListener();
                }

                unbufnwGuts_updateDataPacingInternal(v5);
              }
            }

            goto LABEL_34;
          }
        }

        goto LABEL_134;
      }

      if (!a3)
      {
        goto LABEL_134;
      }

      v30 = CFGetTypeID(a3);
      if (v30 != CFAllocatorGetTypeID())
      {
        goto LABEL_134;
      }

      if (*(v5 + 80))
      {
        goto LABEL_130;
      }

      v26 = *(v5 + 216);
      *(v5 + 216) = a3;
    }

    CFRetain(a3);
    if (v26)
    {
      CFRelease(v26);
    }

    goto LABEL_34;
  }

  v49 = 0;
  memset(v48, 0, sizeof(v48));
  if (*(v5 + 80))
  {
    goto LABEL_130;
  }

  if (!a3)
  {
    v34 = -72322;
    goto LABEL_107;
  }

  if (CFEqual(a3, @"Datagram"))
  {
    LODWORD(v48[0]) = 0;
    *(&v48[0] + 1) = APTransportPackageDatagramCreate;
    *(&v48[1] + 1) = 0;
    v49 = 0;
    *&v48[1] = APTransportPackageDatagramCreateWithBBuf;
  }

  else
  {
    if (CFEqual(a3, @"RTPBuffered"))
    {
      HeaderSize = APTPackageRTPBufferedGetHeaderSize(v48, v8);
      if (HeaderSize)
      {
        v34 = HeaderSize;
        goto LABEL_107;
      }

      *(&v48[0] + 1) = APTPackageRTPBufferedCreate;
      *&v48[1] = APTPackageRTPBufferedCreateWithBBuf;
      *(&v48[1] + 1) = APTPackageRTPBufferedGetPayloadSize;
      v10 = APTPackageRTPBufferedGetMaxPayloadSize;
    }

    else
    {
      if (!CFEqual(a3, @"BufferedAPAP"))
      {
        v34 = -72322;
LABEL_41:
        v50 = v34;
        APSLogErrorAt();
        goto LABEL_34;
      }

      v13 = APTransportPackageBufferedAPAPGetHeaderSize(v48, v12);
      if (v13)
      {
        v34 = v13;
        goto LABEL_107;
      }

      *(&v48[0] + 1) = APTransportPackageBufferedAPAPCreate;
      *&v48[1] = APTransportPackageBufferedAPAPCreateWithBBuf;
      *(&v48[1] + 1) = APTransportPackageBufferedAPAPGetPayloadSize;
      v10 = APTransportPackageBufferedAPAPGetMaxPayloadSize;
    }

    v49 = v10;
  }

  if (!LODWORD(v48[0]))
  {
    OUTLINED_FUNCTION_10_6();
    if (!v14)
    {
      v34 = -72322;
LABEL_107:
      APSLogErrorAt();
      goto LABEL_41;
    }
  }

  v50 = 0;
  v15 = *(v5 + 168);
  *(v5 + 168) = a3;
  CFRetain(a3);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = v48[1];
  *(v5 + 176) = v48[0];
  *(v5 + 192) = v16;
  *(v5 + 208) = v49;
LABEL_34:
  FigSimpleMutexUnlock();
  return v50;
}

void unbufnwGuts_invalidateInternal(uint64_t result)
{
  if (!atomic_exchange((result + 28), 1u))
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW)))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_3_1();
      LogPrintF(v2, v3, v4, v5);
    }

    if (*(result + 280))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_11();
      FigNotificationCenterRemoveWeakListener();
    }

    if ((*(result + 312) | 2) != 6)
    {

      unbufnwGuts_updateStatusInternal(result, 6, 0);
    }
  }
}

void unbufnwGuts_updateStatusInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 312);
  if (v4 == a2)
  {
    return;
  }

  if (v4 == 4 || v4 == 6)
  {

    APSLogErrorAt();
    return;
  }

  v6 = a2;
  if (a3)
  {
    v7 = 90;
  }

  else
  {
    v7 = 50;
  }

  if (v7 >= gLogCategory_APTransportConnectionUnbufferedNW)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v4 = *(a1 + 312);
    }

    v8 = *(a1 + 16);
    StatusString = APTransportConnectionGetStatusString(v4);
    v10 = APTransportConnectionGetStatusString(v6);
    LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus unbufnwGuts_updateStatusInternal(APTransportConnectionUnbufferedNWGutsRef, APTransportConnectionStatus, OSStatus)", v7 | 0x2000000u, "[%{ptr}] status '%@' -> '%@'%?{end} err=%#m", v8, StatusString, v10, a3 == 0, a3);
  }

LABEL_12:
  *(a1 + 312) = v6;
  if (v6 != 5)
  {
    v11 = *(a1 + 248);
    if (!v11)
    {
      v12 = *(a1 + 240);
      if (v12)
      {
        nw_connection_group_cancel(v12);
      }

      v13 = *(a1 + 232);
      if (v13)
      {
        nw_listener_cancel(v13);
      }

      if (!a3)
      {
        goto LABEL_19;
      }

LABEL_21:
      Int64 = CFNumberCreateInt64();
      goto LABEL_22;
    }

    nw_connection_cancel(v11);
    if (a3)
    {
      goto LABEL_21;
    }
  }

LABEL_19:
  Int64 = 0;
LABEL_22:
  if (unbufnwGuts_callEventCallbackInternal(a1))
  {
    APSLogErrorAt();
    if (!Int64)
    {
      return;
    }
  }

  else if (!Int64)
  {
    return;
  }

  CFRelease(Int64);
}

uint64_t unbufnwGuts_updateDataPacingInternal(uint64_t a1)
{
  v12 = -1;
  result = OUTLINED_FUNCTION_13_4(a1);
  if (!v2)
  {
    v3 = result;
    if (*(result + 312) == 5 && (*(result + 440) || *(result + 264)))
    {
      v4 = *(result + 40);
      if (v4)
      {
        v12 = *(result + 40);
      }

      else
      {
        v5 = *(result + 280);
        if (v5)
        {
          v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v6 || v6(v5, &v12))
          {
            return APSLogErrorAt();
          }
        }

        v4 = v12;
      }

      if (v4 == -1)
      {
        if (gLogCategory_APTransportConnectionUnbufferedNW > 50 || gLogCategory_APTransportConnectionUnbufferedNW == -1 && !OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_14_3();
      }

      else if (gLogCategory_APTransportConnectionUnbufferedNW > 50 || gLogCategory_APTransportConnectionUnbufferedNW == -1 && !OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW))
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_3_1();
      LogPrintF(v7, v8, v9, v10);
LABEL_23:
      v11 = *(v3 + 440);
      if (v11)
      {
        return APTPacingControllerSetMaxPacingRate(v11, v12);
      }

      else
      {
        result = *(v3 + 264);
        if (result)
        {
          return nw_tcp_set_max_pacing_rate();
        }
      }
    }
  }

  return result;
}

uint64_t unbufnwGuts_callEventCallbackInternal(uint64_t a1)
{
  values[2] = *MEMORY[0x277D85DE8];
  v1 = OUTLINED_FUNCTION_13_4(a1);
  if (v3)
  {
    return 0;
  }

  v4 = v1;
  if (!*(v1 + 360))
  {
    return 0;
  }

  v5 = v2;
  Int64 = CFNumberCreateInt64();
  if (Int64)
  {
    v7 = Int64;
    v8 = *MEMORY[0x277CBECE8];
    values[0] = v7;
    values[1] = v5;
    if (v5)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = CFArrayCreate(v8, values, v9, MEMORY[0x277CBF128]);
    if (v10)
    {
      v11 = v10;
      v12 = CFArrayEnsureCreatedAndAppend();
      if (v12)
      {
        APSLogErrorAt();
      }

      else
      {
        unbufnwGuts_drainEventQueueAsyncOnCallbackQueue(v4, v4[47]);
      }

      CFRelease(v7);
      v13 = v11;
    }

    else
    {
      v12 = 4294894973;
      APSLogErrorAt();
      v13 = v7;
    }

    CFRelease(v13);
  }

  else
  {
    v12 = 4294894973;
    APSLogErrorAt();
  }

  return v12;
}

void __unbufnwGuts_drainEventQueueAsyncOnCallbackQueue_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = atomic_load((*(a1 + 32) + 28));
  v3 = *(a1 + 32);
  if (!v2)
  {
    if (*(v3 + 384))
    {
      if (*(v3 + 376) == *(a1 + 40))
      {
        CFArrayGetCount(*(v3 + 384));
        OUTLINED_FUNCTION_1_2();
        CFArrayApplyBlock();
        v4 = *(*(a1 + 32) + 384);
        if (v4)
        {
          CFRelease(v4);
          *(*(a1 + 32) + 384) = 0;
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  dispatch_release(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t unbufnwGuts_updatePackageTrackingInternal(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_4(a1);
  if (!v4)
  {
    v5 = result;
    if (*(result + 312) == 5)
    {
      if (v2)
      {
        v6 = v3;
        APSFlatQueueEnqueue();
        *(v5 + 296) += v6;
      }

      result = APSFlatQueueIsEmpty();
      if (!result)
      {
        nw_tcp_get_available_send_buffer(*(v5 + 264));
        if (gLogCategory_APTransportConnectionUnbufferedNW <= 30 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportConnectionUnbufferedNW)))
        {
          OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_updatePackageTrackingInternal(APTransportConnectionUnbufferedNWGutsRef, APTransportPackageRef, size_t)", v7, "[%{ptr}] updatePackageTracking() lastSendSeq=%u unsentByteCount=%u lastDeliveredSeq=%u");
        }

        OUTLINED_FUNCTION_3_9();
        return APSFlatQueueDequeueWhileB();
      }
    }
  }

  return result;
}

uint64_t __unbufnwGuts_updatePackageTrackingInternal_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 - *(a1 + 40) > 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  v4 = *(a2 + 8);
  *(v2 + 304) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 1;
}

void unbufnwGuts_connectionReceivePackages(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_4(a1);
  if (!v2)
  {
    v3 = v1;
    if (*(v1 + 412) == 3)
    {
      if (atomic_load((v1 + 436)))
      {
        if (!*(v1 + 437))
        {
          *(v1 + 437) = 1;
          *(v1 + 472) = 0;
          CFRetain(v1);
          APTTrafficMetricsMessageReadStarted(*(v3 + 448), 1);
          OUTLINED_FUNCTION_10_6();
          if (v6)
          {
            nw_connection_receive_multiple();
          }

          else
          {
            v7 = *(v3 + 176);
            v8[0] = MEMORY[0x277D85DD0];
            v8[1] = 0x40000000;
            v8[2] = __unbufnwGuts_connectionReceivePackages_block_invoke_2;
            v8[3] = &__block_descriptor_tmp_31;
            v8[4] = v3;
            nw_connection_receive(v5, v7, v7, v8);
          }
        }
      }
    }
  }
}

BOOL unbufnwGuts_connectionHandlePotentialDisconnect(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_4(a1);
  if (v5)
  {
    return 1;
  }

  v6 = v4;
  v7 = v1;
  if (*(v1 + 412) != 3 && *(v1 + 408) != 2)
  {
    return 1;
  }

  if (v4)
  {
    error_code = nw_error_get_error_code(v4);
    v10 = nw_error_copy_cf_error(v6);
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 90 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "Boolean unbufnwGuts_connectionHandlePotentialDisconnect(APTransportConnectionUnbufferedNWGutsRef, nw_content_context_t, _Bool, nw_error_t)", 33554522, "[%{ptr}] received ERROR '%@', disconnecting...", *(v7 + 16), v10);
    }

    unbufnwGuts_updateStatus(v7, error_code);
    if (v10)
    {
      CFRelease(v10);
    }

    return 1;
  }

  result = 0;
  if (v2)
  {
    if (v3)
    {
      result = nw_content_context_get_is_final(v2);
      if (result)
      {
        if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW)))
        {
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_3_1();
          LogPrintF(v11, v12, v13, v14);
        }

        unbufnwGuts_updateStatus(v7, 0);
        return 1;
      }
    }
  }

  return result;
}

void unbufnwGuts_connectionHandlePackagePayload(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4, int a5)
{
  cf = 0;
  blockBufferOut = 0;
  if (!unbufnwGuts_connectionHandlePotentialDisconnect(a1))
  {
    if (a2)
    {
      size = dispatch_data_get_size(a2);
      v10 = *(a1 + 176);
      v11 = MEMORY[0x23EEDC950](*(a1 + 216), size + v10, 2348728618, 0);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 176);
        if (v13 && (v14 = CMBlockBufferCopyDataBytes(*(a1 + 256), 0, v13, v11), v14))
        {
          v25 = v14;
        }

        else
        {
          v15 = APSDispatchDataCopyBytes();
          if (v15)
          {
            v25 = v15;
          }

          else
          {
            v16 = *MEMORY[0x277CBECE8];
            v17 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v12, size + v10, *(a1 + 216), 0, 0, size + v10, 0, &blockBufferOut);
            if (!v17)
            {
              v18 = (*(a1 + 192))(v16, blockBufferOut, &cf);
              if (!v18)
              {
                if (*(a1 + 39))
                {
                  v19 = 0;
                  if (a3)
                  {
                    if (*(a1 + 472))
                    {
                      v21 = nw_content_context_copy_protocol_metadata(a3, *(a1 + 64));
                      v19 = v21;
                      if (v21)
                      {
                        if (nw_ip_metadata_get_receive_time(v21))
                        {
                          v22 = cf;
                          v23 = NanosecondsToUpTicks();
                          APTransportPackageSetArrivalTicks(v22, v23 - *(a1 + 464) + *(a1 + 456));
                        }
                      }
                    }
                  }
                }

                else
                {
                  v19 = 0;
                }

                FigSimpleMutexLock();
                unbufnwGuts_callEventCallbackInternal(a1);
                FigSimpleMutexUnlock();
                goto LABEL_12;
              }

              v24 = v18;
              APSLogErrorAt();
              goto LABEL_31;
            }

            v25 = v17;
          }
        }

        APSLogErrorAt();
        unbufnwGuts_updateStatus(a1, v25);
        CFAllocatorDeallocate(*(a1 + 216), v12);
        goto LABEL_34;
      }

      APSLogErrorAt();
      v24 = 4294894973;
LABEL_31:
      unbufnwGuts_updateStatus(a1, v24);
LABEL_34:
      v19 = 0;
      goto LABEL_14;
    }

    if (gLogCategory_APTransportConnectionUnbufferedNW <= 60 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_14_3();
      LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_connectionHandlePackagePayload(APTransportConnectionUnbufferedNWGutsRef, dispatch_data_t, nw_content_context_t, _Bool, _Bool, nw_error_t)", 33554492, "[%{ptr}] handlePackagePayload() inData is NULL!");
    }
  }

  v19 = 0;
LABEL_12:
  APTTrafficMetricsMessageProcessed(*(a1 + 448));
  if (a5)
  {
    CFRetain(a1);
    OUTLINED_FUNCTION_1_2();
    v27 = 0x40000000;
    v28 = __unbufnwGuts_connectionHandlePackagePayload_block_invoke;
    v29 = &__block_descriptor_tmp_37;
    v30 = a1;
    dispatch_async(v20, block);
  }

LABEL_14:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  nw_release(v19);
}

void __unbufnwGuts_connectionHandlePackageHeader_block_invoke(uint64_t a1, dispatch_data_t data, NSObject *a3, uint64_t a4)
{
  v8 = *(*(a1 + 32) + 448);
  if (data)
  {
    size = dispatch_data_get_size(data);
  }

  else
  {
    size = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    error_code = nw_error_get_error_code(v10);
  }

  else
  {
    error_code = 0;
  }

  APTTrafficMetricsMessageReadFinished(v8, size, error_code);
  unbufnwGuts_connectionHandlePackagePayload(*(a1 + 32), data, a3, a4, *(a1 + 48));
  v12 = *(a1 + 32);

  CFRelease(v12);
}

uint64_t unbufnwGuts_updateStatus(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  unbufnwGuts_updateStatusInternal(a1, 6, a2);
  FigSimpleMutexUnlock();

  return FigSimpleMutexUnlock();
}

void __unbufnwGuts_connectionHandlePackagePayload_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 437) = 0;
  unbufnwGuts_connectionReceivePackages(v2);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t unbufnw_Resume(NSObject *a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v71 = 0;
  v72 = &v71;
  v73 = 0x2000000000;
  v74 = 0;
  v8 = *CMBaseObjectGetDerivedStorage();
  v65 = 0;
  v66 = &v65;
  v67 = 0x3000000000;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  v9 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
  if (*(v8 + 80))
  {
    goto LABEL_99;
  }

  if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW)))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_3_1();
    LogPrintF(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_12_2();
  if (v14)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_0_6();
    obj = 0;
    v17 = 0;
    OUTLINED_FUNCTION_9_5();
    v21 = v50 - 3;
    goto LABEL_29;
  }

  if (!*(v8 + 168))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_0_6();
    obj = 0;
    v17 = 0;
    OUTLINED_FUNCTION_9_5();
    v21 = v51 - 4;
    goto LABEL_29;
  }

  v15 = *(v8 + 176);
  if (v15)
  {
    v16 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, v15, *MEMORY[0x277CBECF0], 0, 0, v15, 1u, (v8 + 256));
    if (OUTLINED_FUNCTION_20_1(v16))
    {
      APSLogErrorAt();
LABEL_99:
      OUTLINED_FUNCTION_0_6();
      obj = 0;
LABEL_112:
      v17 = 0;
      goto LABEL_82;
    }
  }

  if (*(v8 + 120))
  {
    v17 = nw_interface_create_with_index();
    if (!v17)
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_0_6();
      obj = 0;
LABEL_125:
      OUTLINED_FUNCTION_9_5();
      goto LABEL_29;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v8 + 32);
  v5 = "ing.\n";
  obj = v17;
  switch(v18)
  {
    case 1903520099:
      configure_quic[0] = MEMORY[0x277D85DD0];
      configure_quic[1] = 0x40000000;
      configure_quic[2] = __unbufnw_Resume_block_invoke_2;
      configure_quic[3] = &unk_278BC8568;
      configure_quic[4] = &v71;
      configure_quic[5] = v8;
      quic = nw_parameters_create_quic(configure_quic);
      if (!quic)
      {
LABEL_108:
        APSLogErrorAt();
        OUTLINED_FUNCTION_5_11();
        v2 = 0;
        goto LABEL_109;
      }

      if (*(v72 + 6))
      {
        APSLogErrorAt();
        OUTLINED_FUNCTION_5_11();
        v2 = 0;
        v3 = 0;
LABEL_111:
        OUTLINED_FUNCTION_4_10();
        goto LABEL_112;
      }

      break;
    case 1601528944:
      quic = nw_parameters_create_secure_udp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
      if (!quic)
      {
        goto LABEL_108;
      }

      break;
    case 1601463152:
      quic = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], &__block_literal_global_8);
      if (!quic)
      {
        goto LABEL_108;
      }

      break;
    default:
      OUTLINED_FUNCTION_0_6();
LABEL_28:
      v17 = 0;
      OUTLINED_FUNCTION_9_5();
      v21 = v20 + 1;
LABEL_29:
      *(v19 + 6) = v21;
      goto LABEL_82;
  }

  nw_parameters_set_context();
  nw_parameters_set_use_p2p();
  nw_parameters_require_interface(quic, v17);
  if ((*(v8 + 24) & 0x20) != 0)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 30 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus unbufnw_Resume(APTransportConnectionRef)", 33554462, "[%{ptr}] Prohibiting cellular interfaces", a1);
    }

    nw_parameters_prohibit_interface_type(quic, nw_interface_type_cellular);
  }

  v22 = nw_parameters_copy_default_protocol_stack(quic);
  v2 = v22;
  if (!v22)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_5_11();
LABEL_109:
    v3 = 0;
    goto LABEL_122;
  }

  v3 = nw_protocol_stack_copy_internet_protocol(v22);
  if (!v3)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_5_11();
LABEL_122:
    v5 = 0;
    goto LABEL_123;
  }

  OUTLINED_FUNCTION_10_6();
  if (v23)
  {
    nw_ip_options_set_disable_fragmentation(v3, 0);
  }

  if (*(v8 + 39))
  {
    MEMORY[0x23EEDE850](v3, 1);
  }

  if (*(v8 + 160))
  {
    v24 = CFGetInt64Ranged();
    MEMORY[0x23EEDE870](v3, v24);
  }

  if (*(v8 + 36))
  {
    v25 = *(v8 + 129);
    if (v25 == 30)
    {
      if (*(v8 + 136) == 255)
      {
LABEL_45:
        if (*(v8 + 124))
        {
          v4 = (v8 + 128);
          nw_parameters_set_reuse_local_address(quic, 1);
          address = nw_endpoint_create_address((v8 + 128));
          v5 = address;
          if (!address)
          {
            APSLogErrorAt();
            OUTLINED_FUNCTION_5_11();
LABEL_123:
            multicast = 0;
            goto LABEL_124;
          }

          multicast = nw_group_descriptor_create_multicast(address);
          if (!multicast)
          {
            APSLogErrorAt();
            OUTLINED_FUNCTION_5_11();
LABEL_124:
            a1 = 0;
            v17 = 0;
            goto LABEL_125;
          }

          if (!*(v8 + 89))
          {
            v17 = 0;
            goto LABEL_74;
          }

          if (*(v8 + 89) == *(v8 + 129))
          {
            v17 = nw_endpoint_create_address((v8 + 88));
            if (v17)
            {
              nw_multicast_group_descriptor_set_specific_source(multicast, v17);
LABEL_74:
              nw_multicast_group_descriptor_set_disable_unicast_traffic(multicast, 1);
              a1 = nw_connection_group_create(multicast, quic);
              if (!a1)
              {
                APSLogErrorAt();
                OUTLINED_FUNCTION_5_11();
                goto LABEL_125;
              }

              v39 = unbufnwGuts_handleNewConnectionGroupInternal(v8, a1);
              if (!OUTLINED_FUNCTION_20_1(v39))
              {
                if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW)))
                {
                  blockBufferOut = *(v8 + 16);
                  OUTLINED_FUNCTION_3_1();
                  LogPrintF(v40, v41, v42, v43, blockBufferOut, v8 + 128);
                }

                OUTLINED_FUNCTION_5_11();
                goto LABEL_81;
              }

              APSLogErrorAt();
              OUTLINED_FUNCTION_5_11();
              goto LABEL_82;
            }

            APSLogErrorAt();
            OUTLINED_FUNCTION_5_11();
LABEL_106:
            a1 = 0;
            goto LABEL_125;
          }

          APSLogErrorAt();
          OUTLINED_FUNCTION_5_11();
        }

        else
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_5_11();
          v5 = 0;
          multicast = 0;
        }

        a1 = 0;
        goto LABEL_28;
      }
    }

    else if (v25 == 2 && (*(v8 + 132) & 0xF0) == 0xE0)
    {
      goto LABEL_45;
    }

    v29 = *(v8 + 124);
    if (*(v8 + 124))
    {
      *__str = 0;
      if (snprintf(__str, 8uLL, "%u", v29) < 1)
      {
        v55 = -6762;
      }

      else
      {
        v30 = nw_listener_create_with_port(__str, quic);
        if (v30)
        {
          v4 = v30;
LABEL_62:
          v31 = CFRetain(v8);
          v66[3] = v31;
          v32 = dispatch_semaphore_create(0);
          v33 = v66;
          v66[5] = v32;
          if (v32)
          {
            CFRetain(v33[3]);
            dispatch_retain(v66[5]);
            nw_listener_set_queue(v4, *(v8 + 400));
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 0x40000000;
            v63[2] = __unbufnw_Resume_block_invoke_3;
            v63[3] = &unk_278BC8590;
            v63[4] = &v65;
            MEMORY[0x23EEDE8D0](v4, v63);
            nw_listener_set_new_connection_limit(v4, 0);
            if (*(v8 + 32) == 1903520099)
            {
              handler[0] = MEMORY[0x277D85DD0];
              handler[1] = 0x40000000;
              handler[2] = __unbufnw_Resume_block_invoke_4;
              handler[3] = &__block_descriptor_tmp_51_1;
              handler[4] = v8;
              nw_listener_set_new_connection_group_handler(v4, handler);
            }

            else
            {
              OUTLINED_FUNCTION_3_9();
              v58 = 0x40000000;
              v59 = __unbufnw_Resume_block_invoke_5;
              v60 = &__block_descriptor_tmp_53;
              v61 = v8;
              nw_listener_set_new_connection_handler(v4, v57);
            }

            nw_listener_start(v4);
            a1 = v66[5];
            v34 = dispatch_time(0, 10000000000);
            if (dispatch_semaphore_wait(a1, v34))
            {
              APSLogErrorAt();
              nw_listener_cancel(v4);
              v9 = 0;
              OUTLINED_FUNCTION_4_10();
              v17 = 0;
              v19 = v72;
              v21 = -6722;
              goto LABEL_29;
            }

            if (!OUTLINED_FUNCTION_20_1(*(v66 + 9)))
            {
              if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW)))
              {
                a1 = *(v8 + 16);
                port = nw_listener_get_port(v4);
                OUTLINED_FUNCTION_3_1();
                LogPrintF(v35, v36, v37, v38, a1, port);
              }

              *(v8 + 232) = nw_retain(v4);
              nw_listener_set_new_connection_limit(v4, 1u);
              v9 = 0;
              OUTLINED_FUNCTION_4_10();
              v17 = 0;
              goto LABEL_81;
            }

            APSLogErrorAt();
            nw_listener_cancel(v4);
            v9 = 0;
            goto LABEL_111;
          }

LABEL_121:
          APSLogErrorAt();
          v9 = 0;
          goto LABEL_122;
        }

        OUTLINED_FUNCTION_21_0();
        v55 = v52;
      }

      APSLogErrorAt();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_4_10();
      v17 = 0;
      v19 = v72;
      v21 = v55;
      goto LABEL_29;
    }

    v4 = nw_listener_create(quic);
    if (!v4)
    {
      goto LABEL_121;
    }

    goto LABEL_62;
  }

  v27 = nw_endpoint_create_address((v8 + 88));
  v17 = v27;
  if (!v27)
  {
    APSLogErrorAt();
    v9 = 0;
LABEL_105:
    v4 = 0;
    v5 = 0;
    multicast = 0;
    goto LABEL_106;
  }

  v9 = nw_connection_create(v27, quic);
  if (!v9)
  {
    APSLogErrorAt();
    goto LABEL_105;
  }

  v28 = unbufnwGuts_handleNewConnectionInternal(v8, v9, 0);
  if (!OUTLINED_FUNCTION_20_1(v28))
  {
    v4 = 0;
    OUTLINED_FUNCTION_4_10();
LABEL_81:
    *(v8 + 80) = 1;
    goto LABEL_82;
  }

  APSLogErrorAt();
  v4 = 0;
  OUTLINED_FUNCTION_4_10();
LABEL_82:
  v44 = *(v72 + 6);
  if (!v44)
  {
    goto LABEL_83;
  }

  if (gLogCategory_APTransportConnectionUnbufferedNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW != -1)
    {
LABEL_92:
      LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus unbufnw_Resume(APTransportConnectionRef)", 33554522, "[%{ptr}] Resume failed err=%#m", *(v8 + 16), v44);
      goto LABEL_93;
    }

    if (_LogCategory_Initialize())
    {
      v44 = *(v72 + 6);
      goto LABEL_92;
    }
  }

LABEL_93:
  unbufnwGuts_invalidateInternal(v8);
LABEL_83:
  FigSimpleMutexUnlock();
  FigSimpleMutexUnlock();
  nw_release(v17);
  nw_release(obj);
  nw_release(quic);
  nw_release(v9);
  nw_release(v4);
  nw_release(v2);
  nw_release(v3);
  nw_release(v5);
  nw_release(multicast);
  nw_release(a1);
  v45 = v66;
  v46 = v66[3];
  if (v46)
  {
    CFRelease(v46);
    v45 = v66;
  }

  v47 = v45[5];
  if (v47)
  {
    dispatch_release(v47);
  }

  v48 = *(v72 + 6);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);
  return v48;
}

void __unbufnwGuts_handleNewConnectionInternal_block_invoke(uint64_t a1, uint64_t a2, nw_error_t error)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  *(v4 + 412) = v3;
  if (error_code)
  {
    v6 = 90;
  }

  else
  {
    v6 = 50;
  }

  if (v6 >= gLogCategory_APTransportConnectionUnbufferedNW && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    v7 = *(v4 + 16);
    v8 = nw_connection_state_to_string();
    LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_connectionStateChangedHandler(APTransportConnectionUnbufferedNWGutsRef, nw_connection_state_t, nw_error_t)", v6 | 0x2000000u, "[%{ptr}] connection state '%s'%?{end} err=%#m", v7, v8, error_code == 0, error_code);
  }

  v9 = 0;
  v10 = v3 - 1;
  v11 = 0;
  v12 = 0;
  switch(v10)
  {
    case 0:
      if (!error_code)
      {
        goto LABEL_35;
      }

      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_12_2();
      if (v16)
      {
        goto LABEL_35;
      }

      APTTrafficMetricsConnectionFormed(*(v4 + 448));
      FigSimpleMutexLock();
      FigSimpleMutexLock();
      if (*(v4 + 32) == 1601463152)
      {
        *(v4 + 264) = nw_connection_copy_protocol_metadata(*(v4 + 248), *(v4 + 56));
      }

      nw_connection_reset_traffic_class();
      v9 = nw_connection_copy_connected_path();
      v12 = nw_path_copy_effective_local_endpoint(v9);
      v11 = nw_path_copy_effective_remote_endpoint(v9);
      enumerate_block[0] = MEMORY[0x277D85DD0];
      enumerate_block[1] = 0x40000000;
      enumerate_block[2] = __unbufnwGuts_connectionStateChangedHandler_block_invoke;
      enumerate_block[3] = &unk_278BC8618;
      enumerate_block[4] = &v35;
      nw_path_enumerate_interfaces(v9, enumerate_block);
      if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW)))
      {
        v17 = *(v4 + 16);
        if (*(v4 + 36))
        {
          v18 = "from";
        }

        else
        {
          v18 = "to";
        }

        address = nw_endpoint_get_address(v11);
        if (*(v4 + 36))
        {
          v20 = "to";
        }

        else
        {
          v20 = "from";
        }

        v21 = nw_endpoint_get_address(v12);
        v22 = v36[3];
        if (v22)
        {
          name = nw_interface_get_name(v22);
        }

        else
        {
          name = "unknown";
        }

        mach_absolute_time();
        UpTicksToSecondsF();
        v33 = v28 * 1000.0;
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v29, v30, v31, v32, v17, v18, address, v20, v21, name, *&v33);
      }

      unbufnwGuts_updateStatusInternal(v4, 5, 0);
      unbufnwGuts_updateDataPacingInternal(v4);
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      unbufnwGuts_connectionSendPackages(v4);
      unbufnwGuts_connectionReceivePackages(v4);
      break;
    case 3:
LABEL_13:
      OUTLINED_FUNCTION_12_2();
      if (v13)
      {
        goto LABEL_35;
      }

      FigSimpleMutexLock();
      FigSimpleMutexLock();
      v14 = *(v4 + 312);
      if (v14 == 5 || v14 == 0)
      {
        v11 = nw_connection_copy_endpoint(*(v4 + 248));
        if (gLogCategory_APTransportConnectionUnbufferedNW <= 90 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
        {
          v24 = *(v4 + 16);
          if (*(v4 + 312))
          {
            v25 = "disconnected from";
          }

          else
          {
            v25 = "failed to connect to";
          }

          v26 = nw_endpoint_get_address(v11);
          LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_connectionStateChangedHandler(APTransportConnectionUnbufferedNWGutsRef, nw_connection_state_t, nw_error_t)", 33554522, "[%{ptr}] %s '%##a' err=%#m", v24, v25, v26, error_code);
        }

        if (*(v4 + 312))
        {
          v27 = 6;
        }

        else
        {
          v27 = 4;
        }

        unbufnwGuts_updateStatusInternal(v4, v27, error_code);
      }

      else
      {
        v11 = 0;
      }

      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      v9 = 0;
      goto LABEL_36;
    case 4:
      APTTrafficMetricsConnectionClosed(*(v4 + 448));
      CFRelease(v4);
LABEL_35:
      v9 = 0;
      v11 = 0;
LABEL_36:
      v12 = 0;
      break;
    default:
      break;
  }

  nw_release(v9);
  nw_release(v12);
  nw_release(v11);
  nw_release(v36[3]);
  _Block_object_dispose(&v35, 8);
}

void unbufnwGuts_connectionSendPackages(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  OUTLINED_FUNCTION_13_4(a1);
  if (v2 || !APSFlatQueueIsEmpty() || *(a1 + 418) || *(a1 + 412) != 3 || !*(a1 + 416))
  {
    v5 = 0;
    goto LABEL_15;
  }

  FigSimpleMutexLock();
  OUTLINED_FUNCTION_12_2();
  if (v3)
  {
    goto LABEL_10;
  }

  if (!*(a1 + 344))
  {
LABEL_13:
    v5 = 1;
    goto LABEL_14;
  }

  v4 = *(a1 + 248);
  batch_block[0] = MEMORY[0x277D85DD0];
  batch_block[1] = 0x40000000;
  batch_block[2] = __unbufnwGuts_connectionSendPackages_block_invoke;
  batch_block[3] = &unk_278BC8660;
  batch_block[4] = &v13;
  batch_block[5] = &v17;
  batch_block[6] = a1;
  nw_connection_batch(v4, batch_block);
  if (*(v18 + 6))
  {
    APSLogErrorAt();
    goto LABEL_10;
  }

  if (!v14[3])
  {
    APTTrafficMetricsConsumedAllData(*(a1 + 448));
    v6 = *(a1 + 440);
    if (v6)
    {
      APTPacingControllerReset(v6);
    }

    goto LABEL_13;
  }

LABEL_10:
  v5 = 0;
LABEL_14:
  FigSimpleMutexUnlock();
LABEL_15:
  v7 = v18;
  v8 = *(v18 + 6);
  if ((v5 & 1) != 0 || v8)
  {
    if (v8)
    {
      v9 = 90;
    }

    else
    {
      v9 = 30;
    }

    if (v9 < gLogCategory_APTransportConnectionUnbufferedNW)
    {
      goto LABEL_27;
    }

    if (gLogCategory_APTransportConnectionUnbufferedNW == -1)
    {
      v11 = _LogCategory_Initialize();
      v7 = v18;
      if (!v11)
      {
LABEL_27:
        *(a1 + 416) = 0;
        LODWORD(v8) = *(v7 + 6);
        goto LABEL_28;
      }

      v8 = *(v18 + 6);
    }

    if (v8)
    {
      v10 = 33554522;
    }

    else
    {
      v10 = 33554462;
    }

    LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_connectionSendPackages(APTransportConnectionUnbufferedNWGutsRef)", v10, "[%{ptr}] isDataAvailable=0, err=%#m", *(a1 + 16), v8);
    v7 = v18;
    goto LABEL_27;
  }

LABEL_28:
  *(a1 + 432) = v8;
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __unbufnwGuts_connectionSendPackages_block_invoke(uint64_t a1)
{
  content = 0;
  theArray = 0;
  APTTrafficMetricsRequestDataStarted(*(*(a1 + 48) + 448));
  APSStallMonitorActivityBegin();
  (*(*(a1 + 48) + 344))(*(*(a1 + 48) + 352), *(*(a1 + 48) + 432), *(*(a1 + 48) + 184), &theArray);
  APSStallMonitorActivityEnd();
  APTTrafficMetricsRequestDataFinished(*(*(a1 + 48) + 448));
  if (theArray)
  {
    CFArrayGetCount(theArray);
  }

  OUTLINED_FUNCTION_8_1();
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_8_1();
  if (*(v4 + 24) < 1 || (v5 = *(*(a1 + 48) + 440)) != 0 && (APTPacingControllerAddBytesSent(v5, 0), OUTLINED_FUNCTION_8_1(), *(v6 + 24) < 1))
  {
LABEL_28:
    v13 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = *MEMORY[0x277CD9218];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v11 || (v12 = v11(ValueAtIndex)) == 0)
      {
        APSLogErrorAt();
        v13 = 0;
        OUTLINED_FUNCTION_6_10();
LABEL_30:
        *(v32 + 24) = v33;
        goto LABEL_31;
      }

      v13 = v12;
      APSDispatchDataCreateWithBlockBuffer();
      OUTLINED_FUNCTION_15_2();
      *(v15 + 24) = v14;
      OUTLINED_FUNCTION_15_2();
      if (*(v16 + 24))
      {
        break;
      }

      DataLength = CMBlockBufferGetDataLength(v13);
      if (HIDWORD(DataLength))
      {
        APSLogErrorAt();
        OUTLINED_FUNCTION_6_10();
        v33 = v34 + 1;
        goto LABEL_30;
      }

      v18 = DataLength;
      v37 = DataLength;
      APSFlatQueueEnqueue();
      OUTLINED_FUNCTION_15_2();
      *(v20 + 24) = v19;
      OUTLINED_FUNCTION_15_2();
      if (*(v21 + 24))
      {
        break;
      }

      if (*(*(a1 + 48) + 37))
      {
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 136);
        if (v22)
        {
          v23 = v22(ValueAtIndex) == 0;
        }

        else
        {
          v23 = 1;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = *(a1 + 48);
      if (*(v24 + 417) != v23)
      {
        if (gLogCategory_APTransportConnectionUnbufferedNW <= 50)
        {
          if (gLogCategory_APTransportConnectionUnbufferedNW != -1 || (v28 = OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW), v24 = *(a1 + 48), v28))
          {
            v35 = *(v24 + 16);
            OUTLINED_FUNCTION_3_1();
            LogPrintF(v25, v26, v27, "[%{ptr}] isAggregating=%u", v35, v23);
          }
        }

        nw_tcp_set_no_push();
        v24 = *(a1 + 48);
        *(v24 + 417) = v23;
      }

      if (!v7)
      {
        APTTrafficMetricsSendStarted(*(v24 + 448), v18);
        v24 = *(a1 + 48);
      }

      v8 += v18;
      CFRetain(v24);
      CFRetain(ValueAtIndex);
      v29 = *(a1 + 48);
      v30 = *(v29 + 248);
      completion[0] = MEMORY[0x277D85DD0];
      completion[1] = 0x40000000;
      completion[2] = __unbufnwGuts_connectionSendPackages_block_invoke_2;
      completion[3] = &__block_descriptor_tmp_75;
      completion[4] = v29;
      completion[5] = ValueAtIndex;
      completion[6] = v18;
      completion[7] = v8;
      nw_connection_send(v30, content, v9, 1, completion);
      CFRelease(v13);
      if (content)
      {
        dispatch_release(content);
        content = 0;
      }

      ++v7;
      OUTLINED_FUNCTION_8_1();
      if (v7 >= *(v31 + 24))
      {
        goto LABEL_28;
      }
    }

    APSLogErrorAt();
  }

LABEL_31:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (content)
  {
    dispatch_release(content);
  }
}

void __unbufnwGuts_connectionSendPackages_block_invoke_2(uint64_t a1, nw_error_t error)
{
  if (!atomic_load((*(a1 + 32) + 28)))
  {
    v4 = *(a1 + 32);
    if (*(v4 + 412) == 3)
    {
      if (error)
      {
        error_code = nw_error_get_error_code(error);
        v4 = *(a1 + 32);
      }

      else
      {
        error_code = 0;
      }

      *(v4 + 432) = error_code;
      APSFlatQueueDequeue();
      v6 = *(a1 + 32);
      v7 = *(v6 + 432);
      if (!v7)
      {
        if (*(v6 + 38))
        {
          FigSimpleMutexLock();
          unbufnwGuts_updatePackageTrackingInternal(*(a1 + 32));
          FigSimpleMutexUnlock();
        }

        goto LABEL_13;
      }

      if (gLogCategory_APTransportConnectionUnbufferedNW <= 90)
      {
        if (gLogCategory_APTransportConnectionUnbufferedNW != -1)
        {
LABEL_9:
          LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_connectionSendPackages(APTransportConnectionUnbufferedNWGutsRef)_block_invoke_2", 33554522, "[%{ptr}] ### send error: %#m\n", *(v6 + 16), v7);
          goto LABEL_13;
        }

        if (_LogCategory_Initialize())
        {
          v6 = *(a1 + 32);
          v7 = *(v6 + 432);
          goto LABEL_9;
        }
      }

LABEL_13:
      APTTrafficMetricsSendFinished(*(*(a1 + 32) + 448), *(*(a1 + 32) + 432), *(a1 + 48));
      if (APSFlatQueueIsEmpty())
      {
        v8 = *(a1 + 32);
        if (*(v8 + 440))
        {
          *(v8 + 418) = 1;
          CFRetain(v8);
          APTPacingControllerAddBytesSent(*(*(a1 + 32) + 440), *(a1 + 56));
          APTPacingControllerYieldOnQueueWithContinuationFunction(*(*(a1 + 32) + 440), unbufnwGuts_connectionSendPackagesYieldContinuation, *(a1 + 32));
        }

        else
        {
          unbufnwGuts_connectionSendPackages(v8);
        }
      }

      else
      {
        APSFlatQueuePeek();
        APTTrafficMetricsSendStarted(*(*(a1 + 32) + 448), 0);
      }
    }
  }

  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
}

void unbufnwGuts_connectionSendPackagesYieldContinuation(_BYTE *a1)
{
  a1[418] = 0;
  unbufnwGuts_connectionSendPackages(a1);

  CFRelease(a1);
}

void __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_3(uint64_t a1, uint64_t a2, nw_error_t error)
{
  v3 = a2;
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  memset(&v26[3], 0, 125);
  qmemcpy(v26, "any", 3);
  *(v4 + 408) = v3;
  if (error_code)
  {
    v7 = 90;
  }

  else
  {
    v7 = 50;
  }

  if (v7 >= gLogCategory_APTransportConnectionUnbufferedNW && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    v8 = *(v4 + 16);
    v9 = nw_connection_group_state_to_string();
    LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_multicastConnectionGroupStateChangedHandler(APTransportConnectionUnbufferedNWGutsRef, nw_connection_group_t, nw_connection_group_state_t, nw_error_t)", v7 | 0x2000000u, "[%{ptr}] connection group state '%s'%?{end} err=%#m", v8, v9, error_code == 0, error_code);
  }

  switch(v3)
  {
    case 1:
      if (!error_code)
      {
        goto LABEL_26;
      }

      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_12_2();
      if (v12)
      {
        goto LABEL_26;
      }

      APTTrafficMetricsConnectionFormed(*(v4 + 448));
      FigSimpleMutexLock();
      FigSimpleMutexLock();
      v13 = nw_connection_group_copy_parameters(v5);
      v14 = nw_parameters_copy_required_interface(v13);
      if (*(v4 + 89))
      {
        SockAddrToString();
      }

      if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionUnbufferedNW)))
      {
        v15 = *(v4 + 16);
        if (v14)
        {
          name = nw_interface_get_name(v14);
        }

        else
        {
          name = "unknown";
        }

        mach_absolute_time();
        UpTicksToSecondsF();
        v25 = v20 * 1000.0;
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v21, v22, v23, v24, v15, v26, v4 + 128, name, *&v25, *v26, *&v26[16], *&v26[32], *&v26[48], *&v26[64], *&v26[80], *&v26[96], *&v26[104], *&v26[112], v27);
      }

      unbufnwGuts_updateStatusInternal(v4, 5, 0);
      unbufnwGuts_updateDataPacingInternal(v4);
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
      *(v4 + 437) = 1;
      APTTrafficMetricsMessageReadStarted(*(v4 + 448), 1);
      break;
    case 3:
LABEL_13:
      OUTLINED_FUNCTION_12_2();
      if (!v10)
      {
        FigSimpleMutexLock();
        FigSimpleMutexLock();
        v11 = *(v4 + 312);
        if (v11 == 5 || !v11)
        {
          if (gLogCategory_APTransportConnectionUnbufferedNW <= 90)
          {
            if (gLogCategory_APTransportConnectionUnbufferedNW != -1 || (v17 = _LogCategory_Initialize(), v11 = *(v4 + 312), v17))
            {
              if (v11)
              {
                v18 = "disconnected";
              }

              else
              {
                v18 = "failed to connect";
              }

              LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_multicastConnectionGroupStateChangedHandler(APTransportConnectionUnbufferedNWGutsRef, nw_connection_group_t, nw_connection_group_state_t, nw_error_t)", 33554522, "[%{ptr}] %s err=%#m", *(v4 + 16), v18, error_code);
              v11 = *(v4 + 312);
            }
          }

          if (v11)
          {
            v19 = 6;
          }

          else
          {
            v19 = 4;
          }

          unbufnwGuts_updateStatusInternal(v4, v19, error_code);
        }

        FigSimpleMutexUnlock();
        FigSimpleMutexUnlock();
      }

      goto LABEL_26;
    case 4:
      APTTrafficMetricsConnectionClosed(*(v4 + 448));
      CFRelease(v4);
      goto LABEL_26;
    default:
LABEL_26:
      v14 = 0;
      v13 = 0;
      break;
  }

  nw_release(v13);
  nw_release(v14);
}

void unbufnwGuts_readyToSendBatchSlow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, CFTypeRef *), CFArrayRef *a4)
{
  values[1] = *MEMORY[0x277D85DE8];
  cf = 0;
  *a4 = 0;
  v7 = *MEMORY[0x277CBECE8];
  if (a3(*MEMORY[0x277CBECE8], &cf))
  {
    goto LABEL_7;
  }

  (*(a1 + 328))(*(a1 + 336), &cf, a2);
  if (!cf)
  {
    return;
  }

  values[0] = cf;
  v8 = CFArrayCreate(v7, values, 1, MEMORY[0x277CBF128]);
  *a4 = v8;
  if (!v8)
  {
LABEL_7:
    APSLogErrorAt();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void unbufnwGuts_connectionHandlePackageHeader_cold_5(uint64_t a1, char a2)
{
  if (gLogCategory_APTransportConnectionUnbufferedNW <= 60 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_14_3();
    LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_connectionHandlePackageHeader(APTransportConnectionUnbufferedNWGutsRef, dispatch_data_t, nw_content_context_t, _Bool, _Bool, nw_error_t)", 33554492, "[%{ptr}] handlePackageHeader() inHeaderData is NULL!");
  }

  unbufnwGuts_connectionHandlePackagePayload(a1, 0, 0, 1, a2 & 1);
}

void unbufnwGuts_handleNewConnectionInternal_cold_1(NSObject *a1)
{
  APSLogErrorAt();

  nw_connection_force_cancel(a1);
}

void unbufnwGuts_handleNewConnectionGroupInternal_cold_1(NSObject *a1)
{
  APSLogErrorAt();

  nw_connection_group_cancel(a1);
}

uint64_t _APTransportConnectionUnbufferedNWGutsFinalize_cold_1(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v1, v2, v3, v4, v6, v7);
}

void _APBrokerDoReceiverPollingIfNecessary(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 104);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___APBrokerDoReceiverPollingIfNecessary_block_invoke;
    v3[3] = &__block_descriptor_tmp_69;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void _APBrokerGroupRemoveAllReceivers(uint64_t a1)
{
  if (CFDictionaryGetCount(*(a1 + 56)) >= 1)
  {
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerGroup)))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerGroup, "OSStatus _APBrokerGroupRemoveAllReceivers(APBrokerGroupRef)", v2, "[%{ptr}] Removing all receivers\n");
    }

    CFDictionaryRemoveAllValues(*(a1 + 56));

    _APBrokerGroupFireReceiversChanged(a1);
  }
}

void __APBrokerGroupAuthenticate_block_invoke_2(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  OUTLINED_FUNCTION_2_5();
  if (v8)
  {
    CFRetain(a4);
  }

  OUTLINED_FUNCTION_2_0();
  v13[1] = 0x40000000;
  v13[2] = __APBrokerGroupAuthenticate_block_invoke_3;
  v13[3] = &unk_278BC8790;
  v10 = *(v5 + 32);
  v9 = *(v5 + 40);
  v14 = a3;
  v11 = *(v5 + 48);
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = a4;
  dispatch_async(v9, v13);
  v12 = *(v5 + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  dispatch_release(*(v5 + 40));
  _APBrokerDoReceiverPollingIfNecessary(v4, 0);
}

void __APBrokerGroupStartReceiverPolling_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 40) + 112))
  {
    v2 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v2)
    {
      v4 = v2;
      v5 = *(a1 + 40);
      *(v5 + 112) = 1;
      if (gLogCategory_APBrokerGroup <= 50)
      {
        if (gLogCategory_APBrokerGroup != -1 || (v6 = _LogCategory_Initialize(), v5 = *(a1 + 40), v6))
        {
          OUTLINED_FUNCTION_9(&gLogCategory_APBrokerGroup, "OSStatus APBrokerGroupStartReceiverPolling(APBrokerGroupRef)_block_invoke", v3, "[%{ptr}] Started receiver polling\n");
          v5 = *(a1 + 40);
        }
      }

      *(*(a1 + 40) + 120) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v5 + 104));
      v7 = *(*(a1 + 40) + 120);
      if (v7)
      {
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 0x40000000;
        handler[2] = __APBrokerGroupStartReceiverPolling_block_invoke_2;
        handler[3] = &__block_descriptor_tmp_29;
        handler[4] = v4;
        dispatch_source_set_event_handler(v7, handler);
        v8 = *(*(a1 + 40) + 120);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 0x40000000;
        v13[2] = __APBrokerGroupStartReceiverPolling_block_invoke_4;
        v13[3] = &__block_descriptor_tmp_30_0;
        v13[4] = v4;
        dispatch_source_set_cancel_handler(v8, v13);
        dispatch_time(0, 0);
        v9 = OUTLINED_FUNCTION_7_5();
        dispatch_source_set_timer(v9, v10, v11, v12);
        dispatch_resume(*(*(a1 + 40) + 120));
      }

      else
      {
        APSLogErrorAt();
        OUTLINED_FUNCTION_1_0();

        CFRelease(v4);
      }
    }

    else
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_1_0();
    }
  }
}

uint64_t APBrokerGroupStopReceiverPolling(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___APBrokerGroupStopReceiverPollingInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_67;
  block[4] = a1;
  dispatch_sync(v2, block);
  _APBrokerGroupRemoveAllReceivers(a1);
  return FigSimpleMutexUnlock();
}

void _APBrokerGroupFireReceiversChanged(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    CFRetain(a1);
    OUTLINED_FUNCTION_2_0();
    v7[1] = 0x40000000;
    v7[2] = ___APBrokerGroupFireReceiversChanged_block_invoke;
    v7[3] = &__block_descriptor_tmp_36_0;
    v8 = v3;
    v7[4] = a1;
    v7[5] = v1;
    v7[6] = v5;
    dispatch_async(v6, v7);
  }
}

void _APBrokerGroupCallAllBrokers_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  APSLogErrorAt();
  (*(a2 + 16))(a2, a3, 4294960568, 0);

  _APBrokerGroupFreeOperationData(a4);
}

uint64_t _APBrokerGroupCallAllBrokers_cold_2()
{
  OUTLINED_FUNCTION_2_5();
  APSLogErrorAt();
  v2 = *(v1 + 16);

  return v2(v1, v0, 4294960568, 0);
}

uint64_t APBrokerGroupResolveReceiverDNSName_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  if (v1)
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_9(&gLogCategory_APBrokerGroup, "void APBrokerGroupResolveReceiverDNSName(APBrokerGroupRef, CFStringRef, APBrokerResolveBrokeredAddressCallbackBlock)", v0, "[%{ptr}] Resolving receiver address with public reciever UUID %@\n");
}

void _APBrokerGroupCallNextBroker_cold_3()
{
  OUTLINED_FUNCTION_2_5();
  APSLogErrorAt();
  *(v1 + 44) = -6728;
  _APBrokerGroupDoneCallingBrokers(v0, v1);
}

void tcpunbuf_invalidateInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    APTTrafficMetricsConnectionClosed(*(DerivedStorage + 584));
    if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_invalidateInternal(void *)", v4, "[%{ptr}] APTransportConnectionTCPUnbuffered with name %@ invalidating.\n");
    }

    *v3 = 1;
    v5 = *(v3 + 384);
    if (v5)
    {
      dispatch_source_cancel(*(v3 + 384));
      dispatch_release(v5);
      *(v3 + 384) = 0;
    }

    tcpunbuf_cleanUp(a1);
    v6 = *(v3 + 24);

    dispatch_sync_f(v6, a1, tcpunbuf_clearCallbackState);
  }
}

_BYTE *tcpunbuf_callEventCallback(uint64_t a1, unsigned int a2, const void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    return APSDispatchAsyncFHelper();
  }

  return result;
}

void tcpunbuf_receivedData(uint64_t *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v1 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = APSWrapperGetValue();
  if (!*DerivedStorage && *(DerivedStorage + 180) == 5)
  {
    v4 = Value;
    data = dispatch_source_get_data(*(DerivedStorage + 160));
    if (data)
    {
      v6 = data;
      if (gLogCategory_APTransportConnectionTCPUnbuffered <= 60 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_receivedData(void *)", 33554492, "[%{ptr}] Unexpected data from receiver: %zu bytes\n", v1, v6);
      }

      while (1)
      {
        v7 = v6 >= 0x400 ? 1024 : v6;
        v10 = 0;
        valuePtr = (*(v4 + 24))(v4, v7, v7, v12, &v10, 0, 1);
        if (valuePtr)
        {
          break;
        }

        v6 -= v10;
        if (!v6)
        {
          return;
        }
      }

      APSLogErrorAt();
    }

    else if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_receivedData(void *)", 33554522, "[%{ptr}] Receiver disconnected\n", v1);
    }

    v8 = CMBaseObjectGetDerivedStorage();
    if (!*v8)
    {
      APTTrafficMetricsConnectionClosed(*(v8 + 584));
      tcpunbuf_cleanUp(v1);
    }

    v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    tcpunbuf_callEventCallback(v1, 6u, v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

uint64_t APTransportConnectionTCPUnbufferedCreate_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionTCPUnbufferedCreate_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionTCPUnbufferedCreate_cold_4()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t tcpunbuf_setPropertyInternal_cold_15(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72321;
  return result;
}

uint64_t tcpunbuf_resumeInternal_cold_7(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "OSStatus tcpunbuf_resumeInternal(void *)", 33554522, "[%{ptr}] ### connect failed: %#m\n", a2, a1);
    }
  }

  *a5 = a3;
  *a4 = 0;
  return result;
}

uint64_t tcpunbuf_resumeInternal_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72323;
  return result;
}

uint64_t tcpunbuf_setupDataSocketReadSource_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();

  return APSSignalErrorAt();
}

uint64_t tcpunbuf_setupDataSocketReadSource_cold_2()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();

  return APSSignalErrorAt();
}

uint64_t tcpunbuf_setupDataSocketReadSource_cold_3()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t tcpunbuf_requestAndSendData_cold_4()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

void APBrokeredReceiverCopyInfoFromDNSName(CFStringRef theString, CFTypeRef *a2, CFTypeRef *a3)
{
  if (theString)
  {
    if (a2)
    {
      if (a3)
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], theString, @"\x1C");
        if (ArrayBySeparatingStrings)
        {
          v6 = ArrayBySeparatingStrings;
          if (CFArrayGetCount(ArrayBySeparatingStrings) == 2)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
            if (CFStringGetLength(ValueAtIndex) >= 1)
            {
              v8 = CFArrayGetValueAtIndex(v6, 1);
              if (CFStringGetLength(v8) >= 1)
              {
                *a2 = CFRetain(ValueAtIndex);
                *a3 = CFRetain(v8);
              }
            }
          }

          CFRelease(v6);
        }
      }
    }
  }
}

CFStringRef APBrokeredReceiverCreateDNSName(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@%@", a1, @"\x1C", a2);
    if (!result)
    {
      APSLogErrorAt();
      return 0;
    }
  }

  return result;
}

uint64_t _APBrokeredReceiverEqual(uint64_t a1, unint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 56);
      v6 = *(a2 + 56);
      if (v5 == v6 || (result = 0, v5) && v6 && (result = CFEqual(*(a1 + 56), v6), result))
      {
        v7 = *(a1 + 16);
        v8 = *(a2 + 16);
        if (v7 == v8 || (result = 0, v7) && v8 && (result = CFEqual(*(a1 + 16), v8), result))
        {
          v9 = *(a1 + 24);
          v10 = *(a2 + 24);
          if (v9 == v10 || (result = 0, v9) && v10 && (result = CFEqual(*(a1 + 24), v10), result))
          {
            v11 = *(a1 + 32);
            v12 = *(a2 + 32);
            if (v11 == v12 || (result = 0, v11) && v12 && (result = CFEqual(*(a1 + 32), v12), result))
            {
              v13 = *(a1 + 72);
              v14 = *(a2 + 72);
              return v13 == v14 || v13 && v14 && CFEqual(v13, v14);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf(uint64_t a1, CMBlockBufferRef theBuffer, CFTypeRef *a3)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  if (theBuffer)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      v6 = DataPointer;
      APSLogErrorAt();
    }

    else
    {
      v6 = 4294894944;
      if (lengthAtOffsetOut == totalLengthOut)
      {
        FigSimpleMutexLock();
        Value = CFDictionaryGetValue(*(a1 + 40), dataPointerOut);
        FigSimpleMutexUnlock();
        if (Value)
        {
          v6 = 0;
          *a3 = CFRetain(Value);
        }
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294894945;
  }

  return v6;
}

uint64_t APTransportStreamSendBackingProviderUpdateAcquiredBBuf(uint64_t a1, CMBlockBufferRef theBuffer)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  if (theBuffer)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      v5 = DataPointer;
      APSLogErrorAt();
    }

    else
    {
      v5 = 4294894944;
      if (lengthAtOffsetOut == totalLengthOut)
      {
        FigSimpleMutexLock();
        Value = CFDictionaryGetValue(*(a1 + 40), dataPointerOut);
        FigSimpleMutexUnlock();
        if (Value)
        {
          v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v7)
          {
            v7(Value, theBuffer);
          }

          if (gLogCategory_APTransportStreamSendBackingProvider <= 10 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportStreamSendBackingProvider, "OSStatus APTransportStreamSendBackingProviderUpdateAcquiredBBuf(APTransportStreamSendBackingProviderRef, CMBlockBufferRef)", 33554442, "[%{ptr}] Set BBuf [%{ptr}] on package [%{ptr}]", a1, theBuffer, Value);
          }

          return 0;
        }
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294894945;
  }

  return v5;
}

void carSessionBrowser_dispatchEvent(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 120);
  if (v7)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 128);
    if (gLogCategory_APBrowserCarSession <= 20 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
    {
      EventString = APBrowserGetEventString(a2);
      LogPrintF(&gLogCategory_APBrowserCarSession, "void carSessionBrowser_dispatchEvent(APBrowserRef, APBrowserEventType, CFDictionaryRef)", 33554452, "Dispatching event %s with info %@\n", EventString, a3);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v11 = *(v8 + 112);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carSessionBrowser_dispatchEvent_block_invoke;
    block[3] = &__block_descriptor_tmp_46_1;
    block[4] = v7;
    block[5] = a1;
    v13 = a2;
    block[6] = a3;
    block[7] = v9;
    dispatch_async(v11, block);
  }
}

uint64_t carSessionBrowser_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carSessionBrowser_invalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_11_0;
    block[4] = DerivedStorage;
    dispatch_sync(v2, block);
  }

  return 0;
}

void __carSessionBrowser_setMode_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (*(v4 + 32))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_8_1();
    v15 = -12785;
LABEL_37:
    *(v14 + 24) = v15;
    return;
  }

  if (!*(v4 + 120))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_8_1();
    v15 = -72060;
    goto LABEL_37;
  }

  v5 = *(a1 + 56);
  if (*(a1 + 56))
  {
    if (v5 == 3)
    {
      if (!*(v4 + 72))
      {
        if (gLogCategory_APBrowserCarSession <= 50 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSession, "OSStatus carSessionBrowser_setMode(APBrowserRef, APBrowserMode)_block_invoke", a3, "Enabling CarPlayHelper event listening\n");
        }

        v7 = *(a1 + 40);
        if (*(v7 + 16))
        {
          if (*(v7 + 48))
          {
            APSPowerAssertionRaiseTemporary();
            v7 = *(a1 + 40);
          }

          v8 = *(v7 + 64);
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v9)
          {
            v9(v8, 1);
          }
        }

        *(*(a1 + 40) + 72) = 1;
      }

      return;
    }

    if (gLogCategory_APBrowserCarSession > 60)
    {
      goto LABEL_17;
    }

    if (gLogCategory_APBrowserCarSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 56);
    }

    LogPrintF(&gLogCategory_APBrowserCarSession, "OSStatus carSessionBrowser_setMode(APBrowserRef, APBrowserMode)_block_invoke", 33554492, "Unrecognized browse mode %d\n", v5);
LABEL_17:
    OUTLINED_FUNCTION_8_1();
    *(v6 + 24) = -72062;

    APSLogErrorAt();
    return;
  }

  if (*(v4 + 72))
  {
    if (gLogCategory_APBrowserCarSession <= 50 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSession, "OSStatus carSessionBrowser_setMode(APBrowserRef, APBrowserMode)_block_invoke", a3, "Disabling CarPlayHelper event listening\n");
    }

    v10 = *(a1 + 40);
    if (*(v10 + 16))
    {
      v11 = *(v10 + 64);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v12)
      {
        v12(v11, 0);
      }

      v13 = *(a1 + 40);
      ++*(v13 + 76);
    }

    else
    {
      carSessionBrowser_dispatchEvent(*(a1 + 48), 7, 0);
      v13 = *(a1 + 40);
    }

    *(v13 + 72) = 0;
  }
}

uint64_t carSessionBrowser_setMode_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -72062;
  return result;
}

uint64_t carSessionBrowser_getDNSForDeviceID_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12780;
  return result;
}

uint64_t carSessionBrowser_getDNSForDeviceID_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12780;
  return result;
}

void __carSessionBrowser_getMode_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12785;
}

void __carSessionBrowser_setEventHandler_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12785;
}

void __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12785;
}

void __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -72063;
}

uint64_t __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_5(const char **a1, void *a2, uint64_t a3)
{
  v3 = "not required";
  if (*a2 && **a2)
  {
    v3 = "required";
  }

  return LogPrintF(&gLogCategory_APBrowserCarSession, "OSStatus carSessionBrowser_getDNSForDeviceID(APBrowserRef, uint64_t, Boolean, Boolean, Boolean, char *, size_t, Boolean *)_block_invoke", 33554472, "DNS = '%s' For deviceID: %#.6a (WoW comatibility %s)\n", *a1, *&a3, v3);
}

uint64_t __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_9(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

uint64_t __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

void carSessionBrowser_networkChanged_cold_2(void *a1, uint64_t a2, const void *a3)
{
  *a1 = 0;
  *(a2 + 104) = 0;
  v5 = *(a2 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 96) = 0;
  }

  carSessionBrowser_dispatchEvent(a3, 6, 0);
  if (*(a2 + 80))
  {
    v7 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarSession <= 50 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSession, "OSStatus carSessionBrowser_networkChanged(APBrowserRef, CFDictionaryRef)", v6, "Releasing osTransaction: %s\n");
    }

    free(v7);
    v8 = *(a2 + 80);
    if (v8)
    {
      os_release(v8);
      *(a2 + 80) = 0;
    }
  }
}

uint64_t APTransportDeviceParseInterfaceIndexFromDNSName(char *a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v3 = strchr(a1, 37);
    if (v3)
    {
      v4 = v3 + 1;
      v5 = strpbrk(v3 + 1, ":]");
      if (!v5)
      {
        v5 = &v4[strlen(v4)];
      }

      v6 = v5 - v4;
      if ((v5 - v4) < 0x11)
      {
        __memcpy_chk();
        v10[v6] = 0;
        v7 = if_nametoindex(v10);
        v9 = v7;
        if (v7)
        {
LABEL_10:
          result = 0;
          *a2 = v7;
          return result;
        }

        if (sscanf(v10, "%u", &v9) == 1)
        {
          v7 = v9;
          goto LABEL_10;
        }
      }

      APSLogErrorAt();
      return 4294960554;
    }

    else
    {
      return 4294960569;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }
}

uint64_t aptransportdevice_copyInterfaceNameFromDNSName(char *a1, CFTypeRef *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  *cStr = 0;
  v8 = 0;
  result = APTransportDeviceParseInterfaceIndexFromDNSName(a1, &v6);
  if (!result)
  {
    if (if_indextoname(v6, cStr))
    {
      v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
      if (v4)
      {
        v5 = v4;
        *a2 = CFRetain(v4);
        CFRelease(v5);
        return 0;
      }

      else
      {
        APSLogErrorAt();
        return 4294960568;
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294960569;
    }
  }

  return result;
}

uint64_t APTransportDeviceStartTracking(void *a1, uint64_t a2)
{
  if (a1[4])
  {
    return 0;
  }

  if (a1[5])
  {
    return 0;
  }

  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  Int64 = CFDictionaryGetInt64();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v5)
  {
    v6 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    return v6;
  }

  v6 = v5(v2, Int64, a2);
  if (v6)
  {
    goto LABEL_8;
  }

  return v6;
}

uint64_t APTransportDeviceStopTracking(void *a1)
{
  if (a1[4] || a1[5])
  {
    return 0;
  }

  v1 = a1[2];
  if (v1)
  {
    Int64 = CFDictionaryGetInt64();
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v3)
    {
      v1 = 4294954514;
LABEL_8:
      APSLogErrorAt();
      return v1;
    }

    v1 = v3(v1, Int64);
    if (v1)
    {
      goto LABEL_8;
    }
  }

  return v1;
}

uint64_t APTransportDeviceReconfirm(void *a1)
{
  if (a1[4] || a1[5])
  {
    return 0;
  }

  v1 = a1[2];
  if (v1)
  {
    Int64 = CFDictionaryGetInt64();
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v3)
    {
      v1 = 4294954514;
LABEL_8:
      APSLogErrorAt();
      return v1;
    }

    v1 = v3(v1, Int64, 0);
    if (v1)
    {
      goto LABEL_8;
    }
  }

  return v1;
}

uint64_t APTransportDeviceTriggerWoLCachingIfNeeded(void *a1, uint64_t a2)
{
  if (a1[4])
  {
    return 0;
  }

  if (a1[5])
  {
    return 0;
  }

  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  Int64 = CFDictionaryGetInt64();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v5)
  {
    v6 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    return v6;
  }

  v6 = v5(v2, Int64, a2);
  if (v6)
  {
    goto LABEL_8;
  }

  return v6;
}

void __transportDevice_networkAddressesToCStringRepresentation_block_invoke(uint64_t a1, uint64_t a2)
{
  if (APSNetworkAddressCopyStringRepresentation())
  {
    APSLogErrorAt();
  }
}

void APTransportDeviceCreate_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void **APTransportDeviceCopyProximityData_cold_1(void **result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (gLogCategory_APTransportDevice <= 90)
  {
    if (gLogCategory_APTransportDevice == -1)
    {
      v8 = result;
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      a2 = *v8;
    }

    result = LogPrintF(&gLogCategory_APTransportDevice, "CFDataRef APTransportDeviceCopyProximityData(APTransportDeviceRef)", 33554522, "[%{ptr}] Failed to archive NINearbyObject with error: %@\n", a3, [a2 localizedFailureReason]);
  }

LABEL_5:
  *a5 = a4;
  return result;
}

uint64_t APTransportDeviceCopyProximityData_cold_2(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return LogPrintF(&gLogCategory_APTransportDevice, "CFDataRef APTransportDeviceCopyProximityData(APTransportDeviceRef)", 33554462, "[%{ptr}] Nearby object: %@\n", a2, a3);
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return LogPrintF(&gLogCategory_APTransportDevice, "CFDataRef APTransportDeviceCopyProximityData(APTransportDeviceRef)", 33554462, "[%{ptr}] Nearby object: %@\n", a2, a3);
  }

  return result;
}

void __getNINearbyObjectClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getNINearbyObjectClass(void)_block_invoke") description:{@"APSoftLinking_NearbyInteraction.h", 25, @"Unable to find class %s", "NINearbyObject"}];
  __break(1u);
}

void NearbyInteractionLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *NearbyInteractionLibrary(void)") description:{@"APSoftLinking_NearbyInteraction.h", 23, @"%s", *a1}];
  __break(1u);
}

void __getNIDiscoveryTokenClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getNIDiscoveryTokenClass(void)_block_invoke") description:{@"APSoftLinking_NearbyInteraction.h", 28, @"Unable to find class %s", "NIDiscoveryToken"}];
  __break(1u);
}

void __APTNANDataSessionRetainActivation_block_invoke_3(void *a1, uint64_t a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)_block_invoke_3", 33554482, "NANDS [%{ptr}] terminated: %@", a1[6], a2);
  }

  if (v4)
  {
    v6 = a1[4];
    v7 = NSErrorToOSStatus();
    if (v7 != 313374)
    {
      goto LABEL_25;
    }

    v8 = [v6 wfaDataSessionClient];
    if (!v8)
    {
      if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || OUTLINED_FUNCTION_9_0(&gLogCategory_APTNANDataSession)))
      {
        OUTLINED_FUNCTION_15(&gLogCategory_APTNANDataSession, "OSStatus _APTNANDataSessionGetTerminationError(CUNANDataSession *, const void *, OSStatus)", v9, "### NANDS [%{ptr}] Failed to retrieve WFADataSessionClient");
      }

      v7 = 313374;
      goto LABEL_25;
    }

    v7 = -72401;
    v10 = [v8 internetSharingPolicy];
    if ((v10 - 2) < 2)
    {
      goto LABEL_21;
    }

    if (v10 == 1)
    {
      v7 = -72400;
    }

    else
    {
      if (!v10)
      {
        if (gLogCategory_APTNANDataSession <= 90)
        {
          if (gLogCategory_APTNANDataSession != -1 || OUTLINED_FUNCTION_9_0(&gLogCategory_APTNANDataSession))
          {
            OUTLINED_FUNCTION_15(&gLogCategory_APTNANDataSession, "OSStatus _APTNANDataSessionGetTerminationError(CUNANDataSession *, const void *, OSStatus)", v11, "### NANDS [%{ptr}] WFA error %#m with WiFiP2PInternetSharingPolicyOff");
          }

          v7 = -6762;
          goto LABEL_21;
        }

        v7 = -6762;
LABEL_25:
        CFRetain(v4);
        v12 = *(DerivedStorage + 32);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __APTNANDataSessionRetainActivation_block_invoke_4;
        block[3] = &__block_descriptor_52_e5_v8__0l;
        v14 = v7;
        block[4] = DerivedStorage;
        block[5] = v4;
        dispatch_async(v12, block);
        CFRelease(v4);
        return;
      }

      if (APSIsPersistentGroupSDBCapable())
      {
        v7 = -72401;
      }

      else
      {
        v7 = -72400;
      }
    }

LABEL_21:
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || OUTLINED_FUNCTION_9_0(&gLogCategory_APTNANDataSession)))
    {
      OUTLINED_FUNCTION_15(&gLogCategory_APTNANDataSession, "OSStatus _APTNANDataSessionGetTerminationError(CUNANDataSession *, const void *, OSStatus)", v11, "### NANDS [%{ptr}] infra relay policy=%ld failed, throwing err=%#m");
    }

    goto LABEL_25;
  }
}

void __APTNANDataSessionRetainActivation_block_invoke_4(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    *(v2 + 88) = *(a1 + 48);
  }

  FigSimpleMutexUnlock();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t _APTNANDataSessionReportIssue(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    CFNumberGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    v12 = APTNANDataSessionIssueReportCreate(TypedValue, v5, &cf);
    if (v12)
    {
      APSLogErrorAt();
    }

    else if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      v10 = cf;
      OUTLINED_FUNCTION_9(&gLogCategory_APTNANDataSession, "OSStatus _APTNANDataSessionReportIssue(APSIssueReporterRef, CFDictionaryRef)", v6, "NANDS [%{ptr}] Submitting NAN Issue Report '%@'");
      [*(DerivedStorage + 80) reportIssue:{cf, a1, v10}];
    }

    else
    {
      [*(DerivedStorage + 80) reportIssue:{cf, v8, v9}];
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v12;
}

uint64_t APTNANDataSessionIsActivatable_cold_1(uint64_t a1, uint64_t a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTNANDataSession <= 50)
  {
    if (gLogCategory_APTNANDataSession != -1)
    {
      return OUTLINED_FUNCTION_9(&gLogCategory_APTNANDataSession, "Boolean APTNANDataSessionIsActivatable(APTNANDataSessionRef)", v3, "NANDS [%{ptr}] not activatable, failed to obtain NANEndpoint with error: %#m");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_9(&gLogCategory_APTNANDataSession, "Boolean APTNANDataSessionIsActivatable(APTNANDataSessionRef)", v3, "NANDS [%{ptr}] not activatable, failed to obtain NANEndpoint with error: %#m");
    }
  }

  return result;
}

uint64_t APTNANDataSessionCreateStatisticsReport_cold_3(uint64_t *a1)
{
  APSLogErrorAt();

  return FigSimpleMutexUnlock();
}

uint64_t APBrokerCreateBrokeredReceiversFromBrokerResponse(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t *a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBroker, "OSStatus APBrokerCreateBrokeredReceiversFromBrokerResponse(CFStringRef, CFDictionaryRef, CFDictionaryRef *, uint64_t *)", a3, "Create BrokeredReceivers from broker response:%@\n");
  }

  v8 = 4294960591;
  if (a1 && a2 && a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      v8 = 4294960568;
      goto LABEL_17;
    }

    v10 = Mutable;
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      CFArrayGetCount(TypedValue);
      OUTLINED_FUNCTION_1_2();
      CFArrayApplyBlock();
      v12 = v15[3];
      if (!v12)
      {
        v12 = 300;
        v15[3] = 300;
      }

      *a3 = v10;
      if (a4)
      {
        v8 = 0;
        *a4 = v12;
        goto LABEL_17;
      }
    }

    else
    {
      CFRelease(v10);
    }

    v8 = 0;
  }

LABEL_17:
  _Block_object_dispose(&v14, 8);
  return v8;
}

void _CallRequestCallbackBlock(int a1, NSObject *a2, const void *a3, void *aBlock)
{
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
    if (a3)
    {
      CFRetain(a3);
    }

    OUTLINED_FUNCTION_1_2();
    v9 = 0x40000000;
    v10 = ___CallRequestCallbackBlock_block_invoke;
    v11 = &unk_278BC9190;
    v14 = a1;
    v12 = v7;
    v13 = a3;
    dispatch_async(a2, block);
  }
}

void __APBrokerAuthenticate_block_invoke()
{
  OUTLINED_FUNCTION_4_11();
  if (v8 ^ v9 | v7)
  {
    v10 = v5;
    v11 = v4;
    if (v6 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 2792);
    }

    v12 = *(v0 + 40);
    if (v6 > 20)
    {
      v13 = 1;
    }

    else
    {
      v13 = v6 == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(&gLogCategory_APBroker, "void APBrokerAuthenticate(APBrokerRef, CFStringRef, APBrokerAuthenticateCallbackBlock)_block_invoke", 33554482, "[%{ptr}] User auth token request finished. status=%ld, err=%#m%?{end}, data=%@\n", v12, v10, v1, v13, v11);
  }

LABEL_12:
  if (v1)
  {
    APSLogErrorAt();
    Mutable = 0;
    goto LABEL_33;
  }

  v14 = *(v0 + 48);
  v22 = 0;
  cf = 0;
  v20 = 0;
  v21 = 0;
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  Mutable = 0;
  LODWORD(v1) = -6705;
  if (v2 && v14)
  {
    v17 = *(v3 + 2792);
    if (v17 <= 30 && (v17 != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APBroker, "OSStatus _APBrokerHandleAuthenticationResponseCreatingCallbackResponse(APBrokerRef, CFDictionaryRef, CFDictionaryRef *)", v15, "[%{ptr}] Got Authentication response: %@\n");
    }

    v18 = APBrokerCopyAuthInfoFromBrokerResponse(v2, &cf, &v22, &v20, &v21);
    if (v18)
    {
      LODWORD(v1) = v18;
      APSLogErrorAt();
    }

    else
    {
      FigSimpleMutexLock();
      v19 = APBrokerKeychainUtilsStoreAuthToken(*(v14 + 24), v20, cf, v22);
      if (!v19)
      {
        FigSimpleMutexUnlock();
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          FigCFDictionarySetValue();
          LODWORD(v1) = 0;
        }

        else
        {
          APSLogErrorAt();
          LODWORD(v1) = -6728;
        }

        goto LABEL_23;
      }

      LODWORD(v1) = v19;
      APSLogErrorAt();
      FigSimpleMutexUnlock();
    }

    Mutable = 0;
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v1)
  {
    APSLogErrorAt();
  }

LABEL_33:
  _CallRequestCallbackBlock(v1, *(v0 + 56), Mutable, *(v0 + 32));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  dispatch_release(*(v0 + 56));
  _Block_release(*(v0 + 32));
}

void __APBrokerGetInfo_block_invoke()
{
  OUTLINED_FUNCTION_4_11();
  if (!(v6 ^ v7 | v5))
  {
    goto LABEL_9;
  }

  if (v4 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_9;
    }

    v4 = *(v2 + 2792);
  }

  if (v4 == -1)
  {
    _LogCategory_Initialize();
  }

  OUTLINED_FUNCTION_9(&gLogCategory_APBroker, "void APBrokerGetInfo(APBrokerRef, APBrokerGetInfoCallbackBlock)_block_invoke", v3, "[%{ptr}] Get info request finished. status=%ld, err=%#m%?{end}, data=%@\n");
LABEL_9:
  if (v1)
  {
    APSLogErrorAt();
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    FigCFDictionarySetValueFromKeyInDict();
  }

  _CallRequestCallbackBlock(v1, *(v0 + 48), Mutable, *(v0 + 32));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  dispatch_release(*(v0 + 48));
  v9 = *(v0 + 32);

  _Block_release(v9);
}

void __APBrokerGetReceiverConnectivityInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  BrokeredReceiverConnectivityInfoFromBrokerResponse = a6;
  cf = 0;
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    if (*(a1 + 48))
    {
      IsAppleInternalBuild();
    }

    if (gLogCategory_APBroker == -1)
    {
      _LogCategory_Initialize();
    }

    OUTLINED_FUNCTION_9(&gLogCategory_APBroker, "void APBrokerGetReceiverConnectivityInfo(APBrokerRef, CFStringRef, CFStringRef, APBrokerGetReceiverConnectivityInfoCallbackBlock)_block_invoke", a3, "[%{ptr}] Receiver %@ connectivity info request finished. status=%ld, err=%#m%?{end}, data=%@\n");
  }

  if (BrokeredReceiverConnectivityInfoFromBrokerResponse || (BrokeredReceiverConnectivityInfoFromBrokerResponse = APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse(a2, a4, &cf)) != 0)
  {
    APSLogErrorAt();
  }

  _CallRequestCallbackBlock(BrokeredReceiverConnectivityInfoFromBrokerResponse, *(a1 + 56), cf, *(a1 + 32));
  CFRelease(*(a1 + 48));
  if (cf)
  {
    CFRelease(cf);
  }

  dispatch_release(*(a1 + 56));
  _Block_release(*(a1 + 32));
}

uint64_t APBrokerCopyAuthInfoFromBrokerResponse(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  TypeID = CFStringGetTypeID();
  if (OUTLINED_FUNCTION_7_6(TypeID, @"userAuthToken", TypeID))
  {
    v6 = CFNumberGetTypeID();
    if (OUTLINED_FUNCTION_7_6(v6, @"userAuthTokenTTLSecs", v6))
    {
      v7 = CFStringGetTypeID();
      if (!OUTLINED_FUNCTION_7_6(v7, @"receiverGroupUUID", v7))
      {
        v12 = 0;
        v9 = 0;
        goto LABEL_8;
      }

      v8 = CFDictionaryGetTypeID();
      v9 = OUTLINED_FUNCTION_7_6(v8, @"receiverInfo", v8);
      if (!v9)
      {
LABEL_17:
        APSLogErrorAt();
        goto LABEL_18;
      }

      v10 = CFStringGetTypeID();
      if (OUTLINED_FUNCTION_7_6(v10, @"bonjourTXTRecord", v10))
      {
        v9 = APSCFDataCreateWithBase64String();
        if (!v9)
        {
          APSLogErrorAt();
          v12 = 4294960568;
          goto LABEL_8;
        }

        APSTXTRecordUtilsCopyCFStringFromTXTRecord();
        goto LABEL_17;
      }
    }
  }

  APSLogErrorAt();
  v9 = 0;
LABEL_18:
  v12 = 4294960591;
LABEL_8:
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t __APBrokerCreateBrokeredReceiversFromBrokerResponse_block_invoke(uint64_t result, CFTypeRef cf)
{
  if (cf)
  {
    v2 = result;
    v3 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v3 == result)
    {
      CFStringGetTypeID();
      result = CFDictionaryGetTypedValue();
      if (result)
      {
        CFArrayGetTypeID();
        result = CFDictionaryGetTypedValue();
        if (result)
        {
          v4 = result;
          Int64 = CFDictionaryGetInt64();
          v6 = *(*(v2 + 32) + 8);
          v7 = *(v6 + 24);
          if (!v7 || Int64 && Int64 < v7)
          {
            *(v6 + 24) = Int64;
          }

          CFArrayGetCount(v4);
          OUTLINED_FUNCTION_1_2();
          return CFArrayApplyBlock();
        }
      }
    }
  }

  return result;
}

uint64_t APBrokerSendRequest_cold_1(uint64_t a1, int a2)
{
  APBrokerHTTPProtocolString(*(a1 + 32));
  APBrokerHTTPMethodString(a2);
  return OUTLINED_FUNCTION_7_0(&gLogCategory_APBroker, "void APBrokerSendRequest(APBrokerRef, int, CFStringRef, CFDictionaryRef, CFTypeRef, APBrokerHTTPResponseHandler)", v3, "[%{ptr}] Starting %s %s to %@\n");
}

uint64_t APBrokerSendRequest_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APBrokerSendRequest_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APBrokerAuthenticate_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    IsAppleInternalBuild();
  }

  if (gLogCategory_APBroker == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_9(&gLogCategory_APBroker, "void APBrokerAuthenticate(APBrokerRef, CFStringRef, APBrokerAuthenticateCallbackBlock)", a3, "[%{ptr}] Requesting user auth token for group: %@%?{end} with broker token: %@\n");
}

void APBrokerAuthenticate_cold_3(void *a1, const void *a2)
{
  APSLogErrorAt();
  FigSimpleMutexUnlock();

  CFRelease(a2);
}

uint64_t APBrokerGetInfo_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_9(&gLogCategory_APBroker, "void APBrokerGetInfo(APBrokerRef, APBrokerGetInfoCallbackBlock)", a3, "[%{ptr}] Requesting info for group: %@\n");
}

uint64_t APBrokerGetInfo_cold_3(uint64_t *a1)
{
  APSLogErrorAt();

  return FigSimpleMutexUnlock();
}

uint64_t APBrokerGetReceiverConnectivityInfo_cold_1(uint64_t a1)
{
  if (a1)
  {
    IsAppleInternalBuild();
  }

  IsAppleInternalBuild();
  return OUTLINED_FUNCTION_7_0(&gLogCategory_APBroker, "void APBrokerGetReceiverConnectivityInfo(APBrokerRef, CFStringRef, CFStringRef, APBrokerGetReceiverConnectivityInfoCallbackBlock)", v1, "[%{ptr}] Get connectivity info for receiver with groupUUID %@ publicUUID %@\n");
}

uint64_t APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_5(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t __APBrokerSendRequest_block_invoke_cold_1(uint64_t a1)
{
  APBrokerHTTPProtocolString(*(*(a1 + 48) + 32));
  if (gLogCategory_APBroker == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_7_0(&gLogCategory_APBroker, "void APBrokerSendRequest(APBrokerRef, int, CFStringRef, CFDictionaryRef, CFTypeRef, APBrokerHTTPResponseHandler)_block_invoke", v1, "[%{ptr}] %s request finished: status=%ld, err=%#m%?{end}, data=%@\n");
}

void service_invalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportService, "OSStatus service_invalidateInternal(CMBaseObjectRef)", 33554462, "APTransportService %{ptr} with type %@ invalidating.\n", a1, *(v3 + 5));
    }

    *v3 = 1;
    service_cleanUp(a1);
    *(v3 + 3) = 0;
    *(v3 + 4) = 0;
    v4 = *(v3 + 6);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 6) = 0;
    }
  }
}

uint64_t service_resumeInternal_cold_5(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t service_createSession_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t service_createSession_cold_7(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t service_handleListenerConnected_cold_2()
{
  APSLogErrorAt();

  return APSSignalErrorAt();
}

void __APTransportWifiManagerClientUnregister_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = *(v2 + 24);
    v5 = __OFSUB__(v4--, 1);
    *(v2 + 24) = v4;
    if ((v4 < 0) ^ v5 | (v4 == 0))
    {
      [*(v2 + 48) endActivity:?];
      if (gLogCategory_APTransportWifiManagerClient <= 40 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportWifiManagerClient, "OSStatus wifiManagerClient_unregisterInternal(APTransportWifiManagerClientRef)", 33554472, "Destroying CWFInterface [%{ptr}]\n", *(v2 + 48));
      }

      *(v2 + 56) = 0;
      [*(v2 + 48) invalidate];

      *(v2 + 48) = 0;
    }

    if (gLogCategory_APTransportWifiManagerClient <= 30 && (gLogCategory_APTransportWifiManagerClient != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportWifiManagerClient)))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportWifiManagerClient, "OSStatus wifiManagerClient_unregisterInternal(APTransportWifiManagerClientRef)", v3, "[%{ptr}] Unregister: RegistrationCount = %d\n");
    }
  }

  CFRetain(v2);
  v6 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __wifiManagerClient_unregisterInternal_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v2;
  dispatch_async(v6, block);
  *(*(*(a1 + 32) + 8) + 24) = 0;
}

uint64_t wifiManagerClient_ensureSubscribedForStatistics(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    return 0;
  }

  if (Apple80211GetIOReportingService())
  {
    if (gLogCategory_APTransportWifiManagerClient <= 90 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
    {
      v2 = Apple80211ErrToStr();
      LogPrintF(&gLogCategory_APTransportWifiManagerClient, "OSStatus wifiManagerClient_ensureSubscribedForStatistics(APTransportWifiManagerClientRef)", 33554522, "Error getting IOReportingService: %s\n", v2);
    }

    return 4294960534;
  }

  else
  {
    APSLogErrorAt();
    return APSSignalErrorAt();
  }
}

uint64_t __wifiManagerClient_copyWifiStatistics_block_invoke(uint64_t a1, uint64_t a2)
{
  IOReportChannelGetGroup();
  v3 = FigCFEqual();
  ChannelName = IOReportChannelGetChannelName();
  if (!ChannelName)
  {
    return 0;
  }

  v5 = ChannelName;
  Length = CFStringGetLength(ChannelName);
  MutableCopy = CFStringCreateMutableCopy(0, Length, v5);
  CFStringTrimWhitespace(MutableCopy);
  UnitLabel = IOReportChannelGetUnitLabel();
  IntegerValue = IOReportSimpleGetIntegerValue();
  v10 = CFStringCreateWithFormat(0, 0, @"%lld%@", IntegerValue, UnitLabel);
  if (FigCFEqual())
  {
    v11 = *(a1 + 32);
    if (v3)
    {
      v12 = @"P2PCCA";
    }

    else
    {
      v12 = @"InfraCCA";
    }
  }

  else if (FigCFEqual())
  {
    v11 = *(a1 + 32);
    v12 = @"InfraRSSI";
  }

  else
  {
    if (!FigCFEqual() || v3)
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 32);
    v12 = @"InfraSNR";
  }

  CFDictionarySetValue(v11, v12, v10);
LABEL_12:
  if (v10)
  {
    CFRelease(v10);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return 0;
}

void APTransportWifiManagerClientCreate_cold_3(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_2(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_10(v2, "IOReportIterate failed");
  *a1 = result;
  return result;
}

uint64_t __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_3(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_10(v2, "IOReportIterate failed");
  *a1 = result;
  return result;
}

uint64_t __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_4(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_10(v2, "IOReportIterate failed");
  *a1 = result;
  return result;
}

uint64_t __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_5(_DWORD *a1, void *a2, void *a3, void *a4)
{
  result = APSLogErrorAt();
  *a1 = -71730;
  if (gLogCategory_APTransportWifiManagerClient <= 90)
  {
    if (gLogCategory_APTransportWifiManagerClient != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APTransportWifiManagerClient, "OSStatus wifiManagerClient_getPeerRSSI(APTransportWifiManagerClientRef, uint8_t *, int64_t *)", 33554522, "Create samples failed, error=%@", *a2);
    }
  }

  *a4 = 0;
  *a3 = 0;
  return result;
}

uint64_t __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71732;
  return result;
}

uint64_t wifiManagerClient_dumpWifiStatistics_cold_3(void *a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportWifiManagerClient <= 90)
  {
    if (gLogCategory_APTransportWifiManagerClient != -1)
    {
      return LogPrintF(&gLogCategory_APTransportWifiManagerClient, "OSStatus wifiManagerClient_dumpWifiStatistics(APTransportWifiManagerClientRef)", 33554522, "Create samples failed, error=%@", *a1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APTransportWifiManagerClient, "OSStatus wifiManagerClient_dumpWifiStatistics(APTransportWifiManagerClientRef)", 33554522, "Create samples failed, error=%@", *a1);
    }
  }

  return result;
}

void APTransportPackageScreenCreateWithBBuf_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void streamAggregate_invalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    if (FigCFDictionaryGetCount() >= 1 && gLogCategory_APTransportStreamAggregate <= 90 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportStreamAggregate, "OSStatus streamAggregate_invalidateInternal(FigTransportStreamRef)", 33554522, "[%{ptr}] ### Non-Zero sub connection count upon invalidate\n", a1);
    }

    v4 = *(v3 + 6);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v5)
      {
        v5(v4, 0);
      }

      APTransportConnectionGetCMBaseObject();
      if (v6)
      {
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v8(v7);
        }
      }
    }

    if (gLogCategory_APTransportStreamAggregate <= 30 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportStreamAggregate, "OSStatus streamAggregate_invalidateInternal(FigTransportStreamRef)", 33554462, "[%{ptr}] Invalidate\n", a1);
    }
  }
}

uint64_t streamAggregate_SendMessage(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v18 = 0;
  if (*DerivedStorage)
  {
    return 0;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    v8 = streamAggregate_copyFormattedAsyncPackageForBBuf(a1, a3, a2, &v19, &v18);
    if (v8)
    {
      v16 = v8;
    }

    else
    {
      if (gLogCategory_APTransportStreamAggregate <= 10 && (gLogCategory_APTransportStreamAggregate != -1 || OUTLINED_FUNCTION_2_15(&gLogCategory_APTransportStreamAggregate)))
      {
        OUTLINED_FUNCTION_1_21();
        LogPrintF(v9, v10, v11, v12, a1, a2, a3);
      }

      v13 = *(v7 + 48);
      v14 = v19;
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v15)
      {
        v16 = v15(v13, v14);
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v16 = 4294954514;
      }
    }

    APSLogErrorAt();
  }

  else
  {
    v16 = 0;
  }

LABEL_13:
  if (v18)
  {
    APTransportStreamSendBackingProviderRelinquishBBuf(*(v7 + 8), a3);
  }

  return v16;
}

uint64_t streamAggregate_SendBatch(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  Count = CFArrayGetCount(a3);
  if (*DerivedStorage || !*(DerivedStorage + 48))
  {
    return 0;
  }

  v8 = Count;
  v9 = CFGetAllocator(a3);
  Mutable = CFArrayCreateMutable(v9, v8, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v10 = CFGetAllocator(a3);
    v11 = MEMORY[0x23EEDC950](v10, v8, 0x100004077774924, 0);
    if (v11)
    {
      v12 = v11;
      v40 = DerivedStorage;
      bzero(v11, v8);
      if (gLogCategory_APTransportStreamAggregate <= 10 && (gLogCategory_APTransportStreamAggregate != -1 || OUTLINED_FUNCTION_2_15(&gLogCategory_APTransportStreamAggregate)))
      {
        OUTLINED_FUNCTION_1_21();
        LogPrintF(v13, v14, v15, v16, a1, a2);
      }

      if (v8 < 1)
      {
LABEL_21:
        if (gLogCategory_APTransportStreamAggregate <= 10 && (gLogCategory_APTransportStreamAggregate != -1 || OUTLINED_FUNCTION_2_15(&gLogCategory_APTransportStreamAggregate)))
        {
          OUTLINED_FUNCTION_1_21();
          LogPrintF(v27, v28, v29, v30, a1, a2);
        }

        v31 = v40;
        v32 = *(v40 + 48);
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v33)
        {
          v34 = v33(v32, Mutable);
        }

        else
        {
          v34 = APTransportConnectionSendBatchSlow(v32, Mutable);
        }

        v35 = v34;
        if (v34)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        v17 = 0;
        v18 = v12;
        v19 = v8;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v17);
          if (!ValueAtIndex || (v21 = ValueAtIndex, v22 = CFGetTypeID(ValueAtIndex), v22 != CMBlockBufferGetTypeID()))
          {
            APSLogErrorAt();
            v35 = 4294950686;
            goto LABEL_40;
          }

          v23 = streamAggregate_copyFormattedAsyncPackageForBBuf(a1, v21, a2, &cf, v18);
          if (v23)
          {
            break;
          }

          if (gLogCategory_APTransportStreamAggregate <= 10 && (gLogCategory_APTransportStreamAggregate != -1 || OUTLINED_FUNCTION_2_15(&gLogCategory_APTransportStreamAggregate)))
          {
            OUTLINED_FUNCTION_1_21();
            LogPrintF(v24, v25, v26, "[%{ptr}] Sending batch: type %'C message %{ptr}.\n", a1, a2, v21);
          }

          CFArrayAppendValue(Mutable, cf);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          ++v17;
          ++v18;
          if (!--v19)
          {
            goto LABEL_21;
          }
        }

        v35 = v23;
        APSLogErrorAt();
LABEL_40:
        v31 = v40;
      }

      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (v12[i])
          {
            v37 = CFArrayGetValueAtIndex(a3, i);
            APTransportStreamSendBackingProviderRelinquishBBuf(*(v31 + 8), v37);
          }
        }
      }

      v38 = CFGetAllocator(a3);
      CFAllocatorDeallocate(v38, v12);
    }

    else
    {
      APSLogErrorAt();
      v35 = 4294950685;
    }

    CFRelease(Mutable);
  }

  else
  {
    APSLogErrorAt();
    return 4294950685;
  }

  return v35;
}

uint64_t APTransportStreamAggregateCreate_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APTransportStreamAggregateAddSubStream_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

CFTypeRef streamAggregate_CopyProperty_cold_3(void *a1)
{
  Object = CFNumberGetObject();
  result = CFRetain(Object);
  *a1 = result;
  return result;
}

uint64_t streamAggregate_eventReceived_cold_1(int a1, uint64_t a2, uint64_t a3)
{
  if ((a1 - 1) > 6)
  {
    v5 = "?";
    if (a1 == 8)
    {
      v5 = "PackageFailedToSend";
    }
  }

  else
  {
    v5 = off_278BC92B0[a1 - 1];
  }

  return LogPrintF(&gLogCategory_APTransportStreamAggregate, "OSStatus streamAggregate_eventReceived(APTransportConnectionEvent, CFTypeRef, void *)", a2, "[%{ptr}] ConnectionEvent: %s\n", a3, v5, v3, v4);
}

uint64_t APBrokerHTTPSendRequest_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t APBrokerHTTPSendRequest_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t APBrokerHTTPSendRequest_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t _APBrokerHTTPSendRequestToURL_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 20))
  {
    v3 = "https";
  }

  else
  {
    v3 = "http";
  }

  v4 = *(a1 + 16);
  v5 = "UNKNOWNMETHOD";
  if (v4 == 2)
  {
    v5 = "POST";
  }

  if (v4 == 1)
  {
    v6 = "GET";
  }

  else
  {
    v6 = v5;
  }

  return LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void _APBrokerHTTPSendRequestToURL(APBrokerHTTPRequestData *, CFStringRef)", 33554462, "[%{ptr}] Starting %s %s to %@", a2, v3, v6, a3);
}

uint64_t APTNANDataSessionStatisticsReportCopyDictionary(void *a1, CFTypeRef *a2)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 4294960591;
  if (a2 && (isKindOfClass & 1) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      [a1 infrastructureChannel];
      FigCFDictionarySetValue();
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"TxCCA", [a1 txCCAHistogram]);
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"RxRSSI", [a1 rxRSSIHistogram]);
      [a1 preferred2GChannelsCount];
      FigCFDictionarySetValue();
      [a1 preferred5GChannelsCount];
      FigCFDictionarySetValue();
      [a1 dfsChannelsCount];
      FigCFDictionarySetValue();
      [a1 csaCount];
      FigCFDictionarySetValue();
      [a1 quietIECount];
      FigCFDictionarySetValue();
      [a1 txErrorCount];
      FigCFDictionarySetValue();
      [a1 packetsOn2GCount];
      FigCFDictionarySetValue();
      [a1 packetsNAVOn2GCount];
      FigCFDictionarySetValue();
      [a1 packetsHOFOn2GCount];
      FigCFDictionarySetValue();
      [a1 packetsOverridenOn5GCount];
      FigCFDictionarySetValue();
      [a1 packetsOn5GCount];
      FigCFDictionarySetValue();
      v8 = [a1 infraRelayOperationStatus];
      v9 = MEMORY[0x277CBED28];
      if (!v8)
      {
        v9 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v7, @"InfraRelayOperationStatus", *v9);
      [a1 infraRelayRequestersCount];
      FigCFDictionarySetValue();
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"RxFWDelayHistogram", [a1 rxFWDelayHistogram]);
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"RxIPCDelayHistogram", [a1 rxIPCDelayHistogram]);
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"TxConsecutiveErrorsHistogram", [a1 txConsecutiveErrorsHistogram]);
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"TxPacketExpiryHistogram", [a1 txPacketExpiryHistogram]);
      [a1 txExpiredCount];
      FigCFDictionarySetValue();
      [a1 txNoACKCount];
      FigCFDictionarySetValue();
      [a1 txFailedCount];
      FigCFDictionarySetValue();
      [a1 txNoResourcesCount];
      FigCFDictionarySetValue();
      [a1 txIOErrorCount];
      FigCFDictionarySetValue();
      [a1 txMemoryErrorCount];
      FigCFDictionarySetValue();
      [a1 txChipModeErrorCount];
      FigCFDictionarySetValue();
      [a1 txNoRemotePeerCount];
      FigCFDictionarySetValue();
      [a1 txInternalErrorCount];
      FigCFDictionarySetValue();
      [a1 txDroppedCount];
      FigCFDictionarySetValue();
      [a1 txFirmwareFreePacketCount];
      FigCFDictionarySetValue();
      [a1 txMaxRetriesCount];
      FigCFDictionarySetValue();
      [a1 txForceLifetimeExpiredCount];
      FigCFDictionarySetValue();
      [a1 channelSequenceMismatchOn5GCount];
      FigCFDictionarySetValue();
      [a1 channelSequenceMismatchOn2GCount];
      FigCFDictionarySetValue();
      [a1 infraScanCount];
      FigCFDictionarySetValue();
      [a1 infraAssocCount];
      FigCFDictionarySetValue();
      [a1 infraDisassocCount];
      FigCFDictionarySetValue();
      [a1 countryCode];
      FigCFDictionarySetValue();
      *a2 = CFRetain(v7);
      CFRelease(v7);
      return 0;
    }

    else
    {
      return 4294960568;
    }
  }

  return result;
}

void _APTNANDataSessionStatisticsReportDictionarySetHistogram(CFMutableDictionaryRef theDict, void *key, void *a3)
{
  if (theDict && key)
  {
    if (a3)
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        v7 = Mutable;
        CFStringAppendFormat(Mutable, 0, @"[");
        v16 = OUTLINED_FUNCTION_0_9(v8, v9, v10, v11, v12, v13, v14, v15);
        if (v16)
        {
          v17 = v16;
          v18 = MEMORY[0];
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (MEMORY[0] != v18)
              {
                objc_enumerationMutation(a3);
              }

              v20 = *(8 * i);
              [v20 binStart];
              v22 = v21;
              [v20 binEnd];
              v24 = v23;
              [v20 value];
              CFStringAppendFormat(v7, 0, @"[%.2f, %.2f, %.2f], ", v22, v24, v25);
            }

            v17 = OUTLINED_FUNCTION_0_9(v26, v27, v28, v29, v30, v31, v32, v33);
          }

          while (v17);
        }

        CFStringAppendFormat(v7, 0, @"]");
        CFDictionarySetValue(theDict, key, v7);
        CFRelease(v7);
      }
    }

    else
    {

      CFDictionaryRemoveValue(theDict, key);
    }
  }
}

uint64_t transport_CreateSessionToService_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APBrowserGetStartEventForBrowserDeviceEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  EventTimeRecursive = APSEventRecorderGetEventTimeRecursive();
  if (!EventTimeRecursive)
  {
    return 268431360;
  }

  v5 = EventTimeRecursive;
  if (v3 - 268374017) < 0xC && ((0xB83u >> (v3 - 1)))
  {
    return 268431362;
  }

  v7 = APSEventRecorderGetEventTimeRecursive();
  if (v5 <= v7 || v7 == 0)
  {
    return 268431360;
  }

  else
  {
    return 268431361;
  }
}

uint64_t APBrowserCopyDeviceIDFromBonjourInfo_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APBrowserCopyDeviceIDFromBonjourInfo_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

void __lowPowerKeepAliveController_resumeInternal_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    if (v1)
    {
      CFRetain(v1);
    }

    v5 = *DerivedStorage;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __lowPowerKeepAliveController_timerFired_block_invoke;
    v6[3] = &__block_descriptor_tmp_16_0;
    v6[4] = v1;
    v6[5] = v4;
    dispatch_async(v5, v6);
  }
}

uint64_t APTKeepAliveControllerLowPowerCreate_cold_9(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void __lowPowerKeepAliveController_timerFired_block_invoke_cold_2(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v4 = a4;
  APSLogErrorAt();
  if (a3)
  {
    CFRetain(a3);
  }

  v8 = *(a1 + 8);
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 0x40000000;
  a2[2] = __lowPowerKeepAliveController_sendKeepAlive_block_invoke;
  a2[3] = &__block_descriptor_tmp_18_1;
  a2[4] = a3;
  *(a2 + 10) = v4;
  dispatch_async(v8, a2);
}

uint64_t APTPackageMusicDataGetHeaderSize_cold_1(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13(v2, "outHeaderSize is NULL");
  *a1 = result;
  return result;
}

uint64_t APTPackageMusicDataGetPayloadSize_cold_3(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13(v2, "inHeader is NULL");
  *a1 = result;
  return result;
}

uint64_t APTPackageMusicDataGetPayloadSize_cold_4(_DWORD *a1)
{
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13(v2, "outPayloadSize is NULL");
  *a1 = result;
  return result;
}

uint64_t carPlayHelperUSB_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __carPlayHelperUSB_invalidate_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = DerivedStorage;
    v5[5] = a1;
    dispatch_sync(v3, v5);
  }

  return 0;
}

void carPlayHelperUSB_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    OUTLINED_FUNCTION_1_2();
    v18 = 3221225472;
    v19 = __carPlayHelperUSB_finalize_block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0l;
    v21 = DerivedStorage;
    dispatch_sync(v3, block);
  }

  carPlayHelperUSB_invalidate(a1);
  v4 = DerivedStorage[1];
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = DerivedStorage[1];
    if (v5)
    {
      dispatch_release(v5);
      DerivedStorage[1] = 0;
    }
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_12_0);
    v7 = DerivedStorage[2];
    if (v7)
    {
      dispatch_release(v7);
      DerivedStorage[2] = 0;
    }
  }

  v8 = DerivedStorage[3];
  if (v8)
  {
    dispatch_sync(v8, &__block_literal_global_14_0);
    v9 = DerivedStorage[3];
    if (v9)
    {
      dispatch_release(v9);
      DerivedStorage[3] = 0;
    }
  }

  v10 = DerivedStorage[10];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[10] = 0;
  }

  v11 = DerivedStorage[4];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[4] = 0;
  }

  v12 = DerivedStorage[5];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[5] = 0;
  }

  v13 = DerivedStorage[7];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[7] = 0;
  }

  v14 = DerivedStorage[3];
  if (v14)
  {
    dispatch_release(v14);
    DerivedStorage[3] = 0;
  }

  v15 = DerivedStorage[2];
  if (v15)
  {
    dispatch_release(v15);
    DerivedStorage[2] = 0;
  }

  v16 = DerivedStorage[1];
  if (v16)
  {
    dispatch_release(v16);
    DerivedStorage[1] = 0;
  }
}

NSObject *__carPlayHelperUSB_invalidate_block_invoke(NSObject *result)
{
  isa = result[4].isa;
  if (!*isa)
  {
    v2 = result;
    v3 = *(isa + 5);
    if (v3)
    {
      APConnectivityHelperRemoveAllRegistrations(v3, v2[5].isa);
    }

    v4 = v2[5].isa;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    carPlayHelperUSB_dispatchEvent(v4, 3, 0);
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = dispatch_semaphore_signal(result);
    }

    *v2[4].isa = 1;
  }

  return result;
}

void carPlayHelperUSB_setInterfaceWatchingEnabled(const void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v5 = DerivedStorage;
    CFRetain(a1);
    OUTLINED_FUNCTION_1_2();
    v8 = 3221225472;
    v9 = __carPlayHelperUSB_setInterfaceWatchingEnabled_block_invoke;
    v10 = &__block_descriptor_49_e5_v8__0l;
    v13 = a2;
    v11 = v5;
    v12 = a1;
    dispatch_async(v6, block);
  }
}

void __carPlayHelperUSB_setInterfaceWatchingEnabled_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v3 = *(a1 + 48);
    if (*(v2 + 48) == v3)
    {
      goto LABEL_8;
    }

    v4 = *(v2 + 40);
    v5 = *(a1 + 40);
    if (v3)
    {
      v6 = APConnectivityHelperRegisterForEvent(v4, v5, 4);
      if (v6)
      {
        v7 = v6;
LABEL_13:
        APSLogErrorAt();
        goto LABEL_14;
      }
    }

    else
    {
      v8 = APConnectivityHelperDeregisterForEvent(v4, v5, 4);
      if (v8)
      {
        v7 = v8;
        goto LABEL_13;
      }
    }

    *(*(a1 + 32) + 48) = *(a1 + 48);
    goto LABEL_8;
  }

  v7 = 4294954511;
LABEL_14:
  if (gLogCategory_APBrowserCarUSBHelper <= 90 && (gLogCategory_APBrowserCarUSBHelper != -1 || _LogCategory_Initialize()))
  {
    if (*(a1 + 48))
    {
      v10 = "enable";
    }

    else
    {
      v10 = "disable";
    }

    LogPrintF(&gLogCategory_APBrowserCarUSBHelper, "void carPlayHelperUSB_setInterfaceWatchingEnabled(APCarPlayHelperRef, Boolean)_block_invoke", 33554522, "[%{ptr}] Failed to %s USB interface watching %#m\n", *(a1 + 40), v10, v7);
  }

LABEL_8:
  v9 = *(a1 + 40);

  CFRelease(v9);
}

uint64_t __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_2(uint64_t result, uint64_t a2)
{
  if (gLogCategory_APBrowserCarUSBHelper <= 50)
  {
    v3 = result;
    if (gLogCategory_APBrowserCarUSBHelper != -1)
    {
      return LogPrintF(&gLogCategory_APBrowserCarUSBHelper, "OSStatus carPlayHelperUSB_usbInterfaceChanged(APCarPlayHelperRef, CFDictionaryRef)", 33554482, "[%{ptr}] Ignoring change to %@ USB interface\n", v3, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APBrowserCarUSBHelper, "OSStatus carPlayHelperUSB_usbInterfaceChanged(APCarPlayHelperRef, CFDictionaryRef)", 33554482, "[%{ptr}] Ignoring change to %@ USB interface\n", v3, a2);
    }
  }

  return result;
}

void standardKeepAliveController_timerFiredCheck(uint64_t a1, CMTime *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 68))
  {
    v6 = DerivedStorage;
    time = *a2;
    Seconds = CMTimeGetSeconds(&time);
    time = *(v6 + 56);
    if (Seconds - CMTimeGetSeconds(&time) >= 1.0 && gLogCategory_APTransportKeepAliveControllerStandard <= 60 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_3_0(&gLogCategory_APTransportKeepAliveControllerStandard, "void standardKeepAliveController_timerFiredCheck(APTransportKeepAliveControllerRef, CMTime, Boolean)", v8, "[%{ptr}] Timer was delayed by %.3f seconds\n");
    }

    if (a3)
    {
      CMTimeMake(&rhs, *(v6 + 36), 1000);
      lhs = *a2;
      CMTimeAdd(&time, &lhs, &rhs);
      *(v6 + 56) = time;
    }
  }
}

uint64_t APTransportKeepAliveControllerStandardCreate_cold_6(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t standardKeepAliveController_timerFiredCallback_cold_1(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_2_16();
  return OUTLINED_FUNCTION_3_0(&gLogCategory_APTransportKeepAliveControllerStandard, "OSStatus standardKeepAliveController_handleSlowKeepAlive(APTransportKeepAliveControllerRef)", v8, "### [%{ptr}] Keep-alive taking too long to send (%.3f seconds, %u total)\n");
}

uint64_t standardKeepAliveController_timerFiredCallback_cold_2(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_2_16();
  return OUTLINED_FUNCTION_3_0(&gLogCategory_APTransportKeepAliveControllerStandard, "OSStatus standardKeepAliveController_handleSlowKeepAlive(APTransportKeepAliveControllerRef)", v8, "### [%{ptr}] Network stall detected (%.3f seconds, %u stalls total).\n");
}

uint64_t standardKeepAliveController_timerFiredCallback_cold_3(uint64_t a1)
{
  if (IsAppleInternalBuild())
  {
    v2 = 33554482;
  }

  else
  {
    v2 = 33554462;
  }

  return LogPrintF(&gLogCategory_APTransportKeepAliveControllerStandard, "OSStatus standardKeepAliveController_handleSlowKeepAlive(APTransportKeepAliveControllerRef)", v2, "[%{ptr}] Posting system-wide notification of AirPlay network stall", a1);
}

uint64_t standardKeepAliveController_sendKeepAliveCallback_cold_3(CMTime *a1)
{
  time = *a1;
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_3_0(&gLogCategory_APTransportKeepAliveControllerStandard, "OSStatus standardKeepAliveController_sendKeepAlive(APTransportKeepAliveControllerRef)", v1, "### [%{ptr}] Feedback took a long time to complete (%.3f seconds)\n");
}

void standardKeepAliveController_controllerSuspendedCallback_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v9, HostTimeClock);
  standardKeepAliveController_timerFiredCheck(a1, &v9, 0);
  v7 = MEMORY[0x277CC0898];
  *(a2 + 56) = *MEMORY[0x277CC0898];
  *(a2 + 72) = *(v7 + 16);
  dispatch_set_context(*(a2 + 24), 0);
  v8 = *(a2 + 24);
  if (v8)
  {
    dispatch_source_cancel(*(a2 + 24));
    dispatch_release(v8);
    *(a2 + 24) = 0;
  }

  if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportKeepAliveControllerStandard, "void standardKeepAliveController_controllerSuspendedCallback(void *)", 33554482, "[%{ptr}] Stopped keep alive", a1);
  }

  *a3 = 0;
}

uint64_t __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke_cold_1(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (gLogCategory_APTransportTrafficRegistrar <= 50)
  {
    if (gLogCategory_APTransportTrafficRegistrar != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_9(&gLogCategory_APTransportTrafficRegistrar, "OSStatus trafficRegistrar_getAWDLChannelSequence(APTransportTrafficRegistrarRef, uint8_t *, uint8_t *, uint32_t *)", a3, "[%{ptr}] Ignoring getAWDLChannelSequence on VirtualMachine\n");
    }
  }

  *a2 = -6762;
  return result;
}

uint64_t APTransportTrafficRegistrarGetWifiChannel_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APTNANEndpointSupportsServiceType(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 customData])
    {
      v3 = APSBinaryTXTRecordCopyString();
    }

    else
    {
      [a1 textInfo];
      Value = FigCFDictionaryGetValue();
      if (!Value)
      {
        return APSNANServiceTypeIsKindOfType();
      }

      v3 = CFRetain(Value);
      if (!v3)
      {
        return APSNANServiceTypeIsKindOfType();
      }
    }

    APSNANServiceTypeMakeWithTXTString();
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return APSNANServiceTypeIsKindOfType();
}

uint64_t _APCarPlayControlServerHandleMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  if (!*(a3 + 88))
  {
    APSLogErrorAt();
    return 503;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  OUTLINED_FUNCTION_2_17();
  if (!HTTPConnectionGetNextURLSegmentEx())
  {
    return v12;
  }

  if (strnicmpx())
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_2_17();
  if (!HTTPConnectionGetNextURLSegmentEx())
  {
    return v12;
  }

  if (strnicmpx())
  {
LABEL_24:
    if (gLogCategory_CarPlayControlServer <= 60 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_CarPlayControlServer, "OSStatus _APCarPlayControlServerHandleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 60, "### Bad URL: '%.*s'\n", *(a2 + 8272), *(a2 + 8264));
    }

    v6 = 404;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_2_17();
  if (!HTTPConnectionGetNextURLSegmentEx())
  {
    return v12;
  }

  v10 = *(a2 + 8272) - v11 + *(a2 + 8264);
  if (HTTPScanFHeaderValue(a2 + 24, *(a2 + 8216), "AirPlay-Receiver-Device-ID", "%llu", &v9) != 1)
  {
    return 456;
  }

  v12 = (*(a3 + 88))(a3, v9, v11, v10, *(a3 + 96));
  if (v12)
  {
    v6 = 400;
  }

  else
  {
    v6 = 200;
  }

LABEL_11:
  v12 = MEMORY[0x23EEDD8F0](a1, v6, v12, 0, 0, 0);
  if (v12)
  {
    APSLogErrorAt();
  }

  return v12;
}

uint64_t APTransportConnectionUDPCreate_cold_2()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_12();
  return APSSignalErrorAt();
}

uint64_t APTransportConnectionUDPCreate_cold_3()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_12();
  return APSSignalErrorAt();
}

uint64_t APTransportConnectionUDPCreate_cold_4()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_12();
  return APSSignalErrorAt();
}

uint64_t APTransportConnectionUDPCreate_cold_5()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t udpconnection_copyPropertyInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_copyPropertyInternal_cold_2()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_setPropertyInternal_cold_3()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t udpconnection_setPropertyInternal_cold_4()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t udpconnection_setPropertyInternal_cold_6()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

void udpconnection_setPropertyInternal_cold_8(uint64_t a1, uint64_t a2)
{
  APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionUDP, "OSStatus udpconnection_setPropertyInternal(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554522, "[%{ptr}] Tried to set bound interface after stream was resumed", a2);
  }

  OUTLINED_FUNCTION_1_1();
}

uint64_t udpconnection_resumeInternal_cold_5()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t udpconnection_resumeInternal_cold_6()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t udpconnection_resumeInternal_cold_7()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t udpconnection_resumeInternal_cold_8()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t udpconnection_resumeInternal_cold_12(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDP <= 90)
  {
    if (gLogCategory_APTransportConnectionUDP != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APTransportConnectionUDP, "OSStatus udpconnection_setupConnectorSocket(APTransportConnectionRef, int)", 33554522, "[%{ptr}] connect failed: %#m\n", a1, a2);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t udpconnection_resumeInternal_cold_15(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6709;
  return result;
}

uint64_t udpconnection_resumeInternal_cold_16(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6709;
  return result;
}

uint64_t udpconnection_acquirePackageInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_acquirePackageWithMessageSizeInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_sendPackageInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_sendPackageInternal_cold_3()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();

  return APSSignalErrorAt();
}

uint64_t apapPackage_CreateBBufRepresentation_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTransportPackageAPAP <= 90)
  {
    if (gLogCategory_APTransportPackageAPAP != -1)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportPackageAPAP, "CMBlockBufferRef apapPackage_CreateBBufRepresentation(APTransportPackageRef)", a3, "[%{ptr}] failed to CreateBBufRepresentation, invalid APAP header in messageData err=%#m");
    }

    result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportPackageAPAP);
    if (result)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportPackageAPAP, "CMBlockBufferRef apapPackage_CreateBBufRepresentation(APTransportPackageRef)", a3, "[%{ptr}] failed to CreateBBufRepresentation, invalid APAP header in messageData err=%#m");
    }
  }

  return result;
}

uint64_t apapPackage_CreateBBufRepresentation_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTransportPackageAPAP <= 90)
  {
    if (gLogCategory_APTransportPackageAPAP != -1)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportPackageAPAP, "CMBlockBufferRef apapPackage_CreateBBufRepresentation(APTransportPackageRef)", a3, "[%{ptr}] failed to CreateBBufRepresentation, messageData length %zu exceeds maxPayloadSize %zu");
    }

    result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportPackageAPAP);
    if (result)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportPackageAPAP, "CMBlockBufferRef apapPackage_CreateBBufRepresentation(APTransportPackageRef)", a3, "[%{ptr}] failed to CreateBBufRepresentation, messageData length %zu exceeds maxPayloadSize %zu");
    }
  }

  return result;
}

void apapPackage_CreateBBufRepresentation_cold_4(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }
}

uint64_t apapPackage_CreateBBufRepresentation_cold_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTransportPackageAPAP <= 90)
  {
    if (gLogCategory_APTransportPackageAPAP != -1)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportPackageAPAP, "CMBlockBufferRef apapPackage_CreateBBufRepresentation(APTransportPackageRef)", a3, "[%{ptr}] failed to CreateBBufRepresentation, messageData is NULL");
    }

    result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportPackageAPAP);
    if (result)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportPackageAPAP, "CMBlockBufferRef apapPackage_CreateBBufRepresentation(APTransportPackageRef)", a3, "[%{ptr}] failed to CreateBBufRepresentation, messageData is NULL");
    }
  }

  return result;
}

uint64_t apapPackage_CreateBBufRepresentation_cold_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTransportPackageAPAP <= 90)
  {
    if (gLogCategory_APTransportPackageAPAP != -1)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportPackageAPAP, "CMBlockBufferRef apapPackage_CreateBBufRepresentation(APTransportPackageRef)", a3, "[%{ptr}] failed to CreateBBufRepresentation, unsupported messageType '%C'");
    }

    result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportPackageAPAP);
    if (result)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportPackageAPAP, "CMBlockBufferRef apapPackage_CreateBBufRepresentation(APTransportPackageRef)", a3, "[%{ptr}] failed to CreateBBufRepresentation, unsupported messageType '%C'");
    }
  }

  return result;
}

void httppackage_appendCustomHeaderField(const void *a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a1, *MEMORY[0x277CEA380]) && !CFEqual(a1, *MEMORY[0x277CEA360]))
  {
    if (a2 && (v6 = CFGetTypeID(a2), v6 == CFStringGetTypeID()))
    {
      CFStringCopyUTF8CString();
      CFStringCopyUTF8CString();
      HTTPHeader_SetField(*(DerivedStorage + 24) + 24, 0, "%s", 0);
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

void httppackage_CopyMessageData_cold_1(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }
}

uint64_t carPlayHelperSession_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carPlayHelperSession_invalidate_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    block[6] = a1;
    dispatch_sync(v3, block);
  }

  return 0;
}

void carPlayHelperSession_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    OUTLINED_FUNCTION_1_2();
    v25 = 3221225472;
    v26 = __carPlayHelperSession_finalize_block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0l;
    v28 = DerivedStorage;
    dispatch_sync(v3, block);
  }

  carPlayHelperSession_invalidate(a1);
  v4 = DerivedStorage[1];
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = DerivedStorage[1];
    if (v5)
    {
      dispatch_release(v5);
      DerivedStorage[1] = 0;
    }
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_130);
    v7 = DerivedStorage[2];
    if (v7)
    {
      dispatch_release(v7);
      DerivedStorage[2] = 0;
    }
  }

  v8 = DerivedStorage[3];
  if (v8)
  {
    dispatch_sync(v8, &__block_literal_global_132);
    v9 = DerivedStorage[3];
    if (v9)
    {
      dispatch_release(v9);
      DerivedStorage[3] = 0;
    }
  }

  v10 = DerivedStorage[33];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[33] = 0;
  }

  v11 = DerivedStorage[4];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[4] = 0;
  }

  v12 = DerivedStorage[5];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[5] = 0;
  }

  v13 = DerivedStorage[28];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[28] = 0;
  }

  v14 = DerivedStorage[10];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[10] = 0;
  }

  v15 = DerivedStorage[20];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[20] = 0;
  }

  v16 = DerivedStorage[21];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[21] = 0;
  }

  v17 = DerivedStorage[16];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[16] = 0;
  }

  v18 = DerivedStorage[17];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[17] = 0;
  }

  v19 = DerivedStorage[18];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[18] = 0;
  }

  v20 = DerivedStorage[31];
  if (v20)
  {

    DerivedStorage[31] = 0;
  }

  v21 = DerivedStorage[3];
  if (v21)
  {
    dispatch_release(v21);
    DerivedStorage[3] = 0;
  }

  v22 = DerivedStorage[2];
  if (v22)
  {
    dispatch_release(v22);
    DerivedStorage[2] = 0;
  }

  v23 = DerivedStorage[1];
  if (v23)
  {
    dispatch_release(v23);
    DerivedStorage[1] = 0;
  }
}

intptr_t __carPlayHelperSession_invalidate_block_invoke(intptr_t result)
{
  if (!**(result + 32))
  {
    v1 = result;
    if (_MergedGlobals_18 != -1)
    {
      dispatch_once(&_MergedGlobals_18, &__block_literal_global_176);
    }

    [qword_281309C60 removeCarPlayHelper:v1[5]];
    v2 = *(v1[4] + 40);
    if (v2)
    {
      APConnectivityHelperRemoveAllRegistrations(v2, v1[6]);
    }

    v3 = v1[6];
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    carPlayHelperSession_dispatchEvent(v3, 3, 0);
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = dispatch_semaphore_signal(result);
    }

    *v1[4] = 1;
  }

  return result;
}

void carPlayHelperSession_setInterfaceWatchingEnabled(const void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v5 = DerivedStorage;
    CFRetain(a1);
    OUTLINED_FUNCTION_1_2();
    v8 = 3221225472;
    v9 = __carPlayHelperSession_setInterfaceWatchingEnabled_block_invoke;
    v10 = &__block_descriptor_49_e5_v8__0l;
    v11 = v5;
    v12 = a1;
    v13 = a2;
    dispatch_async(v6, block);
  }
}

void __carPlayHelperSession_setInterfaceWatchingEnabled_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!*v4)
  {
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrowserCarSessionHelper)))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSessionHelper, "void carPlayHelperSession_setInterfaceWatchingEnabled(APCarPlayHelperRef, Boolean)_block_invoke", a3, "[%{ptr}] %s %s interface watching\n");
    }

    v5 = *(a1 + 32);
    if (*(a1 + 48))
    {
      if (*(v5 + 64))
      {
        v6 = OUTLINED_FUNCTION_7_7(v5);
        APConnectivityHelperRegisterForEvent(v6, v7, 4);
        v5 = *(a1 + 32);
      }

      if (*(v5 + 112))
      {
        v8 = OUTLINED_FUNCTION_7_7(v5);
        APConnectivityHelperRegisterForEvent(v8, v9, 3);
        v10 = OUTLINED_FUNCTION_12_3();
        APConnectivityHelperRegisterForEvent(v10, v11, 9);
        v12 = OUTLINED_FUNCTION_12_3();
        APConnectivityHelperRegisterForEvent(v12, v13, 10);
        v5 = *(a1 + 32);
      }

      v14 = OUTLINED_FUNCTION_7_7(v5);
      APConnectivityHelperRegisterForEvent(v14, v15, 6);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_7_7(v5);
      APConnectivityHelperDeregisterForEvent(v16, v17, 6);
      v18 = *(a1 + 32);
      if (*(v18 + 64))
      {
        v19 = OUTLINED_FUNCTION_7_7(v18);
        APConnectivityHelperDeregisterForEvent(v19, v20, 4);
        carPlayHelperSession_usbInterfaceListeningStopped(*(a1 + 40));
        v18 = *(a1 + 32);
      }

      if (*(v18 + 112))
      {
        v21 = OUTLINED_FUNCTION_7_7(v18);
        APConnectivityHelperDeregisterForEvent(v21, v22, 3);
        v23 = OUTLINED_FUNCTION_12_3();
        APConnectivityHelperDeregisterForEvent(v23, v24, 9);
        v25 = OUTLINED_FUNCTION_12_3();
        APConnectivityHelperDeregisterForEvent(v25, v26, 10);
        carPlayHelperSession_wifiNetworkListeningStopped(*(a1 + 40));
      }

      carPlayHelperSession_dispatchEvent(*(a1 + 40), 2, 0);
    }
  }

  v27 = *(a1 + 40);
  *(*(a1 + 32) + 48) = *(a1 + 48);

  CFRelease(v27);
}

uint64_t carPlayHelperSession_wifiNetworkChanged(const void *a1, uint64_t a2)
{
  updated = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HIBYTE(v80) = 0;
  if (*DerivedStorage)
  {
    return updated;
  }

  v5 = DerivedStorage;
  v6 = @"N/A";
  if (a2)
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    TypeID = CFStringGetTypeID();
    v16 = OUTLINED_FUNCTION_13_5(TypeID, v9, v10, v11, v12, v13, v14, v15, v63, v65, v67, v69, v71, v73, v75, v77, buf, v80, updated);
    v17 = updated;
    v18 = CFStringGetTypeID();
    v26 = OUTLINED_FUNCTION_13_5(v18, v19, v20, v21, v22, v23, v24, v25, v64, v66, v68, v70, v72, v74, v76, v78, buf, v80, updated);
    v27 = a1;
    v28 = updated;
    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
    v30 = CFDictionaryGetInt64() == 0;
    updated = 0;
    if (v17 == -6727)
    {
      v31 = @"N/A";
    }

    else
    {
      v31 = v16;
    }

    v32 = BooleanIfPresent == 0;
    v38 = v28 == -6727;
    a1 = v27;
    v33 = v26;
    if (v38)
    {
      v34 = @"N/A";
    }

    else
    {
      v34 = v26;
    }

    v6 = v31;
  }

  else
  {
    v33 = 0;
    TypedValue = 0;
    v30 = 1;
    v32 = 1;
    v34 = @"N/A";
  }

  OUTLINED_FUNCTION_11_6();
  if (v36 ^ v37 | v38 && (v35 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrowserCarSessionHelper)))
  {
    OUTLINED_FUNCTION_4_12();
    if (v41)
    {
      v42 = "[Session/WiFi/USB]";
      if (v38)
      {
        v42 = "[Session/USB]";
      }

      v43 = "[Session/WiFi]";
    }

    else
    {
      v42 = "[Bonjour/WiFi/USB]";
      if (v38)
      {
        v42 = "[Bonjour/USB]";
      }

      v43 = "[Bonjour/WiFi]";
    }

    if (v38)
    {
      v43 = "<Invalid>";
    }

    if (v40)
    {
      v44 = v42;
    }

    else
    {
      v44 = v43;
    }

    v45 = "Y";
    if (HIBYTE(v80))
    {
      v46 = "Y";
    }

    else
    {
      v46 = "N";
    }

    if (v32)
    {
      v46 = "N/A";
    }

    if (v30)
    {
      v45 = "N";
    }

    v73 = v45;
    v75 = TypedValue;
    v69 = v46;
    v71 = v34;
    v63 = a1;
    v65 = v44;
    v67 = v6;
    OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_wifiNetworkChanged(APCarPlayHelperRef, CFDictionaryRef)", v39, "[%{ptr}] %s WiFi Network changed to: %@, IsCarPlay: %s, CarPlay UUID: %@, isLinkDownDebounceInProgress: %s, interfaceName: %@\n");
  }

  if (HIBYTE(v80))
  {
    if (*(v5 + 4))
    {
      APSPowerAssertionRaiseTemporary();
    }

    if (FigCFEqual() && FigCFEqual())
    {
      OUTLINED_FUNCTION_11_6();
      if (v36 ^ v37 | v38 && (v47 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrowserCarSessionHelper)))
      {
        OUTLINED_FUNCTION_4_12();
        v61 = "[%{ptr}] %s Ignoring WiFi network changed since wifiInterfaceName and wifiCurrentUUID did not change\n";
LABEL_87:
        OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_wifiNetworkChanged(APCarPlayHelperRef, CFDictionaryRef)", v48, v61);
        return updated;
      }

      return updated;
    }

    v49 = *(v5 + 16);
    *(v5 + 16) = TypedValue;
    if (TypedValue)
    {
      CFRetain(TypedValue);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    v50 = *(v5 + 17);
    *(v5 + 17) = v33;
    if (v33)
    {
      CFRetain(v33);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    *(v5 + 15) = CFAbsoluteTimeGetCurrent();
    if (*(v5 + 33))
    {
      APSEventRecorderRecordEvent();
      v51 = LogCategoryCopyOSLogHandle();
      v52 = v51;
      if (v51)
      {
        v53 = v51;
      }

      else
      {
        v53 = MEMORY[0x277D86220];
      }

      if (os_signpost_enabled(v53))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v53, OS_SIGNPOST_EVENT, 0x2B8D07E4uLL, "AP_SIGNPOST_CAR_WIFI_LINKUP", "", &buf, 2u);
      }

      if (v52)
      {
      }
    }

    APConnectivityHelperRegisterActivity(*(v5 + 5), a1, 0);
    if (!v5[177])
    {
      if (_MergedGlobals_18 != -1)
      {
        dispatch_once(&_MergedGlobals_18, &__block_literal_global_176);
      }

      [qword_281309C60 checkCarPlayControlAdvertisingForWiFiUUID:{v33, v63, v65, v67, v69, v71, v73, v75}];
    }

    updated = carPlayHelperSession_updateNetworkAndSessionState(a1);
    if (!updated)
    {
      return updated;
    }

LABEL_91:
    APSLogErrorAt();
    return updated;
  }

  if (v30)
  {
    v54 = *(v5 + 16);
    if (!v54)
    {
      return updated;
    }

    CFRelease(v54);
    *(v5 + 16) = 0;
    v55 = *(v5 + 17);
    if (v55)
    {
      CFRelease(v55);
      *(v5 + 17) = 0;
    }

    *(v5 + 15) = CFAbsoluteTimeGetCurrent();
    v56 = *(v5 + 23);
    if (v56 && *(v5 + 52) == 2)
    {

      *(v5 + 23) = 0;
      v57 = *(v5 + 24);
      if (v57)
      {
        CFRelease(v57);
        *(v5 + 24) = 0;
      }

      *(v5 + 25) = 0;
      *(v5 + 52) = 0;
      OUTLINED_FUNCTION_11_6();
      if (v36 ^ v37 | v38 && (v59 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrowserCarSessionHelper)))
      {
        OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_wifiNetworkChanged(APCarPlayHelperRef, CFDictionaryRef)", v58, "[%{ptr}] %###s %s Releasing SessionHost for WiFi connection.\n");
      }
    }

    APConnectivityHelperDeregisterActivity(*(v5 + 5), a1, 0);
    updated = carPlayHelperSession_updateNetworkAndSessionState(a1);
    if (!updated)
    {
      return updated;
    }

    goto LABEL_91;
  }

  OUTLINED_FUNCTION_11_6();
  if (v36 ^ v37 | v38 && (v60 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrowserCarSessionHelper)))
  {
    OUTLINED_FUNCTION_4_12();
    v61 = "[%{ptr}] %###s %s Ignoring WiFi network changed since LinkDownDebounceInProgress is set.\n";
    goto LABEL_87;
  }

  return updated;
}

uint64_t APCarPlayHelperSessionCreate_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72200;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72200;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_9(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t carPlayHelperSession_dispatchEvent_cold_1()
{
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_6_11();
  v7 = "[Session/WiFi]";
  if (v8)
  {
    v7 = "<Invalid>";
  }

  if (!v4)
  {
    v6 = v7;
  }

  v9 = "[Bonjour/USB]";
  v8 = v5 == 0;
  v10 = "[Bonjour/WiFi]";
  if (v8)
  {
    v10 = "<Invalid>";
  }

  else
  {
    v9 = "[Bonjour/WiFi/USB]";
  }

  if (v4)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v3)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  return LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "void carPlayHelperSession_dispatchEvent(APCarPlayHelperRef, APCarPlayHelperEventType, CFDictionaryRef)", 33554452, "[%{ptr}] %s Dispatching event %d with info %@\n", v0, v12, v1, v2);
}

uint64_t carPlayHelperSession_usbInterfaceListeningStopped_cold_1()
{
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrowserCarSessionHelper, "void carPlayHelperSession_usbInterfaceListeningStopped(APCarPlayHelperRef)", v0, "[%{ptr}] %s ConnectivityHelper stopped listening to USB\n");
}

uint64_t carPlayHelperSession_wifiNetworkListeningStopped_cold_1()
{
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrowserCarSessionHelper, "void carPlayHelperSession_wifiNetworkListeningStopped(APCarPlayHelperRef)", v0, "[%{ptr}] %s ConnectivityHelper stopped listening to WiFi\n");
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_1(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = carPlayHelperSession_wifiNetworkChanged(*(a1 + 48), *(a1 + 56));
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return APSLogErrorAt();
  }

  return result;
}

void __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_2()
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    OUTLINED_FUNCTION_10_8();
    if (!v0 || OUTLINED_FUNCTION_8(&gLogCategory_APBrowserCarSessionHelper))
    {
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_usbInterfaceChanged(APCarPlayHelperRef, CFDictionaryRef)", v1, "[%{ptr}] %s Ignoring change to %@ USB interface\n");
    }
  }
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_usbInterfaceChanged(APCarPlayHelperRef, CFDictionaryRef)", v0, "[%{ptr}] %s USB Network interface changed to %@, powerAssertSet: %s\n");
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_usbInterfaceChanged(APCarPlayHelperRef, CFDictionaryRef)", v0, "[%{ptr}] %###s %s Releasing SessionHost for USB connection.\n");
}

void __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_11()
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    OUTLINED_FUNCTION_10_8();
    if (!v0 || OUTLINED_FUNCTION_8(&gLogCategory_APBrowserCarSessionHelper))
    {
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSessionHelper, "void carPlayHelperSession_resetRSDInterfaceIfNeeded(APCarPlayHelperRef, CFStringRef, CFArrayRef)", v1, "[%{ptr}] %s Ignoring %@ interface\n");
    }
  }
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_12()
{
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_9(&gLogCategory_APBrowserCarSessionHelper, "void carPlayHelperSession_resetRSDInterfaceIfNeeded(APCarPlayHelperRef, CFStringRef, CFArrayRef)", v0, "[%{ptr}] %s RSD network interface changed to NULL");
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_14()
{
  OUTLINED_FUNCTION_2_18();
  OUTLINED_FUNCTION_6_11();
  if (!v2)
  {
    switch(*v0)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      default:
        JUMPOUT(0);
    }
  }
}

void __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_21(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }
}

void __getCARSessionRequestAgentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCARSessionRequestAgentClass(void)_block_invoke") description:{@"APCarPlayHelperSession.m", 63, @"Unable to find class %s", "CARSessionRequestAgent"}];
  __break(1u);
}

void __getCARSessionRequestAgentClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayHelperSession.m", 59, @"%s", *a1}];
  __break(1u);
}

void __APTransportStreamEnableReverseControl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportStream)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportStream, "OSStatus stream_enableReverseControlInternal(FigTransportStreamRef)", v2, "[%{ptr}] Enabling reverse control.\n");
  }

  if (*(DerivedStorage + 72))
  {
    APSLogErrorAt();
    v26 = -16617;
    goto LABEL_28;
  }

  v4 = 48;
  if (!*(DerivedStorage + 24))
  {
    v4 = 56;
  }

  v5 = *(DerivedStorage + v4);
  if (*(v5 + 9))
  {
    v26 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_11_7();
  if (v7)
  {
    v6 = 48;
  }

  v8 = *(*(DerivedStorage + v6) + 40);
  if (v8)
  {
    APTransportConnectionGetCMBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v11)
    {
      v26 = -12782;
      goto LABEL_27;
    }

    v12 = v11(v10, @"RemoteNetworkIPAddress", v8);
    if (v12)
    {
      v26 = v12;
      goto LABEL_27;
    }
  }

  v13 = *(DerivedStorage + 120);
  if (v13)
  {
    v14 = *(DerivedStorage + 128);
    if (v14)
    {
      v15 = *(v5 + 24);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (!v16)
      {
        v26 = -12782;
        goto LABEL_27;
      }

      v17 = v16(v15, v13, v14);
      if (v17)
      {
        v26 = v17;
        goto LABEL_27;
      }
    }
  }

  v19 = *(v5 + 24);
  v18 = *(v5 + 32);
  v20 = *(DerivedStorage + 184);
  v21 = *(DerivedStorage + 96);
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v22)
  {
    v26 = -12782;
    goto LABEL_27;
  }

  v23 = v22(v19, v1, v18, v20, v21);
  if (v23)
  {
    v26 = v23;
    goto LABEL_27;
  }

  v24 = *(v5 + 24);
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v25)
  {
    v26 = -12782;
    goto LABEL_27;
  }

  v26 = v25(v24);
  if (v26)
  {
LABEL_27:
    APSLogErrorAt();
    goto LABEL_28;
  }

  *(v5 + 9) = 1;
  stream_postCachedConnectionEvent(v1, v5);
LABEL_28:
  OUTLINED_FUNCTION_8_1();
  *(v27 + 24) = v26;
}

uint64_t APTransportStreamCopyConvertedLinkLocalIPv6Addresses(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  *buffer = 0;
  v17 = 0;
  v19 = 0;
  v18 = 0;
  cf = 0;
  theData = 0;
  if (!a2)
  {
    return v3;
  }

  v4 = OUTLINED_FUNCTION_5_2();
  if (CFArrayGetCount(v4) < 1)
  {
    return 0;
  }

  if (!v2 || (v6 = CFGetTypeID(v2), v6 != FigTransportStreamGetTypeID()))
  {
    if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportStream)))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APTransportStream, "CFArrayRef APTransportStreamCopyConvertedLinkLocalIPv6Addresses(FigTransportStreamRef, CFArrayRef)", v5, "TransportControlStream is not a FigTransportStream: [%{ptr}]\n");
    }

    v3 = 0;
    goto LABEL_16;
  }

  v7 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, @"LocalNetworkIPAddress", v7, &theData);
  }

  v10 = FigTransportStreamGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, @"LocalInterfaceName", v7, &cf);
    v12 = cf;
  }

  else
  {
    v12 = 0;
  }

  if (!(theData | v12))
  {
    return 0;
  }

  if (theData)
  {
    v20.location = 0;
    v20.length = 28;
    CFDataGetBytes(theData, v20, buffer);
  }

  v3 = APSNetworkCopyConvertedLinkLocalIPv6Addresses();
  if (theData)
  {
    CFRelease(theData);
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t stream_RelinquishMessageBBuf(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_5_2();
    CFRetain(v3);
    APSDispatchAsyncFHelper();
  }

  return 0;
}

uint64_t stream_SendBatch(const void *a1, unsigned int a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a1 && a3)
  {
    v5 = OUTLINED_FUNCTION_5_2();
    if (CFArrayGetCount(v5) >= 1)
    {
      CFRetain(a1);
      CFRetain(a3);
      APSDispatchAsyncFHelper();
    }

    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294950686;
  }
}

uint64_t stream_createConnectionAddressFromEventData(int a1, CFDataRef theData)
{
  v10 = 0;
  *buffer = 0;
  v7 = 0;
  v9 = 0;
  v8 = 0;
  if (!theData)
  {
    return 0;
  }

  if (CFDataGetLength(theData) != 28)
  {
    if (gLogCategory_APTransportStream > 60 || gLogCategory_APTransportStream == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    v5 = "[%{ptr}] Event data was not the expected size";
    goto LABEL_11;
  }

  v11.location = 0;
  v11.length = 28;
  CFDataGetBytes(theData, v11, buffer);
  result = CFStringCreateF(&v10, "%##a", buffer);
  if (!result)
  {
    if (gLogCategory_APTransportStream > 60 || gLogCategory_APTransportStream == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    v5 = "[%{ptr}] Could not create IP address from connection event data";
LABEL_11:
    OUTLINED_FUNCTION_3_0(&gLogCategory_APTransportStream, "CFStringRef stream_createConnectionAddressFromEventData(FigTransportStreamRef, CFTypeRef)", v3, v5);
    return 0;
  }

  return result;
}

uint64_t stream_CopyProperty_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t stream_DumpHierarchy_cold_1_0()
{
  OUTLINED_FUNCTION_12_4();
  APSLogErrorAt();
  OUTLINED_FUNCTION_12_4();

  return APSLogErrorAt();
}

uint64_t stream_recordConnectionEvent_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTransportStream <= 60)
  {
    if (gLogCategory_APTransportStream != -1)
    {
      return OUTLINED_FUNCTION_3_0(&gLogCategory_APTransportStream, "void stream_recordSuccessfulConnectionStartTime(FigTransportStreamRef, CFTypeRef)", a3, "[%{ptr}] No start time for connection to %@\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_3_0(&gLogCategory_APTransportStream, "void stream_recordSuccessfulConnectionStartTime(FigTransportStreamRef, CFTypeRef)", a3, "[%{ptr}] No start time for connection to %@\n");
    }
  }

  return result;
}

uint64_t APTTrafficMetricsMessageReadStarted(uint64_t result, int a2)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_12();
    mach_absolute_time();
    APSAtomicMessageQueueSendMessage();
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsMessageReadFinished(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_12();
    LODWORD(v13) = 12;
    v5 = mach_absolute_time();
    LODWORD(v14) = a3;
    OUTLINED_FUNCTION_3_11(v5, v6, v7, v8, v9, v10, v11, v12, v13, v5, v14, a2, v15);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsMessageProcessed(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_12();
    LODWORD(v9) = 13;
    v1 = mach_absolute_time();
    OUTLINED_FUNCTION_0_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    return APSRealTimeSignalRaise();
  }

  return result;
}

void datagramPackage_SetMessageData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  if (v5 != a2)
  {
    *(DerivedStorage + 8) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    datagramPackage_updateMessageDataArrivalTicks(a1);
  }
}

void datagramPackage_SetArrivalTicks(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16) != a2)
  {
    *(DerivedStorage + 16) = a2;

    datagramPackage_updateMessageDataArrivalTicks(a1);
  }
}

void datagramPackage_updateMessageDataArrivalTicks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    if (*(DerivedStorage + 16))
    {
      UInt64 = FigCFNumberCreateUInt64();
      CMSetAttachment(*(DerivedStorage + 8), *MEMORY[0x277CEA348], UInt64, 0);
      if (UInt64)
      {

        CFRelease(UInt64);
      }
    }

    else
    {
      v4 = *MEMORY[0x277CEA348];

      CMRemoveAttachment(v2, v4);
    }
  }
}

uint64_t browser_invalidateNoQueueCheck(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    return 4294960573;
  }

  v3 = DerivedStorage;
  browser_setModeInternal(a1, 0);
  v4 = *(v3 + 96);
  if (v4)
  {
    APBrowserBTLEManagerInvalidate(v4);
  }

  if (*(v3 + 104))
  {
    APBrowserDeviceQueryManagerGetCMBaseObject();
    if (v5)
    {
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }
  }

  v8 = *(v3 + 184);
  if (v8)
  {
    APConnectivityHelperRemoveAllRegistrations(v8, a1);
  }

  v9 = *(v3 + 144);
  if (v9)
  {
    APBrowserRapportManagerInvalidate(v9);
  }

  v10 = *(v3 + 88);
  if (v10)
  {
    APBonjourBrowserInvalidate(v10);
  }

  [*(v3 + 224) stopBrowsing];
  browser_stopNI(a1);
  browser_ensureDetailedForeverTimerStopped(a1);
  v11 = browser_dispatchEvent(a1, 8, 0);
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  if (*(v3 + 56))
  {
    FigInstallSysdiagnoseBlock();
  }

  *(v3 + 245) = 1;
  return v11;
}

uint64_t browser_tickleDetailedMode(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    APSLogErrorAt();
    return 4294960573;
  }

  else if (*(DerivedStorage + 24) == 3)
  {
    if (*(DerivedStorage + 130) && *(DerivedStorage + 129) && *(DerivedStorage + 198))
    {
      v2 = APBonjourBrowserTickleDetailedMode(*(DerivedStorage + 88));
      if (v2)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960587;
  }

  return v2;
}

uint64_t browser_invalidate(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = browser_invalidateNoQueueCheck(a1);
  if (v2)
  {
    APSLogErrorAt();
  }

  return v2;
}

uint64_t browser_getMode(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    return 4294960573;
  }

  v3 = DerivedStorage;
  result = 0;
  **(a1 + 8) = *(v3 + 24);
  return result;
}

void __browser_updateDetailedDiscoveryThresholdTimer_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_4_14(DerivedStorage);
  if (v4 <= 50)
  {
    if (v4 != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_9(v2, "void browser_handleDetailedDiscoveryThresholdTimerFired(APBrowserRef)", v3, "Invoking TTR error for Discovery being turned on for too long.\n");
      goto LABEL_5;
    }

    if (OUTLINED_FUNCTION_8(v2))
    {
      v2 = *DerivedStorage;
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = CFStringCreateF(0, "\n");
  if (v5)
  {
    v6 = v5;
    v7 = CFStringCreateF(0, "TTR: Airplay Discovery turned ON for %ds or longer", 3600);
    if (v7)
    {
      v8 = v7;
      APSTapToRadarInvoke();
      CFRelease(v6);
      v6 = v8;
    }

    CFRelease(v6);
  }
}

void __browser_ensureDetailedForeverTimerStarted_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_4_14(DerivedStorage);
  if (v4 <= 30 && (v4 != -1 || OUTLINED_FUNCTION_8_0(v3)))
  {
    OUTLINED_FUNCTION_1();
    LogPrintF(v5, v6, v7, v8);
  }

  CMBaseObjectGetDerivedStorage();
  if (APSRTCReportingAgentCreate())
  {
    APSLogErrorAt();
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      CFDictionarySetInt64();
      CFDictionarySetValue(Mutable, @"sessionType", @"Discovery");
      APSRTCReportingAgentSendEvent();
      OUTLINED_FUNCTION_10_10();
      if (v13 ^ v14 | v12)
      {
        if (v11 != -1 || OUTLINED_FUNCTION_8_0(v10))
        {
          OUTLINED_FUNCTION_1();
          LogPrintF(v15, v16, v17, v18, Mutable);
        }
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  browser_ensureDetailedForeverTimerStopped(v1);
}

void __browser_startOrExtendDiscoverySessionThresholdTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  mach_absolute_time();
  CFAbsoluteTimeGetCurrent();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 24);
  v4 = OUTLINED_FUNCTION_4_14(DerivedStorage);
  if (v6 <= 50)
  {
    if (v6 != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_9(v4, "OSStatus browser_handleDiscoverySessionThresholdTimerFired(APBrowserRef)", v5, "Discovery session threshold timer fired. Discovery active: %s");
      goto LABEL_5;
    }

    if (OUTLINED_FUNCTION_8(v4))
    {
      v4 = *DerivedStorage;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v3)
  {
    browser_batchAndSendDiscoveredDeviceRTCMetrics(v1);
    APSEventRecorderRecordEventWithFlagsAtTime();

    browser_ensureDiscoverySessionThresholdTimerStopped(v1);
  }
}

uint64_t browser_startWiFiPowerChangedListener(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 196))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (!*(DerivedStorage + 192))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  v4 = OUTLINED_FUNCTION_2_21();
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v4))
      {
        goto LABEL_8;
      }

      v4 = *v3;
    }

    OUTLINED_FUNCTION_11(v4, "OSStatus browser_startWiFiPowerChangedListener(APBrowserRef)", v5, "Starting WiFi power listener.\n");
  }

LABEL_8:
  v10 = APConnectivityHelperRegisterForEvent(*(v3 + 184), a1, 2);
  if (v10)
  {
    v14 = v10;
    APSLogErrorAt();
    return v14;
  }

  *(v3 + 196) = 1;
  APConnectivityHelperQueryWiFiPower(*(v3 + 184), v3 + 198);
  v11 = OUTLINED_FUNCTION_2_21();
  if (!(v8 ^ v9 | v7))
  {
    return 0;
  }

  if (v13 == -1)
  {
    if (!OUTLINED_FUNCTION_7(v11))
    {
      return 0;
    }

    v11 = *v3;
  }

  OUTLINED_FUNCTION_11(v11, "OSStatus browser_startWiFiPowerChangedListener(APBrowserRef)", v12, "WiFi powered %s.");
  return 0;
}

void __browser_flushAllBTLEDevices_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  cf = 0;
  v8 = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"lastInfo");
    if (Value)
    {
      if (browser_createBonjourInfoForBTLEDevice(Value, 1, &v8, &cf))
      {
        APSLogErrorAt();
        v5 = v8;
      }

      else
      {
        v5 = v8;
        if (browser_removeService(*(a1 + 32), @"AirPlay", v8) || browser_removeService(*(a1 + 32), @"RAOP", cf))
        {
          APSLogErrorAt();
        }
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v6 = cf;
      if (cf)
      {

        CFRelease(v6);
      }
    }
  }
}

uint64_t browser_handleBonjourRemove(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  CMBaseObjectGetDerivedStorage();
  v6 = browser_removeService(a1, a2, a3);
  if (v6)
  {
    APSLogErrorAt();
  }

  return v6;
}

uint64_t browser_setEventHandler(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    return 4294960573;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 24))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  else
  {
    result = 0;
    *(v3 + 248) = *(a1 + 8);
  }

  return result;
}

uint64_t browser_startTrackingDevice(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_18_1(a1);
  if (*(v4 + 245))
  {
    return 4294960573;
  }

  if (!v1)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v5 = v4;
  if (*(v4 + 24) - 4 <= 0xFFFFFFFD)
  {
    APSLogErrorAt();
    return 4294960587;
  }

  v6 = CFGetAllocator(v2);
  v7 = CFNumberCreate(v6, kCFNumberSInt64Type, valuePtr);
  if (!v7)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_14_4();
  Value = CFDictionaryGetValue(v9, v10);
  if (!Value)
  {
    APSLogErrorAt();
    v23 = -6727;
    goto LABEL_15;
  }

  v12 = Value;
  CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  v23 = browser_cacheP2PDNSAddresses(v2, v8, v12);
  if (v23)
  {
    APSLogErrorAt();
    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ++*(DerivedStorage + 240);
  v23 = 0;
  CFDictionarySetInt64();
  CFDictionarySetValue(v12, @"IsTracked", *MEMORY[0x277CBED28]);
  if (*(a1 + 24))
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  *(v5 + 444) |= v14;
  v15 = OUTLINED_FUNCTION_1_29();
  if (!(v19 ^ v20 | v18))
  {
    goto LABEL_15;
  }

  if (v17 == -1)
  {
    if (!OUTLINED_FUNCTION_7(v15))
    {
      goto LABEL_15;
    }

    v15 = *v5;
  }

  OUTLINED_FUNCTION_11(v15, "OSStatus browser_startTrackingDevice(void *)", v16, "Started tracking device with ID %@ (%d)\n");
LABEL_15:
  CFRelease(v8);
  return v23;
}

uint64_t browser_stopTrackingDevice(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_18_1(a1);
  if (*(v3 + 245))
  {
    return 4294960573;
  }

  if (!v1)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v4 = v3;
  if (!*(v3 + 24))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  v5 = CFGetAllocator(v2);
  v6 = CFNumberCreate(v5, kCFNumberSInt64Type, valuePtr);
  if (!v6)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v7 = v6;
  v8 = OUTLINED_FUNCTION_14_4();
  Value = CFDictionaryGetValue(v8, v9);
  if (!Value)
  {
    v24 = OUTLINED_FUNCTION_1_29();
    if (!(v17 ^ v18 | v16))
    {
      goto LABEL_33;
    }

    if (v26 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v24))
      {
        goto LABEL_33;
      }

      v24 = *v4;
    }

    OUTLINED_FUNCTION_11(v24, "OSStatus browser_stopTrackingDevice(void *)", v25, "No device info for device with ID %@, this device isn't tracked.\n");
LABEL_33:
    updated = 0;
    goto LABEL_20;
  }

  v11 = Value;
  CFRetain(Value);
  if (!CFDictionaryGetInt64())
  {
LABEL_22:
    updated = 0;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_11_8();
  v12 = CFDictionaryGetInt64() - 1;
  OUTLINED_FUNCTION_11_8();
  CFDictionarySetInt64();
  v13 = OUTLINED_FUNCTION_1_29();
  if (v17 ^ v18 | v16)
  {
    if (v15 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v13))
      {
        goto LABEL_12;
      }

      v13 = *v4;
    }

    OUTLINED_FUNCTION_11(v13, "OSStatus browser_stopTrackingDevice(void *)", v14, "Stopping tracking device with ID %@ (%d)\n");
  }

LABEL_12:
  if (v12)
  {
    goto LABEL_22;
  }

  CFDictionaryRemoveValue(v11, @"CachedRAOPP2PDNS");
  CFDictionaryRemoveValue(v11, @"CachedAirPlayP2PDNS");
  CFDictionaryRemoveValue(v11, @"IsTracked");
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  --*(DerivedStorage + 240);
  updated = 0;
  updated = browser_updateDevice(v2, v7, v11);
  if (updated)
  {
    APSLogErrorAt();
    goto LABEL_19;
  }

  v20 = OUTLINED_FUNCTION_1_29();
  if (!(v17 ^ v18 | v16))
  {
    goto LABEL_19;
  }

  if (v22 == -1)
  {
    if (!OUTLINED_FUNCTION_7(v20))
    {
      goto LABEL_19;
    }

    v20 = *v4;
  }

  OUTLINED_FUNCTION_11(v20, "OSStatus browser_stopTrackingDevice(void *)", v21, "Stopped tracking device with ID %@\n");
LABEL_19:
  CFRelease(v11);
LABEL_20:
  CFRelease(v7);
  return updated;
}

uint64_t browser_reconfirmDevice(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  valuePtr = v2;
  v3 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    return 4294960573;
  }

  if (!v2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v5 = DerivedStorage;
  if (!*(DerivedStorage + 24))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  v6 = CFGetAllocator(v1);
  v7 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
  if (!v7)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_14_4();
  Value = CFDictionaryGetValue(v9, v10);
  if (!Value)
  {
    APSLogErrorAt();
    v31 = 4294960569;
    goto LABEL_28;
  }

  v12 = Value;
  v13 = CFDictionaryGetValue(Value, *(v5 + 64));
  if (v13)
  {
    v14 = APBonjourBrowserReconfirmDevice(*(v5 + 88), v13, *(v5 + 72), v3);
    if (v14)
    {
      v31 = v14;
LABEL_38:
      APSLogErrorAt();
      goto LABEL_28;
    }

    v15 = OUTLINED_FUNCTION_1_29();
    if (v19 ^ v20 | v18)
    {
      if (v17 == -1)
      {
        if (!OUTLINED_FUNCTION_7(v15))
        {
          goto LABEL_13;
        }

        v15 = *v5;
      }

      OUTLINED_FUNCTION_11(v15, "OSStatus browser_reconfirmDevice(void *)", v16, "Reconfirming airplay services for device with ID %@\n");
    }
  }

LABEL_13:
  v21 = CFDictionaryGetValue(v12, @"AirPlayNANFullBonjourInfo");
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = APBonjourBrowserReconfirmDevice(*(v5 + 88), v21, @"AirPlayNANFullBonjourInfo", 0);
  if (v22)
  {
    v31 = v22;
    goto LABEL_38;
  }

  v23 = OUTLINED_FUNCTION_1_29();
  if (v19 ^ v20 | v18)
  {
    if (v25 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v23))
      {
        goto LABEL_20;
      }

      v23 = *v5;
    }

    OUTLINED_FUNCTION_11(v23, "OSStatus browser_reconfirmDevice(void *)", v24, "Reconfirming NAN airplay services for device with ID %@\n");
  }

LABEL_20:
  v26 = CFDictionaryGetValue(v12, @"RAOPBonjourInfo");
  if (!v26)
  {
    goto LABEL_27;
  }

  v27 = APBonjourBrowserReconfirmDevice(*(v5 + 88), v26, @"RAOP", v3);
  if (v27)
  {
    v31 = v27;
    goto LABEL_38;
  }

  v28 = OUTLINED_FUNCTION_1_29();
  if (!(v19 ^ v20 | v18))
  {
    goto LABEL_27;
  }

  if (v30 == -1)
  {
    if (!OUTLINED_FUNCTION_7(v28))
    {
      goto LABEL_27;
    }

    v28 = *v5;
  }

  OUTLINED_FUNCTION_11(v28, "OSStatus browser_reconfirmDevice(void *)", v29, "Reconfirming raop services for device with ID %@\n");
LABEL_27:
  v31 = 0;
LABEL_28:
  CFRelease(v8);
  return v31;
}

void browser_triggerWoLCachingIfNeeded(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  valuePtr = v2;
  v3 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    goto LABEL_13;
  }

  if (v2)
  {
    v5 = DerivedStorage;
    if (*(DerivedStorage + 24))
    {
      v6 = CFGetAllocator(v1);
      v7 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
      if (v7)
      {
        v8 = v7;
        Value = CFDictionaryGetValue(*(v5 + 216), v7);
        if (!Value)
        {
          APSLogErrorAt();
          goto LABEL_12;
        }

        v10 = CFDictionaryGetValue(Value, *(v5 + 64));
        if (!v10)
        {
          goto LABEL_12;
        }

        APBonjourBrowserTriggerWoLCachingIfNeeded(*(v5 + 88), v10, v3);
        OUTLINED_FUNCTION_3_12();
        if (!(v15 ^ v16 | v14))
        {
          goto LABEL_12;
        }

        if (v13 == -1)
        {
          if (!OUTLINED_FUNCTION_7(v11))
          {
            goto LABEL_12;
          }

          v11 = *v5;
        }

        OUTLINED_FUNCTION_11(v11, "void browser_triggerWoLCachingIfNeeded(void *)", v12, "Got request for potential caching for device with ID %@\n");
LABEL_12:
        CFRelease(v8);
        goto LABEL_13;
      }
    }
  }

  APSLogErrorAt();
LABEL_13:
  CFRelease(v1);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t browser_getDeviceRelationship_cold_2(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_4_14(a1);
  if (v7 <= 90)
  {
    v8 = v6;
    if (v7 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      result = *a1;
    }

    result = LogPrintF(result, "APBrowserDeviceRelationship browser_getDeviceRelationship(APBrowserRef, CFNumberRef, APAdvertiserInfoRef)", 33554522, "No device relationship for device ID %@\n", v8);
  }

LABEL_5:
  *a3 = 0;
  return result;
}

uint64_t browser_setModeInternal_cold_4()
{
  OUTLINED_FUNCTION_2_5();
  result = OUTLINED_FUNCTION_4_14(v2);
  if (v5 <= 50)
  {
    if (v5 == -1)
    {
      result = OUTLINED_FUNCTION_8(result);
      if (!result)
      {
        goto LABEL_5;
      }

      result = *v1;
    }

    result = OUTLINED_FUNCTION_9(result, "OSStatus browser_startOrExtendDiscoverySessionThresholdTimer(APBrowserRef)", v4, "Ignoring request to update threshold timer after session threshold");
  }

LABEL_5:
  *v0 = 0;
  return result;
}

void browser_setModeInternal_cold_37(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1)
  {

    *(a1 + 368) = 0;
  }
}

uint64_t __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_4()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_3();
  return APSLogErrorAt();
}

uint64_t browser_updateBTLEBrowsing_cold_5(uint64_t a1)
{
  APSLogErrorAt();
  browser_ensureConnectivityCheckTimerStopped(a1);

  return APSLogErrorAt();
}

uint64_t browser_updateRapportBrowsing_cold_1()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

void browser_updateBrokerBrowsing_cold_3()
{
  OUTLINED_FUNCTION_2_5();
  v2 = *(v1 + 344);
  if (v2)
  {
    APBrokerManagerSetDelegate(v2, 0, 0);
    *(v0 + 352) = 0;
    APBrokerManagerSetBrowseMode(*(v0 + 344), 0);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryGetCount(*(DerivedStorage + 360)) > 0)
  {
    v5 = *DerivedStorage;
    v6 = **DerivedStorage;
    if (v6 <= 50)
    {
      if (v6 == -1)
      {
        if (!OUTLINED_FUNCTION_8(v5))
        {
          goto LABEL_8;
        }

        v5 = *DerivedStorage;
      }

      OUTLINED_FUNCTION_9(v5, "OSStatus browser_flushAllBrokerResults(APBrowserRef)", v4, "[%{ptr}] Flush all %d broker results\n");
    }

LABEL_8:
    CFDictionaryApplyBlock();
    CFDictionaryRemoveAllValues(*(DerivedStorage + 360));
  }
}

uint64_t browser_updateEventInfoForDevice_cold_2(uint64_t a1, int *a2)
{
  result = APSLogErrorAt();
  if (*a2 <= 40)
  {
    if (*a2 != -1)
    {
      return OUTLINED_FUNCTION_11(a2, "OSStatus browser_createSidePlayAdvertiserInfoForDevice(CFAllocatorRef, CFDictionaryRef, LogCategory *, APAdvertiserInfoRef *)", v4, "Failed to create advertiser info for %@.\n");
    }

    result = OUTLINED_FUNCTION_7(a2);
    if (result)
    {
      return OUTLINED_FUNCTION_11(a2, "OSStatus browser_createSidePlayAdvertiserInfoForDevice(CFAllocatorRef, CFDictionaryRef, LogCategory *, APAdvertiserInfoRef *)", v4, "Failed to create advertiser info for %@.\n");
    }
  }

  return result;
}

uint64_t browser_updateEventInfoForDevice_cold_5(uint64_t a1, int *a2)
{
  result = APSLogErrorAt();
  if (*a2 <= 40)
  {
    if (*a2 != -1)
    {
      return OUTLINED_FUNCTION_11(a2, "OSStatus browser_createAdvertiserInfoForDevice(CFAllocatorRef, CFDictionaryRef, LogCategory *, APAdvertiserInfoRef *)", v4, "Failed to create advertiser info for %@.\n");
    }

    result = OUTLINED_FUNCTION_7(a2);
    if (result)
    {
      return OUTLINED_FUNCTION_11(a2, "OSStatus browser_createAdvertiserInfoForDevice(CFAllocatorRef, CFDictionaryRef, LogCategory *, APAdvertiserInfoRef *)", v4, "Failed to create advertiser info for %@.\n");
    }
  }

  return result;
}

uint64_t browser_handleConnectivityHelperEventInternal_cold_6(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_4_14(a1);
  if (v7 <= 90)
  {
    if (v7 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      result = *a1;
    }

    result = LogPrintF(result, "OSStatus browser_handleWiFiPowerChangedEvent(APBrowserRef)", 33554522, "Failed to query WiFi power state: %#m.", a2);
  }

LABEL_5:
  *a3 = a2;
  return result;
}

void browser_createBonjourInfoForBTLEDevice_cold_9(uint64_t a1, const void *a2, const void *a3)
{
  APSLogErrorAt();
  CFRelease(a2);
  CFRelease(a3);
}

uint64_t browser_createBonjourInfoForBTLEDevice_cold_14(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6710;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  *a1 = -6762;
  return APSLogErrorAt();
}

uint64_t browser_getDNSForDeviceIDInternal_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6762;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6762;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_5(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6727;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6727;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6727;
  return result;
}

void browser_removeBonjourWithBTLE_cold_3(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_3_12();
  if (v9 ^ v10 | v8)
  {
    if (v7 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v5))
      {
        goto LABEL_6;
      }

      v5 = *a1;
    }

    OUTLINED_FUNCTION_11(v5, "OSStatus browser_removeBonjourWithBTLE(APBrowserRef, CFStringRef)", v6, "Can't process BTLE remove event for device %@. Device info not found.\n");
  }

LABEL_6:
  *a3 = 0;
}

void __browser_handleBTLEQueryEventExternal_block_invoke_cold_12(uint64_t *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_3_12();
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v4))
      {
        goto LABEL_6;
      }

      v4 = *a1;
    }

    OUTLINED_FUNCTION_11(v4, "OSStatus browser_handleBTLEQueryEventInternal(APBrowserRef, CFStringRef, CFDictionaryRef, OSStatus)", v5, "Can't process BTLE query response. Device %@ was lost.\n");
  }

LABEL_6:
  *a2 = 0;
}

uint64_t browser_handleBonjourAddOrUpdate_cold_1(const void *a1, __CFString *a2, const __CFDictionary *a3, _DWORD *a4)
{
  result = browser_removeService(a1, a2, a3);
  *a4 = result;
  if (result)
  {
    return APSLogErrorAt();
  }

  return result;
}

void __getNISessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getNISessionClass(void)_block_invoke") description:{@"APSoftLinking_NearbyInteraction.h", 31, @"Unable to find class %s", "NISession"}];
  __break(1u);
}

void __getNISpatialBrowsingConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getNISpatialBrowsingConfigurationClass(void)_block_invoke") description:{@"APSoftLinking_NearbyInteraction.h", 34, @"Unable to find class %s", "NISpatialBrowsingConfiguration"}];
  __break(1u);
}

void __browser_resolveBrokerAddress_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_12();
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v2))
      {
        goto LABEL_6;
      }

      v2 = *(v1 + 48);
    }

    OUTLINED_FUNCTION_11(v2, "void browser_resolveBrokerAddress(APBrowserRef, uint64_t, CFStringRef, CFTypeRef, APBrowserResolvedAddressHandler)_block_invoke", v3, "[%{ptr}] Context went away while resolving DNS address\n");
  }

LABEL_6:
  *v0 = 0;
}

uint64_t browser_handleBonjourEvent_cold_1(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  result = browser_handleBonjourRemove(a1, a2, a3);
  if (result)
  {

    return APSLogErrorAt();
  }

  return result;
}

void browser_handleBonjourEvent_cold_7(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

uint64_t __browser_handleBTLEEventExternal_block_invoke_cold_2(uint64_t a1)
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t __browser_handleBTLEEventExternal_block_invoke_cold_4(uint64_t a1)
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}