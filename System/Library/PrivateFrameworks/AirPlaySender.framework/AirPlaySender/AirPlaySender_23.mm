void __carEndpoint_setUpAPAccClientEndpointForIdType_block_invoke()
{
  OUTLINED_FUNCTION_3_7();
  values = v3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCarPlay)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setUpAPAccClientEndpointForIdType(FigEndpointRef, CFStringRef, Boolean)_block_invoke", v2, "[%{ptr}] Sending iAP message.\n");
  }

  v4 = *(v1 + 40);
  if (*(v4 + 136))
  {
    v5 = OUTLINED_FUNCTION_10_6(v4);
    v16 = 0x40000000;
    v17 = __carEndpoint_setUpAPAccClientEndpointForIdType_block_invoke_2;
    v18 = &unk_27849EE08;
    v19 = &v21;
    v20 = v6;
    dispatch_sync(v5, block);
    v7 = v22[3];
    if (v7)
    {
      v8 = *(v1 + 32);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v26.tv_sec = 0;
      *&v26.tv_usec = 0;
      if (v0)
      {
        if (carEndpoint_isDissociated(DerivedStorage))
        {
          goto LABEL_15;
        }

        gettimeofday(&v26, 0);
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        v11 = v10 ? v10(v7, v0, 0, 0) : 4294954514;
        Length = CFDataGetLength(v0);
        carEndpoint_sendCommandInfoAppend(v8, @"iAPSendMessage", &v26, Length, v11);
        if (!v11)
        {
          goto LABEL_15;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        v11 = 4294960591;
      }

      if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_sendCommandOverRCSChannel(FigEndpointRef, FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef)", 33554522, "[%{ptr}] %###s: failed to send %'@ command with error: %d\n", v8, "OSStatus carEndpoint_sendCommandOverRCSChannel(FigEndpointRef, FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef)", @"iAPSendMessage", v11);
      }
    }
  }

  else
  {
    v12 = CFDictionaryCreate(0, &kAPEndpointCommandiAPSendMessageKey_Data, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    carEndpoint_sendCommandInternal(*(v1 + 32), @"iAPSendMessage", v12, 0, 0);
    if (v12)
    {
      CFRelease(v12);
    }
  }

LABEL_15:
  v14 = v22[3];
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v21, 8);
}

void __carEndpoint_copyStateProperty_block_invoke_cold_3(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

void __carEndpoint_copyStateProperty_block_invoke_cold_14()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -6709;
}

uint64_t __carEndpoint_copyStateProperty_block_invoke_cold_15(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = -6735;
  if (gLogCategory_APEndpointCarPlay <= 60)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v2)
    {
      return OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_copyStateProperty(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)_block_invoke", v1, "[%{ptr}] Buffered audio is not supported\n");
    }

    result = OUTLINED_FUNCTION_33_0(&gLogCategory_APEndpointCarPlay);
    if (result)
    {
      return OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_copyStateProperty(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)_block_invoke", v1, "[%{ptr}] Buffered audio is not supported\n");
    }
  }

  return result;
}

void carEndpoint_copyStreams_cold_1()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  v1 = *(*v0 + 24);
  if (v1)
  {
    CFRelease(v1);
  }

  OUTLINED_FUNCTION_4_6();
}

void __carEndpoint_activateInternal_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -16727;
}

void __carEndpoint_activateInternal_block_invoke_cold_14()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -16726;
}

uint64_t __carEndpoint_activateInternal_block_invoke_147_cold_9(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*a1 + 8) + 24) = -16721;
  return result;
}

void carEndpoint_setupStreams_cold_27()
{
  OUTLINED_FUNCTION_3_7();
  APSLogErrorAt();
  *v1 = -16720;
  _Block_object_dispose(v0, 8);
}

uint64_t carEndpoint_setupStreams_cold_43(uint64_t a1, uint64_t *a2)
{
  carEndpoint_raiseAltScreenPowerAssertionIfNeeded(a1);
  v3 = *a2;
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 16);
  if (v7)
  {
    return v7(v3, 0, 0, 0);
  }

  return result;
}

void carEndpoint_takeActionOnModeChanges_cold_1(uint64_t *a1, const void *a2, _DWORD *a3)
{
  v5 = *a1;
  if ((*(*a1 + 40) != 1 || !*(v5 + 44)) && a3[4] == 1 && a3[5] || *(v5 + 48) != 2 && a3[6] == 2)
  {
    APCarPlayAVVCServerStatesIncompatibleWithAuxIn();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40) && !a3[6] && a3[4] == 2)
  {
    if (a3[5])
    {
      v7 = DerivedStorage;
      CFRetain(a2);
      OUTLINED_FUNCTION_4_7();
      v9[1] = 0x40000000;
      v9[2] = __carEndpoint_resetBurstParamsIfSiriWakes_block_invoke;
      v9[3] = &__block_descriptor_tmp_183;
      v9[4] = a2;
      v9[5] = v7;
      dispatch_async(v8, v9);
    }
  }
}

void __carEndpoint_configureAccessoryLogs_block_invoke_cold_2(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void __carEndpoint_configureAccessoryLogs_block_invoke_cold_5()
{
  if (gLogCategory_APEndpointCarPlay <= 50)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCarPlay))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_setAccessoryLoggingLevel(FigEndpointRef)", v0, "[%{ptr}] %'@ command is not supported for Accessories with sourceVersion: %u");
    }
  }
}

uint64_t __carEndpoint_sendAccessoryLogRequest_block_invoke_cold_1(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_sendAccessoryLogRequest(FigEndpointRef, CFDictionaryRef, CMBlockBufferRef *)_block_invoke", a3, "[%{ptr}] %###s: 'logs' request failed with error: %d\n");
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_sendAccessoryLogRequest(FigEndpointRef, CFDictionaryRef, CMBlockBufferRef *)_block_invoke", a3, "[%{ptr}] %###s: 'logs' request failed with error: %d\n");
  }

  return result;
}

uint64_t carEndpoint_updateViewArea_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16726;
  return result;
}

void carEndpoint_handleiAPChannelEvent_cold_4()
{
  if (gLogCategory_APEndpointCarPlay <= 60)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v1 || OUTLINED_FUNCTION_33_0(&gLogCategory_APEndpointCarPlay))
    {
      OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpointCarPlay, "void carEndpoint_handleiAPChannelEvent(FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef, CFTypeRef)", v0, "### [%{ptr}] Can't forward iAP Channel event, Endpoint not activated\n");
    }
  }
}

uint64_t __carEndpoint_registerForHTTPProxy_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointCarPlay <= 90)
  {
    if (gLogCategory_APEndpointCarPlay != -1)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_registerForHTTPProxy(FigEndpointRef, APSenderSessionRef, uint32_t)_block_invoke", a3, "[%{ptr}] Failed to send inParameters from HTTPProxyMonitor to HU: %#m");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_registerForHTTPProxy(FigEndpointRef, APSenderSessionRef, uint32_t)_block_invoke", a3, "[%{ptr}] Failed to send inParameters from HTTPProxyMonitor to HU: %#m");
    }
  }

  return result;
}

void __carEndpoint_registerForHTTPProxy_block_invoke_cold_2()
{
  if (gLogCategory_APEndpointCarPlay <= 60)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v1 || OUTLINED_FUNCTION_33_0(&gLogCategory_APEndpointCarPlay))
    {
      OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_registerForHTTPProxy(FigEndpointRef, APSenderSessionRef, uint32_t)_block_invoke", v0, "[%{ptr}] endpoint is no longer activated");
    }
  }
}

void __carEndpoint_registerForHTTPProxy_block_invoke_cold_3()
{
  if (gLogCategory_APEndpointCarPlay <= 90)
  {
    OUTLINED_FUNCTION_21_4();
    if (!v1 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_registerForHTTPProxy(FigEndpointRef, APSenderSessionRef, uint32_t)_block_invoke", v0, "[%{ptr}] inParameters from HTTPProxyMonitor are invalid (NULL)");
    }
  }
}

void __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -16723;
}

void __carEndpoint_createPlaybackSessionInternal_block_invoke_cold_5()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -17606;
}

uint64_t carEndpoint_DuckAudio_cold_4(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16721;
  return result;
}

uint64_t carEndpoint_CreateRemoteControlSession_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6735;
  return result;
}

uint64_t carEndpoint_CreateRemoteControlSession_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -6735;
  return result;
}

uint64_t carEndpoint_packetizeCommandAndSend_cold_2(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_packetizeCommandAndSend(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean)", a3, "[%{ptr}] %###s called %'C requestBBuf %p.\n");
  }

  result = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCarPlay);
  if (result)
  {
    return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_packetizeCommandAndSend(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean)", a3, "[%{ptr}] %###s called %'C requestBBuf %p.\n");
  }

  return result;
}

void __APAccTransportClientConnectionOpen_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_acc_transportClient_serverDisconnectedHandler(ACCTransportClientServerDisconnectedCF)") description:{@"APAccTransportClient.m", 85, @"%s", dlerror()}];
  __break(1u);
}

uint64_t __APAccTransportClientConnectionOpen_block_invoke_3_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -6700;
  return result;
}

void __APAccTransportClientConnectionOpen_block_invoke_3_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef soft_acc_transportClient_createConnection(ACCConnection_Type_t description:{CFStringRef)"), @"APAccTransportClient.m", 28, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientConnectionOpen_block_invoke_3_cold_3(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_18(*(a1 + 32));

  CFRelease(a2);
}

void __APAccTransportClientConnectionClose_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"_Bool soft_acc_transportClient_destroyConnection(CFStringRef)") description:{@"APAccTransportClient.m", 47, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_2(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void __APAccTransportClientEndpointActivate_block_invoke_cold_4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"_Bool soft_acc_transportClient_setPropertyForEndpointWithUUID(CFStringRef description:{CFTypeRef, CFStringRef)"), @"APAccTransportClient.m", 64, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientEndpointActivate_block_invoke_cold_7()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef soft_acc_transportClient_createEndpoint(CFStringRef description:{ACCEndpoint_TransportType_t, ACCEndpoint_Protocol_t, CFStringRef, ACCTransportClientDataOutHandlerCF, _Bool)"), @"APAccTransportClient.m", 35, @"%s", dlerror()}];
  __break(1u);
}

void getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch(void)") description:{@"APAccTransportClient.m", 88, @"%s", dlerror()}];
  __break(1u);
}

void accTransportClientEndpointDestroyEndpoint_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"_Bool soft_acc_transportClient_destroyEndpoint(CFStringRef)") description:{@"APAccTransportClient.m", 41, @"%s", dlerror()}];
  __break(1u);
}

void soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(ACCTransportClientConnectionAuthStatusDidChangeHandlerCF)") description:{@"APAccTransportClient.m", 58, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientEndpointForwardData_block_invoke_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"_Bool soft_acc_transportClient_processIncomingData(CFDataRef description:{CFStringRef)"), @"APAccTransportClient.m", 53, @"%s", dlerror()}];
  __break(1u);
}

void __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFDictionaryRef soft_acc_transportClient_copyPropertiesForEndpointWithUUID(CFStringRef)") description:{@"APAccTransportClient.m", 70, @"%s", dlerror()}];
  __break(1u);
}

uint64_t __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_2(uint64_t *a1, CFDataRef *a2)
{
  v2 = *a1;
  Length = CFDataGetLength(*a2);
  return LogPrintF(&gLogCategory_APAccTransportClientEndpoint, "OSStatus APAccTransportClientEndpointSecureTunnelDataSend(APAccTransportClientEndpointRef, CFDataRef)_block_invoke", 33554462, "[%{ptr}] Sent %u bytes of data to SecureTunnel to encrypt\n", v2, Length);
}

void __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_acc_transportClient_endpointSecureTunnelDataSend(CFStringRef description:{uint8_t, CFDataRef)"), @"APAccTransportClient.m", 80, @"%s", dlerror()}];
  __break(1u);
}

void soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler(CFStringRef description:{ACCTransportClientSecureTunnelDataReceiveHandlerCF)"), @"APAccTransportClient.m", 75, @"%s", dlerror()}];
  __break(1u);
}

void CoreAccessoriesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CoreAccessoriesLibrary(void)") description:{@"APAccTransportClient.m", 23, @"%s", *a1}];
  __break(1u);
}

const __CFData *legacyPairing_IsPeerKnown(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  result = *(CMBaseObjectGetDerivedStorage() + 16);
  if (result)
  {
    v4.location = 0;
    v4.length = 32;
    CFDataGetBytes(result, v4, buffer);
    return xOvZekdnwD6();
  }

  return result;
}

uint64_t legacyPairing_PerformVerification(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  *buffer = 0u;
  v16 = 0u;
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APPairingClientLegacy, "OSStatus legacyPairing_PerformVerification(APPairingClientRef, CFTypeRef *)", v2, "[%{ptr}] Control pair-verify legacy\n");
  }

  XoN3GgjZNCvkN1T8I3();
  v4 = *(DerivedStorage + 16);
  if (!v4)
  {
    APSLogErrorAt();
    v10 = 4294895525;
    goto LABEL_19;
  }

  v18.location = 0;
  v18.length = 32;
  CFDataGetBytes(v4, v18, buffer);
  Dk7hjUuq();
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  OUTLINED_FUNCTION_2_24();
  v5 = VBAEFt();
  if (!v5)
  {
    v6 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v14 = 0;
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        v10 = 4294895526;
        APSLogErrorAt();
        goto LABEL_19;
      }

      v8 = Mutable;
      CFDictionarySetValue(Mutable, @"X-Apple-PD", @"1");
      if (!TMIsAutomaticTimeEnabled())
      {
        goto LABEL_12;
      }

      Current = CFAbsoluteTimeGetCurrent();
      ASPrintF(&v14, "%lld", Current);
      if (v14)
      {
        break;
      }

      v10 = 4294895526;
      APSLogErrorAt();
LABEL_13:
      CFRelease(v8);
      if (v14)
      {
        free(v14);
      }

      if (v10)
      {
        goto LABEL_19;
      }

      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      OUTLINED_FUNCTION_2_24();
      v5 = VBAEFt();
      if (v5)
      {
        goto LABEL_25;
      }
    }

    CFDictionarySetCString();
LABEL_12:
    CFDictionarySetData();
    v10 = APTransportStreamSendPlistMessageCreatingReply();
    goto LABEL_13;
  }

LABEL_25:
  v10 = v5;
LABEL_19:
  if (v10 && gLogCategory_APPairingClientLegacy <= 60 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APPairingClientLegacy, "OSStatus legacyPairing_PerformVerification(APPairingClientRef, CFTypeRef *)", 33554492, "### [%{ptr}] Control pair-verify legacy failed: %#m\n", a1, v10);
  }

  return v10;
}

uint64_t Server_AssociateObjectWithConnection(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 4294960576;
  }

  v5 = FigXPCServerAssociateObjectWithConnection();
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    xpc_dictionary_set_uint64(a4, *MEMORY[0x277CC0990], 0);
  }

  return v5;
}

uint64_t __APCarPlayAVVCServerInit_block_invoke_cold_4(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*a1 + 8) + 24) = -6718;
  return result;
}

uint64_t __APCarPlayAVVCServerInit_block_invoke_cold_5(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -6728;
  return result;
}

uint64_t APStarkModeInitialOwnerRequestMakeFromDictionary_cold_2(int *a1, int *a2, int *a3)
{
  v3 = *a1;
  v4 = "?";
  if (*a1)
  {
    if (v3 == 1)
    {
      v5 = "Car";
    }

    else if (v3 == 2)
    {
      v5 = "iOS";
    }

    else
    {
      v5 = "?";
    }
  }

  else
  {
    v5 = "N/A";
  }

  v6 = "N/A";
  v7 = "Anytime";
  v8 = "User";
  v9 = *a2;
  if (*a2 == 1000)
  {
    v10 = "Never";
  }

  else
  {
    v10 = "?";
  }

  if (v9 != 500)
  {
    v8 = v10;
  }

  if (v9 != 100)
  {
    v7 = v8;
  }

  if (v9)
  {
    v6 = v7;
  }

  v11 = *a3;
  if (*a3 == 1000)
  {
    v4 = "Never";
  }

  if (v11 == 500)
  {
    v4 = "User";
  }

  if (v11 == 100)
  {
    v4 = "Anytime";
  }

  if (!v11)
  {
    v4 = "N/A";
  }

  return LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APStarkModeInitialOwnerRequestMakeFromDictionary(CFDictionaryRef, Boolean, FigStarkModeInitialOwnerRequest *, FigStarkModeInitialOwnerRequest *)", 33554472, "MainAudio owner : %s / take constraint : %s / borrow constraint : %s\n", v5, v6, v4);
}

uint64_t APStarkModeInitialOwnerRequestMakeFromDictionary_cold_3(int *a1, int *a2, int *a3)
{
  v3 = *a1;
  v4 = "?";
  if (*a1)
  {
    if (v3 == 1)
    {
      v5 = "Car";
    }

    else if (v3 == 2)
    {
      v5 = "iOS";
    }

    else
    {
      v5 = "?";
    }
  }

  else
  {
    v5 = "N/A";
  }

  v6 = "N/A";
  v7 = "Anytime";
  v8 = "User";
  v9 = *a2;
  if (*a2 == 1000)
  {
    v10 = "Never";
  }

  else
  {
    v10 = "?";
  }

  if (v9 != 500)
  {
    v8 = v10;
  }

  if (v9 != 100)
  {
    v7 = v8;
  }

  if (v9)
  {
    v6 = v7;
  }

  v11 = *a3;
  if (*a3 == 1000)
  {
    v4 = "Never";
  }

  if (v11 == 500)
  {
    v4 = "User";
  }

  if (v11 == 100)
  {
    v4 = "Anytime";
  }

  if (!v11)
  {
    v4 = "N/A";
  }

  return LogPrintF(&gLogCategory_APReceiverNTPClient, "OSStatus APStarkModeInitialOwnerRequestMakeFromDictionary(CFDictionaryRef, Boolean, FigStarkModeInitialOwnerRequest *, FigStarkModeInitialOwnerRequest *)", 33554472, "Screen owner : %s / take constraint : %s / borrow constraint : %s\n", v5, v6, v4);
}

uint64_t apStarkMode_parseResourceChangeRequest_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72051;
  return result;
}

uint64_t APEndpointDescriptionMockCreate(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    return 4294895545;
  }

  APEndpointDescriptionGetClassID(a1, a2);
  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      Mutable = CFRetain(a2);
    }

    else
    {
      Mutable = APSFeaturesCreateMutable();
    }

    *DerivedStorage = Mutable;
    DerivedStorage[1] = FigCFDictionaryCreateMutableCopy();
    v9 = FigSimpleMutexCreate();
    DerivedStorage[2] = v9;
    if (v9)
    {
      v6 = 0;
      *a4 = 0;
    }

    else
    {
      return 4294895546;
    }
  }

  return v6;
}

uint64_t airPlayDescriptionMock_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableArrayRef *a4)
{
  v7 = 4294895545;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (a4)
  {
    if (CFDictionaryContainsKey(*(DerivedStorage + 8), a2))
    {
      v9 = CFDictionaryGetValue(*(DerivedStorage + 8), a2);
      v10 = 0;
      if (!v9 || v9 == *MEMORY[0x277CBEEE8])
      {
        goto LABEL_11;
      }

      v11 = v9;
LABEL_10:
      v10 = CFRetain(v11);
LABEL_11:
      v7 = 0;
      *a4 = v10;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"SupportsRFC2198Redundancy"))
    {
      CMBaseObjectGetDerivedStorage();
      HasFeature = APSFeaturesHasFeature();
      v13 = MEMORY[0x277CBED28];
      if (!HasFeature)
      {
        v13 = MEMORY[0x277CBED10];
      }

      v11 = *v13;
      goto LABEL_10;
    }

    if (!CFEqual(a2, @"DisplayDescriptionArray"))
    {
      v7 = 4294954512;
      goto LABEL_12;
    }

    v15 = CMBaseObjectGetDerivedStorage();
    value = 0;
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (!APSFeaturesHasFeature())
    {
      v7 = 4294895542;
      goto LABEL_12;
    }

    Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      v7 = 4294895546;
      goto LABEL_12;
    }

    v17 = Mutable;
    v18 = CFDictionaryGetValue(*(v15 + 8), @"mock::DisplaysArray");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 != CFArrayGetTypeID())
      {
LABEL_28:
        CFRelease(v17);
        goto LABEL_12;
      }

      Count = CFArrayGetCount(v19);
      if (Count >= 1)
      {
        v22 = Count;
        v23 = 0;
        while (1)
        {
          CFDictionaryGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
          v25 = APEndpointDisplayDescriptionCreateWithDisplayInfo(a3, TypedValueAtIndex, &value);
          if (v25)
          {
            break;
          }

          CFArrayAppendValue(v17, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          if (v22 == ++v23)
          {
            goto LABEL_24;
          }
        }

        v7 = v25;
        if (value)
        {
          CFRelease(value);
        }

        goto LABEL_28;
      }
    }

LABEL_24:
    v7 = 0;
    *a4 = v17;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t airPlayDescriptionMock_CopyFeatures(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294895545;
  }

  v4 = CFRetain(*DerivedStorage);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t apRealTimeAudioFileWriter_SignalCallback(uint64_t outExtAudioFile, uint64_t a2, uint64_t a3)
{
  v3 = outExtAudioFile;
  v35 = *MEMORY[0x277D85DE8];
  v33 = 0;
  if (gLogCategory_APRealTimeAudioFileWriter <= 30)
  {
    if (gLogCategory_APRealTimeAudioFileWriter != -1 || (outExtAudioFile = _LogCategory_Initialize(), outExtAudioFile))
    {
      outExtAudioFile = OUTLINED_FUNCTION_4_1(&gLogCategory_APRealTimeAudioFileWriter, "void apRealTimeAudioFileWriter_SignalCallback(void *)", a3, "[%{ptr}] file writer signal callback is executing.");
    }
  }

  if (*(v3 + 144))
  {
    return outExtAudioFile;
  }

  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v29 = 0;
  v30 = 0;
  if (!*(v3 + 112) && !*(v3 + 88))
  {
    if (!*(v3 + 16))
    {
      APSLogErrorAt();
      v9 = 4294960587;
LABEL_71:
      *(v3 + 112) = 1;
      if (gLogCategory_APRealTimeAudioFileWriter <= 90 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APRealTimeAudioFileWriter, "OSStatus apRealTimeAudioFileWriter_CreateFileIfNecessary(APRealTimeAudioFileWriterRef)", 33554522, "[%{ptr}] Failed creating audio file for path %@, error: %d", v3, *(v3 + 96), v9);
      }

      apRealTimeAudioFileWriter_CloseFile(v3);
      if (v9)
      {
LABEL_52:
        outExtAudioFile = APSLogErrorAt();
        if (gLogCategory_APRealTimeAudioFileWriter <= 90)
        {
          if (gLogCategory_APRealTimeAudioFileWriter != -1)
          {
            return LogPrintF(&gLogCategory_APRealTimeAudioFileWriter, "void apRealTimeAudioFileWriter_SignalCallback(void *)", 33554522, "[%{ptr}] Failed writing audio to file for path %@, errcode %#m", v3, *(v3 + 96), v9);
          }

          outExtAudioFile = _LogCategory_Initialize();
          if (outExtAudioFile)
          {
            return LogPrintF(&gLogCategory_APRealTimeAudioFileWriter, "void apRealTimeAudioFileWriter_SignalCallback(void *)", 33554522, "[%{ptr}] Failed writing audio to file for path %@, errcode %#m", v3, *(v3 + 96), v9);
          }
        }

        return outExtAudioFile;
      }

      goto LABEL_31;
    }

    if (*(v3 + 96))
    {
      goto LABEL_24;
    }

    bzero(v34, 0x400uLL);
    if (*(v3 + 80))
    {
      v4 = CFRetain(*(v3 + 104));
      goto LABEL_14;
    }

    if (confstr(65537, v34, 0x400uLL))
    {
      v5 = mach_absolute_time();
      v4 = CFStringCreateWithFormat(0, 0, @"%sAP-%llu-%@.caf", v34, v5, *(v3 + 104));
      if (v4)
      {
LABEL_14:
        v6 = *(v3 + 96);
        if (v6)
        {
          CFRelease(v6);
        }

        v8 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
        *(v3 + 96) = v8;
        if (v8)
        {
          if (gLogCategory_APRealTimeAudioFileWriter <= 30 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_4_1(&gLogCategory_APRealTimeAudioFileWriter, "OSStatus apRealTimeAudioFileWriter_GenerateNewFilePath(APRealTimeAudioFileWriterRef)", v7, "[%{ptr}] Successfully generated new file url for path %'@");
          }

          v9 = 0;
          if (v4)
          {
            goto LABEL_22;
          }
        }

        else
        {
          APSLogErrorAt();
          v9 = 4294960568;
          if (v4)
          {
LABEL_22:
            CFRelease(v4);
          }
        }

        if (v8)
        {
LABEL_24:
          if (gLogCategory_APRealTimeAudioFileWriter <= 50 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APRealTimeAudioFileWriter, "OSStatus apRealTimeAudioFileWriter_CreateFileIfNecessary(APRealTimeAudioFileWriterRef)", 33554482, "[%{ptr}] Creating audio file for path %'@", v3, *(v3 + 96));
          }

          v10 = ExtAudioFileCreateWithURL(*(v3 + 96), 0x63616666u, (v3 + 40), 0, 0, (v3 + 88));
          if (v10)
          {
            v9 = v10;
          }

          else
          {
            v11 = ExtAudioFileSetProperty(*(v3 + 88), 0x63666D74u, 0x28u, (v3 + 40));
            if (!v11)
            {
              *(v3 + 120) = 0;
              *(v3 + 136) = 0;
              goto LABEL_31;
            }

            v9 = v11;
          }
        }

LABEL_70:
        APSLogErrorAt();
        goto LABEL_71;
      }

      v9 = 4294960568;
    }

    else
    {
      v9 = 4294960569;
    }

    APSLogErrorAt();
    goto LABEL_70;
  }

LABEL_31:
  v12 = *(v3 + 16);
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 16);
  outExtAudioFile = VTable + 16;
  for (i = *(v14 + 32); i; i = *(v25 + 32))
  {
    outExtAudioFile = i(v12, 0);
    if (!outExtAudioFile)
    {
      break;
    }

    if (*(v3 + 144))
    {
      return outExtAudioFile;
    }

    v16 = *(v3 + 16);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v17)
    {
      v9 = 4294954514;
      goto LABEL_52;
    }

    v18 = v17(v16, v34, 512, &v33, &v30, &v29, v31);
    if (v18)
    {
      v9 = v18;
      goto LABEL_52;
    }

    *(&ioData.mNumberBuffers + 1) = 0;
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = 1;
    ioData.mBuffers[0].mDataByteSize = v33;
    ioData.mBuffers[0].mData = v34;
    v19 = ExtAudioFileWrite(*(v3 + 88), v33 / *(v3 + 64), &ioData);
    if (v19)
    {
      v9 = v19;
      goto LABEL_52;
    }

    v20 = v33;
    *(v3 + 120) = *(v3 + 120) + (v33 / *(v3 + 64)) / *(v3 + 40);
    *(v3 + 136) += v20;
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    add = atomic_fetch_add((v3 + 148), -v33);
    if (v33 == add)
    {
      v22 = *(v3 + 152);
      if (v22)
      {
        dispatch_semaphore_signal(v22);
        v23 = *(v3 + 152);
        if (v23)
        {
          dispatch_release(v23);
          *(v3 + 152) = 0;
        }
      }
    }

    FigSimpleMutexUnlock();
    if (gLogCategory_APRealTimeAudioFileWriter <= 40 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APRealTimeAudioFileWriter, "void apRealTimeAudioFileWriter_SignalCallback(void *)", 33554472, "[%{ptr}] Successfuly wrote %zu bytes. total bytes: %zu, total seconds: %f", v3, v33, *(v3 + 136), *(v3 + 120));
    }

    v12 = *(v3 + 16);
    v24 = CMBaseObjectGetVTable();
    v25 = *(v24 + 16);
    outExtAudioFile = v24 + 16;
  }

  v26 = *(v3 + 120);
  v27 = *(v3 + 128);
  if (v26 > v27 && !*(v3 + 80))
  {
    if (gLogCategory_APRealTimeAudioFileWriter <= 50)
    {
      if (gLogCategory_APRealTimeAudioFileWriter == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_58;
        }

        v26 = *(v3 + 120);
        v27 = *(v3 + 128);
      }

      LogPrintF(&gLogCategory_APRealTimeAudioFileWriter, "void apRealTimeAudioFileWriter_SignalCallback(void *)", 33554482, "[%{ptr}] File max duration met (%f seconds / %f maximum seconds). Closing %@.", v3, *&v26, *&v27, *(v3 + 96));
    }

LABEL_58:
    outExtAudioFile = apRealTimeAudioFileWriter_CloseFile(v3);
    if (!outExtAudioFile)
    {
      return outExtAudioFile;
    }

    v9 = outExtAudioFile;
    goto LABEL_52;
  }

  return outExtAudioFile;
}

uint64_t APRealTimeAudioFileWriterWriteAudioBytes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!*(a1 + 16))
  {
    return 4294960587;
  }

  atomic_fetch_add((a1 + 148), a3);
  v7 = *(a1 + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  result = v8(v7, a2, a3, a4);
  if (!result)
  {
    APSRealTimeSignalRaise();
    return 0;
  }

  return result;
}

uint64_t APRealTimeAudioFileWriterInvalidate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APRealTimeAudioFileWriter <= 30 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
  {
    atomic_load((a1 + 148));
    OUTLINED_FUNCTION_4_1(&gLogCategory_APRealTimeAudioFileWriter, "OSStatus APRealTimeAudioFileWriterInvalidate(APRealTimeAudioFileWriterRef)", a3, "[%{ptr}] Invalidating. Remaining bytes left to write %d");
  }

  if (!*(a1 + 144))
  {
    *(a1 + 144) = 1;
    if (*(a1 + 24))
    {
      APSRealTimeSignalInvalidate();
      v4 = *(a1 + 32);
      if (v4)
      {
        dispatch_sync(v4, &__block_literal_global_25);
      }
    }

    apRealTimeAudioFileWriter_CloseFile(a1);
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v6)
      {
        v6(v5);
      }
    }
  }

  return 0;
}

uint64_t APRealTimeAudioFileWriterCreate_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APRealTimeAudioFileWriterCreate_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APRealTimeAudioFileWriterCreate_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t APRealTimeAudioFileWriterCreate_cold_9(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t airPlayDescription_copyOSBuildVersion(uint64_t a1)
{
  OUTLINED_FUNCTION_9_8(a1);
  v4 = 0;
  airPlayDescription_copyEndpointInfoValueCFString(v2, @"osBuildVersion", &v4);
  if (!v4)
  {
    return 4294954512;
  }

  result = 0;
  *v1 = v4;
  return result;
}

uint64_t airPlayDescription_copyCompany(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_9_8(a1);
  v8 = 0;
  airPlayDescription_copyEndpointInfoValueCFString(v2, @"company", &v8);
  v5 = v8;
  if (!v8)
  {
    v5 = OUTLINED_FUNCTION_5_16(*(v3 + 16), v4, *MEMORY[0x277CE4B68]);
    if (!v5)
    {
      if (!airPlayDescription_isAppleReceiver(v2))
      {
        return 4294954512;
      }

      v5 = CFRetain(@"Apple");
      if (!v5)
      {
        return 4294954512;
      }
    }
  }

  v6 = 0;
  *v1 = v5;
  return v6;
}

uint64_t airPlayDescription_copyPairingPeerPublicKey(uint64_t a1, const __CFAllocator *a2, CFTypeRef *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *buffer = 0u;
  v16 = 0u;
  *bytes = 0u;
  v14 = 0u;
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1, 32);
  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    v9 = 0;
    *a3 = CFRetain(v8);
    return v9;
  }

  v11 = OUTLINED_FUNCTION_5_16(*(DerivedStorage + 16), v6, *MEMORY[0x277CE4C48]);
  v12 = v11;
  if (hasFeatureInternal)
  {
    if (!v11)
    {
      return 4294895545;
    }
  }

  else if (!v11)
  {
    APSLogErrorAt();
    v9 = APSSignalErrorAt();
    if (!v9)
    {
      return v9;
    }

    goto LABEL_10;
  }

  if (CFStringGetCString(v11, buffer, 128, 0x8000100u))
  {
    HexToData();
  }

  v9 = 4294895543;
  APSLogErrorAt();
  CFRelease(v12);
LABEL_10:
  if (!hasFeatureInternal && gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointDescriptionAirPlay, "OSStatus airPlayDescription_copyPairingPeerPublicKey(APEndpointDescriptionRef, CFAllocatorRef, CFDataRef *)", 33554492, "### Failed to get peer public key, err=%#m\n", v9);
  }

  return v9;
}

BOOL airPlayDescription_isLegacyAirPlaySpeaker(const void *a1)
{
  v6 = 0;
  cf = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 121) && airPlayDescription_isDeviceOfSubType(a1))
  {
    goto LABEL_7;
  }

  if (airPlayDescription_copySourceVersion(a1, &v6) || (v2 = CFGetInt64Ranged(), isDeviceOfSubType = airPlayDescription_isDeviceOfSubType(a1), CFGetAllocator(a1), airPlayDescription_copyFeaturesInternal(a1, &cf)))
  {
    APSLogErrorAt();
LABEL_7:
    v4 = 0;
    goto LABEL_9;
  }

  if (v2 < 0x1E9998)
  {
    v4 = 1;
    goto LABEL_9;
  }

  if (isDeviceOfSubType)
  {
    goto LABEL_7;
  }

  v4 = APSFeaturesHasFeature() == 0;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v4;
}

uint64_t airPlayDescription_isCarPlaySpatialAudioSupported(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSSettingsGetIntWithDefault() && *(CMBaseObjectGetDerivedStorage() + 65))
  {
    OUTLINED_FUNCTION_10_7(*(DerivedStorage + 56), v2, @"media", v3, v4);
  }

  return 0;
}

uint64_t airPlayDescription_copyCarPlayAudioFormatsExtended(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSSettingsGetIntWithDefault())
  {
    if (!*(CMBaseObjectGetDerivedStorage() + 65))
    {
      return 0;
    }

    v5 = OUTLINED_FUNCTION_10_7(*(DerivedStorage + 56), v2, @"media", v3, v4);
    if (v5)
    {
      v6 = v5;
      APSLogErrorAt();
      return v6;
    }
  }

  return 0;
}

CFNumberRef airPlayDescription_copyMetadataFeatures(uint64_t a1, const __CFAllocator *a2, CFNumberRef *a3)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_6_12();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  valuePtr = PropertyInt64Sync;
  if (airPlayDescription_hasFeatureInternal(a1, 17))
  {
    PropertyInt64Sync |= 1u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_hasFeatureInternal(a1, 15))
  {
    PropertyInt64Sync |= 2u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_hasFeatureInternal(a1, 16))
  {
    PropertyInt64Sync |= 4u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_isDeviceOfSubType(a1) || airPlayDescription_isThirdPartyTVFamily(a1))
  {
    PropertyInt64Sync |= 0x10u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_isThirdPartyTVFamily(a1))
  {
    PropertyInt64Sync |= 8u;
    valuePtr = PropertyInt64Sync;
  }

  if (airPlayDescription_hasFeatureInternal(a1, 50))
  {
    valuePtr = PropertyInt64Sync | 0x20;
    if (airPlayDescription_isSourceVersionAtLeast(a1, 0x37F564u))
    {
      PropertyInt64Sync |= 0x120u;
      valuePtr = PropertyInt64Sync;
    }

    else
    {
      PropertyInt64Sync |= 0x20u;
    }

    if (airPlayDescription_isSourceVersionAtLeast(a1, 0x398A14u))
    {
      PropertyInt64Sync |= 0x40u;
      valuePtr = PropertyInt64Sync;
    }

    if (airPlayDescription_isSourceVersionAtLeast(a1, 0x3A2654u))
    {
      PropertyInt64Sync |= 0x200u;
      valuePtr = PropertyInt64Sync;
    }
  }

  if (airPlayDescription_isSourceVersionAtLeast(a1, 0x365948u))
  {
    valuePtr = PropertyInt64Sync | 0x80;
  }

  result = CFNumberCreate(a2, kCFNumberSInt32Type, &valuePtr);
  *a3 = result;
  return result;
}

uint64_t airPlayDescription_isJarvisFeatureSupported(uint64_t a1)
{
  BOOLean = 0;
  if (!*(OUTLINED_FUNCTION_9_8(a1) + 24))
  {
    APSLogErrorAt();
    return 0;
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 64))
  {
    return 0;
  }

  airPlayDescription_copyEndpointInfoNestedCFData(v2, @"enhancedSiriInfo", v1, &BOOLean);
  v3 = BOOLean;
  if (!BOOLean)
  {
    return 0;
  }

  Value = CFBooleanGetValue(BOOLean);
  CFRelease(v3);
  return Value;
}

uint64_t airPlayDescription_copyEndpointInfoNestedCFData(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Value = CFDictionaryGetValue(TypedValue, a3);
    if (Value)
    {
      *a4 = CFRetain(Value);
    }
  }

  return 0;
}

uint64_t airPlayDescription_isDCXSupportedForSpatialAudio(uint64_t a1)
{
  BOOLean = 0;
  CMBaseObjectGetDerivedStorage();
  if (!airPlayDescription_isCarPlaySpatialAudioSupported(a1))
  {
    return 0;
  }

  airPlayDescription_copyEndpointInfoNestedCFData(a1, @"mainBufferedInfo", @"DCXEnabled", &BOOLean);
  v2 = BOOLean;
  if (!BOOLean)
  {
    return 0;
  }

  Value = CFBooleanGetValue(BOOLean);
  CFRelease(v2);
  return Value;
}

uint64_t airPlayDescription_copyCarPlayVideoFeaturesInternal(uint64_t a1, void *a2)
{
  v4 = -6727;
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFDictionaryGetTypeID();
    if (CFDictionaryGetTypedValue())
    {
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    return -6705;
  }

  return v4;
}

uint64_t APEndpointDescriptionAirPlayCreateWithTransportDevice_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void airPlayDescription_copyName_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t airPlayDescription_copyPropertyInternal_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12784;
  return result;
}

uint64_t airPlayDescription_copyPropertyInternal_cold_9(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12784;
  return result;
}

uint64_t airPlayDescription_copyPropertyInternal_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

CFTypeRef airPlayDescription_copyPropertyInternal_cold_12(void *a1)
{
  APSLogErrorAt();
  result = CFRetain(*MEMORY[0x277CBED10]);
  *a1 = result;
  return result;
}

uint64_t airPlayDescription_copyPropertyInternal_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

uint64_t airPlayDescription_copyPropertyInternal_cold_14(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

uint64_t airPlayDescription_copyMuteControlType_cold_1()
{
  FigCFNumberGetSInt64();
  APSGetAPMuteControlTypeName();
  return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointDescriptionAirPlay, "OSStatus airPlayDescription_copyMuteControlType(APEndpointDescriptionRef, CFAllocatorRef, CFTypeRef *)", v0, "[%{ptr}] muteControlType reported as %s\n");
}

