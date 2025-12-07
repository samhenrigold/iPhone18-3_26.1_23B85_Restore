uint64_t carEndpoint_SendCommand(const void *a1, const __CFString *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigServer_IsAirplayd() && CFStringCompare(a2, @"modesChanged", 0) == kCFCompareEqualTo)
  {
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      carEndpoint_SendCommand_cold_1(a1, v11, v12);
    }

    CMBaseObjectGetDerivedStorage();
    v30 = 0u;
    v31 = 0u;
    v15 = APStarkModeCreateStructRepresentation(a3, &v30);
    if (v15)
    {
      v17 = v15;
      carEndpoint_SendCommand_cold_2(v15);
    }

    else
    {
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        carEndpoint_SendCommand_cold_3(&v30, a1, v16);
      }

      carEndpoint_takeActionOnModeChanges(a1, &v30);
      v17 = carEndpoint_packetizeCommandAndSend(a1, @"modesChanged", a3);
      if (gLogCategory_APEndpointCarPlay <= 20 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_handleModesChangedFromStarkModeController(FigEndpointRef, CFDictionaryRef)", 33554452, "[%{ptr}] Sent modes changed to %@\n", a1, a3);
      }
    }
  }

  else if (IsAppleInternalBuild() && CFStringCompare(a2, @"runTest", 0) == kCFCompareEqualTo)
  {
    v34 = 0;
    v18 = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v19 = v18;
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_runTestCommand(FigEndpointRef, CFStringRef, CFDictionaryRef)", 33554482, "[%{ptr}] Running custom test with params %@\n", a1, a3);
      }

      if (CFStringCompare(TypedValue, @"testRequestUI", 0) == kCFCompareEqualTo)
      {
        CFDictionaryGetTypeID();
        v23 = CFDictionaryGetTypedValue();
        CFRetain(v23);
        CFRetain(a1);
        v24 = *(v19 + 512);
        *&v30 = MEMORY[0x277D85DD0];
        *(&v30 + 1) = 0x40000000;
        *&v31 = __carEndpoint_runTestCommand_block_invoke;
        *(&v31 + 1) = &__block_descriptor_tmp_1198;
        v32 = a1;
        v33 = v23;
        dispatch_async(v24, &v30);
      }
    }

    else
    {
      carEndpoint_SendCommand_cold_6();
    }

    v17 = 0;
  }

  else
  {
    v13 = carEndpoint_validateRuntimeFeaturesWithAccessory(a1, a2, 1);
    if (v13)
    {
      v17 = v13;
      carEndpoint_SendCommand_cold_7(v13);
    }

    else
    {
      if (CFStringCompare(a2, @"stopSession", 0) == kCFCompareEqualTo || CFStringCompare(a2, @"resetSession", 0) == kCFCompareEqualTo)
      {
        v14 = *(DerivedStorage + 168);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __carEndpoint_SendCommand_block_invoke;
        block[3] = &__block_descriptor_tmp_1185;
        block[4] = DerivedStorage;
        dispatch_sync(v14, block);
      }

      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_SendCommand(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, FigEndpointSendCommandCompletionCallback, void *)", 33554482, "[%{ptr}] send command %'@ to endpoint %'@ with params %'@...\n", a1, a2, *(DerivedStorage + 16), a3);
      }

      if (a2)
      {
        v21 = carEndpoint_sendCommandInternal(a1, a2, a3, 0, 0);
        v17 = 0;
        if (v21)
        {
          v22 = v21;
          carEndpoint_SendCommand_cold_8(v21);
          v17 = v22;
        }
      }

      else
      {
        carEndpoint_SendCommand_cold_9();
        v17 = 4294950576;
      }
    }
  }

  if (a4)
  {
    CFRetain(a1);
    v25 = *DerivedStorage;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 0x40000000;
    v27[2] = __carEndpoint_SendCommand_block_invoke_2;
    v27[3] = &__block_descriptor_tmp_1187;
    v27[4] = a4;
    v27[5] = a1;
    v28 = v17;
    v27[6] = a5;
    dispatch_async(v25, v27);
  }

  return v17;
}

uint64_t apsession_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "[%{ptr}] %###s %@ %@.\n", a1, "OSStatus apsession_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", *(DerivedStorage + 8), a2);
  }

  if (!a4)
  {
    apsession_CopyProperty_cold_9();
    return 4294960591;
  }

  if (*DerivedStorage && !CFEqual(a2, @"InitialRTCStats"))
  {
    return 4294954511;
  }

  FigSimpleMutexLock();
  v9 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"TransportControlStream"))
  {
    v10 = *(v9 + 328);
    if (v10)
    {
      goto LABEL_10;
    }

    apsession_CopyProperty_cold_1();
LABEL_43:
    ConnectionLatencyHint = 4294895466;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"InitialVolumeDB"))
  {
    v12 = CFNumberCreate(a3, kCFNumberFloat32Type, (v9 + 400));
    *a4 = v12;
    if (!v12)
    {
      ConnectionLatencyHint = 4294895476;
      apsession_CopyProperty_cold_2();
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"InitialIsMuted"))
  {
    v14 = MEMORY[0x277CBED28];
    if (!*(v9 + 404))
    {
      v14 = MEMORY[0x277CBED10];
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"MediaControlClientPassword"))
  {
    v10 = *(v9 + 392);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"TransportSession"))
  {
    v10 = *(v9 + 320);
    if (!v10)
    {
      ConnectionLatencyHint = 4294960587;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"IsConnectedOnPeerToPeerInterface"))
  {
    if (!*(v9 + 320))
    {
      apsession_CopyProperty_cold_4();
      ConnectionLatencyHint = 4294895467;
      goto LABEL_15;
    }

    if (!*(v9 + 328))
    {
      apsession_CopyProperty_cold_3();
      goto LABEL_43;
    }

    v15 = *MEMORY[0x277CE4FA0];
    v16 = *MEMORY[0x277CBECE8];
    CMBaseObject = FigTransportSessionGetCMBaseObject();
    if (CMBaseObjectCopyProperty(CMBaseObject, v15, v16, a4))
    {
      v14 = MEMORY[0x277CBED10];
LABEL_21:
      v10 = *v14;
      goto LABEL_10;
    }

LABEL_14:
    ConnectionLatencyHint = 0;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"ControlConnectionInterfaceLatencyHint"))
  {
    v25 = 0;
    ConnectionLatencyHint = apsession_getConnectionLatencyHint(a1, &v25);
    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (!Int64)
    {
      ConnectionLatencyHint = 4294895476;
      apsession_CopyProperty_cold_5();
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"KeyHolder"))
  {
    v10 = *(v9 + 224);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"ShowInfo"))
  {
    v10 = apsession_copyShowInfo(a1);
    goto LABEL_11;
  }

  if (CFEqual(a2, @"AuthenticationData"))
  {
    if (*(v9 + 408))
    {
      APAuthenticationClientGetCMBaseObject();
      ConnectionLatencyHint = CMBaseObjectCopyProperty(v19, 0x283578490, a3, a4);
      goto LABEL_15;
    }

    goto LABEL_67;
  }

  if (CFEqual(a2, @"ActualTransportType"))
  {
    v20 = *(v9 + 488);
    v10 = @"UNKNOWN";
    if (v20 > 3)
    {
      if (v20 == 4)
      {
        v14 = kAPSenderSessionActualTransportType_NAN;
      }

      else
      {
        if (v20 != 8)
        {
          goto LABEL_10;
        }

        v14 = kAPSenderSessionActualTransportType_DirectLink;
      }

      goto LABEL_21;
    }

    if (v20 == 1)
    {
      v14 = kAPSenderSessionActualTransportType_Infra;
      goto LABEL_21;
    }

    if (v20 == 2)
    {
      v14 = kAPSenderSessionActualTransportType_AWDL;
      goto LABEL_21;
    }

    if (v20)
    {
      goto LABEL_10;
    }

LABEL_67:
    ConnectionLatencyHint = 4294954513;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"InitialRTCStats"))
  {
    apsession_updateSenderSessionMetricsForRTCStats(a1);
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v9 + 496));
    *a4 = Copy;
    if (!Copy)
    {
      ConnectionLatencyHint = 4294895476;
      apsession_CopyProperty_cold_6();
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"ReceiverSuppliedRTCStats"))
  {
    v10 = *(v9 + 504);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"ActivationTimingInformation"))
  {
    v21 = *(v9 + 512);
    if (v21)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a3, 0, v21);
      if (!MutableCopy)
      {
        ConnectionLatencyHint = 4294895476;
        apsession_CopyProperty_cold_7();
        goto LABEL_15;
      }
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!MutableCopy)
      {
        ConnectionLatencyHint = 4294895476;
        apsession_CopyProperty_cold_8();
        goto LABEL_15;
      }
    }

    v23 = MutableCopy;
    CFDictionarySetInt64();
    ConnectionLatencyHint = 0;
    *a4 = v23;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"EventRecorder"))
  {
    v10 = *(v9 + 160);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"LocalNetworkIPAddress"))
  {
    v10 = *(v9 + 256);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"PWDEncryptorEncryptionContext"))
  {
    v10 = *(v9 + 528);
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_98:
    ConnectionLatencyHint = 4294954509;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"PWDEncryptorEncryptionKeyID"))
  {
    v10 = *(v9 + 536);
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_98;
  }

  if (CFEqual(a2, @"PWDProtectionFlags"))
  {
    if (*(v9 + 544))
    {
      v10 = CFNumberCreateInt64();
      goto LABEL_11;
    }

    goto LABEL_98;
  }

  if (CFEqual(a2, @"GroupID"))
  {
    v10 = *(v9 + 552);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!CFEqual(a2, @"MC2UCToken"))
  {
    if (!CFEqual(a2, @"ActiveStreamConnectionIDs"))
    {
      ConnectionLatencyHint = 4294954512;
      goto LABEL_15;
    }

    v10 = apsession_copyActiveStreamConnectionIDs(a1);
    goto LABEL_11;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
LABEL_10:
    v10 = CFRetain(v10);
  }

LABEL_11:
  ConnectionLatencyHint = 0;
  *a4 = v10;
LABEL_15:
  FigSimpleMutexUnlock();
  return ConnectionLatencyHint;
}

uint64_t __APStarkModeCreateStructRepresentation_block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = CFDictionaryGetInt64();
  result = CFDictionaryGetInt64();
  *(*(a1[6] + 8) + 24) = result;
  v4 = *(*(a1[5] + 8) + 24);
  switch(v4)
  {
    case 1:
      v9 = *(*(a1[6] + 8) + 24);
      if (v9 == 2)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2 * (v9 == 1);
      }

      *(*(a1[7] + 8) + 40) = v10;
      result = CFDictionaryGetInt64();
      if (result == -1)
      {
        v11 = 0;
      }

      else
      {
        result = CFDictionaryGetInt64();
        if (result == 1)
        {
          v11 = 10;
        }

        else
        {
          v11 = 11;
        }
      }

      *(*(a1[7] + 8) + 44) = v11;
      break;
    case 3:
      v7 = *(*(a1[6] + 8) + 24);
      if (v7 == 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2 * (v7 == 1);
      }

      *(*(a1[7] + 8) + 52) = v8;
      break;
    case 2:
      v5 = *(*(a1[6] + 8) + 24);
      if (v5 == 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2 * (v5 == 1);
      }

      *(*(a1[7] + 8) + 48) = v6;
      break;
  }

  return result;
}

uint64_t __APStarkModeCreateStructRepresentation_block_invoke_2(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = CFDictionaryGetInt64();
  result = CFDictionaryGetInt64();
  *(*(a1[6] + 8) + 24) = result;
  v4 = *(*(a1[5] + 8) + 24);
  if (v4 == 1)
  {
    v5 = a1 + 7;
    v9 = *(*(a1[6] + 8) + 24);
    if (v9 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (v9 == 1);
    }

    *(*(a1[7] + 8) + 24) = v10;
    result = CFDictionaryGetInt64();
    v8 = 28;
  }

  else
  {
    if (v4 != 2)
    {
      return result;
    }

    v5 = a1 + 7;
    v6 = *(*(a1[6] + 8) + 24);
    if (v6 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (v6 == 1);
    }

    *(*(a1[7] + 8) + 32) = v7;
    result = CFDictionaryGetInt64();
    v8 = 36;
  }

  if (result == 2)
  {
    v11 = 1;
  }

  else
  {
    result = CFDictionaryGetInt64();
    v11 = 2 * (result == 1);
  }

  *(*(*v5 + 8) + v8) = v11;
  return result;
}

void carEndpoint_takeActionOnModeChanges(const void *a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8[0] = &v7;
  v8[1] = 0x3800000000;
  v9 = 0u;
  v10 = 0u;
  v5 = *(DerivedStorage + 168);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __carEndpoint_takeActionOnModeChanges_block_invoke;
  v6[3] = &unk_27849E768;
  v6[4] = &v7;
  v6[5] = DerivedStorage;
  v6[6] = a2;
  dispatch_sync(v5, v6);
  if (*(DerivedStorage + 57))
  {
    carEndpoint_takeActionOnModeChanges_cold_1(v8, a1, a2);
  }

  _Block_object_dispose(&v7, 8);
}

__n128 __carEndpoint_takeActionOnModeChanges_block_invoke(void *a1)
{
  v1 = *(a1[4] + 8);
  v2 = *(a1[5] + 380);
  *(v1 + 40) = *(a1[5] + 396);
  *(v1 + 24) = v2;
  v3 = a1[6];
  v4 = (a1[5] + 380);
  result = *v3;
  v6 = *(v3 + 16);
  *v4 = *v3;
  v4[1] = v6;
  return result;
}

CFTypeRef __carEndpoint_packetizeCommandAndSend_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 240);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t apsession_IsActive(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "Boolean apsession_IsActive(APSenderSessionRef)", 33554462, "[%{ptr}] %###s %@.\n", a1, "Boolean apsession_IsActive(APSenderSessionRef)", *(DerivedStorage + 8));
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 306);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t mfiAuthentication_CopyProperty(uint64_t a1, CFTypeRef cf1, const __CFAllocator *a3, void *a4)
{
  if (!CFEqual(cf1, @"AuthenticationData"))
  {
    return 4294954512;
  }

  if (!*CMBaseObjectGetDerivedStorage())
  {
    v11 = 4294895493;
    mfiAuthentication_CopyProperty_cold_6();
    return v11;
  }

  if (!MFiSAP_CopyCertificateSerialNumber())
  {
    v12 = CFDataCreateWithBytesNoCopy(a3, 0, 0, *MEMORY[0x277CBECF0]);
    *a4 = v12;
    if (v12)
    {
      return 0;
    }

    mfiAuthentication_CopyProperty_cold_5();
    return 4294895496;
  }

  v6 = MFiSAP_CopyCertificate();
  if (v6)
  {
    v11 = v6;
    mfiAuthentication_CopyProperty_cold_1(v6);
    return v11;
  }

  v7 = CFDataCreateWithBytesNoCopy(a3, 0, 0, *MEMORY[0x277CBECF0]);
  if (!v7)
  {
    mfiAuthentication_CopyProperty_cold_4();
    return 4294895496;
  }

  v8 = v7;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v9 = getMFAACreateCertificateSerialNumberSymbolLoc_ptr;
  v18 = getMFAACreateCertificateSerialNumberSymbolLoc_ptr;
  if (!getMFAACreateCertificateSerialNumberSymbolLoc_ptr)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __getMFAACreateCertificateSerialNumberSymbolLoc_block_invoke;
    v14[3] = &unk_2784A0770;
    v14[4] = &v15;
    __getMFAACreateCertificateSerialNumberSymbolLoc_block_invoke(v14);
    v9 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v9)
  {
    apsession_appendControlSetupRequest_cold_9();
    goto LABEL_20;
  }

  v10 = v9(v8);
  *a4 = v10;
  if (!v10)
  {
LABEL_20:
    v11 = 4294895493;
    mfiAuthentication_CopyProperty_cold_2();
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:
  CFRelease(v8);
  return v11;
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  result = 4294954514;
  *(v0 - 116) = -12782;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7(_BYTE *a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return APCarPlayAudioFormatsCopyFormatsForAudioType(a1, 103, a3, 0, va, 0);
}

void OUTLINED_FUNCTION_10_11()
{

  APEndpointDescriptionGetCMBaseObject();
}

const __CFDictionary *airPlayDescription_copyEndpointInfoValue(uint64_t a1, const void *a2, const __CFDictionary **a3)
{
  result = *(CMBaseObjectGetDerivedStorage() + 24);
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      result = CFRetain(result);
    }
  }

  *a3 = result;
  return result;
}

uint64_t airPlayDescription_copyEndpointInfoValueCFString(uint64_t a1, const void *a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  airPlayDescription_copyEndpointInfoValue(a1, a2, &cf);
  v6 = cf;
  if (cf && (v7 = CFGetTypeID(cf), v7 != CFStringGetTypeID()))
  {
    airPlayDescription_copyEndpointInfoValueCFString_cold_1(v6);
    return 4294895541;
  }

  else
  {
    result = 0;
    *a3 = v6;
  }

  return result;
}

uint64_t airPlayDescription_copyManufacturer(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_9_8(a1);
  v8 = 0;
  airPlayDescription_copyEndpointInfoValueCFString(v2, @"manufacturer", &v8);
  v5 = v8;
  if (!v8)
  {
    v5 = OUTLINED_FUNCTION_5_16(*(v3 + 16), v4, *MEMORY[0x277CE4B80]);
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

uint64_t APCarPlayAudioFormatInfoGetDescription(uint64_t a1)
{
  if (a1)
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t airPlayDescription_copySourceVersion(uint64_t a1, uint64_t *a2)
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
      airPlayDescription_copySourceVersion_cold_1();
      v6 = 4294960534;
      goto LABEL_6;
    }

    TextToSourceVersion();
  }

  Int64 = CFNumberCreateInt64();
  if (!Int64)
  {
    airPlayDescription_copySourceVersion_cold_2();
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

void __carEndpoint_copyStateProperty_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 40) + 176))
  {
    v22 = *(*(a1 + 32) + 8);
    v23 = -16723;
    goto LABEL_54;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC11F0]))
  {
    v2 = *(a1 + 40);
    if (*(v2 + 240))
    {
      **(a1 + 56) = CFNumberCreate(*(a1 + 64), kCFNumberSInt32Type, (v2 + 224));
      if (!**(a1 + 56))
      {
        __carEndpoint_copyStateProperty_block_invoke_cold_1();
      }

      return;
    }

    *(*(*(a1 + 32) + 8) + 24) = -12783;
    goto LABEL_12;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1260]))
  {
    v3 = *(a1 + 40);
    if (*(v3 + 240) && *(v3 + 248))
    {
      v5 = *(a1 + 56);
      v4 = *(a1 + 64);
      APSenderSessionGetCMBaseObject();
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v9 = v8(v7, @"AuthenticationData", v4, v5);
      }

      else
      {
        v9 = -12782;
      }

      *(*(*(a1 + 32) + 8) + 24) = v9;
      return;
    }

    goto LABEL_53;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1268]))
  {
    v10 = *(a1 + 56);
    LODWORD(v47) = 0;
    CMBaseObjectGetDerivedStorage();
    v11 = APSGetFBOPropertyInt64();
    if (v11)
    {
      if (v11 == 8)
      {
        v12 = MEMORY[0x277CC0A68];
        goto LABEL_25;
      }

      if (v11 == 32)
      {
        v12 = MEMORY[0x277CC0A60];
LABEL_25:
        v14 = CFRetain(*v12);
        *v10 = v14;
        if (gLogCategory_APEndpointCarPlay > 30)
        {
          goto LABEL_31;
        }

        if (gLogCategory_APEndpointCarPlay != -1)
        {
          goto LABEL_27;
        }

        if (_LogCategory_Initialize())
        {
          v14 = *v10;
LABEL_27:
          LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_copyAuthenticationType(FigEndpointRef, CFAllocatorRef, CFStringRef *)", 33554462, "carEndpoint_copyAuthenticationType(). authenticationType: %d, returning: %@", v11, v14);
        }

LABEL_31:
        *(*(*(a1 + 32) + 8) + 24) = v47;
        v16 = *(*(*(a1 + 32) + 8) + 24);
        if (v16)
        {
          __carEndpoint_copyStateProperty_block_invoke_cold_4(v16);
        }

        return;
      }

      v15 = -12782;
    }

    else
    {
      v15 = -12783;
    }

    LODWORD(v47) = v15;
    APSLogErrorAt();
    goto LABEL_31;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1270]))
  {
    v13 = MEMORY[0x277CC0A70];
LABEL_38:
    v19 = *v13;
LABEL_39:
    v19 = CFRetain(v19);
    goto LABEL_40;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1278]))
  {
    v17 = MEMORY[0x277CBED28];
    v18 = *(*(a1 + 40) + 348);
    goto LABEL_35;
  }

  if (CFEqual(*(a1 + 48), @"EndpointStatus"))
  {
    **(a1 + 56) = CFNumberCreate(*(a1 + 64), kCFNumberSInt32Type, (*(a1 + 40) + 228));
    if (!**(a1 + 56))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_5();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), @"Features"))
  {
    *(*(*(a1 + 32) + 8) + 24) = APEndpointDescriptionCopyFeatures(*(*(a1 + 40) + 8), *(a1 + 56));
    v20 = *(*(*(a1 + 32) + 8) + 24);
    if (v20)
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_6(v20);
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1570]))
  {
    v21 = *(a1 + 40);
    if (!*(v21 + 162))
    {
LABEL_53:
      v22 = *(*(a1 + 32) + 8);
      v23 = -12783;
LABEL_54:
      *(v22 + 24) = v23;
      return;
    }

    **(a1 + 56) = CFStringCreateWithFormat(*(a1 + 64), 0, @"%@-%u", *(v21 + 32), *(v21 + 224));
    if (!**(a1 + 56))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_7();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1228]))
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2000000000;
    v50 = 0;
    FigCFSetApplyBlock();
    if (*(v48 + 24))
    {
      v24 = MEMORY[0x277CBED28];
    }

    else
    {
      v24 = MEMORY[0x277CBED10];
    }

    **(a1 + 56) = CFRetain(*v24);
    _Block_object_dispose(&v47, 8);
    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1348]))
  {
    v25 = *(a1 + 40);
    if (!*(v25 + 240) || (v26 = *(v25 + 296)) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = -12783;
LABEL_12:

      APSLogErrorAt();
      return;
    }

    *(*(*(a1 + 32) + 8) + 24) = APHIDClientCopyHIDs(v26, *(a1 + 64), *(a1 + 56));
    v27 = *(*(*(a1 + 32) + 8) + 24);
    if (v27)
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_8(v27);
    }

    return;
  }

  if (CFEqual(*(a1 + 48), @"Statistics"))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *(*(a1 + 40) + 368), MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v29 = Mutable;
      v30 = *(a1 + 40);
      v31 = v30[46];
      if (v30[45] >= v31)
      {
        if (v31)
        {
          for (i = 0; i < v31; ++i)
          {
            CFArrayAppendValue(v29, *(v30[44] + 8 * ((i + v30[45]) % v31)));
            v30 = *(a1 + 40);
            v31 = v30[46];
          }
        }
      }

      else
      {
        v32 = *v30[44];
        if (v32)
        {
          v33 = 8;
          do
          {
            CFArrayAppendValue(v29, v32);
            v32 = *(*(*(a1 + 40) + 352) + v33);
            v33 += 8;
          }

          while (v32);
        }
      }

      **(a1 + 56) = v29;
    }

    else
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_9();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1370]))
  {
    v17 = MEMORY[0x277CBED28];
    v18 = *(*(a1 + 40) + 177);
    goto LABEL_35;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1410]))
  {
    v17 = MEMORY[0x277CBED28];
    v18 = *(*(a1 + 40) + 329);
    goto LABEL_35;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1458]))
  {
    if (!APSGetFBOPropertyInt64())
    {
      v22 = *(*(a1 + 32) + 8);
      v23 = -12782;
      goto LABEL_54;
    }

    v17 = MEMORY[0x277CBED28];
    v18 = *(*(a1 + 40) + 330);
    goto LABEL_35;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1468]))
  {
    goto LABEL_87;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1498]))
  {
    v13 = MEMORY[0x277CC11E0];
    goto LABEL_38;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC14A8]))
  {
LABEL_87:
    v35 = APSGetFBOPropertyInt64();
    v13 = MEMORY[0x277CBED28];
    if (!v35)
    {
      v13 = MEMORY[0x277CBED10];
    }

    goto LABEL_38;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC14B8]))
  {
    v19 = *(*(a1 + 40) + 280);
    if (!v19)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (CFEqual(*(a1 + 48), @"EndpointShowInfo"))
  {
    carEndpoint_copyShowInfoDictionary(*(a1 + 72), *(a1 + 64), *(a1 + 56));
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v36 = *(*(*(a1 + 32) + 8) + 24);
    if (v36)
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_10(v36);
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC14E0]))
  {
    *(*(*(a1 + 32) + 8) + 24) = carEndpoint_copyStreams(*(a1 + 72), *(a1 + 64), *(a1 + 56));
    v37 = *(*(*(a1 + 32) + 8) + 24);
    if (v37)
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_11(v37);
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1590]))
  {
    v19 = *(*(a1 + 40) + 336);
    if (!v19)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (CFEqual(*(a1 + 48), @"IsCarInSpeechState"))
  {
    v38 = *(a1 + 40);
    if (v38[99] != 1)
    {
      goto LABEL_114;
    }

    goto LABEL_109;
  }

  if (CFEqual(*(a1 + 48), @"IsiOSInSpeechState"))
  {
    v38 = *(a1 + 40);
    if (v38[101] || v38[99] != 2)
    {
      goto LABEL_114;
    }

LABEL_109:
    if (v38[100])
    {
      v13 = MEMORY[0x277CBED28];
      goto LABEL_38;
    }

LABEL_114:
    v13 = MEMORY[0x277CBED10];
    goto LABEL_38;
  }

  if (CFEqual(*(a1 + 48), @"VoiceTriggerTimestamp"))
  {
    **(a1 + 56) = CFNumberCreateInt64();
    if (!**(a1 + 56))
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_12();
    }

    return;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC1250]))
  {
    v17 = MEMORY[0x277CBED28];
    v18 = *(*(a1 + 40) + 444);
LABEL_35:
    if (v18)
    {
      v13 = v17;
    }

    else
    {
      v13 = MEMORY[0x277CBED10];
    }

    goto LABEL_38;
  }

  if (CFEqual(*(a1 + 48), @"VoiceActivationType"))
  {
    CFNumberGetTypeID();
    **(a1 + 56) = CFDictionaryGetTypedValue();
    v39 = **(a1 + 56);
    if (v39)
    {

      CFRetain(v39);
    }
  }

  else
  {
    if (CFEqual(*(a1 + 48), @"DisplayCornerMasks"))
    {
      v19 = *(*(a1 + 40) + 464);
      if (!v19)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (!CFEqual(*(a1 + 48), *MEMORY[0x277CC1290]))
    {
      if (!CFEqual(*(a1 + 48), @"CurrentCarPlayModesAndStates"))
      {
        v22 = *(*(a1 + 32) + 8);
        v23 = -12784;
        goto LABEL_54;
      }

      v46 = CFGetAllocator(*(a1 + 72));
      v19 = CFDataCreate(v46, (*(a1 + 40) + 380), 32);
      if (!v19)
      {
        __carEndpoint_copyStateProperty_block_invoke_cold_16();
        return;
      }

LABEL_40:
      **(a1 + 56) = v19;
      return;
    }

    if (*(*(a1 + 40) + 58))
    {
      StreamInfoForType = carEndpoint_getStreamInfoForType(*(a1 + 72), *MEMORY[0x277CC1968]);
      if (StreamInfoForType && *(StreamInfoForType + 16))
      {
        v41 = *MEMORY[0x277CC18B8];
        v43 = *(a1 + 56);
        v42 = *(a1 + 64);
        CMBaseObject = FigEndpointStreamGetCMBaseObject();
        *(*(*(a1 + 32) + 8) + 24) = CMBaseObjectCopyProperty(CMBaseObject, v41, v42, v43);
        v45 = *(*(*(a1 + 32) + 8) + 24);
        if (v45)
        {
          __carEndpoint_copyStateProperty_block_invoke_cold_13(v45);
        }
      }

      else
      {
        __carEndpoint_copyStateProperty_block_invoke_cold_14();
      }
    }

    else
    {
      __carEndpoint_copyStateProperty_block_invoke_cold_15(a1);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return CFPropertyListCreateFormatted();
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_6_8(double a1)
{
  *(v1 - 48) = a1;
  *(v1 - 40) = 0;

  return CMBaseObjectGetDerivedStorage();
}

__n128 OUTLINED_FUNCTION_6_10()
{
  result = *v0;
  *&STACK[0x280] = *v0;
  STACK[0x290] = v0[1].n128_u64[0];
  return result;
}

uint64_t __carEndpoint_getScreenStreamForDisplayUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 16);
  }

  return result;
}