void airPlayDescription_copyEndpointInfoValueCFArray_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t airPlayDescription_copyDisplayDescriptionArray_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71751;
  return result;
}

void airPlayDescription_copyEndpointInfoValueCFDictionary_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void airPlayDescription_copyEndpointInfoValueCFString_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t airPlayDescription_copyOEMIcons_cold_1(const void *a1)
{
  APSLogErrorAt();
  CFRelease(a1);

  return APSLogErrorAt();
}

CFTypeRef airplayDescription_copyReceiverModifiesMainHighLatency_cold_1(const void **a1, uint64_t a2, void *a3, _DWORD *a4)
{
  *a1 = 0;
  v7 = airPlayDescription_copyManufacturer(a2);
  *a4 = v7;
  v8 = *a1;
  if (v7)
  {
    v9 = 1;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = FigCFEqual() == 0;
  if (v8)
  {
LABEL_3:
    CFRelease(v8);
  }

LABEL_4:
  v10 = MEMORY[0x277CBED28];
  if (v9)
  {
    v10 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v10);
  *a3 = result;
  return result;
}

uint64_t airPlayDescription_UpdateWithTransportDevice_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t airPlayDescription_SetEndpointInfo_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t SPHubbedDevicesProviderCreate(CFTypeRef *a1)
{
  v2 = APSIsAPMSpeaker();
  IsAirplayd = FigServer_IsAirplayd();
  v4 = MEMORY[0x223DAEBE0]();
  Int64 = APSSettingsGetInt64();
  v6 = APSSettingsGetInt64();
  cf = 0;
  if (a1)
  {
    *a1 = 0;
    if (!v4 && IsAirplayd)
    {
      APSLogErrorAt();
      v14 = 90;
      v9 = 4294960587;
    }

    else
    {
      if (IsAirplayd || !v2 || Int64 || v6)
      {
        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v6 == 0;
        }

        v11 = !v10;
        if (IsAirplayd || !v11)
        {
          v13 = SPHubbedDevicesProviderPropertyCreate(&cf, v7);
          if (v13)
          {
            v9 = v13;
            goto LABEL_37;
          }
        }

        else
        {
          v12 = SPHubbedDevicesProviderDefaultsCreate(*MEMORY[0x277CBECE8], 0, &cf);
          if (v12)
          {
            v9 = v12;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v8 = SPHubbedDevicesProviderHomeHubCreate(*MEMORY[0x277CBECE8], &cf);
        if (v8)
        {
          v9 = v8;
LABEL_37:
          APSLogErrorAt();
          v14 = 90;
          goto LABEL_23;
        }
      }

      if (cf)
      {
        v9 = 0;
        *a1 = cf;
        cf = 0;
        v14 = 50;
      }

      else
      {
        APSLogErrorAt();
        v14 = 90;
        v9 = 4294960534;
      }
    }
  }

  else
  {
    v14 = 90;
    v9 = 4294960591;
  }

LABEL_23:
  if (v14 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProvider, "OSStatus SPHubbedDevicesProviderCreate(SPHubbedDevicesProviderRef *)", v14 | 0x2000000u, "create: err %#m", v9);
  }

  v15 = cf;
  if (cf)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v16)
    {
      v16(v15);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v9;
}

uint64_t SPHubbedDevicesProviderStartService_cold_2()
{
  result = APSLogErrorAt();
  _MergedGlobals_16 = -6735;
  return result;
}

uint64_t __SPHubbedDevicesProviderStartService_block_invoke_cold_1(uint64_t *a1)
{
  _MergedGlobals_16 = SPHubbedDevicesProviderCreate(&qword_280FB1B48);
  if (_MergedGlobals_16)
  {
    return APSLogErrorAt();
  }

  if (!qword_280FB1B48)
  {
    result = APSLogErrorAt();
    _MergedGlobals_16 = -6762;
    return result;
  }

  _MergedGlobals_16 = SPHubbedDevicesProviderAddListener(qword_280FB1B48, *a1, hubbedDevicesProviderRemote_handleDevicesChanged);
  if (_MergedGlobals_16)
  {
    return APSLogErrorAt();
  }

  _MergedGlobals_16 = SPHubbedDevicesProviderStartAsync(qword_280FB1B48);
  if (_MergedGlobals_16)
  {
    APSLogErrorAt();
    return SPHubbedDevicesProviderRemoveListener(qword_280FB1B48, *a1);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterAddListener();
  }
}

uint64_t __SPHubbedDevicesProviderStartService_block_invoke_cold_2()
{
  result = APSLogErrorAt();
  _MergedGlobals_16 = -6762;
  return result;
}

void APCarPlayHasDeviceUnlockedSinceBoot_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"int soft_MKBDeviceUnlockedSinceBoot()") description:{@"APCarPlayCarServicesInterface.m", 90, @"%s", dlerror()}];
  __break(1u);
}

uint64_t __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_11();
  UpTicksToMilliseconds();
  return OUTLINED_FUNCTION_2(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlayGetHeadUnitRestrictionsDictionary(CFDictionaryRef *)_block_invoke", v0, "CRFetchCarPlayCapabilities completion handler successful, took %lu ms\n");
}

void __getCARConnectionTimeStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCARConnectionTimeStoreClass(void)_block_invoke") description:{@"APCarPlayCarServicesInterface.m", 60, @"Unable to find class %s", "CARConnectionTimeStore"}];
  __break(1u);
}

void CarKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayCarServicesInterface.m", 51, @"%s", *a1}];
  __break(1u);
}

void __getCARConnectionEventClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCARConnectionEventClass(void)_block_invoke") description:{@"APCarPlayCarServicesInterface.m", 63, @"Unable to find class %s", "CARConnectionEvent"}];
  __break(1u);
}

void __getCRSAppHistoryControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRSAppHistoryControllerClass(void)_block_invoke") description:{@"APCarPlayCarServicesInterface.m", 46, @"Unable to find class %s", "CRSAppHistoryController"}];
  __break(1u);
}

void __getCRSAppHistoryControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarPlayServicesLibrary(void)") description:{@"APCarPlayCarServicesInterface.m", 42, @"%s", *a1}];
  __break(1u);
}

void __getCRFeatureAvailabilityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRFeatureAvailabilityClass(void)_block_invoke") description:{@"APCarPlayCarServicesInterface.m", 55, @"Unable to find class %s", "CRFeatureAvailability"}];
  __break(1u);
}

void __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *MobileKeyBagLibrary(void)") description:{@"APCarPlayCarServicesInterface.m", 85, @"%s", *a1}];
  __break(1u);
}

void APCarPlayInitiateJarvisProcessing_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_AFSiriActivationCarPlayDeviceVoice(uint64_t description:{NSString *, NSDictionary *, void (^)(BOOL, NSError *))"), @"APCarPlaySiriInterface.m", 48, @"%s", dlerror()}];
  __break(1u);
}

uint64_t __APCarPlayInitiateJarvisProcessing_block_invoke_cold_1(char a1, void *a2)
{
  if (a1)
  {
    v2 = "success";
  }

  else
  {
    v2 = "failure";
  }

  return LogPrintF(&gLogCategory_APCarPlaySiriInterface, "OSStatus APCarPlayInitiateJarvisProcessing(FigEndpointRef, uint64_t, APCarPlayInitiationCompleteCallback)_block_invoke", 33554482, "Jarvis activation result: %s, error domain %'@, code %d\n", v2, [a2 domain], objc_msgSend(a2, "code"));
}

void __getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *AssistantServicesLibrary(void)") description:{@"APCarPlaySiriInterface.m", 44, @"%s", *a1}];
  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getVTPreferencesClass(void)_block_invoke") description:{@"APCarPlaySiriInterface.m", 52, @"Unable to find class %s", "VTPreferences"}];
  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *VoiceTriggerLibrary(void)") description:{@"APCarPlaySiriInterface.m", 51, @"%s", *a1}];
  __break(1u);
}

void __getCSCoreSpeechServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCSCoreSpeechServicesClass(void)_block_invoke") description:{@"APCarPlaySiriInterface.m", 56, @"Unable to find class %s", "CSCoreSpeechServices"}];
  __break(1u);
}

void __getCSCoreSpeechServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CoreSpeechLibrary(void)") description:{@"APCarPlaySiriInterface.m", 55, @"%s", *a1}];
  __break(1u);
}

void metadataSender_handleMetadataEvent(int a1, NSObject **cf, uint64_t a3, CFTypeRef a4, const void *a5, char a6)
{
  if (!a4 || *(cf + 16))
  {
    return;
  }

  if (a3 != 1952807028)
  {
    v10 = a3 == 1836215907 || a3 == 1836216435;
    if (!v10 && a3 != 1836217187)
    {
      switch(a3)
      {
        case 0x6E706920:
          v22 = CFGetTypeID(a4);
          if (v22 == CFDictionaryGetTypeID())
          {
            if (!*(cf + 16))
            {
              if ((*(cf + 20) & 0x20) != 0)
              {
                CFRetain(cf);
                CFRetain(a4);
                CFRetain(a5);
                v23 = cf[3];
                block = MEMORY[0x277D85DD0];
                v25 = 3221225472;
                v26 = __metadataSender_handleMRNowPlayingInfoChanged_block_invoke;
                v27 = &__block_descriptor_57_e5_v8__0l;
                v28 = cf;
                v29 = a4;
                v30 = a5;
                v31 = a6;
                dispatch_async(v23, &block);
                return;
              }

              if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
              {
                v13 = "void metadataSender_handleMRNowPlayingInfoChanged(APMetadataSenderRef, CFDictionaryRef, CFStringRef, Boolean)";
                v14 = "[%{ptr}] Ignoring MR Now Playing Info update because endpoint doesn't support it.";
                goto LABEL_56;
              }
            }
          }

          else
          {

            APSLogErrorAt();
          }

          return;
        case 0x70726F67:
          OUTLINED_FUNCTION_6_13();
          if ((v18 & 0x20) != 0)
          {
            if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
            {
              v13 = "void metadataSender_handleAPProgressMetadataChanged(APMetadataSenderRef, CFDictionaryRef, CFStringRef)";
              v14 = "[%{ptr}] Ignoring progress metadata update because endpoint supports MRNowPlayingInfoText.\n";
              goto LABEL_56;
            }

            return;
          }

          if ((v18 & 4) == 0)
          {
            if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
            {
              v13 = "void metadataSender_handleAPProgressMetadataChanged(APMetadataSenderRef, CFDictionaryRef, CFStringRef)";
              v14 = "[%{ptr}] Ignoring progress metadata update because endpoint doesn't support it.\n";
              goto LABEL_56;
            }

            return;
          }

          CFDictionaryGetDouble();
          if (v19 == 0.0)
          {
            return;
          }

          break;
        case 0x61727420:
          OUTLINED_FUNCTION_6_13();
          if ((v12 & 2) == 0)
          {
            if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
            {
              v13 = "void metadataSender_handleAPArtworkMetadataChanged(APMetadataSenderRef, CFDictionaryRef, CFStringRef)";
              v14 = "[%{ptr}] Ignoring artwork metadata update because endpoint doesn't support it.\n";
LABEL_56:
              OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSender, v13, a3, v14);
              return;
            }

            return;
          }

          if ((v12 & 0x40) != 0)
          {
            if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
            {
              v13 = "void metadataSender_handleAPArtworkMetadataChanged(APMetadataSenderRef, CFDictionaryRef, CFStringRef)";
              v14 = "[%{ptr}] Ignoring artwork metadata update because endpoint supports MRNowPlayingInfoArtwork.";
              goto LABEL_56;
            }

            return;
          }

          break;
        default:
          return;
      }

      goto LABEL_48;
    }

    switch(a3)
    {
      case 0x6D726E63:
        v15 = @"mrNowPlayingClient";
        v16 = 512;
        v17 = @"updateMRNowPlayingClient";
        break;
      case 0x6D727363:
        v15 = @"mrSupportedCommandsFromSender";
        v16 = 128;
        v17 = @"updateMRSupportedCommands";
        break;
      case 0x6D727073:
        v15 = @"mrPlaybackState";
        v16 = 256;
        v17 = @"updateMRPlaybackState";
        break;
      default:
        if (gLogCategory_APMetadataSender <= 90)
        {
          OUTLINED_FUNCTION_2_27();
          if (!v10 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APMetadataSender, "void metadataSender_handleMRExtendedMetadataChanged(APMetadataSenderRef, APMetadataSourceEventType, CFTypeRef, CFStringRef)", (a5 + 60), "### Unhandled event type %'C.\n", a3);
          }
        }

        v15 = 0;
        v17 = 0;
LABEL_61:
        block = CFRetain(cf);
        v25 = CFRetain(a4);
        v26 = CFRetain(v17);
        v27 = CFRetain(v15);
        goto LABEL_62;
    }

    if ((*(cf + 5) & v16) == 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
      {
        v13 = "void metadataSender_handleMRExtendedMetadataChanged(APMetadataSenderRef, APMetadataSourceEventType, CFTypeRef, CFStringRef)";
        v14 = "[%{ptr}] Ignoring MR extended metadata change because endpoint doesn't support [%@].\n";
        goto LABEL_56;
      }

      return;
    }

    goto LABEL_61;
  }

  OUTLINED_FUNCTION_6_13();
  if (v20)
  {
    if ((v20 & 0x20) != 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
      {
        v13 = "void metadataSender_handleAPTextMetadataChanged(APMetadataSenderRef, CFDictionaryRef, CFStringRef)";
        v14 = "[%{ptr}] Ignoring text metadata update because endpoint supports MRNowPlayingInfoText.\n";
        goto LABEL_56;
      }

      return;
    }

LABEL_48:
    CFRetain(cf);
    CFRetain(a4);
    CFRetain(a5);
LABEL_62:
    APSDispatchAsyncFHelper();
    return;
  }

  if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
  {
    v13 = "void metadataSender_handleAPTextMetadataChanged(APMetadataSenderRef, CFDictionaryRef, CFStringRef)";
    v14 = "[%{ptr}] Ignoring text metadata update because endpoint doesn't support it.\n";
    goto LABEL_56;
  }
}

void APMetadataSenderInvalidate(uint64_t result)
{
  if (result)
  {
    if (!*(result + 16))
    {
      metadataSender_invalidateInternal(result);
    }
  }
}

void metadataSender_invalidateInternal(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 1;
      APMetadataSourceRemoveEventCallback(*(a1 + 32), *(a1 + 40));
      v2 = *(a1 + 32);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 32) = 0;
      }

      v3 = *(a1 + 48);
      if (v3)
      {
        CFRelease(v3);
        *(a1 + 48) = 0;
      }

      v4 = *(a1 + 80);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 80) = 0;
      }

      v5 = *(a1 + 96);
      if (v5)
      {
        CFRelease(v5);
        *(a1 + 96) = 0;
      }

      v6 = *(a1 + 112);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 112) = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_1(0, "metadataSender_invalidateInternal", 277);
  }
}

void metadataSender_sendInitialMetadataInternal(uint64_t cf)
{
  v7 = 0;
  v8 = 0;
  cfa = 0;
  v6 = 0;
  if (!*(cf + 16))
  {
    metadataSender_cloneMetadataDictionary(*(cf + 80), *(cf + 32), @"APNowPlayingInfoArtwork");
    v2 = *(cf + 88) || CFDictionaryGetCount(*(cf + 80)) > 0;
    *(cf + 88) = v2;
    metadataSender_processPendingAPArtworkMetadataChanges(cf);
    metadataSender_cloneMetadataDictionary(*(cf + 96), *(cf + 32), @"APNowPlayingInfoProgress");
    v3 = *(cf + 104) || CFDictionaryGetCount(*(cf + 96)) > 0;
    *(cf + 104) = v3;
    metadataSender_processPendingAPProgressMetadataChanges(cf);
    metadataSender_cloneMetadataDictionary(*(cf + 112), *(cf + 32), @"APNowPlayingInfoText");
    v4 = *(cf + 120) || CFDictionaryGetCount(*(cf + 112)) > 0;
    *(cf + 120) = v4;
    metadataSender_processPendingAPTextMetadataChanges(cf);
    APMetadataSourceCopyMetadata(*(cf + 32), @"MRNowPlayingInfo", &cfa);
    metadataSender_sendMRNowPlayingInfo(cf, cfa, @"replace", 0);
    APMetadataSourceCopyMetadata(*(cf + 32), @"MRSupportedCommands", &v8);
    APMetadataSourceCopyMetadata(*(cf + 32), @"MRPlaybackState", &v7);
    APMetadataSourceCopyMetadata(*(cf + 32), @"MRNowPlayingClient", &v6);
    metadataSender_sendMRExtendedMetadata(cf, v8, 128, @"updateMRSupportedCommands", @"mrSupportedCommandsFromSender");
    metadataSender_sendMRExtendedMetadata(cf, v7, 256, @"updateMRPlaybackState", @"mrPlaybackState");
    metadataSender_sendMRExtendedMetadata(cf, v6, 512, @"updateMRNowPlayingClient", @"mrNowPlayingClient");
    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(cf);
}

void metadataSender_Finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSender, "void metadataSender_Finalize(CFTypeRef)", a3, "APMetadataSender %{ptr} finalizing\n");
  }

  metadataSender_invalidateInternal(a1);
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }
}

void metadataSender_cloneMetadataDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v4 = APMetadataSourceCopyMetadata(a2, a3, &cf);
  v5 = cf;
  if (!v4)
  {
    context[0] = 0;
    context[1] = a1;
    if (cf)
    {
      OUTLINED_FUNCTION_0_12();
      CFDictionaryApplyFunction(v6, v7, context);
      v5 = cf;
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void metadataSender_processPendingAPArtworkMetadataChanges(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 16))
  {
    return;
  }

  if (!(*(a1 + 64))(*(a1 + 56)))
  {
    OUTLINED_FUNCTION_8_11();
    if (!(v7 ^ v8 | v6) || v10 == -1 && !OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender))
    {
      goto LABEL_78;
    }

    v9 = "[%{ptr}] Delaying artwork metadata change because timeline hasn't been established.\n";
LABEL_26:
    OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSender, "void metadataSender_processPendingAPArtworkMetadataChanges(APMetadataSenderRef)", v4, v9);
LABEL_78:
    if (cf)
    {
      CFRelease(cf);
    }

    return;
  }

  v3 = *(a1 + 20);
  if ((v3 & 2) == 0)
  {
    OUTLINED_FUNCTION_8_11();
    if (!(v7 ^ v8 | v6) || v5 == -1 && !OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender))
    {
      goto LABEL_78;
    }

    v9 = "[%{ptr}] Ignoring pending artwork metadata because endpoint doesn't support it.\n";
    goto LABEL_26;
  }

  if ((v3 & 0x40) != 0)
  {
    OUTLINED_FUNCTION_8_11();
    if (!(v7 ^ v8 | v6) || v30 == -1 && !OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender))
    {
      goto LABEL_78;
    }

    v9 = "[%{ptr}] Ignoring artwork metadata update because endpoint supports MRNowPlayingInfoArtwork.\n";
    goto LABEL_26;
  }

  if (!*(a1 + 88))
  {
    goto LABEL_78;
  }

  APSenderSessionGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v14 = *MEMORY[0x277CBECE8];
    v13(v12, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
    if (cf)
    {
      v15 = *(a1 + 80);
      *(a1 + 80) = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a1 + 88) = 0;
      (*(a1 + 72))(&targetBBuf, *(a1 + 56));
      if ((v55 & 0x100000000) == 0)
      {
        if (gLogCategory_APMetadataSender <= 90)
        {
          OUTLINED_FUNCTION_2_27();
          if (!v6 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APMetadataSender, "void metadataSender_processPendingAPArtworkMetadataChanges(APMetadataSenderRef)", (v1 + 60), "[%{ptr}] Got invalid currentRTPTime when sending AP artwork metadata\n", a1);
          }
        }

        goto LABEL_76;
      }

      v16 = targetBBuf;
      v17 = cf;
      v18 = *(a1 + 20);
      targetBBuf = 0;
      theBuffer = 0;
      v59 = v16;
      Value = CFDictionaryGetValue(v15, @"artworkMIMEType");
      if (Value)
      {
        v20 = Value;
      }

      else
      {
        v20 = @"image/none";
      }

      v21 = CFEqual(v20, @"image/jpeg");
      if (v21)
      {
        v29 = 1785750887;
      }

      else
      {
        v21 = CFEqual(v20, @"image/png");
        if (!v21)
        {
          v37 = CFEqual(v20, @"image/none");
          if (!v37)
          {
            if (gLogCategory_APMetadataSender <= 90)
            {
              OUTLINED_FUNCTION_2_27();
              if (!v6 || _LogCategory_Initialize())
              {
                LogPrintF(&gLogCategory_APMetadataSender, "OSStatus metadataSender_sendAPArtworkMetadata(FigTransportStreamRef, Boolean, CMTime, CFDictionaryRef)", (v17 + 60), "### Unknown artwork MIME type %'@.\n", v20);
              }
            }

            v51 = 0;
            goto LABEL_70;
          }

          v31 = OUTLINED_FUNCTION_9_9(v37, v38, v39, v40, v41, v42, v43, v44, v52, v53, targetBBuf, v55, v56, cf, v58, v59, SHIWORD(v59), theBuffer);
          if (!v31)
          {
            ScaledImageDataWithData = 0;
            v29 = 1852796517;
            goto LABEL_55;
          }

LABEL_86:
          v51 = v31;
          APSLogErrorAt();
          goto LABEL_70;
        }

        v29 = 1886283552;
      }

      v31 = OUTLINED_FUNCTION_9_9(v21, v22, v23, v24, v25, v26, v27, v28, v52, v53, targetBBuf, v55, v56, cf, v58, v59, SHIWORD(v59), theBuffer);
      if (!v31)
      {
        v32 = CFDictionaryGetValue(v15, @"artworkData");
        if (v32 && (v33 = v32, CFDataGetLength(v32) >= 1))
        {
          if ((v18 & 0x10) != 0)
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_8_11();
          if (v7 ^ v8 | v6 && (v35 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
          {
            OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSender, "OSStatus metadataSender_sendAPArtworkMetadata(FigTransportStreamRef, Boolean, CMTime, CFDictionaryRef)", v34, "Scaling artwork because endpoint doesn't support large artwork.\n");
          }

          ScaledImageDataWithData = CreateScaledImageDataWithData();
          if (!ScaledImageDataWithData)
          {
LABEL_52:
            ScaledImageDataWithData = CFRetain(v33);
          }

          BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
          if (BlockBufferWithCFDataNoCopy)
          {
            v51 = BlockBufferWithCFDataNoCopy;
            goto LABEL_62;
          }

          appended = CMBlockBufferAppendBufferReference(theBuffer, targetBBuf, 0, 0, 0);
          if (appended)
          {
            v51 = appended;
            goto LABEL_62;
          }
        }

        else
        {
          ScaledImageDataWithData = 0;
        }

LABEL_55:
        v47 = theBuffer;
        v48 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v48)
        {
          v49 = v48(v17, v29, v47, 0);
          if (!v49)
          {
            if (gLogCategory_APMetadataSender <= 50)
            {
              OUTLINED_FUNCTION_2_27();
              if (!v6 || _LogCategory_Initialize())
              {
                if (ScaledImageDataWithData)
                {
                  Length = CFDataGetLength(ScaledImageDataWithData);
                }

                else
                {
                  Length = 0;
                }

                LogPrintF(&gLogCategory_APMetadataSender, "OSStatus metadataSender_sendAPArtworkMetadata(FigTransportStreamRef, Boolean, CMTime, CFDictionaryRef)", (v17 + 20), "Send artwork metadata: (%@, %zu bytes)\n", v20, Length);
              }
            }

            v51 = 0;
            if (!ScaledImageDataWithData)
            {
              goto LABEL_70;
            }

LABEL_69:
            CFRelease(ScaledImageDataWithData);
LABEL_70:
            if (targetBBuf)
            {
              CFRelease(targetBBuf);
            }

            if (theBuffer)
            {
              CFRelease(theBuffer);
            }

            if (v51)
            {
              APSLogErrorAt();
            }

LABEL_76:
            if (v15)
            {
              CFRelease(v15);
            }

            goto LABEL_78;
          }

          v51 = v49;
        }

        else
        {
          v51 = -12782;
        }

LABEL_62:
        APSLogErrorAt();
        if (!ScaledImageDataWithData)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      goto LABEL_86;
    }
  }
}

void metadataSender_processPendingAPProgressMetadataChanges(uint64_t a1)
{
  cf = 0;
  if (!*(a1 + 16))
  {
    if (!(*(a1 + 64))(*(a1 + 56)))
    {
      if (gLogCategory_APMetadataSender > 30 || gLogCategory_APMetadataSender == -1 && !OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender))
      {
        goto LABEL_40;
      }

      v4 = "[%{ptr}] Delaying progress metadata change because timeline hasn't been established.\n";
LABEL_10:
      OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSender, "void metadataSender_processPendingAPProgressMetadataChanges(APMetadataSenderRef)", v3, v4);
      goto LABEL_40;
    }

    if ((*(a1 + 20) & 4) == 0)
    {
      if (gLogCategory_APMetadataSender > 30 || gLogCategory_APMetadataSender == -1 && !OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender))
      {
        goto LABEL_40;
      }

      v4 = "[%{ptr}] Ignoring pending progress metadata because endpoint doesn't support it.\n";
      goto LABEL_10;
    }

    if (!*(a1 + 104))
    {
LABEL_40:
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    APSenderSessionGetCMBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v8 = *MEMORY[0x277CBECE8];
      v7(v6, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
      if (cf)
      {
        v9 = *(a1 + 96);
        *(a1 + 96) = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(a1 + 104) = 0;
        (*(a1 + 72))(&targetBBuf, *(a1 + 56));
        if ((v30 & 1) == 0)
        {
          if (gLogCategory_APMetadataSender <= 90)
          {
            OUTLINED_FUNCTION_2_27();
            if (!v26 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_APMetadataSender, "void metadataSender_processPendingAPProgressMetadataChanges(APMetadataSenderRef)", (v1 + 60), "[%{ptr}] Got invalid currentRTPTime when sending AP progress metadata\n", a1);
            }
          }

          goto LABEL_35;
        }

        v10 = targetBBuf;
        v11 = v29;
        v12 = cf;
        v33 = targetBBuf;
        BlockBufferWithCFString = 0;
        targetBBuf = 0;
        theBuffer = 0;
        CFDictionaryGetDouble();
        if (BlockBufferWithCFString || (v14 = v13, CFDictionaryGetDouble(), BlockBufferWithCFString) || (v16 = v15, CFDictionaryGetDouble(), BlockBufferWithCFString))
        {
          APSLogErrorAt();
        }

        else
        {
          v18 = v17;
          Current = CFAbsoluteTimeGetCurrent();
          Mutable = CFStringCreateMutable(v8, 0);
          if (Mutable)
          {
            v21 = Mutable;
            v22 = (v16 + Current - v18) * v11;
            v23 = v14 * v11;
            CFStringAppendFormat(Mutable, 0, @"progress: %u/%u/%u\n", (v10 - v22), v10, (v10 - v22 + v23));
            BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
            if (!BlockBufferWithCFString)
            {
              BlockBufferWithCFString = FigCreateBlockBufferCopyingMemoryBlock();
              if (!BlockBufferWithCFString)
              {
                BlockBufferWithCFString = CMBlockBufferAppendBufferReference(theBuffer, targetBBuf, 0, 0, 0);
                if (!BlockBufferWithCFString)
                {
                  v24 = theBuffer;
                  v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v25)
                  {
                    BlockBufferWithCFString = v25(v12, 1886547815, v24, 0);
                    if (!BlockBufferWithCFString)
                    {
                      if (gLogCategory_APMetadataSender <= 40)
                      {
                        OUTLINED_FUNCTION_2_27();
                        if (!v26 || _LogCategory_Initialize())
                        {
                          DataLength = CMBlockBufferGetDataLength(targetBBuf);
                          LogPrintF(&gLogCategory_APMetadataSender, "OSStatus metadataSender_sendAPProgressMetadata(FigTransportStreamRef, CMTime, CFDictionaryRef)", (v12 + 10), "Send progress metadata: %.2f of %.2f (%d bytes)\n", v22 / v11, v23 / v11, DataLength);
                        }
                      }

                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    BlockBufferWithCFString = -12782;
                  }
                }
              }
            }

            APSLogErrorAt();
LABEL_29:
            CFRelease(v21);
            if (targetBBuf)
            {
              CFRelease(targetBBuf);
            }

            goto LABEL_31;
          }

          APSLogErrorAt();
          BlockBufferWithCFString = -6728;
        }

LABEL_31:
        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        if (BlockBufferWithCFString)
        {
          APSLogErrorAt();
        }

LABEL_35:
        if (v9)
        {
          CFRelease(v9);
        }

        goto LABEL_40;
      }
    }
  }
}

void metadataSender_processPendingAPTextMetadataChanges(uint64_t a1)
{
  cf = 0;
  v21 = 0;
  if (*(a1 + 16))
  {
    goto LABEL_61;
  }

  if ((*(a1 + 64))(*(a1 + 56)))
  {
    v3 = *(a1 + 20);
    if ((v3 & 1) == 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
      {
        v4 = "[%{ptr}] Ignoring pending text metadata because endpoint doesn't support it.\n";
LABEL_33:
        OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSender, "void metadataSender_processPendingAPTextMetadataChanges(APMetadataSenderRef)", v2, v4);
        goto LABEL_59;
      }

      goto LABEL_59;
    }

    if ((v3 & 0x20) != 0)
    {
      if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
      {
        v4 = "[%{ptr}] Ignoring pending text metadata because endpoint support MRNowPlayingInfoText.\n";
        goto LABEL_33;
      }

      goto LABEL_59;
    }

    if (!*(a1 + 120))
    {
      goto LABEL_59;
    }

    APSenderSessionGetCMBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7)
    {
      goto LABEL_59;
    }

    v8 = *MEMORY[0x277CBECE8];
    v7(v6, @"TransportControlStream", *MEMORY[0x277CBECE8], &v21);
    if (!v21)
    {
      goto LABEL_59;
    }

    v9 = *(a1 + 112);
    *(a1 + 112) = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 120) = 0;
    if ((*(a1 + 20) & 8) == 0)
    {
      if (APMetadataSourceCopyMetadata(*(a1 + 32), @"APNowPlayingInfoText", &cf))
      {
        goto LABEL_78;
      }

      for (i = 0; i != 6; ++i)
      {
        v11 = metadataSender_processPendingAPTextMetadataChanges_mandatoryTextKeys[i];
        if (!FigCFDictionarySetValueFromKeyInDict())
        {
          CFDictionarySetValue(v9, v11, &stru_283570B70);
        }
      }
    }

    (*(a1 + 72))(&v26, *(a1 + 56));
    if ((v27 & 1) == 0)
    {
      if (gLogCategory_APMetadataSender <= 90 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMetadataSender, "void metadataSender_processPendingAPTextMetadataChanges(APMetadataSenderRef)", 33554522, "[%{ptr}] Got invalid currentRTPTime when sending AP text metadata\n", a1);
      }

      goto LABEL_56;
    }

    v12 = v26;
    v13 = v21;
    bzero(&v26, 0xB8uLL);
    v24 = 0;
    v25 = 0;
    destinationBuffer = 0;
    sourceBytes = v12;
    DMAPContentBlock_Init();
    v28 = DMAPContentBlock_OpenContainer();
    if (!v28)
    {
      v14 = &off_27849FB78;
      v15 = 10;
      while (1)
      {
        v28 = DMAPContentBlock_AddCFObjectByKey();
        if (v28)
        {
          break;
        }

        v14 += 2;
        if (!--v15)
        {
          if (CFDictionaryGetInt64())
          {
            v28 = DMAPContentBlock_AddInt8();
          }

          CFDictionaryGetInt64();
          if (!v28)
          {
            v28 = DMAPContentBlock_AddInt8();
            if (v28)
            {
              break;
            }
          }

          v28 = 0;
          CFDictionaryGetDouble();
          v16 = DMAPContentBlock_AddInt8();
          v28 = v16;
          if (v16)
          {
            break;
          }

          CFDictionaryGetDouble();
          if (!v28)
          {
            v28 = DMAPContentBlock_AddInt32();
            if (v28)
            {
              break;
            }
          }

          v28 = 0;
          v28 = DMAPContentBlock_CloseContainer();
          if (v28)
          {
            break;
          }

          v28 = DMAPContentBlock_Commit();
          if (v28)
          {
            break;
          }

          v28 = CMBlockBufferCreateWithMemoryBlock(v8, 0, v24 + 4, *MEMORY[0x277CBECF0], 0, 0, v24 + 4, 1u, &destinationBuffer);
          if (v28)
          {
            break;
          }

          v28 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL);
          if (v28)
          {
            break;
          }

          v28 = CMBlockBufferReplaceDataBytes(v25, destinationBuffer, 4uLL, v24);
          if (v28)
          {
            break;
          }

          v17 = destinationBuffer;
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v18)
          {
            v28 = -12782;
            break;
          }

          v28 = v18(v13, 1952807028, v17, 0);
          if (v28)
          {
            break;
          }

          if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
          {
            OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSender, "OSStatus metadataSender_sendAPTextMetadata(FigTransportStreamRef, CMTime, CFDictionaryRef)", v19, "Send text metadata: (%zu bytes)\n");
          }

          goto LABEL_53;
        }
      }
    }

    APSLogErrorAt();
LABEL_53:
    DMAPContentBlock_Free();
    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    if (!v28)
    {
      goto LABEL_56;
    }

LABEL_78:
    APSLogErrorAt();
LABEL_56:
    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_59;
  }

  if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
  {
    v4 = "[%{ptr}] Delaying text metadata change because timeline hasn't been established.\n";
    goto LABEL_33;
  }

LABEL_59:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_61:
  if (v21)
  {
    CFRelease(v21);
  }
}

void metadataSender_sendMRExtendedMetadata(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5)
{
  cf = 0;
  if (!a2 || *(a1 + 16))
  {
    goto LABEL_18;
  }

  if (!a5)
  {
LABEL_23:
    APSLogErrorAt();
LABEL_18:
    if (cf)
    {
      CFRelease(cf);
    }

    return;
  }

  if (a3 && (*(a1 + 20) & a3) == 0)
  {
    if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSender, "void metadataSender_sendMRExtendedMetadata(APMetadataSenderRef, CFTypeRef, APMetadataFeatures, CFStringRef, CFStringRef)", a3, "[%{ptr}] Ignoring MR extended metadata change because endpoint doesn't support [%@].");
    }

    goto LABEL_18;
  }

  APSenderSessionGetCMBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v11 = *MEMORY[0x277CBECE8];
    v10(v9, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
    if (cf)
    {
      Mutable = CFDictionaryCreateMutable(v11, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v13 = Mutable;
        CFDictionarySetValue(Mutable, a5, a2);
        if (metadataSender_sendMRMetadata(cf, a4, v13))
        {
          APSLogErrorAt();
        }

        else if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APMetadataSender)))
        {
          OUTLINED_FUNCTION_4_1(&gLogCategory_APMetadataSender, "void metadataSender_sendMRExtendedMetadata(APMetadataSenderRef, CFTypeRef, APMetadataFeatures, CFStringRef, CFStringRef)", v14, "[%{ptr}] Send [%@] command with payload: %1.64@\n");
        }

        CFRelease(v13);
        goto LABEL_18;
      }

      goto LABEL_23;
    }
  }
}

void metadataSender_handleAPArtworkMetadataChangedInternal()
{
  OUTLINED_FUNCTION_7_11();
  if (!v2)
  {
    v3 = *(v1 + 80);
    v4 = v0[1];
    v7[0] = 0;
    v7[1] = v3;
    if (v4)
    {
      OUTLINED_FUNCTION_0_12();
      CFDictionaryApplyFunction(v5, v6, v7);
      if (LOBYTE(v7[0]))
      {
        *(v1 + 88) = 1;
        metadataSender_processPendingAPArtworkMetadataChanges(v1);
      }
    }
  }

  CFRelease(*v0);
  CFRelease(v0[1]);
  CFRelease(v0[2]);
}

void metadataSender_handleAPProgressMetadataChangedInternal()
{
  OUTLINED_FUNCTION_7_11();
  if (!v2)
  {
    v3 = *(v1 + 96);
    v4 = v0[1];
    v7[0] = 0;
    v7[1] = v3;
    if (v4)
    {
      OUTLINED_FUNCTION_0_12();
      CFDictionaryApplyFunction(v5, v6, v7);
      if (LOBYTE(v7[0]))
      {
        *(v1 + 104) = 1;
        metadataSender_processPendingAPProgressMetadataChanges(v1);
      }
    }
  }

  CFRelease(*v0);
  CFRelease(v0[1]);
  CFRelease(v0[2]);
}

void metadataSender_handleAPTextMetadataChangedInternal()
{
  OUTLINED_FUNCTION_7_11();
  if (!v2)
  {
    v3 = *(v1 + 112);
    v4 = v0[1];
    v7[0] = 0;
    v7[1] = v3;
    if (v4)
    {
      OUTLINED_FUNCTION_0_12();
      CFDictionaryApplyFunction(v5, v6, v7);
      if (LOBYTE(v7[0]))
      {
        *(v1 + 120) = 1;
        metadataSender_processPendingAPTextMetadataChanges(v1);
      }
    }
  }

  CFRelease(*v0);
  CFRelease(v0[1]);
  CFRelease(v0[2]);
}

void metadataSender_handleMRExtendedMetadataChangedInternal(uint64_t a1)
{
  v2 = *a1;
  if (!v2[16])
  {
    metadataSender_sendMRExtendedMetadata(v2, *(a1 + 8), 0, *(a1 + 16), *(a1 + 24));
    v2 = *a1;
  }

  CFRelease(v2);
  CFRelease(*(a1 + 8));
  CFRelease(*(a1 + 16));
  v3 = *(a1 + 24);

  CFRelease(v3);
}

void metadataSender_sendMRNowPlayingInfo_cold_4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTypeAudio(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 131, @"%s", dlerror()}];
  __break(1u);
}

void getkMRMediaRemoteNowPlayingInfoTypeVideo_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkMRMediaRemoteNowPlayingInfoTypeVideo(void)") description:{@"APSenderMediaRemoteSoftLinking.h", 134, @"%s", dlerror()}];
  __break(1u);
}

uint64_t APAudioZeroTimeStampProviderCreate(uint64_t a1, char a2, uint64_t *a3, double a4)
{
  if (_MergedGlobals_18 != -1)
  {
    dispatch_once(&_MergedGlobals_18, &__block_literal_global_28);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v8 = Instance;
  bzero((Instance + 16), 0x90uLL);
  result = 0;
  *(v8 + 16) = a4;
  *(v8 + 157) = a2;
  *(v8 + 156) = 0;
  *a3 = v8;
  return result;
}

void audioStream_dissociateInternal_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_dissociateInternal(FigEndpointStreamRef)", 33554462, "[%{ptr}] %###s\n", a1, "OSStatus audioStream_dissociateInternal(FigEndpointStreamRef)");
    }

    audioStream_invalidateTransportMDCStream_0(a1);
    APSDispatchSyncTask();
    v4 = CMBaseObjectGetDerivedStorage();
    v5 = *(v4 + 480);
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __audioStream_stopSilentAudio_block_invoke;
      block[3] = &__block_descriptor_tmp_36;
      block[4] = v4;
      block[5] = a1;
      dispatch_sync(v5, block);
    }

    v6 = *(v3 + 39);
    if (v6)
    {
      dispatch_source_cancel(*(v3 + 39));
      dispatch_release(v6);
      *(v3 + 39) = 0;
    }

    audioStream_invalidateTransportStreams(a1);
    FigSimpleMutexLock();
    v7 = *(v3 + 20);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 20) = 0;
    }

    v8 = *(v3 + 21);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 21) = 0;
    }

    v9 = *(v3 + 22);
    if (v9)
    {
      CFRelease(v9);
      *(v3 + 22) = 0;
    }

    FigSimpleMutexUnlock();
    if (*(v3 + 1))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }
  }
}

uint64_t audioStream_suspendInternal_0(uint64_t a1, uint64_t a2)
{
  v28[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = v28;
  cf = 0;
  CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  if (*DerivedStorage || !*(DerivedStorage + 185))
  {
    Mutable = 0;
  }

  else
  {
    if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_suspendInternal(FigEndpointStreamRef, CFDictionaryRef)", v4, "[%{ptr}] audio endpoint stream suspending...\n");
    }

    v5 = CMBaseObjectGetDerivedStorage();
    v30 = 0;
    v29 = 0;
    v28[1] = 0;
    if (!*v5)
    {
      v6 = v5;
      if (*(v5 + 185))
      {
        if (*(v5 + 496))
        {
          if (APSThreadSafeDictionaryCopyValueIfPresent() && APSThreadSafeDictionaryGetInt64IfPresent())
          {
            APSThreadSafeDictionaryGetInt32IfPresent();
            mach_absolute_time();
            UpTicksToSeconds();
            APSThreadSafeDictionarySetInt32();
            APSThreadSafeDictionaryRemoveValue();
          }

          v7 = *(v6 + 496);
          if (v7)
          {
            CFRelease(v7);
            *(v6 + 496) = 0;
          }
        }
      }
    }

    if (v30)
    {
      CFRelease(v30);
    }

    dispatch_sync_f(*(DerivedStorage + 304), context, audioStream_stopTimer);
    if (v28[0])
    {
      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_suspendInternal(FigEndpointStreamRef, CFDictionaryRef)", v8, "[%{ptr}] Error stopping timer: %d; swallowing it\n");
      }

      v28[0] = 0;
    }

    FigSimpleMutexLock();
    v9 = MEMORY[0x277CBECE8];
    if (*(DerivedStorage + 168))
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(CMBaseObject, *MEMORY[0x277CE5078], *v9, &cf);
      }

      CFGetInt64();
    }

    FigSimpleMutexUnlock();
    audioStream_invalidateTransportMDCStream_0(a1);
    audioStream_invalidateTransportStreams(a1);
    APSIOReporterGetCoreCaptureCount();
    v28[0] = 0;
    if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_suspendInternal(FigEndpointStreamRef, CFDictionaryRef)", v12, "[%{ptr}] ccCountBegin: %llu. ccCountEnd: %llu. ccCount: %llu. apCCTriggerCount: %llu. nonAPCoreCaptureCount: %llu. ioDiscontinuityCount: %llu. primaryPacketDropCount: %llu.\n");
    }

    Mutable = CFDictionaryCreateMutable(*v9, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v14 = *(DerivedStorage + 456);
      if (v14)
      {
        CFDictionarySetValue(Mutable, @"senderNANWifiStats", v14);
      }

      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_suspendInternal(FigEndpointStreamRef, CFDictionaryRef)", v14, "[%{ptr}] WifiStatsDictionary: %@\n");
      }

      v15 = *(DerivedStorage + 56);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v16)
      {
        v16(v15, 96, Mutable);
      }

      v17 = CMBaseObjectGetDerivedStorage();
      dispatch_source_set_timer(*(v17 + 312), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      if (*(v17 + 185) && gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "void audioStream_stopStatsTimer(FigEndpointStreamRef)", v18, "Audio stream %{ptr}: Stopping stats timer. Total retransmits: %lld Total futile: %lld\n");
      }

      v19 = *(v17 + 440);
      if (v19)
      {
        CFRelease(v19);
        *(v17 + 440) = 0;
      }

      v20 = *(v17 + 448);
      if (v20)
      {
        CFRelease(v20);
        *(v17 + 448) = 0;
      }

      FigSimpleMutexLock();
      *(DerivedStorage + 152) = 0;
      v21 = *(DerivedStorage + 160);
      if (v21)
      {
        CFRelease(v21);
        *(DerivedStorage + 160) = 0;
      }

      v22 = *(DerivedStorage + 168);
      if (v22)
      {
        CFRelease(v22);
        *(DerivedStorage + 168) = 0;
      }

      v23 = *(DerivedStorage + 176);
      if (v23)
      {
        CFRelease(v23);
        *(DerivedStorage + 176) = 0;
      }

      v24 = *(DerivedStorage + 224);
      if (v24)
      {
        CFRelease(v24);
        *(DerivedStorage + 224) = 0;
      }

      *(DerivedStorage + 184) = 0;
      *(DerivedStorage + 232) = 0;
      audioStream_updateIsResumedAndPostNotification(a1, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      FigSimpleMutexUnlock();
    }

    else
    {
      APSLogErrorAt();
      v28[0] = -16761;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v28[0];
}

void audioStream_setAudioModeInternal_0(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  AudioModeForEndpointStream = APSenderSessionUtilityGetAudioModeForEndpointStream(*(v2 + 120));
  v4 = *(v2 + 120);
  v5 = *(v1 + 8);
  *(v2 + 120) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (*(v2 + 185))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"audioMode", AudioModeForEndpointStream);
      if (*(v2 + 129))
      {
        v8 = *(v2 + 176);
        if (v8)
        {
          v9 = CFRetain(v8);
          if (v9)
          {
            v10 = v9;
            if (APTransportStreamSendPlistMessageCreatingPlistReply())
            {
              APSLogErrorAt();
            }

            CFRelease(v10);
            goto LABEL_16;
          }
        }
      }

      else
      {
        v11 = *(v2 + 56);
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v12 && !v12(v11, v7))
        {
          goto LABEL_16;
        }
      }

      APSLogErrorAt();
LABEL_16:
      CFRelease(v7);
      goto LABEL_17;
    }

    APSLogErrorAt();
  }

LABEL_17:
  if (*v1)
  {
    CFRelease(*v1);
  }

  v13 = *(v1 + 8);
  if (v13)
  {

    CFRelease(v13);
  }
}

uint64_t audioStream_audioHoseSendAudio(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2 == 1734700576 || a2 == 1735550308 && *(DerivedStorage + 130))
  {
    FigSimpleMutexLock();
    v7 = *(v6 + 168);
    if (v7)
    {
      v8 = CFRetain(v7);
      FigSimpleMutexUnlock();
      if (v8)
      {
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v9)
        {
          v10 = v9(v8, a2, a3);
          if (!v10)
          {
LABEL_12:
            CFRelease(v8);
            return v10;
          }
        }

        else
        {
          v10 = 4294954514;
        }

        APSLogErrorAt();
        goto LABEL_12;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    return 0;
  }

  APSLogErrorAt();
  return 4294960561;
}

uint64_t audioStream_audioHoseTimeAnnounce(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 160);
  if (!v6)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v7 = CFRetain(v6);
  FigSimpleMutexUnlock();
  if (!v7)
  {
    return 0;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8)
  {
    v9 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v9 = v8(v7, a2, a3);
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_8:
  CFRelease(v7);
  return v9;
}

uint64_t audioStream_audioHoseSendAudioBatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2 != 1734700576 && (a2 != 1735550308 || !*(DerivedStorage + 130)))
  {
    APSLogErrorAt();
    return 4294960561;
  }

  FigSimpleMutexLock();
  v7 = *(v6 + 168);
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

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = FigTransportStreamSendBatchSlow();
  }

  v11 = v10;
  if (v10)
  {
    APSLogErrorAt();
  }

  CFRelease(v8);
  return v11;
}

uint64_t audioStream_Dissociate_0(uint64_t a1)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    audioStream_dissociateInternal_0(a1);
  }

  return 0;
}

void audioStream_suspendAsync_0(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  audioStream_suspendInternal_0(*v1, v1[1]);
  if (v1[2])
  {
    CFRetain(*v1);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*v1);
  v2 = v1[1];
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t audioStream_resumeInternal(const char *a1, const __CFDictionary *a2)
{
  v198 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v196 = 0;
  v197 = 0;
  v194 = 0;
  cf = 0;
  v193 = 0;
  if (*DerivedStorage || (v9 = DerivedStorage, DerivedStorage[185]))
  {
    v71 = 0;
    v17 = 0;
    OUTLINED_FUNCTION_1_36();
    v69 = 0;
    v189 = 0;
    goto LABEL_250;
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    v172 = a1;
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v8, "[%{ptr}] audio endpoint stream resuming...\n");
  }

  v10 = MEMORY[0x277CBECE8];
  if (a2)
  {
    HIDWORD(v180) = CFDictionaryGetInt64() != 0;
    theData = CFDictionaryGetValue(a2, @"EncryptionKey");
    allocator = CFDictionaryGetValue(a2, @"BBufBackingProvider");
    v11 = CFDictionaryGetValue(a2, @"HoseRegistrar");
    if (v11)
    {
      v190 = CFRetain(v11);
    }

    else
    {
      v190 = 0;
    }

    FigCFDictionaryGetInt32IfPresent();
    v12 = CFDictionaryGetValue(a2, @"InitialTransportAudioFormatDescription");
    if (v12)
    {
      v4 = CFRetain(v12);
    }

    else
    {
      v4 = 0;
    }

    FigCFDictionaryGetFloatIfPresent();
    *(v9 + 22) = (*(&v194 + 1) * 1000.0);
    FigCFDictionaryGetFloatIfPresent();
    *(v9 + 23) = (*&v194 * 1000.0);
    v13 = CMBaseObjectGetDerivedStorage();
    v203 = 0;
    v204[0] = 0;
    v201 = 0;
    v202 = 0;
    v199 = 0;
    v200 = 0;
    if (!*v13)
    {
      v2 = v13;
      if (!*(v13 + 185))
      {
        v14 = FigCFDictionaryGetValue();
        if (v14)
        {
          v15 = v14;
          if (APSThreadSafeDictionaryCopyValueIfPresent())
          {
            mach_absolute_time();
            APSThreadSafeDictionarySetInt64();
            v16 = *(v2 + 62);
            *(v2 + 62) = v15;
            CFRetain(v15);
            if (v16)
            {
              CFRelease(v16);
            }
          }

          else
          {
            APSThreadSafeDictionaryCreate();
            APSLogErrorAt();
          }
        }
      }
    }

    if (v204[0])
    {
      CFRelease(v204[0]);
    }

    if (v203)
    {
      CFRelease(v203);
    }

    if (v202)
    {
      CFRelease(v202);
    }

    if (v201)
    {
      CFRelease(v201);
    }

    if (v200)
    {
      CFRelease(v200);
    }

    if (v199)
    {
      CFRelease(v199);
    }
  }

  else
  {
    HIDWORD(v180) = 0;
    theData = 0;
    v190 = 0;
    allocator = 0;
    v4 = 0;
  }

  v189 = v4;
  if (!APSAudioFormatDescriptionListContainsFormat())
  {
    APSLogErrorAt();
    APSSignalErrorAt();
    v71 = 0;
    v17 = 0;
    OUTLINED_FUNCTION_1_36();
    v198 = v166;
    v69 = v190;
    goto LABEL_250;
  }

  v3 = kAPSenderSessionTransportStreamOption_StreamPriority;
  v179 = a2;
  if (v9[131])
  {
    v184 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_37;
  }

  v54 = a1;
  v55 = *(v9 + 7);
  v204[0] = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APEndpointStreamAudio <= 30)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_8();
      v172 = "OSStatus audioStream_createTransportAudioDataStream(APSenderSessionRef, APSNetworkClockRef, APTransportStreamSendBackingProviderRef, CFStringRef, FigTransportStreamRef *)";
      LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_createTransportAudioDataStream(APSenderSessionRef, APSNetworkClockRef, APTransportStreamSendBackingProviderRef, CFStringRef, FigTransportStreamRef *)", (v57 - 20), "%###s.\n");
    }
  }

  v62 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v62)
  {
    v4 = 4294954514;
LABEL_100:
    APSLogErrorAt();
    a1 = v54;
    v69 = v190;
    v17 = 0;
    v198 = v4;
LABEL_101:
    APSLogErrorAt();
    v71 = 0;
LABEL_249:
    OUTLINED_FUNCTION_1_36();
    goto LABEL_250;
  }

  v63 = v62(v55);
  if (v63)
  {
    v4 = v63;
    goto LABEL_100;
  }

  v2 = *v10;
  Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v4 = 4294895476;
    goto LABEL_100;
  }

  v65 = Mutable;
  v3 = @"StreamPriority";
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v66 = MEMORY[0x277CBED10];
  if (CFPreferenceNumberWithDefault)
  {
    v66 = MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(v65, @"UseLibNetwork", *v66);
  CFDictionaryAddValue(v65, @"SendBackingProvider", allocator);
  v67 = FigCFEqual();
  v68 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v67)
  {
    if (!v68)
    {
      v4 = 4294954514;
      v69 = v190;
      goto LABEL_208;
    }

    v69 = v190;
    v74 = v68(v55, 1734700576, v65, v204);
    if (v74)
    {
      v4 = v74;
      goto LABEL_208;
    }

    goto LABEL_109;
  }

  if (!v68)
  {
    v4 = 4294954514;
    v69 = v190;
    goto LABEL_208;
  }

  v69 = v190;
  v70 = v68(v55, 1819042165, v65, v204);
  if (!v70)
  {
LABEL_109:
    v4 = 0;
    v75 = v204[0];
    v204[0] = 0;
    goto LABEL_209;
  }

  v4 = v70;
LABEL_208:
  APSLogErrorAt();
  v75 = 0;
LABEL_209:
  CFRelease(v65);
  if (v204[0])
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v127 = CMBaseObject;
      v128 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v128)
      {
        v128(v127);
      }
    }

    CFRelease(v204[0]);
  }

  v198 = v4;
  if (v4)
  {
    a1 = v54;
    v17 = v75;
    goto LABEL_101;
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    v172 = v54;
    v173 = v75;
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v125, "[%{ptr}] Created transport audio data stream [%{ptr}]\n");
  }

  if (!FigCFEqual())
  {
    goto LABEL_239;
  }

  if (FigGetCFPreferenceNumberWithDefault())
  {
    v130 = FigTransportStreamGetCMBaseObject();
    v131 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v131)
    {
      v198 = v131(v130, *MEMORY[0x277CE5038], v2, &v197);
      if (!v198)
      {
        goto LABEL_223;
      }
    }

    else
    {
      v198 = -12782;
    }

LABEL_228:
    APSLogErrorAt();
    v71 = 0;
    OUTLINED_FUNCTION_1_36();
    a1 = v54;
    v17 = v75;
    goto LABEL_250;
  }

LABEL_223:
  v204[0] = 0;
  if (!v75)
  {
    goto LABEL_238;
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    v172 = v54;
    v173 = v75;
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_preWarmNANDataSession(FigEndpointStreamRef, FigTransportStreamRef)", v129, "[%{ptr}] Pre-warm NANDataSession. TransportDataStream: [%{ptr}]\n");
  }

  v132 = FigTransportStreamGetCMBaseObject();
  v133 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v133 && (v133(v132, *MEMORY[0x277CE5050], v2, v204), v204[0]))
  {
    v134 = APTNANDataSessionPreWarm();
    if (v134)
    {
      APSLogErrorAt();
    }

    if (v204[0])
    {
      CFRelease(v204[0]);
    }

    v198 = v134;
    if (v134)
    {
      goto LABEL_228;
    }
  }

  else
  {
LABEL_238:
    v198 = 0;
  }

LABEL_239:
  v135 = *(v9 + 7);
  v4 = *(v9 + 5);
  v204[0] = 0;
  v136 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v136)
  {
    v144 = -12782;
LABEL_247:
    APSLogErrorAt();
    a1 = v54;
    v69 = v190;
    v71 = 0;
    v198 = v144;
    v17 = v75;
LABEL_248:
    APSLogErrorAt();
    goto LABEL_249;
  }

  v137 = v136(v135);
  if (v137)
  {
    v144 = v137;
    goto LABEL_247;
  }

  v138 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v138)
  {
    v144 = -71820;
    goto LABEL_247;
  }

  v139 = v138;
  CFDictionarySetInt64();
  v140 = FigCFEqual();
  v141 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  a1 = v54;
  if (v140)
  {
    v4 = v189;
    if (!v141)
    {
      v143 = -12782;
      v17 = v75;
      goto LABEL_293;
    }

    v17 = v75;
    v142 = v141(v135, 1819042676, v139, v204);
    if (v142)
    {
      v143 = v142;
      goto LABEL_293;
    }
  }

  else
  {
    v4 = v189;
    if (!v141)
    {
      v143 = -12782;
      v17 = v75;
      goto LABEL_293;
    }

    v17 = v75;
    v155 = v141(v135, 1735287668, v139, v204);
    if (v155)
    {
      v143 = v155;
      goto LABEL_293;
    }
  }

  v156 = v204[0];
  v157 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v157)
  {
    v158 = v157(v156, audioStream_receivedAudioControlMessage, 0, a1);
    if (v158)
    {
      v143 = v158;
    }

    else
    {
      v159 = v204[0];
      v160 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v160)
      {
        v143 = v160(v159);
        if (!v143)
        {
          v184 = v204[0];
          v204[0] = 0;
          goto LABEL_294;
        }
      }

      else
      {
        v143 = -12782;
      }
    }
  }

  else
  {
    v143 = -12782;
  }

LABEL_293:
  APSLogErrorAt();
  v184 = 0;
LABEL_294:
  CFRelease(v139);
  if (v204[0])
  {
    v162 = FigTransportStreamGetCMBaseObject();
    if (v162)
    {
      v163 = v162;
      v164 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v164)
      {
        v164(v163);
      }
    }

    CFRelease(v204[0]);
  }

  v198 = v143;
  if (v143)
  {
    v69 = v190;
    v71 = v184;
    goto LABEL_248;
  }

  v10 = MEMORY[0x277CBECE8];
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    v172 = a1;
    v173 = v184;
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v161, "[%{ptr}] Created transport audio control stream [%{ptr}]\n");
  }

  v165 = APSGetFBOPropertyInt64();
  if (v198)
  {
    goto LABEL_313;
  }

  v18 = v165;
LABEL_37:
  if (v9[129])
  {
    v198 = RandomBytes();
    if (v198)
    {
LABEL_313:
      APSLogErrorAt();
      OUTLINED_FUNCTION_1_36();
      goto LABEL_161;
    }
  }

  v181 = v9;
  v182 = v17;
  value = v197;
  v177 = v196;
  v178 = v18;
  v19 = CMBaseObjectGetDerivedStorage();
  v204[0] = 0;
  v183 = a1;
  v20 = CMBaseObjectGetDerivedStorage();
  AudioModeForEndpointStream = APSenderSessionUtilityGetAudioModeForEndpointStream(*(v20 + 120));
  APSAudioFormatDescriptionGetCompressionType();
  APSAudioFormatDescriptionGetLegacyFormatMask();
  APSAudioFormatDescriptionGetSampleRate();
  APSAudioFormatDescriptionGetFramesPerPacket();
  allocatora = *v10;
  v22 = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v22)
  {
    APSLogErrorAt();
    goto LABEL_315;
  }

  v23 = v22;
  v24 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v22, @"supportsDynamicStreamID", *MEMORY[0x277CBED28]);
  v25 = *MEMORY[0x277CBED10];
  if (*(v20 + 112))
  {
    v26 = v24;
  }

  else
  {
    v26 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v23, @"isMedia", v26);
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  if (*(v20 + 100) >= 1)
  {
    CFDictionarySetInt64();
  }

  if (FigCFEqual())
  {
    CFDictionarySetValue(v23, @"disableRetransmits", v24);
  }

  if (*(v20 + 113))
  {
    CFDictionarySetValue(v23, @"usingScreen", v24);
  }

  if (*(v20 + 296))
  {
    CFDictionarySetValue(v23, @"HTFTIsActive", v24);
  }

  CFDictionarySetInt64();
  v27 = theData;
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    CFDictionarySetData();
  }

  CFDictionarySetValue(v23, @"audioMode", AudioModeForEndpointStream);
  if (*(v20 + 128))
  {
    v34 = OUTLINED_FUNCTION_13_8(v28, v29, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v30, v31, v32, v33, v172, v173, v174, v175, value, v196, v178, v179, v180, v181, v182, v183, v184, theData, v189, v190, allocatora);
    if (v34)
    {
      v40 = v34;
      if (!*(v20 + 131))
      {
        v41 = OUTLINED_FUNCTION_13_8(v34, v35, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v36, v37, v38, v39, v172, v173, v174, v175, value, v177, v178, v179, v180, v181, v182, v183, v184, theDataa, v189, v190, allocatora);
        if (!v41)
        {
          APSLogErrorAt();
          v51 = 0;
LABEL_324:
          v167 = -6728;
          goto LABEL_327;
        }

        v42 = v41;
        v43 = HIDWORD(v180);
        if (v27)
        {
          v43 = 1;
        }

        if (v43)
        {
          v44 = v24;
        }

        else
        {
          v44 = v25;
        }

        CFDictionarySetValue(v41, @"streamConnectionKeyUseStreamEncryptionKey", v44);
        if (value)
        {
          CFDictionarySetValue(v42, @"streamConnectionKeyNetworkInfo", value);
        }

        CFDictionarySetValue(v40, @"streamConnectionTypeRTP", v42);
        CFRelease(v42);
        v51 = OUTLINED_FUNCTION_13_8(v45, v46, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v47, v48, v49, v50, v172, v173, v174, v175, value, v177, v178, v179, v180, v181, v182, v183, v184, theDatab, v189, v190, allocatora);
        if (!v51)
        {
LABEL_323:
          APSLogErrorAt();
          goto LABEL_324;
        }

        v52 = CFDictionarySetInt64();
        if (v52)
        {
          v167 = v52;
LABEL_326:
          APSLogErrorAt();
LABEL_327:
          v61 = v181;
          CFRelease(v23);
          CFRelease(v40);
          if (v51)
          {
            CFRelease(v51);
          }

          goto LABEL_329;
        }

        CFDictionarySetValue(v40, @"streamConnectionTypeRTCP", v51);
        CFRelease(v51);
      }

      if (!*(v20 + 129))
      {
LABEL_71:
        CFDictionarySetValue(v23, @"streamConnections", v40);
        CFRelease(v40);
        goto LABEL_76;
      }

      v51 = OUTLINED_FUNCTION_13_8(v34, v35, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v36, v37, v38, v39, v172, v173, v174, v175, value, v177, v178, v179, v180, v181, v182, v183, v184, theDataa, v189, v190, allocatora);
      if (v51)
      {
        v53 = CFDictionarySetInt64();
        if (!v53)
        {
          CFDictionarySetValue(v40, @"streamConnectionTypeMediaDataControl", v51);
          CFRelease(v51);
          goto LABEL_71;
        }

        v167 = v53;
        goto LABEL_326;
      }

      goto LABEL_323;
    }

    APSLogErrorAt();
    CFRelease(v23);
LABEL_315:
    v167 = -6728;
    v61 = v181;
LABEL_329:
    LODWORD(v203) = v167;
    APSLogErrorAt();
    theDatac = 0;
    v4 = 0;
    Int64Ranged = 0;
    goto LABEL_122;
  }

  CFDictionarySetInt64();
LABEL_76:
  LODWORD(v203) = 0;
  v58 = *(v19 + 56);
  v59 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v59)
  {
    LODWORD(v203) = -12782;
    goto LABEL_83;
  }

  LODWORD(v203) = v59(v58, 96, v23, v204, &cf, 0);
  if (v203)
  {
LABEL_83:
    APSLogErrorAt();
    theDatac = 0;
LABEL_84:
    v4 = 0;
LABEL_85:
    Int64Ranged = 0;
    v61 = v181;
    goto LABEL_120;
  }

  theDatac = CFDictionaryGetInt64();
  if (!*(v19 + 128))
  {
    CFDictionaryGetInt64();
    if (!v203)
    {
      CFDictionaryGetInt64();
      v61 = v181;
      if (v203)
      {
        APSLogErrorAt();
        v4 = 0;
        goto LABEL_336;
      }

      v4 = 0;
LABEL_119:
      Int64Ranged = CFDictionaryGetInt64Ranged();
      goto LABEL_120;
    }

LABEL_337:
    APSLogErrorAt();
    goto LABEL_84;
  }

  CFDictionaryGetTypeID();
  OUTLINED_FUNCTION_3_20();
  CFDictionaryGetTypedValue();
  if (v203)
  {
    goto LABEL_337;
  }

  if (*(v19 + 131))
  {
    v4 = 0;
    goto LABEL_114;
  }

  CFDictionaryGetTypeID();
  OUTLINED_FUNCTION_3_20();
  TypedValue = CFDictionaryGetTypedValue();
  if (v203)
  {
    goto LABEL_337;
  }

  CFDictionaryGetInt64();
  if (v203)
  {
    goto LABEL_337;
  }

  if (!CFDictionaryContainsKey(TypedValue, @"streamConnectionKeyNetworkInfo"))
  {
    v4 = 0;
    goto LABEL_112;
  }

  CFDictionaryGetTypeID();
  v73 = CFDictionaryGetTypedValue();
  if (!v73)
  {
    APSLogErrorAt();
    LODWORD(v203) = -6727;
    if (gLogCategory_APEndpointStreamAudio <= 90)
    {
      if (gLogCategory_APEndpointStreamAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        v172 = v183;
        OUTLINED_FUNCTION_8();
        LogPrintF(v169, v170, (v168 + 40), v171);
      }
    }

    goto LABEL_84;
  }

  v4 = v73;
  CFRetain(v73);
LABEL_112:
  CFDictionaryGetTypeID();
  OUTLINED_FUNCTION_3_20();
  CFDictionaryGetTypedValue();
  if (v203 || (CFDictionaryGetInt64(), v203))
  {
LABEL_338:
    APSLogErrorAt();
    goto LABEL_85;
  }

LABEL_114:
  if (!*(v19 + 129))
  {
    v61 = v181;
    goto LABEL_119;
  }

  CFDictionaryGetTypeID();
  OUTLINED_FUNCTION_3_20();
  CFDictionaryGetTypedValue();
  if (v203)
  {
    goto LABEL_338;
  }

  CFDictionaryGetInt64();
  v61 = v181;
  if (!v203)
  {
    goto LABEL_119;
  }

  APSLogErrorAt();
LABEL_336:
  Int64Ranged = 0;
LABEL_120:
  CFRelease(v23);
  if (v204[0])
  {
    CFRelease(v204[0]);
  }

LABEL_122:
  v198 = v203;
  if (v203)
  {
    goto LABEL_319;
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    v174 = Int64Ranged;
    v172 = v183;
    v173 = theDatac;
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v76, "[%{ptr}] Created remote audio stream. streamID=%llu arrivalToRenderLatencyMs=%u\n");
  }

  FigSimpleMutexLock();
  *(v61 + 232) = MillisecondsToUpTicks();
  if (cf)
  {
    *(v61 + 224) = CFRetain(cf);
  }

  FigSimpleMutexUnlock();
  if (!*(v61 + 131))
  {
    v198 = APSSetFBOPropertyInt64();
    if (v198)
    {
      goto LABEL_319;
    }

    v17 = v182;
    if (!v4)
    {
      goto LABEL_151;
    }

    v106 = FigTransportStreamGetCMBaseObject();
    v107 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v107)
    {
      v198 = v107(v106, *MEMORY[0x277CE5098], v4);
      if (!v198)
      {
LABEL_151:
        v198 = APSSetFBOPropertyInt64();
        if (!v198)
        {
          if (CFDictionaryGetInt64())
          {
            goto LABEL_130;
          }

          v17 = v182;
          v198 = FigTransportStreamResume(v182);
          if (!v198)
          {
            v198 = FigTransportStreamSetMessageCallbacks(v182, audioStream_receivedAudioDataMessage_0, v183);
            if (!v198)
            {
              goto LABEL_130;
            }

LABEL_319:
            APSLogErrorAt();
            v3 = 0;
            v2 = 0;
            a1 = v183;
            goto LABEL_320;
          }
        }
      }
    }

    else
    {
      v198 = -12782;
    }

    APSLogErrorAt();
    v3 = 0;
    v2 = 0;
    a1 = v183;
LABEL_161:
    v69 = v190;
LABEL_162:
    v71 = v184;
    goto LABEL_250;
  }

LABEL_130:
  if (!*(v61 + 129))
  {
    v3 = 0;
    a1 = v183;
    v69 = v190;
    v94 = allocatora;
    goto LABEL_183;
  }

  v77 = *(v61 + 56);
  v78 = v196;
  v204[0] = 0;
  v79 = APTransportStreamIDMakeWithPort();
  v203 = 0;
  v80 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v80)
  {
    v104 = -12782;
    a1 = v183;
LABEL_157:
    APSLogErrorAt();
    v87 = 0;
LABEL_165:
    v96 = 0;
LABEL_166:
    v94 = allocatora;
    goto LABEL_167;
  }

  v81 = v80(v77);
  a1 = v183;
  if (v81)
  {
    v104 = v81;
    goto LABEL_157;
  }

  v87 = OUTLINED_FUNCTION_13_8(0, v82, MEMORY[0x277CBF138], MEMORY[0x277CBF150], v83, v84, v85, v86, v172, v173, v174, v175, value, v177, v178, v179, v180, v181, v182, v183, v184, theDatac, v189, v190, allocatora);
  if (!v87)
  {
    APSLogErrorAt();
    v96 = 0;
    v104 = -6728;
    goto LABEL_166;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v88 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v88)
  {
    v104 = -12782;
LABEL_164:
    APSLogErrorAt();
    goto LABEL_165;
  }

  v89 = v88(v77, v79, v87, v204);
  if (v89)
  {
    v104 = v89;
    goto LABEL_164;
  }

  v90 = APSSetFBOPropertyInt64();
  if (v90)
  {
    v104 = v90;
    goto LABEL_164;
  }

  APSenderSessionGetCMBaseObject();
  v92 = v91;
  v93 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v94 = allocatora;
  if (!v93)
  {
    v104 = -12782;
LABEL_204:
    APSLogErrorAt();
    v96 = 0;
    goto LABEL_167;
  }

  v95 = v93(v92, @"KeyHolder", allocatora, &v203);
  if (v95)
  {
    v104 = v95;
    goto LABEL_204;
  }

  v96 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(allocatora, v78);
  if (v96)
  {
    v98 = v203;
    v97 = v204[0];
    v99 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v99)
    {
      v100 = v99(v97, v98, v96);
      if (v100)
      {
        v104 = v100;
      }

      else
      {
        v101 = APSSetFBOPropertyInt64();
        if (v101)
        {
          v104 = v101;
        }

        else
        {
          v102 = FigTransportStreamSetMessageCallbacks(v204[0], audioStream_receivedMediaDataEventMessage_0, a1);
          if (v102)
          {
            v104 = v102;
          }

          else
          {
            v103 = FigTransportStreamResume(v204[0]);
            if (v103)
            {
              v104 = v103;
            }

            else
            {
              v104 = FigTransportStreamWaitUntilConnected(v204[0]);
              if (!v104)
              {
                v105 = v204[0];
                v204[0] = 0;
LABEL_173:
                CFRelease(v87);
                v3 = v105;
                goto LABEL_174;
              }
            }
          }
        }
      }
    }

    else
    {
      v104 = -12782;
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v104 = -6728;
  }

LABEL_167:
  if (v204[0])
  {
    v109 = FigTransportStreamGetCMBaseObject();
    if (v109)
    {
      v110 = v109;
      v111 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v111)
      {
        v111(v110);
      }
    }

    CFRelease(v204[0]);
    v204[0] = 0;
  }

  v105 = 0;
  v3 = 0;
  if (v87)
  {
    goto LABEL_173;
  }

LABEL_174:
  if (v203)
  {
    CFRelease(v203);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  v198 = v104;
  if (v104)
  {
    APSLogErrorAt();
    v2 = 0;
LABEL_320:
    v69 = v190;
    v17 = v182;
    goto LABEL_162;
  }

  v69 = v190;
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v108, "[%{ptr}] Created transport media data control stream [%{ptr}]\n");
  }

LABEL_183:
  v112 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 30)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_8();
      LogPrintF(&gLogCategory_APEndpointStreamAudio, "void audioStream_startStatsTimer(FigEndpointStreamRef)", (v113 - 20), "Audio stream %{ptr}: Starting stats timer\n", a1);
    }
  }

  *(v112 + 320) = 0u;
  *(v112 + 336) = 0u;
  v114 = *(v112 + 312);
  v115 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v114, v115, 0x12A05F200uLL, 0x3B9ACA00uLL);
  *(v112 + 384) = mach_absolute_time();
  *(v112 + 392) = 60;
  *(v112 + 400) = mach_absolute_time();
  *(v112 + 408) = FigGetCFPreferenceNumberWithDefault();
  *(v112 + 432) = 0;
  *(v112 + 352) = 0u;
  *(v112 + 368) = 0u;
  v116 = CFArrayCreateMutable(v94, 5, MEMORY[0x277CBF128]);
  *(v112 + 440) = v116;
  v17 = v182;
  if (v116 && (v117 = CFArrayCreateMutable(v94, 5, MEMORY[0x277CBF128]), (*(v112 + 448) = v117) != 0))
  {
    v118 = 5;
    do
    {
      CFArrayAppendInt64();
      CFArrayAppendInt64();
      --v118;
    }

    while (v118);
  }

  else
  {
    APSLogErrorAt();
  }

  v2 = CFDictionaryCreateMutable(v94, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v2)
  {
    APSLogErrorAt();
    v198 = -16611;
    goto LABEL_162;
  }

  FigCFDictionarySetValue();
  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v120 = *(ProtocolVTable + 16)) == 0)
  {
    v124 = -12788;
LABEL_200:
    v198 = v124;
    goto LABEL_201;
  }

  v121 = *(v120 + 8);
  if (!v121)
  {
    v124 = -12782;
    goto LABEL_200;
  }

  v198 = v121(v69, a1, v2, &v193);
  if (v198)
  {
LABEL_201:
    v71 = v184;
    APSLogErrorAt();
    goto LABEL_250;
  }

  FigSimpleMutexLock();
  *(v61 + 152) = theDatac;
  *(v61 + 160) = v184;
  *(v61 + 168) = v182;
  *(v61 + 176) = v3;
  audioStream_updateIsResumedAndPostNotification(a1, 1);
  audioStream_updateDynamicLatencyOffsetInternal(a1);
  v122 = v193;
  *(v61 + 208) = v69;
  *(v61 + 216) = v122;
  ++*(v61 + 252);
  FigSimpleMutexUnlock();
  *(v61 + 280) = 0;
  APSIOReporterGetCoreCaptureCount();
  v198 = 0;
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_resumeInternal(FigEndpointStreamRef, CFDictionaryRef)", v123, "[%{ptr}] ccCountBegin: %d\n");
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  v71 = 0;
  v17 = 0;
  v3 = 0;
  v69 = 0;
LABEL_250:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v71)
  {
    v145 = FigTransportStreamGetCMBaseObject();
    if (v145)
    {
      v146 = v145;
      v147 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v147)
      {
        v147(v146);
      }
    }

    CFRelease(v71);
  }

  if (v17)
  {
    v148 = FigTransportStreamGetCMBaseObject();
    if (v148)
    {
      v149 = v148;
      v150 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v150)
      {
        v150(v149);
      }
    }

    CFRelease(v17);
  }

  if (v3)
  {
    v151 = FigTransportStreamGetCMBaseObject();
    if (v151)
    {
      v152 = v151;
      v153 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v153)
      {
        v153(v152);
      }
    }

    CFRelease(v3);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v197)
  {
    CFRelease(v197);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v189)
  {
    CFRelease(v189);
  }

  if (!v198)
  {
    return 0;
  }

  audioStream_suspendInternal_0(a1, 0);
  return v198;
}

void audioStream_updateDynamicLatencyOffsetInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 185))
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 240) == 1 && (v4 = *(DerivedStorage + 96)) != 0)
    {
      v5 = v4 - *(DerivedStorage + 88);
    }

    else
    {
      v5 = 0;
    }

    if (*(DerivedStorage + 248) != v5)
    {
      if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "void audioStream_updateDynamicLatencyOffsetInternal(FigEndpointStreamRef)", v2, "[%{ptr}] Updating dynamic audio latency offset to %d ms\n");
      }

      *(v3 + 248) = v5;
      CMBaseObjectGetDerivedStorage();
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      FigCFDictionarySetInt();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (MutableCopy)
      {

        CFRelease(MutableCopy);
      }
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

void audioStream_enableReceiverCoreCapturesInternal(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  v4 = atomic_load((v2 + 297));
  if ((v4 & 1) == 0)
  {
    goto LABEL_27;
  }

  v5 = v2;
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "void audioStream_enableReceiverCoreCapturesInternal(void *)", v3, "%{ptr} Enabling core captures on receiver.\n");
  }

  if (*v5)
  {
    APSLogErrorAt();
LABEL_27:
    v10 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  if (!Mutable)
  {
    goto LABEL_13;
  }

  CFDictionarySetValue(Mutable, @"value", *MEMORY[0x277CBED28]);
  if (!*(v5 + 129))
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v8 = *(v5 + 176);
  if (!v8 || (v9 = CFRetain(v8)) == 0)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  v10 = v9;
  if (APTransportStreamSendPlistMessageCreatingPlistReply())
  {
    APSLogErrorAt();
  }

LABEL_15:
  if (*v1)
  {
    CFRelease(*v1);
  }

  v11 = *(v1 + 8);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v7)
  {

    CFRelease(v7);
  }
}