uint64_t audioStream_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus audioStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (*DerivedStorage && !FigCFEqual() && !FigCFEqual())
  {
    audioStream_CopyProperty_cold_1();
    return 4294950534;
  }

  if (!a2)
  {
    audioStream_CopyProperty_cold_12();
    return 4294950536;
  }

  if (!a4)
  {
    audioStream_CopyProperty_cold_11();
    return 4294950536;
  }

  if (CFEqual(a2, @"IsTimelineEstablished") || CFEqual(a2, *MEMORY[0x277CEA0C8]))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(DerivedStorage + 184);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v12 = 0;
    *a4 = *(DerivedStorage + 40);
    return v12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18B0]))
  {
    v9 = MEMORY[0x277CC1930];
LABEL_15:
    v11 = *v9;
LABEL_16:
    v11 = CFRetain(v11);
LABEL_17:
    v12 = 0;
    *a4 = v11;
    return v12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]) || CFEqual(a2, @"IsPlaying"))
  {
    v9 = MEMORY[0x277CBED28];
    v10 = *(DerivedStorage + 185);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"IsLocalStream") || CFEqual(a2, *MEMORY[0x277CC1870]))
  {
LABEL_28:
    v9 = MEMORY[0x277CBED10];
    goto LABEL_15;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC18C8]))
  {
    if (CFEqual(a2, @"SupportedAudioFormatList"))
    {
      FigSimpleMutexLock();
      *a4 = CFRetain(*(DerivedStorage + 104));
      FigSimpleMutexUnlock();
      return 0;
    }

    if (CFEqual(a2, @"EndpointStreamShowInfo"))
    {
      v11 = audioStream_copyShowInfo_0(a1);
      goto LABEL_17;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1878]))
    {
      v11 = *(DerivedStorage + 32);
      goto LABEL_16;
    }

    if (CFEqual(a2, @"StreamID"))
    {
      Int64 = CFNumberCreateInt64();
      *a4 = Int64;
      if (Int64)
      {
        return 0;
      }

      audioStream_CopyProperty_cold_2();
    }

    else if (CFEqual(a2, @"SupportedAPAudioFormats"))
    {
      FigSimpleMutexLock();
      valuePtr = APSAudioFormatDescriptionListGetLegacyFormatMask();
      FigSimpleMutexUnlock();
      v15 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
      *a4 = v15;
      if (v15)
      {
        return 0;
      }

      audioStream_CopyProperty_cold_3();
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CEA0D8]))
      {
        v9 = MEMORY[0x277CBED28];
        v10 = *(DerivedStorage + 130);
LABEL_13:
        if (!v10)
        {
          v9 = MEMORY[0x277CBED10];
        }

        goto LABEL_15;
      }

      if (CFEqual(a2, *MEMORY[0x277CEA0B8]))
      {
        v16 = CFNumberCreateInt64();
        *a4 = v16;
        if (v16)
        {
          return 0;
        }

        audioStream_CopyProperty_cold_4();
      }

      else
      {
        if (CFEqual(a2, *MEMORY[0x277CEA0D0]))
        {
          v11 = *(DerivedStorage + 24);
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (CFEqual(a2, @"RTCStats"))
        {
          v17 = *MEMORY[0x277CBECE8];
          values = @"AudioRealTime";
          keys[0] = @"sessionType";
          v18 = CFDictionaryCreate(v17, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v18)
          {
            v19 = v18;
            v28 = v18;
            v20 = CFArrayCreate(v17, &v28, 1, MEMORY[0x277CBF128]);
            CFRelease(v19);
            if (v20)
            {
              v12 = 0;
              *a4 = v20;
              return v12;
            }

            audioStream_CopyProperty_cold_5();
          }

          else
          {
            audioStream_CopyProperty_cold_6();
          }

          return 4294950526;
        }

        if (CFEqual(a2, *MEMORY[0x277CC1840]))
        {
          v21 = APAudioEngineVendorVend(*(DerivedStorage + 64), a4);
          v12 = v21;
          if (v21)
          {
            audioStream_CopyProperty_cold_7(v21);
          }

          return v12;
        }

        if (CFEqual(a2, @"HoseRegistrar"))
        {
          v11 = *(DerivedStorage + 208);
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (CFEqual(a2, @"Cryptor"))
        {
          v11 = *(DerivedStorage + 224);
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (CFEqual(a2, @"DynamicLatencyOffsetM"))
        {
          if (!*(DerivedStorage + 185))
          {
            audioStream_CopyProperty_cold_9();
            return 4294950533;
          }

          v22 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 248));
          *a4 = v22;
          if (v22)
          {
            return 0;
          }

          audioStream_CopyProperty_cold_8();
        }

        else
        {
          if (!CFEqual(a2, @"EndpointIDs"))
          {
            if (!CFEqual(a2, @"IsSidePlayStream"))
            {
              if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s %@ unsupported", a1, "OSStatus audioStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
              }

              return 4294954512;
            }

            goto LABEL_28;
          }

          v24 = *(DerivedStorage + 48);
          v23 = (DerivedStorage + 48);
          if (v24)
          {
            v25 = CFArrayCreate(a3, v23, 1, MEMORY[0x277CBF128]);
          }

          else
          {
            Empty = APSCFArrayGetEmpty();
            v25 = CFRetain(Empty);
          }

          *a4 = v25;
          if (v25)
          {
            return 0;
          }

          audioStream_CopyProperty_cold_10();
        }
      }
    }

    return 4294950535;
  }

  return audioStream_createSupportedPCMFormatArray_0(a1, a3, a4);
}

uint64_t audioStream_CopyProperty_0(uint64_t a1, const void *a2, const __CFAllocator *MaxChannelCount, CFTypeRef *a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  cf = 0;
  v37 = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus audioStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  v9 = MEMORY[0x277CC1878];
  if (*DerivedStorage && !FigCFEqual() && !FigCFEqual())
  {
    APSLogErrorAt();
    MaxChannelCount = 0;
    DerivedStorage = 4294950534;
    goto LABEL_30;
  }

  if (!a4)
  {
    APSLogErrorAt();
    MaxChannelCount = 0;
    DerivedStorage = 4294950536;
    goto LABEL_30;
  }

  if (!CFEqual(a2, *MEMORY[0x277CE9FC0]))
  {
    if (CFEqual(a2, @"IsTimelineEstablished"))
    {
      v13 = MEMORY[0x277CBED28];
      v14 = *(DerivedStorage + 224);
      goto LABEL_18;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1900]))
    {
      v13 = MEMORY[0x277CC1968];
LABEL_27:
      StringValue = *v13;
LABEL_28:
      CFRetain(StringValue);
LABEL_29:
      OUTLINED_FUNCTION_23_2();
      *a4 = v16;
      goto LABEL_30;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1880]))
    {
      v13 = MEMORY[0x277CBED28];
      v14 = *(DerivedStorage + 208);
      goto LABEL_18;
    }

    if (CFEqual(a2, @"IsPlaying"))
    {
      v13 = MEMORY[0x277CBED28];
      v14 = *(DerivedStorage + 209);
      goto LABEL_18;
    }

    if (CFEqual(a2, @"IsLocalStream"))
    {
LABEL_44:
      v13 = MEMORY[0x277CBED10];
      goto LABEL_27;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1870]))
    {
LABEL_46:
      v13 = MEMORY[0x277CBED28];
      goto LABEL_27;
    }

    if (CFEqual(a2, *MEMORY[0x277CC18C8]))
    {
      DerivedStorage = audioStream_createSupportedPCMFormatArray(a1, MaxChannelCount, a4);
LABEL_49:
      MaxChannelCount = 0;
      goto LABEL_30;
    }

    if (CFEqual(a2, @"EndpointStreamShowInfo"))
    {
      audioStream_copyShowInfo(a1);
      goto LABEL_29;
    }

    if (CFEqual(a2, *v9))
    {
      StringValue = *(DerivedStorage + 40);
      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F58]))
    {
      Int64 = CFNumberCreateInt64();
      *a4 = Int64;
      if (Int64)
      {
        goto LABEL_59;
      }

      goto LABEL_83;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F70]))
    {
      StringValue = FigCFDictionaryGetStringValue();
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9FA0]))
    {
      StringValue = FigCFDictionaryGetBooleanValue();
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F68]) || CFEqual(a2, *MEMORY[0x277CE9F60]))
    {
      StringValue = FigCFDictionaryGetNumberValue();
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9FB0]))
    {
      if (APSGetFBOPropertyInt64() || APEndpointDescriptionHasFeature(*(DerivedStorage + 80), 89))
      {
        goto LABEL_46;
      }

LABEL_76:
      v19 = APSGetFBOPropertyInt64();
      v13 = MEMORY[0x277CBED28];
      if (!v19)
      {
        v13 = MEMORY[0x277CBED10];
      }

      goto LABEL_27;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F98]) || CFEqual(a2, *MEMORY[0x277CE9FF0]))
    {
      goto LABEL_76;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F90]))
    {
      FigSimpleMutexLock();
      v20 = *(DerivedStorage + 296);
      if (!v20)
      {
LABEL_82:
        *a4 = v20;
        FigSimpleMutexUnlock();
        goto LABEL_59;
      }

LABEL_81:
      v20 = CFRetain(v20);
      goto LABEL_82;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9FE0]))
    {
      FigSimpleMutexLock();
      v20 = *(DerivedStorage + 304);
      if (!v20)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9F88]))
    {
      FigSimpleMutexLock();
      v21 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 312))
      {
        v21 = MEMORY[0x277CBED10];
      }

      v20 = *v21;
      if (!*v21)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    if (CFEqual(a2, @"Manufacturer"))
    {
      v22 = kAPEndpointDescriptionProperty_Manufacturer;
      goto LABEL_98;
    }

    if (CFEqual(a2, @"Model") || CFEqual(a2, *MEMORY[0x277CE9FC8]))
    {
      v22 = kAPEndpointDescriptionProperty_Model;
      goto LABEL_98;
    }

    if (CFEqual(a2, @"OSVersion"))
    {
      v22 = kAPEndpointDescriptionProperty_OSVersion;
      goto LABEL_98;
    }

    if (CFEqual(a2, @"OSBuildVersion") || CFEqual(a2, *MEMORY[0x277CE9FD8]))
    {
      v22 = kAPEndpointDescriptionProperty_OSBuildVersion;
LABEL_98:
      DerivedStorage = *v22;
      APEndpointDescriptionGetCMBaseObject();
      if (CMBaseObjectCopyProperty(v23, DerivedStorage, MaxChannelCount, a4))
      {
        OUTLINED_FUNCTION_23_2();
        *a4 = 0;
        goto LABEL_30;
      }

      goto LABEL_59;
    }

    if (CFEqual(a2, @"StreamID"))
    {
      v24 = CFNumberCreateInt64();
      *a4 = v24;
      if (v24)
      {
        goto LABEL_59;
      }

      goto LABEL_83;
    }

    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      MaxChannelCount = APSAudioFormatDescriptionListGetMaxChannelCount();
      FigSimpleMutexUnlock();
      goto LABEL_110;
    }

    if (CFEqual(a2, @"SupportedAPAudioFormats"))
    {
      FigSimpleMutexLock();
      valuePtr = APSAudioFormatDescriptionListGetLegacyFormatMask();
      FigSimpleMutexUnlock();
      v25 = CFNumberCreate(MaxChannelCount, kCFNumberSInt64Type, &valuePtr);
      *a4 = v25;
      if (v25)
      {
        DerivedStorage = 0;
      }

      else
      {
        APSLogErrorAt();
        DerivedStorage = 4294950535;
      }

      goto LABEL_49;
    }

    if (CFEqual(a2, @"SupportedAudioFormatList"))
    {
      FigSimpleMutexLock();
      APSAudioFormatDescriptionListGetForBufferedSender();
      MaxChannelCount = APSAudioFormatDescriptionListCreateIntersectionList();
      FigSimpleMutexUnlock();
      if (!MaxChannelCount)
      {
        goto LABEL_29;
      }

      DerivedStorage = MaxChannelCount;
      goto LABEL_147;
    }

    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      APSAudioFormatDescriptionListGetForBufferedSender();
      IntersectionList = APSAudioFormatDescriptionListCreateIntersectionList();
      FigSimpleMutexUnlock();
      if (IntersectionList)
      {
        DerivedStorage = IntersectionList;
      }

      else
      {
        FigEndpointStreamAudioFormatDescriptionArray = APSAudioFormatDescriptionListCreateFigEndpointStreamAudioFormatDescriptionArray();
        if (!FigEndpointStreamAudioFormatDescriptionArray)
        {
          goto LABEL_29;
        }

        DerivedStorage = FigEndpointStreamAudioFormatDescriptionArray;
      }

      goto LABEL_147;
    }

    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      APSAudioFormatDescriptionListGetForBufferedSender();
      v28 = APSAudioFormatDescriptionListCreateIntersectionList();
      FigSimpleMutexUnlock();
      if (v28)
      {
        DerivedStorage = v28;
      }

      else
      {
        DerivedStorage = APSAudioFormatDescriptionListCopyRichestFormatAsFigEndpointStreamAudioFormatDescription();
        if (!DerivedStorage)
        {
          MaxChannelCount = 0;
          *a4 = v37;
          v37 = 0;
          goto LABEL_30;
        }
      }

      goto LABEL_147;
    }

    if (FigCFEqual())
    {
      DerivedStorage = audioStream_copySupportedAudioCapabilities(a1, a4);
      if (!DerivedStorage)
      {
        goto LABEL_49;
      }

LABEL_147:
      APSLogErrorAt();
      goto LABEL_49;
    }

    if (FigCFEqual())
    {
      FigSimpleMutexLock();
      v20 = *(DerivedStorage + 336);
      if (!v20)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    if (CFEqual(a2, *MEMORY[0x277CEA0D0]) || CFEqual(a2, *MEMORY[0x277CE9FD0]))
    {
      StringValue = *(DerivedStorage + 32);
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, @"RTCStats"))
    {
      DerivedStorage = *MEMORY[0x277CBECE8];
      values = @"AudioBuffered";
      keys[0] = @"sessionType";
      v29 = CFDictionaryCreate(DerivedStorage, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      MaxChannelCount = v29;
      if (!v29)
      {
        APSLogErrorAt();
        goto LABEL_84;
      }

      v40 = v29;
      v30 = CFArrayCreate(DerivedStorage, &v40, 1, MEMORY[0x277CBF128]);
      CFRelease(MaxChannelCount);
      if (v30)
      {
        OUTLINED_FUNCTION_23_2();
        *a4 = v30;
        goto LABEL_30;
      }

LABEL_83:
      APSLogErrorAt();
      MaxChannelCount = 0;
LABEL_84:
      DerivedStorage = 4294950535;
      goto LABEL_30;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1840]))
    {
      DerivedStorage = APAudioEngineVendorVend(*(DerivedStorage + 72), a4);
      if (!DerivedStorage)
      {
        goto LABEL_49;
      }

      goto LABEL_147;
    }

    if (CFEqual(a2, @"HoseRegistrar"))
    {
      StringValue = *(DerivedStorage + 248);
      if (!StringValue)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (CFEqual(a2, *MEMORY[0x277CE9FE8]))
    {
      v31 = kAPEndpointDescriptionProperty_SupportsReceiverChoosesAnchor;
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CC18E0]))
      {
        if (CFEqual(a2, @"SupportsAPAP"))
        {
          v13 = MEMORY[0x277CBED28];
          v14 = *(DerivedStorage + 96);
        }

        else if (CFEqual(a2, @"SupportsAPAT"))
        {
          v13 = MEMORY[0x277CBED28];
          v14 = *(DerivedStorage + 97);
        }

        else
        {
          if (CFEqual(a2, @"EndpointIDs"))
          {
            v32 = *(DerivedStorage + 48);
            DerivedStorage += 48;
            if (v32)
            {
              v33 = CFArrayCreate(MaxChannelCount, DerivedStorage, 1, MEMORY[0x277CBF128]);
            }

            else
            {
              Empty = APSCFArrayGetEmpty();
              v33 = CFRetain(Empty);
            }

            *a4 = v33;
            if (v33)
            {
              goto LABEL_59;
            }

            goto LABEL_83;
          }

          if (CFEqual(a2, *MEMORY[0x277CC18D8]))
          {
            if (!APSSettingsIsFeatureEnabled())
            {
              goto LABEL_44;
            }

            v31 = kAPEndpointDescriptionProperty_SupportsMixedSampleRates;
            goto LABEL_167;
          }

          if (!CFEqual(a2, @"IsSidePlayStream"))
          {
            if (!CFEqual(a2, @"NumberOfSubStreams"))
            {
              if (!CFEqual(a2, *MEMORY[0x277CC1838]))
              {
                if (!CFEqual(a2, *MEMORY[0x277CC18B0]))
                {
                  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s %@ unsupported", a1, "OSStatus audioStream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
                  }

                  MaxChannelCount = 0;
                  DerivedStorage = 4294954512;
                  goto LABEL_30;
                }

                v13 = MEMORY[0x277CC1928];
                goto LABEL_27;
              }

              goto LABEL_46;
            }

LABEL_110:
            FigCFNumberCreateUInt32();
            goto LABEL_29;
          }

          v13 = MEMORY[0x277CBED28];
          v14 = *(DerivedStorage + 115);
        }

LABEL_18:
        if (!v14)
        {
          v13 = MEMORY[0x277CBED10];
        }

        goto LABEL_27;
      }

      v31 = kAPEndpointDescriptionProperty_SupportsReceiverSideSoundCheck;
    }

LABEL_167:
    DerivedStorage = *v31;
    APEndpointDescriptionGetCMBaseObject();
    if (CMBaseObjectCopyProperty(v34, DerivedStorage, MaxChannelCount, a4))
    {
      goto LABEL_44;
    }

LABEL_59:
    OUTLINED_FUNCTION_23_2();
    goto LABEL_30;
  }

  if (*(DerivedStorage + 114))
  {
    MaxChannelCount = 0;
    DerivedStorage = 4294954509;
    goto LABEL_30;
  }

  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 192);
  if (!v10)
  {
    FigSimpleMutexUnlock();
    MaxChannelCount = 0;
    goto LABEL_24;
  }

  MaxChannelCount = CFRetain(v10);
  FigSimpleMutexUnlock();
  if (!MaxChannelCount)
  {
LABEL_24:
    DerivedStorage = 4294954513;
    goto LABEL_30;
  }

  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    DerivedStorage = v12(CMBaseObject, *MEMORY[0x277CE5018], *MEMORY[0x277CBECE8], a4);
    if (!DerivedStorage)
    {
      goto LABEL_30;
    }
  }

  else
  {
    DerivedStorage = 4294954514;
  }

  APSLogErrorAt();
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (MaxChannelCount)
  {
    CFRelease(MaxChannelCount);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return DerivedStorage;
}

Float64 OUTLINED_FUNCTION_23_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *time, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 timea, uint64_t time_16)
{
  timea = *(v16 + 64);
  time_16 = *(v16 + 80);

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_23_8(uint64_t a1, uint64_t a2, const void *a3)
{

  CFDictionarySetValue(v3, v4, a3);
}

uint64_t APCarPlayAudioFormatInfoGetHALDescription(uint64_t a1)
{
  if (a1)
  {
    return a1 + 56;
  }

  else
  {
    return 0;
  }
}

uint64_t APCarPlayAudioFormatInfoGetStreamType(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

uint64_t APCarPlayAudioFormatInfoGetLatencyInfo(uint64_t a1)
{
  if (a1)
  {
    return a1 + 120;
  }

  else
  {
    return 0;
  }
}

uint64_t apsession_setupStreamCreatingResponseInternal(uint64_t *a1)
{
  v81[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_setupStreamCreatingResponseInternal_cold_1(a1, DerivedStorage, v2);
  }

  if (*DerivedStorage)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = (v4 - 111) > 0x13 || ((1 << (v4 - 111)) & 0x80201) == 0;
  if (v5 && apsession_registryContainsStream(*a1, v4, 0))
  {
    return 0;
  }

  v6 = apsession_ensureStartedInternal(*a1);
  if (v6)
  {
    v31 = v6;
    apsession_setupStreamCreatingResponseInternal_cold_2(v6);
LABEL_198:
    apsession_dispatchPostFailedNotification(*a1, v31, @"Starting");
    return v31;
  }

  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = a1[2];
  v10 = a1[3];
  v76 = 0;
  v11 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v78 = 0;
  v81[0] = 0;
  v81[1] = 0;
  v12 = APSGetFBOPropertyInt64();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_setupStreamCreatingResponseInternal_cold_3(v7);
  }

  v73 = DerivedStorage;
  if (!apsession_isCancelled(v7))
  {
    apsession_copyTransportControlStream(v7, &cf);
    v76 = 0;
    if (!cf)
    {
      apsession_setupStreamCreatingResponseInternal_cold_20();
      v75 = 0;
      goto LABEL_91;
    }

    v72 = v10;
    v13 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      if (!*(v11 + 193) && (appended = apsession_appendControlSetupRequest(v7, Mutable, 0), (v76 = appended) != 0))
      {
        apsession_setupStreamCreatingResponseInternal_cold_5(appended);
      }

      else
      {
        theArray = CFArrayCreateMutable(v13, 0, MEMORY[0x277CBF128]);
        if (theArray)
        {
          if (v9)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(v13, 0, v9);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          v17 = MutableCopy;
          if (MutableCopy)
          {
            CFDictionarySetInt64();
            v75 = 0;
            v18 = v8 - 96;
            if ((v8 - 96) <= 0xF)
            {
              if (((1 << v18) & 0xCF1) != 0)
              {
                if (v12)
                {
                  UUIDGet();
                  v75 = bswap64(v81[0]);
                  CFDictionarySetInt64();
                }

                else
                {
                  v75 = 0;
                }
              }

              else if (((1 << v18) & 0xC000) != 0)
              {
                UUIDGet();
                v75 = bswap64(v81[0]);
                CFDictionarySetInt64();
                if (*(v11 + 72) != 5)
                {
                  v19 = FigVirtualDisplayCopyDefaultTimestampInfo();
                  if (v19)
                  {
                    v20 = v19;
                    CFDictionarySetValue(v17, @"timestampInfo", v19);
                    CFRelease(v20);
                  }
                }

                if (v8 == 110 && gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
                {
                  apsession_setupStreamCreatingResponseInternal_cold_6(v7);
                }
              }
            }

            CFArrayAppendValue(theArray, v17);
            CFDictionarySetValue(Mutable, @"streams", theArray);
            if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_setupStreamsCreatingResponse(APSenderSessionRef, APStreamType, CFDictionaryRef, uint64_t *, int *, CFDictionaryRef *)", 33554442, "[%{ptr}] Setup request to %''@: %@\n", v7, *(v11 + 8), Mutable);
            }

            APSEventRecorderRecordEvent();
            v76 = APTransportStreamSendPlistMessageCreatingPlistReply();
            APSEventRecorderRecordEvent();
            if (v76)
            {
              apsession_setupStreamCreatingResponseInternal_cold_7(v76);
            }

            else
            {
              if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_setupStreamsCreatingResponse(APSenderSessionRef, APStreamType, CFDictionaryRef, uint64_t *, int *, CFDictionaryRef *)", 33554442, "[%{ptr}] Setup response from %''@: %@\n", v7, *(v11 + 8), v78);
              }

              if (apsession_isCancelled(v7))
              {
                apsession_setupStreamCreatingResponseInternal_cold_8();
              }

              else
              {
                CFDictionaryGetInt64();
                v76 = 0;
                CFArrayGetTypeID();
                TypedValue = CFDictionaryGetTypedValue();
                if (CFArrayGetCount(TypedValue) == 1)
                {
                  CFDictionaryGetTypeID();
                  TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
                  if (v8 == CFDictionaryGetInt64())
                  {
                    Int64 = CFDictionaryGetInt64();
                    v76 = 0;
                    LODWORD(v79) = 0;
                    v24 = CMBaseObjectGetDerivedStorage();
                    v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (v25)
                    {
                      v26 = v25;
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                      v27 = CFStringCreateF(&v79, "%lu-%llu", v8, Int64);
                      if (v79)
                      {
                        apsession_setupStreamCreatingResponseInternal_cold_15(v79);
                      }

                      else
                      {
                        FigSimpleMutexLock();
                        CFDictionaryAddValue(*(v24 + 576), v27, v26);
                        FigSimpleMutexUnlock();
                      }

                      v28 = v72;
                      CFRelease(v26);
                      if (v27)
                      {
                        CFRelease(v27);
                      }
                    }

                    else
                    {
                      apsession_setupStreamCreatingResponseInternal_cold_16();
                      v28 = v72;
                    }

                    if (v8 == 103)
                    {
                      FigSimpleMutexLock();
                      if (*(v11 + 328))
                      {
                        APSSetFBOPropertyInt64();
                      }

                      if (*(v11 + 336))
                      {
                        APSSetFBOPropertyInt64();
                      }

                      FigSimpleMutexUnlock();
                    }

                    *(v11 + 193) = 1;
                    if (v28)
                    {
                      v29 = theArray;
                      if (TypedValueAtIndex)
                      {
                        v30 = CFRetain(TypedValueAtIndex);
                      }

                      else
                      {
                        v30 = 0;
                      }

                      *v28 = v30;
                      goto LABEL_83;
                    }

                    goto LABEL_82;
                  }

                  apsession_setupStreamCreatingResponseInternal_cold_13();
                }

                else
                {
                  apsession_setupStreamCreatingResponseInternal_cold_10();
                }
              }
            }
          }

          else
          {
            apsession_setupStreamCreatingResponseInternal_cold_17();
          }

          v75 = 0;
LABEL_82:
          v29 = theArray;
          goto LABEL_83;
        }

        apsession_setupStreamCreatingResponseInternal_cold_18();
      }
    }

    else
    {
      apsession_setupStreamCreatingResponseInternal_cold_19();
    }

    v75 = 0;
    v17 = 0;
    v29 = 0;
    goto LABEL_83;
  }

  apsession_setupStreamCreatingResponseInternal_cold_4();
  v75 = 0;
  v17 = 0;
  v29 = 0;
  Mutable = 0;