void audioStream_triggerReceiverCoreCapturesInternal(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_5(a1);
  if (*v2)
  {
    goto LABEL_7;
  }

  if (!*(v2 + 129))
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v3 = *(v2 + 176);
  if (!v3 || (v4 = CFRetain(v3)) == 0)
  {
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v5 = v4;
  if (APTransportStreamSendPlistMessageCreatingPlistReply())
  {
    APSLogErrorAt();
  }

LABEL_9:
  if (*v1)
  {
    CFRelease(*v1);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

void APEndpointStreamAudioCreate_cold_7()
{
  OUTLINED_FUNCTION_48();
  APSAudioFormatDescriptionListCopyDebugString();
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus APEndpointStreamAudioCreate(CFAllocatorRef, CFStringRef, CFStringRef, CFStringRef, CFDictionaryRef, APSenderSessionRef, APAudioEngineVendorRef, APSNetworkClockRef, APEndpointDescriptionRef, FigEndpointStreamRef *)", v1, " [%{ptr}] Medium Latency supported formats extended=%@");
  }

  if (*v0)
  {
    CFRelease(*v0);
  }
}

uint64_t audioStream_statsTimerFired_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

double audioStream_Control_cold_1_0()
{
  OUTLINED_FUNCTION_48();
  Int64 = CFDictionaryGetInt64();
  FigSimpleMutexLock();
  if (*(v0 + 240) != Int64)
  {
    *(v0 + 240) = Int64;
    if (gLogCategory_APEndpointStreamAudio < 51 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_handleCommandSetMode(FigEndpointStreamRef, CFDictionaryRef)", v3, "[%{ptr}] Updating media presentation mode to %s\n");
    }

    if (*(v0 + 185))
    {
      audioStream_updateDynamicLatencyOffsetInternal(v1);
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

uint64_t audioStream_Control_cold_6(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  ++*(a1 + 280);
  APSIssueReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v8 = *(ProtocolVTable + 16)) != 0)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      result = v9(a2, a3);
      *a4 = result;
      if (!result)
      {
        return result;
      }

      return APSLogErrorAt();
    }

    v11 = -12782;
  }

  else
  {
    v11 = -12788;
  }

  *a4 = v11;
  return APSLogErrorAt();
}

uint64_t audioStream_receivedAudioControlMessageInternal_cold_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointStreamAudio <= 50)
  {
    if (gLogCategory_APEndpointStreamAudio != -1)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "void audioStream_receivedRetransmitRequest(FigEndpointStreamRef, CMBlockBufferRef)", a3, "[%{ptr}] Registrar is NULL in retransmit request.");
    }

    result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio);
    if (result)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "void audioStream_receivedRetransmitRequest(FigEndpointStreamRef, CMBlockBufferRef)", a3, "[%{ptr}] Registrar is NULL in retransmit request.");
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpointStreamAudio), result))
    {
      result = OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamAudio, "void audioStream_receivedMediaDataEventMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", v7, "### [%{ptr}] Failed to parse MDE message plist. %@\n");
    }
  }

  *a4 = a3;
  return result;
}

void audioStream_receivedMediaDataEventMessage_cold_4(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio < 51 && (gLogCategory_APEndpointStreamAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_reportRTCMetrics(FigEndpointStreamRef, CFDictionaryRef)", v2, "[%{ptr}] ReportRTCMetrics '%@'\n");
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage && *(DerivedStorage + 185) && *(DerivedStorage + 496))
  {
    if (APSThreadSafeDictionaryCopyValueIfPresent())
    {
      APSThreadSafeDictionaryAddEntriesToDictionaryWithRecursion();
    }
  }
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_7()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpointStreamAudio), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamAudio, v1, v2, "[%{ptr}] %s requires element with key '%@'\n");
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_8()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpointStreamAudio), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamAudio, v1, v2, "[%{ptr}] %s needs element with key '%@'\n");
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_9()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpointStreamAudio), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamAudio, v1, v2, "[%{ptr}] %s needs element with key '%@'\n");
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_10()
{
  OUTLINED_FUNCTION_48();
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpointStreamAudio), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamAudio, v1, v2, "[%{ptr}] %s deserialize histogram '%@' failed\n");
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16760;
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_reportAudioPerformance(FigEndpointStreamRef, CFDictionaryRef)", v3, "[%{ptr}] %s endpointID is not set\n");
    }

    result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpointStreamAudio);
    if (result)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_reportAudioPerformance(FigEndpointStreamRef, CFDictionaryRef)", v3, "[%{ptr}] %s endpointID is not set\n");
    }
  }

  return result;
}

uint64_t audioStream_receivedMediaDataEventMessage_cold_14()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamAudio != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpointStreamAudio), result))
    {
      OUTLINED_FUNCTION_9_10();
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointStreamAudio, v1, v2, "[%{ptr}] %s needs element with key '%@'\n");
    }
  }

  return result;
}

void endpointCluster_deactivateSubEndpoint(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(*(CMBaseObjectGetVTable() + 32) + 16))
  {
    OUTLINED_FUNCTION_20_3();
    v6();
  }

  endpointCluster_updateIdleState(a1);
  endpointCluster_updateEngagedState(a1);
  endpointCluster_updateSecondDisplayModeOnSubEndpointListChange(a1, a3, 0);
  if (*DerivedStorage != 3)
  {
    SubEndpointVolumeLeader = endpointCluster_getSubEndpointVolumeLeader(a1);
    if (SubEndpointVolumeLeader)
    {
      v8 = SubEndpointVolumeLeader;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10 && (v10(CMBaseObject, *MEMORY[0x277CC15A8], *MEMORY[0x277CBECE8], &cf), cf))
      {
        OUTLINED_FUNCTION_11_7();
        if (v14 ^ v15 | v13)
        {
          if (v12 != -1 || (v20 = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster), v11 = cf, v20))
          {
            v26 = v11;
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v16, v17, v18, v19, a1, v26, v8, a3);
            v11 = cf;
          }
        }

        endpointCluster_postVolumeDidChange(a1, 0, v11);
        OUTLINED_FUNCTION_11_7();
        if (v14 ^ v15 | v13 && (v21 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v22, v23, v24, v25, a1, v8, a3);
        }

        endpointCluster_postIsMutedDidChange(a1, 0);
      }

      else
      {
        APSLogErrorAt();
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

const void *endpointCluster_getSubEndpointVolumeLeader(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  Count = CFArrayGetCount(*(DerivedStorage + 336));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  if (v3 && *(DerivedStorage + 184) == 7)
  {
    return *(DerivedStorage + 8);
  }

  if (*DerivedStorage != 1 && (*DerivedStorage != 2 || *(DerivedStorage + 24) != 3))
  {
    goto LABEL_12;
  }

  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 336), v7);
    if (APSGetFBOPropertyInt64())
    {
      if (OUTLINED_FUNCTION_25_3(ValueAtIndex))
      {
        break;
      }
    }

    if (v5 == ++v7)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_15_2();
  if (v13 ^ v14 | v12 && (v18 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "FigEndpointRef endpointCluster_getSubEndpointVolumeLeader(FigEndpointRef)", v17, "[%{ptr}] [SubEndpointVolumeLeader] Using activated tightSyncGroupLeader [%{ptr}]");
  }

  if (!ValueAtIndex)
  {
LABEL_12:
    v8 = 0;
    v9 = *MEMORY[0x277CC19C0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 336), v8);
      if (endpointCluster_isSubEndpointOfType(a1, ValueAtIndex, v9))
      {
        if (OUTLINED_FUNCTION_25_3(ValueAtIndex))
        {
          break;
        }
      }

      if (v5 == ++v8)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_15_2();
    if (v13 ^ v14 | v12 && (v16 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "FigEndpointRef endpointCluster_getSubEndpointVolumeLeader(FigEndpointRef)", v15, "[%{ptr}] [SubEndpointVolumeLeader] Using activated HomePod [%{ptr}]");
    }

    if (!ValueAtIndex)
    {
LABEL_16:
      OUTLINED_FUNCTION_15_2();
      if (v13 ^ v14 | v12 && (v11 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
      {
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "FigEndpointRef endpointCluster_getSubEndpointVolumeLeader(FigEndpointRef)", v10, "[%{ptr}] [SubEndpointVolumeLeader] No volume leader found");
      }

      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t endpointCluster_isSubEndpointStaticLeader(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_24_3();
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  SubEndpointDeviceClass = endpointCluster_getSubEndpointDeviceClass(a1, a2);
  if (SubEndpointDeviceClass != 100)
  {
    return SubEndpointDeviceClass == 4;
  }

  if (!*(v6 + 8))
  {
    return 0;
  }

  return APSIsLocalClusterWithStaticLeadershipEnabled();
}

uint64_t endpointCluster_getClusterModelBasedOnAnyMemberModels(uint64_t a1, const __CFArray *theArray, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = 0;
  if (theArray)
  {
    CFArrayGetCount(theArray);
    CFArrayApplyBlock();
  }

  v3 = APSGetClusterModelNameForClusterTypeAndModel();
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);
  return v3;
}

uint64_t endpointCluster_addOrRemoveLocalSubEndpointForEchoCancellationIfNeeded(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v2 = DerivedStorage;
    OUTLINED_FUNCTION_24_3();
    if (v3)
    {
      if (*(v2 + 184) == 4 && *(v2 + 376) == 3)
      {
        if (!*(v2 + 320))
        {
          APSLogErrorAt();
          return 4294949690;
        }

        if ((*(v2 + 400) & 0xA) != 0 && *(v2 + 509))
        {
          v4 = *MEMORY[0x277CBECE8];
          Count = CFDictionaryGetCount(*(v2 + 448));
          MutableCopy = CFDictionaryCreateMutableCopy(v4, Count, *(v2 + 448));
          if (!MutableCopy)
          {
            APSLogErrorAt();
            return 4294950575;
          }

          v7 = MutableCopy;
          CFDictionarySetValue(MutableCopy, @"EnableEchoCancellation", *MEMORY[0x277CBED28]);
          v8 = *(v2 + 320);
          if (!v8 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
          {
            v8 = 0;
          }

          v9 = *(v2 + 8);
          v10 = *(*(CMBaseObjectGetVTable() + 32) + 8);
          if (v10)
          {
            v11 = v10(v8, v9, v7, 0, 0);
            if (!v11)
            {
LABEL_21:
              CFRelease(v7);
              return v11;
            }
          }

          else
          {
            v11 = 4294954514;
          }

          APSLogErrorAt();
          goto LABEL_21;
        }

        FigEndpointAggregateGetClassID();
        CMBaseObjectIsMemberOfClass();
        if (*(*(CMBaseObjectGetVTable() + 32) + 16))
        {
          OUTLINED_FUNCTION_20_3();
          v12();
        }
      }
    }
  }

  return 0;
}

BOOL endpointCluster_usesPersistentConnection(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v2 = *(DerivedStorage + 184);
    if (v2 == 4 || v2 == 100)
    {
      return 1;
    }

    if (v2 == 7)
    {
      return *DerivedStorage == 1;
    }
  }

  return 0;
}

void endpointCluster_handleRemoteConfigChangedNotification(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_24_3();
  if (v3 && *(v2 + 8))
  {

    APSIsLowLatencyAudioSendingEnabled();
  }
}

void endpointCluster_updateIdleState(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v25 = 0;
  OUTLINED_FUNCTION_19_4();
  if (v3)
  {
    v4 = v2;
    isIdle = endpointCluster_isIdle(a1);
    if (*(v4 + 440) != isIdle)
    {
      v6 = isIdle;
      OUTLINED_FUNCTION_11_7();
      if (v8 ^ v9 | v3 && (v7 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
      {
        v10 = "yes";
        if (!v6)
        {
          v10 = "no";
        }

        v23 = v10;
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v11, v12, v13, v14, a1, v23);
      }

      *(v4 + 440) = v6;
      v24 = CFRetain(a1);
      LOBYTE(v25) = v6;
      APSDispatchAsyncFHelper();
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_19_4();
      if (v3)
      {
        v16 = v15;
        v17 = *(v15 + 412);
        if (v17)
        {
          if (endpointCluster_isIdle(a1))
          {
            OUTLINED_FUNCTION_11_7();
            if (v8 ^ v9 | v3 && (v18 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
            {
              OUTLINED_FUNCTION_2_0();
              LogPrintF(v19, v20, v21, v22, a1, v17, v24, v25);
            }

            *(v16 + 412) = 0;
            endpointCluster_handleClusterFatalError(a1, v17, 1);
          }
        }
      }
    }
  }
}

void endpointCluster_updateEngagedState(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_19_4();
  if (v3)
  {
    v4 = v2;
    isEngaged = endpointCluster_isEngaged(a1);
    if (*(v4 + 441) != isEngaged)
    {
      v6 = isEngaged;
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
      {
        v7 = "yes";
        if (!v6)
        {
          v7 = "no";
        }

        v12 = v7;
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v8, v9, v10, v11, a1, v12);
      }

      *(v4 + 441) = v6;
      if (v6)
      {
        endpointCluster_activateSubEndpointsIfNeeded(a1);
      }

      endpointCluster_updateHealthState(a1);
    }
  }
}

void endpointCluster_updateStatus(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == -72277)
  {
    v9 = -17601;
  }

  else
  {
    v9 = a2;
  }

  if (a2 == -72101)
  {
    v10 = -15582;
  }

  else
  {
    v10 = v9;
  }

  if (a2 == -72100)
  {
    v11 = 4294951715;
  }

  else
  {
    v11 = v10;
  }

  if (a2)
  {
    v12 = DerivedStorage;
    if (!*(DerivedStorage + 442))
    {
      *(DerivedStorage + 392) = a2;
      v13 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v15 = Mutable;
        CFDictionarySetInt64();
        v16 = CFGetAllocator(a1);
        v17 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v17)
        {
          APSLogErrorAt();
          goto LABEL_49;
        }

        v18 = v17;
        CFDictionarySetInt64();
        OUTLINED_FUNCTION_21_5();
        CFDictionarySetInt64();
        if (a3)
        {
          if (v11 >> 1 != 2147475857)
          {
            v21 = MEMORY[0x277CC0CA0];
LABEL_23:
            v20 = gLogCategory_APEndpointCluster;
            goto LABEL_24;
          }

          v20 = gLogCategory_APEndpointCluster;
          if (gLogCategory_APEndpointCluster > 30)
          {
            v21 = MEMORY[0x277CC0CA8];
LABEL_24:
            v22 = *v21;
            *(v12 + 508) = 1;
            if (v20 <= 50)
            {
              if (v20 != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
              {
                v44 = *(v12 + 400);
                v23 = 116;
                if (!*(v12 + 488))
                {
                  v23 = 102;
                }

                v42 = v23;
                v43 = *(v12 + 376);
                OUTLINED_FUNCTION_18_4();
                LogPrintF(v25, v26, (v24 + 20), v27, a1, a2, v11, a3, v42, v43, v44, &unk_222298620);
              }
            }

            if (!a4 || !*(v12 + 8) || *(v12 + 488))
            {
LABEL_33:
              CFDictionarySetValue(v15, *MEMORY[0x277CC0CC8], v22);
              v28 = OUTLINED_FUNCTION_21_5();
              CFDictionarySetValue(v28, v29, v30);
              v31 = CMBaseObjectGetDerivedStorage();
              v33 = v31[67];
              if (!v33)
              {
                goto LABEL_44;
              }

              v34 = v31;
              v35 = v31[57];
              if (v31[74])
              {
                v36 = FigCFWeakReferenceHolderCopyReferencedObject();
                if (!v36)
                {
                  if (gLogCategory_APEndpointCluster >= 61)
                  {
LABEL_48:
                    CMNotificationCenterGetDefaultLocalCenter();
                    FigDispatchAsyncPostNotification();
                    CFRelease(v18);
LABEL_49:
                    CFRelease(v15);
                    return;
                  }

                  if (gLogCategory_APEndpointCluster != -1 || (OUTLINED_FUNCTION_18_4(), _LogCategory_Initialize()))
                  {
                    OUTLINED_FUNCTION_18_4();
                    LogPrintF(v38, v39, (v37 + 30), v40, a1);
                  }

LABEL_44:
                  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
                  {
                    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "void endpointCluster_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState, Boolean)", v32, "[%{ptr}] Posting %@\n");
                  }

                  goto LABEL_48;
                }
              }

              else
              {
                v36 = 0;
              }

              CFRetain(a1);
              CFRetain(v18);
              if (v36)
              {
                CFRetain(v36);
              }

              v41 = v34[5];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 0x40000000;
              block[2] = __endpointCluster_callDelegateHandleFailed_block_invoke;
              block[3] = &__block_descriptor_tmp_174;
              block[4] = a1;
              block[5] = v18;
              block[6] = v33;
              block[7] = v35;
              block[8] = v36;
              dispatch_async(v41, block);
              if (v36)
              {
                CFRelease(v36);
              }

              goto LABEL_44;
            }

            if (*v12 == 1)
            {
              if (!*(v12 + 400))
              {
                goto LABEL_33;
              }
            }

            else if (*v12 != 2 || (*(v12 + 400) & 0x20) == 0)
            {
              goto LABEL_33;
            }

            endpointCluster_postNeedDeactivationForClusterChange(a1, 1);
            goto LABEL_33;
          }

          if (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster))
          {
            OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "void endpointCluster_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState, Boolean)", v19, "[%{ptr}] Handling NAN InfraRelay failure as a startup failure.\n");
          }
        }

        v21 = MEMORY[0x277CC0CA8];
        goto LABEL_23;
      }

      APSLogErrorAt();
    }
  }
}

void __endpointCluster_handleClusterFatalError_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  endpointCluster_updateStatus(*(a1 + 40), *(a1 + 48), *(a1 + 52), 1);
  FigSimpleMutexUnlock();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void endpointCluster_sendActivationMetrics(uint64_t a1, int a2)
{
  v42 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v41, 0, sizeof(v41));
  v39 = 0;
  v40 = 0;
  v37 = 0;
  cf = 0;
  if (!*(DerivedStorage + 512))
  {
    goto LABEL_63;
  }

  v3 = DerivedStorage;
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
LABEL_63:
    v15 = 0;
    goto LABEL_50;
  }

  v5 = Mutable;
  GetDeviceModelString();
  CFDictionarySetCString();
  SNPrintF(v41, 64, "Cluster.%{ptr}", *(v3 + 16));
  CFDictionarySetCString();
  v34 = *MEMORY[0x277CBED10];
  v35 = *MEMORY[0x277CBED28];
  if (*(v3 + 8))
  {
    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    v6 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v5, @"isLocalCluster", v6);
  FigCFDictionarySetInt();
  FigCFDictionarySetInt();
  if (!*(v3 + 392))
  {
    v7 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v7 + 336));
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 0;
      v11 = 0;
      do
      {
        CFArrayGetValueAtIndex(*(v7 + 336), v10);
        if (APSGetFBOPropertyInt64())
        {
          ++v11;
        }

        ++v10;
      }

      while (v9 != v10);
    }
  }

  FigCFDictionarySetInt();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  CFDictionarySetInt64();
  APSEventRecorderGetTimeSinceEventInMilliSecondRecursive();
  CFDictionarySetInt64();
  CFAbsoluteTimeGetCurrent();
  CFDictionarySetInt64();
  FigCFDictionarySetInt();
  if (*(v3 + 641))
  {
    v12 = v35;
  }

  else
  {
    v12 = v34;
  }

  CFDictionarySetValue(v5, @"hadAuthorizationRequest", v12);
  CFDictionarySetInt64();
  v13 = CFArrayGetCount(*(v3 + 336));
  if (!v13)
  {
    v15 = 0;
    goto LABEL_46;
  }

  v14 = v13;
  v15 = CFArrayCreateMutable(allocator, v13, MEMORY[0x277CBF128]);
  if (v15)
  {
    if (v14 >= 1)
    {
      v16 = 0;
      v32 = *MEMORY[0x277CC14F0];
      v17 = @"timeSinceSubEndpointActivatedSecs";
      do
      {
        CFArrayGetValueAtIndex(*(v3 + 336), v16);
        v18 = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v18)
        {
          goto LABEL_61;
        }

        v19 = v18;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v21 || (v22 = v17, v21(CMBaseObject, v32, allocator, &cf)) || (v23 = APSGetFBOPropertyInt64(), v24 = FigEndpointGetCMBaseObject(), (v25 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v25(v24, @"EndpointStatus", allocator, &v37))
        {
          APSLogErrorAt();
          CFRelease(v5);
          v31 = v19;
          goto LABEL_49;
        }

        if (a2 == 250)
        {
          v26 = FigEndpointGetCMBaseObject();
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v27)
          {
            v27(v26, @"ActualTransportType", allocator, &v39);
          }
        }

        v28 = FigEndpointGetCMBaseObject();
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v29)
        {
          v29(v28, @"EndpointMetrics", allocator, &v40);
        }

        if (v23)
        {
          v30 = v35;
        }

        else
        {
          v30 = v34;
        }

        CFDictionarySetValue(v19, @"isLocalSubEndpoint", v30);
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        v17 = v22;
        FigCFDictionarySetInt64();
        FigCFDictionarySetValue();
        if (v40)
        {
          CFDictionaryGetInt64();
          FigCFDictionarySetInt64();
        }

        CFArrayAppendValue(v15, v19);
        CFRelease(v19);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v37)
        {
          CFRelease(v37);
          v37 = 0;
        }

        if (v39)
        {
          CFRelease(v39);
          v39 = 0;
        }

        if (v40)
        {
          CFRelease(v40);
          v40 = 0;
        }
      }

      while (v14 != ++v16);
    }

    CFDictionarySetValue(v5, @"subEndpointInfo", v15);
    FigCFDictionarySetValue();
LABEL_46:
    APSRTCReportingAgentSendEvent();
    goto LABEL_47;
  }

LABEL_61:
  APSLogErrorAt();
LABEL_47:
  v31 = v5;
LABEL_49:
  CFRelease(v31);
LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v39)
  {
    CFRelease(v39);
  }
}

uint64_t endpointCluster_setSecondDisplayMode(const void *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_24_3();
  if (v4)
  {
    v5 = v3;
    OUTLINED_FUNCTION_19_4();
    if (v4)
    {
      result = FigCFEqual();
      if (!result)
      {
        return result;
      }

      Int64 = CFDictionaryGetInt64();
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
      {
        v13 = *(v5 + 496);
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v8, v9, v10, v11, a1, Int64, v13);
      }

      if (Int64 >= 2)
      {
        APSLogErrorAt();
        return 4294950576;
      }

      if (Int64 != *(v5 + 496))
      {
        *(v5 + 496) = Int64;
        *(v5 + 504) = CFDictionaryGetInt64();
        CFRetain(a1);
        OUTLINED_FUNCTION_2_22();
        v15 = 0x40000000;
        v16 = __endpointCluster_setSecondDisplayMode_block_invoke;
        v17 = &__block_descriptor_tmp_278;
        v18 = a1;
        dispatch_async(v12, block);
        if (*(v5 + 496) != 1 || *(v5 + 491))
        {
          endpointCluster_setSecondDisplayModeOnSubEndpoints(a1, Int64);
        }
      }
    }
  }

  return 0;
}

uint64_t endpointCluster_setSecondDisplayModeOnSubEndpoints(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (gLogCategory_APEndpointCluster <= 50)
  {
    if (gLogCategory_APEndpointCluster != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster), result))
    {
      OUTLINED_FUNCTION_2_0();
      result = LogPrintF(v6, v7, v8, v9, a1, a2);
    }
  }

  v10 = *(v5 + 336);
  if (v10)
  {
    result = CFArrayGetCount(v10);
    if (result >= 1)
    {
      v11 = result;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        result = endpointCluster_setSecondDisplayModeOnSubEndpoint(ValueAtIndex, a2);
      }
    }
  }

  return result;
}

double endpointCluster_failureDelayTimerFired(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_10_9();
  if (v6 ^ v7 | v5 && (v4 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
  {
    v21 = a1[1];
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v8, v9, v10, v11, v2, v21);
  }

  FigSimpleMutexLock();
  v12 = *(DerivedStorage + 72);
  if (v12)
  {
    dispatch_source_cancel(*(DerivedStorage + 72));
    dispatch_release(v12);
    *(DerivedStorage + 72) = 0;
  }

  if (*(DerivedStorage + 376))
  {
    if (*(DerivedStorage + 456) == a1[1])
    {
      v13 = *(DerivedStorage + 432);
      if (v13)
      {
        if (CFSetGetCount(v13) >= 1)
        {
          *(DerivedStorage + 424) = 1;
          OUTLINED_FUNCTION_2_22();
          CFSetApplyBlock();
          OUTLINED_FUNCTION_10_9();
          if (v6 ^ v7 | v5 && (v14 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v15, v16, v17, v18, v2);
          }

          v19 = *(DerivedStorage + 432);
          if (v19)
          {
            CFRelease(v19);
            *(DerivedStorage + 432) = 0;
          }
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

uint64_t endpointCluster_wantSubEndpointActivation()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = APSGetFBOPropertyInt64();
  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    v6 = *DerivedStorage != 2;
  }

  else
  {
    v6 = 0;
  }

  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_wantSubEndpointActivation(FigEndpointRef, FigEndpointRef)", v3, "[%{ptr}] Want subEndpoint activation [%{ptr}]: isLocalSubEndpoint = %s, isLocalCluster = %s\n");
  }

  if (v4)
  {
    OUTLINED_FUNCTION_23_5();
    if (v10 ^ v11 | v9 && (v8 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_wantSubEndpointActivation(FigEndpointRef, FigEndpointRef)", v7, "[%{ptr}] Want subEndpoint activation [%{ptr}]: %s - local endpoint activated only in local non-HT cluster\n");
    }

    return v6;
  }

  if (endpointCluster_isSubEndpointOfType(v1, v0, *MEMORY[0x277CC19A0]))
  {
    OUTLINED_FUNCTION_23_5();
    if (v10 ^ v11 | v9 && (v13 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_wantSubEndpointActivation(FigEndpointRef, FigEndpointRef)", v12, "[%{ptr}] Want subEndpoint activation [%{ptr}]: %s - ATV activated only in remote cluster\n");
    }

    return !v5;
  }

  if (!v5 || *DerivedStorage != 2)
  {
    OUTLINED_FUNCTION_23_5();
    if (v10 ^ v11 | v9 && (v17 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_wantSubEndpointActivation(FigEndpointRef, FigEndpointRef)", v16, "[%{ptr}] Want subEndpoint activation [%{ptr}]: yes - engaging on activation\n");
    }

    return 1;
  }

  OUTLINED_FUNCTION_23_5();
  if (v10 ^ v11 | v9 && (v14 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
  {
    APSIsLocalClusterWithStaticLeadershipEnabled();
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_wantSubEndpointActivation(FigEndpointRef, FigEndpointRef)", v15, "[%{ptr}] Want subEndpoint activation [%{ptr}]: %s - local HT subEndpoints activated only from static cluster leader\n");
  }

  result = APSIsLocalClusterWithStaticLeadershipEnabled();
  if (result)
  {
    return *(DerivedStorage + 8) != v0;
  }

  return result;
}

uint64_t endpointCluster_updateSecondDisplayModeOnSubEndpointListChange(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 491);
  result = endpointCluster_isSubEndpointOfType(a1, a2, *MEMORY[0x277CC19A0]);
  if (result)
  {
    if (a3)
    {
      result = APSGetFBOPropertyInt64();
      v9 = result != 0;
      *(DerivedStorage + 491) = v9;
    }

    else
    {
      v9 = 0;
      *(DerivedStorage + 491) = 0;
    }
  }

  else
  {
    v9 = *(DerivedStorage + 491);
  }

  if (v7 == v9)
  {
    if (a3)
    {
      if (v7)
      {
        if (*(DerivedStorage + 496) == 1)
        {
          result = endpointCluster_setSecondDisplayModeOnSubEndpoint(a2, 1);
          if (result)
          {

            return APSLogErrorAt();
          }
        }
      }
    }

    return result;
  }

  if (gLogCategory_APEndpointCluster <= 50)
  {
    if (gLogCategory_APEndpointCluster != -1)
    {
LABEL_14:
      v10 = v9 == 0;
      v11 = 116;
      if (v10)
      {
        v11 = 102;
      }

      v17 = v11;
      OUTLINED_FUNCTION_2_0();
      result = LogPrintF(v12, v13, v14, v15, a1, v17);
      goto LABEL_18;
    }

    result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster);
    if (result)
    {
      v9 = *(DerivedStorage + 491);
      goto LABEL_14;
    }
  }

LABEL_18:
  if (*(DerivedStorage + 496) == 1)
  {
    v16 = *(DerivedStorage + 491) != 0;

    return endpointCluster_setSecondDisplayModeOnSubEndpoints(a1, v16);
  }

  return result;
}

BOOL endpointCluster_isSubEndpointVolumeLeader(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  cf = 0;
  if (*DerivedStorage != 3)
  {
    v18 = endpointCluster_getSubEndpointVolumeLeader(a1) == a2;
    goto LABEL_15;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    if (v6 == a2)
    {
LABEL_14:
      v18 = 1;
      goto LABEL_15;
    }

    v7 = *MEMORY[0x277CC1550];
    v8 = *MEMORY[0x277CBECE8];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(CMBaseObject, v7, v8, &v31);
    }
  }

  else
  {
    v7 = *MEMORY[0x277CC1550];
    v8 = *MEMORY[0x277CBECE8];
  }

  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    goto LABEL_14;
  }

  v12(v11, v7, v8, &cf);
  if (!cf)
  {
    goto LABEL_14;
  }

  if (FigCFEqual())
  {
    OUTLINED_FUNCTION_15_2();
    if (v16 ^ v17 | v15 && (v14 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_isSubEndpointVolumeLeader(FigEndpointRef, FigEndpointRef)", v13, "[%{ptr}] [SubEndpointVolumeLeader] sub [%{ptr}] not leader b/c local is its buddy (tsuuid %@)");
    }

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  if (!OUTLINED_FUNCTION_25_3(a2))
  {
    v29 = v7;
    Count = CFArrayGetCount(*(v5 + 336));
    if (Count >= 1)
    {
      v23 = Count;
      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 336), v24);
        if (ValueAtIndex != a2 && OUTLINED_FUNCTION_25_3(ValueAtIndex) && APSGetFBOPropertyInt64())
        {
          v30 = 0;
          v26 = FigEndpointGetCMBaseObject();
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v27)
          {
            v27(v26, v29, v8, &v30);
          }

          v28 = FigCFEqual();
          if (v30)
          {
            CFRelease(v30);
          }

          if (v28)
          {
            break;
          }
        }

        if (v23 == ++v24)
        {
          goto LABEL_15;
        }
      }

      v18 = 0;
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_15_2();
  if (v16 ^ v17 | v15 && (v20 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_isSubEndpointVolumeLeader(FigEndpointRef, FigEndpointRef)", v19, "[%{ptr}] [SubEndpointVolumeLeader] sub [%{ptr}] returning %s\n");
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v18;
}

double endpointCluster_healthMonitoringTimerFired(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_11_7();
  if (v5 ^ v6 | v4 && (v3 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v7, v8, v9, v10, a1);
  }

  FigSimpleMutexLock();
  v11 = CMBaseObjectGetDerivedStorage();
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = *(v12 + 376) && !*(v12 + 392) && *(v12 + 441) != 0;
  v14 = "no";
  if (!*(v11 + 376) || *(v11 + 420) == 2 || *(v11 + 8) && APSIsLocalClusterWithStaticLeadershipEnabled() == 0 && !v13)
  {
    goto LABEL_45;
  }

  if (!endpointCluster_desiredSubEndpointsActivated(a1))
  {
    goto LABEL_18;
  }

  Count = *(v11 + 336);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count >= *(v11 + 24))
  {
LABEL_45:
    v16 = 1;
  }

  else
  {
LABEL_18:
    v16 = 0;
    v14 = "yes";
  }

  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    if (*(v11 + 8))
    {
      v17 = "local ";
    }

    else
    {
      v17 = "remote";
    }

    v18 = *(v11 + 296);
    v19 = *(v11 + 420);
    if (v19 > 2)
    {
      v20 = "UNKNOWN";
    }

    else
    {
      v20 = off_2784A0008[v19];
    }

    v24 = CFArrayGetCount(*(v11 + 336));
    v25 = "no";
    if (v13)
    {
      v25 = "yes";
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_isDiscoveryNeeded(FigEndpointRef)", 33554462, "[%{ptr}-%s] cluster %'@: DiscoveryNeeded? %s (healthState: %s, subEndpoints: [%ld/%ld], isActive? %s)\n", a1, v17, v18, v14, v20, v24, *(v11 + 24), v25);
    if (v16)
    {
      goto LABEL_28;
    }
  }

  else if (v16)
  {
LABEL_28:
    v21 = 0;
    v22 = "no";
    v23 = 136;
    goto LABEL_37;
  }

  if (*(DerivedStorage + 443) && *(DerivedStorage + 376) == 3)
  {
    v21 = 0;
    v22 = "no";
    v23 = 160;
  }

  else
  {
    v21 = 1;
    v22 = "yes";
    v23 = 152;
  }

LABEL_37:
  v26 = *(DerivedStorage + v23);
  endpointCluster_setNeedsDiscoveryAndNotifyIfNeeded(a1, v21);
  OUTLINED_FUNCTION_11_7();
  if (v5 ^ v6 | v4 && (v27 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
  {
    v35 = *(DerivedStorage + 376);
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v28, v29, v30, v31, a1, v26, v22, v35);
  }

  v32 = *(DerivedStorage + 64);
  v33 = dispatch_time(0, 1000000000 * v26);
  dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  FigSimpleMutexUnlock();
  return result;
}

uint64_t APEndpointClusterCreate_cold_4(uint64_t *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t endpointCluster_updateHealthState_cold_1(unsigned int *a1, int a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 > 2)
  {
    v4 = "UNKNOWN";
  }

  else
  {
    v4 = off_2784A0008[v3];
  }

  v11 = v4;
  v12 = off_2784A0008[a2];
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v5, v6, v7, v8, a3, v11, v12);
}

uint64_t endpointCluster_CopyProperty_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16720;
  return result;
}

uint64_t endpointCluster_copyClusterHierarchyAsArray_cold_1(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_copyClusterHierarchyAsArray(FigEndpointRef, CFArrayRef *)", a3, "[%{ptr}] <AirPlayClusterComp> Hierarchy results = %@.\n");
  }

  result = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster);
  if (result)
  {
    return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_copyClusterHierarchyAsArray(FigEndpointRef, CFArrayRef *)", a3, "[%{ptr}] <AirPlayClusterComp> Hierarchy results = %@.\n");
  }

  return result;
}

uint64_t __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*(a1 + 32) + 8) + 24) = -17606;
  return result;
}

uint64_t endpointCluster_Activate_cold_2()
{
  if (gLogCategory_APEndpointCluster > 50)
  {
    return 1;
  }

  OUTLINED_FUNCTION_3_7();
  if (v2 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v3, v4, v5, v6, v1);
  }

  result = 0;
  *v0 = -15580;
  return result;
}

uint64_t endpointCluster_Activate_cold_8(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = "";
  }

  else
  {
    v2 = "not ";
  }

  v9 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a2, v9);
}

uint64_t endpointCluster_Activate_cold_10(char a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  APSLogErrorAt();
  if (gLogCategory_APEndpointCluster <= 60 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus CompletionCallbackContextCreate(FigEndpointRef, Boolean, GestaltDeviceClass, APSClusterType, CFIndex, uint64_t, FigEndpointFeatures, FigEndpointActivationCompletionCallback, void *, CompletionCallbackContextRef *)", 33554492, "[%{ptr}] ### APEndpointClusterActivationContext setup failed: %#m\n", a4, a2);
  }

  if ((a1 & 1) == 0)
  {
    CFRelease(a3);
  }

  return APSLogErrorAt();
}

uint64_t endpointCluster_Deactivate_cold_1(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 508))
  {
    v2 = 116;
  }

  else
  {
    v2 = 102;
  }

  if (*(a1 + 488))
  {
    v3 = 116;
  }

  else
  {
    v3 = 102;
  }

  v10 = v3;
  v11 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, a2, v10, v11);
}

uint64_t endpointCluster_Deactivate_cold_3(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = "yes";
  if (a1[488])
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (a1[489])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (a1[490])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (!a1[508])
  {
    v4 = "no";
  }

  v18 = v7;
  v19 = v4;
  v16 = v5;
  v17 = v6;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11, a2, a3, &unk_222298620, a4, &unk_222298620, v16, v17, v18, v19);
}

uint64_t endpointCluster_Deactivate_cold_6(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (!*(result + 488) && !*(result + 508) && gLogCategory_APEndpointCluster <= 90)
  {
    if (gLogCategory_APEndpointCluster != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_Deactivate(FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", a3, "[%{ptr}] <AirPlayActivation> Trying to deactivate when already deactivated!");
    }
  }

  *a3 = -15580;
  return result;
}

uint64_t endpointCluster_Dissociate_cold_2(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[2];
  if (*a2)
  {
    v6 = "Local";
  }

  else
  {
    v6 = "Remote";
  }

  v7 = APSClusterTypeToDescriptionString();
  v14 = a1[36];
  v15 = a1[3];
  v13 = v7;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11, a3, v5, v6, v13, v14, v15);
}

uint64_t endpointCluster_updateFeaturesInternal_cold_4(char a1, uint64_t a2, const void *a3, uint64_t a4)
{
  APSLogErrorAt();
  if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpointCluster, "OSStatus UpdateFeaturesRequestCreate(APExternalClientOperationType, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *, UpdateFeaturesRequestRef *)", v6, "[%{ptr}] UpdateFeaturesRequest ### creation failed: %#m\n");
  }

  if ((a1 & 1) == 0)
  {
    CFRelease(a3);
  }

  return APSLogErrorAt();
}

uint64_t __endpointCluster_callDelegateHandleFailed_block_invoke_cold_1(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6, v7);
}

uint64_t endpointCluster_activationTimerCancelled_cold_1(uint64_t a1)
{
  v6 = *(a1 + 16);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t completionCallbackContext_updateStateFromResponses_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v8 = *(*a2 + 24);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, v7, v8);
}

uint64_t endpointCluster_updateClusterChangeProgress_cold_1(_BYTE *a1, char a2, char a3, uint64_t a4)
{
  v4 = "yes";
  if (a1[488])
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (a1[489])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (a2)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (a1[490])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (!a3)
  {
    v4 = "no";
  }

  v18 = v8;
  v19 = v4;
  v16 = v6;
  v17 = v7;
  v15 = v5;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v9, v10, v11, v12, a4, v15, v16, v17, v18, v19);
}

void endpointCluster_resetActivationState_cold_2(CFArrayRef *a1, uint64_t *a2, const void *a3, uint64_t a4)
{
  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, v8);
    v10 = *a2;
    if (!*a2 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v10 = 0;
    }

    endpointCluster_deactivateSubEndpoint(a3, v10, ValueAtIndex);
    ++v8;
  }

  while (a4 != v8);
}

uint64_t __endpointCluster_cancelPendingUpdateFeatureRequests_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *(a2 + 24);
  v9 = *(a1 + 48);
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, v7, v8, v9);
}

uint64_t endpointCluster_SendCommand_cold_3(void *a1)
{
  APSLogErrorAt();
  FigSimpleMutexUnlock();

  return APSLogErrorAt();
}

uint64_t endpointCluster_failureDelayTimerCancelled_cold_1(uint64_t *a1)
{
  v6 = *a1;
  v7 = a1[1];
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6, v7);
}

uint64_t endpointCluster_activateSubEndpointCallback_cold_1(uint64_t result, uint64_t a2)
{
  if (gLogCategory_APEndpointCluster <= 50)
  {
    v3 = result;
    if (gLogCategory_APEndpointCluster != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster), result))
    {
      OUTLINED_FUNCTION_2_0();
      return LogPrintF(v4, v5, v6, v7, v3, a2);
    }
  }

  return result;
}

uint64_t endpointCluster_activateSubEndpointCallback_cold_6(uint64_t result, uint64_t a2)
{
  if (gLogCategory_APEndpointCluster <= 50)
  {
    v3 = result;
    if (gLogCategory_APEndpointCluster != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster), result))
    {
      OUTLINED_FUNCTION_2_0();
      return LogPrintF(v4, v5, v6, v7, v3, a2);
    }
  }

  return result;
}

uint64_t endpointCluster_deferredHandleClusterHealthStateChanged_cold_1(uint64_t *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t endpointCluster_deferredHandleClusterHealthStateChanged_cold_2(uint64_t *a1)
{
  if (*(a1 + 12))
  {
    v1 = "immediately";
  }

  else
  {
    v1 = "soon";
  }

  v7 = *a1;
  v8 = v1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, v7, v8);
}

CFIndex endpointCluster_desiredSubEndpointsActivated_cold_1(CFArrayRef *a1, uint64_t a2, char *a3)
{
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, v6);
    if (endpointCluster_wantSubEndpointActivation())
    {
      result = APSGetFBOPropertyInt64();
      if (!result)
      {
        break;
      }
    }

    ++v6;
    result = CFArrayGetCount(*a1);
    if (v6 >= result)
    {
      v9 = 1;
      goto LABEL_6;
    }
  }

  if (gLogCategory_APEndpointCluster <= 40)
  {
    if (gLogCategory_APEndpointCluster != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_desiredSubEndpointsActivated(FigEndpointRef)", 33554472, "[%{ptr}] desired subEndpoint [%{ptr}] not yet activated\n", a2, ValueAtIndex);
    }
  }

  v9 = 0;
LABEL_6:
  *a3 = v9;
  return result;
}

void interruptingStreamWrapper_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamInterruptingWrapper, "void interruptingStreamWrapper_Finalize(CMBaseObjectRef)", v1, "%{ptr} Finalize");
  }

  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    FigNotificationCenterRemoveWeakListener();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 32) = 0;
  }
}

uint64_t audioHoseManagerBuffered_releaseCryptors(CMTime *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_21_6(MEMORY[0x277CC0898]);
  if (v7 || (v8 = v6, Count = CFDictionaryGetCount(*(v6 + 448)), Count < 1))
  {
    v26 = 0;
    v10 = 0;
LABEL_23:
    v11 = 0;
    goto LABEL_18;
  }

  v10 = OUTLINED_FUNCTION_14_9(Count);
  if (!v10)
  {
    v26 = 4294894846;
    APSLogErrorAt();
    goto LABEL_23;
  }

  v11 = malloc_type_calloc(v3, 8uLL, v2);
  if (v11)
  {
    CFDictionaryGetKeysAndValues(*(v8 + 448), v10, v11);
    v12 = 0;
    while (1)
    {
      v13 = CMTimeMakeFromDictionary(&v39, v11[v12]);
      if ((*(a2 + 12) & 1) == 0 || OUTLINED_FUNCTION_12_8(v13, v14, v15, v16, v17, v18, v19, v20, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *&v39.value, v39.epoch) >= 1)
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioHoseManagerBuffered)))
        {
          DerivedStorage = "";
          if (a1)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
          }

          v32 = DerivedStorage;
          *&v30 = v10[v12];
          *(&v30 + 1) = audioHoseManagerBuffered_getCryptorIDForCryptor(v30);
          v28 = a1;
          v29 = v32;
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v23, v24, v25, "HMB [%{ptr}] %sReleasing cryptor [%{ptr}] with cryptorID: 0x%llx\n");
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v21 = FigNotificationCenterRemoveWeakListener();
        if (v21)
        {
          v26 = v21;
          goto LABEL_20;
        }

        CFDictionaryRemoveValue(*(v8 + 448), v10[v12]);
      }

      if (v3 == ++v12)
      {
        v26 = 0;
        goto LABEL_18;
      }
    }
  }

  v26 = 4294894846;
LABEL_20:
  APSLogErrorAt();
LABEL_18:
  free(v10);
  free(v11);
  return v26;
}

uint64_t audioHoseManagerBuffered_releaseMagicCookies(CMTime *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_21_6(MEMORY[0x277CC0898]);
  if (v7 || (v8 = v6, Count = CFDictionaryGetCount(*(v6 + 456)), Count < 1))
  {
    v26 = 0;
    v10 = 0;
    v12 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_14_9(Count);
    if (v10 && (v11 = malloc_type_calloc(v3, 8uLL, v2)) != 0)
    {
      v12 = v11;
      CFDictionaryGetKeysAndValues(*(v8 + 456), v10, v11);
      v13 = 0;
      DerivedStorage = "";
      do
      {
        v15 = CMTimeMakeFromDictionary(&v39, v12[v13]);
        if ((*(a2 + 12) & 1) == 0 || OUTLINED_FUNCTION_12_8(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *&v39.value, v39.epoch) >= 1)
        {
          if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioHoseManagerBuffered)))
          {
            if (a1)
            {
              DerivedStorage = CMBaseObjectGetDerivedStorage();
            }

            v32 = a1;
            *&v30 = v10[v13];
            *(&v30 + 1) = audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(v30);
            v28 = a1;
            v29 = DerivedStorage;
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v23, v24, v25, "HMB [%{ptr}] %sReleasing magic cookie [%{ptr}] with magicCookieID: 0x%llx\n");
            DerivedStorage = "";
          }

          CFDictionaryRemoveValue(*(v8 + 456), v10[v13]);
        }

        ++v13;
      }

      while (v3 != v13);
      v26 = 0;
    }

    else
    {
      APSLogErrorAt();
      v12 = 0;
      v26 = 4294894846;
    }
  }

  free(v10);
  free(v12);
  return v26;
}

uint64_t audioHoseManagerBuffered_getCryptorIDForCryptor(uint64_t a1)
{
  v1 = a1;
  cf = 0;
  if (qword_280FB1B90 == -1)
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
    dispatch_once(&qword_280FB1B90, &__block_literal_global_88);
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

void audioHoseManagerBuffered_handleCryptorKeyUpdatedInternal(uint64_t a1)
{
  if (OUTLINED_FUNCTION_44(a1))
  {
    if (!*(CMBaseObjectGetDerivedStorage() + 36) && audioHoseManagerBuffered_setCryptorForAllHoses(*v1, v1[1]))
    {
      APSLogErrorAt();
    }

    if (*v1)
    {
      CFRelease(*v1);
    }
  }

  v2 = v1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(v1);
}

void *__audioHoseManagerBuffered_setCryptorForAllHoses_block_invoke(void *result, uint64_t a2, uint64_t *a3)
{
  if (!*(*(result[4] + 8) + 24))
  {
    v3 = audioHoseManagerBuffered_SetCryptorForSingleHose(result[6], *a3, result[7], *(*(result[5] + 8) + 24));
    result = OUTLINED_FUNCTION_1_38(v3);
    if (result)
    {
      return OUTLINED_FUNCTION_1(result, "audioHoseManagerBuffered_setCryptorForAllHoses_block_invoke", 545);
    }
  }

  return result;
}

uint64_t audioHoseManagerBuffered_SetCryptorForSingleHose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_20_2();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioHoseManagerBuffered)))
  {
    if (v4)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      DerivedStorage = "";
    }

    v19 = DerivedStorage;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v9, v10, v11, v12, v4, v19, a3, v5, a4);
  }

  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v14 = *(ProtocolVTable + 16)) != 0)
  {
    v15 = *(v14 + 96);
    if (v15)
    {
      v16 = v15(v5, a4, a3, audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandler, v4);
      if (!v16)
      {
        return v16;
      }
    }

    else
    {
      v16 = 4294954514;
      audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandler(v5, a4, -12782, v4);
    }
  }

  else
  {
    v16 = 4294954508;
  }

  APSLogErrorAt();
  if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (v4)
    {
      v17 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v17 = "";
    }

    LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_SetCryptorForSingleHose(APAudioHoseManagerBufferedRef, APSEndpointStreamAudioHoseRef, FigCPECryptorRef, uint64_t)", 33554522, "HMB [%{ptr}] %sAPSEndpointStreamAudioHoseSetCryptor failed for hose [%{ptr}] with err= %d \n ", v4, v17, v5, v16);
  }

  return v16;
}

uint64_t audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(CFDataRef theData)
{
  if (qword_280FB1B98 != -1)
  {
    dispatch_once(&qword_280FB1B98, &__block_literal_global_102);
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

__n128 audioHoseManagerBuffered_getBufferLevelTimeEstimateForHoseStartup()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v31 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *v3 = *MEMORY[0x277CC08F0];
  *(v3 + 16) = *(v5 + 16);
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioHoseManagerBuffered)))
  {
    if (v0)
    {
      v7 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v7 = "";
    }

    v21 = v0;
    v22 = v7;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v8, v9, v10, v11);
  }

  if (*(DerivedStorage + 188) && v1->n128_u8[9])
  {
    v29 = *(DerivedStorage + 264);
    v30 = *(DerivedStorage + 272);
    v12 = *(DerivedStorage + 276);
    if (v12)
    {
      v13 = *(DerivedStorage + 280);
      result.n128_u64[0] = audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose(v0, v1, &time1).n128_u64[0];
      value = time1.value;
      flags = time1.flags;
      timescale = time1.timescale;
      if (time1.flags)
      {
        epoch = time1.epoch;
        time2.epoch = time1.epoch;
        time1.value = v29;
        time1.timescale = v30;
        time1.flags = v12;
        time1.epoch = v13;
        time2.value = value;
        time2.timescale = timescale;
        time2.flags = flags;
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          time2.epoch = v13;
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = flags;
          time1.epoch = epoch;
          time2.value = v29;
          time2.timescale = v30;
          time2.flags = v12;
          CMTimeSubtract(v3, &time1, &time2);
          if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioHoseManagerBuffered)))
          {
            if (v0)
            {
              v16 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v16 = "";
            }

            v24 = OUTLINED_FUNCTION_25_4(*(v3 + 16), v21, v22, v23, time2.value, *&time2.timescale, time2.epoch, *v3, *(v3 + 8), time1.epoch);
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v17, v18, v19, v20, v0, v16, *&v24);
          }
        }
      }
    }
  }

  else
  {
    result = v1[4];
    *v3 = result;
    *(v3 + 16) = v1[5].n128_u64[0];
  }

  return result;
}

void __audioHoseManagerBuffered_setAllCryptorsForSingleHose_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_7();
    CryptorIDForCryptor = audioHoseManagerBuffered_getCryptorIDForCryptor(v4);
    v6 = v3[5];
    *(*(v3[4] + 8) + 24) = CryptorIDForCryptor;
    v7 = audioHoseManagerBuffered_SetCryptorForSingleHose(v6, v3[6], v2, *(*(v3[4] + 8) + 24));
    if (v7)
    {
      OUTLINED_FUNCTION_1(v7, "audioHoseManagerBuffered_setAllCryptorsForSingleHose_block_invoke", 605);
    }
  }
}

uint64_t __audioHoseManagerBuffered_setAllMagicCookiesForSingleHose_block_invoke(uint64_t result, CFDataRef theData)
{
  if (theData)
  {
    v2 = result;
    if (*(result + 32))
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APAudioHoseManagerBuffered)))
      {
        v4 = *(v2 + 40);
        if (v4)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          DerivedStorage = "";
        }

        v6 = *(v2 + 32);
        MagicCookieIDForMagicCookieData = audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(theData);
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v7, v8, v9, v10, v4, DerivedStorage, theData, v6, MagicCookieIDForMagicCookieData);
      }

      v11 = *(v2 + 40);
      if (v11)
      {
        CFRetain(v11);
      }

      v12 = *(v2 + 32);
      v13 = audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(theData);
      v14 = *(v2 + 40);
      APSEndpointStreamAudioHoseProtocolGetProtocolID();
      result = CMBaseObjectGetProtocolVTable();
      if (result && (v16 = *(result + 16), result += 16, (v15 = v16) != 0))
      {
        v17 = *(v15 + 104);
        if (v17)
        {
          result = v17(v12, v13, theData, audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler, v14);
          v18 = result;
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v18 = 4294954514;
          result = audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler(v12, v13, -12782, v14);
        }
      }

      else
      {
        v18 = 4294954508;
      }

      if (gLogCategory_APAudioHoseManagerBuffered <= 90)
      {
        if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          v19 = *(v2 + 40);
          if (v19)
          {
            v20 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v20 = "";
          }

          return LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_setAllMagicCookiesForSingleHose(APAudioHoseManagerBufferedRef, APSEndpointStreamAudioHoseRef)_block_invoke", 33554522, "HMB [%{ptr}] %sAPSEndpointStreamAudioHoseSetMagicCookie failed for hose [%{ptr}] with err= %d \n ", v19, v20, *(v2 + 32), v18);
        }
      }
    }
  }

  return result;
}

uint64_t audioHoseManagerBuffered_SetMagicCookie()
{
  OUTLINED_FUNCTION_3_7();
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    if (*(DerivedStorage + 186))
    {
      CFDictionaryApplyBlock();
    }
  }

  else
  {
    APSLogErrorAt();
    *(v5 + 6) = -72451;
  }

  v2 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void audioHoseManagerBuffered_hoseFlushCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (!*(CMBaseObjectGetDerivedStorage() + 36))
  {
    HoseDecriptorFromHose = audioHoseManagerBuffered_getHoseDecriptorFromHose(*v1, *(v1 + 8));
    if (HoseDecriptorFromHose)
    {
      OUTLINED_FUNCTION_32_2(HoseDecriptorFromHose);
      if (*(v1 + 48))
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered)))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_28_1();
LABEL_15:
          OUTLINED_FUNCTION_2_1();
          LogPrintF(v3, v4, v5, v6);
        }
      }

      else
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_19_5();
          LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_hoseFlushCallbackCompletionHandlerInternal(void *)", v7, "HMB [%{ptr}] %sFlush SUCCESS for hose [%{ptr}] flushPendingCount = %d\n");
        }

        OUTLINED_FUNCTION_30_1(MEMORY[0x277CEA038]);
      }
    }

    else if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered)))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_17_5();
      goto LABEL_15;
    }
  }

  **(v1 + 56) = 0;
}

uint64_t audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 36))
  {
    result = audioHoseManagerBuffered_getHoseDecriptorFromHose(*v1, *(v1 + 8));
    if (result)
    {
      result = OUTLINED_FUNCTION_32_2(result);
      if (*(v1 + 80))
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 90)
        {
          if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered), result))
          {
            v3 = *v1;
            if (*v1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_28_1();
            v8 = v3;
LABEL_15:
            OUTLINED_FUNCTION_2_1();
LABEL_19:
            result = LogPrintF(v4, v5, v6, v7, v8);
          }
        }
      }

      else if (gLogCategory_APAudioHoseManagerBuffered <= 50)
      {
        if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          if (*v1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_19_5();
          v4 = &gLogCategory_APAudioHoseManagerBuffered;
          v5 = "void audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal(void *)";
          v7 = "HMB [%{ptr}] %sFlushWithinSampleRange SUCCESS for hose [%{ptr}] flushPendingCount = %d\n";
          goto LABEL_19;
        }
      }
    }

    else if (gLogCategory_APAudioHoseManagerBuffered <= 90)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered), result))
      {
        if (*v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_17_5();
        goto LABEL_15;
      }
    }
  }

  **(v1 + 88) = 0;
  return result;
}

void audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_44(a1);
  if (!*(CMBaseObjectGetDerivedStorage() + 36))
  {
    HoseDecriptorFromHose = audioHoseManagerBuffered_getHoseDecriptorFromHose(*v1, *(v1 + 8));
    if (HoseDecriptorFromHose)
    {
      v3 = HoseDecriptorFromHose;
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        v4 = *v1;
        if (*v1)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          DerivedStorage = "";
        }

        LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal(void *)", 33554482, "HMB [%{ptr}] %saudioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal", v4, DerivedStorage);
      }

      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_30_1(MEMORY[0x277CEA038]);
        if (*(v1 + 128))
        {
          v6 = *(v3 + 140) + 1;
          *(v3 + 140) = v6;
          if (gLogCategory_APAudioHoseManagerBuffered <= 90)
          {
            if (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered))
            {
              v7 = *v1;
              if (*v1)
              {
                v8 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v8 = "";
              }

              v16 = *(v3 + 92);
              if (v16 >= 3)
              {
                if (v16 == 3)
                {
                  v17 = "HoseReadyToStart";
                }

                else
                {
                  v17 = "UnknownState";
                }
              }

              else
              {
                v17 = off_2784A0580[v16];
              }

              v53 = *(v1 + 128);
              v54 = v17;
              v48 = *(v1 + 8);
              v50 = *(v3 + 140);
              v44 = v8;
              OUTLINED_FUNCTION_2_1();
              LogPrintF(v18, v19, v20, v21, v7, v44, v48, v50, v53, v54);
            }

            v6 = *(v3 + 140);
          }

          if (v6 >= 0x32)
          {
            v23 = *v1;
            v22 = *(v1 + 8);
            CMBaseObjectGetDerivedStorage();
            v24 = audioHoseManagerBuffered_getHoseDecriptorFromHose(v23, v22);
            if (v24)
            {
              if (gLogCategory_APAudioHoseManagerBuffered <= 90)
              {
                v25 = v24;
                if (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered))
                {
                  if (v23)
                  {
                    v26 = CMBaseObjectGetDerivedStorage();
                  }

                  else
                  {
                    v26 = "";
                  }

                  v52 = *(v25 + 140);
                  v46 = v26;
                  OUTLINED_FUNCTION_2_1();
                  LogPrintF(v36, v37, v38, v39, v23, v46, v22, v52);
                }
              }

              Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!Mutable)
              {
                CMNotificationCenterGetDefaultLocalCenter();
                FigDispatchAsyncPostNotification();
                goto LABEL_69;
              }

              v13 = Mutable;
              FigCFDictionarySetInt32();
              CFDictionarySetValue(v13, *MEMORY[0x277CC17E0], @"Too many retries setting the rate to 1");
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              goto LABEL_68;
            }

            if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered)))
            {
              if (v23)
              {
                v41 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v41 = "";
              }

              v43 = v41;
              v47 = v22;
              v42 = v23;
LABEL_84:
              OUTLINED_FUNCTION_2_1();
LABEL_61:
              LogPrintF(v33, v34, v32, v35, v42, v43, v47);
            }
          }
        }

        else
        {
          *(v3 + 140) = 0;
          if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
          {
            v11 = *v1;
            if (*v1)
            {
              v12 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v12 = "";
            }

            v32 = 33554482;
            v43 = v12;
            v47 = *(v1 + 8);
            v42 = v11;
            v33 = &gLogCategory_APAudioHoseManagerBuffered;
            v34 = "void audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal(void *)";
            v35 = "HMB [%{ptr}] %sSetRate 1 success for hose [%{ptr}]\n";
            goto LABEL_61;
          }
        }
      }

      else
      {
        if (*(v1 + 128))
        {
          if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered)))
          {
            v9 = *v1;
            if (*v1)
            {
              v10 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v10 = "";
            }

            v49 = *(v1 + 8);
            v51 = *(v1 + 128);
            v45 = v10;
            OUTLINED_FUNCTION_2_1();
            LogPrintF(v27, v28, v29, v30, v9, v45, v49, v51);
          }

          v13 = 0;
        }

        else
        {
          v13 = APSAudioTransportTimeCopyDebugDesc();
          if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
          {
            v14 = *v1;
            if (*v1)
            {
              v15 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v15 = "";
            }

            LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal(void *)", 33554482, "HMB [%{ptr}] %sSetRate 0 success for hose %{ptr}; firstAvailableTransportTS: %@\n", v14, v15, *(v1 + 8), v13);
          }
        }

        if (!*(v3 + 144))
        {
          v31 = *(v1 + 72);
          *(v3 + 160) = *(v1 + 84);
          *(v3 + 148) = v31;
        }

        if (v13)
        {
LABEL_68:
          CFRelease(v13);
        }
      }
    }

    else if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered)))
    {
      if (*v1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_17_5();
      goto LABEL_84;
    }
  }

LABEL_69:
  **(v1 + 136) = 0;
}

uint64_t APAudioHoseManagerBufferedCreate_cold_3()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioHoseManagerBufferedCreate_cold_4()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  time = *v1;
  Seconds = CMTimeGetSeconds(&time);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v0, DerivedStorage, *&Seconds);
}

uint64_t APAudioHoseManagerBufferedCreate_cold_5()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioHoseManagerBufferedCreate_cold_6(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v1, v8);
}

uint64_t APAudioHoseManagerBufferedCreate_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE4FEu, "Failed to allocate memory for hose manager notification queue");
  *a1 = result;
  return result;
}

uint64_t APAudioHoseManagerBufferedCreate_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE4FEu, "Failed to allocate memory for hose manager queue");
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_Finalize_cold_1(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

CFTypeRef audioHoseManagerBuffered_CopyProperty_cold_1(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (CFDictionaryGetCount(*(DerivedStorage + 192)) == 1)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 0x40000000;
    v13 = __audioHoseManagerBuffered_shouldUseReceiverChoosesAnchor_block_invoke;
    v14 = &unk_2784A0150;
    v15 = &v7;
    CFDictionaryApplyBlock();
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  v5 = MEMORY[0x277CBED28];
  if (!v4)
  {
    v5 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v5);
  *a2 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_CopyProperty_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_CopyProperty_cold_3()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_handleCryptorKeyUpdated_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_setCryptorForAllHoses_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -72451;
  return result;
}

uint64_t audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_1(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_2()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_3()
{
  OUTLINED_FUNCTION_8_12();
  if (*v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

void audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_4()
{
  if (gLogCategory_APAudioHoseManagerBuffered <= 90)
  {
    OUTLINED_FUNCTION_3_7();
    if (v2 != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered))
    {
      v3 = *v1;
      if (v3)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        DerivedStorage = "";
      }

      v9 = DerivedStorage;
      v10 = *v0;
      OUTLINED_FUNCTION_2_1();
      LogPrintF(v5, v6, v7, v8, v3, v9, v10);
    }
  }
}

uint64_t __audioHoseManagerBuffered_setLoudnessNormalizationOnAllHoses_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 40))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_1()
{
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  Count = CFDictionaryGetCount(*(v2 + 192));
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v5, v6, v7, v8, v0, DerivedStorage, v1, Count);
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE4FDu, "Hose is already registered");
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_3(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  v3 = OUTLINED_FUNCTION_5_5(0xE4FDu, "Hose is already registered");
  *a2 = v3;
  if (!v3)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_4()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_5()
{
  OUTLINED_FUNCTION_27();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
  }

  else
  {
    v9 = "";
  }

  v18 = OUTLINED_FUNCTION_26_3(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v19, v20, v21);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v10, v11, v12, v13, v0, v9, *&v18);
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_6()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_7()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_8()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_9()
{
  OUTLINED_FUNCTION_3_2();
  if (v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  if (*(v2 + 185))
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  v12 = v5;
  v11 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v6, v7, v8, v9, v0, v11, v12, v1);
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE4FDu, "Hose is not registered");
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarDeregisterHose_cold_1()
{
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  Count = CFDictionaryGetCount(*(v2 + 192));
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v5, v6, v7, v8, v0, DerivedStorage, v1, Count);
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_1(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_2(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_3(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_4(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_5(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_2()
{
  OUTLINED_FUNCTION_27();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = DerivedStorage;
  }

  else
  {
    v10 = "";
  }

  v11 = *(v1 + 5);
  v12 = *v1;
  v23 = OUTLINED_FUNCTION_23_6(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v18, v19, v20, v21, v22, v24, v25, v26);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v13, v14, v15, v16, v0, v10, v11, v12, *&v23);
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_3(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v7 = *a2;
  v8 = *(a3 + 208);
  v9 = OUTLINED_FUNCTION_25_4(*(a3 + 228), v16, v17, v18, v20, v21, v23, *(a3 + 212), *(a3 + 220), v24);
  v10 = 84;
  if (!v7)
  {
    v10 = 70;
  }

  v22 = v9;
  v19 = v10;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v11, v12, v13, v14, a1, DerivedStorage, v19, v8, *&v22);
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_4(char a1, uint64_t a2)
{
  if (a1)
  {
    DerivedStorage = "";
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  v9 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, a2, v9);
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_5(uint64_t DerivedStorage, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (DerivedStorage)
  {
    v9 = "";
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
  }

  v18 = OUTLINED_FUNCTION_26_3(DerivedStorage, a2, a3, a4, a5, a6, a7, a8, v15, v16, v17, v19, v20, v21);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v10, v11, v12, v13, a3, v9, *&v18);
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_6()
{
  OUTLINED_FUNCTION_3_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_7(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (gLogCategory_APAudioHoseManagerBuffered <= 60)
  {
    v5 = result;
    if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (v5)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        DerivedStorage = "";
      }

      result = LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_copyAudioDataBBufsUntilRestingInternal(APAudioHoseManagerBufferedRef, APSEndpointStreamAudioHoseRef, CFMutableArrayRef, Boolean *)", 33554492, "HMB [%{ptr}] %sHose not found while trying to copy audio data.", v5, DerivedStorage, a2);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_27();
  if (v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = *(v4 + 9);
  UsedCount = APMessageRingBufferedGetUsedCount(*(a3 + 200));
  v10 = OUTLINED_FUNCTION_25_4(*(v4 + 32), v17, v18, v19, v21, v22, v24, *(v4 + 16), *(v4 + 24), v25);
  v11 = 84;
  if (!v8)
  {
    v11 = 70;
  }

  v23 = v10;
  v20 = v11;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v12, v13, v14, v15, v3, DerivedStorage, v20, UsedCount, *&v23);
}

uint64_t audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_1(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_2(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_1(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v13 = *a2;
  v12 = DerivedStorage;
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v7, v8, v9, v10, v5, v12, a3, v13);
}

uint64_t audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_2(void *a1)
{
  if (*a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

void audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_3()
{
  if (gLogCategory_APAudioHoseManagerBuffered <= 90)
  {
    OUTLINED_FUNCTION_3_7();
    if (v2 != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APAudioHoseManagerBuffered))
    {
      v3 = *v1;
      if (v3)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        DerivedStorage = "";
      }

      v9 = DerivedStorage;
      OUTLINED_FUNCTION_2_1();
      LogPrintF(v5, v6, v7, v8, v3, v9, v0);
    }
  }
}

uint64_t audioHoseManagerBuffered_removeHoseFromDescriptors_cold_1()
{
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  Count = CFDictionaryGetCount(*v2);
  return LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "void audioHoseManagerBuffered_removeHoseFromDescriptors(APAudioHoseManagerBufferedRef, APSEndpointStreamAudioHoseRef)", 33554472, "HMB [%{ptr}] %sDeregistered hose [%{ptr}] with audio engine (hosecount = %u)\n", v0, DerivedStorage, v1, Count);
}

uint64_t audioHoseManagerBuffered_removeHoseFromDescriptors_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_FlushWithinSampleRange_cold_1(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_WakeUpHoses_cold_1(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_NotifyHosesDataAvailable_cold_1(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_SetRateAndAnchorTime_cold_1(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_SetRate_cold_1()
{
  OUTLINED_FUNCTION_20_2();
  if (v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  Count = CFDictionaryGetCount(*(v1 + 192));
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v4, v5, v6, v7, v0, DerivedStorage, Count);
}

uint64_t audioHoseManagerBuffered_SetRate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE4FAu, "More than 1 hose isnt supported for hoseManager setrate.");
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_GetAudioToBufferTimes_cold_1(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_Suspend_cold_1(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandler_cold_1(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a1, v8);
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_5(0xE4FAu, "hose not found");
  *a1 = result;
  return result;
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_1()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_2()
{
  OUTLINED_FUNCTION_8_12();
  if (*v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_3()
{
  OUTLINED_FUNCTION_8_12();
  v3 = *v2;
  if (*v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v5 = *(v1 + 80);
  v13 = *v0;
  v14 = *(v5 + 35);
  v11 = DerivedStorage;
  v12 = *v5;
  OUTLINED_FUNCTION_2_1();
  return LogPrintF(v6, v7, v8, v9, v3, v11, v12, v13, v14);
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_6()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

void spDescription_copyName_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t spEndpoint_sendCommandInternal(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6(&gLogCategory_SPEndpoint, "OSStatus spEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, FigEndpointSendCommandCompletionCallback, void *)", v8, "[%{ptr}] %###s called %'@\n");
  }

  v10 = *(DerivedStorage + 136);
  if (v10 && (v11 = *(*(CMBaseObjectGetVTable() + 16) + 16)) != 0 && v11(v10))
  {
    if (*(DerivedStorage + 48))
    {
      v12 = 4294950573;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 4294950570;
  }

  CFRetain(a1);
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  v13 = *(DerivedStorage + 136);
  if (v13)
  {
    CFRetain(v13);
  }

  APSDispatchAsyncFHelper();
  return v12;
}

void spendpoint_copyShowInfoForStreamsSetEntry(uint64_t a1, __CFDictionary *a2)
{
  value = 0;
  cf1 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *MEMORY[0x277CBECE8];
  v4(CMBaseObject, @"EndpointStreamShowInfo", *MEMORY[0x277CBECE8], &value);
  if (!value)
  {
    goto LABEL_15;
  }

  v6 = FigEndpointStreamGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, *MEMORY[0x277CC1900], v5, &cf1);
    v8 = cf1;
    if (cf1)
    {
      if (CFEqual(cf1, *MEMORY[0x277CC1960]))
      {
        v9 = kAPEndpointShowInfoKey_StreamInfo_RealTimeAudio;
      }

      else if (CFEqual(v8, *MEMORY[0x277CC1968]))
      {
        v9 = kAPEndpointShowInfoKey_StreamInfo_BufferedAudio;
      }

      else
      {
        if (!CFEqual(v8, *MEMORY[0x277CC1980]))
        {
LABEL_18:
          APSLogErrorAt();
          goto LABEL_13;
        }

        v9 = kAPEndpointShowInfoKey_StreamInfo_Screen;
      }

      if (*v9)
      {
        CFDictionarySetValue(a2, *v9, value);
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

LABEL_15:
  if (cf1)
  {
    CFRelease(cf1);
  }
}

uint64_t spendpoint_Dissociate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "OSStatus spendpoint_Dissociate(FigEndpointRef)", v2, "[%{ptr}] %###s\n");
  }

  v20 = 0;
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = 1;
  CFRetain(a1);
  v5 = *(DerivedStorage + 248);
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *(DerivedStorage + 136);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  v18 = v6;
  v7 = *(DerivedStorage + 88);
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  v19 = v7;
  if (*(DerivedStorage + 240))
  {
    v8 = CFGetAllocator(a1);
    APEndpointDescriptionGetCMBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, @"TransportDevice", v8, &v20);
    }
  }

  spendpoint_resetActivationState(a1, DerivedStorage + 56, *(DerivedStorage + 256));
  FigSimpleMutexUnlock();
  if (!v4)
  {
    spendpoint_stopListeningToSenderSessionAndStreamsNotifications(a1, v18, v19);
    if (v18)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v12)
      {
        v12(v18, 0, 0, 0, 0);
      }

      APSenderSessionGetCMBaseObject();
      if (v13)
      {
        v15 = v13;
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v16)
        {
          v16(v15);
        }
      }

      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "OSStatus spendpoint_Dissociate(FigEndpointRef)", v14, "[%{ptr}] SPEndpoint invalidated APSenderSessionAirPlay [%{ptr}]\n");
      }
    }

    FigSimpleMutexLock();
    spendpoint_clearEndpointState(a1);
    APSDispatchAsyncFHelper();
    FigSimpleMutexUnlock();
  }

  return 0;
}

void spendpoint_activateInternal(void *a1)
{
  v82[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v73 = 0;
  v74 = 0;
  cf = 0;
  if (a1[7])
  {
    if (CFDictionaryGetInt64())
    {
      v3 = 1;
    }

    else
    {
      v3 = CFDictionaryGetInt64() != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 21);
  v5 = &unk_27CFF1000;
  v6 = MEMORY[0x277CBECE8];
  if (v4 == -16727)
  {
    FigSimpleMutexLock();
    if (a1[4] == *(DerivedStorage + 56) && *(DerivedStorage + 72) == 2)
    {
      v7 = 0;
      v8 = *(DerivedStorage + 64);
    }

    else
    {
      v8 = 0;
      v7 = 4294949692;
    }

    FigSimpleMutexUnlock();
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

  if (v4)
  {
    APSLogErrorAt();
    v8 = 0;
    v7 = *(a1 + 21);
    if (!v7)
    {
LABEL_17:
      OUTLINED_FUNCTION_6_14();
      if (v11 ^ v12 | v21)
      {
        if (v14 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_activateInternal(void *)", v13, "[%{ptr}] <SidePlayActivation> Endpoint activated for features %#ll{flags} (%s)\n");
        }

        if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_activateInternal(void *)", 33554462, "[%{ptr}] Endpoint activated for features %#ll{flags}, (seed %llu)\n", *a1, v8, &unk_222298672, a1[4]);
        }
      }

      v30 = 0;
      v22 = 0;
      v31 = *(DerivedStorage + 176);
      if (v31 && *(DerivedStorage + 184))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*v6, 0, v31);
        v22 = MutableCopy;
        if (MutableCopy)
        {
          CFDictionarySetValue(MutableCopy, @"isSidePlay", *MEMORY[0x277CBED28]);
          APSRTCReportingAgentSendEvent();
          CFRelease(v22);
          v22 = 0;
        }

        else
        {
          APSLogErrorAt();
        }

        v30 = 0;
      }

      goto LABEL_101;
    }

LABEL_78:
    v22 = 0;
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_6_14();
  if (v11 ^ v12 | v21 && (v10 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
  {
    v70 = a1[4];
    OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_activateInternal(void *)", v9, "[%{ptr}] <SidePlayActivation> Activating endpoint %@ with seed %llu...\n");
  }

  if (*(DerivedStorage + 24))
  {
    APSenderSessionGetCMBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v16, @"EventRecorder", *v6, &cf);
      if (cf)
      {
        MEMORY[0x223DAE7F0](*(DerivedStorage + 24));
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  while (1)
  {
    v18 = a1[3];
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v19)
    {
      v7 = 4294954514;
      goto LABEL_52;
    }

    v20 = v19(v18);
    v21 = v20 == -71164 || v20 == -71145;
    if (v21)
    {
      v7 = 4294949688;
      goto LABEL_52;
    }

    v7 = v20;
    if (!v20)
    {
      break;
    }

    if (v20 != 200401)
    {
      if (v20 != 200503)
      {
        if (v20 != 200470)
        {
          goto LABEL_52;
        }

        goto LABEL_36;
      }

      v7 = 4294949687;
LABEL_52:
      APSLogErrorAt();
      v22 = 0;
      v8 = 0;
      goto LABEL_53;
    }

LABEL_36:
    if (v3)
    {
      APSLogErrorAt();
      v22 = 0;
      v8 = 0;
      v7 = 4294949696;
LABEL_53:
      v5 = &unk_27CFF1000;
      goto LABEL_79;
    }
  }

  SNPrintF(label, 64, "SPEndpoint.%{ptr}.%s", *a1, "systemControllerQueue");
  v22 = dispatch_queue_create(label, 0);
  if (!v22)
  {
    APSLogErrorAt();
    v8 = 0;
    v7 = 4294950575;
    goto LABEL_53;
  }

  v5 = &unk_27CFF1000;
  if (!in_audio_mx_server_process())
  {
    v27 = [MEMORY[0x277D26E58] sharedAVSystemController];
    OUTLINED_FUNCTION_6_14();
    if (v11 ^ v12 | v21 && (v29 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
    {
      v68 = *a1;
      v69 = *(DerivedStorage + 256);
      OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_activateInternal(void *)", v28, "[%{ptr}] <SidePlayActivation> Using AVSystemController; deviceID = %@\n");
    }

    v81 = *MEMORY[0x277D26D68];
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:{1, v68, v69, v70}];
    [v27 setAttribute:v33 forKey:*MEMORY[0x277D26DD0] error:0];
    [v27 addRemoteDeviceID:*(DerivedStorage + 256)];
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_28();
    FigNotificationCenterAddWeakListener();
    v24 = 0;
LABEL_68:
    FigSimpleMutexLock();
    *(DerivedStorage + 152) = v24;
    *(DerivedStorage + 160) = v27;
    *(DerivedStorage + 168) = v22;
    v6 = MEMORY[0x277CBECE8];
    if (a1[4] != *(DerivedStorage + 56) || *(DerivedStorage + 72) != 1)
    {
      v8 = 0;
      v7 = 4294949692;
LABEL_77:
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      goto LABEL_78;
    }

    v35 = a1[2];
    v36 = CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    v37 = APSGetFBOPropertyInt64();
    if (*(v36 + 128))
    {
      v38 = v37;
      v39 = *(v36 + 112);
      if (v39)
      {
        if ((v35 & 8) == 0 || !v38)
        {
          if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_activateInternal(void *)", 33554522, "### Endpoint [%{ptr}] None of the requested features %#ll{flags} is supported\n", *a1, a1[2], &unk_222298672);
          }

          v8 = 0;
          v40 = 0;
          v7 = 4294950576;
LABEL_135:
          v64 = *v6;
          Mutable = CFSetCreateMutable(*v6, 0, MEMORY[0x277CBF158]);
          *(DerivedStorage + 88) = Mutable;
          if (Mutable)
          {
            if (v40)
            {
              *(DerivedStorage + 64) = v8;
              *(DerivedStorage + 96) = *(a1 + 81);
              APSEventRecorderRecordEvent();
              spendpoint_postPerformanceReport(*a1, a1[1]);
              if (!*(a1 + 80))
              {
                APSenderSessionGetCMBaseObject();
                CMBaseObjectCopyProperty(v66, @"InitialRTCStats", v64, &v73);
                *(DerivedStorage + 176) = FigCFDictionaryCreateMutableCopy();
                CFDictionarySetInt64();
                APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                CFDictionarySetInt64();
                APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                CFDictionarySetInt64();
                APSRTCReportingAgentCreate();
              }

              *(DerivedStorage + 72) = 2;
              FigSimpleMutexUnlock();
              if (qword_280FB1BC8 != -1)
              {
                dispatch_once(&qword_280FB1BC8, &__block_literal_global_31);
              }

              if (_MergedGlobals_21)
              {
                v67 = *_MergedGlobals_21;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __spendpoint_activateInternal_block_invoke;
                block[3] = &__block_descriptor_48_e5_v8__0l;
                block[4] = _MergedGlobals_21;
                block[5] = a1;
                dispatch_sync(v67, block);
              }

              goto LABEL_17;
            }
          }

          else
          {
            if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_activateInternal(void *)", 33554522, "### Endpoint [%{ptr}] Failed to allocate streams\n", *a1);
            }

            v7 = 4294950575;
          }

          goto LABEL_77;
        }

        if (CFDictionaryGetValue(v39, *MEMORY[0x277CC1968]))
        {
          v7 = 0;
          v40 = 1;
          v8 = 8;
          goto LABEL_135;
        }
      }
    }

    APSLogErrorAt();
    v8 = 0;
    v40 = 0;
    v7 = 4294949690;
    goto LABEL_135;
  }

  v23 = [objc_alloc(MEMORY[0x277D26E68]) initWithPID:getpid() remoteDeviceID:*(DerivedStorage + 256)];
  if (v23)
  {
    v24 = v23;
    OUTLINED_FUNCTION_6_14();
    if (v11 ^ v12 | v21 && (v26 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
    {
      v68 = *a1;
      OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_activateInternal(void *)", v25, "[%{ptr}] <SidePlayActivation> Using MXSystemController\n");
    }

    v34 = *MEMORY[0x277D27420];
    v82[0] = *MEMORY[0x277D273D8];
    [v24 setAttributeForKey:v34 andValue:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v82, 1, v68)}];
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_28();
    FigNotificationCenterAddWeakListener();
    v27 = 0;
    goto LABEL_68;
  }

  APSLogErrorAt();
  v8 = 0;
  v7 = 4294960568;
LABEL_79:
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  *label = 0u;
  v76 = 0u;
  v41 = v5[778];
  if (v41 <= 90 && (v41 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_activateInternal(void *)", 33554522, "[%{ptr}] <SidePlayActivation> Endpoint activation (seed %llu) failed with error %#m.\n", *a1, a1[4], v7);
  }

  FigSimpleMutexLock();
  if (a1[4] == *(DerivedStorage + 56) && *(DerivedStorage + 72) == 1)
  {
    *label = CFRetain(*a1);
    v42 = *(DerivedStorage + 248);
    if (v42)
    {
      v42 = CFRetain(v42);
    }

    *&label[8] = v42;
    v43 = CFRetain(@"FailedActivation");
    DWORD2(v78) = 0;
    v80 = 0uLL;
    v44 = a1[4];
    *&v76 = v43;
    v46 = a1[2];
    v45 = a1[3];
    *(&v77 + 1) = v44;
    *&v78 = v46;
    if (v45)
    {
      v47 = CFRetain(v45);
    }

    else
    {
      v47 = 0;
    }

    *(&v76 + 1) = v47;
    v48 = *(DerivedStorage + 88);
    if (v48)
    {
      v49 = CFRetain(v48);
    }

    else
    {
      v49 = 0;
    }

    *&v77 = v49;
    v50 = *(DerivedStorage + 176);
    if (v50)
    {
      v50 = CFRetain(v50);
    }

    *&v79 = v50;
    v51 = *(DerivedStorage + 184);
    if (v51)
    {
      v51 = CFRetain(v51);
    }

    *(&v79 + 1) = v51;
    spendpoint_resetActivationState(*a1, DerivedStorage + 56, *(DerivedStorage + 256));
    spendpoint_stopListeningToSenderSessionAndStreamsNotifications(*a1, v47, v49);
    APSDispatchAsyncFHelper();
  }

  FigSimpleMutexUnlock();
  if (v3 && v7 != -17600)
  {
    v30 = -17601;
  }

  else
  {
    v30 = v7;
  }

LABEL_101:
  v52 = a1[8];
  if (v52)
  {
    v53 = *a1;
    v54 = a1[4];
    *label = *a1;
    *&label[8] = v54;
    if (v30)
    {
      v55 = 0;
    }

    else
    {
      v55 = v8;
    }

    *&v76 = v55;
    *(&v76 + 1) = v30;
    v56 = a1[9];
    *&v77 = v52;
    *(&v77 + 1) = v56;
    CFRetain(v53);
    APSDispatchAsyncFHelper();
  }

  if (!v30)
  {
    v57 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v57, v8, a1[4], &v74);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v74)
    {
      CFRelease(v74);
      v74 = 0;
    }

    v58 = CFGetAllocator(*a1);
    APEndpointCreateStreamsChangedNotificationPayload(v58, v8, a1[4], 1, &v74);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v74)
    {
      CFRelease(v74);
      v74 = 0;
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v59 = a1[1];
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = a1[7];
  if (v60)
  {
    CFRelease(v60);
  }

  v61 = a1[3];
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = a1[5];
  if (v62)
  {
    CFRelease(v62);
  }

  v63 = a1[6];
  if (v63)
  {
    CFRelease(v63);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v22)
  {
    dispatch_release(v22);
  }
}

double spendpoint_handleSenderSessionStarted(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_handleSenderSessionStarted(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554462, "[%{ptr}] Handle session started.\n", a2);
  }

  if (!*(DerivedStorage + 48))
  {
    FigSimpleMutexLock();
    CMBaseObjectGetDerivedStorage();

    FigSimpleMutexUnlock();
  }

  return result;
}

void spendpoint_updateStatus(const void *a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 48) && a2)
  {
    v7 = DerivedStorage;
    *(DerivedStorage + 272) = a2;
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = CFGetAllocator(a1);
      v12 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v12)
      {
        APSLogErrorAt();
LABEL_52:
        CFRelease(v10);
        return;
      }

      v13 = v12;
      CFDictionarySetInt64();
      if (a2 == 200470 || a2 == 200401)
      {
        if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_updateStatus(FigEndpointRef, OSStatus, SPEndpointSessionState)", 33554462, "[%{ptr}] Posting kFigEndpointNotification_AuthorizationRequired\n", a1);
        }

        goto LABEL_38;
      }

      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v15 = MEMORY[0x277CC0CA0];
      v16 = a3 == 0;
      if (!a3)
      {
        v15 = MEMORY[0x277CC0CA8];
      }

      v17 = *MEMORY[0x277CC0BD8];
      if (v16)
      {
        v18 = MEMORY[0x277CC0BD0];
      }

      else
      {
        v18 = MEMORY[0x277CC0BC8];
      }

      CFDictionarySetValue(v10, *MEMORY[0x277CC0CC8], *v15);
      CFDictionarySetValue(v13, v17, *v18);
      v19 = MEMORY[0x277CC0D50];
      if (*(v7 + 208))
      {
        if (*(v7 + 232) && (v20 = FigCFWeakReferenceHolderCopyReferencedObject(), *(v7 + 232)) && !v20)
        {
          if (gLogCategory_SPEndpoint > 90)
          {
LABEL_38:
            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
            {
              OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_updateStatus(FigEndpointRef, OSStatus, SPEndpointSessionState)", v23, "[%{ptr}] <SidePlayDiscovery> %###s inStatus = %#m; transportDevice = [%{ptr}]\n");
            }

            if (a2 == -16613)
            {
              v24 = CFGetAllocator(a1);
              APEndpointDescriptionGetCMBaseObject();
              v26 = v25;
              v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v27)
              {
                v27(v26, @"TransportDevice", v24, &cf);
                if (cf)
                {
                  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
                  {
                    OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_updateStatus(FigEndpointRef, OSStatus, SPEndpointSessionState)", v28, "[%{ptr}] <SidePlayDiscovery> %###s calling APTransportDeviceReconfirm\n");
                  }

                  APTransportDeviceReconfirm();
                  if (cf)
                  {
                    CFRelease(cf);
                  }
                }
              }
            }

            CFRelease(v13);
            goto LABEL_52;
          }

          if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_updateStatus(FigEndpointRef, OSStatus, SPEndpointSessionState)", 33554522, "%{ptr} %###s weakDelegateContextRouting is not NULL, but handleFailureCallbackContext is NULL.\n", a1, "void spendpoint_updateStatus(FigEndpointRef, OSStatus, SPEndpointSessionState)");
          }
        }

        else
        {
          CFRetain(a1);
          CFRetain(v13);
          if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
          {
            OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_updateStatus(FigEndpointRef, OSStatus, SPEndpointSessionState)", v21, "[%{ptr}] Notifying about endpoint failure %#m...\n");
          }

          APSDispatchAsyncFHelper();
        }
      }

      if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        v22 = MEMORY[0x277CC0D58];
        if (a2 != 200453)
        {
          v22 = v19;
        }

        LogPrintF(&gLogCategory_SPEndpoint, "void spendpoint_updateStatus(FigEndpointRef, OSStatus, SPEndpointSessionState)", 33554462, "[%{ptr}] Posting %@\n", a1, *v22);
      }

      goto LABEL_38;
    }

    APSLogErrorAt();
  }
}