LABEL_83:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  DerivedStorage = v73;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_91:
  if (v78)
  {
    CFRelease(v78);
  }

  v31 = v76;
  if (v76)
  {
    apsession_setupStreamCreatingResponseInternal_cold_21(v76);
    goto LABEL_198;
  }

  v32 = *a1;
  v33 = *(a1 + 2);
  v35 = a1[4];
  v34 = a1[5];
  v36 = CMBaseObjectGetDerivedStorage();
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81[0] = 0;
  cf = 0;
  v37 = APSGetFBOPropertyInt64();
  v39 = v37;
  if (!v37 && *(v36 + 114) && !*(v36 + 224))
  {
    if (v35)
    {
      v31 = 0;
      *v35 = 0;
      goto LABEL_176;
    }

LABEL_168:
    v31 = 0;
    goto LABEL_176;
  }

  v40 = *(v36 + 224);
  if (!v40)
  {
    apsession_setupStreamCreatingResponseInternal_cold_33();
    v31 = 4294895475;
    goto LABEL_176;
  }

  if (v33 <= 105)
  {
    if (v33 > 101)
    {
      if ((v33 - 102) >= 2)
      {
        goto LABEL_156;
      }
    }

    else if (v33 != 96)
    {
      if (v33 == 100)
      {
        if (!v37)
        {
          goto LABEL_164;
        }

        v60 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v60)
        {
          v31 = 4294954514;
          goto LABEL_175;
        }

        v61 = v60(v40, v75, 32, &v79, 32, &v80);
        if (v61)
        {
          v31 = v61;
          goto LABEL_175;
        }

        v62 = APSCryptorChaCha20Poly1305Create();
        if (v62)
        {
          v31 = v62;
          apsession_setupStreamCreatingResponseInternal_cold_27(v62);
          goto LABEL_176;
        }

        v63 = APSCryptorChaCha20Poly1305Create();
        if (v63)
        {
          v31 = v63;
          apsession_setupStreamCreatingResponseInternal_cold_28(v63);
          goto LABEL_176;
        }
      }

      else
      {
        if (v33 != 101)
        {
          goto LABEL_156;
        }

        if (v37)
        {
          v41 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v41)
          {
            v42 = v41(v40, v75, 32, 0, 32, &v80);
            if (!v42)
            {
              v43 = APSCryptorChaCha20Poly1305Create();
              if (v43)
              {
                v31 = v43;
                apsession_setupStreamCreatingResponseInternal_cold_26(v43);
                goto LABEL_176;
              }

              goto LABEL_164;
            }

            v31 = v42;
          }

          else
          {
            v31 = 4294954514;
          }

          goto LABEL_175;
        }
      }

      goto LABEL_164;
    }

    v44 = *(CMBaseObjectGetVTable() + 16);
    if (v39)
    {
      v45 = *(v44 + 56);
      if (!v45)
      {
        v31 = 4294954514;
        goto LABEL_175;
      }

      v46 = v45(v40, v75, 32, 0, 32, &v80);
      if (v46)
      {
        v31 = v46;
        goto LABEL_175;
      }

      v47 = APSCryptorChaCha20Poly1305Create();
      if (v47)
      {
        v31 = v47;
        apsession_setupStreamCreatingResponseInternal_cold_29(v47);
        goto LABEL_176;
      }

      if (gLogCategory_APSenderSessionAirPlay > 40 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_164;
      }

      v49 = "[%{ptr}] ChaCha Cryptor created\n";
    }

    else
    {
      v57 = *(v44 + 16);
      if (!v57)
      {
        v31 = 4294954514;
        goto LABEL_175;
      }

      v58 = v57(v40, &v80, v81);
      if (v58)
      {
        v31 = v58;
        goto LABEL_175;
      }

      v59 = APSCryptorCBCCreate();
      if (v59)
      {
        v31 = v59;
        apsession_setupStreamCreatingResponseInternal_cold_30(v59);
        goto LABEL_176;
      }

      if (gLogCategory_APSenderSessionAirPlay > 40 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_164;
      }

      v49 = "[%{ptr}] CBC Cryptor created\n";
    }

    apsession_setupStreamCreatingResponseInternal_cold_31(v49, v32, v48);
    goto LABEL_164;
  }

  if (v33 <= 109)
  {
    if (v33 == 106)
    {
      if (!v37)
      {
        goto LABEL_164;
      }

      v64 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v64)
      {
        v31 = 4294954514;
        goto LABEL_175;
      }

      v65 = v64(v40, v75, 32, 0, 32, &v80);
      if (v65)
      {
        v31 = v65;
        goto LABEL_175;
      }

      v66 = APSCryptorChaCha20Poly1305Create();
      if (v66)
      {
        v31 = v66;
        apsession_setupStreamCreatingResponseInternal_cold_25(v66);
        goto LABEL_176;
      }
    }

    else
    {
      if (v33 != 107)
      {
        goto LABEL_156;
      }

      if (v37)
      {
        v50 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v50)
        {
          v51 = v50(v40, v75, 32, &v79, 32, 0);
          if (!v51)
          {
            v52 = APSCryptorChaCha20Poly1305Create();
            if (v52)
            {
              v31 = v52;
              apsession_setupStreamCreatingResponseInternal_cold_24(v52);
              goto LABEL_176;
            }

            goto LABEL_164;
          }

          v31 = v51;
        }

        else
        {
          v31 = 4294954514;
        }

        goto LABEL_175;
      }
    }

LABEL_164:
    if (v35)
    {
      *v35 = v78;
      v78 = 0;
    }

    if (v34)
    {
      v31 = 0;
      *v34 = cf;
      cf = 0;
      goto LABEL_176;
    }

    goto LABEL_168;
  }

  if ((v33 - 110) < 2)
  {
    v53 = *(CMBaseObjectGetVTable() + 16);
    if (v39)
    {
      v54 = *(v53 + 56);
      if (v54)
      {
        v55 = v54(v40, v75, 32, 0, 32, &v80);
        if (!v55)
        {
          v56 = APSCryptorChaCha20Poly1305Create();
          if (v56)
          {
            v31 = v56;
            apsession_setupStreamCreatingResponseInternal_cold_22(v56);
            goto LABEL_176;
          }

          goto LABEL_164;
        }

        v31 = v55;
      }

      else
      {
        v31 = 4294954514;
      }

LABEL_175:
      APSLogErrorAt();
      goto LABEL_176;
    }

    v67 = *(v53 + 40);
    if (!v67)
    {
      v31 = 4294954514;
      goto LABEL_175;
    }

    v68 = v67(v40, v75, &v80, v81);
    if (v68)
    {
      v31 = v68;
      goto LABEL_175;
    }

    v69 = APSCryptorCTRCreate();
    if (v69)
    {
      v31 = v69;
      apsession_setupStreamCreatingResponseInternal_cold_23(v69);
      goto LABEL_176;
    }

    goto LABEL_164;
  }

  if (v33 == 120 || v33 == 130)
  {
    goto LABEL_164;
  }

LABEL_156:
  v31 = 4294895471;
  if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_setupStreamCreatingResponseInternal_cold_32(v33, v32, v38);
  }

LABEL_176:
  if (v79)
  {
    CFRelease(v79);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v81[0])
  {
    CFRelease(v81[0]);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    apsession_setupStreamCreatingResponseInternal_cold_34(v31);
    goto LABEL_198;
  }

  restarted = apsession_restartKeepAliveInDifferentModeIfNeeded(*a1);
  if (restarted)
  {
    v31 = restarted;
    apsession_setupStreamCreatingResponseInternal_cold_35(restarted);
    goto LABEL_198;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_setupStreamCreatingResponseInternal_cold_36(a1, DerivedStorage, (a1 + 1));
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 0;
}

uint64_t apsession_isCancelled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 307);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t airPlayDescription_hasFeatureInternal(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  if (airPlayDescription_copyFeaturesInternal(a1, &v6))
  {
    APSLogErrorAt();
    HasFeature = 0;
    v3 = v6;
    if (!v6)
    {
      return HasFeature;
    }

    goto LABEL_3;
  }

  v3 = v6;
  HasFeature = APSFeaturesHasFeature();
  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

  return HasFeature;
}

uint64_t airPlayDescription_copyFeaturesInternal(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = APAdvertiserInfoCopyProperty();
  if (!v4)
  {
    v16 = 0;
    CMBaseObjectGetDerivedStorage();
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    Mutable = APSFeaturesCreateMutable();
    if (!Mutable)
    {
      airPlayDescription_copyFeaturesInternal_cold_6();
      v8 = 4294960568;
      goto LABEL_49;
    }

    v11 = Mutable;
    if (!PropertyInt64Sync)
    {
      goto LABEL_14;
    }

    APSFeaturesSetFeature();
    if ((PropertyInt64Sync & 4) != 0)
    {
      APSFeaturesSetFeature();
      if ((PropertyInt64Sync & 8) == 0)
      {
LABEL_11:
        if ((PropertyInt64Sync & 2) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_37;
      }
    }

    else if ((PropertyInt64Sync & 8) == 0)
    {
      goto LABEL_11;
    }

    APSFeaturesSetFeature();
    if ((PropertyInt64Sync & 2) == 0)
    {
LABEL_12:
      if (PropertyInt64Sync)
      {
LABEL_13:
        APSFeaturesSetFeature();
      }

LABEL_14:
      if (!APSFeaturesHasFeature() && !APSFeaturesHasFeature() && !APSFeaturesHasFeature() && !APSFeaturesHasFeature())
      {
        if (gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
        {
          airPlayDescription_copyFeaturesInternal_cold_5(v11);
        }

        goto LABEL_42;
      }

      v12 = CFObjectGetPropertyInt64Sync();
      if ((v12 & 2) != 0)
      {
        APSFeaturesSetFeature();
        if ((v12 & 0x10) == 0)
        {
LABEL_20:
          if ((v12 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      else if ((v12 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      APSFeaturesSetFeature();
      if ((v12 & 1) == 0)
      {
LABEL_22:
        if (APSFeaturesHasFeature() || APSFeaturesHasFeature() || APSFeaturesHasFeature())
        {
LABEL_43:
          *a2 = v11;
          v8 = v16;
          if (!v16)
          {
            return v8;
          }

LABEL_49:
          APSLogErrorAt();
          return v8;
        }

        cf = 0;
        v15 = 0;
        airPlayDescription_copyName(a1, &v15);
        APSFeaturesCopyStringRepresentation();
        if (gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
        {
          airPlayDescription_copyFeaturesInternal_cold_4(&v15, &cf);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v15)
        {
          CFRelease(v15);
        }

LABEL_42:
        APSFeaturesClearAllFeatures();
        goto LABEL_43;
      }

LABEL_21:
      APSFeaturesSetFeature();
      goto LABEL_22;
    }

LABEL_37:
    APSFeaturesSetFeature();
    if ((PropertyInt64Sync & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = v4;
  MutableCopy = APSFeaturesCreateMutableCopy();
  if (MutableCopy)
  {
    v7 = MutableCopy;
    if (!airPlayDescription_isSourceVersionAtLeast(a1, 0x1E9998u))
    {
      APSFeaturesClearFeature();
      APSFeaturesClearFeature();
    }

    v8 = 0;
    *a2 = v7;
  }

  else
  {
    airPlayDescription_copyFeaturesInternal_cold_1();
    v8 = 4294960568;
  }

  CFRelease(v5);
  return v8;
}

uint64_t coreUtilsPairing_DeriveKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v7 = PairingSessionDeriveKey();
    v8 = v7;
    if (v7)
    {
      coreUtilsPairing_DeriveKey_cold_1(v7);
    }
  }

  else
  {
    coreUtilsPairing_DeriveKey_cold_2();
    return 4294895524;
  }

  return v8;
}

uint64_t apsession_restartKeepAliveInDifferentModeIfNeeded(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 72) != 5)
  {
    return 0;
  }

  KeepAliveMode = apsession_getKeepAliveMode(a1);
  v3 = apsession_ensureKeepAliveStarted(a1, KeepAliveMode);
  v4 = v3;
  if (v3)
  {
    apsession_restartKeepAliveInDifferentModeIfNeeded_cold_1(v3);
  }

  return v4;
}

void __carEndpoint_handleSenderSessionStarted_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(v2 + 228);
  if (v3 && gLogCategory_APEndpointCarPlay <= 90)
  {
    if (gLogCategory_APEndpointCarPlay == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[5];
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = *(v2 + 228);
    }

    LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_handleSenderSessionStarted(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)_block_invoke", 33554522, "[%{ptr}] Received Sender Session Started notification callback after failure has been reported: Error = %#m\n", a1[6], v3);
    v2 = a1[5];
  }

LABEL_7:
  *(v2 + 248) = 1;
  *(*(a1[4] + 8) + 24) = *(v2 + 224);
  v5 = a1[6];

  carEndpoint_updateActiveStreamConnectionIDs(v5);
}

void OUTLINED_FUNCTION_3_3()
{

  APEndpointDescriptionGetCMBaseObject();
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t *a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554492, a4);
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554442, a4);
}

uint64_t OUTLINED_FUNCTION_3_16(uint64_t *a1)
{

  return APSAudioFormatDescriptionListCopyDebugString();
}

void __carAudioStream_resume_block_invoke_2(void *a1)
{
  v242 = 0;
  v243 = &v242;
  v244 = 0x2000000000;
  v245 = 0;
  v238 = 0;
  v239 = &v238;
  v240 = 0x2000000000;
  v241 = 0;
  v2 = a1[9];
  v3 = "\n";
  if (*(v2 + 176))
  {
    goto LABEL_307;
  }

  v4 = *(v2 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_resume_block_invoke_3;
  block[3] = &unk_27849B550;
  block[4] = &v242;
  block[5] = &v238;
  block[6] = a1[4];
  block[7] = v2;
  dispatch_sync(v4, block);
  if (*(v243 + 24))
  {
    goto LABEL_307;
  }

  if (!*(v239 + 24))
  {
    APSLogErrorAt();
LABEL_307:
    v24 = 0;
    goto LABEL_230;
  }

  OUTLINED_FUNCTION_14_1();
  if (v7 ^ v8 | v36 && (v6 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
  {
    v218 = a1[10];
    v220 = *(a1[9] + 40);
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_resume(FigEndpointStreamRef, CFDictionaryRef, FigEndpointStreamCompletionCallback, void *)_block_invoke_2", v5, "[%{ptr}] %@: Resuming...\n");
  }

  v9 = a1[10];
  v10 = *(*(a1[5] + 8) + 24);
  LODWORD(v256) = 0;
  CMBaseObjectGetDerivedStorage();
  *&theData = 0;
  buffer = 0u;
  v258 = 0u;
  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v11)
  {
    APSLogErrorAt();
    v24 = -6709;
    goto LABEL_227;
  }

  v12 = v11;
  if (FigCFEqual())
  {
    v13 = APSGetFBOPropertyInt64();
    if (v256)
    {
      goto LABEL_26;
    }

    if (v13)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio > 60)
      {
        goto LABEL_28;
      }

      if (gLogCategory_APEndpointStreamCarPlayAudio == -1)
      {
        OUTLINED_FUNCTION_8();
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }
      }

      OUTLINED_FUNCTION_8();
      v18 = (v17 + 10);
LABEL_16:
      LogPrintF(v14, v15, v18, v16, v218, v220);
LABEL_28:
      LODWORD(v256) = -6709;
      goto LABEL_29;
    }
  }

  v19 = CFGetAllocator(v9);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    LODWORD(v256) = -12782;
    goto LABEL_26;
  }

  LODWORD(v256) = v21(CMBaseObject, @"CurrentCarPlayModesAndStates", v19, &theData);
  if (v256)
  {
LABEL_26:
    APSLogErrorAt();
    goto LABEL_29;
  }

  v261.location = 0;
  v261.length = 32;
  CFDataGetBytes(theData, v261, &buffer);
  if (FigCFEqual())
  {
    if (DWORD2(v258) == 2)
    {
      AudioType = APCarPlayAudioFormatInfoGetAudioType(v10);
      if (CFEqual(AudioType, @"speechRecognition"))
      {
        if (gLogCategory_APEndpointStreamCarPlayAudio > 90)
        {
          goto LABEL_28;
        }

        if (gLogCategory_APEndpointStreamCarPlayAudio == -1)
        {
          OUTLINED_FUNCTION_8();
          if (!_LogCategory_Initialize())
          {
            goto LABEL_28;
          }
        }

        v218 = v9;
        OUTLINED_FUNCTION_8();
        v18 = (v23 + 40);
        goto LABEL_16;
      }
    }
  }

LABEL_29:
  CFRelease(v12);
  if (theData)
  {
    CFRelease(theData);
  }

  v24 = v256;
  if (v256)
  {
    goto LABEL_227;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 208) = 0u;
  *(DerivedStorage + 224) = 0u;
  *(DerivedStorage + 240) = 0u;
  *(DerivedStorage + 256) = 0u;
  *(DerivedStorage + 272) = 0u;
  *(DerivedStorage + 288) = 0u;
  *(DerivedStorage + 304) = 0u;
  *(DerivedStorage + 320) = 0u;
  *(DerivedStorage + 336) = 0;
  *(DerivedStorage + 344) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_5_3();
  FigNotificationCenterAddWeakListener();
  v26 = a1[10];
  v27 = *(*(a1[6] + 8) + 24);
  v28 = *(*(a1[7] + 8) + 24);
  v29 = *(*(a1[5] + 8) + 24);
  v30 = CMBaseObjectGetDerivedStorage();
  if (!(v27 | v28) || !v29)
  {
    APSLogErrorAt();
    v24 = -16760;
    goto LABEL_226;
  }

  v31 = v30;
  *(v30 + 192) = CFRetain(v29);
  Description = APCarPlayAudioFormatInfoGetDescription(v29);
  APCarPlayAudioFormatInfoGetLatencyInfo(v29);
  if (!v27)
  {
    goto LABEL_47;
  }

  *(v31 + 400) = 1;
  v33 = CFGetAllocator(v26);
  v34 = CMSimpleQueueCreate(v33, 20, (v31 + 408));
  if (v34)
  {
    v24 = v34;
    goto LABEL_225;
  }

  v35 = APSSetFBOPropertyInt64();
  v36 = v35 == -12784 || v35 == -12782;
  if (!v36)
  {
    v24 = v35;
    if (v35)
    {
      goto LABEL_225;
    }
  }

  v37 = CFRetain(v27);
  *(v31 + 368) = v37;
  v38 = *(CMBaseObjectGetVTable() + 16);
  if (*v38 < 2uLL)
  {
    v24 = -12781;
    goto LABEL_225;
  }

  v39 = v38[2];
  if (!v39)
  {
    v24 = -12782;
LABEL_225:
    APSLogErrorAt();
LABEL_226:
    carAudioStream_teardownAudioProcessing(v26);
    goto LABEL_227;
  }

  v40 = v39(v37, Description);
  if (v40)
  {
    v24 = v40;
    goto LABEL_225;
  }

  v41 = *(v31 + 368);
  v42 = *(CMBaseObjectGetVTable() + 16);
  if (*v42 < 2uLL)
  {
    v24 = -12781;
    goto LABEL_225;
  }

  v43 = v42[3];
  if (!v43)
  {
    v24 = -12782;
    goto LABEL_225;
  }

  v44 = v43(v41);
  if (v44)
  {
    v24 = v44;
    goto LABEL_225;
  }

LABEL_47:
  if (!v28)
  {
    goto LABEL_67;
  }

  v45 = CFRetain(v28);
  *(v31 + 432) = v45;
  v46 = *(CMBaseObjectGetVTable() + 16);
  if (*v46 < 2uLL)
  {
    v24 = -12781;
    goto LABEL_225;
  }

  v47 = v46[2];
  if (!v47)
  {
    v24 = -12782;
    goto LABEL_225;
  }

  v48 = v47(v45, Description);
  if (v48)
  {
    v24 = v48;
    goto LABEL_225;
  }

  if (*(Description + 8) != 1819304813)
  {
    APCarPlayAudioFormatInfoGetStreamType(v29);
    if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
    {
      v218 = v26;
      v220 = *(v31 + 40);
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setupAudioProcessing(FigEndpointStreamRef, FigEndpointAudioSinkRef, FigEndpointAudioSourceRef, APCarPlayAudioFormatInfoRef)", v49, "[%{ptr}] %@: Setting bitrate to: %u (Packet size limit bits: %u)\n");
    }

    v50 = APSSetFBOPropertyInt64();
    if (v50)
    {
      v24 = v50;
      goto LABEL_225;
    }
  }

  if (APCarPlayAudioFormatInfoGetStreamType(v29) == 102)
  {
    v51 = *(v31 + 432);
    APAudioEngineGetCMBaseObject();
    v53 = v52;
    v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v54)
    {
      v24 = -12782;
      goto LABEL_225;
    }

    v55 = v54(v53, @"audioSource", v51);
    if (v55)
    {
      v24 = v55;
      goto LABEL_225;
    }
  }

  else
  {
    v56 = APSSetFBOPropertyInt64();
    if (v56)
    {
      v24 = v56;
      goto LABEL_225;
    }
  }

  *(v31 + 474) = 0;
  *(v31 + 480) = 0;
LABEL_67:
  v57 = *(*(a1[5] + 8) + 24);
  v58 = *(*(a1[8] + 8) + 24);
  v59 = a1[10];
  v60 = a1[11];
  TransportStreamIDAndQuality = 0;
  v61 = CMBaseObjectGetDerivedStorage();
  buffer = xmmword_283569880;
  v258 = unk_283569890;
  v259 = xmmword_2835698A0;
  v256 = 0;
  v255 = 0;
  v253 = 0;
  v254 = 0.0;
  v251 = 0;
  v252 = 0;
  v250 = 0;
  v249 = 0;
  v231 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v231)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_16_0(-16761);
LABEL_316:
    v105 = &unk_27CFF0000;
    v106 = MEMORY[0x277CC1938];
    goto LABEL_170;
  }

  v227 = v58;
  v62 = APSGetFBOPropertyInt64();
  v63 = *MEMORY[0x277CBECE8];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!theDict)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_16_0(-16761);
    v217 = v231;