uint64_t spendpoint_logTransportDiscoveryDurationIfEventPresent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = APSEventRecorderGetEventTimeRecursive();
  if (result)
  {
    APBrowserGetStartEventForBrowserDeviceEvent();
    result = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    if (gLogCategory_SPEndpoint <= 40)
    {
      if (gLogCategory_SPEndpoint != -1)
      {
        return OUTLINED_FUNCTION_6(&gLogCategory_SPEndpoint, "OSStatus spendpoint_logTransportDiscoveryDurationIfEventPresent(APSEventRecorderRef, APSEventRecorderRef, APSEventRecorderEvent, char *)", v4, "| %-40s: %lld ms\n");
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return OUTLINED_FUNCTION_6(&gLogCategory_SPEndpoint, "OSStatus spendpoint_logTransportDiscoveryDurationIfEventPresent(APSEventRecorderRef, APSEventRecorderRef, APSEventRecorderEvent, char *)", v4, "| %-40s: %lld ms\n");
      }
    }
  }

  return result;
}

double spendpoint_handleStreamFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Int64 = -71850;
  CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Int64 = CFDictionaryGetInt64();
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_handleStreamFailed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v8, "[%{ptr}] Handle failure notification from endpoint stream [%{ptr}] with err=%#m, isStartupFailure=%s");
  }

  FigSimpleMutexLock();
  spendpoint_updateStatus(a2, Int64, 1);
  FigSimpleMutexUnlock();
  return result;
}

void spendpoint_reportStreamMetricsArrayIterator(const __CFDictionary *a1, CFDictionaryRef *a2)
{
  if (a2 && a1 && *a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *a2);
    if (MutableCopy)
    {
      v4 = MutableCopy;
      if (CFDictionaryMergeDictionary() || !CFDictionaryGetValue(a1, @"sessionType"))
      {
        APSLogErrorAt();
      }

      else
      {
        if (FigCFEqual())
        {
          APSRTCReportingAgentSendEvent();
        }

        if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_reportStreamMetricsArrayIterator(const void *, void *)", v5, "RTC metrics of sessionType %@ for stream: %@\n");
        }
      }

      CFRelease(v4);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void spendpoint_dissociateInternal(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (qword_280FB1BC8 != -1)
  {
    dispatch_once(&qword_280FB1BC8, &__block_literal_global_31);
  }

  if (_MergedGlobals_21)
  {
    v4 = *_MergedGlobals_21;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __spendpoint_dissociateInternal_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = _MergedGlobals_21;
    block[5] = a1;
    dispatch_sync(v4, block);
  }

  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_dissociateInternal(void *)", v2, "[%{ptr}] Dissociating endpoint %'@...\n");
  }

  if (a1[3])
  {
    CFSetApplyBlock();
  }

  CMBaseObjectGetDerivedStorage();
  APSEventRecorderReset();
  FigSimpleMutexLock();
  spendpoint_updateStatus(*a1, -16723, 1);
  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    v5 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v5, a1[5], a1[4], &v11);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v6 = a1[1];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[3];
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

uint64_t spEndpoint_SendCommand(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = spEndpoint_sendCommandInternal(FigEndpoint, a2, a3, a4, a5);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t spendpoint_handleClientIsActiveDidChange_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SPEndpoint <= 50)
  {
    if (gLogCategory_SPEndpoint != -1)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_handleClientIsActiveDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", a3, "[%{ptr}] <SidePlayNotification> Skipping notification for other remoteDeviceID %@; want %@");
    }

    result = OUTLINED_FUNCTION_4(&gLogCategory_SPEndpoint);
    if (result)
    {
      return OUTLINED_FUNCTION_2(&gLogCategory_SPEndpoint, "void spendpoint_handleClientIsActiveDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", a3, "[%{ptr}] <SidePlayNotification> Skipping notification for other remoteDeviceID %@; want %@");
    }
  }

  return result;
}

uint64_t spendpoint_handleEventMessageCreatingReply_cold_5(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_processCommandCreatingResponse(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "[%{ptr}] ### Unrecognized command '%@'\n", a2, a3);
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_processCommandCreatingResponse(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "[%{ptr}] ### Unrecognized command '%@'\n", a2, a3);
  }

  return result;
}

uint64_t spEndpoint_AcquireAndCopyResource_cold_8()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t spEndpoint_AcquireAndCopyResource_cold_10(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_SPEndpoint < 91)
  {
    v5 = result;
    if (gLogCategory_SPEndpoint != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_SPEndpoint, "OSStatus spendpoint_createAudioStream(FigEndpointRef, CFStringRef, FigEndpointStreamRef *)", 33554522, "### [%{ptr}] Unsupported stream type '%@'\n", v5, a2);
    }
  }

  *a3 = -72374;
  return result;
}

uint64_t APEndpointGetFeatureFromStreamType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, *MEMORY[0x277CC1980]))
    {
      return 1;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC1960]))
    {
      return 2;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC1968]))
    {
      return 8;
    }

    else
    {
      return 32 * (CFEqual(v1, *MEMORY[0x277CC1970]) != 0);
    }
  }

  return result;
}

uint64_t __APEndpointGetEnabledFeatures_block_invoke(uint64_t a1, uint64_t a2)
{
  result = APEndpointGetFeatureFromStreamType(a2);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t FigEndpointSubTypeToGestaltDeviceClass(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, *MEMORY[0x277CC19A0]))
    {
      return 4;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC19F8]))
    {
      return 1;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC19C0]))
    {
      return 7;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC19C8]))
    {
      return 100;
    }

    else if (CFEqual(v1, *MEMORY[0x277CC1A00]))
    {
      return 11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void APEndpointCreateAudioStreamOptions_cold_5(uint64_t a1, CFTypeRef *a2, const void *a3)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  CFRelease(a3);
}

uint64_t __APEndpointCallRCDelegateDidReceiveDataAsync_block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  Length = CFDataGetLength(*(a1 + 48));
  return LogPrintF(&gLogCategory_APEndpointUtilities, "void APEndpointCallRCDelegateDidReceiveDataAsync(FigEndpointRef, uint64_t, CFStringRef, CFDataRef, dispatch_queue_t, FigEndpointHandleDidReceiveDataFromCommChannel, FigCFWeakReferenceHolderRef)_block_invoke", 33554462, "[%{ptr}] Call didReceiveData for commChannelID [%@] (%d bytes)\n", v1, v2, Length);
}

uint64_t audioEngineBufferedAdapter_Flush(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineBufferedAdapter, "OSStatus audioEngineBufferedAdapter_Flush(FigEndpointStreamAudioEngineRef, CFDictionaryRef)", v4, "%@ Flushing...\n");
    }

    v6 = APSRealTimeAllocatorAllocate();
    if (v6)
    {
      v7 = v6;
      FigCFDictionaryGetCMTimeIfPresent();
      *(v7 + 24) = CFDictionaryGetInt64() != 0;
      v8 = *(v5 + 200);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *(v7 + 32) = v8;
      APSRealTimeDispatcherAsync();
    }
  }

  return 0;
}

void audioEngineBufferedAdapter_CompressionSourceWriteDataCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 200);
    if (v3)
    {
      CFRetain(v3);
    }

    APSRealTimeDispatcherAsync();
  }
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_8(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_16(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_17(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APAudioEngineBufferedAdapterCreate_cold_19(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15480;
  return result;
}

uint64_t audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1_cold_1(uint64_t *a1, int __errnum)
{
  v2 = *a1;
  v3 = strerror(__errnum);
  return LogPrintF(&gLogCategory_APAudioEngineBufferedAdapter, "void audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1(FigEndpointStreamAudioEngineRef, OSStatus, Float64, CMTime, CMTime, CFDictionaryRef, void *)", 33554522, "%@ SetRateAndAnchorTime failed with error: %s\n", v2, v3);
}

void audioEngineBufferedAdapter_Resume_cold_2(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
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

void audioEngineBufferedAdapter_Suspend_cold_2(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
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

void audioEngineBufferedAdapter_SetEndpointStream_cold_1(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
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

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15487;
  return result;
}

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15484;
  return result;
}

void audioEngineBufferedAdapter_Resume_Stage1_cold_5(void *a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6_15();
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineBufferedAdapter, "void audioEngineBufferedAdapter_Resume_Stage1(void *)", v3, "%@ TransportASBD: [%{asbd}]. transportAudioFormat: %@");
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

void audioEngineBufferedAdapter_Resume_Stage1_cold_13(void *a1, CFTypeRef *a2)
{
  APSAudioFormatDescriptionCopyDebugString();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6_15();
    OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineBufferedAdapter, "void audioEngineBufferedAdapter_Resume_Stage1(void *)", v3, "%@ AudioCompressionSource - vbrBitRate = %d, CodecType:%@");
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_21(_DWORD *a1, _DWORD *a2)
{
  APSLogErrorAt();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_22(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72091;
  return result;
}

uint64_t audioEngineBufferedAdapter_Resume_Stage1_cold_23(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -15483;
  return result;
}

void audioEngineBufferedAdapter_Suspend_Stage1_cold_2()
{
  OUTLINED_FUNCTION_4_27();
  APSLogErrorAt();
  FigSimpleMutexUnlock();
  *(v1 + 40) = v0;

  audioEngineBufferedAdapter_Suspend_Complete(v1);
}

void audioEngineBufferedAdapter_SetEndpointStream_Stage1_cold_2()
{
  OUTLINED_FUNCTION_4_27();
  APSLogErrorAt();
  FigSimpleMutexUnlock();
  *(v1 + 32) = v0;

  audioEngineBufferedAdapter_SetEndpointStream_Complete(v1);
}

void __getCRVehiclePolicyMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCRVehiclePolicyMonitorClass(void)_block_invoke") description:{@"APCarPlayPolicyMonitor.m", 42, @"Unable to find class %s", "CRVehiclePolicyMonitor"}];
  __break(1u);
}

void __getCRVehiclePolicyMonitorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayPolicyMonitor.m", 40, @"%s", *a1}];
  __break(1u);
}

uint64_t APEndpointRecordEvent(uint64_t result, uint64_t a2)
{
  if (result)
  {
    CMBaseObjectGetDerivedStorage();

    return APSEventRecorderRecordEventWithFlags();
  }

  return result;
}

void endpoint_copyShowInfoForStreamsDictionaryEntry(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  value = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, @"EndpointStreamShowInfo", *MEMORY[0x277CBECE8], &value);
    if (value)
    {
      if (!a1)
      {
        APSLogErrorAt();
        goto LABEL_18;
      }

      if (CFEqual(a1, *MEMORY[0x277CC1960]))
      {
        v7 = kAPEndpointShowInfoKey_StreamInfo_RealTimeAudio;
      }

      else if (CFEqual(a1, *MEMORY[0x277CC1968]))
      {
        v7 = kAPEndpointShowInfoKey_StreamInfo_BufferedAudio;
      }

      else if (CFEqual(a1, *MEMORY[0x277CC1980]))
      {
        v7 = kAPEndpointShowInfoKey_StreamInfo_Screen;
      }

      else
      {
        if (!CFEqual(a1, *MEMORY[0x277CC1970]))
        {
          goto LABEL_18;
        }

        v7 = kAPEndpointShowInfoKey_StreamInfo_LowLatencyAudio;
      }

      if (*v7)
      {
        CFDictionarySetValue(a3, *v7, value);
        goto LABEL_14;
      }

LABEL_18:
      APSLogErrorAt();
LABEL_14:
      if (value)
      {
        CFRelease(value);
      }
    }
  }
}

uint64_t apEndpoint_sendCommandInternal(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6(&gLogCategory_APEndpoint, "OSStatus apEndpoint_sendCommandInternal(FigEndpointRef, CFStringRef, CFDictionaryRef, FigEndpointSendCommandCompletionCallback, void *)", v8, "[%{ptr}] %###s called %'@\n");
  }

  v10 = *(DerivedStorage + 216);
  if (v10 && (v11 = *(*(CMBaseObjectGetVTable() + 16) + 16)) != 0 && v11(v10))
  {
    if (*(DerivedStorage + 120))
    {
      v12 = 4294950573;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 4294950570;
  }

  CFRetain(a1);
  CFRetain(*(DerivedStorage + 40));
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  v13 = *(DerivedStorage + 216);
  if (v13)
  {
    CFRetain(v13);
  }

  APSDispatchAsyncFHelper();
  return v12;
}

uint64_t endpoint_Activate(const void *a1, uint64_t a2, const __CFDictionary *a3, CFTypeRef a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v214 = 0;
  bzero(v203, 0xA8uLL);
  OUTLINED_FUNCTION_20_5();
  v12 = CFStringCreateF(0, "APEndpoint-%{ptr}-%s", a1, v11);
  aBlock = 0;
  v221[0] = 0;
  v13 = *MEMORY[0x277CBECE8];
  APEndpointDescriptionGetCMBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v194 = a4;
  v195 = a5;
  v199 = v13;
  if (!v16 || (v16(v15, @"TransportDevice", v13, &aBlock), !aBlock))
  {
    v21 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  v17 = APSEventRecorderCreate();
  if (v17)
  {
    v20 = v17;
  }

  else
  {
    EventRecorder = APTransportDeviceGetEventRecorder();
    if (!EventRecorder || (v19 = MEMORY[0x223DAE7F0](v221[0], EventRecorder)) == 0)
    {
      APSEventRecorderAddSignPostForEvent();
      v20 = 0;
      v21 = v221[0];
      v221[0] = 0;
      goto LABEL_7;
    }

    v20 = v19;
  }

  APSLogErrorAt();
  v21 = 0;
LABEL_7:
  if (aBlock)
  {
    CFRelease(aBlock);
  }

LABEL_9:
  if (v221[0])
  {
    CFRelease(v221[0]);
  }

  if (v20)
  {
    APSLogErrorAt();
    a4 = 0;
    v196 = 0;
    v197 = 0;
    v192 = 0;
    cf = 0;
    Value = 0;
    v202 = 0;
    v200 = 0;
LABEL_314:
    v198 = 0;
    goto LABEL_246;
  }

  APSEventRecorderRecordEventWithFlags();
  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    v180 = *(DerivedStorage + 440);
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v22, v23, v24, v25, a1, v180, a2, &unk_222298838, Value, a3);
  }

  v200 = *(DerivedStorage + 136);
  if (a3)
  {
    v26 = CFDictionaryGetValue(a3, @"ParentContextID");
    if (!v26)
    {
      v26 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09F8]);
    }

    if (!*(DerivedStorage + 144))
    {
      v27 = *(DerivedStorage + 152);
      *(DerivedStorage + 152) = v26;
      if (v26)
      {
        CFRetain(v26);
      }

      if (!v27)
      {
        goto LABEL_24;
      }

LABEL_23:
      CFRelease(v27);
LABEL_24:
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v28, v29, v30, v31, a1, v26);
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (!*(DerivedStorage + 144))
    {
      v26 = 0;
      v27 = *(DerivedStorage + 152);
      *(DerivedStorage + 152) = 0;
      if (!v27)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v26 = 0;
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554522, "### [%{ptr}] Invalid activation parent context ID '%@' - expect '%@'\n", a1, v26, *(DerivedStorage + 152));
    }

    goto LABEL_104;
  }

LABEL_30:
  v190 = v21;
  if (a3)
  {
    v32 = CFDictionaryGetValue(a3, @"Container");
  }

  else
  {
    v32 = 0;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (!FigCFEqual())
  {
    a4 = *(DerivedStorage + 544);
    *(DerivedStorage + 544) = v32;
    if (v32)
    {
      CFRetain(v32);
    }

    if (a4)
    {
      CFRelease(a4);
    }

    goto LABEL_40;
  }

  if (UpTimeNanoseconds > *(DerivedStorage + 568))
  {
LABEL_40:
    *(DerivedStorage + 560) = UpTimeNanoseconds + 1000000000 * *(DerivedStorage + 72);
    v34 = 1;
    goto LABEL_41;
  }

  v34 = *(DerivedStorage + 552) + 1;
LABEL_41:
  *(DerivedStorage + 552) = v34;
  *(DerivedStorage + 568) = UpTimeNanoseconds + 1000000000 * *(DerivedStorage + 80);
  if (a2 != 16 && *(DerivedStorage + 48))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_41();
    v20 = -16726;
    goto LABEL_246;
  }

  if (*(DerivedStorage + 120))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_41();
    v20 = -16723;
    goto LABEL_246;
  }

  if (a3)
  {
    v35 = CFGetTypeID(a3);
    if (v35 != CFDictionaryGetTypeID())
    {
      goto LABEL_312;
    }
  }

  v36 = *(DerivedStorage + 136);
  if (v36 && v36 != a2)
  {
    goto LABEL_304;
  }

  if (*(DerivedStorage + 216))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_41();
    v20 = -16727;
    goto LABEL_246;
  }

  if (!*(DerivedStorage + 40))
  {
LABEL_304:
    APSLogErrorAt();
LABEL_104:
    OUTLINED_FUNCTION_1_41();
    v20 = -16726;
    goto LABEL_246;
  }

  if (!a3)
  {
    a4 = 0;
    v39 = 0;
    v192 = 0;
    cf = 0;
    v202 = 0;
    v188 = 0;
    v189 = 0;
    v41 = 0;
    v42 = 0.0;
    goto LABEL_111;
  }

  ActivationOptions = endpoint_readActivationOptions(a3, DerivedStorage + 128);
  if (ActivationOptions)
  {
    v20 = ActivationOptions;
    a4 = 0;
    v196 = 0;
    v197 = 0;
    v192 = 0;
    cf = 0;
    v202 = 0;
    goto LABEL_314;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (*(DerivedStorage + 242))
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (CFDictionaryContainsKey(a3, @"PerceivedClusterType"))
    {
      Int64 = CFDictionaryGetInt64();
      *(DerivedStorage + 244) = Int64;
      if (Int64)
      {
        goto LABEL_55;
      }
    }

    else if (*(DerivedStorage + 244))
    {
      goto LABEL_55;
    }

LABEL_312:
    APSLogErrorAt();
    OUTLINED_FUNCTION_1_41();
    v20 = -16720;
    goto LABEL_246;
  }

LABEL_55:
  v39 = FigCFEqual();
  OUTLINED_FUNCTION_19_6();
  v40 = CFDictionaryGetInt64();
  if (!IsAppleInternalBuild() || v40)
  {
    if (!v40)
    {
      goto LABEL_58;
    }
  }

  else if (APSSettingsGetIntWithDefault() != 1)
  {
LABEL_58:
    BYTE4(v189) = 0;
    goto LABEL_75;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v43, v44, v45, v46, a1);
  }

  BYTE4(v189) = 1;
LABEL_75:
  if (!*(DerivedStorage + 260))
  {
    *(DerivedStorage + 260) = FigCFEqual();
  }

  OUTLINED_FUNCTION_19_6();
  v47 = CFDictionaryGetInt64() != 0;
  OUTLINED_FUNCTION_19_6();
  v48 = CFDictionaryGetInt64();
  v49 = 0;
  v50 = v48 != 0;
  v51 = *(DerivedStorage + 96);
  if (v51 <= 0xD && ((1 << v51) & 0x2090) != 0)
  {
    v49 = !*(DerivedStorage + 48) && !(*(DerivedStorage + 260) | v39) && *(DerivedStorage + 243) == 0;
  }

  *(DerivedStorage + 261) = v49;
  if (*(DerivedStorage + 241))
  {
    cf = CFDictionaryGetValue(a3, @"GroupID");
  }

  else
  {
    cf = 0;
  }

  v192 = CFDictionaryGetValue(a3, @"ContinuousGroupSessionID");
  v42 = 0.0;
  LOBYTE(v189) = v50;
  LOBYTE(v188) = v47;
  if (*(DerivedStorage + 48))
  {
    v202 = 0;
LABEL_92:
    BYTE4(v188) = 0;
    goto LABEL_93;
  }

  v52 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09D8]);
  if (v52)
  {
    v202 = CFRetain(v52);
  }

  else
  {
    v202 = 0;
  }

  if (*(DerivedStorage + 48))
  {
    goto LABEL_92;
  }

  OUTLINED_FUNCTION_19_6();
  if (!CFDictionaryGetInt64())
  {
    goto LABEL_92;
  }

  OUTLINED_FUNCTION_19_6();
  CFDictionaryGetDouble();
  v42 = v63;
  BYTE4(v188) = 1;
LABEL_93:
  v53 = CMBaseObjectGetDerivedStorage();
  v54 = CFDictionaryGetValue(a3, @"SenderSession");
  if (v54 && ((v55 = v54, v56 = CFGetTypeID(v54), v56 != CFDictionaryGetTypeID()) || (v55 = CFDictionaryGetValue(v55, *(v53 + 448))) != 0) && (v57 = CFGetTypeID(v55), v57 == APSenderSessionGetTypeID(v57, v58)))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v59, v60, v61, v62, a1, v55);
    }

    a4 = CFRetain(v55);
  }

  else
  {
    a4 = 0;
  }

  if (!*(DerivedStorage + 274))
  {
    v41 = 0;
LABEL_111:
    v198 = v41;
    if (endpoint_shouldOnlyBeActivatedAsPartOfCluster(a1) && !*(DerivedStorage + 242))
    {
      APSLogErrorAt();
      v196 = 0;
      v197 = 0;
      v20 = -72277;
      goto LABEL_246;
    }

    if (*(DerivedStorage + 48))
    {
      goto LABEL_118;
    }

    v65 = v202;
    if (!v202)
    {
      v65 = APSCreateNewUUIDString();
    }

    v202 = v65;
    v66 = endpoint_ensureSharedContextCreated(a1, a2, a3, v39);
    if (v66)
    {
      v20 = v66;
LABEL_321:
      v196 = 0;
      v197 = 0;
      goto LABEL_246;
    }

    MetadataSourceAndCommandSinkIfNeeded = endpoint_createMetadataSourceAndCommandSinkIfNeeded(a1, v200, a2);
    if (MetadataSourceAndCommandSinkIfNeeded)
    {
      v20 = MetadataSourceAndCommandSinkIfNeeded;
    }

    else
    {
LABEL_118:
      CFGetAllocator(a1);
      v68 = APSConnectionInterfaceManagerCreate();
      if (!v68)
      {
        if (a4)
        {
          if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v69, v70, v71, v72, a1, a4);
          }

          v196 = 0;
          v197 = 0;
LABEL_223:
          DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
          v133 = OUTLINED_FUNCTION_32_3(DefaultLocalCenter, v131, v132, @"APSenderSessionNotification_Started");
          if (v133)
          {
            v20 = v133;
          }

          else
          {
            v134 = CMNotificationCenterGetDefaultLocalCenter();
            v137 = OUTLINED_FUNCTION_32_3(v134, v135, v136, @"APSenderSessionNotification_Failed");
            if (!v137)
            {
              v138 = CMBaseObjectGetDerivedStorage();
              if (!*(v138 + 48))
              {
                v144 = v138;
                if (*(v138 + 32))
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_8_13();
                  v146 = v145;
                  OUTLINED_FUNCTION_33_1(v147, a1, v145, v148, v149);
                  v150 = CMNotificationCenterGetDefaultLocalCenter();
                  OUTLINED_FUNCTION_33_1(v150, a1, v146, @"SystemRequestToStop", *(v144 + 32));
                  if (*(v144 + 96) == 7)
                  {
                    CMNotificationCenterGetDefaultLocalCenter();
                    OUTLINED_FUNCTION_8_13();
                    OUTLINED_FUNCTION_33_1(v151, a1, v154, v152, v153);
                  }
                }
              }

              if (endpoint_isInLocalClusterOfAppleTV(a1))
              {
                CMNotificationCenterGetDefaultLocalCenter();
                OUTLINED_FUNCTION_4_28();
                OUTLINED_FUNCTION_33_1(v139, a1, v140, v141, v142);
              }

              *(DerivedStorage + 216) = CFRetain(a4);
              *(DerivedStorage + 224) = CFRetain(v214);
              ++*(DerivedStorage + 128);
              *(DerivedStorage + 136) = a2;
              *(DerivedStorage + 144) = 1;
              if (v21)
              {
                v143 = CFRetain(v21);
              }

              else
              {
                v143 = 0;
              }

              *(DerivedStorage + 280) = v143;
              if (a3 && (OUTLINED_FUNCTION_19_6(), CFDictionaryGetInt64()))
              {
                if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
                {
                  OUTLINED_FUNCTION_2_0();
                  LogPrintF(v155, v156, v157, v158, a1);
                }
              }

              else
              {
                CMBaseObjectGetDerivedStorage();
                APSGetFBOPropertyInt64();
                APSRTCReportingAgentCreate();
                *(DerivedStorage + 288) = CFDictionaryCreateMutable(v199, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                APSGetCPULoadAverage();
                CFDictionarySetInt64();
                CFDictionarySetDouble();
                CFDictionarySetInt64();
                v159 = MEMORY[0x277CBED28];
                if (!*(DerivedStorage + 240))
                {
                  v159 = MEMORY[0x277CBED10];
                }

                CFDictionarySetValue(*(DerivedStorage + 288), @"isPerAppDisplay", *v159);
              }

              endpoint_postIsInUseDidChangeNotification(a1, *(DerivedStorage + 480));
              if ((a2 & 4) == 0 || *(DerivedStorage + 304) || (Mutable = CFSetCreateMutable(v199, 0, MEMORY[0x277CBF158]), (*(DerivedStorage + 304) = Mutable) != 0))
              {
                v20 = 0;
                goto LABEL_246;
              }

              APSLogErrorAt();
              goto LABEL_330;
            }

            v20 = v137;
          }

          APSLogErrorAt();
LABEL_309:
          APSLogErrorAt();
          goto LABEL_246;
        }

        v187 = v12;
        if (APSIsOpenNANSenderEnabled())
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_6_16();
          v216 = 3221225472;
          v217 = __endpoint_createHandleNANAuthorizationRequestBlockWrapper_block_invoke;
          v218 = &unk_2784A0DC0;
          v219 = a1;
          v220 = v73;
          v221[0] = 0;
          v74 = _Block_copy(&aBlock);
          OUTLINED_FUNCTION_9_11(v74);
          v197 = v221[0];
          if (!v221[0])
          {
            APSLogErrorAt();
            if (v39)
            {
              _Block_release(v39);
            }
          }

          v220 = CMBaseObjectGetDerivedStorage();
          v221[0] = 0;
          OUTLINED_FUNCTION_6_16();
          v216 = 3221225472;
          v217 = __endpoint_createSetAuthorizationStringBlockWrapper_block_invoke;
          v218 = &unk_2784A0E08;
          v219 = a1;
          v75 = _Block_copy(&aBlock);
          OUTLINED_FUNCTION_9_11(v75);
          v196 = v221[0];
          if (!v221[0])
          {
            APSLogErrorAt();
            if (v39)
            {
              _Block_release(v39);
            }

            if (v221[0])
            {
              CFRelease(v221[0]);
            }
          }
        }

        else
        {
          v196 = 0;
          v197 = 0;
        }

        v184 = v214;
        v76 = *(DerivedStorage + 260);
        v77 = *(DerivedStorage + 242);
        v185 = *(DerivedStorage + 244);
        v186 = *(DerivedStorage + 208);
        v78 = CMBaseObjectGetDerivedStorage();
        aBlock = 0;
        v221[0] = 0;
        CMBaseObjectGetDerivedStorage();
        if (qword_280FB1C00 != -1)
        {
          dispatch_once_f(&qword_280FB1C00, &qword_280FB1C08, endpoint_getSessionProtocolOverrideString);
        }

        if (qword_280FB1C08 == @"legacy")
        {
          goto LABEL_136;
        }

        if (!qword_280FB1C08)
        {
          goto LABEL_336;
        }

        if (CFEqual(qword_280FB1C08, @"legacy"))
        {
LABEL_136:
          if (gLogCategory_APEndpoint > 50 || gLogCategory_APEndpoint == -1 && !OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint))
          {
            goto LABEL_155;
          }

          v179 = a1;
          OUTLINED_FUNCTION_2_0();
LABEL_151:
          LogPrintF(v79, v80, v81, v82, v179);
LABEL_155:
          v87 = APSenderSessionLegacyAudioCreate(v199, *(v78 + 440), *(v78 + 40), v186, v221);
          v21 = v190;
          if (v87)
          {
            v20 = v87;
            goto LABEL_211;
          }

          if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
          {
            v181 = v221[0];
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v88, v89, v90, v91, a1, v181);
          }

          goto LABEL_195;
        }

        if (qword_280FB1C08 == @"airplay" || qword_280FB1C08 && CFEqual(qword_280FB1C08, @"airplay"))
        {
          if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v83, v84, v85, v86, a1);
          }
        }

        else
        {
LABEL_336:
          if (APSGetFBOPropertyInt64())
          {
            if (gLogCategory_APEndpoint > 40 || gLogCategory_APEndpoint == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_155;
            }

            v81 = 33554472;
            v179 = a1;
            v79 = &gLogCategory_APEndpoint;
            v80 = "Boolean endpoint_shouldUseLegacySenderSession(FigEndpointRef)";
            v82 = "[%{ptr}] Using APSenderSessionLegacyAudio because endpoint is a legacy speaker.\n";
            goto LABEL_151;
          }
        }

        if (v77)
        {
          v92 = a2 == 16;
        }

        else
        {
          v92 = 1;
        }

        v93 = v202;
        if (v92)
        {
          v93 = 0;
        }

        v183 = v93;
        v94 = CMBaseObjectGetDerivedStorage();
        if (v76)
        {
          if (FigCFEqual())
          {
            v95 = 9;
          }

          else
          {
            v95 = 7;
          }

          v21 = v190;
        }

        else
        {
          v21 = v190;
          if (v188)
          {
            v95 = 8;
          }

          else
          {
            v96 = v94;
            if (a2 == 16)
            {
              if (*(v94 + 49))
              {
                v95 = 6;
              }

              else
              {
                v95 = 1;
              }
            }

            else
            {
              if (!FigCFEqual())
              {
                v98 = v41;
                v97 = v199;
                if (*(v96 + 241))
                {
                  v12 = v187;
                  if (endpoint_isInLocalClusterOfStaticLeader(a1))
                  {
                    v95 = 3;
                  }

                  else if (endpoint_isInLocalStereoPair(a1))
                  {
                    v95 = 11;
                  }

                  else
                  {
                    v95 = 2;
                  }
                }

                else
                {
                  v95 = 0;
                  v12 = v187;
                }

                goto LABEL_182;
              }

              v95 = 4;
            }
          }

          v12 = v187;
        }

        v98 = v41;
        v97 = v199;
LABEL_182:
        v99 = v185;
        if (v185 == 2)
        {
          v191 = v95;
          APEndpointDescriptionGetCMBaseObject();
          v101 = v100;
          v102 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v102)
          {
            v20 = -12782;
            goto LABEL_211;
          }

          v103 = v102(v101, @"ClusterUUID", v199, &aBlock);
          if (v103)
          {
            v20 = v103;
            goto LABEL_211;
          }

          v104 = aBlock;
          v98 = v198;
          v97 = v199;
          v99 = 2;
          v95 = v191;
        }

        else
        {
          v104 = 0;
        }

        v105 = APSenderSessionAirPlayCreate(v97, *(v78 + 440), *(v78 + 40), v184, v95, v99, *(v78 + 16), a2 != 16, v42, SBYTE4(v189), v189, v186, v183, v104, SBYTE4(v188), v98, v197, v196, v221);
        if (v105)
        {
          v20 = v105;
          goto LABEL_211;
        }

        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
        {
          v182 = v221[0];
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v106, v107, v108, v109, a1, v182);
        }

        v110 = v221[0];
        v111 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (v111)
        {
          v111(v110, a1, a1, endpoint_handleEventMessage, endpoint_handleEventMessageCreatingReply);
        }