LABEL_315:
    CFRelease(v217);
    goto LABEL_316;
  }

  StreamType = APCarPlayAudioFormatInfoGetStreamType(v57);
  if (!StreamType)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_16_0(-16760);
    CFRelease(v231);
    v217 = theDict;
    goto LABEL_315;
  }

  v65 = StreamType;
  v66 = APCarPlayAudioFormatInfoGetAudioType(v57);
  v67 = v65 != 102 && v62 == 0;
  v229 = v67;
  if (v65 == 102)
  {
    CFDictionaryRemoveAllValues(theDict);
    v85 = CFDictionarySetInt64();
    OUTLINED_FUNCTION_1_10(v85, v86, v87, v88, v89, v90, v91, v92, v218, SHIDWORD(v218), v220, SBYTE2(v220), BYTE3(v220));
    v93 = OUTLINED_FUNCTION_18_0();
    CFDictionarySetValue(v93, v94, v95);
    v96 = *(v61 + 96);
    v97 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v97)
    {
      TransportStreamIDAndQuality = v97(v96, 1735287668, theDict, v61 + 456);
      if (!TransportStreamIDAndQuality)
      {
        if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
        {
          v218 = v59;
          v220 = *(v61 + 456);
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setupTransportStreams(FigEndpointStreamRef, APCarPlayAudioFormatInfoRef, CFTypeRef, CFDictionaryRef)", v98, "[%{ptr}] Created transport control stream [%{ptr}]\n");
        }

        v108 = *(v61 + 456);
        v109 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v109)
        {
          TransportStreamIDAndQuality = v109(v108, carAudioStream_handleOutputControlMessage, 0, v59);
          if (!TransportStreamIDAndQuality)
          {
            v110 = *(v61 + 456);
            v111 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v111)
            {
              TransportStreamIDAndQuality = v111(v110);
              if (!TransportStreamIDAndQuality)
              {
                v69 = APSGetFBOPropertyInt64();
                if (!TransportStreamIDAndQuality)
                {
                  v225 = 1;
                  goto LABEL_78;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_10_1();
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_10_1();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_10_1();
    }

    APSLogErrorAt();
    Mutable = 0;
    v99 = 0;
    v105 = &unk_27CFF0000;
    v106 = MEMORY[0x277CC1938];
    goto LABEL_164;
  }

  if (v65 != 100 || !CFEqual(v66, @"speechRecognition") || *(v61 + 368))
  {
    v225 = 0;
    v69 = 0;
LABEL_78:
    cf = v59;
    v226 = v69;
    if (!*(v61 + 368))
    {
      v224 = 0;
      if (!v60)
      {
        goto LABEL_96;
      }

      goto LABEL_93;
    }

    v70 = 1;
    goto LABEL_80;
  }

  cf = v59;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
  {
    v220 = *(v61 + 40);
    v218 = v59;
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setupTransportStreams(FigEndpointStreamRef, APCarPlayAudioFormatInfoRef, CFTypeRef, CFDictionaryRef)", v68, "[%{ptr}] %@: Adding a dummy input stream to force %@ to be input-output rather than output-only");
  }

  v226 = 0;
  v70 = 0;
  v225 = 0;
LABEL_80:
  *&theData = 0;
  v248 = 0;
  TransportStreamIDAndQuality = carAudioStream_getTransportStreamIDAndQuality(v65, 1, &theData, &v248);
  CFDictionaryRemoveAllValues(theDict);
  v71 = CFDictionarySetInt64();
  OUTLINED_FUNCTION_1_10(v71, v72, v73, v74, v75, v76, v77, v78, v218, SHIDWORD(v218), v220, SBYTE2(v220), BYTE3(v220));
  v79 = OUTLINED_FUNCTION_18_0();
  CFDictionarySetValue(v79, v80, v81);
  if (*(*(CMBaseObjectGetVTable() + 16) + 64))
  {
    v82 = OUTLINED_FUNCTION_18_0();
    TransportStreamIDAndQuality = v83(v82);
    if (!TransportStreamIDAndQuality)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
      {
        v218 = cf;
        v220 = *(v61 + 384);
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setupTransportStreams(FigEndpointStreamRef, APCarPlayAudioFormatInfoRef, CFTypeRef, CFDictionaryRef)", v84, "[%{ptr}] Created transport input data stream [%{ptr}]\n");
      }

      v100 = *(v61 + 384);
      v101 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v101)
      {
        TransportStreamIDAndQuality = v101(v100, carAudioStream_handleIncomingInputDataMessage, 0, cf);
        if (!TransportStreamIDAndQuality)
        {
          v102 = *(v61 + 384);
          v103 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v103)
          {
            TransportStreamIDAndQuality = v103(v102);
            if (!TransportStreamIDAndQuality)
            {
              OUTLINED_FUNCTION_3_9();
              kdebug_trace();
              TransportStreamIDAndQuality = FigTransportStreamWaitUntilConnected(*(v61 + 384));
              if (!TransportStreamIDAndQuality)
              {
                OUTLINED_FUNCTION_3_9();
                kdebug_trace();
                v224 = APSGetFBOPropertyInt64();
                if (!TransportStreamIDAndQuality)
                {
                  if (v70)
                  {
                    v104 = CFGetAllocator(cf);
                    APSRTPPacketHandlerCreate(v104, 2, 2u, 0, (v61 + 392));
                  }

                  OUTLINED_FUNCTION_3_9();
                  kdebug_trace();
                  if (!v60)
                  {
                    goto LABEL_96;
                  }

LABEL_93:
                  if (CFDictionaryContainsKey(v60, @"StreamStartTimestamp"))
                  {
                    CFDictionaryGetInt64();
                    if (TransportStreamIDAndQuality || (TransportStreamIDAndQuality = APSNetworkClockNTPConvertUpTicksToNTP()) != 0)
                    {
                      APSLogErrorAt();
                      Mutable = 0;
                      v99 = 0;
                      goto LABEL_325;
                    }
                  }

LABEL_96:
                  if (v65 == 107)
                  {
                    v99 = FigCFWeakReferenceHolderCopyReferencedObject();
                    if (v99 && !v62 && !APSGetFBOPropertyInt64())
                    {
                      FigGetCFPreferenceNumberWithDefault();
                    }
                  }

                  else
                  {
                    v99 = 0;
                  }

                  v222 = v249;
                  Mutable = CFDictionaryCreateMutable(v63, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (Mutable)
                  {
                    v223 = v99;
                    v112 = APCarPlayAudioFormatInfoGetStreamType(v57);
                    v113 = APCarPlayAudioFormatInfoGetAudioType(v57);
                    APCarPlayAudioFormatInfoGetDescription(v57);
                    APCarPlayAudioFormatInfoGetAudioFormat(v57);
                    APCarPlayAudioFormatInfoGetLatencyInfo(v57);
                    CFDictionarySetValue(Mutable, @"audioType", v113);
                    CFDictionarySetInt64();
                    CFDictionarySetInt64();
                    if (v227 && v112 == 100 && CFEqual(v113, @"telephony"))
                    {
                      CFDictionarySetValue(Mutable, @"vocoderInfo", v227);
                    }

                    if (v226 >= 1)
                    {
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                    }

                    v114 = *MEMORY[0x277CBED28];
                    if (v224 >= 1)
                    {
                      CFDictionarySetValue(Mutable, @"input", *MEMORY[0x277CBED28]);
                      CFDictionarySetInt64();
                    }

                    CFDictionarySetValue(Mutable, @"supportsHighAccuracyTimestamps", v114);
                    if (v229)
                    {
                      CFDictionarySetValue(Mutable, @"supportsRTPPacketRedundancy", v114);
                    }

                    if (v112 == 107)
                    {
                      if (v222)
                      {
                        CFDictionarySetInt64();
                      }

                      CFDictionarySetInt64();
                    }

                    TransportStreamIDAndQuality = 0;
                    v115 = *(v61 + 96);
                    v116 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                    if (v116)
                    {
                      v228 = v114;
                      TransportStreamIDAndQuality = v116(v115, v65, Mutable, &v251, v61 + 448, v61 + 376);
                      if (!TransportStreamIDAndQuality)
                      {
                        OUTLINED_FUNCTION_3_9();
                        kdebug_trace();
                        *(v61 + 520) = CFDictionaryGetInt64();
                        if (!*(v61 + 432))
                        {
                          goto LABEL_258;
                        }

                        theData = 0u;
                        v247 = 0u;
                        *&theData = CFRetain(v231);
                        *(&theData + 1) = MEMORY[0x277CBE550];
                        *&v247 = carAudioStream_acquireMessageBacking;
                        *(&v247 + 1) = carAudioStream_relinquishMessageBacking;
                        TransportStreamIDAndQuality = carAudioStream_getTransportStreamIDAndQuality(v65, 0, &v256, &v255);
                        if (!TransportStreamIDAndQuality)
                        {
                          CFDictionaryRemoveAllValues(theDict);
                          CFDictionarySetInt64();
                          v117 = CFDictionarySetInt64();
                          v118 = *MEMORY[0x277CC1B08];
                          v126 = OUTLINED_FUNCTION_1_10(v117, v119, v120, v121, v122, v123, v124, v125, v218, SHIDWORD(v218), v220, SBYTE2(v220), BYTE3(v220));
                          CFDictionarySetValue(theDict, v118, v126);
                          TransportStreamIDAndQuality = APSenderSessionCreateTransportStreamWithID(*(v61 + 96), v256, theDict, v61 + 464);
                          if (!TransportStreamIDAndQuality)
                          {
                            if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
                            {
                              OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setupTransportStreams(FigEndpointStreamRef, APCarPlayAudioFormatInfoRef, CFTypeRef, CFDictionaryRef)", v127, "[%{ptr}] Created transport data stream [%{ptr}]\n");
                            }

                            CFDictionaryGetInt64();
                            if (!TransportStreamIDAndQuality)
                            {
                              TransportStreamIDAndQuality = APSSetFBOPropertyInt64();
                              if (!TransportStreamIDAndQuality)
                              {
                                TransportStreamIDAndQuality = FigTransportStreamResume(*(v61 + 464));
                                if (!TransportStreamIDAndQuality)
                                {
                                  OUTLINED_FUNCTION_3_9();
                                  kdebug_trace();
                                  TransportStreamIDAndQuality = FigTransportStreamWaitUntilConnected(*(v61 + 464));
                                  if (!TransportStreamIDAndQuality)
                                  {
                                    OUTLINED_FUNCTION_3_9();
                                    kdebug_trace();
                                    FigCFDictionaryGetBooleanIfPresent();
                                    if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
                                    {
                                      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setupTransportStreams(FigEndpointStreamRef, APCarPlayAudioFormatInfoRef, CFTypeRef, CFDictionaryRef)", v192, "[%{ptr}] %@: RFC2198 redundancy support: %s\n");
                                    }

                                    v193 = v229 && v250 != 0 ? 2 : 1;
                                    v194 = CFGetAllocator(cf);
                                    TransportStreamIDAndQuality = APSRTPPacketHandlerCreate(v194, 1, v193, &theData, (v61 + 488));
                                    if (!TransportStreamIDAndQuality)
                                    {
LABEL_258:
                                      v106 = MEMORY[0x277CC1938];
                                      v59 = cf;
                                      if (!v225)
                                      {
                                        goto LABEL_265;
                                      }

                                      CFDictionaryGetInt64();
                                      if (!TransportStreamIDAndQuality)
                                      {
                                        TransportStreamIDAndQuality = APSSetFBOPropertyInt64();
                                        if (!TransportStreamIDAndQuality)
                                        {
                                          v195 = *(v61 + 448);
                                          APAudioEngineGetCMBaseObject();
                                          TransportStreamIDAndQuality = CMBaseObjectSetProperty(v196, @"cryptor", v195);
                                          if (!TransportStreamIDAndQuality)
                                          {
                                            APCarPlayAudioFormatInfoGetDescription(v57);
                                            APCarPlayAudioFormatInfoGetLatencyInfo(v57);
                                            APSSetFBOPropertyInt64();
                                            if (!TransportStreamIDAndQuality)
                                            {
                                              v197 = *(v61 + 16);
                                              AudioFormat = APCarPlayAudioFormatInfoGetAudioFormat(v57);
                                              TransportStreamIDAndQuality = APAudioEngineRegisterStream(v197, cf, AudioFormat, &buffer);
                                              if (!TransportStreamIDAndQuality)
                                              {
                                                *(v61 + 472) = 1;
LABEL_265:
                                                v199 = CMBaseObjectGetDerivedStorage();
                                                if (!FigCFDictionaryGetBooleanIfPresent())
                                                {
                                                  *(v199 + 200) = 0;
                                                }

                                                v200 = *(v199 + 368);
                                                v201 = MEMORY[0x277CBED10];
                                                v105 = &unk_27CFF0000;
                                                if (!v200 || (*(v199 + 200) ? (v202 = v228) : (v202 = *MEMORY[0x277CBED10]), (v203 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0 || ((v204 = v203(v200, *MEMORY[0x277CC0A50], v202), v204 != -12784) ? (v205 = v204 == -12782) : (v205 = 1), v205 || (v206 = v204) == 0)))
                                                {
                                                  v207 = *(v199 + 200);
                                                  if (v65 != 102)
                                                  {
                                                    goto LABEL_284;
                                                  }

                                                  v208 = *(v199 + 16);
                                                  if (*(v199 + 200))
                                                  {
                                                    v209 = *v201;
                                                  }

                                                  else
                                                  {
                                                    v209 = v228;
                                                  }

                                                  v210 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                                  if (v210)
                                                  {
                                                    v211 = v210(v208, @"ForceZeroBasedSampleTimes", v209);
                                                    if (!v211)
                                                    {
                                                      v207 = *(v199 + 200);
LABEL_284:
                                                      APAudioZeroTimeStampProviderSetHighAccuracySupport(*(v199 + 56), v207);
                                                      OUTLINED_FUNCTION_14_1();
                                                      v59 = cf;
                                                      if (v7 ^ v8 | v36 && (v213 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
                                                      {
                                                        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setupHighAccuracyTimestamps(FigEndpointStreamRef, APStreamType, CFDictionaryRef)", v212, "[%{ptr}] %@: High-accuracy Timestamps: %s\n");
                                                      }

                                                      TransportStreamIDAndQuality = 0;
                                                      if (!FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetInt64IfPresent() || v254 == 0.0 && !v253)
                                                      {
                                                        APAudioZeroTimeStampProviderReset(*(v61 + 56));
                                                        v214 = APCarPlayAudioFormatInfoGetDescription(*(v61 + 192));
                                                        carAudioStream_updateZeroTimeFromSampleRate(cf, *v214);
                                                        v99 = v223;
LABEL_297:
                                                        *(v61 + 184) = CFDictionaryGetInt64();
                                                        OUTLINED_FUNCTION_14_1();
                                                        if (v7 ^ v8 | v36 && (v216 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
                                                        {
                                                          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setupTransportStreams(FigEndpointStreamRef, APCarPlayAudioFormatInfoRef, CFTypeRef, CFDictionaryRef)", v215, "[%{ptr}] %@: Setup succeeded for\nRequest: %@\nResponse: %@\n");
                                                        }

                                                        goto LABEL_164;
                                                      }

                                                      FigCFDictionaryGetInt64IfPresent();
                                                      TransportStreamIDAndQuality = APSNetworkClockNTPConvertNTPToUpTicks();
                                                      v99 = v223;
                                                      if (!TransportStreamIDAndQuality)
                                                      {
                                                        carAudioStream_updateZeroTimeFromPhaseValues(cf, v253, v252, v254);
                                                        goto LABEL_297;
                                                      }

                                                      goto LABEL_290;
                                                    }

                                                    v206 = v211;
                                                  }

                                                  else
                                                  {
                                                    v206 = -12782;
                                                  }
                                                }

                                                APSLogErrorAt();
                                                v59 = cf;
                                                v99 = v223;
                                                TransportStreamIDAndQuality = v206;
LABEL_290:
                                                APSLogErrorAt();
                                                goto LABEL_164;
                                              }
                                            }
                                          }
                                        }
                                      }

                                      APSLogErrorAt();
                                      v105 = &unk_27CFF0000;
                                      goto LABEL_163;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_10_1();
                    }

                    APSLogErrorAt();
                    v105 = &unk_27CFF0000;
                    v106 = MEMORY[0x277CC1938];
                    v59 = cf;
LABEL_163:
                    v99 = v223;
                    goto LABEL_164;
                  }

                  APSLogErrorAt();
                  TransportStreamIDAndQuality = -6728;
                  APSLogErrorAt();
LABEL_325:
                  v105 = &unk_27CFF0000;
                  v106 = MEMORY[0x277CC1938];
                  v59 = cf;
                  goto LABEL_164;
                }
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_10_1();
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_10_1();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_1();
  }

  APSLogErrorAt();
  v105 = &unk_27CFF0000;
  v106 = MEMORY[0x277CC1938];
  v59 = cf;
  Mutable = 0;
  v99 = 0;
LABEL_164:
  if (TransportStreamIDAndQuality)
  {
    carAudioStream_teardownTransportStreams(v59, 0);
  }

  CFRelease(v231);
  if (v99)
  {
    CFRelease(v99);
  }

  CFRelease(theDict);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_170:
  if (v251)
  {
    CFRelease(v251);
  }

  v24 = TransportStreamIDAndQuality;
  v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
  if (TransportStreamIDAndQuality)
  {
    goto LABEL_227;
  }

  v128 = OUTLINED_FUNCTION_2_8();
  if (APCarPlayAudioFormatInfoGetStreamType(v128) == 102)
  {
    *(CMBaseObjectGetDerivedStorage() + 528) = 0u;
  }

  v129 = OUTLINED_FUNCTION_2_8();
  if (APCarPlayAudioFormatInfoGetStreamType(v129) != 107)
  {
    v130 = OUTLINED_FUNCTION_2_8();
    if (APCarPlayAudioFormatInfoGetDescription(v130))
    {
      v133 = *(a1[9] + 88);
      v134 = OUTLINED_FUNCTION_2_8();
      v135 = APCarPlayAudioFormatInfoGetDescription(v134);
      inited = APCarPlayAnalyticsInitASRCollection(v133, *v135);
      if (inited)
      {
        v137 = v105[24];
        if (v137 <= 60)
        {
          v138 = inited;
          if (v137 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
          {
            v139 = a1[10];
            v140 = OUTLINED_FUNCTION_2_8();
            v221 = *APCarPlayAudioFormatInfoGetDescription(v140);
            OUTLINED_FUNCTION_8();
            LogPrintF(v142, v143, (v141 + 10), v144, v139, v138, v221);
          }
        }
      }
    }

    v145 = APCarPlayAnalyticsInitAudioAnomaliesCollection(*(a1[9] + 88), v131, v132);
    if (v145)
    {
      v146 = v105[24];
      if (v146 <= 60)
      {
        v147 = v145;
        if (v146 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
        {
          v219 = a1[10];
          OUTLINED_FUNCTION_8();
          LogPrintF(v149, v150, (v148 + 10), v151, v219, v147);
        }
      }
    }

    v152 = *(a1[9] + 88);
    v153 = OUTLINED_FUNCTION_2_8();
    v154 = APCarPlayAudioFormatInfoGetStreamType(v153);
    APCarPlayAnalyticsStartCollections(v152, v154, *(a1[9] + 520), 0);
  }

  v155 = a1[9];
  if (*(v155 + 368))
  {
    v156 = *(v155 + 352);
    v236[0] = MEMORY[0x277D85DD0];
    v236[1] = 0x40000000;
    v236[2] = __carAudioStream_resume_block_invoke_4;
    v236[3] = &__block_descriptor_tmp_131;
    v236[4] = v155;
    dispatch_async(v156, v236);
  }

  v157 = OUTLINED_FUNCTION_2_8();
  v158 = APCarPlayAudioFormatInfoGetStreamType(v157);
  v159 = a1[9];
  if (v158 == 102)
  {
    v160 = v159[2];
    v161 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v161)
    {
      v24 = -12782;
      goto LABEL_227;
    }

    v162 = v161(v160);
    if (v162)
    {
      v24 = v162;
LABEL_227:
      APSLogErrorAt();
      v183 = 0;
      goto LABEL_228;
    }
  }

  else if (v159[54])
  {
    v163 = v159[52];
    v235[0] = MEMORY[0x277D85DD0];
    v235[1] = 0x40000000;
    v235[2] = __carAudioStream_resume_block_invoke_5;
    v235[3] = &unk_27849B598;
    v235[4] = a1[5];
    v235[5] = v159;
    dispatch_async(v163, v235);
    v164 = OUTLINED_FUNCTION_2_8();
    v165 = *(a1[9] + 448);
    v166 = APCarPlayAudioFormatInfoGetDescription(v164);
    if (*(v166 + 20) <= 1u)
    {
      v169 = v166;
      if (v165 && (v170 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
      {
        v171 = 1440 - v170(v165);
      }

      else
      {
        v171 = 1440;
      }

      v167 = v171 / *(v169 + 16);
      if ((1000 * v167) / *v169 > 7.5)
      {
        v167 = (*v169 * 7.5 / 1000.0);
      }
    }

    else
    {
      v167 = 1;
    }

    v172 = a1[9];
    *(v172 + 440) = v167;
    v173 = *(v172 + 432);
    v174 = *(v172 + 416);
    v175 = a1[10];
    v176 = *(CMBaseObjectGetVTable() + 16);
    if (*v176 < 2uLL)
    {
      v24 = -12781;
      goto LABEL_227;
    }

    v177 = v176[3];
    if (!v177)
    {
      v24 = -12782;
      goto LABEL_227;
    }

    v178 = v177(v173, v167, v174, carAudioStreamHandleDataReady, v175);
    if (v178)
    {
      v24 = v178;
      goto LABEL_227;
    }

    dispatch_suspend(*(a1[9] + 416));
    v179 = FigEndpointAudioSourceResume(*(a1[9] + 432));
    if (v179)
    {
      v24 = v179;
      APSLogErrorAt();
      v183 = 1;
LABEL_228:
      carAudioStream_suspendInternal(a1[10], 0);
      if (!v183)
      {
        goto LABEL_230;
      }

      goto LABEL_229;
    }

    v168 = 1;
    goto LABEL_209;
  }

  v168 = 0;
LABEL_209:
  v180 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(*(v180 + 40), *v106) || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    APSEventRecorderRecordEvent();
  }

  else
  {
    APSLogErrorAt();
  }

  *(a1[9] + 176) = 1;
  v182 = v105[24];
  if (v182 <= 50 && (v182 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamCarPlayAudio)))
  {
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_resume(FigEndpointStreamRef, CFDictionaryRef, FigEndpointStreamCompletionCallback, void *)_block_invoke_2", v181, "[%{ptr}] %@: Resumed\n");
  }

  v24 = 0;
  if (v168)
  {
LABEL_229:
    dispatch_resume(*(a1[9] + 416));
  }

LABEL_230:
  CFRetain(a1[10]);
  v184 = *(a1[9] + 112);
  v233[0] = MEMORY[0x277D85DD0];
  v233[1] = *(v3 + 35);
  v233[2] = __carAudioStream_resume_block_invoke_6;
  v233[3] = &__block_descriptor_tmp_134;
  v185 = a1[10];
  v186 = a1[13];
  v233[4] = a1[12];
  v233[5] = v185;
  v234 = v24;
  v233[6] = v186;
  dispatch_async(v184, v233);
  v187 = *(*(a1[6] + 8) + 24);
  if (v187)
  {
    CFRelease(v187);
  }

  v188 = *(*(a1[7] + 8) + 24);
  if (v188)
  {
    CFRelease(v188);
  }

  v189 = OUTLINED_FUNCTION_2_8();
  if (v189)
  {
    CFRelease(v189);
  }

  v190 = *(*(a1[8] + 8) + 24);
  if (v190)
  {
    CFRelease(v190);
  }

  v191 = a1[11];
  if (v191)
  {
    CFRelease(v191);
  }

  CFRelease(a1[10]);
  _Block_object_dispose(&v238, 8);
  _Block_object_dispose(&v242, 8);
}

void carEndpoint_handleSenderSessionStarted(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_handleSenderSessionStarted_cold_1(a2, v3, v4);
  }

  v6 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_handleSenderSessionStarted_block_invoke;
  block[3] = &unk_27849ECD8;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = &v8;
  dispatch_sync(v6, block);
  carEndpoint_postNotification(a2, *MEMORY[0x277CC0CF8], *(v9 + 6), 0);
  carEndpoint_postNotification(a2, *MEMORY[0x277CC0D08], *(v9 + 6), 0);
  _Block_object_dispose(&v8, 8);
}

void carEndpoint_updateActiveStreamConnectionIDs(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 240))
  {
    return;
  }

  if (*(DerivedStorage + 272))
  {
    CFRelease(*(DerivedStorage + 272));
    *(DerivedStorage + 272) = 0;
  }

  APSenderSessionGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v7 = 4294954514;
    goto LABEL_11;
  }

  v3 = OUTLINED_FUNCTION_8_4();
  v5 = v4(v3);
  if (v5 != -6727 && v5 != 0)
  {
    v7 = v5;
LABEL_11:
    if (gLogCategory_APEndpointCarPlay > 90)
    {
      return;
    }

    if (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_updateActiveStreamConnectionIDs(FigEndpointRef)", 33554522, "[%{ptr}] Error %#m occurred when updating active streamConnectionIDs", a1, v7);
    }
  }

  if (gLogCategory_APEndpointCarPlay <= 40 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    AppendPrintF(&v11, "Updated active streamConnectionIDs: [\n", a1, *(DerivedStorage + 272));
    OUTLINED_FUNCTION_2_22();
    FigCFArrayApplyBlock();
    AppendPrintF((v9 + 3), "]", a1);
    if (gLogCategory_APEndpointCarPlay <= 40 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_updateActiveStreamConnectionIDs(FigEndpointRef)", 33554472, "[%{ptr}] %s", a1, v9[3]);
    }

    free(v9[3]);
    _Block_object_dispose(&v8, 8);
  }
}

void carEndpoint_postNotification(const void *a1, const void *a2, int a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v9 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_291;
  block[4] = DerivedStorage;
  block[5] = a2;
  v11 = a3;
  block[6] = a4;
  block[7] = a1;
  dispatch_async(v9, block);
}

uint64_t coreUtilsKeyHolder_CreateEncryptionKeysForStream(uint64_t a1, uint64_t a2, CFIndex a3, __CFData **a4, CFIndex a5, __CFData **a6)
{
  v17 = 0;
  v11 = ASPrintF(&v17, "%s%llu", "DataStream-Salt", a2);
  DerivedKey = coreUtilsKeyHolder_CreateDerivedKey(a1, v17, v11, "DataStream-Input-Encryption-Key", 31, a3, a4);
  if (DerivedKey)
  {
    v14 = DerivedKey;
    coreUtilsKeyHolder_CreateEncryptionKeysForStream_cold_1(DerivedKey);
  }

  else
  {
    v13 = coreUtilsKeyHolder_CreateDerivedKey(a1, v17, v11, "DataStream-Output-Encryption-Key", 32, a5, a6);
    v14 = v13;
    if (v13)
    {
      coreUtilsKeyHolder_CreateEncryptionKeysForStream_cold_2(v13);
    }
  }

  v15 = v17;
  if (v11)
  {
    do
    {
      *v15++ = 0;
      --v11;
    }

    while (v11);
    v15 = v17;
  }

  if (v15)
  {
    free(v15);
  }

  return v14;
}

uint64_t coreUtilsKeyHolder_CreateDerivedKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFIndex a6, __CFData **a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a6)
  {
    v21 = 4294895575;
    coreUtilsKeyHolder_CreateDerivedKey_cold_2();
    return v21;
  }

  v14 = DerivedStorage;
  Mutable = CFDataCreateMutable(*(DerivedStorage + 8), a6);
  if (!Mutable)
  {
    coreUtilsKeyHolder_CreateDerivedKey_cold_1();
    return 4294895576;
  }

  v16 = Mutable;
  CFDataSetLength(Mutable, a6);
  v17 = *v14;
  MutableBytePtr = CFDataGetMutableBytePtr(v16);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    v21 = 4294954514;
LABEL_8:
    APSLogErrorAt();
    goto LABEL_9;
  }

  v20 = v19(v17, a2, a3, a4, a5, a6, MutableBytePtr);
  if (v20)
  {
    v21 = v20;
    goto LABEL_8;
  }

  v21 = 0;
  if (!a7)
  {
LABEL_9:
    CFRelease(v16);
    return v21;
  }

  *a7 = v16;
  return v21;
}

uint64_t mfiMutualAuth_CopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t *a4)
{
  if (!CFEqual(cf1, @"AuthenticationData"))
  {
    return 4294954512;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v6 = APAccTransportClientEndpointCopyAuthenticationCertificateSerial(*(DerivedStorage + 8));
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 30 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      mfiMutualAuth_CopyProperty_cold_1();
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else if (v6)
    {
LABEL_7:
      result = 0;
      *a4 = v6;
      return result;
    }

    mfiMutualAuth_CopyProperty_cold_2();
    return 4294954512;
  }

  mfiMutualAuth_CopyProperty_cold_3();
  return 4294895495;
}

uint64_t APAccTransportClientEndpointCopyAuthenticationCertificateSerial(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke;
  v4[3] = &unk_27849F700;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_ptr;
  v6 = getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_ptr;
  if (!getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_ptr)
  {
    v1 = CoreAccessoriesLibrary();
    v4[3] = dlsym(v1, "kCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch");
    getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch_cold_1();
  }

  return *v0;
}

void sub_222014FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 48);
  if (v1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v3 = getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr;
    v12 = getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr;
    if (!getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr)
    {
      v4 = CoreAccessoriesLibrary();
      v10[3] = dlsym(v4, "acc_transportClient_copyPropertiesForEndpointWithUUID");
      getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr = v10[3];
      v3 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v3)
    {
      __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke_cold_2();
    }

    v5 = v3(v1);
    if (v5)
    {
      v6 = v5;
      v7 = getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch();
      *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(v6, v7);
      v8 = *(*(*(a1 + 32) + 8) + 24);
      if (v8)
      {
        CFRetain(v8);
      }

      CFRelease(v6);
    }

    else
    {
      __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke_cold_1();
    }
  }

  else
  {
    __APAccTransportClientEndpointCopyAuthenticationCertificateSerial_block_invoke_cold_3();
  }
}

void sub_222015114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t carEndpoint_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 10 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554442, "[%{ptr}] Set property for key: %'@ value: %'@\n", a1, a2, a3);
  }

  v7 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_SetProperty_block_invoke;
  block[3] = &unk_27849E4E8;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t APSRTPPacketHandlerDecryptCurrentMessage(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  if ((*(a1 + 24) & 2) == 0)
  {
    APSRTPPacketHandlerDecryptCurrentMessage_cold_4();
    return 4294960561;
  }

  if (!*(a1 + 160))
  {
    APSRTPPacketHandlerDecryptCurrentMessage_cold_3();
    return 0;
  }

  v3 = *(a1 + 168);
  if (!v3)
  {
    APSRTPPacketHandlerDecryptCurrentMessage_cold_2();
    return 0;
  }

  v5 = (*(v3 + 1) & 0x7F) - 96;
  if (v5 <= 0xD && (((1 << v5) & 0x3302) != 0 || (*(v3 + 1) & 0x7F) == 0x60 && *(a1 + 28) >= 2u))
  {
    v6 = (4 * *(a1 + 1656) - 3);
    v7 = v3 + v6 + 12;
    v8 = *(v3 + 1472) - v6;
  }

  else
  {
    v7 = v3 + 12;
    v8 = *(v3 + 1472);
  }

  AudioAADPointer = APSTransportMessageGetAudioAADPointer();
  if (AudioAADPointer)
  {
    v11 = AudioAADPointer;
    APSRTPPacketHandlerDecryptCurrentMessage_cold_1(AudioAADPointer);
    return v11;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    v11 = 4294954514;
    goto LABEL_15;
  }

  v11 = v10(a2, 0, 0, v7, v8 - 12, v7, 1472, &v13);
  if (v11)
  {
LABEL_15:
    APSLogErrorAt();
    return v11;
  }

  *(*(a1 + 168) + 1472) += v13 - v8 + 12;
  return v11;
}

uint64_t jitterBuffer_AcquireBuffer(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104))
  {
    jitterBuffer_AcquireBuffer_cold_1();
    return 4294950503;
  }

  else
  {
    v6 = DerivedStorage;
    EmptyPacket = APSRTPJitterBufferGetEmptyPacket();
    *(v6 + 104) = EmptyPacket;
    result = 0;
    *a2 = EmptyPacket + 12;
    *a3 = 1460;
  }

  return result;
}

void carAudioStream_handleIncomingInputDataMessage(uint64_t a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 > 1869575778)
  {
    if (a2 != 1870033508)
    {
      v9 = 1869575779;
LABEL_6:
      if (a2 != v9)
      {
        return;
      }
    }
  }

  else if (a2 != 1835100526)
  {
    v9 = 1836213604;
    goto LABEL_6;
  }

  CFRetain(a4);
  CFRetain(a3);
  v10 = *(DerivedStorage + 352);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_handleIncomingInputDataMessage_block_invoke;
  block[3] = &__block_descriptor_tmp_172;
  block[4] = DerivedStorage;
  block[5] = a4;
  v12 = a2;
  block[6] = a1;
  block[7] = a3;
  dispatch_async(v10, block);
}

uint64_t APSRTPPacketHandlerReadNewMessage(uint64_t a1, void *cf, char a3)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if ((*(a1 + 24) & 2) == 0)
  {
    APSRTPPacketHandlerReadNewMessage_cold_5();
    return 4294960561;
  }

  if (!cf)
  {
    APSRTPPacketHandlerReadNewMessage_cold_4();
    return 4294960591;
  }

  if (*(a1 + 160))
  {
    if (gLogCategory_APSRTPPacketHandler <= 60 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
    {
      APSRTPPacketHandlerReadNewMessage_cold_1();
    }

    CFRelease(*(a1 + 160));
  }

  *(a1 + 160) = CFRetain(cf);
  DataPointer = CMBlockBufferGetDataPointer(cf, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (lengthAtOffsetOut >= 0x5C9)
  {
    APSRTPPacketHandlerReadNewMessage_cold_3();
    return DataPointer;
  }

  memcpy((*(a1 + 168) + 2), dataPointerOut, lengthAtOffsetOut);
  *(*(a1 + 168) + 1) = a3;
  DataLength = CMBlockBufferGetDataLength(cf);
  v8 = *(a1 + 168);
  *(v8 + 1472) = DataLength + 2;
  *(a1 + 1660) = 0;
  v9 = 1;
  v10 = (*(v8 + 1) & 0x7F) - 96;
  if (v10 <= 0xD && (((1 << v10) & 0x3302) != 0 || (*(v8 + 1) & 0x7F) == 0x60 && *(a1 + 28) >= 2u))
  {
    v19 = 0;
    v18 = v8 + 12;
    while (1)
    {
      APSRTPPacketHandlerReadExtendedHeader(v18, &v19, &v18);
      if ((v19 & 0x80) == 0)
      {
        break;
      }

      if (++v9 > *(a1 + 28))
      {
        if (gLogCategory_APSRTPPacketHandler <= 90 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
        {
          APSRTPPacketHandlerReadNewMessage_cold_2();
        }

        v9 = 0;
        break;
      }
    }
  }

  *(a1 + 1656) = v9;
  v11 = *(a1 + 1712);
  if (v11)
  {
    v12 = (v11 + *(a1 + 1708) - 1) % *(a1 + 1704);
    QueueIsIndexInRange(a1 + 1664, v12);
    v13 = *(*(a1 + 1696) + 4 * v12) + 1;
    v14 = bswap32(*(*(a1 + 168) + 2)) >> 16;
    if (v14 != v13 && gLogCategory_APSRTPPacketHandler <= 30)
    {
      if (gLogCategory_APSRTPPacketHandler == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return DataPointer;
        }

        v14 = bswap32(*(*(a1 + 168) + 2)) >> 16;
      }

      LogPrintF(&gLogCategory_APSRTPPacketHandler, "void APSRTPPacketHandlerCheckSequenceNumberContinuity(APSRTPPacketHandlerRef)", 30, "RTP packet loss - expected sequence %u, received %u\n", v13, v14);
    }
  }

  return DataPointer;
}

void __carAudioStream_handleIncomingInputDataMessage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 360))
  {
    if (*(v2 + 400))
    {
      v10 = *(a1 + 40);
      v11 = *(v2 + 392);
      v12 = *(v2 + 368);
      v13 = *(v2 + 376);
      v14 = *(a1 + 64);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      Count = CMSimpleQueueGetCount(*(DerivedStorage + 408));
      if (Count >= 1 && gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "void carAudioStream_processAllPendingPackets(FigEndpointStreamRef, APSRTPPacketHandlerRef, FigEndpointAudioSinkRef, APSCryptorRef, FigTransportStreamRef, OSType)", 33554482, "[%{ptr}] %@ Processing %d pending input messages\n", v10, *(DerivedStorage + 40), Count);
      }

      kdebug_trace();
      if (CMSimpleQueueGetCount(*(DerivedStorage + 408)) >= 1)
      {
        while (1)
        {
          v17 = CMSimpleQueueDequeue(*(DerivedStorage + 408));
          v18 = carAudioStream_processOneInputDataMessage(v10, v11, v12, v13, v14, v17);
          if (v18)
          {
            if (gLogCategory_APEndpointStreamCarPlayAudio <= 90)
            {
              v19 = v18;
              if (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize())
              {
                break;
              }
            }
          }

          if (v17)
          {
            goto LABEL_29;
          }

LABEL_30:
          if (CMSimpleQueueGetCount(*(DerivedStorage + 408)) <= 0)
          {
            goto LABEL_34;
          }
        }

        LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "void carAudioStream_processAllPendingPackets(FigEndpointStreamRef, APSRTPPacketHandlerRef, FigEndpointAudioSinkRef, APSCryptorRef, FigTransportStreamRef, OSType)", 33554522, "[%{ptr}] %@ Error %d in processing pending message", v10, *(DerivedStorage + 40), v19);
        if (!v17)
        {
          goto LABEL_30;
        }

LABEL_29:
        CFRelease(v17);
        goto LABEL_30;
      }

LABEL_34:
      v2 = *(a1 + 32);
      *(v2 + 400) = 0;
    }

    carAudioStream_processOneInputDataMessage(*(a1 + 40), *(v2 + 392), *(v2 + 368), *(v2 + 376), *(a1 + 64), *(a1 + 56));
    goto LABEL_36;
  }

  if (!*(v2 + 400))
  {
    if (gLogCategory_APEndpointStreamCarPlayAudio > 30)
    {
      goto LABEL_36;
    }

    if (gLogCategory_APEndpointStreamCarPlayAudio == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_36;
      }

      v2 = *(a1 + 32);
    }

    LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "void carAudioStream_handleIncomingInputDataMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)_block_invoke", 33554462, "[%{ptr}] %@ Dropping input audio packet; either the stream is being suspended, or this is a dummy input stream\n", *(a1 + 40), *(v2 + 40));
    goto LABEL_36;
  }

  if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    __carAudioStream_handleIncomingInputDataMessage_block_invoke_cold_1();
  }

  v3 = *(a1 + 56);
  v4 = CMBaseObjectGetDerivedStorage();
  if (*(v4 + 408))
  {
    v5 = v4;
    CFRetain(v3);
    v6 = CMSimpleQueueEnqueue(*(v5 + 408), v3);
    if (v6)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 50)
      {
        v9 = v6;
        if (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize())
        {
          __carAudioStream_handleIncomingInputDataMessage_block_invoke_cold_2(v9, v7, v8);
        }
      }
    }
  }

  else
  {
    __carAudioStream_handleIncomingInputDataMessage_block_invoke_cold_3();
  }

LABEL_36:
  CFRelease(*(a1 + 40));
  v20 = *(a1 + 56);

  CFRelease(v20);
}

uint64_t carAudioStream_processOneInputDataMessage(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  v32 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  if (*(DerivedStorage + 360))
  {
    Description = APCarPlayAudioFormatInfoGetDescription(*(DerivedStorage + 192));
    RTPPayloadType = carAudioStream_getRTPPayloadType(a5);
    NewMessage = APSRTPPacketHandlerReadNewMessage(a2, a6, RTPPayloadType);
    if (NewMessage)
    {
      v25 = NewMessage;
    }

    else
    {
      if (!a4 || (v15 = APSRTPPacketHandlerDecryptCurrentMessage(a2, a4), !v15))
      {
        while (APSRTPPacketHandlerGetNextPacket(a2, &v29))
        {
          kdebug_trace();
          v16 = *(CMBaseObjectGetVTable() + 16);
          if (*v16 < 2uLL)
          {
            v25 = 4294954515;
            goto LABEL_20;
          }

          v17 = v16[5];
          if (!v17)
          {
            v25 = 4294954514;
            goto LABEL_20;
          }

          v18 = v17(a3, &v32, &v31);
          if (v18)
          {
            v25 = v18;
            goto LABEL_20;
          }

          memcpy(v32, v30, *(&v30 + 1));
          *v27 = bswap32(DWORD1(v29));
          v19 = 1;
          DWORD2(v28) = 1;
          v20 = *(&v30 + 1);
          if (*(Description + 20) <= 1u)
          {
            v19 = (DWORD2(v30) / *(Description + 16));
          }

          v21 = v32;
          v22 = *(CMBaseObjectGetVTable() + 16);
          if (*v22 < 2uLL)
          {
            v25 = 4294954515;
            goto LABEL_20;
          }

          v23 = v22[6];
          if (!v23)
          {
            v25 = 4294954514;
            goto LABEL_20;
          }

          v24 = v23(a3, v21, v20, 0, v19, v27);
          if (v24)
          {
            v25 = v24;
            goto LABEL_20;
          }
        }

        return 0;
      }

      v25 = v15;
    }

LABEL_20:
    APSLogErrorAt();
    return v25;
  }

  return 0;
}

uint64_t APSRTPPacketHandlerGetNextPacket(_BYTE *SeqNumOfPacket, uint64_t a2)
{
  if ((SeqNumOfPacket[24] & 2) != 0)
  {
    while (1)
    {
      v4 = *(SeqNumOfPacket + 415);
      if (v4 >= *(SeqNumOfPacket + 414))
      {
        return 0;
      }

      v5 = *(SeqNumOfPacket + 21);
      if (!v5)
      {
        APSRTPPacketHandlerGetNextPacket_cold_5();
        return 0;
      }

      v6 = (*(v5 + 1) & 0x7F) - 96;
      if (v6 <= 0xD && (((1 << v6) & 0x3302) != 0 || !v6 && *(SeqNumOfPacket + 7) >= 2u))
      {
        v7 = APSRTPPacketHandlerGetSeqNumOfPacket(SeqNumOfPacket, *(SeqNumOfPacket + 415));
        v8 = *(SeqNumOfPacket + 428);
        if (v8)
        {
          v9 = *(SeqNumOfPacket + 427);
          while (*(*(SeqNumOfPacket + 212) + 4 * (v9 % *(SeqNumOfPacket + 426))) != v7)
          {
            ++v9;
            if (!--v8)
            {
              goto LABEL_14;
            }
          }

          v10 = 1;
          goto LABEL_46;
        }
      }

LABEL_14:
      v11 = *(SeqNumOfPacket + 414);
      if (v11 <= v4)
      {
        APSRTPPacketHandlerGetNextPacket_cold_1();
        goto LABEL_34;
      }

      v12 = *(SeqNumOfPacket + 21);
      if (!v12)
      {
        APSRTPPacketHandlerGetNextPacket_cold_2();
        goto LABEL_34;
      }

      v13 = *(v12 + 1) & 0x7F;
      if ((v13 - 96) <= 0xD)
      {
        if (((1 << (v13 - 96)) & 0x3302) != 0)
        {
          v30 = 0;
          v14 = v13 - 97;
          v15 = v14 > 0xC;
          v16 = (1 << v14) & 0x1981;
          if (!v15 && v16 != 0)
          {
LABEL_22:
            v12 += 4 * v11 - 3;
          }

          v18 = v12 + 12;
          if (v4)
          {
            v19 = 0;
            do
            {
              APSRTPPacketHandlerGetExtendedHeaderOfPacket(SeqNumOfPacket, v19, &v30);
              v18 += v30 >> 22;
              v19 = (v19 + 1);
            }

            while (v4 != v19);
            v11 = *(SeqNumOfPacket + 414);
          }

          *(a2 + 16) = v18;
          if (v11 - 1 <= v4)
          {
            v20 = *(*(SeqNumOfPacket + 21) + 1472) - (v18 - *(SeqNumOfPacket + 21));
          }

          else
          {
            APSRTPPacketHandlerGetExtendedHeaderOfPacket(SeqNumOfPacket, v4, &v30);
            v20 = v30 >> 22;
          }

          goto LABEL_33;
        }

        if (v13 == 96 && *(SeqNumOfPacket + 7) >= 2u)
        {
          v30 = 0;
          goto LABEL_22;
        }
      }

      *(a2 + 16) = v12 + 12;
      v20 = *(*(SeqNumOfPacket + 21) + 1472) - 12;
LABEL_33:
      *(a2 + 24) = v20;
LABEL_34:
      if (*(SeqNumOfPacket + 414) <= v4)
      {
        APSRTPPacketHandlerGetNextPacket_cold_3();
      }

      else
      {
        v21 = *(SeqNumOfPacket + 21);
        if (v21)
        {
          v31 = 0;
          v22 = *(v21 + 8);
          *a2 = *v21;
          *(a2 + 8) = v22;
          v23 = *(SeqNumOfPacket + 21);
          v24 = (*(v23 + 1) & 0x7F) - 96;
          if (v24 <= 0xD && (((1 << v24) & 0x3302) != 0 || (*(v23 + 1) & 0x7F) == 0x60 && *(SeqNumOfPacket + 7) >= 2u))
          {
            if (*(SeqNumOfPacket + 414) - 1 <= v4)
            {
              v25 = bswap32(*(v23 + 4));
            }

            else
            {
              v32 = 0;
              APSRTPPacketHandlerGetExtendedHeaderOfPacket(SeqNumOfPacket, v4, &v32);
              v25 = bswap32(*(*(SeqNumOfPacket + 21) + 4)) - ((v32 >> 8) & 0x3FFF);
            }

            *(a2 + 4) = bswap32(v25);
            *(a2 + 2) = __rev16(APSRTPPacketHandlerGetSeqNumOfPacket(SeqNumOfPacket, v4));
            APSRTPPacketHandlerGetExtendedHeaderOfPacket(SeqNumOfPacket, v4, &v31);
            *(a2 + 1) = v31 & 0x7F;
          }
        }

        else
        {
          APSRTPPacketHandlerGetNextPacket_cold_4();
        }
      }

      v26 = *(SeqNumOfPacket + 428);
      if (v26 && v26 == *(SeqNumOfPacket + 426))
      {
        *(SeqNumOfPacket + 427) = (*(SeqNumOfPacket + 427) + 1) % v26;
        *(SeqNumOfPacket + 428) = v26 - 1;
      }

      QueueAddEntry((SeqNumOfPacket + 1664), bswap32(*(a2 + 2)) >> 16);
      v10 = 0;
LABEL_46:
      v27 = *(SeqNumOfPacket + 415) + 1;
      *(SeqNumOfPacket + 415) = v27;
      if (v27 == *(SeqNumOfPacket + 414))
      {
        v28 = *(SeqNumOfPacket + 20);
        if (v28)
        {
          CFRelease(v28);
        }

        *(SeqNumOfPacket + 20) = 0;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  APSRTPPacketHandlerGetNextPacket_cold_6();
  return 0;
}

uint64_t QueueAddEntry(uint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(result + 40);
  if (v2 >= v3)
  {
    if (v3)
    {
      if (gLogCategory_APSRTPPacketHandler <= 90)
      {
        if (gLogCategory_APSRTPPacketHandler != -1)
        {
          return QueueAddEntry_cold_1();
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return QueueAddEntry_cold_1();
        }
      }
    }
  }

  else
  {
    *(*(result + 32) + 4 * ((*(result + 44) + v2) % v3)) = a2;
    ++*(result + 48);
  }

  return result;
}

uint64_t jitterBuffer_ReadPackets(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, unint64_t *a7, _DWORD *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 136) & 1) == 0)
  {
    jitterBuffer_ReadPackets_cold_4();
    return 4294950504;
  }

  if (a5)
  {
    jitterBuffer_ReadPackets_cold_1();
    return 4294950504;
  }

  v15 = (*(DerivedStorage + 80) * a6);
  if (v15 > a4)
  {
    jitterBuffer_ReadPackets_cold_3();
    return 4294950504;
  }

  v16 = APSRTPJitterBufferRead();
  v17 = v16;
  if (v16)
  {
    jitterBuffer_ReadPackets_cold_2(v16);
  }

  else
  {
    *a7 = v15;
    *a8 = a6;
  }

  return v17;
}

uint64_t jitterBuffer_CommitBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 104);
  if (!v10)
  {
    jitterBuffer_CommitBuffer_cold_3();
    return 4294950503;
  }

  if (v10 + 12 != a2)
  {
    jitterBuffer_CommitBuffer_cold_1();
    return 4294950503;
  }

  v11 = DerivedStorage;
  if (a3)
  {
    if (*(a6 + 56))
    {
      *(v10 + 4) = *a6;
      *(*(DerivedStorage + 104) + 1472) = a3;
      APSRTPJitterBufferEnqueuePacket();
      result = 0;
      *(v11 + 104) = 0;
    }

    else
    {
      jitterBuffer_CommitBuffer_cold_2();
      return 4294950504;
    }
  }

  else
  {
    APSRTPJitterBufferDiscardPacket();
    return 0;
  }

  return result;
}

uint64_t QueueIsIndexInRange(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = v4;
  if (!v5 || (v6 = (v5 + v4 - 1) % *(a1 + 40), v4 <= v6))
  {
    if (v4 <= a2 && v6 >= a2)
    {
      return 1;
    }

    if (gLogCategory_APSRTPPacketHandler <= 90)
    {
      if (gLogCategory_APSRTPPacketHandler == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
        v5 = *(a1 + 48);
      }

LABEL_14:
      LogPrintF(&gLogCategory_APSRTPPacketHandler, "Boolean QueueIsIndexInRange(LocalQueue *, uint32_t)", 90, "%s:Queue index out of bounds; inIdx %d, head %d, numElems %d, tail %d\n", (a1 + 8), a2, v4, v5, v6);
      return 0;
    }

    return 0;
  }

  result = 1;
  if (v4 <= a2 || v6 >= a2)
  {
    return result;
  }

  if (gLogCategory_APSRTPPacketHandler > 90)
  {
    return 0;
  }

  if (gLogCategory_APSRTPPacketHandler != -1)
  {
    goto LABEL_14;
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    v4 = *(a1 + 44);
    v5 = *(a1 + 48);
    goto LABEL_14;
  }

  return result;
}

__n128 APAudioZeroTimeStampProviderGetZeroTimeStamp(uint64_t a1, uint64_t a2)
{
  v2 = a1 + (*(a1 + 152) << 6);
  result = *(v2 + 24);
  v4 = *(v2 + 40);
  v5 = *(v2 + 72);
  *(a2 + 32) = *(v2 + 56);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

void carplaysource_scheduleReadinessCallbackAfterTimeNs(const void *a1, int64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 200))
  {
    v5 = DerivedStorage;
    CFRetain(a1);
    if (a2)
    {
      kdebug_trace();
      v6 = dispatch_time(0, a2);
      v7 = *(v5 + 200);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __carplaysource_scheduleReadinessCallbackAfterTimeNs_block_invoke;
      block[3] = &__block_descriptor_tmp_16;
      block[4] = a1;
      dispatch_after(v6, v7, block);
    }

    else
    {
      v8 = *(v5 + 200);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 0x40000000;
      v9[2] = __carplaysource_scheduleReadinessCallbackAfterTimeNs_block_invoke_2;
      v9[3] = &__block_descriptor_tmp_17;
      v9[4] = a1;
      dispatch_async(v8, v9);
    }
  }
}

uint64_t carAudioStream_getRTPPayloadType(uint64_t a1)
{
  v1 = a1;
  if (a1 > 1835100525)
  {
    if (a1 > 1869575778)
    {
      if (a1 == 1869575779)
      {
        return 107;
      }

      if (a1 == 1870033508)
      {
        return 109;
      }
    }

    else
    {
      if (a1 == 1835100526)
      {
        return 100;
      }

      if (a1 == 1836213604)
      {
        return 104;
      }
    }
  }

  else if (a1 > 1635088494)
  {
    if (a1 == 1635088495)
    {
      return 106;
    }

    if (a1 == 1635283556)
    {
      return 108;
    }
  }

  else
  {
    if (a1 == 1634497568)
    {
      return 101;
    }

    if (a1 == 1634887012)
    {
      return 105;
    }
  }

  v2 = 1835100526;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 90 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    carAudioStream_getRTPPayloadType_cold_1(v1);
  }

  return v2;
}

void carplaysource_ReadinessCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*DerivedStorage)
  {
    if (!*(DerivedStorage + 264))
    {
      if (CMSimpleQueueGetCount(*(DerivedStorage + 168)))
      {
        v4 = mach_absolute_time();
        Head = CMSimpleQueueGetHead(*(v3 + 168));
        *(v3 + 264) = 1;
        v6 = (Head[4] + *(v3 + 272) * *(Head + 28));
        if (v4 < v6)
        {
          carplaysource_ReadinessCallback_cold_1(v6, v4, a1, v3);
          return;
        }
      }
    }

    *(v3 + 240) = mach_absolute_time();
    v7 = *(v3 + 208);
    v8 = *(v3 + 68);
    v9 = *(CMBaseObjectGetVTable() + 16);
    if (*v9 < 2uLL || (v10 = v9[8]) != 0 && !v10(a1, v7 / v8))
    {
      carplaysource_ReadinessCallback_cold_2(v3, (v3 + 240), a1);
      return;
    }

    v11 = *(v3 + 224);
    if (!v11)
    {
      goto LABEL_17;
    }

    if (gLogCategory_APAudioSourceCarPlay <= 30)
    {
      if (gLogCategory_APAudioSourceCarPlay == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v11 = *(v3 + 224);
      }

      v12 = 1000000000 * (*(v3 + 240) - v11);
      v13 = UpTicksPerSecond();
      LogPrintF(&gLogCategory_APAudioSourceCarPlay, "void carplaysource_ReadinessCallback(FigEndpointAudioSourceRef)", 33554462, "CarPlay audio source readiness callback fired %u nanoseconds early\n", v12 / v13);
    }

LABEL_16:
    *(v3 + 224) = 0;
LABEL_17:
    if (*(v3 + 248))
    {
      kdebug_trace();
      v15 = *(v3 + 248);
      v14 = *(v3 + 256);

      v15(v14);
    }

    return;
  }

  carplaysource_SuspendInternal(DerivedStorage);
}