LABEL_195:
        if (!*(v78 + 464))
        {
          goto LABEL_198;
        }

        APSenderSessionGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v112 = OUTLINED_FUNCTION_11_8();
          v114 = v113(v112);
          if (v114)
          {
            v20 = v114;
            goto LABEL_211;
          }

LABEL_198:
          if (APSSettingsGetInt64())
          {
            if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
            {
              OUTLINED_FUNCTION_2_0();
              LogPrintF(v115, v116, v117, v118, a1);
            }

            APSenderSessionGetCMBaseObject();
            v124 = v123;
            v125 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v125)
            {
              v20 = -12782;
              goto LABEL_211;
            }

            v126 = v125(v124, @"PublishEncryptionKeyDiagnosticMode", *MEMORY[0x277CBED28]);
            if (v126)
            {
              v20 = v126;
              goto LABEL_211;
            }
          }

          else if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
          {
            OUTLINED_FUNCTION_2_0();
            LogPrintF(v119, v120, v121, v122, a1);
          }

          v20 = 0;
          a4 = v221[0];
          goto LABEL_219;
        }

        v20 = -12782;
LABEL_211:
        APSLogErrorAt();
        if (!v221[0])
        {
          a4 = 0;
          goto LABEL_220;
        }

        APSenderSessionGetCMBaseObject();
        if (v127)
        {
          v128 = v127;
          v129 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v129)
          {
            v129(v128);
          }
        }

        CFRelease(v221[0]);
        a4 = 0;
LABEL_219:
        v221[0] = 0;
LABEL_220:
        if (aBlock)
        {
          CFRelease(aBlock);
        }

        if (v20)
        {
          goto LABEL_309;
        }

        goto LABEL_223;
      }

      v20 = v68;
    }

    APSLogErrorAt();
    goto LABEL_321;
  }

  v64 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v64)
  {
    v41 = v64;
    FigCFDictionarySetBoolean();
    goto LABEL_111;
  }

  APSLogErrorAt();
  v196 = 0;
  v197 = 0;
  v198 = 0;
LABEL_330:
  v20 = -16721;
LABEL_246:
  if (a1)
  {
    v161 = CFRetain(a1);
  }

  else
  {
    v161 = 0;
  }

  v203[0] = v161;
  v162 = *(DerivedStorage + 440);
  if (v162)
  {
    v162 = CFRetain(v162);
  }

  v203[1] = v162;
  v210 = v20;
  if (a3)
  {
    v163 = CFRetain(a3);
  }

  else
  {
    v163 = 0;
  }

  v203[2] = a2;
  v203[3] = v200;
  v204 = 1;
  v164 = *(DerivedStorage + 128);
  v209[4] = v163;
  v207 = v164;
  v165 = *(DerivedStorage + 216);
  if (v165)
  {
    v165 = CFRetain(v165);
  }

  v206 = v165;
  v166 = *(DerivedStorage + 232);
  if (v166)
  {
    v166 = CFRetain(v166);
  }

  v208 = v166;
  v167 = CFGetAllocator(a1);
  APEndpointDescriptionGetCMBaseObject();
  v169 = v168;
  v170 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v170)
  {
    v170(v169, @"TransportDevice", v167, v209);
  }

  v209[1] = APEndpointDescriptionCopyDebugString(*(DerivedStorage + 40));
  v171 = *(DerivedStorage + 176);
  if (v171)
  {
    v171 = CFRetain(v171);
  }

  v209[2] = v171;
  v172 = *(DerivedStorage + 184);
  if (v172)
  {
    v172 = CFRetain(v172);
  }

  v209[3] = v172;
  v173 = cf;
  if (cf)
  {
    v173 = CFRetain(cf);
  }

  v209[5] = v173;
  v174 = v192;
  if (v192)
  {
    v174 = CFRetain(v192);
  }

  v213 = *(DerivedStorage + 274);
  v209[6] = v174;
  v209[7] = v194;
  v209[8] = v195;
  v175 = Value;
  if (Value)
  {
    v175 = CFRetain(Value);
  }

  v211 = v175;
  v205 = *(DerivedStorage + 242);
  v176 = *(DerivedStorage + 280);
  if (v176)
  {
    v176 = CFRetain(v176);
  }

  v212 = v176;
  v177 = *(DerivedStorage + 24);
  if (v177 && v209[0])
  {
    APBrowserControllerRegisterEndpointActivating(v177, v209[0], *(DerivedStorage + 48));
  }

  OUTLINED_FUNCTION_7_13();
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  if (a4)
  {
    CFRelease(a4);
  }

  if (v198)
  {
    CFRelease(v198);
  }

  if (v214)
  {
    CFRelease(v214);
  }

  if (v202)
  {
    CFRelease(v202);
  }

  if (v197)
  {
    CFRelease(v197);
  }

  if (v196)
  {
    CFRelease(v196);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return 0;
}

uint64_t endpoint_createMetadataSourceAndCommandSinkIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (!a2 && a3)
  {
    v8 = DerivedStorage;
    v9 = CMBaseObjectGetDerivedStorage();
    if (APSMultiPrimariesEnabled())
    {
      if (!*(v9 + 192))
      {
        if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_createCommandSink(FigEndpointRef, APMediaRemoteCommandSinkRef *)", 33554522, "### [%{ptr}] No routingContextUUID to create commands sink.\n", a1);
        }

        v7 = 4294949690;
        goto LABEL_38;
      }

      v10 = OUTLINED_FUNCTION_45_0();
      v13 = APMediaRemoteCommandSinkCreateWithRoutingContextUUID(v10, v11, v12);
      if (v13)
      {
        v7 = v13;
LABEL_29:
        APSLogErrorAt();
LABEL_38:
        APSLogErrorAt();
        return v7;
      }
    }

    else
    {
      v14 = OUTLINED_FUNCTION_45_0();
      v17 = APMediaRemoteCommandSinkCreateWithNowPlayingAppPID(v14, v15, v16);
      if (v17)
      {
        v7 = v17;
        goto LABEL_29;
      }
    }

    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v18, v19, v20, v21, a1, 0);
    }

    *(v8 + 176) = 0;
    if (a3)
    {
      return 0;
    }

    else
    {
      v22 = CMBaseObjectGetDerivedStorage();
      if (APSMultiPrimariesEnabled())
      {
        if (!*(v22 + 192))
        {
          if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_createMetadataSource(FigEndpointRef, APMetadataSourceRef *)", 33554522, "### [%{ptr}] No routingContextUUID to create metadata source.\n", a1);
          }

          v7 = 4294949690;
          goto LABEL_38;
        }

        v23 = OUTLINED_FUNCTION_45_0();
        v26 = APMetadataSourceCreateWithRoutingContextUUID(v23, v24, v25);
        if (v26)
        {
          v7 = v26;
          goto LABEL_29;
        }
      }

      else
      {
        v27 = OUTLINED_FUNCTION_45_0();
        v30 = APMetadataSourceCreateWithNowPlayingAppPID(v27, v28, v29);
        if (v30)
        {
          v7 = v30;
          goto LABEL_29;
        }
      }

      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v31, v32, v33, v34, a1, 0);
      }

      v7 = 0;
      *(v8 + 184) = 0;
    }
  }

  return v7;
}

uint64_t endpoint_isInLocalStereoPair(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 96) != 7)
  {
    return 0;
  }

  v2 = *(DerivedStorage + 88);
  if (v2)
  {
    return CFBooleanGetValue(v2);
  }

  OUTLINED_FUNCTION_9_5();
  APSCopyTightSyncInfo();
  return 0;
}

uint64_t endpoint_handleHTSecondaryNonPersistentSessionStartedEvent(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 243))
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v3 = *(DerivedStorage + 244);
  FigSimpleMutexUnlock();
  if (v3 != 2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v5);
    return 0;
  }

  APSLogErrorAt();
  return 4294950575;
}

uint64_t endpoint_handleUpdateMC2UCStatus(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = OUTLINED_FUNCTION_47_0(DerivedStorage, @"mc2ucProbeBurstID", v3, v4, v5, v6, v7, v8, v27, 0, v30, 0, 0);
  if (!updated)
  {
    v10 = v9;
    OUTLINED_FUNCTION_14_10();
    if (FigCFDictionaryGetInt32IfPresent())
    {
      Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
      if (Int32IfPresent)
      {
        v18 = OUTLINED_FUNCTION_47_0(Int32IfPresent, @"mc2ucIPVersion", v12, v13, v14, v15, v16, v17, v28, cf, v30, v31, updated);
        if (updated)
        {
          updated = 0;
          v19 = 4;
        }

        else
        {
          v19 = v18;
        }

        FigSimpleMutexLock();
        if (*(DerivedStorage + 216) && (APSenderSessionGetCMBaseObject(), v21 = v20, (v22 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v22(v21, @"MC2UCToken", 0, &cf), cf))
        {
          v23 = FigSimpleMutexUnlock();
          Shared = APMulticastProbeSenderGetShared(v23, v24);
          updated = APMulticastProbeSenderUpdateMC2UC(Shared, cf, v10, v31, HIDWORD(v30), v19);
          if (updated)
          {
            APSLogErrorAt();
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return updated;
}

double endpoint_handleSenderSessionStarted(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    OUTLINED_FUNCTION_20_5();
    v10 = v5;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v6, v7, v8, v9, a2, v10);
  }

  if (!*(DerivedStorage + 120))
  {
    FigSimpleMutexLock();
    if (APSGetFBOPropertyInt64())
    {
      endpointdelegate_sendCurrentVolumeToReceiver(a2, 0);
    }

    CMBaseObjectGetDerivedStorage();

    FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t apEndpoint_SendCommand(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
    {
      if ((*(DerivedStorage + 532) & 0xF) != 0)
      {
        v11 = "Applying";
      }

      else
      {
        v11 = "Not applying";
      }

      APSVolumeConvertDBToSliderValue();
      v22 = *(DerivedStorage + 532) & 0xF;
      v20 = v12;
      v21 = *(DerivedStorage + 536);
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v13, v14, v15, v16, FigEndpoint, v11, *&v20, *&v21, v22, &unk_22229888A);
    }

    if (!*(DerivedStorage + 48) && (*(DerivedStorage + 532) & 0xF) != 0)
    {
      APSVolumeConvertDBToSliderValue();
      endpointdelegate_setVolumeSliderInternal(FigEndpoint, 1, 1, 1, v17);
    }

    v18 = 0;
  }

  else
  {
    v18 = apEndpoint_sendCommandInternal(FigEndpoint, a2, a3, a4, a5);
  }

  FigSimpleMutexUnlock();
  return v18;
}

uint64_t endpoint_updateUGLRCServerIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  v7 = *(CMBaseObjectGetDerivedStorage() + 624);
  if (v7 && ((*(v7 + 16))(v7, a1, a3, a4, &cf), a4))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
    {
      Value = FigCFDictionaryGetValue();
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v8, v9, v10, v11, a1, Value);
    }

    v13 = cf;
    APSenderSessionGetCMBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v16)
    {
      v12 = 4294954514;
LABEL_12:
      APSLogErrorAt();
      goto LABEL_13;
    }

    v12 = v16(v15, @"RCServerInfo", v13);
    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    v17 = "Updated";
    if (!a4)
    {
      v17 = "Removed";
    }

    v24 = v17;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v18, v19, v20, v21, a1, v24, v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

BOOL endpoint_isMediaPresentationModeAvailable(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 472) && !APSGetFBOPropertyInt64())
  {
    APSGetFBOPropertyInt64();
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    v3 = "not ";
    if (IntWithDefault)
    {
      v3 = "";
    }

    v9 = v3;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v4, v5, v6, v7, a1, v9);
  }

  return IntWithDefault != 0;
}

BOOL endpoint_isAudioTimelineEstablished(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 160);
  if (!v2)
  {
    goto LABEL_7;
  }

  if (!CFDictionaryGetValue(v2, *MEMORY[0x277CC1960]) || !APSGetFBOPropertyInt64())
  {
    if (CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1968]))
    {
      v3 = APSGetFBOPropertyInt64() != 0;
      goto LABEL_8;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v3 = 1;
LABEL_8:
  FigSimpleMutexUnlock();
  return v3;
}

double endpoint_getCurrentRTPTime@<D0>(uint64_t a2@<X8>)
{
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x277CC0898];
  *a2 = *MEMORY[0x277CC0898];
  *(a2 + 16) = *(v4 + 16);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 144) == 2)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1960]);
    endpoint_getCurrentRTPTimeFromStream(Value, &v8, a2);
    if (!*a2)
    {
      v7 = CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1968]);
      endpoint_getCurrentRTPTimeFromStream(v7, &v8, a2);
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

void endpoint_getCurrentRTPTimeFromStream(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x277CC0898];
  *a3 = *MEMORY[0x277CC0898];
  *(a3 + 16) = *(v5 + 16);
  if (!a1)
  {
    goto LABEL_10;
  }

  FigEndpointStreamGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v9 = -12782;
LABEL_6:
    APSLogErrorAt();
    goto LABEL_7;
  }

  v6 = OUTLINED_FUNCTION_11_8();
  v8 = v7(v6);
  if (v8)
  {
    v9 = v8;
    goto LABEL_6;
  }

LABEL_10:
  v9 = 0;
LABEL_7:
  if (a2)
  {
    *a2 = v9;
  }
}

CFMutableDictionaryRef endpoint_copyClusterInfo(uint64_t a1)
{
  v8 = 0;
  v6 = 0;
  cf = 0;
  v4 = 0;
  v5 = 0;
  Mutable = *(CMBaseObjectGetDerivedStorage() + 40);
  if (!Mutable)
  {
    goto LABEL_18;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2 || (v2(Mutable, &v8, &cf, &v6, 0, &v5, &v4, 0), !v8))
  {
    Mutable = 0;
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  else
  {
LABEL_18:
    APSLogErrorAt();
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

double endpoint_handleStreamFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Int64 = 4294895446;
  CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Int64 = CFDictionaryGetInt64();
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v9, v10, v11, v12, a2, a4, 0, "no");
  }

  FigSimpleMutexLock();
  endpoint_updateStatus(a2, Int64, 1);
  FigSimpleMutexUnlock();
  return result;
}

void endpoint_suspendAndDissociateStreamsDictionaryEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "void endpoint_suspendAndDissociateStreamsDictionaryEntry(const void *, const void *, void *)", a3, "[%{ptr}] %s: type=%@, stream=[%{ptr}]\n");
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    OUTLINED_FUNCTION_9_5();
    v9(v5, v6, v7, v8);
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v10)
  {
    v10(a2);
  }

  v12 = *(a3 + 40);
  v11 = *(a3 + 48);
  v15 = 0;
  if (v11)
  {
    if (v12)
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v14(CMBaseObject, @"RTCStats", *MEMORY[0x277CBECE8], &v15);
        if (v15)
        {
          FigCFArrayApplyFunction();
          if (v15)
          {
            CFRelease(v15);
          }
        }
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void endpoint_invalidatePlaybackSession()
{
  OUTLINED_FUNCTION_36_1();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v4, v5, v6, v7, v0, v1);
  }

  CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
  if (CMBaseObject)
  {
    v9 = CMBaseObject;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v10)
    {
      v10(v9);
    }
  }

  CMBaseObjectGetDerivedStorage();
  theDict = 0;
  if (v2)
  {
    if (v3 && (v11 = *MEMORY[0x277CBECE8], (MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v3)) != 0))
    {
      v13 = MutableCopy;
      v14 = FigEndpointPlaybackSessionGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, @"RTCStats", v11, &theDict);
        if (theDict)
        {
          if (CFDictionaryContainsKey(theDict, @"activateToStartMs"))
          {
            if (CFDictionaryMergeDictionary())
            {
              APSLogErrorAt();
            }

            else
            {
              CFDictionarySetValue(v13, @"sessionType", @"Playback");
              APSRTCReportingAgentSendEvent();
              if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
              {
                OUTLINED_FUNCTION_2_0();
                LogPrintF(v16, v17, v18, v19, v0, v1, v13);
              }
            }
          }
        }
      }

      CFRelease(v13);
      if (theDict)
      {
        CFRelease(theDict);
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

void endpoint_reportStreamMetricsArrayIterator(const __CFDictionary *a1, uint64_t a2)
{
  if (a2 && *a2 && a1 && *(a2 + 8))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *a2);
    if (MutableCopy)
    {
      v4 = MutableCopy;
      if (CFDictionaryMergeDictionary() || (Value = CFDictionaryGetValue(a1, @"sessionType")) == 0)
      {
        APSLogErrorAt();
      }

      else
      {
        v6 = Value;
        if (FigCFEqual())
        {
          APSRTCReportingAgentSendEvent();
        }

        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
        {
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v7, v8, v9, v10, v6, v4);
        }
      }

      CFRelease(v4);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

uint64_t endpoint_logTransportDiscoveryDurationIfEventPresent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = APSEventRecorderGetEventTimeRecursive();
  if (result)
  {
    APBrowserGetStartEventForBrowserDeviceEvent();
    OUTLINED_FUNCTION_11_8();
    result = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    if (gLogCategory_APEndpoint <= 40)
    {
      OUTLINED_FUNCTION_30_2();
      if (!v5)
      {
        return OUTLINED_FUNCTION_6(&gLogCategory_APEndpoint, "OSStatus endpoint_logTransportDiscoveryDurationIfEventPresent(APSEventRecorderRef, APSEventRecorderRef, APSEventRecorderEvent, char *)", v4, "| %-40s: %lld ms\n");
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return OUTLINED_FUNCTION_6(&gLogCategory_APEndpoint, "OSStatus endpoint_logTransportDiscoveryDurationIfEventPresent(APSEventRecorderRef, APSEventRecorderRef, APSEventRecorderEvent, char *)", v4, "| %-40s: %lld ms\n");
      }
    }
  }

  return result;
}

double endpoint_handlePlaybackSessionInvalidated(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "void endpoint_handlePlaybackSessionInvalidated(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v6, "[%{ptr}] Handle playback session invalidated [%{ptr}]\n");
  }

  FigSimpleMutexLock();
  endpoint_unsubscribePlaybackSession(a4, a2);
  endpoint_invalidatePlaybackSession();
  v8 = *(DerivedStorage + 304);
  if (v8)
  {
    CFSetRemoveValue(v8, a4);
  }

  endpoint_updateCurrentVolumeControlType(a2);
  endpoint_updateIsVolumeAndMuteControlSupported(a2);
  endpoint_updateVideoPlaybackIsActive(a2);

  FigSimpleMutexUnlock();
  return result;
}

void endpoint_updateFeaturesInternalWithContext(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v48 = *(a1 + 3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(v49, 0xA8uLL);
  v7 = *(DerivedStorage + 136);
  OUTLINED_FUNCTION_41_1();
  if (v8 ^ v9 | v11)
  {
    OUTLINED_FUNCTION_24_4();
    if (!v11 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_updateFeaturesInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", (v1 + 20), "[%{ptr}] UpdateFeatures for '%@' with features %#ll{flags} -> %#ll{flags} and options %@\n", v3, *(DerivedStorage + 440), v7, &unk_222298838, v4, &unk_222298838, v5);
    }
  }

  if (*(DerivedStorage + 48))
  {
    APSLogErrorAt();
LABEL_112:
    v14 = 0;
    v28 = -6705;
    goto LABEL_65;
  }

  if (*(DerivedStorage + 144) != 2)
  {
    APSLogErrorAt();
    v14 = 0;
    v28 = -6709;
    goto LABEL_65;
  }

  v10 = v7 | v4;
  v11 = (v7 | v4) == v7 && v10 == v4;
  if (v11)
  {
    v14 = 0;
    v28 = 0;
    goto LABEL_65;
  }

  if (v10 != v7 && v10 != v4)
  {
    goto LABEL_112;
  }

  if (!v5)
  {
    v14 = 0;
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(v5, @"ParentContextID");
  if (!Value)
  {
    Value = CFDictionaryGetValue(v5, *MEMORY[0x277CC09F8]);
  }

  if (*(CMBaseObjectGetDerivedStorage() + 48) || !APSGetFBOPropertyInt64() || !endpoint_isInLocalCluster(v3) || !APSIsMemberOfPersistentGroup())
  {
    v14 = 0;
    if (Value)
    {
      goto LABEL_32;
    }

LABEL_27:
    OUTLINED_FUNCTION_40_1();
    if (v8 ^ v9 | v11 && (v16 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint)))
    {
      v47 = *(DerivedStorage + 152);
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "OSStatus endpoint_updateFeaturesInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", v15, "[%{ptr}] Removing parent context ID '%@'\n");
    }

    v19 = *(DerivedStorage + 152);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 152) = 0;
    }

    if (!*(DerivedStorage + 120))
    {
      if (!v5)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

LABEL_115:
    APSLogErrorAt();
    v28 = -16723;
    goto LABEL_65;
  }

  v14 = CFDictionaryGetValue(v5, @"GroupID");
  if (!Value)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (!*(DerivedStorage + 152))
  {
    *(DerivedStorage + 152) = Value;
    CFRetain(Value);
    OUTLINED_FUNCTION_40_1();
    if (v8 ^ v9 | v11)
    {
      if (v18 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint))
      {
        v47 = Value;
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "OSStatus endpoint_updateFeaturesInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", v17, "[%{ptr}] UpdateFeatures parent context ID '%@'\n");
      }
    }
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpoint <= 90)
    {
      OUTLINED_FUNCTION_24_4();
      if (!v11 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_updateFeaturesInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", (v10 + 60), "[%{ptr}] ### Invalid UpdateFeatures parent context ID '%@'\n", v3, Value);
      }

      v28 = -16726;
      goto LABEL_65;
    }

LABEL_118:
    v28 = -16726;
    goto LABEL_65;
  }

  if (*(DerivedStorage + 120))
  {
    goto LABEL_115;
  }

LABEL_46:
  v20 = CFGetTypeID(v5);
  if (v20 != CFDictionaryGetTypeID())
  {
    APSLogErrorAt();
    v28 = -16720;
    goto LABEL_65;
  }

LABEL_47:
  if (!*(DerivedStorage + 216))
  {
    APSLogErrorAt();
    v28 = -17605;
    goto LABEL_65;
  }

  if (!*(DerivedStorage + 40))
  {
    APSLogErrorAt();
    goto LABEL_118;
  }

  if (v10 != v7)
  {
    if (v5)
    {
      ActivationOptions = endpoint_readActivationOptions(v5, DerivedStorage + 128);
      if (ActivationOptions)
      {
        goto LABEL_110;
      }

      v22 = FigCFEqual();
    }

    else
    {
      v22 = 0;
    }

    if (endpoint_shouldOnlyBeActivatedAsPartOfCluster(v3) && !*(DerivedStorage + 242))
    {
      APSLogErrorAt();
      v28 = -72277;
      goto LABEL_65;
    }

    ActivationOptions = endpoint_ensureSharedContextCreated(v3, v4, v5, v22);
    if (!ActivationOptions)
    {
      MetadataSourceAndCommandSinkIfNeeded = endpoint_createMetadataSourceAndCommandSinkIfNeeded(v3, v7, v4);
      if (MetadataSourceAndCommandSinkIfNeeded)
      {
        v28 = MetadataSourceAndCommandSinkIfNeeded;
        APSLogErrorAt();
        goto LABEL_65;
      }

      goto LABEL_58;
    }

LABEL_110:
    v28 = ActivationOptions;
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_41_1();
  if (v8 ^ v9 | v11)
  {
    OUTLINED_FUNCTION_24_4();
    if (!v11 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_updateFeaturesInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", (v10 + 20), "[%{ptr}] Handling as deactivation.\n", v3, v47);
    }
  }

  endpoint_partiallyResetActivationState(DerivedStorage + 128);
  v44 = endpoint_isInLocalStereoPair(v3);
  if (!v4 && v44)
  {
    endpoint_stopMediaRemoteAndMetadataServices(v3, *(DerivedStorage + 184));
    v45 = *(DerivedStorage + 184);
    if (v45)
    {
      CFRelease(v45);
      *(DerivedStorage + 184) = 0;
    }

    v46 = *(DerivedStorage + 176);
    if (v46)
    {
      CFRelease(v46);
      *(DerivedStorage + 176) = 0;
    }
  }

LABEL_58:
  if ((v4 & 4) == (v7 & 4))
  {
    goto LABEL_64;
  }

  v24 = *(DerivedStorage + 304);
  if ((v4 & 4) == 0)
  {
    if (v24)
    {
      OUTLINED_FUNCTION_5_19();
      CFSetApplyFunction(v25, v26, v3);
    }

    goto LABEL_64;
  }

  if (v24 || (Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]), (*(DerivedStorage + 304) = Mutable) != 0))
  {
LABEL_64:
    v28 = 0;
    goto LABEL_65;
  }

  APSLogErrorAt();
  v28 = -16721;
LABEL_65:
  if (v3)
  {
    v29 = CFRetain(v3);
  }

  else
  {
    v29 = 0;
  }

  v49[0] = v29;
  v30 = *(DerivedStorage + 440);
  if (v30)
  {
    v30 = CFRetain(v30);
  }

  v49[1] = v30;
  v56 = v28;
  v31 = *(DerivedStorage + 280);
  if (v31)
  {
    v31 = CFRetain(v31);
  }

  v57 = v31;
  if (v5)
  {
    v32 = CFRetain(v5);
  }

  else
  {
    v32 = 0;
  }

  v49[2] = v4;
  v49[3] = v7;
  v50 = 0;
  v33 = *(DerivedStorage + 128);
  v54[4] = v32;
  v52 = v33;
  v34 = *(DerivedStorage + 216);
  if (v34)
  {
    v34 = CFRetain(v34);
  }

  v51 = v34;
  v35 = *(DerivedStorage + 232);
  if (v35)
  {
    v35 = CFRetain(v35);
  }

  v53 = v35;
  v36 = CFGetAllocator(v3);
  APEndpointDescriptionGetCMBaseObject();
  v38 = v37;
  v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v39)
  {
    v39(v38, @"TransportDevice", v36, v54);
  }

  v54[1] = APEndpointDescriptionCopyDebugString(*(DerivedStorage + 40));
  v40 = *(DerivedStorage + 176);
  if (v40)
  {
    v40 = CFRetain(v40);
  }

  v54[2] = v40;
  v41 = *(DerivedStorage + 184);
  if (v41)
  {
    v41 = CFRetain(v41);
  }

  v54[3] = v41;
  if (v14)
  {
    v42 = CFRetain(v14);
  }

  else
  {
    v42 = 0;
  }

  v54[5] = v42;
  v55 = v48;
  OUTLINED_FUNCTION_7_13();
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v43 = a1[2];
  if (v43)
  {
    CFRelease(v43);
  }
}

const void *endpoint_copyPropertyFromEndpointDescription_cold_4(uint64_t a1, _DWORD *a2, void *a3)
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

uint64_t endpoint_copyPropertyFromEndpointDescription_cold_6()
{
  OUTLINED_FUNCTION_10_11();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_11_8();
    result = v2(v1);
  }

  else
  {
    result = 4294954514;
  }

  *v0 = result;
  return result;
}

uint64_t endpoint_copyPropertyFromEndpointDescription_cold_8()
{
  OUTLINED_FUNCTION_10_11();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_11_8();
    result = v2(v1);
  }

  else
  {
    result = 4294954514;
  }

  *v0 = result;
  return result;
}

CFTypeRef endpoint_copyPropertyFromEndpointDescription_cold_9(uint64_t a1, void *a2)
{
  v3 = APSGetFBOPropertyInt64();
  v4 = MEMORY[0x277CBED28];
  if (!v3)
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

CFTypeRef endpoint_copyPropertyFromEndpointDescription_cold_10(uint64_t a1, void *a2)
{
  isThirdPartyTVFamily = endpoint_isThirdPartyTVFamily(a1);
  v4 = MEMORY[0x277CBED28];
  if (!isThirdPartyTVFamily)
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

CFTypeRef endpoint_copyPropertyFromEndpointDescription_cold_11(uint64_t a1, void *a2)
{
  v5 = 0;
  endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent(a1, @"supportsFPSSecureStop", &v5);
  v3 = MEMORY[0x277CBED28];
  if (!v5)
  {
    v3 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v3);
  *a2 = result;
  return result;
}

CFTypeRef endpoint_copyPropertyFromEndpointDescription_cold_12(uint64_t a1, void *a2)
{
  v3 = APSGetFBOPropertyInt64();
  v4 = MEMORY[0x277CBED10];
  if (!v3)
  {
    v4 = MEMORY[0x277CBED28];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

void endpoint_copyUsesExternalPlaybackByDefault_cold_1(uint64_t a1, _DWORD *a2)
{
  if (gLogCategory_APEndpoint <= 30)
  {
    OUTLINED_FUNCTION_30_2();
    if (!v4 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "OSStatus endpoint_copyUsesExternalPlaybackByDefault(FigEndpointRef, CFTypeRef *)", v3, "[%{ptr}] endpoint is not activated during copy property %s\n");
    }
  }

  *a2 = -17606;
}

uint64_t endpoint_copyExternalPlaybackCompetingStreams_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpoint <= 30)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "void endpoint_copyExternalPlaybackCompetingStreams(FigEndpointRef, CFTypeRef *)", a3, "[%{ptr}] Screen stream doesn't exist during copy property %s\n");
    }

    result = OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint);
    if (result)
    {
      return OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "void endpoint_copyExternalPlaybackCompetingStreams(FigEndpointRef, CFTypeRef *)", a3, "[%{ptr}] Screen stream doesn't exist during copy property %s\n");
    }
  }

  return result;
}

uint64_t endpointdelegate_setVolumeSliderInternal_cold_2(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 440);
  v6 = *(a1 + 448);
  APSVolumeConvertSliderValueToDB();
  v13 = v7;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11, "endpointdelegate_setVolumeSliderInternal", a2, v5, v6, *&v13, a3);
}

uint64_t endpointdelegate_setVolumeSliderInternal_cold_3(uint64_t a1, char a2, uint64_t a3, float a4)
{
  APSVolumeConvertSliderValueToDB();
  v9 = v8;
  v10 = a4;
  APSVolumeConvertSliderValueToDB();
  v12 = v11;
  v13 = "no";
  if (*(a1 + 516))
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  if (!a2)
  {
    v13 = v14;
  }

  v20 = v12;
  v21 = *(a1 + 512);
  v22 = v14;
  v23 = v13;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v15, v16, v17, v18, a3, *&v9, *&v10, *&v20, *&v21, v22, v23);
}

uint64_t endpointdelegate_setVolumeSliderInternal_cold_5()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpointdelegate_setIsMuted_cold_1(uint64_t a1)
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

_BYTE *endpointdelegate_sendCurrentVolumeToReceiver_cold_1(_BYTE *result)
{
  if (gLogCategory_APEndpoint <= 50)
  {
    v1 = "YES";
    if (gLogCategory_APEndpoint != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_2_0();
      return LogPrintF(v2, v3, v4, v5, "endpointdelegate_sendCurrentVolumeToReceiver", v1);
    }

    v6 = result;
    result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint);
    if (result)
    {
      if (!*v6)
      {
        v1 = "NO";
      }

      goto LABEL_3;
    }
  }

  return result;
}

uint64_t endpointdelegate_sendCurrentVolumeToReceiver_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_42_1(a1);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t endpointdelegate_sendSetVolumeMessageIfNeeded_cold_1(float *a1, uint64_t a2)
{
  v8 = *a1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, a2, *&v8, 0xC03E000000000000);
}

uint64_t endpointdelegate_sendSetVolumeMessageIfNeeded_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_42_1(a1);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

void endpointdelegate_sendSetVolumeMessageIfNeeded_cold_3()
{
  if (gLogCategory_APEndpoint <= 30)
  {
    OUTLINED_FUNCTION_44_0();
    if (!v1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "void endpointdelegate_sendSetVolumeMessageIfNeeded(void *)", v0, "[AirPlayVolume] [%{ptr}] sendVolume: Volume %.3f dB already sent to endpoint; Dropping volumeDB = %.3f dB (muted=%s). \n");
    }
  }
}

void endpointdelegate_sendSetVolumeMessageIfNeeded_cold_4()
{
  if (gLogCategory_APEndpoint <= 50)
  {
    OUTLINED_FUNCTION_44_0();
    if (!v3 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v4, v5, v6, v7, v0, v2, v1);
    }
  }
}

uint64_t endpointdelegate_sendSetVolumeMessageIfNeeded_cold_5(uint64_t result, float a2)
{
  if (gLogCategory_APEndpoint <= 50)
  {
    v2 = result;
    if (gLogCategory_APEndpoint != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint), result))
    {
      OUTLINED_FUNCTION_2_0();
      return LogPrintF(v4, v5, v6, v7, v2, a2);
    }
  }

  return result;
}

void apEndpoint_sendCommand_cold_5(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void apEndpoint_sendCommand_cold_8()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_30_2();
    if (!v1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "void apEndpoint_sendCommand(void *)", v0, "[%{ptr}] Unable to configure peers because endpoint doesn't support HK peer management\n");
    }
  }

  OUTLINED_FUNCTION_38();
}

uint64_t apEndpoint_sendCommand_cold_10()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t endpoint_sendChangeRelativeVolumeMessage_cold_1()
{
  OUTLINED_FUNCTION_20_5();
  v7 = v0;
  v8 = v1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v2, v3, v4, v5, v7, v8);
}

void endpoint_sendChangeRelativeVolumeMessage_cold_4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_APEndpoint <= 50)
  {
    OUTLINED_FUNCTION_26_4();
    if (!v5 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_20_5();
      v11 = v6;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v7, v8, v9, v10, v3, v11);
    }
  }

  *a3 = -17606;
}

void endpoint_sendChangeRelativeVolumeMessage_cold_5(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_APEndpoint <= 50)
  {
    OUTLINED_FUNCTION_26_4();
    if (!v5 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_20_5();
      v11 = v6;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v7, v8, v9, v10, v3, v11);
    }
  }

  *a3 = 0;
}

uint64_t endpoint_Deactivate_cold_4(uint64_t a1)
{
  v7 = *MEMORY[0x277CC0D10];
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, a1, v7);
}

uint64_t endpoint_activateInternal_cold_2(uint64_t *a1, char a2)
{
  v2 = "Activating";
  if (!a2)
  {
    v2 = "UpdateFeatures";
  }

  v10 = a1[9];
  v11 = a1[6];
  v8 = *a1;
  v9 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v8, v9, v10, v11);
}

void endpoint_activateInternal_cold_13(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  APMetadataSourceStart(a1);
  if (gLogCategory_APEndpoint < 51 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    v10 = *a2;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v6, v7, v8, v9, a3, v10, a1);
  }
}

uint64_t endpoint_activateInternal_cold_15()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

void endpoint_activateInternal_cold_16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint)))
  {
    OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "void endpoint_activateInternal(void *)", a3, "### [%{ptr}] None of the requested features %#ll{flags} is supported\n");
  }

  OUTLINED_FUNCTION_6_0();
}

void endpoint_activateInternal_cold_18(uint64_t a1, void *a2)
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_30_2();
    if (!v4 || OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "void endpoint_gatherActivationMetricsIfNeeded(APEndpointActivationContext *, OSStatus)", v3, "[%{ptr}] activationMetrics already gathered\n");
    }
  }

  *a2 = 0;
}

uint64_t endpoint_handleAuthorizationRequired_cold_10()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpoint_handleAuthorizationRequired_cold_11()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpoint_handleEventMessageCreatingReply_cold_16(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpoint, "OSStatus endpoint_processCommandCreatingResponse(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", a3, "### [%{ptr}] Unrecognized command '%@'\n");
  }

  result = OUTLINED_FUNCTION_33_0(&gLogCategory_APEndpoint);
  if (result)
  {
    return OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpoint, "OSStatus endpoint_processCommandCreatingResponse(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", a3, "### [%{ptr}] Unrecognized command '%@'\n");
  }

  return result;
}

void endpoint_createCommChannelInternal_cold_4()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_23_7();
    if (!v1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "OSStatus endpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", v0, "### [%{ptr}] Unsupported controlType: %d\n");
    }
  }

  OUTLINED_FUNCTION_38();
}

void endpoint_createCommChannelInternal_cold_6()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_23_7();
    if (!v1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "OSStatus endpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", v0, "[%{ptr}] RemoteControlSession with channelID %'@ already exists");
    }
  }

  OUTLINED_FUNCTION_6_0();
}

void endpoint_createCommChannelInternal_cold_12()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_23_7();
    if (!v1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "OSStatus endpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", v0, "[%{ptr}] Unsupported RCS client %@\n");
    }
  }

  OUTLINED_FUNCTION_38();
}

uint64_t endpoint_handleRCSClosed_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpoint <= 90)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "void endpoint_handleRCSClosed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v4, "[%{ptr}] Failed to handle RCS [%{ptr}] invalidation: %#m\n");
    }

    result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint);
    if (result)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "void endpoint_handleRCSClosed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v4, "[%{ptr}] Failed to handle RCS [%{ptr}] invalidation: %#m\n");
    }
  }

  return result;
}

uint64_t endpoint_handleIdleStateChanged_cold_1_0(char a1, uint64_t a2)
{
  v2 = "yes";
  if (!a1)
  {
    v2 = "no";
  }

  v9 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a2, v9);
}

void __apEndpoint_handleInvalidateIncomingRCSCommand_block_invoke_cold_1()
{
  if (gLogCategory_APEndpoint <= 90)
  {
    OUTLINED_FUNCTION_26_4();
    if (!v1 || OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "OSStatus apEndpoint_handleInvalidateIncomingRCSCommand(FigEndpointRef, CFDictionaryRef)_block_invoke", v0, "[%{ptr}] Invalidating incoming RCS [%{ptr}] failed with error: %#m");
    }
  }
}

uint64_t endpoint_handleSimulateEndpointFailed_cold_1(const void *a1, int *a2)
{
  v4 = -72278;
  result = CFEqual(a1, @"SystemRequestToStop");
  if (!result)
  {
    result = CFEqual(a1, @"TightSyncBuddyRequestToStop");
    if (result)
    {
      v4 = -72274;
    }

    else
    {
      result = CFEqual(a1, @"ReceiverSentPreventPlayback");
      if (result)
      {
        v4 = -17603;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  *a2 = v4;
  return result;
}

double endpoint_handleSimulateEndpointFailed_cold_2(uint64_t a1, const void *a2, uint64_t a3)
{
  FigSimpleMutexLock();
  endpoint_updateStatus(a2, a3, *(a1 + 144) == 2);

  FigSimpleMutexUnlock();
  return result;
}

uint64_t endpointdelegate_getInitialVolumeDBAndIsMuted_cold_1(float *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  APSVolumeConvertDBToSliderValue();
  v12 = v6;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v7, v8, v9, v10, a2, *&v5, *&v12, a3, &unk_22229888A);
}

uint64_t endpoint_updateScreenRelatedConfiguration_cold_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpoint <= 90)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "void endpoint_updateScreenRelatedConfiguration(FigEndpointRef, APSenderSessionRef, CFDictionaryRef)", a3, "[%{ptr}] NULL sender session when updating screen related configuration\n");
    }

    result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint);
    if (result)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "void endpoint_updateScreenRelatedConfiguration(FigEndpointRef, APSenderSessionRef, CFDictionaryRef)", a3, "[%{ptr}] NULL sender session when updating screen related configuration\n");
    }
  }

  return result;
}