void __carplaysource_scheduleReadinessCallbackAfterTimeNs_block_invoke(uint64_t a1)
{
  carplaysource_ReadinessCallback(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t carplaysource_WritePackets(uint64_t a1, const void *a2, size_t a3, uint64_t a4, int a5, _BYTE *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    return 4294950524;
  }

  v11 = DerivedStorage;
  if ((a6[200] & 3) != 0 && *(DerivedStorage + 24) * a5 == a3)
  {
    v12 = CMSimpleQueueDequeue(*(DerivedStorage + 152));
    if (v12)
    {
      v13 = v12;
      v14 = *(v11 + 120) - *(v11 + 132) + *(v11 + 128);
      if (v14 >= a3)
      {
        v15 = a3;
      }

      else
      {
        v15 = v14;
      }

      if (v15 < a3)
      {
        ++*(v11 + 136);
      }

      *v12 = v15 / *(v11 + 24);
      memcpy(v12 + 2, a6, 0xE0uLL);
      CMSimpleQueueEnqueue(*(v11 + 168), v13);
      v16 = *(v11 + 104);
      if (v16)
      {
        memcpy((v16 + (*(v11 + 124) & *(v11 + 132))), a2, v15);
        v17 = 0;
        *(v11 + 132) += v15;
        return v17;
      }

      APSLogErrorAt();
      v17 = 4294960591;
    }

    else
    {
      ++*(v11 + 160);
      v17 = 4294950523;
    }
  }

  else
  {
    v17 = 4294950525;
  }

  if (gLogCategory_APAudioSourceCarPlay <= 90 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
  {
    mach_absolute_time();
    UpTicksToMilliseconds();
    LogPrintF(&gLogCategory_APAudioSourceCarPlay, "OSStatus carplaysource_WritePackets(FigEndpointAudioSourceRef, uint8_t *, size_t, const AudioStreamPacketDescription *, uint32_t, const AudioServerPlugInIOCycleInfo *)", 33554522, "WritePackets failed: %#m, last ready callback invocation was %llu ms ago\n", v17);
  }

  return v17;
}

void carplaysource_ReadinessCallback_cold_2(uint64_t a1, void *a2, const void *a3)
{
  if (!*(a1 + 224))
  {
    *(a1 + 224) = *a2;
    ++*(a1 + 232);
  }

  carplaysource_scheduleReadinessCallbackAfterTimeNs(a3, 1000000);
}

BOOL carplaysource_CanProducePackets(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return *(DerivedStorage + 68) * a2 * *(DerivedStorage + 32) <= (*(DerivedStorage + 132) - *(DerivedStorage + 128));
  }

  carplaysource_CanProducePackets_cold_1();
  return 0;
}

uint64_t APSRTPPacketHandlerReturnComposedBBuf(uint64_t a1, void *element)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    return APSRTPPacketHandlerReturnComposedBBuf_cold_2();
  }

  if (!element)
  {
    return APSRTPPacketHandlerReturnComposedBBuf_cold_1();
  }

  v4 = element[2];
  element[2] = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 88);

  return CMSimpleQueueEnqueue(v5, element);
}

void __carAudioStream_sendOneAudioDataMessage_block_invoke()
{
  OUTLINED_FUNCTION_13_2();
  if (!v2)
  {
    goto LABEL_22;
  }

  carAudioStream_MarkPacket(*(v1 + 192), 1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = mach_absolute_time();
  if (*(DerivedStorage + 512) && UpTicksToMilliseconds() >= 0x33)
  {
    carAudioStream_MarkPacket(*(DerivedStorage + 192), 2);
  }

  *(DerivedStorage + 512) = v4;
  v5 = *(v0 + 48);
  v6 = **(v0 + 56);
  v7 = v6 - 100;
  if (v6 - 100) < 0xA && ((0x3F3u >> v7))
  {
    v8 = *&aNiamTlaniamnia[4 * v7];
  }

  else
  {
    v8 = 1835100526;
    if (gLogCategory_APEndpointStreamCarPlayAudio <= 90 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSType carAudioStream_getTransportMessageType(OSType)", 33554522, "Unknown RTP payload type %d\n", v6);
    }
  }

  v9 = *(*(v0 + 56) + 16);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v10)
  {
    v11 = v10(v5, v8, v9);
    if (!v11)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 10 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_sendOneAudioDataMessage(FigEndpointStreamRef, size_t *)_block_invoke", 33554442, "[%{ptr}] %@: Sent one audio data message with %d packets of audio\n", *(v0 + 40), *(*(v0 + 32) + 40), *(v0 + 72));
      }

      goto LABEL_22;
    }
  }

  else
  {
    v11 = 4294954514;
  }

  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_sendOneAudioDataMessage(FigEndpointStreamRef, size_t *)_block_invoke", 33554482, "[%{ptr}] %@: Error sending audio data message: %#m\n", *(v0 + 40), *(*(v0 + 32) + 40), v11);
  }

LABEL_22:
  APSRTPPacketHandlerReturnComposedBBuf(*(v0 + 64), *(v0 + 56));
  v12 = *(v0 + 64);
  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(*(v0 + 40));
  v13 = *(v0 + 48);
  if (v13)
  {

    CFRelease(v13);
  }
}

uint64_t carAudioStream_MarkPacket(uint64_t a1, int a2)
{
  v2 = APCarPlayAudioFormatInfoGetStreamType(a1) - 100;
  if ((v2 >= 7 || ((0x47u >> v2) & 1) == 0) && gLogCategory_APEndpointStreamCarPlayAudio <= 60 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    carAudioStream_MarkPacket_cold_1();
  }

  return kdebug_trace();
}

void carAudioStreamHandleDataReady(const void *a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 424))
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v58 = 0;
  memset(v59, 0, 10);
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51[0] = 0;
  v51[1] = 0;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  Description = APCarPlayAudioFormatInfoGetDescription(*(DerivedStorage + 192));
  v4 = *(DerivedStorage + 432);
  v5 = *(DerivedStorage + 440);
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (*v6 < 2uLL || (v7 = v6[8]) != 0 && !v7(v4, v5))
  {
    v10 = 0;
    EmptyBBuf = 0;
    goto LABEL_48;
  }

  EmptyBBuf = APSRTPPacketHandlerGetEmptyBBuf(*(DerivedStorage + 488));
  v9 = APSRTPPacketHandlerGetEmptyBBuf(*(DerivedStorage + 488));
  v10 = v9;
  v11 = *(DerivedStorage + 496);
  if (!EmptyBBuf || !v9)
  {
    if (!v11 && gLogCategory_APEndpointStreamCarPlayAudio <= 90 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_sendOneAudioDataMessage(FigEndpointStreamRef, size_t *)", 33554522, "Error in getting empty buffer from APSRTPPacketHandler");
    }

    ++*(DerivedStorage + 496);
LABEL_48:
    v29 = *(DerivedStorage + 432);
    v30 = *(CMBaseObjectGetVTable() + 16);
    if (*v30 >= 2uLL)
    {
      v31 = v30[9];
      if (v31)
      {
        v31(v29, 0, 0, 0, 0, &v55, &v54, v50);
      }
    }

    if (!EmptyBBuf)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  if (gLogCategory_APEndpointStreamCarPlayAudio <= 90)
  {
    if (gLogCategory_APEndpointStreamCarPlayAudio == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v11 = *(DerivedStorage + 496);
    }

    LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_sendOneAudioDataMessage(FigEndpointStreamRef, size_t *)", 33554522, "%d tries before recovering from APSRTPPacketHandler buffer drain", v11);
  }

LABEL_17:
  *(DerivedStorage + 496) = 0;
LABEL_18:
  if (APSTransportMessageGetAudioDataPointer())
  {
LABEL_67:
    APSLogErrorAt();
    goto LABEL_48;
  }

  v12 = *(DerivedStorage + 448);
  if (v12)
  {
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      v14 = v13(v12);
    }

    else
    {
      v14 = 0;
    }

    v15 = v57 - v14;
    if (v57 > v14)
    {
      v42 = v14;
      v57 -= v14;
      goto LABEL_26;
    }

    goto LABEL_67;
  }

  v42 = 0;
  v15 = v57;
LABEL_26:
  v16 = *(DerivedStorage + 432);
  v43 = Description;
  if (*(Description + 20) <= 1u)
  {
    v17 = 0;
  }

  else
  {
    v17 = v51;
  }

  v18 = *(DerivedStorage + 440);
  v19 = *(CMBaseObjectGetVTable() + 16);
  if (*v19 >= 2uLL)
  {
    v20 = v19[9];
    if (v20)
    {
      v21 = v20(v16, v58, v15, v17, v18, &v55, &v54, v50);
      if (v21)
      {
        if (v21 == -16774)
        {
          goto LABEL_52;
        }
      }

      else
      {
        APSAudioStats_ProcessAudioBuffer();
        v22 = v43;
        if (!APSTransportMessageCreateReferencingBBufWithAudioDataLength() && v10[2])
        {
          *v10 = carAudioStream_getRTPPayloadType(*(DerivedStorage + 68));
          v23 = *(DerivedStorage + 474) + 1;
          *(DerivedStorage + 474) = v23;
          LOWORD(v59[0]) = v23;
          *(v59 + 6) = 0;
          v24 = *(DerivedStorage + 200) ? (*v50 - ((*v50 * 2.32830644e-10) << 32)) : *(DerivedStorage + 480);
          *(v59 + 2) = v24;
          if (!APSTransportMessageSetAudioDataHeader())
          {
            if (APSRTPPacketHandlerComposeRTPPacketWithBBuf(*(DerivedStorage + 488), v10, v42, EmptyBBuf, &v49, 0))
            {
              goto LABEL_62;
            }

            if (!*(DerivedStorage + 448))
            {
LABEL_60:
              v36 = *(DerivedStorage + 488);
              if (v36)
              {
                v37 = CFRetain(v36);
              }

              else
              {
                v37 = 0;
              }

              CFRetain(a1);
              v38 = *(DerivedStorage + 464);
              if (v38)
              {
                v38 = CFRetain(v38);
              }

              v39 = *(DerivedStorage + 168);
              lengthAtOffsetOut[0] = MEMORY[0x277D85DD0];
              lengthAtOffsetOut[1] = 0x40000000;
              lengthAtOffsetOut[2] = __carAudioStream_sendOneAudioDataMessage_block_invoke;
              lengthAtOffsetOut[3] = &__block_descriptor_tmp_182_0;
              v46 = v59[0];
              v47 = v59[1];
              lengthAtOffsetOut[4] = DerivedStorage;
              lengthAtOffsetOut[5] = a1;
              lengthAtOffsetOut[6] = v38;
              lengthAtOffsetOut[7] = EmptyBBuf;
              v45 = v54;
              lengthAtOffsetOut[8] = v37;
              dispatch_async(v39, lengthAtOffsetOut);
              *(DerivedStorage + 480) += (*(v22 + 20) * v54);
              return;
            }

            lengthAtOffsetOut[0] = 0;
            dataPointerOut = 0;
            if (APSTransportMessageGetAudioAADPointer() || CMBlockBufferGetDataPointer(*(EmptyBBuf + 2), 0, lengthAtOffsetOut, 0, &dataPointerOut))
            {
              goto LABEL_62;
            }

            v25 = lengthAtOffsetOut[0];
            v26 = v49;
            v27 = &dataPointerOut[v49];
            dataPointerOut = v27;
            if (v42)
            {
              if (CMBlockBufferGetDataPointer(*(EmptyBBuf + 2), lengthAtOffsetOut[0] - v42, 0, 0, &v56))
              {
LABEL_62:
                APSLogErrorAt();
                v10 = 0;
                goto LABEL_52;
              }

              v27 = dataPointerOut;
              v28 = v49;
              v40 = lengthAtOffsetOut[0];
              v41 = v56;
            }

            else
            {
              v40 = lengthAtOffsetOut[0];
              v41 = 0;
              v28 = v49;
            }

            v32 = *(DerivedStorage + 448);
            v34 = v52;
            v33 = v53;
            v35 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v35 && !v35(v32, v33, v34, v27, v25 - (v42 + v26), v27, v40 - v28, v41, v42))
            {
              v22 = v43;
              goto LABEL_60;
            }

            goto LABEL_62;
          }
        }
      }
    }
  }

  APSLogErrorAt();
LABEL_52:
  APSRTPPacketHandlerReturnBBuf(*(DerivedStorage + 488), EmptyBBuf);
LABEL_53:
  if (v10)
  {
    APSRTPPacketHandlerReturnBBuf(*(DerivedStorage + 488), v10);
  }
}

void *APSRTPPacketHandlerGetEmptyBBuf(uint64_t a1)
{
  if (*(a1 + 24))
  {
    if (CMSimpleQueueGetCount(*(a1 + 88)) >= 1)
    {
      Count = CMSimpleQueueGetCount(*(a1 + 88));
      if (Count)
      {
        v3 = Count;
        do
        {
          v4 = CMSimpleQueueDequeue(*(a1 + 88));
          if (v4)
          {
            CMSimpleQueueEnqueue(*(a1 + 80), v4);
          }

          --v3;
        }

        while (v3);
      }
    }

    v5 = CMSimpleQueueDequeue(*(a1 + 80));
    v6 = v5;
    if (v5)
    {
      v7 = v5[2];
      v6[2] = 0;
      if (v7)
      {
        CFRelease(v7);
      }

      *v6 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 0;
  }

  return v6;
}

uint64_t carplaysource_ReadPackets(const void *a1, void *a2, UInt32 a3, AudioStreamPacketDescription *a4, UInt32 a5, void *a6, UInt32 *a7, uint64_t a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  ioOutputDataPacketSize = a5;
  memset(&outOutputData, 0, sizeof(outOutputData));
  if (a5)
  {
    v18 = *(DerivedStorage + 76);
    outOutputData.mNumberBuffers = 1;
    outOutputData.mBuffers[0].mNumberChannels = v18;
    outOutputData.mBuffers[0].mDataByteSize = a3;
    outOutputData.mBuffers[0].mData = a2;
    v19 = AudioConverterFillComplexBuffer(*(DerivedStorage + 192), carplaysource_AudioConverterInputCallBack, DerivedStorage, &ioOutputDataPacketSize, &outOutputData, a4);
    *(v17 + 128) += *(v17 + 140);
    *(v17 + 140) = 0;
    if (v19 != -16774 && v19 != 0)
    {
      v21 = v19;
      if (gLogCategory_APAudioSourceCarPlay <= 60 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
      {
        carplaysource_ReadPackets_cold_1(v21);
      }

      AudioConverterReset(*(v17 + 192));
      v22 = 0;
LABEL_26:
      if (*(v17 + 248))
      {
        if (a5)
        {
          v42 = 1000000;
        }

        else
        {
          v42 = 5000000;
        }

        carplaysource_scheduleReadinessCallbackAfterTimeNs(a1, v42);
        if ((v22 & 1) == 0)
        {
          return v21;
        }
      }

      else if ((v22 & 1) == 0)
      {
        return v21;
      }

      v23 = 0;
      v25 = 0.0;
      goto LABEL_34;
    }
  }

  else
  {
    *(DerivedStorage + 128) += *(DerivedStorage + 140);
    *(DerivedStorage + 140) = 0;
  }

  if (!ioOutputDataPacketSize)
  {
    v21 = 0;
    v22 = 1;
    goto LABEL_26;
  }

  v23 = *(v17 + 68) * ioOutputDataPacketSize;
  *(v17 + 212) += v23;
  if (!v23)
  {
    v36 = 0;
    v37 = 0.0;
    v30 = 0.0;
    v25 = 0.0;
    goto LABEL_31;
  }

  v46 = a1;
  v47 = a7;
  v48 = a4;
  v49 = a6;
  v24 = 1;
  v25 = 0.0;
  while (1)
  {
    v26 = v23;
    Head = CMSimpleQueueGetHead(*(v17 + 176));
    v28 = *(Head + 4);
    v29 = *(Head + 19);
    v30 = *(Head + 28);
    v31 = *(v17 + 188);
    if (v24)
    {
      v25 = v29 + v31;
    }

    v32 = *Head;
    v33 = v23 >= v32 - v31;
    v23 -= v32 - v31;
    if (v23 == 0 || !v33)
    {
      break;
    }

    v34 = Head;
    *(v17 + 188) = 0;
    if (gLogCategory_APAudioSourceCarPlay <= 10)
    {
      v35 = v29;
      if (gLogCategory_APAudioSourceCarPlay == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v35 = v34[19];
        v32 = *v34;
      }

      LogPrintF(&gLogCategory_APAudioSourceCarPlay, "OSStatus carplaysource_ReadPackets(FigEndpointAudioSourceRef, uint8_t *, size_t, AudioStreamPacketDescription *, uint32_t, size_t *, uint32_t *, AudioTimeStamp *)", 33554442, "Returning timestamp to free queue - st: %lu, fc: %lu\n", v35, v32);
    }

LABEL_22:
    CMSimpleQueueDequeue(*(v17 + 176));
    CMSimpleQueueEnqueue(*(v17 + 152), v34);
    v24 = 0;
    if (!v23)
    {
      goto LABEL_30;
    }
  }

  *(v17 + 188) = v31 + v26;
LABEL_30:
  v36 = v29;
  v37 = v28;
  v23 = 1;
  a4 = v48;
  a6 = v49;
  a1 = v46;
  a7 = v47;
LABEL_31:
  if (*(v17 + 248) && *(v17 + 212) >= *(v17 + 208))
  {
    v43 = mach_absolute_time();
    v44 = *(v17 + 208);
    *(v17 + 212) -= v44;
    if ((v37 + (v25 - v36 + v44 + *(v17 + 272)) * v30) > v43)
    {
      v45 = UpTicksToNanoseconds() + 1000000;
    }

    else
    {
      v45 = 0;
    }

    carplaysource_scheduleReadinessCallbackAfterTimeNs(a1, v45);
  }

  v21 = 0;
LABEL_34:
  v38 = ioOutputDataPacketSize;
  *a7 = ioOutputDataPacketSize;
  if (a4)
  {
    v39 = 0;
    if (v38)
    {
      v40 = v38 - 1;
      do
      {
        v39 += a4[v40--].mDataByteSize;
      }

      while (v40 != -1);
    }
  }

  else
  {
    v39 = *(v17 + 64) * v38;
  }

  *a6 = v39;
  if (a8)
  {
    *a8 = v25;
    *(a8 + 8) = 0u;
    *(a8 + 24) = 0u;
    *(a8 + 40) = 0u;
    *(a8 + 56) = v23;
    *(a8 + 60) = 0;
  }

  return v21;
}

uint64_t carplaysource_AudioConverterInputCallBack(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 132);
  v6 = *(a5 + 128) + *(a5 + 140);
  *(a5 + 128) = v6;
  *(a5 + 140) = 0;
  v7 = v5 - v6;
  v8 = *(a5 + 24);
  if (*a2 * v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *a2 * v8;
  }

  if (!v9)
  {
    return 4294950522;
  }

  v11 = *(a5 + 36);
  *(a3 + 16) = *(a5 + 104) + (*(a5 + 124) & v6);
  *(a3 + 8) = v11;
  *(a3 + 12) = v9;
  *a2 = v9 / v8;
  if (v8 <= v9)
  {
    v12 = *(a5 + 32);
    if (v12 <= v9)
    {
      v13 = v9 / v12;
      while (1)
      {
        Head = CMSimpleQueueGetHead(*(a5 + 168));
        v15 = *(a5 + 184);
        if (!v15)
        {
          CMSimpleQueueEnqueue(*(a5 + 176), Head);
          v15 = *(a5 + 184);
        }

        if (*Head - v15 > v13)
        {
          break;
        }

        CMSimpleQueueDequeue(*(a5 + 168));
        v16 = *(a5 + 184);
        v17 = v13 - *Head;
        *(a5 + 184) = 0;
        v13 = v17 + v16;
        if (!(v17 + v16))
        {
          goto LABEL_14;
        }
      }

      *(a5 + 184) = v15 + v13;
    }
  }

LABEL_14:
  result = 0;
  *(a5 + 140) = v9;
  return result;
}

uint64_t APSRTPPacketHandlerComposeRTPPacketWithBBuf(uint64_t a1, void *a2, uint64_t a3, int *a4, int *a5, int *a6)
{
  v8 = a3;
  Count = CMSimpleQueueGetCount(*(a1 + 96));
  if ((*(a1 + 24) & 1) == 0)
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_17();
    v33 = 4294960561;
    goto LABEL_64;
  }

  if (!a4)
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_16();
LABEL_58:
    v33 = 4294960591;
    goto LABEL_64;
  }

  if (!a2)
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_15();
    goto LABEL_58;
  }

  if (!a5)
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_14();
    goto LABEL_58;
  }

  v12 = Count;
  *a5 = 0;
  AudioDataHeader = APSTransportMessageGetAudioDataHeader();
  if (AudioDataHeader)
  {
    v33 = AudioDataHeader;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_1(AudioDataHeader);
    goto LABEL_64;
  }

  v14 = APSTransportMessageSetAudioDataHeader();
  if (v14)
  {
    v33 = v14;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_2(v14);
    goto LABEL_64;
  }

  *a4 = *a2;
  AudioDataTimestamp = APSTransportMessageGetAudioDataTimestamp();
  if (AudioDataTimestamp)
  {
    v33 = AudioDataTimestamp;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_3(AudioDataTimestamp);
    goto LABEL_64;
  }

  AudioDataPointer = APSTransportMessageGetAudioDataPointer();
  if (AudioDataPointer)
  {
    v33 = AudioDataPointer;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_4(AudioDataPointer);
    goto LABEL_64;
  }

  if (*(a1 + 28) < 2u)
  {
    goto LABEL_47;
  }

  v35 = a4;
  v17 = 0;
  v18 = *a2;
  if (*a2 > 100)
  {
    if (v18 == 101)
    {
      v18 = 105;
    }

    else if (v18 == 106)
    {
      v18 = 108;
    }
  }

  else if (v18 == 96)
  {
    v18 = 97;
  }

  else if (v18 == 100)
  {
    v18 = 104;
  }

  *v35 = v18;
  element = a2;
  if (*(a1 + 152))
  {
    APSTransportMessageGetAudioDataPointer();
    APSTransportMessageGetAudioDataPointer();
    v20 = *(a1 + 148);
    v19 = *(a1 + 152);
    if (v19)
    {
      v20 = (v19 + v20 - 1) % *(a1 + 144);
    }

    QueueIsIndexInRange(a1 + 104, v20);
    v21 = v8 + *(*(a1 + 136) + 4 * v20) + 5;
    if (v8 + *(*(a1 + 136) + 4 * v20) == -5)
    {
      v23 = 1;
      do
      {
        v22 = v23;
        if (!QueueIsIndexInRange(a1 + 104, v20) || v20 == *(a1 + 148))
        {
          break;
        }

        if (!v20)
        {
          v20 = *(a1 + 144);
        }

        QueueIsIndexInRange(a1 + 104, --v20);
        v21 += *(*(a1 + 136) + 4 * v20) + 4;
        v23 = v22 + 1;
      }

      while (!v21);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = 1;
  if (!v12)
  {
LABEL_46:
    a2 = element;
    *v17 = *element & 0x7F;
LABEL_47:
    v31 = APSTransportMessageGetAudioDataPointer();
    if (v31)
    {
      v33 = v31;
      APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_8(v31);
    }

    else
    {
      APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_13();
      v33 = 4294960569;
    }

    goto LABEL_64;
  }

  v25 = 0;
  while (1)
  {
    v26 = CMSimpleQueueDequeue(*(a1 + 96));
    if (!v26)
    {
      APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_7();
      return 0;
    }

    v27 = v26;
    if (v25 >= v12 - v22)
    {
      break;
    }

LABEL_39:
    if (v25 || v12 != *(a1 + 28) - 1)
    {
      CMSimpleQueueEnqueue(*(a1 + 96), v27);
    }

    else
    {
      APSRTPPacketHandlerReturnBBuf(a1, v27);
      v30 = *(a1 + 152);
      if (v30 && v30 == *(a1 + 144))
      {
        *(a1 + 148) = (*(a1 + 148) + 1) % v30;
        *(a1 + 152) = v30 - 1;
      }
    }

    if (v12 == ++v25)
    {
      goto LABEL_46;
    }
  }

  v28 = APSTransportMessageGetAudioDataPointer();
  if (v28)
  {
    v33 = v28;
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_5(v28);
    goto LABEL_53;
  }

  v29 = APSTransportMessageGetAudioDataTimestamp();
  if (!v29)
  {
    *v17 = bswap32((*v27 << 24) | 0x80000000);
    v17 += 4;
    ++v24;
    goto LABEL_39;
  }

  v33 = v29;
  APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_6(v29);
LABEL_53:
  a2 = element;
LABEL_64:
  if (gLogCategory_APSRTPPacketHandler <= 90 && (gLogCategory_APSRTPPacketHandler != -1 || _LogCategory_Initialize()))
  {
    APSRTPPacketHandlerComposeRTPPacketWithBBuf_cold_18(v33);
    if (a2)
    {
LABEL_68:
      APSRTPPacketHandlerReturnBBuf(a1, a2);
    }
  }

  else if (a2)
  {
    goto LABEL_68;
  }

  return v33;
}

uint64_t APSRTPPacketHandlerReturnBBuf(uint64_t a1, void *element)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    return APSRTPPacketHandlerReturnBBuf_cold_2();
  }

  if (!element)
  {
    return APSRTPPacketHandlerReturnBBuf_cold_1();
  }

  v4 = element[2];
  element[2] = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 80);

  return CMSimpleQueueEnqueue(v5, element);
}

uint64_t carplaysource_SetOutputFormat(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    if (*(DerivedStorage + 56))
    {
      __s1[0] = *(DerivedStorage + 48);
      __s1[1] = 0xC6C70636DLL;
      v5 = *(DerivedStorage + 76);
      v11 = 2 * v5;
      v12 = 1;
      v13 = 2 * v5;
      v14 = v5;
      v15 = 16;
      result = memcmp(__s1, (DerivedStorage + 8), 0x28uLL);
      if (!result)
      {
        v7 = *a2;
        v8 = a2[1];
        *(v4 + 80) = *(a2 + 4);
        *(v4 + 48) = v7;
        *(v4 + 64) = v8;
        return result;
      }

      carplaysource_SetOutputFormat_cold_1();
    }

    else
    {
      carplaysource_SetOutputFormat_cold_2();
    }

    return 4294950525;
  }

  else
  {
    result = 0;
    v9 = *(v4 + 24);
    *(v4 + 48) = *(v4 + 8);
    *(v4 + 64) = v9;
    *(v4 + 80) = *(v4 + 40);
  }

  return result;
}

CFTypeRef airPlayDescription_copyIsConnectedOverUSB(uint64_t a1, void *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8) && APTransportDeviceIsConnectedOverUSB())
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v3);
  *a2 = result;
  return result;
}

uint64_t apsession_SetupStreamCreatingResponse(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    return APSDispatchSyncTask();
  }

  apsession_SetupStreamCreatingResponse_cold_1();
  return 4294954511;
}

CFStringRef _APCarPlayAudioFormatInfoCopyFormattingDesc(uint64_t a1)
{
  v8 = 0;
  v2 = *(a1 + 104);
  v3 = v2 - 96;
  if (v2 - 96) < 0x19 && ((0x100FCF1u >> v3))
  {
    v4 = off_27849E100[v3];
  }

  else if (v2 == 130)
  {
    v4 = "RemoteControl";
  }

  else
  {
    v4 = "?";
  }

  AppendPrintF(&v8, "APCarPlayAudioFormatInfo: %s/%@, %{asbd}, 0x%08x, IL = %u samples, OL = %u samples, JBL = %u ms", v4, *(a1 + 112), a1 + 16, *(a1 + 96), *(a1 + 124), *(a1 + 128), *(a1 + 120));
  v5 = CFGetAllocator(a1);
  v6 = CFStringCreateWithCString(v5, v8, 0x8000100u);
  free(v8);
  return v6;
}

uint64_t carAudioStream_setProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 10 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554442, "[%{ptr}] %@: Set property for key: %'@ value: %'@\n", a1, *(DerivedStorage + 40), a2, a3);
  }

  if (CFEqual(a2, *MEMORY[0x277CC1860]))
  {
    if (*(DerivedStorage + 73))
    {
      v7 = CMBaseObjectGetDerivedStorage();
      CFRetain(a1);
      if (a3)
      {
        CFRetain(a3);
      }

      v8 = *(v7 + 120);
      block = MEMORY[0x277D85DD0];
      v18 = 0x40000000;
      v9 = __carAudioStream_setAudioSource_block_invoke;
      v10 = &__block_descriptor_tmp_63;
LABEL_15:
      v19 = v9;
      v20 = v10;
      v21 = v7;
      v22 = a1;
      v23 = a3;
LABEL_16:
      p_block = &block;
      goto LABEL_17;
    }

    carAudioStream_setProperty_cold_1();
    return 4294954509;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1858]))
  {
    if (*(DerivedStorage + 72))
    {
      v7 = CMBaseObjectGetDerivedStorage();
      CFRetain(a1);
      if (a3)
      {
        CFRetain(a3);
      }

      v8 = *(v7 + 120);
      block = MEMORY[0x277D85DD0];
      v18 = 0x40000000;
      v9 = __carAudioStream_setAudioSink_block_invoke;
      v10 = &__block_descriptor_tmp_65;
      goto LABEL_15;
    }

    carAudioStream_setProperty_cold_2();
    return 4294954509;
  }

  if (CFEqual(a2, @"AudioFormatInfo"))
  {
    v13 = CMBaseObjectGetDerivedStorage();
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(v13 + 120);
    block = MEMORY[0x277D85DD0];
    v18 = 0x40000000;
    v19 = __carAudioStream_setAudioFormatInfo_block_invoke;
    v20 = &__block_descriptor_tmp_66;
    v21 = v13;
    v22 = a3;
    v23 = a1;
    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1910]))
  {
    v14 = CMBaseObjectGetDerivedStorage();
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    v15 = *(v14 + 120);
    block = MEMORY[0x277D85DD0];
    v18 = 0x40000000;
    v19 = __carAudioStream_setVocoderInfo_block_invoke;
    v20 = &__block_descriptor_tmp_67;
    v21 = v14;
    v22 = a3;
    v23 = a1;
    dispatch_async(v15, &block);
    if (!a3)
    {
      return 0;
    }

    v8 = *(v14 + 168);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v16[2] = __carAudioStream_setVocoderInfo_block_invoke_2;
    v16[3] = &__block_descriptor_tmp_75;
    v16[4] = v14;
    v16[5] = a1;
    v16[6] = a3;
    p_block = v16;
LABEL_17:
    dispatch_async(v8, p_block);
    return 0;
  }

  if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_setProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %@: Set property for unsupported key: %'@\n", a1, *(DerivedStorage + 40), a2);
  }

  return 4294954512;
}

uint64_t APAudioSourceCarPlayCreate(uint64_t a1, __int128 *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    APAudioSourceCarPlayCreate_cold_5();
    return 4294950525;
  }

  if (!a3)
  {
    APAudioSourceCarPlayCreate_cold_4();
    return 4294950525;
  }

  if (*(a2 + 2) != 1819304813)
  {
    APAudioSourceCarPlayCreate_cold_1();
    return 4294950525;
  }

  if (*(a2 + 8) != 16)
  {
    APAudioSourceCarPlayCreate_cold_2();
    return 4294950525;
  }

  FigEndpointAudioSourceGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v11 = v5;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(a2 + 4);
    v8 = a2[1];
    *(DerivedStorage + 8) = *a2;
    *(DerivedStorage + 24) = v8;
    *(DerivedStorage + 40) = v7;
    v10 = *a2;
    v9 = a2[1];
    *(DerivedStorage + 80) = *(a2 + 4);
    *(DerivedStorage + 48) = v10;
    *(DerivedStorage + 64) = v9;
    *(DerivedStorage + 88) = 100;
    if (gLogCategory_APAudioSourceCarPlay <= 30 && (gLogCategory_APAudioSourceCarPlay != -1 || _LogCategory_Initialize()))
    {
      APAudioSourceCarPlayCreate_cold_3();
    }

    v11 = 0;
    *a3 = 0;
  }

  return v11;
}

uint64_t carAudioStream_resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  v19 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v17[3] = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v15[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v14[3] = 0;
  v9 = *(DerivedStorage + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_resume_block_invoke;
  block[3] = &unk_27849B528;
  block[4] = v18;
  block[5] = v17;
  block[6] = v16;
  block[7] = v15;
  block[8] = v14;
  block[9] = DerivedStorage;
  dispatch_sync(v9, block);
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v10 = *(DerivedStorage + 168);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __carAudioStream_resume_block_invoke_2;
  v12[3] = &unk_27849B5E0;
  v12[4] = v18;
  v12[5] = v15;
  v12[6] = v17;
  v12[7] = v16;
  v12[8] = v14;
  v12[9] = DerivedStorage;
  v12[10] = a1;
  v12[11] = a2;
  v12[12] = a3;
  v12[13] = a4;
  dispatch_async(v10, v12);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
  return 0;
}

CFTypeRef __carAudioStream_resume_block_invoke(void *a1)
{
  v2 = a1[9];
  v3 = *(v2 + 132) + 1;
  *(v2 + 132) = v3;
  *(*(a1[4] + 8) + 24) = v3;
  v4 = *(v2 + 152);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(*(a1[5] + 8) + 24) = v4;
  v5 = *(a1[9] + 160);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(*(a1[6] + 8) + 24) = v5;
  v6 = *(a1[9] + 136);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *(*(a1[7] + 8) + 24) = v6;
  result = *(a1[9] + 144);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void *__carAudioStream_resume_block_invoke_3(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[7] + 128);
  *(*(result[5] + 8) + 24) = *(*(result[6] + 8) + 24) == *(result[7] + 132);
  return result;
}

uint64_t carplaysource_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"BufferCapacityMS"))
  {
    DerivedStorage[22] = CFGetInt64Ranged();
  }

  else if (CFEqual(a2, @"PacketSizeLimit"))
  {
    DerivedStorage[23] = CFGetInt64();
  }

  else if (CFEqual(a2, @"VBRTestingBitRate"))
  {
    DerivedStorage[24] = CFGetInt64();
  }

  else
  {
    return -12784;
  }

  return v6;
}

uint64_t APCarPlayAudioFormatInfoGetAudioType(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t APCarPlayAudioFormatInfoGetAudioFormat(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t apsession_registryContainsStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CFStringCreateF(&v10, "%lu-%llu", a2, a3);
  v7 = v6;
  if (v10)
  {
    v8 = 0;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_3;
  }

  FigSimpleMutexLock();
  v8 = CFDictionaryContainsKey(*(DerivedStorage + 576), v7);
  FigSimpleMutexUnlock();
  if (v7)
  {
LABEL_3:
    CFRelease(v7);
  }

  return v8;
}

uint64_t apsession_ensureStartedInternal(const void *a1)
{
  v6[0] = a1;
  memset(&v6[1], 0, 24);
  v5[0] = a1;
  v5[1] = 0;
  started = apsession_ensureStartedInternalStage1StartTransaction(v6);
  if (started)
  {
    v3 = started;
    apsession_ensureStartedInternal_cold_1(started);
  }

  else
  {
    v2 = apsession_ensureStartedInternalStage2StartTransaction(v5);
    v3 = v2;
    if (v2)
    {
      apsession_ensureStartedInternal_cold_2(v2);
    }
  }

  return v3;
}

uint64_t apsession_ensureStartedInternalStage1StartTransaction(void *a1)
{
  OUTLINED_FUNCTION_24();
  v4 = *v3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v92 = 0;
  v93 = 0;
  v91 = 0;
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APSenderSessionAirPlay)))
  {
    v88 = *(DerivedStorage + 8);
    OUTLINED_FUNCTION_3();
    LogPrintF(v6, v7, v8, v9, v4, "OSStatus apsession_ensureStartedInternalStage1StartTransaction(void *)", v88);
  }

  if (*DerivedStorage)
  {
    v31 = 4294954511;
    goto LABEL_122;
  }

  if (*(DerivedStorage + 217))
  {
    goto LABEL_180;
  }

  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 306);
  v11 = *(DerivedStorage + 308);
  v12 = *(DerivedStorage + 424);
  v13 = a1[2];
  *(DerivedStorage + 424) = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  FigSimpleMutexUnlock();
  if (v10)
  {
    v31 = 0;
    goto LABEL_133;
  }

  if (v11)
  {
LABEL_180:
    v31 = 4294895467;
    goto LABEL_122;
  }

  v14 = CMBaseObjectGetDerivedStorage();
  *(v14 + 456) = 0;
  *(v14 + 480) = 0;
  v15 = *(v14 + 8);
  Count = CFArrayGetCount(*(v14 + 168));
  v17 = CFStringCreateF(0, "APSenderSession(%{ptr}).%@.connection%d", v4, v15, Count);
  APSEventRecorderRemoveChildEventRecorderFromParent();
  if (*(v14 + 176))
  {
    CFRelease(*(v14 + 176));
    *(v14 + 176) = 0;
  }

  v18 = APSEventRecorderCreate();
  if (v18)
  {
    v31 = v18;
  }

  else
  {
    if (*(v14 + 72) == 5)
    {
      v19 = APSEventRecorderAddSignPostForEvent();
      if (v19)
      {
        v31 = v19;
        goto LABEL_210;
      }

      v20 = APSEventRecorderAddSignPostForEvent();
      if (v20)
      {
        v31 = v20;
        goto LABEL_210;
      }

      v21 = APSEventRecorderAddSignPostForEvent();
      if (v21)
      {
        v31 = v21;
        goto LABEL_210;
      }

      v22 = APSEventRecorderAddSignPostForEvent();
      if (v22)
      {
        v31 = v22;
        goto LABEL_210;
      }

      v23 = APSEventRecorderAddSignPostForEvent();
      if (v23)
      {
        v31 = v23;
        goto LABEL_210;
      }

      v24 = APSEventRecorderAddSignPostForEvent();
      if (v24)
      {
        v31 = v24;
        goto LABEL_210;
      }

      v25 = APSEventRecorderAddSignPostForEvent();
      if (v25)
      {
        v31 = v25;
        goto LABEL_210;
      }

      v26 = APSEventRecorderAddSignPostForEvent();
      if (v26)
      {
        v31 = v26;
        goto LABEL_210;
      }

      v27 = APSEventRecorderAddSignPostForEvent();
      if (v27)
      {
        v31 = v27;
        goto LABEL_210;
      }

      v28 = APSEventRecorderAddSignPostForEvent();
      if (v28)
      {
        v31 = v28;
        goto LABEL_210;
      }

      v29 = APSEventRecorderAddSignPostForEvent();
      if (v29)
      {
        v31 = v29;
        goto LABEL_210;
      }

      v30 = APSEventRecorderAddSignPostForEvent();
      if (v30)
      {
        v31 = v30;
        goto LABEL_210;
      }
    }

    v31 = MEMORY[0x223DAE7F0](*(v14 + 160), *(v14 + 176));
    if (!v31)
    {
      CFArrayAppendValue(*(v14 + 168), *(v14 + 176));
      goto LABEL_31;
    }
  }

LABEL_210:
  APSLogErrorAt();
LABEL_31:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v31)
  {
    goto LABEL_212;
  }

  APSEventRecorderRecordEvent();
  if (IsAppleInternalBuild() && gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureStartedInternalStage1StartTransaction(void *)", (v1 + 20), "WHAPRO [%{ptr}] %###s %@\n", v4, "OSStatus apsession_ensureStartedInternalStage1StartTransaction(void *)", *(DerivedStorage + 8));
  }

  mach_absolute_time();
  v31 = apsession_ensureConnectedInternal(v4);
  mach_absolute_time();
  if (IsAppleInternalBuild())
  {
    v32 = v31 ? 90 : 50;
    if (v32 >= gLogCategory_APSenderSessionAirPlay && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      v33 = a1;
      v34 = *(DerivedStorage + 8);
      if (v31)
      {
        v1 = "failed to connect";
      }

      else
      {
        v1 = "connected";
      }

      v90 = UpTicksToMilliseconds();
      v89 = v34;
      OUTLINED_FUNCTION_24();
      a1 = v33;
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureStartedInternalStage1StartTransaction(void *)", v32 | 0x2000000u, "WHAPRO [%{ptr}] %###s %@ %s err=%#m (%lu ms)\n", v4, "OSStatus apsession_ensureStartedInternalStage1StartTransaction(void *)", v89, v1, v31, v90);
    }
  }

  if (v31)
  {
    goto LABEL_212;
  }

  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v35 = LogCategoryCopyOSLogHandle();
    if (OUTLINED_FUNCTION_26(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v1, OS_SIGNPOST_EVENT, 0x2B8D081CuLL, "AP_SIGNPOST_CAR_AUTHORIZE_START", &unk_2222A918B, buf, 2u);
    }

    OUTLINED_FUNCTION_24();
    if (v31)
    {
      os_release(v31);
    }
  }

  v97 = 0;
  v36 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  *buf = 0;
  v94 = 0;
  if (*(v36 + 114))
  {
    if (gLogCategory_APSenderSessionAirPlay <= 60 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureAuthenticated(APSenderSessionRef)", (v1 + 30), "*** [%{ptr}] %###s: Authentication/encryption disabled ***\n", v4, "OSStatus apsession_ensureAuthenticated(APSenderSessionRef)");
    }

    goto LABEL_70;
  }

  v37 = v36;
  if (*(v36 + 72) == 10 || APSGetFBOPropertyInt64())
  {
LABEL_70:
    v42 = 0;
    v41 = 0;
    v43 = 0;
    goto LABEL_71;
  }

  v38 = APSGetFBOPropertyInt64();
  if (v97)
  {
    APSLogErrorAt();
    goto LABEL_70;
  }

  FigSimpleMutexLock();
  v39 = *(v37 + 408);
  if (v39)
  {
    v39 = CFRetain(v39);
  }

  cf = v39;
  v40 = *(v37 + 416);
  if (v40)
  {
    v41 = CFRetain(v40);
  }

  else
  {
    v41 = 0;
  }

  v66 = *(v37 + 424);
  if (v66)
  {
    v43 = CFRetain(v66);
  }

  else
  {
    v43 = 0;
  }

  v67 = *(v37 + 328);
  if (v67)
  {
    v42 = CFRetain(v67);
  }

  else
  {
    v42 = 0;
  }

  FigSimpleMutexUnlock();
  v44 = cf;
  if (cf)
  {
    goto LABEL_72;
  }

  if (!v42)
  {
    APSLogErrorAt();
    v87 = -71821;
    goto LABEL_186;
  }

  v68 = v38 - 1;
  switch(v38)
  {
    case 1:
      v78 = MEMORY[0x277CBECE8];
      if (IsAppleInternalBuild() && *(v37 + 72) == 5)
      {
        v79 = *v78;
        APEndpointDescriptionGetCMBaseObject();
        v97 = CMBaseObjectCopyProperty(v80, @"MACAddress", v79, buf);
        if (v97)
        {
          goto LABEL_218;
        }

        v97 = APAuthenticationClientRSACreate(v79, v42, *buf, &cf);
        if (v97)
        {
          goto LABEL_218;
        }

        goto LABEL_172;
      }

      goto LABEL_171;
    case 32:
      if (v41)
      {
        v72 = *MEMORY[0x277CBECE8];
        APPairingClientGetCMBaseObject();
        v97 = CMBaseObjectCopyProperty(v73, 0x283577310, v72, &v94);
        if (v97)
        {
          goto LABEL_218;
        }

        v97 = APAuthenticationClientMFiMutualAuthCreate(v72, v42, v43, v94, &cf);
        if (v97)
        {
          goto LABEL_218;
        }

        goto LABEL_172;
      }

      APSLogErrorAt();
      v87 = -71829;
LABEL_186:
      v97 = v87;
      goto LABEL_71;
    case 8:
      v74 = OUTLINED_FUNCTION_13_3();
      v97 = APAuthenticationClientMFiCreate(v74, v75, v76);
      if (v97)
      {
        goto LABEL_218;
      }

      goto LABEL_172;
    case 16:
LABEL_171:
      v81 = OUTLINED_FUNCTION_13_3();
      v97 = APAuthenticationClientTokenCreate(v81, v82, v83);
      if (v97)
      {
        goto LABEL_218;
      }

      goto LABEL_172;
  }

  if (v38 != 4)
  {
    if (gLogCategory_APSenderSessionAirPlay <= 90)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1 || (v86 = _LogCategory_Initialize(), v68 = v38 - 1, v86))
      {
        v77 = "RSA";
        switch(v68)
        {
          case 0:
            break;
          case 1:
            v77 = "v2";
            break;
          case 3:
            v77 = "v2.5";
            break;
          case 7:
            v77 = "MFi";
            break;
          default:
            v77 = "?";
            break;
        }

        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureAuthenticated(APSenderSessionRef)", 33554522, "[%{ptr}] Authentication Type %s is not supported for AirPlay sessions.\n", v4, v77);
      }
    }

    v87 = -71824;
    goto LABEL_186;
  }

  v69 = OUTLINED_FUNCTION_13_3();
  v97 = APAuthenticationClientFairPlayCreate(v69, v70, v71);
  if (v97)
  {
LABEL_218:
    APSLogErrorAt();
    goto LABEL_71;
  }

LABEL_172:
  v97 = APAuthenticationClientAuthenticateEndpoint(cf);
  if (v97)
  {
    goto LABEL_218;
  }

  FigSimpleMutexLock();
  v84 = *(v37 + 408);
  v85 = cf;
  *(v37 + 408) = cf;
  if (v85)
  {
    CFRetain(v85);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  FigSimpleMutexUnlock();
LABEL_71:
  v44 = cf;
  if (cf)
  {
LABEL_72:
    CFRelease(v44);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  v31 = v97;
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_23_0();
  if (v45)
  {
    v46 = LogCategoryCopyOSLogHandle();
    if (OUTLINED_FUNCTION_27_0(v46))
    {
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_21(&dword_221FFA000, v42, v48, v47 | 0x80, "AP_SIGNPOST_CAR_AUTHORIZE_COMPLETE", &unk_2222A918B, buf);
    }

    if (v43)
    {
      os_release(v43);
    }
  }

  if (v31)
  {
    goto LABEL_212;
  }

  v49 = apsession_ensureKeyHolderSetUp(v4);
  if (v49)
  {
    v31 = v49;
    goto LABEL_212;
  }

  if (*(DerivedStorage + 80))
  {
    v50 = apsession_ensureSenderNetworkClockStarted(v4);
    if (v50)
    {
      v31 = v50;
      goto LABEL_212;
    }
  }

  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_23_0();
  if (v45)
  {
    v51 = LogCategoryCopyOSLogHandle();
    if (OUTLINED_FUNCTION_26(v51))
    {
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_21(&dword_221FFA000, v43, v53, v52 + 140, "AP_SIGNPOST_CAR_SETUPMESSAGE_START", &unk_2222A918B, buf);
    }
  }

  v31 = apsession_ensureControlStreamSetup(v4, a1[1], &v93 + 1, &v93, &v92, &v91);
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_23_0();
  if (v45)
  {
    v54 = LogCategoryCopyOSLogHandle();
    if (OUTLINED_FUNCTION_27_0(v54))
    {
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_21(&dword_221FFA000, v42, v56, v55 + 144, "AP_SIGNPOST_CAR_SETUPMESSAGE_COMPLETE", &unk_2222A918B, buf);
    }

    if (v43)
    {
      os_release(v43);
    }
  }

  if (v31)
  {
    goto LABEL_212;
  }

  if (v91)
  {
    v57 = a1[3];
    if (v57)
    {
      *v57 = v91;
      v91 = 0;
    }
  }

  if (v93)
  {
    OUTLINED_FUNCTION_23_0();
    if (v45)
    {
      v65 = apsession_ensureLowPowerKeepAliveStreamSetup(v4, v58);
      if (v65)
      {
        v31 = v65;
LABEL_212:
        APSLogErrorAt();
        goto LABEL_122;
      }
    }
  }

  if (*(DerivedStorage + 24) == @"PTP")
  {
    v59 = *(DerivedStorage + 280);
    v60 = v92;
    *(DerivedStorage + 280) = v92;
    if (v60)
    {
      CFRetain(v60);
    }

    if (v59)
    {
      CFRelease(v59);
    }

    v61 = apsession_addPeerToNetworkClock(v4);
    if (v61)
    {
      v31 = v61;
      goto LABEL_212;
    }
  }

  v31 = apsession_ensureEventStreamCreated(v4, SHIDWORD(v93));
  if (v31)
  {
    goto LABEL_212;
  }

LABEL_122:
  if (v31)
  {
    v62 = 90;
  }

  else
  {
    v62 = 50;
  }

  if (v62 >= gLogCategory_APSenderSessionAirPlay && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    v63 = "failed";
    if (!v31)
    {
      v63 = "succeeded";
    }

    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureStartedInternalStage1StartTransaction(void *)", v62 | 0x2000000u, "[%{ptr}] Stage 1 %s%?{end}, error: %#m\n", v4, v63, v31 == 0, v31);
  }

  if (v31)
  {
    apsession_recordActivationMessageTiming(v4);
    apsession_disconnectControlStream(v4);
  }

LABEL_133:
  if (v92)
  {
    CFRelease(v92);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  return v31;
}

uint64_t apsession_ensureStartedInternalStage2StartTransaction(const void **a1)
{
  v224 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0x280FB0000uLL;
  if (gLogCategory_APSenderSessionAirPlay <= 30)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_3();
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureStartedInternalStage2StartTransaction(void *)", v5, "[%{ptr}] %###s %@\n", v2, "OSStatus apsession_ensureStartedInternalStage2StartTransaction(void *)", v6);
    }
  }

  if (*DerivedStorage)
  {
    APSLogErrorAt();
    Info = 4294954511;
    goto LABEL_214;
  }

  if (*(DerivedStorage + 217))
  {
    APSLogErrorAt();
    Info = 4294895467;
    goto LABEL_214;
  }

  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 306);
  FigSimpleMutexUnlock();
  if (v7)
  {
    goto LABEL_213;
  }

  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_25();
  if (v13)
  {
    v8 = LogCategoryCopyOSLogHandle();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      OUTLINED_FUNCTION_21(&dword_221FFA000, v10, v11, 0x2B8D08B0uLL, "AP_SIGNPOST_CAR_INFOMESSAGE_START", &unk_2222A918B, buf);
    }

    if (v9)
    {
      os_release(v9);
    }
  }

  mach_absolute_time();
  v12 = *(DerivedStorage + 72);
  v13 = v12 == 9 || v12 == 4;
  if (!v13 || !APSIsInAirPlaySenderSystemServer() || !FVDUtilsEncryptedEncodeSupported() || !APSSettingsIsFeatureEnabled())
  {
    goto LABEL_43;
  }

  *buf = 0;
  OUTLINED_FUNCTION_19_1();
  domain_answer = os_eligibility_get_domain_answer();
  if (!domain_answer)
  {
LABEL_32:
    v20 = *buf;
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
    {
      v21 = "not eligible";
      if (v20 == 4)
      {
        v21 = "eligible";
      }

      v202 = v21;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v22, v23, v24, v25, v202);
    }

    if (v20 != 4)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (gLogCategory_APSenderSessionAirPlay < 91)
  {
    v15 = domain_answer;
    if (gLogCategory_APSenderSessionAirPlay != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      v206 = strerror(v15);
      OUTLINED_FUNCTION_8();
      LogPrintF(v17, v18, (v16 + 40), v19, v15, v206);
    }

    goto LABEL_32;
  }

  if (*buf != 4)
  {
LABEL_43:
    v28 = 0;
    goto LABEL_44;
  }

LABEL_41:
  v26 = *(DerivedStorage + 56);
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v27 || !v27(v26, 87))
  {
    goto LABEL_43;
  }

  if (APSIsDemoModeEnabled())
  {
    v28 = APSSettingsGetIntWithDefault() != 0;
  }

  else
  {
    v28 = 1;
  }

LABEL_44:
  if (APSGetFBOPropertyInt64() && v28)
  {
    v28 = APSSettingsGetIntWithDefault() != 0;
  }

  v29 = a1[1];
  v30 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_3();
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureInfoFetched(APSenderSessionRef, Boolean, CFDictionaryRef)", v31, "[%{ptr}] %###s %s endpoint info.\n", v2, "OSStatus apsession_ensureInfoFetched(APSenderSessionRef, Boolean, CFDictionaryRef)", v32);
    }
  }

  if (*(v30 + 196))
  {
    Info = 0;
  }

  else
  {
    Info = apsession_fetchInfo(v2, 0, v28, v29);
    if (Info)
    {
      APSLogErrorAt();
    }

    else
    {
      *(v30 + 196) = 1;
    }
  }

  mach_absolute_time();
  if (*(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_16_1();
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_25();
  if (v13)
  {
    v34 = LogCategoryCopyOSLogHandle();
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v36))
    {
      *buf = 0;
      OUTLINED_FUNCTION_21(&dword_221FFA000, v36, v37, 0x2B8D08B4uLL, "AP_SIGNPOST_CAR_INFOMESSAGE_COMPLETE", &unk_2222A918B, buf);
    }

    v4 = 0x280FB0000uLL;
    if (v35)
    {
      os_release(v35);
    }
  }

  if (IsAppleInternalBuild())
  {
    OUTLINED_FUNCTION_9_3();
    if (v99 ^ v100 | v13)
    {
      if (v38 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay))
      {
        v39 = *(DerivedStorage + 8);
        v214 = UpTicksToMilliseconds();
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v40, v41, v42, v43, v2, "OSStatus apsession_ensureStartedInternalStage2StartTransaction(void *)", v39, v214);
      }
    }
  }

  if (Info)
  {
    goto LABEL_320;
  }

  v44 = *(DerivedStorage + 72);
  if (v44 > 8 || ((1 << v44) & 0x1C2) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    APSEventRecorderRecordEvent();
    mach_absolute_time();
    v147 = CMBaseObjectGetDerivedStorage();
    LODWORD(v221) = 0;
    *buf = 0;
    if (gLogCategory_APSenderSessionAirPlay <= 30)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_7_3();
        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureInitialVolumeFetched(APSenderSessionRef)", v148, "[%{ptr}] %###s %s endpoint initial volume.\n", v2, "OSStatus apsession_ensureInitialVolumeFetched(APSenderSessionRef)", v149);
      }
    }

    if (*(v147 + 195))
    {
      v152 = 0;
      Info = 0;
LABEL_287:
      if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
      {
        v212 = *(v147 + 400);
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v175, v176, v177, v178, v2, "OSStatus apsession_ensureInitialVolumeFetched(APSenderSessionRef)", *&v212);
        if (!v152)
        {
          goto LABEL_292;
        }
      }

      else if (!v152)
      {
LABEL_292:
        mach_absolute_time();
        OUTLINED_FUNCTION_16_1();
        APSEventRecorderRecordEvent();
        v4 = 0x280FB0000;
        if (IsAppleInternalBuild() && (OUTLINED_FUNCTION_9_3(), v99 ^ v100 | v13) && (v174 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
        {
          v179 = *(DerivedStorage + 8);
          v215 = UpTicksToMilliseconds();
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v180, v181, v182, v183, v2, "OSStatus apsession_ensureStartedInternalStage2StartTransaction(void *)", v179, v215);
          if (Info)
          {
            goto LABEL_320;
          }
        }

        else if (Info)
        {
          goto LABEL_320;
        }

        goto LABEL_75;
      }

      CFRelease(v152);
      goto LABEL_292;
    }

    if (!APSGetFBOPropertyInt64())
    {
      OUTLINED_FUNCTION_11_2();
      if (v99 ^ v100 | v13)
      {
        if (v150 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_8();
          LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureInitialVolumeFetched(APSenderSessionRef)", (v151 - 20), "[%{ptr}] %###s initial volume not supported by endpoint.\n", v2, "OSStatus apsession_ensureInitialVolumeFetched(APSenderSessionRef)");
        }
      }

      v152 = 0;
      Info = 0;
      goto LABEL_286;
    }

    apsession_copyTransportControlStream(v2, buf);
    v152 = *buf;
    if (*buf)
    {
      Info = APSenderSessionUtilityFetchInitialVolume(*buf, &v221);
      if (!Info)
      {
        FigSimpleMutexLock();
        *(v147 + 400) = v221;
        FigSimpleMutexUnlock();
LABEL_286:
        *(v147 + 195) = 1;
        goto LABEL_287;
      }
    }

    else
    {
      Info = 4294895475;
    }

    APSLogErrorAt();
    goto LABEL_287;
  }