uint64_t endpoint_setupStreams_cold_10(uint64_t a1)
{
  v7 = *MEMORY[0x277CC0D10];
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, a1, v7);
}

uint64_t endpoint_updateVideoPlaybackIsActive_cold_1(char a1, uint64_t a2)
{
  v2 = "yes";
  if (!a1)
  {
    v2 = "no";
  }

  v9 = v2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, a2, v9);
}

uint64_t endpoint_updateVideoPlaybackIsActive_cold_2()
{
  APSLogErrorAt();
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950575, "(Fig)", 5574, v0);
}

uint64_t endpoint_deactivateInternal_cold_2(__int128 *a1)
{
  v7 = *(a1 + 3);
  v6 = *a1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6, v7);
}

uint64_t endpoint_deactivateInternal_cold_3(uint64_t *a1)
{
  v7 = a1[10];
  v6 = *a1;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6, v7);
}

void endpoint_deactivateInternal_cold_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "void endpoint_collectMC2UCMetrics(FigEndpointRef, APSenderSessionRef, CFMutableDictionaryRef)", a3, "No mc2uc metrics found\n");
  }
}

void endpoint_deactivateInternal_cold_7()
{
  OUTLINED_FUNCTION_36_1();
  CFDictionarySetDouble();
  CFDictionarySetInt64();
  *v2 = CFRetain(*v1);
  *(v2 + 24) = CFRetain(@"fadeAudio");
  *(v2 + 32) = CFRetain(v0);
  v4 = *v3;
  if (*v3)
  {
    v4 = CFRetain(v4);
  }

  *(v2 + 16) = v4;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  apEndpoint_sendCommand(v2);
  usleep(1000000 * *(v1 + 80));
  CFRelease(v0);
}

uint64_t endpoint_deactivateInternal_cold_9(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  result = endpoint_updateUGLRCServerIfNeeded(*a1, *a2, 0, 0);
  if (result)
  {
    if (gLogCategory_APEndpoint <= 60)
    {
      if (gLogCategory_APEndpoint != -1 || (result = OUTLINED_FUNCTION_33_0(&gLogCategory_APEndpoint), result))
      {
        result = OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpoint, "void endpoint_deactivateInternal(void *)", v5, "[%{ptr}] Failed to stop UGL-RCServer (err: %#m)");
      }
    }
  }

  *a3 = 0;
  return result;
}

uint64_t endpoint_createAudioHALDevices_cold_1()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v0, v1, v2, v3);
}

uint64_t endpoint_setupAudioStream_cold_3()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpoint_setupAudioStream_cold_7()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t endpoint_setupScreenStream_cold_5(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t endpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_cold_1(uint64_t *a1)
{
  v8 = a1[1];
  v9 = a1[7];
  v6 = *a1;
  v7 = a1[2];
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6, v7, v8, v9);
}

uint64_t endpoint_handleStreamBadgingFormatInfoChanged_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = a1;
  result = APSLogErrorAt();
  if (gLogCategory_APEndpoint <= 90)
  {
    if (gLogCategory_APEndpoint != -1 || (result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint), result))
    {
      result = OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "OSStatus endpoint_updateBadgingFormatInfo(FigEndpointRef, FigEndpointStreamRef, Boolean)", v7, "[%{ptr}] unknown badging format info string: %@");
    }
  }

  *a4 = v5;
  return result;
}

uint64_t endpoint_handleStreamBadgingFormatInfoChanged_cold_4(uint64_t a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpoint <= 90)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "void endpoint_handleStreamBadgingFormatInfoChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v2, "[%{ptr}] handle stream badging format info changed error: %#m");
    }

    result = OUTLINED_FUNCTION_4_3(&gLogCategory_APEndpoint);
    if (result)
    {
      return OUTLINED_FUNCTION_4_0(&gLogCategory_APEndpoint, "void endpoint_handleStreamBadgingFormatInfoChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v2, "[%{ptr}] handle stream badging format info changed error: %#m");
    }
  }

  return result;
}

uint64_t __endpoint_handleStreamTimelineEstablished_block_invoke_cold_1(uint64_t a1)
{
  v6 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4, v6);
}

void apEndpoint_AcquireAndCopyResource_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogCategory_APEndpoint <= 60)
  {
    OUTLINED_FUNCTION_30_2();
    if (!v5 || OUTLINED_FUNCTION_33_0(&gLogCategory_APEndpoint))
    {
      OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpoint, "OSStatus apEndpoint_acquireAndCopyEndpointStream(FigEndpointRef, CFDictionaryRef, CFTypeRef *)", v4, "[%{ptr}] %@ stream not found.\n");
    }
  }

  *a3 = -16725;
}

void screenstream_teardownTransportStream(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 136);
  if (!v3)
  {
LABEL_48:
    OUTLINED_FUNCTION_30_3();
    return;
  }

  v4 = DerivedStorage;
  if (gLogCategory_APEndpointStreamScreen <= 40)
  {
    if (gLogCategory_APEndpointStreamScreen != -1 || (v5 = OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointStreamScreen), v3 = *(v4 + 136), v5))
    {
      OUTLINED_FUNCTION_6(&gLogCategory_APEndpointStreamScreen, "void screenstream_teardownTransportStream(FigEndpointStreamRef)", v2, "%@ tearing down transport data stream [%{ptr}]\n");
      v3 = *(v4 + 136);
    }
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v6)
  {
    v6(v3, 0, 0);
  }

  v7 = MEMORY[0x277CBECE8];
  if (!*(v4 + 48))
  {
    v9 = 0;
LABEL_19:
    v16 = *(v4 + 136);
    if (v16)
    {
      CFRelease(v16);
      *(v4 + 136) = 0;
    }

    v17 = (v4 + 528);
    if (*(v4 + 977) && *(v4 + 1128))
    {
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      *&v30 = __sbpd_logHistograms_block_invoke;
      *(&v30 + 1) = &__block_descriptor_tmp_54_0;
      v31 = v4 + 528;
      CFDictionaryApplyBlock();
    }

    v18 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    mach_absolute_time();
    UpTicksToMilliseconds();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"sessionType", @"Screen");
    if (*(v18 + 1128))
    {
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      *&v30 = __sbpd_reportHistograms_block_invoke;
      *(&v30 + 1) = &__block_descriptor_tmp_66_0;
      v31 = Mutable;
      CFDictionaryApplyBlock();
    }

    if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_collectRTCStats(FigEndpointStreamRef)", 33554462, "%@ session ended, RTC Stats: %@\n", *(v18 + 40), Mutable);
    }

    OUTLINED_FUNCTION_1_17();
    OUTLINED_FUNCTION_27_1();
    *&v30 = __screenstream_collectRTCStats_block_invoke;
    *(&v30 + 1) = &__block_descriptor_tmp_65_1;
    v31 = v18;
    v32 = Mutable;
    dispatch_sync(v20, &block);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v21 = *(v4 + 968);
    block = *(v4 + 952);
    v30 = v21;
    v22 = *(v4 + 936);
    if (v22)
    {
      CFRelease(v22);
      *(v4 + 936) = 0;
    }

    v23 = *(v4 + 984);
    if (v23)
    {
      CFRelease(v23);
      *(v4 + 984) = 0;
    }

    if (*v17)
    {
      CFRelease(*v17);
      *v17 = 0;
    }

    v24 = *(v4 + 536);
    if (v24)
    {
      CFRelease(v24);
      *(v4 + 536) = 0;
    }

    v25 = *(v4 + 1128);
    if (v25)
    {
      CFRelease(v25);
    }

    bzero((v4 + 528), 0x270uLL);
    v27 = v30;
    *(v4 + 952) = block;
    *(v4 + 968) = v27;
    if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointStreamScreen)))
    {
      atomic_load((v4 + 1200));
      OUTLINED_FUNCTION_6(&gLogCategory_APEndpointStreamScreen, "void screenstream_teardownTransportStream(FigEndpointStreamRef)", v26, "%@ transport glitch count: %d\n");
    }

    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_48;
  }

  if (!*(v4 + 394))
  {
    v9 = 0;
LABEL_14:
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v11 = CMBaseObject;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v12)
      {
        v12(v11);
      }
    }

    v13 = *(v4 + 48);
    v14 = *(v4 + 88);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v15)
    {
      v15(v13, v14, v9);
    }

    goto LABEL_19;
  }

  v8 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v8)
  {
    v9 = v8;
    CFDictionarySetValue(v8, @"uuid", *(v4 + 312));
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_30_3();

  APSLogErrorAt();
}

void screenstream_dissociateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "void screenstream_dissociateInternal(FigEndpointStreamRef)", v2, "%@ dissociating screen stream %{ptr}\n");
  }

  if (!*(DerivedStorage + 24))
  {
    v4 = CMBaseObjectGetDerivedStorage();
    if (*(v4 + 24))
    {
      APSLogErrorAt();
    }

    else
    {
      v5 = v4;
      if (*(v4 + 25))
      {
        screenstream_cleanup(a1);
        *(v5 + 25) = 0;
        if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_deactivate(FigEndpointStreamRef, CFDictionaryRef)", v6, "%@ screen stream %{ptr} deactivated\n");
        }
      }
    }

    *(DerivedStorage + 24) = 1;
    CFRetain(a1);
    v7 = *(DerivedStorage + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_dissociateInternal_block_invoke;
    block[3] = &__block_descriptor_tmp_45_0;
    block[4] = a1;
    dispatch_async(v7, block);
  }
}

uint64_t screenstream_handleCommandSetRecordingState(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_handleCommandSetRecordingState(FigEndpointStreamRef, Boolean)", v3, "%@ set recording state to %d\n");
  }

  if (*(DerivedStorage + 24))
  {
    v8 = 4294950534;
    goto LABEL_14;
  }

  v5 = *(DerivedStorage + 160);
  if (!v5)
  {
    return 0;
  }

  if (a2)
  {
    v6 = MEMORY[0x277CBED28];
  }

  else
  {
    v6 = MEMORY[0x277CBED10];
  }

  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    v8 = 4294954514;
LABEL_14:
    APSLogErrorAt();
    return v8;
  }

  v8 = v7(v5, *MEMORY[0x277CD6620], *v6);
  if (v8)
  {
    goto LABEL_14;
  }

  return v8;
}

__CFDictionary *screenstream_createVirtualDisplayActivationOptions(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v92 = 0;
  v2 = CMBaseObjectGetDerivedStorage();
  v3 = v2;
  v4 = *(v2 + 168);
  cf[0] = 0;
  v5 = MEMORY[0x277CD6770];
  v91 = 0;
  v6 = MEMORY[0x277CBECE8];
  v7 = MEMORY[0x277CD6790];
  if (v4)
  {
    goto LABEL_53;
  }

  if (!*(v2 + 394))
  {
    if (*(v2 + 410))
    {
      if (*(v2 + 385))
      {
        v8 = MEMORY[0x277CD6768];
      }

      else
      {
        v8 = MEMORY[0x277CD6788];
      }

      v4 = *v8;
      goto LABEL_45;
    }

    if (*(v2 + 383))
    {
      if (*(v2 + 385))
      {
        if (*(v2 + 368) == 1)
        {
          v9 = MEMORY[0x277CD6768];
        }

        else
        {
          v9 = MEMORY[0x277CD6770];
        }

        v4 = *v9;
        if (*v9)
        {
          goto LABEL_45;
        }
      }

      else if (*(v2 + 386))
      {
        v4 = *MEMORY[0x277CD6770];
        if (*MEMORY[0x277CD6770])
        {
          goto LABEL_45;
        }
      }
    }

    if ((*(v2 + 386) || *(v2 + 336) && APSHas4K60444SenderSupport()) && *(v3 + 1196) <= 0)
    {
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_45;
      }
    }

    if (!*(v3 + 379) || !*(v3 + 48))
    {
      goto LABEL_44;
    }

    APSenderSessionGetCMBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v13 = *v6;
      v92 = v12(v11, @"TransportControlStream", *v6, cf);
      if (!v92)
      {
        v14 = APSGetFBOPropertyInt64();
        if (!v92)
        {
          v4 = 0;
          if (v14 > 0x10 || ((1 << v14) & 0x10102) == 0)
          {
            goto LABEL_45;
          }

          CMBaseObject = FigTransportStreamGetCMBaseObject();
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v16)
          {
            v92 = v16(CMBaseObject, *MEMORY[0x277CE5020], v13, &v91);
            if (!v92)
            {
              if (APSIsDirectLinkInterface())
              {
                OUTLINED_FUNCTION_13_10();
                if (v19 ^ v20 | v75 && (v18 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
                {
                  v86 = v91;
                  OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "CFStringRef screenstream_getVirtualDisplayUsageMode(FigEndpointStreamRef)", v17, "%@ direct wired link on %@\n");
                }

                v4 = *v7;
                goto LABEL_45;
              }

              goto LABEL_44;
            }
          }

          else
          {
            v92 = -12782;
          }
        }
      }
    }

    else
    {
      v92 = -12782;
    }

    APSLogErrorAt();
LABEL_44:
    v4 = 0;
    goto LABEL_45;
  }

  if (!*(v2 + 395) || !FVDUtilsHEVCEncoderSupports4K60())
  {
    goto LABEL_44;
  }

  v4 = *MEMORY[0x277CD6780];
  *(v3 + 975) = 1;
LABEL_45:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (!v4)
  {
    v21 = MEMORY[0x277CD6778];
    if (!*(v3 + 394))
    {
      v21 = MEMORY[0x277CD6760];
    }

    v4 = *v21;
  }

LABEL_53:
  OUTLINED_FUNCTION_13_10();
  if (v19 ^ v20 | v75 && (v23 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
  {
    v86 = v4;
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "CFStringRef screenstream_getVirtualDisplayUsageMode(FigEndpointStreamRef)", v22, "%@ usage mode %@\n");
  }

  *(v3 + 184) = v4;
  v24 = OUTLINED_FUNCTION_12_9();
  Mutable = CFDictionaryCreateMutable(v24, v25, v26, v27);
  *cf = *MEMORY[0x277CBF3A8];
  LODWORD(v91) = 0;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6610], v4);
  v29 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 26))
  {
    v30 = *MEMORY[0x277CBED10];
  }

  else
  {
    v30 = *MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6608], v30);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6590], *(DerivedStorage + 40));
  v31 = OUTLINED_FUNCTION_17_6();
  CFDictionarySetValue(v31, v32, v33);
  OUTLINED_FUNCTION_32_4(v34, v35, @"AirPlay");
  if (APSIsAPValeriaScreenSender() && CFEqual(v4, *v7))
  {
    v36 = OUTLINED_FUNCTION_17_6();
    CFDictionarySetValue(v36, v37, v38);
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v39 = MEMORY[0x277CD6548];
  if (*(DerivedStorage + 394))
  {
    FigCFDictionarySetInt32();
    if (*(DerivedStorage + 396))
    {
      FigCFDictionarySetInt32();
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD65F0], v29);
    CFDictionarySetValue(Mutable, *v39, @"CarPlayScreen");
    v41 = *(DerivedStorage + 232);
    v42 = &unk_27CFF1000;
    if (v41 < 1)
    {
      goto LABEL_106;
    }

    v43 = *(DerivedStorage + 240);
    if (v43 < 1)
    {
      goto LABEL_106;
    }

    v44 = MEMORY[0x277CD65C8];
    v45 = MEMORY[0x277CD65C0];
    if (gLogCategory_APEndpointStreamScreen <= 50)
    {
      if (gLogCategory_APEndpointStreamScreen == -1)
      {
        if (!OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen))
        {
          goto LABEL_89;
        }

        v41 = *(DerivedStorage + 232);
        v43 = *(DerivedStorage + 240);
      }

      v88 = *v45;
      v89 = v43;
      v86 = *v44;
      v87 = v41;
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "CFDictionaryRef screenstream_createVirtualDisplayActivationOptions(FigEndpointStreamRef)", v40, "%@ Setting %@: %d, %@: %d\n");
    }

LABEL_89:
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
LABEL_106:
    v58 = 0;
    goto LABEL_107;
  }

  v46 = *MEMORY[0x277CD6548];
  v47 = MEMORY[0x277CD65D0];
  if (!*(DerivedStorage + 410))
  {
    CFDictionarySetValue(Mutable, v46, @"AirPlayScreen");
    v42 = &unk_27CFF1000;
    if (CFEqual(v4, *MEMORY[0x277CD6770]) && *(DerivedStorage + 336) && APSHas4K60444SenderSupport() && *(DerivedStorage + 1196) <= 0)
    {
      OUTLINED_FUNCTION_13_10();
      if (v19 ^ v20 | v75 && (v61 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
      {
        v86 = 875836518;
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "CFDictionaryRef screenstream_createVirtualDisplayActivationOptions(FigEndpointStreamRef)", v60, "%@ overwriting pixel format to '%C'\n");
      }

      FigCFDictionarySetInt32();
    }

    if (*(DerivedStorage + 368) == 1)
    {
      APSScreenGetMediaPresentationParams();
      OUTLINED_FUNCTION_13_10();
      if (v19 ^ v20 | v75 && (v62 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
      {
        v88 = v91;
        OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "CFDictionaryRef screenstream_createVirtualDisplayActivationOptions(FigEndpointStreamRef)", v63, "%@ display parameters for media presentation mode: size: %.1f x %.1f, fps: %d\n");
      }

      if (*(DerivedStorage + 385))
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD66E0], *(DerivedStorage + 320));
      }

      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (*(DerivedStorage + 384))
      {
        FigCFDictionarySetInt32();
      }

      FigCFDictionarySetInt32();
      if (*(DerivedStorage + 388) >= 1)
      {
        FigCFDictionarySetInt32();
      }
    }

    v64 = *(DerivedStorage + 328);
    if (v64)
    {
      CFDictionarySetValue(Mutable, *v47, v64);
    }

    goto LABEL_106;
  }

  CFDictionarySetValue(Mutable, v46, @"StevenoteAP");
  v48 = OUTLINED_FUNCTION_17_6();
  CFDictionarySetValue(v48, v49, v50);
  v51 = OUTLINED_FUNCTION_17_6();
  CFDictionarySetValue(v51, v52, v53);
  v54 = OUTLINED_FUNCTION_12_9();
  v58 = CFDictionaryCreateMutable(v54, v55, v56, v57);
  CFDictionarySetValue(v58, *MEMORY[0x277CD6520], @"nero");
  v59 = *(DerivedStorage + 328);
  if (v59)
  {
    CFDictionarySetValue(Mutable, *v47, v59);
  }

  v42 = &unk_27CFF1000;
  if (CFEqual(v4, *MEMORY[0x277CD6768]))
  {
    OUTLINED_FUNCTION_25_5();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetValue();
  }

  else
  {
    if (!FVDUtilsHEVCEncoderSupports44410())
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_25_5();
  }

  FigCFDictionarySetInt32();
LABEL_107:
  v65 = *(DerivedStorage + 152);
  if (v65)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6558], v65);
  }

  if (*(DerivedStorage + 192))
  {
    OUTLINED_FUNCTION_13_10();
    if (v19 ^ v20 | v75)
    {
      if (v67 != -1 || (v68 = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen), v66 = *(DerivedStorage + 192), v68))
      {
        v86 = v66;
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "CFDictionaryRef screenstream_createVirtualDisplayActivationOptions(FigEndpointStreamRef)", v66, "%@ using client PID: %@\n");
        v66 = *(DerivedStorage + 192);
      }
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6550], v66);
    OUTLINED_FUNCTION_5_20();
    v69 = FigCFDictionarySetInt();
    OUTLINED_FUNCTION_32_4(v69, v70, @"PerAppAirPlayDisplay");
  }

  if (*(DerivedStorage + 394))
  {
    OUTLINED_FUNCTION_5_20();
    v71 = FigCFDictionarySetInt();
    v73 = @"CarPlayAlternate";
    v74 = @"CarPlay";
    v75 = *(DerivedStorage + 88) == 110;
  }

  else
  {
    if (!*(DerivedStorage + 408))
    {
      goto LABEL_124;
    }

    v71 = FigCFDictionarySetInt();
    v73 = @"Stevenote";
    v74 = @"AirPlayDemo";
    v75 = *(DerivedStorage + 410) == 0;
  }

  if (v75)
  {
    v76 = v74;
  }

  else
  {
    v76 = v73;
  }

  OUTLINED_FUNCTION_32_4(v71, v72, v76);
LABEL_124:
  FigCFDictionarySetInt32();
  *(DerivedStorage + 960) = MillisecondsToUpTicks();
  if (v58)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6580], v58);
    CFRelease(v58);
  }

  if (*(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_13_10();
    if (v19 ^ v20 | v75)
    {
      if (v79 != -1 || (v80 = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen), v77 = *(DerivedStorage + 176), v80))
      {
        v86 = v77;
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "CFDictionaryRef screenstream_createVirtualDisplayActivationOptions(FigEndpointStreamRef)", v78, "%@ applying FVD options overrides: %@\n");
      }
    }

    CFDictionaryApplyBlock();
  }

  v81 = *(DerivedStorage + 416);
  if (v81)
  {
    if (CFEqual(v81, @"tvout"))
    {
      FigCFDictionarySetInt();
LABEL_137:
      FigCFDictionarySetInt();
      return Mutable;
    }

    if (CFEqual(v81, @"mirroringonly"))
    {
      goto LABEL_137;
    }

    if (CFEqual(v81, @"seconddisplay"))
    {
      OUTLINED_FUNCTION_5_20();
      goto LABEL_137;
    }

    if (CFEqual(v81, @"continuity"))
    {
      OUTLINED_FUNCTION_5_20();
      v83 = FigCFDictionarySetInt();
      OUTLINED_FUNCTION_32_4(v83, v84, @"Continuity");
      return Mutable;
    }

    if (CFEqual(v81, @"airplay"))
    {
      goto LABEL_137;
    }

    v85 = v42[1002];
    if (v85 <= 40 && (v85 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamScreen, "void applyMirroringModeOverride(CFMutableDictionaryRef, CFStringRef)", 33554472, "ignoring unsupported mirroring mode override '%@'\n", v81, v86, v87, v88, v89);
    }
  }

  return Mutable;
}

void screenstream_setIsHDR(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = *MEMORY[0x277CD6540];
  Value = CFDictionaryGetValue(v2, *MEMORY[0x277CD6540]);
  if (!Value)
  {
    goto LABEL_13;
  }

  v5 = Value;
  v6 = *MEMORY[0x277CD6530];
  if (!CFEqual(Value, *MEMORY[0x277CD6530]))
  {
    if (CFEqual(v5, *MEMORY[0x277CD6528]))
    {
      if (!*(a1 + 382))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(Mutable, v3, v6);
        v9 = *(a1 + 320);
        *(a1 + 320) = Mutable;
        if (Mutable)
        {
          CFRetain(Mutable);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        CFRelease(Mutable);
      }

      goto LABEL_4;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v7 = 1;
LABEL_5:
  *(a1 + 376) = v7;
}

void APEndpointStreamScreenCreate_cold_21(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus APEndpointStreamScreenCreate(CFAllocatorRef, CFDictionaryRef, CFStringRef, APSenderSessionRef, APEndpointDescriptionRef, APEndpointDisplayDescriptionRef, APSNetworkClockRef, FigEndpointStreamRef *)", a3, "%@ created screen stream %{ptr}%?{end} with transport stream [%{ptr}]\n");
  }
}

uint64_t APEndpointStreamScreenCreate_cold_29(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = @"<NOPREFIX>";
  }

  return LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus APEndpointStreamScreenCreate(CFAllocatorRef, CFDictionaryRef, CFStringRef, APSenderSessionRef, APEndpointDescriptionRef, APEndpointDisplayDescriptionRef, APSNetworkClockRef, FigEndpointStreamRef *)", 33554522, "%@ ### failed to create and activate screen, error: %d\n", v4, a2, v2, v3);
}

uint64_t sbpd_createConfigBBuf_cold_3(uint64_t a1, void *a2)
{
  APSLogErrorAt();
  free(a2);
  return APSLogErrorAt();
}

uint64_t screenstream_initDisplayInfo_cold_11(uint64_t a1, _DWORD *a2)
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamScreen <= 90)
  {
    if (gLogCategory_APEndpointStreamScreen != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_29_3();
      result = LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_initDisplayInfo(StreamScreenStorage *)", 33554522, "%@ ### endpoint display has no UUID, bailing out");
    }
  }

  *a2 = -16760;
  return result;
}

void session_cleanupPendingRequests(const void *a1)
{
  if (a1)
  {
    v2 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
    {
      FigCFDictionaryGetCount();
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_cleanupPendingRequests(void *)", v3, "%###s request count: %d\n");
    }

    CFDictionaryApplyBlock();
    if (v2)
    {
      CFRelease(v2);
    }

    CFRelease(a1);
  }
}

void __session_cleanupPendingRequests_block_invoke(void *result, int a2, CFDictionaryRef theDict, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, const __CFDictionary *a11, UInt8 *a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CompletionContext");
    if (Value)
    {
      v19 = Value;
      v20 = CFDictionaryGetValue(theDict, @"type");
      if (v20)
      {
        v26 = v20;
        if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
        {
          OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_cleanupPendingRequests(void *)_block_invoke", v21, "Cleaning up pending request: %@\n");
        }

        v27 = *(result + 10);
        v28 = result[4];

        session_handleRemoteControlSessionResponse(v27, v26, v28, v19, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }
  }
}

void session_handleRemoteControlSessionResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, const __CFDictionary *a11, UInt8 *a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_10_12();
  if (!v17)
  {
    goto LABEL_69;
  }

  v20 = v18;
  if (!v18)
  {
    goto LABEL_69;
  }

  v21 = v19;
  if (!v19)
  {
    goto LABEL_69;
  }

  v22 = v17;
  v23 = v16;
  if (CFEqual(v17, @"playbackInfo"))
  {
    Value = CFDictionaryGetValue(v20, @"info");
    BytePtr = CFDataGetBytePtr(v21);
    v28 = "void session_playbackInfoCompletion(OSStatus, CFDictionaryRef, void *)";
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
    {
      a11 = Value;
      a12 = BytePtr;
      a9 = "void session_playbackInfoCompletion(OSStatus, CFDictionaryRef, void *)";
      a10 = v23;
      OUTLINED_FUNCTION_1_42(&gLogCategory_APEndpointPlaybackSessionRemoteControl, v25, v26, "%###s called, status [%#m], playbackInfo [%@], context [%{ptr}]\n");
    }

    if (!BytePtr)
    {
      goto LABEL_69;
    }

    goto LABEL_18;
  }

  if (CFEqual(v22, @"seek"))
  {
    BytePtr = CFDataGetBytePtr(v21);
    v28 = "void session_seekCompletion(OSStatus, CFDictionaryRef, void *)";
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
    {
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_1_42(&gLogCategory_APEndpointPlaybackSessionRemoteControl, v29, v30, "%###s called, status [%#m], seek completion info [%@], context [%{ptr}]\n");
    }

LABEL_18:
    v34 = *BytePtr;
    if (*BytePtr)
    {
      if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30)
      {
        if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || (v35 = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl), v34 = *BytePtr, v35))
        {
          a10 = v34;
          a11 = *(BytePtr + 1);
          a9 = v28;
          OUTLINED_FUNCTION_1_42(&gLogCategory_APEndpointPlaybackSessionRemoteControl, v25, v26, "%###s: callback [%{ptr}], context [%{ptr}]\n");
        }
      }

      OUTLINED_FUNCTION_12();

      v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
      return;
    }

LABEL_69:
    OUTLINED_FUNCTION_12();
    return;
  }

  if (CFEqual(v22, @"property"))
  {
    v31 = CFDataGetBytePtr(v21);
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
    {
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_1_42(&gLogCategory_APEndpointPlaybackSessionRemoteControl, v32, v33, "%###s called, status [%#m], property info [%@], context [%{ptr}]\n");
    }

    if (!*v31)
    {
      goto LABEL_69;
    }

    v55 = CFDictionaryGetValue(v20, @"key");
    v58 = CFDictionaryGetValue(v20, @"value");
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
    {
      a12 = v55;
      a13 = v58;
      a10 = *v31;
      a11 = *(v31 + 1);
      a9 = "void session_getProxiedPropertyCompletion(OSStatus, CFDictionaryRef, void *)";
      OUTLINED_FUNCTION_1_42(&gLogCategory_APEndpointPlaybackSessionRemoteControl, v56, v57, "%###s: callback [%{ptr}], context [%{ptr}], key [%@], value [%@]\n");
    }

    OUTLINED_FUNCTION_12();

    v63(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else if (CFEqual(v22, @"streamingKey"))
  {
    v44 = CFDataGetBytePtr(v21);
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
    {
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_1_42(&gLogCategory_APEndpointPlaybackSessionRemoteControl, v45, v46, "%###s called, status [%#m], streaming key info [%@], context [%{ptr}]\n");
    }

    if (!*v44)
    {
      goto LABEL_69;
    }

    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (CFDictionaryContainsKey(v20, @"key"))
    {
      v68 = CFDictionaryGetValue(v20, @"key");
      v69 = v68;
      if (v68 && (v70 = CFGetTypeID(v68), v70 == CFStringGetTypeID()))
      {
        v71 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v69 options:0];
      }

      else
      {
        v71 = 0;
      }

      CFDictionaryRemoveValue(MutableCopy, @"key");
      if (v71)
      {
        v72 = v71;
      }

      else
      {
        v72 = v69;
      }

      CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC1028], v72);
    }

    else
    {
      v71 = 0;
    }

    if (CFDictionaryContainsKey(v20, @"error"))
    {
      v75 = CFDictionaryGetValue(v20, @"error");
      CFDictionaryRemoveValue(MutableCopy, @"error");
      CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC0F30], v75);
    }

    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
    {
      OUTLINED_FUNCTION_1_42(&gLogCategory_APEndpointPlaybackSessionRemoteControl, v73, v74, "%###s: callback [%{ptr}], context [%{ptr}], updated streaming key info  [%@]\n");
    }

    (*v44)(v23, MutableCopy, *(v44 + 1));
    if (v71)
    {
      CFRelease(v71);
    }

    if (!MutableCopy)
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_12();

    CFRelease(v76);
  }

  else
  {
    if (!CFEqual(v22, @"authorizeItem"))
    {
      goto LABEL_69;
    }

    CFDataGetBytePtr(v21);
    OUTLINED_FUNCTION_12();

    session_authorizeItemCompletion(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

void session_authorizeItemCompletion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10, const __CFDictionary *a11, void *a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_10_12();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
  {
    a11 = v19;
    a12 = v17;
    a9 = "void session_authorizeItemCompletion(OSStatus, CFDictionaryRef, void *)";
    a10 = v21;
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_authorizeItemCompletion(OSStatus, CFDictionaryRef, void *)", v16, "%###s called, status [%#m], authorize response [%@], context [%{ptr}]\n");
  }

  if (*v17)
  {
    Value = CFDictionaryGetValue(v19, @"item");
    v23 = CFDictionaryGetValue(v19, @"PIC-Data");
    v25 = CFDictionaryGetValue(v19, @"playerGUID");
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
    {
      a13 = v23;
      a14 = v25;
      a11 = v17[1];
      a12 = Value;
      a9 = "void session_authorizeItemCompletion(OSStatus, CFDictionaryRef, void *)";
      a10 = *v17;
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_authorizeItemCompletion(OSStatus, CFDictionaryRef, void *)", v24, "%###s: callback [%{ptr}], context [%{ptr}], item [%@], PICData [%@], playerGUID [%@]\n");
    }

    OUTLINED_FUNCTION_12();

    v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_12();
  }
}

uint64_t session_ensureRemoteControlSessionCreated(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v3 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294950555;
  }

  v5 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC1618], *MEMORY[0x277CC1600]);
  FigCFDictionarySetInt32();
  v6 = APEndpointRemoteControlSessionCreate(*MEMORY[0x277CBECE8], v3[5], v3[3], v5, 1, v3);
  if (v6)
  {
    v10 = v6;
    goto LABEL_12;
  }

  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_ensureRemoteControlSessionCreated(FigEndpointPlaybackSessionRef)", v7, "[%{ptr}] created new RCS [%{ptr}]\n");
  }

  v8 = *v3;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9)
  {
    v10 = 4294954514;
LABEL_12:
    APSLogErrorAt();
    goto LABEL_13;
  }

  v10 = v9(v8, session_handleRemoteControlSessionEvent, a1);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_13:
  CFRelease(v5);
  return v10;
}

void session_handleRemoteControlSessionEvent(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef cf, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_12();
  a23 = v24;
  a24 = v26;
  v28 = v27;
  v29 = v25;
  cf = 0;
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_handleRemoteControlSessionEvent(FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef, CFTypeRef)", v25, "%###s called, remoteControlSession [%{ptr}], eventType [%@], payload [%{ptr}], client context [%{ptr}]\n");
  }

  if (v28)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 50 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_handleRemoteControlSessionEvent(FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef, CFTypeRef)", 33554482, "[%{ptr}] RCS [%{ptr}] invalidated\n");
      }

      goto LABEL_24;
    }

    if (!FigCFEqual())
    {
      goto LABEL_24;
    }

    if (v29)
    {
      v31 = session_createDictionaryFromData(v29, &cf);
      if (!v31)
      {
        v33 = malloc_type_calloc(0x10uLL, 1uLL, 0xA70C87FDuLL);
        v34 = cf;
        *v33 = v28;
        v33[1] = v34;
        if (gLogCategory_APEndpointPlaybackSessionRemoteControl > 30)
        {
          goto LABEL_20;
        }

        if (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || (v35 = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl), v28 = *v33, v35))
        {
          OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_handleRemoteControlSessionEvent(FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef, CFTypeRef)", v32, "[%{ptr}] Get RCS message [%@]\n");
          v28 = *v33;
        }

        if (v28)
        {
LABEL_20:
          CFRetain(v28);
        }

        v36 = v33[1];
        if (v36)
        {
          CFRetain(v36);
        }

        dispatch_async_f(*(DerivedStorage + 160), v33, session_handleRemoteControlSessionEventInternal);
        goto LABEL_24;
      }

      v42 = v31;
      APSLogErrorAt();
      OUTLINED_FUNCTION_5_21();
      v37 = "%s signalled err=%d at <>:%d";
      v40 = "(Fig)";
      v38 = 0;
      v39 = v42;
      v41 = 1964;
    }

    else
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_3_22();
      v41 = 1961;
    }

    FigSignalErrorAtGM(v37, v38, v39, v40, v41);
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_12();
}

void session_updateIsPlayingAndPostNotification(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 104))
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 89) != v2)
    {
      APSWiFiTransactionUpdateTransaction();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v6 = Mutable;
      v7 = MEMORY[0x277CBED10];
      if (v2)
      {
        v7 = MEMORY[0x277CBED28];
      }

      CFDictionarySetValue(Mutable, @"Playing", *v7);
      *(v4 + 89) = v2;
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();

      CFRelease(v6);
    }
  }
}

void session_standardCompletion(uint64_t a1, int a2, void *a3)
{
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_standardCompletion(OSStatus, CFTypeRef, void *)", a3, "%###s called, status [%#m], params [%@], context [%{ptr}]\n");
  }

  v5 = *a3;
  if (*a3)
  {
    if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || (v6 = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl), v5 = *a3, v6)))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_standardCompletion(OSStatus, CFTypeRef, void *)", a3, "%###s: callback [%{ptr}], context [%{ptr}]\n");
      (*a3)(a1, a3[1]);
    }

    else
    {
      v5(a1, a3[1]);
    }
  }

  free(a3);
}

void session_performActionUnhandledURLResponseCompletion(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  cf = 0;
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
  {
    v16 = theDict;
    v17 = a3;
    v14 = "void session_performActionUnhandledURLResponseCompletion(OSStatus, CFTypeRef, void *)";
    v15 = a1;
    OUTLINED_FUNCTION_1_42(&gLogCategory_APEndpointPlaybackSessionRemoteControl, theDict, a3, "%###s called, status [%#m], params [%@], context [%{ptr}]\n");
  }

  if (*a3)
  {
    if (!theDict)
    {
      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(theDict, @"data");
    if (Value)
    {
      v7 = session_createDictionaryFromData(Value, &cf);
      if (!v7)
      {
LABEL_9:
        if (gLogCategory_APEndpointPlaybackSessionRemoteControl <= 30 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointPlaybackSessionRemoteControl)))
        {
          OUTLINED_FUNCTION_1_42(&gLogCategory_APEndpointPlaybackSessionRemoteControl, theDict, a3, "%###s: callback [%{ptr}], context [%{ptr}], payload [%@]\n");
        }

        (*a3)(a1, cf, a3[1]);
        goto LABEL_14;
      }

      v13 = v7;
      APSLogErrorAt();
      OUTLINED_FUNCTION_5_21();
      v8 = "%s signalled err=%d at <>:%d";
      v11 = "(Fig)";
      v9 = 0;
      v10 = v13;
      v12 = 1386;
    }

    else
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_3_22();
      v12 = 1383;
    }

    FigSignalErrorAtGM(v8, v9, v10, v11, v12, v14, v15, v16, v17);
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  free(a3);
}

uint64_t session_createDataFromDictionary_cold_1(uint64_t a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
}

uint64_t session_Play_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t session_InsertPlayQueueItem_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t session_InsertPlayQueueItem_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  OUTLINED_FUNCTION_3_22();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t session_PerformRemoteAction_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  OUTLINED_FUNCTION_3_22();

  return FigSignalErrorAtGM(v0);
}

uint64_t session_PerformRemoteAction_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  OUTLINED_FUNCTION_3_22();

  return FigSignalErrorAtGM(v0);
}

void session_addPendingRequest_cold_1(const void *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  CFRelease(a1);
}

uint64_t session_addPendingRequest_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950555, "(Fig)", 875);
}

uint64_t session_addPendingRequest_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950555, "(Fig)", 870);
}

uint64_t session_createDictionaryFromData_cold_1(uint64_t a1, _DWORD *a2)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_3(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x277CC1020];
  CFDictionaryGetValue(a1, *MEMORY[0x277CC1020]);
  CFDictionaryContainsKey(a1, *MEMORY[0x277CC0F90]);
  if (a2)
  {
    CFDictionaryGetValue(a2, v4);
  }

  return OUTLINED_FUNCTION_2(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "OSStatus session_insertPlayQueueItemInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", v5, "[%{ptr}] InsertPlayQueueItem %'@ (%s) after: %'@\n");
}

uint64_t session_insertPlayQueueItemInternal_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16743;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16743;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_13(uint64_t a1, _DWORD *a2)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t session_insertPlayQueueItemInternal_cold_14(_DWORD *a1)
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_29();
  OUTLINED_FUNCTION_3_22();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

void __session_handleMetadataEvent_block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointPlaybackSessionRemoteControl < 51 && (gLogCategory_APEndpointPlaybackSessionRemoteControl != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointPlaybackSessionRemoteControl, "void session_handleMetadataEventInternal(FigEndpointPlaybackSessionRef, CFDictionaryRef)", a3, "[%{ptr}] Dropping initial metadata because it's updated %.3f secs ago.\n");
  }
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
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