LABEL_75:
  v45 = MEMORY[0x277CBECE8];
  if (!v28)
  {
    goto LABEL_76;
  }

  if (*(DerivedStorage + 200))
  {
    CFDictionaryGetInt64();
  }

  if (!FVDUtilsSupportedProtectionFlags())
  {
    OUTLINED_FUNCTION_9_3();
    if (v99 ^ v100 | v13 && (v53 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
    {
      v203 = v2;
      OUTLINED_FUNCTION_2_0();
      goto LABEL_280;
    }

    goto LABEL_76;
  }

  v74 = CMBaseObjectGetDerivedStorage();
  v222 = 0;
  cf = 0;
  v221 = 0;
  v219 = 0;
  if (!*(v74 + 200))
  {
    APSLogErrorAt();
    v91 = 0;
    v153 = 0;
    v121 = 4294895467;
    goto LABEL_306;
  }

  v75 = OUTLINED_FUNCTION_18_1();
  Mutable = CFDictionaryCreateMutable(v75, v76, v77, v78);
  CFDictionarySetValue(Mutable, @"displayCapabilities", *(v74 + 200));
  v217 = Mutable;
  v80 = APPWDKeyExchangeSenderSessionCreate(Mutable, (v74 + 208));
  if (v80)
  {
    v121 = v80;
    APSLogErrorAt();
    v91 = 0;
    goto LABEL_305;
  }

  OUTLINED_FUNCTION_9_3();
  if (v99 ^ v100 | v13)
  {
    if (v81 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay))
    {
      v207 = *(v74 + 208);
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v82, v83, v84, v85, v2, v207);
    }

    OUTLINED_FUNCTION_9_3();
    if (v99 ^ v100 | v13 && (v86 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v87, v88, v89, v90, v2);
    }
  }

  v216 = DerivedStorage;
  mach_absolute_time();
  v91 = 0;
  OUTLINED_FUNCTION_8();
  v94 = (v93 - 20);
  v218 = v74;
  if (v92)
  {
LABEL_136:
    CFRelease(v92);
    v221 = 0;
    goto LABEL_137;
  }

  while (1)
  {
LABEL_137:
    OUTLINED_FUNCTION_11_2();
    if (v99 ^ v100 | v13)
    {
      if (v95 != -1)
      {
        goto LABEL_140;
      }

      if (!_LogCategory_Initialize())
      {
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_11_2();
      if (v99 ^ v100 | v13)
      {
LABEL_140:
        v96 = v95 == -1 && _LogCategory_Initialize() == 0;
      }

      else
      {
        v96 = 1;
      }

      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_performPWDKeyExchange(APSenderSessionRef)", v94, "<PWDKeyExchange> [%{ptr}] Processing IncomingData%?{end}=%1.64@", v2, v96, v91);
    }

LABEL_147:
    v97 = APPWDKeyExchangeSenderSessionPerformKeyExchange(*(v74 + 208), v91, &v221, &v222);
    if (v97)
    {
      v121 = v97;
LABEL_304:
      APSLogErrorAt();
      DerivedStorage = v216;
      v45 = MEMORY[0x277CBECE8];
      goto LABEL_305;
    }

    OUTLINED_FUNCTION_9_3();
    if (v102)
    {
      if (!(v99 ^ v100 | v98))
      {
LABEL_254:
        DerivedStorage = v216;
        v153 = v217;
        v45 = MEMORY[0x277CBECE8];
        goto LABEL_255;
      }

      DerivedStorage = v216;
      v153 = v217;
      v45 = MEMORY[0x277CBECE8];
      if (v101 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay))
      {
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    if (v99 ^ v100 | v98 && (v101 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
    {
      v208 = v221;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v103, v104, v105, "<PWDKeyExchange> [%{ptr}] Got outgoingData=%1.64@", v2, v208);
    }

    if (v91)
    {
      CFRelease(v91);
    }

    OUTLINED_FUNCTION_11_2();
    if (v99 ^ v100 | v13)
    {
      if (v106 != -1)
      {
        goto LABEL_159;
      }

      if (!_LogCategory_Initialize())
      {
        goto LABEL_166;
      }

      OUTLINED_FUNCTION_11_2();
      if (v99 ^ v100 | v13)
      {
LABEL_159:
        v107 = v106 == -1 && _LogCategory_Initialize() == 0;
      }

      else
      {
        v107 = 1;
      }

      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_performPWDKeyExchange(APSenderSessionRef)", v94, "<PWDKeyExchange> [%{ptr}] Sending outgoingData%?{end}=%1.64@", v2, v107, v221);
    }

LABEL_166:
    v108 = v221;
    v109 = CMBaseObjectGetDerivedStorage();
    *buf = 0;
    FigSimpleMutexLock();
    v110 = *(v109 + 328);
    if (!v110)
    {
      FigSimpleMutexUnlock();
LABEL_173:
      APSLogErrorAt();
      v91 = 0;
      v121 = 0;
      goto LABEL_181;
    }

    v111 = CFRetain(v110);
    FigSimpleMutexUnlock();
    if (!v111)
    {
      goto LABEL_173;
    }

    v112 = v2;
    v113 = OUTLINED_FUNCTION_18_1();
    v114 = MEMORY[0x277CBF138];
    v115 = MEMORY[0x277CBF150];
    v117 = CFDictionaryCreateMutable(v113, v116, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(v117, @"data", v108);
    v118 = OUTLINED_FUNCTION_18_1();
    v120 = CFDictionaryCreateMutable(v118, v119, v114, v115);
    CFDictionarySetValue(v120, @"params", v117);
    CFDictionarySetValue(v120, @"type", @"performPWDKeyExchange");
    v121 = APTransportStreamSendPlistMessageCreatingPlistReply();
    if (v121 || !*buf)
    {
      APSLogErrorAt();
      v91 = 0;
    }

    else
    {
      v122 = CFDictionaryGetInt64() != 0;
      CFDataGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (TypedValue)
      {
        v91 = CFRetain(TypedValue);
      }

      else
      {
        v91 = 0;
      }

      v222 = v122;
      v74 = v218;
    }

    CFRelease(v111);
    if (v120)
    {
      CFRelease(v120);
    }

    if (v117)
    {
      CFRelease(v117);
    }

    v2 = v112;
    v4 = 0x280FB0000uLL;
LABEL_181:
    if (*buf)
    {
      CFRelease(*buf);
    }

    if (v121)
    {
      goto LABEL_304;
    }

    OUTLINED_FUNCTION_9_3();
    if (v128)
    {
      break;
    }

    if (v125 ^ v126 | v124 && (v127 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v129, v130, v131, "<PWDKeyExchange> [%{ptr}] Received incomingData=%1.64@", v2, v91);
    }

    v92 = v221;
    if (v221)
    {
      goto LABEL_136;
    }
  }

  if (!(v125 ^ v126 | v124))
  {
    goto LABEL_254;
  }

  DerivedStorage = v216;
  v153 = v217;
  v45 = MEMORY[0x277CBECE8];
  if (v127 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay))
  {
LABEL_248:
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v154, v155, v156, v157, v2);
  }

LABEL_249:
  OUTLINED_FUNCTION_9_3();
  if (v99 ^ v100 | v13 && (v158 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay)))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    v209 = v159;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v160, v161, v162, v163, v2, v209);
  }

LABEL_255:
  v164 = APPWDKeyExchangeSenderSessionCopyEncoderEncryptionContext(*(v74 + 208), &cf);
  if (v164)
  {
    v121 = v164;
    v196 = *(v4 + 3424);
    if (v196 > 90)
    {
      goto LABEL_310;
    }

    if (v196 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      v74 = v218;
      v211 = *(v218 + 208);
      v213 = v121;
      v204 = v2;
      goto LABEL_341;
    }

LABEL_339:
    v4 = 0x280FB0000;
    DerivedStorage = v216;
    v74 = v218;
LABEL_305:
    v153 = v217;
LABEL_306:
    v184 = *(v4 + 3424);
    if (v184 <= 90)
    {
      if (v184 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_8();
        LogPrintF(v186, v187, (v185 + 40), v188, v2, v121);
      }
    }

    goto LABEL_310;
  }

  v167 = APPWDKeyExchangeSenderSessionCopyEncoderEncryptionKeyID(*(v74 + 208), &v219);
  if (!v167)
  {
    FigSimpleMutexLock();
    v168 = *(v74 + 528);
    v169 = cf;
    *(v74 + 528) = cf;
    if (v169)
    {
      CFRetain(v169);
    }

    if (v168)
    {
      CFRelease(v168);
    }

    v170 = *(v74 + 536);
    v171 = v219;
    *(v74 + 536) = v219;
    if (v171)
    {
      CFRetain(v171);
    }

    if (v170)
    {
      CFRelease(v170);
    }

    *(v74 + 544) = CFDictionaryGetInt64();
    *(v74 + 544) = FVDUtilsSupportedProtectionFlags();
    FigSimpleMutexUnlock();
    v121 = 0;
    goto LABEL_266;
  }

  v121 = v167;
  v197 = *(v4 + 3424);
  if (v197 <= 90)
  {
    if (v197 == -1)
    {
      OUTLINED_FUNCTION_8();
      if (!_LogCategory_Initialize())
      {
        goto LABEL_339;
      }
    }

    v74 = v218;
    v211 = *(v218 + 208);
    v213 = v121;
    v204 = v2;
LABEL_341:
    OUTLINED_FUNCTION_8();
    LogPrintF(v199, v200, (v198 + 40), v201, v204, v211, v213);
    v4 = 0x280FB0000;
    DerivedStorage = v216;
    goto LABEL_305;
  }

LABEL_310:
  v189 = *(v74 + 208);
  if (v189)
  {
    APPWDKeyExchangeSenderSessionInvalidate(v189, v165, v166);
    CFRelease(*(v74 + 208));
    *(v74 + 208) = 0;
  }

LABEL_266:
  if (v153)
  {
    CFRelease(v153);
    if (v91)
    {
LABEL_268:
      CFRelease(v91);
    }
  }

  else if (v91)
  {
    goto LABEL_268;
  }

  if (v221)
  {
    CFRelease(v221);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v219)
  {
    CFRelease(v219);
  }

  if (v121)
  {
    v172 = *(v4 + 3424);
    if (v172 <= 60)
    {
      if (v172 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        v203 = v2;
        v205 = v121;
        OUTLINED_FUNCTION_8();
        v56 = (v173 + 10);
LABEL_280:
        LogPrintF(v54, v55, v56, v57, v203, v205);
      }
    }
  }

LABEL_76:
  if (*(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_16_1();
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_25();
  if (v13)
  {
    v46 = LogCategoryCopyOSLogHandle();
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v48, OS_SIGNPOST_EVENT, 0x2B8D08A0uLL, "AP_SIGNPOST_CAR_STARTSESSION_START", &unk_2222A918B, buf, 2u);
    }

    if (v47)
    {
      os_release(v47);
    }
  }

  v49 = CMBaseObjectGetDerivedStorage();
  *buf = 0;
  FigSimpleMutexLock();
  v50 = *(v49 + 306);
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_11_2();
  if (v99 ^ v100 | v13)
  {
    if (v51 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_3();
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureSessionStarted(APSenderSessionRef)", v58, "[%{ptr}] %###s isSessionStarted:%s.\n", v2, "OSStatus apsession_ensureSessionStarted(APSenderSessionRef)", v59);
      if (!v50)
      {
        goto LABEL_92;
      }

      goto LABEL_105;
    }
  }

  if (v50)
  {
LABEL_105:
    Info = 0;
    goto LABEL_106;
  }

LABEL_92:
  apsession_copyTransportControlStream(v2, buf);
  v52 = *buf;
  if (*buf)
  {
    OUTLINED_FUNCTION_19_1();
    Info = APTransportStreamSendPlistMessageCreatingPlistReply();
    if (Info)
    {
      APSLogErrorAt();
    }

    else
    {
      FigSimpleMutexLock();
      *(v49 + 306) = 1;
      FigSimpleMutexUnlock();
    }

    CFRelease(v52);
  }

  else
  {
    Info = 4294895475;
    APSLogErrorAt();
  }

LABEL_106:
  if (*(DerivedStorage + 176))
  {
    OUTLINED_FUNCTION_16_1();
    APSEventRecorderRecordEvent();
  }

  OUTLINED_FUNCTION_25();
  if (v13)
  {
    v60 = LogCategoryCopyOSLogHandle();
    v61 = v60;
    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v62))
    {
      *buf = 0;
      OUTLINED_FUNCTION_21(&dword_221FFA000, v62, v63, 0x2B8D08A4uLL, "AP_SIGNPOST_CAR_STARTSESSION_COMPLETE", &unk_2222A918B, buf);
    }

    if (v61)
    {
      os_release(v61);
    }
  }

  if (Info)
  {
    goto LABEL_320;
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 308) = 1;
  FigSimpleMutexUnlock();
  KeepAliveMode = apsession_getKeepAliveMode(v2);
  v65 = apsession_ensureKeepAliveStarted(v2, KeepAliveMode);
  if (v65)
  {
    Info = v65;
LABEL_320:
    APSLogErrorAt();
    goto LABEL_214;
  }

  v66 = CMBaseObjectGetDerivedStorage();
  v67 = v66;
  v68 = 0;
  v69 = *(v66 + 72);
  if (v69 <= 0xB)
  {
    v68 = ((1 << v69) & 0x80C) != 0;
  }

  v70 = *(v66 + 155);
  v71 = *(v66 + 56);
  v72 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v72)
  {
    v73 = v72(v71, 93);
  }

  else
  {
    v73 = 0;
  }

  v132 = *(v4 + 3424);
  if (v132 <= 40)
  {
    if (v132 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_registerForMC2UCDetection(APSenderSessionRef)", 33554472, "[%{ptr}] registerForMC2UCDetection [DeviceName '%@' - Supports MC2UCDetection=%d], isMC2UCDetectionEnabled=%d, isGroupPlayback=%d\n", v2, *(v67 + 8), v73, v70, v68);
    }
  }

  v133 = !v68;
  if (!v70)
  {
    v133 = 1;
  }

  if ((v133 & 1) != 0 || !v73)
  {
LABEL_204:
    v139 = *(v4 + 3424);
    if (v139 <= 40)
    {
      if (v139 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureStartedInternalStage2StartTransaction(void *)", 33554472, "WHAPRO [%{ptr}] AirPlay session started on endpoint %@.\n", v2, *(DerivedStorage + 8));
      }
    }
  }

  else
  {
    v134 = mach_absolute_time();
    *(v67 + 16) = CFStringCreateF(0, "%p-%llu", v2, v134);
    v135 = CFGetCString();
    if (v135)
    {
      Shared = APMulticastProbeSenderGetShared(v135, v136);
      v138 = APMulticastProbeSenderRegister(Shared, *(v67 + 16), *(v67 + 264));
      if (!v138)
      {
        goto LABEL_204;
      }

      v190 = v138;
    }

    else
    {
      v190 = 4294895475;
    }

    APSLogErrorAt();
    v191 = *(v4 + 3424);
    if (v191 < 51)
    {
      if (v191 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APSenderSessionAirPlay))
      {
        v210 = *(v67 + 8);
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v192, v193, v194, v195, v2, v210, v190);
      }

      goto LABEL_204;
    }
  }

  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  *buf = 0;
  APEndpointDescriptionGetCMBaseObject();
  v141 = v140;
  v142 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v142)
  {
    v142(v141, @"OSBuildVersion", *v45, buf);
  }

  FigCFDictionarySetValue();
  if (*buf)
  {
    CFRelease(*buf);
  }

  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
LABEL_213:
  Info = 0;
LABEL_214:
  if (Info)
  {
    v143 = 90;
  }

  else
  {
    v143 = 50;
  }

  v144 = *(v4 + 3424);
  if (v143 >= v144 && (v144 != -1 || _LogCategory_Initialize()))
  {
    v145 = "failed";
    if (!Info)
    {
      v145 = "succeeded";
    }

    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureStartedInternalStage2StartTransaction(void *)", v143 | 0x2000000u, "[%{ptr}] Stage 2 %s%?{end}, error: %#m\n", v2, v145, Info == 0, Info);
  }

  apsession_recordActivationMessageTiming(v2);
  if (Info)
  {
    apsession_disconnectControlStream(v2);
  }

  return Info;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

void apsession_recordActivationMessageTiming(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v9 = 0;
  apsession_copyTransportControlStream(a1, &v9);
  v3 = v9;
  if (v9)
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5 || v5(CMBaseObject, *MEMORY[0x277CE50A8], *MEMORY[0x277CBECE8], &cf))
    {
      APSLogErrorAt();
    }

    else
    {
      FigSimpleMutexLock();
      v6 = *(DerivedStorage + 512);
      v7 = cf;
      *(DerivedStorage + 512) = cf;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      FigSimpleMutexUnlock();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t apsession_copyTransportControlStream(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 328);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;

  return FigSimpleMutexUnlock();
}

void __carAudioStream_setAudioFormatInfo_block_invoke()
{
  OUTLINED_FUNCTION_7_2();
  if (!v2)
  {
    v3 = *(v0 + 40);
    if (v3)
    {
      v4 = *(v1 + 136);
      *(v1 + 136) = v3;
      CFRetain(v3);
      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  CFRelease(*(v0 + 48));
  v5 = *(v0 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __carAudioStream_setAudioSource_block_invoke()
{
  OUTLINED_FUNCTION_7_2();
  if (!v2)
  {
    if (gLogCategory_APEndpointStreamCarPlayAudio <= 30)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio != -1 || (v4 = OUTLINED_FUNCTION_10(&gLogCategory_APEndpointStreamCarPlayAudio), v1 = *(v0 + 32), v4))
      {
        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointStreamCarPlayAudio, "void carAudioStream_setAudioSource(FigEndpointStreamRef, FigEndpointAudioSourceRef)_block_invoke", v3, "[%{ptr}] %@: Setting audio source: %@\n");
        v1 = *(v0 + 32);
      }
    }

    v5 = *(v1 + 160);
    v6 = *(v0 + 48);
    *(v1 + 160) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  CFRelease(*(v0 + 40));
  v7 = *(v0 + 48);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t carplaysource_ReadinessCallback_cold_1(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v6 = 1000000000 * (a1 - a2);
  v7 = UpTicksPerSecond();
  carplaysource_scheduleReadinessCallbackAfterTimeNs(a3, v6 / v7 + 1000000);
  result = mach_absolute_time();
  *(a4 + 240) = result;
  return result;
}

void __APCarPlayAnalyticsSubmitToCarPlay_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    __APCarPlayAnalyticsSubmitToCarPlay_block_invoke_cold_1(v2, Mutable);
    v4 = 0;
  }

  else
  {
    __APCarPlayAnalyticsSubmitToCarPlay_block_invoke_cold_2();
    v4 = -6729;
  }

  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (v5)
  {

    CFRelease(v5);
  }
}

void __APCarPlayAnalyticsSubmitToCarPlay_block_invoke_cold_1(uint64_t a1, __CFDictionary *a2)
{
  v4 = OUTLINED_FUNCTION_23();
  Mutable = CFStringCreateMutable(v4, v5);
  v7 = Mutable;
  if (*(a1 + 112) >= 1)
  {
    carPlayAnalytics_addValueToReportingString(@"nmnl", Mutable, *(a1 + 184));
    carPlayAnalytics_addValueToReportingString(@"mean", v7, *(a1 + 88));
    carPlayAnalytics_addValueToReportingString(@"stdv", v7, *(a1 + 104));
    carPlayAnalytics_addValueToReportingString(@"imean", v7, *(a1 + 152));
    carPlayAnalytics_addValueToReportingString(@"istdv", v7, *(a1 + 168));
    AnalyticsKeyForStreamType = carPlayAnalytics_createAnalyticsKeyForStreamType(v8, @"APCarPlay_%s_audioSampleRateStatistics", *(a1 + 32));
    OUTLINED_FUNCTION_3_17();
    CFDictionarySetValue(v10, v11, v12);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  AnalyticsKeyForStreamType = 0;
  if (Mutable)
  {
LABEL_3:
    CFRelease(v7);
  }

LABEL_4:
  if (AnalyticsKeyForStreamType)
  {
    CFRelease(AnalyticsKeyForStreamType);
  }

  v13 = OUTLINED_FUNCTION_23();
  v15 = CFStringCreateMutable(v13, v14);
  v16 = 2 * *(a1 + 24);
  if (v16)
  {
    if (v16 % 0x3C)
    {
      v17 = (v16 / 0x3C + 1);
    }

    else
    {
      v17 = (v16 / 0x3C);
    }

    if (!v17)
    {
LABEL_13:
      if (!v15)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v18, v19, v20);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v21, v22, v23);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v24, v25, v26);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v27, v28, v29);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v30, v31, v32);
    OUTLINED_FUNCTION_3_17();
    carPlayAnalytics_addAnomalyToReportingStringIfExists(v33, v34, v35);
    Length = CFStringGetLength(v15);
    if (Length >= 1)
    {
      v17 = carPlayAnalytics_createAnalyticsKeyForStreamType(Length, @"APCarPlay_%s_audioPercentageWithAnomalies", *(a1 + 32));
      OUTLINED_FUNCTION_3_17();
      CFDictionarySetValue(v37, v38, v39);
      goto LABEL_13;
    }
  }

  v17 = 0;
  if (v15)
  {
LABEL_14:
    CFRelease(v15);
  }

LABEL_15:
  if (v17)
  {
    CFRelease(v17);
  }

  v40 = OUTLINED_FUNCTION_23();
  v42 = CFStringCreateMutable(v40, v41);
  if (*(a1 + 392) && CFSetGetCount(*(a1 + 400)) >= 1)
  {
    Count = CFSetGetCount(*(a1 + 400));
    v44 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    CFSetGetValues(*(a1 + 400), v44);
    v45 = CFSetGetCount(*(a1 + 400));
    if (v45 >= 1)
    {
      for (i = 0; i < v45; ++i)
      {
        v47 = v44[i];
        if (CFStringGetLength(v42))
        {
          v48 = " ";
        }

        else
        {
          v48 = "";
        }

        v53 = v48;
        v49 = OUTLINED_FUNCTION_23();
        CFStringAppendFormat(v49, v50, @"%s%@", v53, v47);
        v45 = CFSetGetCount(*(a1 + 400));
      }
    }

    v51 = carPlayAnalytics_createAnalyticsKeyForStreamType(v45, @"APCarPlay_%s_audioFormats", *(a1 + 32));
    CFDictionarySetValue(a2, v51, v42);
    if (v42)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v51 = 0;
    v44 = 0;
    if (v42)
    {
LABEL_26:
      CFRelease(v42);
    }
  }

  if (v51)
  {
    CFRelease(v51);
  }

  free(v44);
  if (CFDictionaryGetCount(a2) >= 1)
  {
    if (gLogCategory_APCarPlayAnalytics <= 50 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
    {
      if ((*(a1 + 32) - 96) <= 0x18)
      {
        OUTLINED_FUNCTION_2_21();
      }

      OUTLINED_FUNCTION_2(&gLogCategory_APCarPlayAnalytics, "OSStatus carPlayAnalytics_submitToCarPlayInternal(APCarPlayAnalyticsRef)", v52, "[%{ptr}-%s] Submitting analytics to CarPlay: \n%@");
    }

    APCarPlay_AddAnalyticsValues(a2, @"SessionEnded");
  }

  CFRelease(a2);
}

void carPlayAnalytics_addAnomalyToReportingStringIfExists(uint64_t *result, unint64_t a2, __CFString *theString)
{
  if (result)
  {
    if (theString)
    {
      if (*(result + 8))
      {
        if (*(result + 4) < *(result + 6))
        {
          v3 = *(result + 5);
        }

        else
        {
          v3 = *(result + 5) + 1;
        }

        *(result + 5) = v3;
        v4 = *result;

        carPlayAnalytics_addValueToReportingString(v4, theString, v3 * 100.0 / a2);
      }
    }

    else
    {
      carPlayAnalytics_addAnomalyToReportingStringIfExists_cold_1();
    }
  }

  else
  {
    carPlayAnalytics_addAnomalyToReportingStringIfExists_cold_2();
  }
}

void carplaysource_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[24];
  if (v2)
  {
    AudioConverterDispose(v2);
    DerivedStorage[24] = 0;
  }

  MirroredRingBufferFree();
  v3 = DerivedStorage[19];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[19] = 0;
  }

  v4 = DerivedStorage[21];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[21] = 0;
  }

  v5 = DerivedStorage[22];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[22] = 0;
  }

  v6 = DerivedStorage[18];
  if (v6)
  {
    DerivedStorage[18] = 0;
    free(v6);
  }

  v7 = DerivedStorage[25];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[25] = 0;
  }
}