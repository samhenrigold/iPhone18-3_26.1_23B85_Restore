uint64_t endpoint_copyVolumeControlType(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpoint_copyVolumeControlType_cold_1();
    return 4294950576;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 492) - 1;
  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_222298910[v6];
  }

  *a2 = v7;
  if (gLogCategory_APEndpoint > 30)
  {
    return 0;
  }

  if (gLogCategory_APEndpoint != -1 || (result = _LogCategory_Initialize(), result))
  {
    v8 = APSGetFigEndpointVolumeControlTypeName();
    v9 = *a2;
    v10 = APSGetAPVolumeControlTypeName();
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_copyVolumeControlType(FigEndpointRef, FigEndpointVolumeControlType *)", 33554462, "[%{ptr}] volumeControlType = %s (%d) [from %s (%d)]\n", a1, v8, v9, v10, *(v5 + 492));
    return 0;
  }

  return result;
}

CFTypeRef endpoint_copyAuthorizationType(uint64_t a1, const void **a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 260) || !APSGetFBOPropertyInt64())
  {
    v3 = MEMORY[0x277CC0A78];
  }

  else
  {
    v3 = MEMORY[0x277CC0A80];
  }

  v4 = *v3;
  *a2 = *v3;

  return CFRetain(v4);
}

void endpoint_copyShowInfoDictionary(uint64_t a1, __CFDictionary **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v44 = 0;
  cf = 0;
  value = 0;
  v43 = 0;
  v47 = 0;
  v46 = 0;
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    SNPrintF(&v46, 10, "[%{ptr}]", a1);
    CFDictionarySetCString();
    v8 = *MEMORY[0x277CBED28];
    v9 = *MEMORY[0x277CBED10];
    if (*(DerivedStorage + 216))
    {
      v10 = *MEMORY[0x277CBED28];
    }

    else
    {
      v10 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v7, @"Activated", v10);
    CFDictionarySetValue(v7, @"Name", *(DerivedStorage + 440));
    CFDictionarySetValue(v7, @"DeviceID", *(DerivedStorage + 448));
    APEndpointDescriptionGetCMBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, @"TransportDevice", v5, &cf);
    }

    if (cf)
    {
      APTransportDeviceGetDiscoveryID();
      FigCFDictionarySetValue();
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
      v16(v15, @"Model", v5, &v44);
    }

    FigCFDictionarySetValue();
    if (v44)
    {
      CFRelease(v44);
      v44 = 0;
    }

    APEndpointDescriptionGetCMBaseObject();
    v18 = v17;
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(v18, @"SourceVersion", v5, &v44);
    }

    FigCFDictionarySetValue();
    if (v44)
    {
      CFRelease(v44);
      v44 = 0;
    }

    v20 = *(DerivedStorage + 40);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v21)
    {
      v21(v20, &v43);
    }

    FigCFDictionarySetValue();
    if (v43)
    {
      CFRelease(v43);
      v43 = 0;
    }

    APEndpointDescriptionGetCMBaseObject();
    v23 = v22;
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v24(v23, @"StatusFlags", v5, &v44);
    }

    FigCFDictionarySetValue();
    if (v44)
    {
      CFRelease(v44);
      v44 = 0;
    }

    APEndpointDescriptionGetCMBaseObject();
    v26 = v25;
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v27)
    {
      v27(v26, @"IsClusterLeader", v5, &v44);
    }

    FigCFDictionarySetValue();
    if (v44)
    {
      CFRelease(v44);
      v44 = 0;
    }

    APEndpointDescriptionGetCMBaseObject();
    v29 = v28;
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v30)
    {
      v30(v29, @"AccessControlType", v5, &v44);
    }

    FigCFDictionarySetValue();
    if (v44)
    {
      CFRelease(v44);
      v44 = 0;
    }

    APEndpointDescriptionGetCMBaseObject();
    v32 = v31;
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v33)
    {
      v33(v32, @"HKAccessControlLevel", v5, &v44);
    }

    FigCFDictionarySetValue();
    if (v44)
    {
      CFRelease(v44);
      v44 = 0;
    }

    v34 = *(DerivedStorage + 160);
    if (v34)
    {
      CFDictionaryApplyFunction(v34, endpoint_copyShowInfoForStreamsDictionaryEntry, v7);
    }

    if (*(DerivedStorage + 216) && (APSenderSessionGetCMBaseObject(), v36 = v35, (v37 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
    {
      v37(v36, @"ShowInfo", v5, &value);
      v38 = v9;
      if (value)
      {
        CFDictionarySetValue(v7, @"SenderSessionInfo", value);
        FigCFDictionaryGetBooleanIfPresent();
        v38 = v9;
      }
    }

    else
    {
      v38 = v9;
    }

    CFDictionarySetValue(v7, @"Started", v38);
    CFDictionarySetInt64();
    if (*(DerivedStorage + 480))
    {
      v39 = v8;
    }

    else
    {
      v39 = v9;
    }

    CFDictionarySetValue(v7, @"AutoconnectEnabled", v39);
    if (*(DerivedStorage + 48))
    {
      v40 = v8;
    }

    else
    {
      v40 = v9;
    }

    CFDictionarySetValue(v7, @"IsRemoteControlEndpoint", v40);
    if (*(DerivedStorage + 49))
    {
      v41 = v8;
    }

    else
    {
      v41 = v9;
    }

    CFDictionarySetValue(v7, @"IsLocal", v41);
    *a2 = v7;
    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    endpoint_copyShowInfoDictionary_cold_1();
  }

  if (v44)
  {
    CFRelease(v44);
  }
}

uint64_t endpoint_isConnected(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 216);
  if (!v2)
  {
    return *(DerivedStorage + 312);
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3)
  {
    return *(DerivedStorage + 312);
  }

  result = v3(v2);
  if (!result)
  {
    return *(DerivedStorage + 312);
  }

  return result;
}

uint64_t endpoint_copyUsesExternalPlaybackByDefault(uint64_t a1, void *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 216))
  {
    Value = FigCFDictionaryGetValue();
    if (FigCFEqual())
    {
      v5 = 0;
    }

    else
    {
      v5 = Value == 0;
    }

    v6 = MEMORY[0x277CBED28];
    if (!v5)
    {
      v6 = MEMORY[0x277CBED10];
    }

    v7 = CFRetain(*v6);
    result = 0;
    *a2 = v7;
  }

  else
  {
    endpoint_copyUsesExternalPlaybackByDefault_cold_1(a1, &v9);
    return v9;
  }

  return result;
}

CFArrayRef endpoint_copyExternalPlaybackCompetingStreams(uint64_t a1, CFArrayRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  values = FigCFDictionaryGetValue();
  if (!values)
  {
    return endpoint_copyExternalPlaybackCompetingStreams_cold_1(a1, v4, v5);
  }

  result = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
  *a2 = result;
  return result;
}

uint64_t endpointdelegate_setVolumeSliderInternal(const void *a1, int a2, uint64_t a3, int a4, float a5)
{
  v6 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v11 = *(DerivedStorage + 50) == 0;
  }

  else
  {
    v11 = 1;
  }

  v13 = !v11 && a2 != 0;
  if (*(DerivedStorage + 48))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpointdelegate_setVolumeSliderInternal_cold_1();
    }

    return 0;
  }

  v14 = DerivedStorage;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpointdelegate_setVolumeSliderInternal_cold_2(v14, a1, a5);
  }

  if (!APSGetFBOPropertyInt64())
  {
    return 0;
  }

  v15 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpointdelegate_setVolumeSliderInternal_cold_3(v15, v6, a1, a5);
  }

  if (*(v15 + 51) && (*(v15 + 504) - 5) < 0xFFFFFFFE)
  {
    if (v6 && *(v15 + 516))
    {
      *(v15 + 516) = 0;
LABEL_27:
      v16 = 0;
      v17 = (v15 + 512);
      goto LABEL_30;
    }
  }

  else if (v6 && (*(v15 + 516) || *(v15 + 517)))
  {
    *(v15 + 516) = 0;
    goto LABEL_27;
  }

  if (vabds_f32(a5, *(v15 + 512)) < 0.00000011921)
  {
    return 0;
  }

  v17 = (v15 + 512);
  v16 = 1;
LABEL_30:
  *v17 = a5;
  if (v13)
  {
LABEL_39:
    endpointdelegate_sendCurrentVolumeToReceiver(a1, 0);
    return 0;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpointdelegate_setVolumeSliderInternal_cold_5();
    v23 = 4294960568;
LABEL_50:
    APSLogErrorAt();
    return v23;
  }

  v20 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(v18 + 448));
  FigCFDictionarySetFloat();
  v21 = MEMORY[0x277CC0DC0];
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_postVolumeUpdatesToClients(FigEndpointRef, Float32)", 33554482, "[%{ptr}] [AirPlayVolume] Posting %@: %@\n", a1, *v21, v20);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  CFRelease(v20);
  if ((v16 & 1) == 0)
  {
    v22 = endpoint_postMuteDidChangeNotification(a1);
    if (v22)
    {
      v23 = v22;
      endpointdelegate_setVolumeSliderInternal_cold_4(v22);
      goto LABEL_50;
    }
  }

  if (a2)
  {
    goto LABEL_39;
  }

  return 0;
}

uint64_t endpointdelegate_setIsMuted(const void *a1, int a2, int a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 504);
  v10 = (v9 - 1) < 2;
  v11 = v9 == 2;
  v12 = (v9 - 3) < 2;
  v13 = v9 == 4;
  if (a3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (a3)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = (DerivedStorage + 516);
  v17 = (DerivedStorage + 517);
  if (a3)
  {
    v18 = (DerivedStorage + 516);
  }

  else
  {
    v18 = (DerivedStorage + 517);
  }

  if (*(DerivedStorage + 516))
  {
    v19 = 1;
  }

  else
  {
    v19 = *v17 != 0;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    v20 = "Programmatic";
    if (a3)
    {
      v20 = "User";
    }

    v21 = "yes";
    if (*v18)
    {
      v22 = "yes";
    }

    else
    {
      v22 = "no";
    }

    if (v19)
    {
      v23 = "yes";
    }

    else
    {
      v23 = "no";
    }

    if (!a2)
    {
      v21 = "no";
    }

    v24 = "NO";
    if (v15)
    {
      v24 = "SIM";
    }

    if (v14)
    {
      v24 = "YES";
    }

    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpointdelegate_setIsMuted(FigEndpointRef, Boolean, Boolean, Boolean)", 33554482, "[AirPlayVolume] [%s] [%{ptr}] was%sMuted = %s (%s overall), isMuted = %s, receiverSupportsMuteType = %s\n", "endpointdelegate_setIsMuted", a1, v20, v22, v23, v21, v24);
  }

  if (*v18 == a2)
  {
    return 0;
  }

  *v18 = a2;
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_53;
    }

    if (*v16)
    {
      v26 = 1;
    }

    else
    {
      v26 = *v17;
      if (*v17)
      {
        v26 = *(v8 + 504) == 4;
      }
    }

    if (v26 == v19)
    {
LABEL_53:
      v33 = 0;
      goto LABEL_54;
    }

    v27 = CMBaseObjectGetDerivedStorage();
    APSVolumeConvertDBToSliderValue();
    if (a2 == 1)
    {
      APSVolumeConvertDBToSliderValue();
      v29 = v28;
      v30 = *(v27 + 512);
    }

    else
    {
      v29 = *(v27 + 520);
      APSVolumeConvertDBToSliderValue();
    }

    *(v27 + 520) = v30;
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_52;
        }

        v30 = *(v27 + 520);
      }

      v31 = 116;
      if (!a2)
      {
        v31 = 102;
      }

      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpointdelegate_translateIsMutedToVolumeOperation(FigEndpointRef, Boolean, Boolean)", 33554482, "[%{ptr}] <AirPlayVolume> translate isMuted=%c to volume=%.3f; storing previous volume=%.3f.\n", a1, v31, v29, v30);
    }

LABEL_52:
    v34 = endpointdelegate_setVolumeSliderInternal(a1, 1, 0, a4 == 0, v29);
    if (v34)
    {
      v25 = v34;
      endpointdelegate_setIsMuted_cold_1(v34);
      return v25;
    }

    goto LABEL_53;
  }

  if (a3)
  {
    v33 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      endpointdelegate_setIsMuted_cold_4();
      return 0;
    }

    v33 = Mutable;
    CFDictionarySetValue(Mutable, @"muteIsProgrammatic", *MEMORY[0x277CBED28]);
  }

  if (a2 == 1)
  {
    v37 = @"mute";
  }

  else
  {
    v37 = @"unmute";
  }

  if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpointdelegate_setIsMuted(FigEndpointRef, Boolean, Boolean, Boolean)", 33554472, "[AirPlayVolume] [%{ptr}] sending mute command = %@, params %@.\n", a1, v37, v33);
  }

  v38 = apEndpoint_sendCommandInternal(a1, v37, v33, 0, 0);
  if (v38)
  {
    v25 = v38;
    endpointdelegate_setIsMuted_cold_2(v38);
    goto LABEL_60;
  }

  if (!a3)
  {
LABEL_57:
    v25 = 0;
    goto LABEL_60;
  }

  *(v8 + 528) = a2;
LABEL_54:
  v25 = 0;
  if (a3 && *(v8 + 51))
  {
    if (!*(v8 + 50))
    {
      v35 = endpoint_postMuteDidChangeNotification(a1);
      v25 = v35;
      if (v35)
      {
        endpointdelegate_setIsMuted_cold_3(v35);
      }

      goto LABEL_60;
    }

    goto LABEL_57;
  }

LABEL_60:
  if (v33)
  {
    CFRelease(v33);
  }

  return v25;
}

uint64_t endpoint_setAuthorizationString(uint64_t a1, const void *a2)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  endpoint_copyAuthorizationType(a1, &v12);
  if (a2)
  {
    v5 = *(DerivedStorage + 464);
    *(DerivedStorage + 464) = a2;
    CFRetain(a2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = v12;
  if (FigCFEqual())
  {
    v9 = 0;
    if (!v10)
    {
      return v9;
    }

    goto LABEL_15;
  }

  v5 = *(DerivedStorage + 464);
  *(DerivedStorage + 464) = 0;
  if (v5)
  {
LABEL_3:
    CFRelease(v5);
  }

LABEL_4:
  if (*(DerivedStorage + 216))
  {
    APSenderSessionGetCMBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v9 = v8(v7, @"AuthorizationString", a2);
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    v9 = 0;
  }

LABEL_14:
  v10 = v12;
  if (v12)
  {
LABEL_15:
    CFRelease(v10);
  }

  return v9;
}

_BYTE *endpointdelegate_sendCurrentVolumeToReceiver(const void *a1, unsigned __int8 a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    return endpointdelegate_sendCurrentVolumeToReceiver_cold_1((DerivedStorage + 120));
  }

  CMBaseObjectGetDerivedStorage();
  APSVolumeConvertSliderValueToDB();
  valuePtr = v4;
  if (*(DerivedStorage + 304))
  {
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
    CFSetApplyFunction(*(DerivedStorage + 304), endpoint_setVolumePropertyOnPlaybackSessions, v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpointdelegate_sendCurrentVolumeToReceiver_cold_2(&valuePtr);
  }

  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

uint64_t endpoint_postMuteDidChangeNotification(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(DerivedStorage + 448));
    v5 = MEMORY[0x277CC0D60];
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_postMuteDidChangeNotification(FigEndpointRef)", 33554482, "[%{ptr}] [AirPlayVolume] Posting %@: %@\n", a1, *v5, v4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v4);
    return 0;
  }

  else
  {
    endpoint_postMuteDidChangeNotification_cold_1();
    return 4294960568;
  }
}

uint64_t endpoint_setVolumePropertyOnPlaybackSessions(uint64_t a1, uint64_t a2)
{
  CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(CMBaseObject, @"VolumeDB", a2);
  }

  return result;
}

void endpointdelegate_sendSetVolumeMessageIfNeeded(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 12);
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((v4 < -30.0 || v4 > 0.0) && APSVolumeDBValuesAreNoticeablyDifferent())
  {
    v4 = -20.0;
  }

  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  APSVolumeConvertSliderValueToDB();
  v7 = v6;
  v8 = *(DerivedStorage + 528);
  v9 = *(DerivedStorage + 216);
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  if (APSGetFBOPropertyInt64() && APSSettingsGetIntWithDefault())
  {
    if (!APSVolumeDBValuesAreNoticeablyDifferent())
    {
      v4 = -144.0;
    }

    if (!APSVolumeDBValuesAreNoticeablyDifferent())
    {
      v7 = -144.0;
    }
  }

  FigSimpleMutexUnlock();
  if (v10)
  {
    if (vabds_f32(v4, v7) >= 0.00000011921)
    {
      endpointdelegate_sendSetVolumeMessageIfNeeded_cold_4();
    }

    else if (APSVolumeDBValuesAreNoticeablyDifferent() || v8 || v2)
    {
      FigSimpleMutexLock();
      *(DerivedStorage + 524) = v4;
      *(DerivedStorage + 528) = 0;
      FigSimpleMutexUnlock();
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v11 && v11(v10))
      {
        if (!APSVolumeDBValuesAreNoticeablyDifferent() && (*(DerivedStorage + 532) & 0x20) != 0)
        {
          if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
          {
            endpointdelegate_sendSetVolumeMessageIfNeeded_cold_1(v3, v1);
          }

          endpoint_sendSetVolumeMessage(v1, v10, -30.0);
        }

        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpoint, "void endpointdelegate_sendSetVolumeMessageIfNeeded(void *)", 33554482, "[AirPlayVolume] [%{ptr}] sendVolume: inVolumeDB = %.3f dB, sending volumeDB = %.3f dB.\n", v1, *v3, v4);
        }

        endpoint_sendSetVolumeMessage(v1, v10, v4);
      }

      else
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          endpointdelegate_sendSetVolumeMessageIfNeeded_cold_2(v3);
        }

        APSSetFBOPropertyDouble();
      }
    }

    else
    {
      endpointdelegate_sendSetVolumeMessageIfNeeded_cold_3();
    }
  }

  else
  {
    endpointdelegate_sendSetVolumeMessageIfNeeded_cold_5(v1, v4);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v10)
  {

    CFRelease(v10);
  }
}

void endpoint_sendSetVolumeMessage(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (Mutable)
  {
    v8 = Mutable;
    CFStringAppendFormat(Mutable, 0, @"volume: %f\r\n", a3);
    BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
    if (BlockBufferWithCFString)
    {
      endpoint_sendSetVolumeMessage_cold_1(BlockBufferWithCFString);
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      cf = 0;
      if (a2)
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v10 && v10(a2))
        {
          APSenderSessionGetCMBaseObject();
          v12 = v11;
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v14 = v13(v12, @"TransportControlStream", v6, &cf);
            if (v14)
            {
              v15 = v14;
            }

            else
            {
              if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_sendRequestOnTransportControlStreamCreatingReply(FigEndpointRef, APSenderSessionRef, OSType, CMBlockBufferRef, CMBlockBufferRef *)", 33554462, "[%{ptr}] %###s called %'C requestBBuf %p.\n", a1, "OSStatus endpoint_sendRequestOnTransportControlStreamCreatingReply(FigEndpointRef, APSenderSessionRef, OSType, CMBlockBufferRef, CMBlockBufferRef *)", 1937141612, 0);
              }

              v16 = cf;
              v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v17)
              {
                v15 = v17(v16, 1937141612, 0, 0);
                if (v15)
                {
                  goto LABEL_18;
                }

LABEL_19:
                if (cf)
                {
                  CFRelease(cf);
                }

                if (v15)
                {
                  APSLogErrorAt();
                }

                goto LABEL_23;
              }

              v15 = -12782;
            }
          }

          else
          {
            v15 = -12782;
          }

LABEL_18:
          APSLogErrorAt();
          goto LABEL_19;
        }

        v15 = 0;
        goto LABEL_19;
      }
    }

LABEL_23:
    CFRelease(v8);
    return;
  }

  endpoint_sendSetVolumeMessage_cold_2();
}

void apEndpoint_sendCommand(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v53 = 0;
  if (*(a1 + 14))
  {
    APSLogErrorAt();
    LODWORD(v19) = *(a1 + 14);
    goto LABEL_53;
  }

  if (FigCFEqual())
  {
    v3 = a1[1];
    if (!v3)
    {
      apEndpoint_sendCommand_cold_9();
      LODWORD(v19) = -16720;
      goto LABEL_53;
    }

    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v4 || !v4(v3, 47))
    {
      apEndpoint_sendCommand_cold_8();
      LODWORD(v19) = cf[0];
      goto LABEL_53;
    }

    v5 = *a1;
    v6 = a1[2];
    v7 = a1[4];
    CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    theArray = 0;
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v9 = Mutable;
      v51 = *MEMORY[0x277CBECE8];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v7);
      if (MutableCopy)
      {
        v11 = MutableCopy;
        v12 = *MEMORY[0x277CC0B60];
        Value = CFDictionaryGetValue(v7, *MEMORY[0x277CC0B60]);
        v14 = *MEMORY[0x277CC0B68];
        v15 = CFDictionaryGetValue(v7, *MEMORY[0x277CC0B68]);
        CFDictionaryRemoveValue(v11, v12);
        CFDictionaryRemoveValue(v11, v14);
        v16 = APSenderSessionAirPlayPerformPairingPeersListManagement(v6, Value, v15, &theArray);
        if (!v16)
        {
          if (theArray && CFArrayGetCount(theArray) > 0)
          {
            v17 = 0;
          }

          else
          {
            v20 = *MEMORY[0x277CC0B78];
            if (CFDictionaryGetInt64())
            {
              if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
              {
                apEndpoint_sendCommand_cold_2(v5);
              }

              v17 = -16726;
            }

            else
            {
              v17 = 0;
            }

            CFDictionarySetValue(v11, v20, *MEMORY[0x277CBED10]);
          }

          CFDictionarySetValue(v9, @"ConfigurationDictionary", v11);
          APSenderSessionGetCMBaseObject();
          v33 = v32;
          v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v34)
          {
            v35 = v34(v33, @"TransportControlStream", v51, cf);
            if (!v35)
            {
              v36 = APTransportStreamSendPlistMessageCreatingPlistReply();
              if (v36)
              {
                v38 = v36;
                apEndpoint_sendCommand_cold_3(v36);
              }

              else if (theDict)
              {
                if (theArray)
                {
                  v37 = CFDictionaryCreateMutableCopy(0, 0, theDict);
                  CFDictionarySetValue(v37, *MEMORY[0x277CC0B70], theArray);
                  v38 = 0;
                  v53 = v37;
                }

                else
                {
                  v38 = 0;
                  v53 = theDict;
                  theDict = 0;
                }
              }

              else
              {
                apEndpoint_sendCommand_cold_4();
                v38 = -16729;
              }

LABEL_42:
              CFRelease(v9);
              CFRelease(v11);
              if (theArray)
              {
                CFRelease(theArray);
              }

              goto LABEL_44;
            }

            v38 = v35;
          }

          else
          {
            v38 = -12782;
          }

          APSLogErrorAt();
          goto LABEL_42;
        }

        v38 = v16;
        apEndpoint_sendCommand_cold_1(v16);
        v17 = 0;
        goto LABEL_42;
      }

      apEndpoint_sendCommand_cold_5(v9);
    }

    else
    {
      apEndpoint_sendCommand_cold_6();
    }

    v17 = 0;
    v38 = -16721;
LABEL_44:
    if (theDict)
    {
      CFRelease(theDict);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v38;
    }

    if (v19)
    {
      apEndpoint_sendCommand_cold_7(v19);
    }

    goto LABEL_53;
  }

  if (FigCFEqual())
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      apEndpoint_sendCommand_cold_10();
    }

    if (!*(DerivedStorage + 272) && (!APSGetFBOPropertyInt64() || !*(DerivedStorage + 242)))
    {
      if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        apEndpoint_sendCommand_cold_12(a1, (a1 + 3), v45);
      }

      goto LABEL_90;
    }

    v18 = endpoint_setSecondDisplayMode(*a1, a1[4]);
    LODWORD(v19) = v18;
    if (v18)
    {
      apEndpoint_sendCommand_cold_11(v18);
    }

    goto LABEL_53;
  }

  if (FigCFEqual())
  {
    cf[0] = 0;
    theArray = 0;
    theDict = 0;
    APSenderSessionGetCMBaseObject();
    v22 = v21;
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v24 = *MEMORY[0x277CBECE8];
      v25 = v23(v22, @"TransportControlStream", *MEMORY[0x277CBECE8], cf);
      if (v25)
      {
        v19 = v25;
      }

      else
      {
        v26 = cf[0];
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v27)
        {
          v28 = v27(v26, 1819240307, 0, &theDict);
          if (!v28)
          {
            CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
            if (CFDataWithBlockBufferNoCopy)
            {
              v19 = CFDataWithBlockBufferNoCopy;
              apEndpoint_sendCommand_cold_13(CFDataWithBlockBufferNoCopy);
            }

            else
            {
              v30 = CFDictionaryCreateMutable(v24, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (v30)
              {
                v31 = v30;
                CFDictionarySetValue(v30, *MEMORY[0x277CC1668], theArray);
                v19 = 0;
                v53 = v31;
              }

              else
              {
                apEndpoint_sendCommand_cold_14();
                v19 = 4294950575;
              }
            }

            goto LABEL_80;
          }

          v19 = v28;
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

    APSLogErrorAt();
LABEL_80:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    if (v19)
    {
      apEndpoint_sendCommand_cold_15(v19);
    }

    goto LABEL_53;
  }

  if (FigCFEqual())
  {
    v46 = endpoint_sendChangeRelativeVolumeMessage(*a1, a1[2], a1[4], &v53);
    LODWORD(v19) = v46;
    if (v46)
    {
      apEndpoint_sendCommand_cold_16(v46);
    }
  }

  else
  {
    if (FigCFEqual())
    {
      APDemoEndpointUIEventChannelInit(*a1);
LABEL_90:
      LODWORD(v19) = 0;
      goto LABEL_53;
    }

    if (FigCFEqual())
    {
      v47 = endpoint_sendSetMRInfo(*a1, a1[2], a1[4], &v53);
      LODWORD(v19) = v47;
      if (v47)
      {
        apEndpoint_sendCommand_cold_17(v47);
      }
    }

    else
    {
      v48 = FigCFEqual();
      v49 = a1[4];
      if (v48)
      {
        updated = endpoint_sendUpdateBadgingFormatInfo(*a1, a1[2], v49, &v53);
        LODWORD(v19) = updated;
        if (updated)
        {
          apEndpoint_sendCommand_cold_18(updated);
        }
      }

      else
      {
        LODWORD(v19) = endpoint_sendControlCommand(a1[2], a1[3], v49, &v53);
      }
    }
  }

LABEL_53:
  v39 = a1[5];
  v40 = v53;
  if (v39)
  {
    cf[0] = *a1;
    cf[1] = v53;
    v41 = a1[6];
    cf[2] = v39;
    cf[3] = v41;
    cf[4] = v19;
    CFRetain(cf[0]);
    if (v53)
    {
      CFRetain(v53);
    }

    APSDispatchAsyncFHelper();
    v40 = v53;
  }

  if (v40)
  {
    CFRelease(v40);
  }

  CFRelease(*a1);
  CFRelease(a1[3]);
  v42 = a1[1];
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = a1[4];
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = a1[2];
  if (v44)
  {
    CFRelease(v44);
  }
}

uint64_t endpoint_setSecondDisplayMode(void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpoint_setSecondDisplayMode_cold_1();
    return 4294950576;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  if (!FigCFEqual() || *(v5 + 240))
  {
    FigSimpleMutexUnlock();
    v6 = 0;
    goto LABEL_5;
  }

  v6 = FigCFDictionaryCopyArrayOfValues();
  FigSimpleMutexUnlock();
  if (!v6 || CFArrayGetCount(v6) <= 0)
  {
LABEL_5:
    APSLogErrorAt();
    Mutable = 0;
    v8 = 4294949690;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setSecondDisplayMode(FigEndpointRef, CFDictionaryRef)", 33554482, "[%{ptr}] Second display mode requested: %d\n", a1, Int64);
  }

  if (Int64 == 1)
  {
    v12 = CFDictionaryGetInt64();
    v13 = v12 && !*(v5 + 242) && APSGetFBOPropertyInt64() != 0;
    v14 = *(v5 + 616);
    if (v14)
    {
      dispatch_source_cancel(*(v5 + 616));
      dispatch_release(v14);
      *(v5 + 616) = 0;
    }

    if (v13)
    {
      *(v5 + 616) = APEndpointCreateAndStartProcessDemiseListener(a1, v12, *(v5 + 576), endpoint_handleClientProcessDeath);
    }
  }

  else
  {
    if (Int64)
    {
      if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setSecondDisplayMode(FigEndpointRef, CFDictionaryRef)", 33554522, "### [%{ptr}] Unsupported second display mode: %d\n", a1, Int64);
      }

      Mutable = 0;
      v8 = 4294950576;
      goto LABEL_6;
    }

    v11 = *(v5 + 616);
    if (v11)
    {
      dispatch_source_cancel(*(v5 + 616));
      dispatch_release(v11);
      *(v5 + 616) = 0;
    }
  }

  v15 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v15, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetInt64();
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v17 = Count;
    for (i = 0; i != v17; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v20)
      {
        v20(ValueAtIndex, @"SetMode", Mutable);
      }
    }

    v8 = 0;
  }

LABEL_6:
  CFRelease(v6);
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t endpoint_sendChangeRelativeVolumeMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v14 = 0;
  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_6();
    return 4294950576;
  }

  if (!a2)
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_5(&v14, a1, &v16);
    return v16;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7 || !v7(a2))
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_4(&v14, a1, &v15);
    return v15;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_1();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_3();
    return 4294950575;
  }

  v9 = Mutable;
  SInt32 = FigCFNumberCreateSInt32();
  if (!SInt32)
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_2(v9);
    return 4294950575;
  }

  v11 = SInt32;
  CFDictionarySetValue(v9, @"value", SInt32);
  v12 = endpoint_sendControlCommand(a2, @"changeRelativeVolume", v9, a4);
  CFRelease(v9);
  CFRelease(v11);
  return v12;
}

uint64_t endpoint_sendSetMRInfo(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (CFDictionaryContainsKey(a3, *MEMORY[0x277CC1770]))
    {
      v8 = APSGetFBOPropertyInt64();
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        v9 = "Ignoring unsupported";
        if (v8)
        {
          v9 = "Sending";
        }

        LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_sendSetMRInfo(FigEndpointRef, APSenderSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] %s setMRInfo command", a1, v9);
      }

      if (v8)
      {
        result = endpoint_sendControlCommand(a2, @"setMRInfo", a3, a4);
        v11 = result;
        if (result)
        {
          APSLogErrorAt();
          return v11;
        }

        return result;
      }
    }

    else
    {
      endpoint_sendSetMRInfo_cold_2();
    }
  }

  result = 0;
  if (a4)
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t endpoint_sendUpdateBadgingFormatInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 40);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v9)
  {
    v10 = v9(v8, 88) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (FigCFDictionaryGetNumberValue())
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      v11 = "Sending";
      if (v10)
      {
        v11 = "Ignoring unsupported";
      }

      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_sendUpdateBadgingFormatInfo(FigEndpointRef, APSenderSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] %s updateBadgingFormatInfo command", a1, v11);
    }

    if (v10)
    {
      endpoint_sendUpdateBadgingFormatInfo_cold_2();
      return 4294960561;
    }

    else
    {
      v12 = endpoint_sendControlCommand(a2, @"updateBadgingFormatInfo", a3, a4);
      v13 = v12;
      if (v12)
      {
        endpoint_sendUpdateBadgingFormatInfo_cold_1(v12);
      }
    }
  }

  else
  {
    endpoint_sendUpdateBadgingFormatInfo_cold_3();
    return 4294950576;
  }

  return v13;
}

uint64_t endpoint_sendControlCommand(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpoint_sendControlCommand_cold_2();
    return 4294950575;
  }

  v6 = Mutable;
  CFDictionarySetValue(Mutable, @"type", a2);
  FigCFDictionarySetValue();
  APSenderSessionGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(v8, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
    if (!v10)
    {
      v11 = APTransportStreamSendPlistMessageCreatingPlistReply();
      v12 = v11;
      if (v11)
      {
        endpoint_sendControlCommand_cold_1(v11);
      }

      goto LABEL_8;
    }

    v12 = v10;
  }

  else
  {
    v12 = 4294954514;
  }

  APSLogErrorAt();
LABEL_8:
  CFRelease(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void endpoint_handleClientProcessDeath(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_handleClientProcessDeath_cold_1(a1);
  }

  v3 = *(DerivedStorage + 616);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 616));
    dispatch_release(v3);
    *(DerivedStorage + 616) = 0;
  }

  SecondDisplayModeCommandParams = APEndpointCreateSecondDisplayModeCommandParams(0);
  if (SecondDisplayModeCommandParams)
  {
    v5 = SecondDisplayModeCommandParams;
    endpoint_setSecondDisplayMode(a1, SecondDisplayModeCommandParams);

    CFRelease(v5);
  }

  else
  {
    endpoint_handleClientProcessDeath_cold_2();
  }
}

uint64_t endpoint_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  APEndpointDescriptionGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, @"DeviceID", *MEMORY[0x277CBECE8], &cf);
  }

  FigSimpleMutexLock();
  v13 = *(DerivedStorage + 48);
  v14 = *(DerivedStorage + 440);
  v15 = CFGetHardwareAddress();
  v16 = "RC";
  if (!v13)
  {
    v16 = "AP";
  }

  v17 = (*(a5 + 16))(a5, a3, "Endpoint:[%{ptr}] (%s) %''@ DiscoveryID:%llu Parent:[%{ptr}]\n", a1, v16, v14, v15, a2);
  if (v17)
  {
    v23 = v17;
    endpoint_DumpHierarchy_cold_1(v17);
    goto LABEL_18;
  }

  v18 = *(DerivedStorage + 216);
  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v20 = *(ProtocolVTable + 16)) == 0)
  {
    v23 = 4294954508;
LABEL_15:
    v23 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v18, 0, " ", 0, 0, v23, a1);
    goto LABEL_16;
  }

  v21 = *(v20 + 8);
  if (!v21)
  {
    v23 = 4294954514;
    goto LABEL_15;
  }

  v22 = v21(v18, a1, a3 + 1, 0, a5);
  v23 = v22;
  if (v22 == -12782 || v22 == -12788)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v23)
  {
    endpoint_DumpHierarchy_cold_2(v23);
  }

LABEL_18:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t endpoint_Deactivate(void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_Deactivate_cold_1(a1);
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B90]);
    if (!*(DerivedStorage + 48) && CFDictionaryGetInt64())
    {
      CFDictionaryGetDouble();
    }
  }

  else
  {
    Value = 0;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    endpoint_Deactivate_cold_2();
    v11 = 4294950573;
    goto LABEL_16;
  }

  if (*(DerivedStorage + 241) && !FigCFEqual())
  {
    if (gLogCategory_APEndpoint > 90)
    {
      v11 = 4294950570;
LABEL_20:
      if (a3)
      {
        CFRetain(a1);
        APSDispatchAsyncFHelper();
      }

      goto LABEL_22;
    }

    if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
    {
      endpoint_Deactivate_cold_3(a1, v9, v10);
    }

    v11 = 4294950570;
LABEL_16:
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_Deactivate(FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Deactivation skipped - error %#m\n", a1, v11);
    }

    goto LABEL_20;
  }

  v13 = *(DerivedStorage + 216);
  if (v13)
  {
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v14)
    {
      v14(v13);
    }
  }

  CFRetain(a1);
  v15 = *(DerivedStorage + 440);
  if (v15)
  {
    CFRetain(v15);
  }

  if (Value)
  {
    CFRetain(Value);
  }

  v16 = *(DerivedStorage + 216);
  if (v16)
  {
    v17 = CFRetain(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(DerivedStorage + 160);
  if (v18)
  {
    v19 = CFRetain(v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(DerivedStorage + 184);
  if (v20)
  {
    CFRetain(v20);
  }

  v21 = *(DerivedStorage + 304);
  v22 = *MEMORY[0x277CBECE8];
  if (v21)
  {
    Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], v21);
  }

  else
  {
    Copy = 0;
  }

  v24 = *(DerivedStorage + 328);
  if (v24)
  {
    v25 = CFDictionaryCreateCopy(v22, v24);
  }

  else
  {
    v25 = 0;
  }

  FigCFDictionaryCreateMutableCopy();
  v26 = *(DerivedStorage + 296);
  if (v26)
  {
    CFRetain(v26);
  }

  *(DerivedStorage + 480) = 0;
  v27 = *(DerivedStorage + 264);
  if (v27)
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || (v28 = _LogCategory_Initialize(), v27 = *(DerivedStorage + 264), v28))
      {
        LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_Deactivate(FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] ### Applying last browser update on deactivation '%@'\n", a1, v27);
        v27 = *(DerivedStorage + 264);
      }
    }

    v29 = *(DerivedStorage + 40);
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v30)
    {
      v30(v29, v27);
    }

    v31 = *(DerivedStorage + 264);
    if (v31)
    {
      CFRelease(v31);
      *(DerivedStorage + 264) = 0;
    }
  }

  APEndpointDescriptionGetCMBaseObject();
  v33 = v32;
  v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v34)
  {
    v34(v33, @"uglServerInfo", 0);
  }

  endpoint_initializeVolumeDelegateStorage(a1);
  *(DerivedStorage + 488) = *(DerivedStorage + 148);
  *(DerivedStorage + 483) = 0;
  endpoint_resetActivationState(DerivedStorage + 128);
  endpoint_removeAPEndpointManagerNotificationsListenerIfNeeded(a1);
  endpoint_removeHDMILatencyNotificationListenerIfNeeded(a1);
  endpoint_stopListeningToSenderSessionAndStreamsNotifications(a1, v17, v19);
  if (v25)
  {
    CFDictionaryApplyFunction(v25, endpoint_unsubscribeRCS, a1);
  }

  if (Copy)
  {
    CFSetApplyFunction(Copy, endpoint_unsubscribePlaybackSession, a1);
  }

  endpoint_updateCurrentVolumeControlType(a1);
  endpoint_updateIsVolumeAndMuteControlSupported(a1);
  endpoint_updateVideoPlaybackIsActive(a1);
  endpoint_deregisterWithBrowserController(a1);
  if (v19 && CFDictionaryContainsKey(v19, *MEMORY[0x277CC1968]))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_Deactivate_cold_4(a1);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  APSDispatchAsyncFHelper();
  v11 = 0;
LABEL_22:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t endpoint_SetDelegate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    v12[0] = *a2;
    v12[1] = v3;
    v13 = *(a2 + 32);
    v10[1] = 0;
    v10[0] = *&v12[0];
    v11 = *(a2 + 48);
    v4 = endpoint_SetDelegateRouting(a1, v12);
    if (v4)
    {
      v6 = v4;
      endpoint_SetDelegate_cold_1(v4);
    }

    else
    {
      v5 = endpoint_SetDelegateRemoteControl(a1, v10);
      v6 = v5;
      if (v5)
      {
        endpoint_SetDelegate_cold_2(v5);
      }
    }
  }

  else
  {
    v7 = endpoint_SetDelegateRouting(a1, 0);
    if (v7)
    {
      v6 = v7;
      endpoint_SetDelegate_cold_3(v7);
    }

    else
    {
      v8 = endpoint_SetDelegateRemoteControl(a1, 0);
      v6 = v8;
      if (v8)
      {
        endpoint_SetDelegate_cold_4(v8);
      }
    }
  }

  return v6;
}

uint64_t endpoint_CreatePlaybackSession(uint64_t a1, void **a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (!*(DerivedStorage + 216))
  {
    endpoint_CreatePlaybackSession_cold_9();
    v28 = 4294949691;
    goto LABEL_48;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 304);
  if (!v6)
  {
    endpoint_CreatePlaybackSession_cold_8();
    v28 = 4294949690;
    goto LABEL_48;
  }

  Count = CFSetGetCount(v6);
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-%d", *(v5 + 440), (Count + 1));
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpoint_CreatePlaybackSession_cold_7();
    v28 = 4294950575;
    if (!v9)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v11 = Mutable;
  CMBaseObjectGetDerivedStorage();
  APSVolumeConvertSliderValueToDB();
  FigCFDictionarySetFloat();
  APSEventRecorderGetEventTime();
  APSEventRecorderSetTimeInDictionary();
  v12 = *(v5 + 208);
  if (v12)
  {
    CFDictionarySetValue(v11, @"NetworkClock", v12);
  }

  if (APSGetFBOPropertyInt64())
  {
    v30 = 0;
    v13 = *(v5 + 184);
    if (v13)
    {
      CFDictionarySetValue(v11, @"MetadataSource", v13);
    }

    endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent(a1, @"supportsOfflineHLS", &v30 + 1);
    v14 = *(v5 + 40);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v15)
    {
      LODWORD(v15) = v15(v14, 35) != 0;
    }

    if (HIBYTE(v30))
    {
      LODWORD(v15) = 1;
    }

    v18 = *MEMORY[0x277CBED28];
    v19 = *MEMORY[0x277CBED10];
    if (v15)
    {
      v20 = *MEMORY[0x277CBED28];
    }

    else
    {
      v20 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v11, @"SupportsTLS_PSK", v20);
    endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent(a1, @"supportsV2ArtworkMetadata", &v30);
    if (v30)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    CFDictionarySetValue(v11, @"SupportsV2ArtworkMetadata", v21);
    v22 = APEndpointPlaybackSessionRemoteControlCreate(v9, *(v5 + 216), *(v5 + 448), v11, &value);
    if (v22)
    {
      v28 = v22;
      APSLogErrorAt();
      goto LABEL_44;
    }

    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_createPlaybackSessionInternal(FigEndpointRef, FigEndpointPlaybackSessionRef *)", 33554482, "[%{ptr}] Created PlaybackSession v2 [%{ptr}]\n", a1, value);
    }
  }

  else if (APSGetFBOPropertyInt64())
  {
    v16 = *(v5 + 184);
    if (v16)
    {
      CFDictionarySetValue(v11, @"MetadataSource", v16);
    }

    v17 = APEndpointPlaybackSessionAirPlayCreate(v9, *(v5 + 216), *(v5 + 40), v11, &value);
    if (v17)
    {
      v28 = v17;
      endpoint_CreatePlaybackSession_cold_1(v17);
      goto LABEL_44;
    }

    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_createPlaybackSessionInternal(FigEndpointRef, FigEndpointPlaybackSessionRef *)", 33554482, "[%{ptr}] Created PlaybackSession AirPlay [%{ptr}]\n", a1, value);
    }
  }

  else
  {
    v23 = APEndpointPlaybackSessionMCCreate(v9, *(v5 + 216), *(v5 + 40), *(v5 + 224), v11, &value);
    if (v23)
    {
      v28 = v23;
      endpoint_CreatePlaybackSession_cold_2(v23);
      goto LABEL_44;
    }

    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_createPlaybackSessionInternal(FigEndpointRef, FigEndpointPlaybackSessionRef *)", 33554482, "[%{ptr}] Created PlaybackSession MediaControl [%{ptr}]\n", a1, value);
    }
  }

  CFSetSetValue(*(v5 + 304), value);
  CMNotificationCenterGetDefaultLocalCenter();
  v24 = FigNotificationCenterAddWeakListener();
  if (v24)
  {
    v28 = v24;
    endpoint_CreatePlaybackSession_cold_3(v24);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v25 = FigNotificationCenterAddWeakListener();
    if (v25)
    {
      v28 = v25;
      endpoint_CreatePlaybackSession_cold_4(v25);
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v26 = FigNotificationCenterAddWeakListener();
      if (v26)
      {
        v28 = v26;
        endpoint_CreatePlaybackSession_cold_5(v26);
      }

      else
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v27 = FigNotificationCenterAddWeakListener();
        v28 = v27;
        if (v27)
        {
          endpoint_CreatePlaybackSession_cold_6(v27);
        }

        else
        {
          *a2 = value;
          value = 0;
        }
      }
    }
  }

LABEL_44:
  CFRelease(v11);
  if (value)
  {
    CFRelease(value);
  }

  if (v9)
  {
LABEL_47:
    CFRelease(v9);
  }

LABEL_48:
  FigSimpleMutexUnlock();
  return v28;
}

uint64_t endpoint_UpdateFeatures(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 144))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    APSDispatchAsyncFHelper();
    v8 = 0;
  }

  else
  {
    APSLogErrorAt();
    CFRetain(a1);
    v8 = 4294949690;
    APSDispatchAsyncFHelper();
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t endpoint_readActivationOptions(CFDictionaryRef theDict, uint64_t a2)
{
  if (*(a2 + 104))
  {
    goto LABEL_2;
  }

  v8 = *MEMORY[0x277CC09E8];
  if (!CFDictionaryContainsKey(theDict, *MEMORY[0x277CC09E8]))
  {
    goto LABEL_2;
  }

  Value = CFDictionaryGetValue(theDict, v8);
  if (!Value)
  {
    v12 = *(a2 + 104);
    *(a2 + 104) = 0;
    if (!v12)
    {
      goto LABEL_2;
    }

LABEL_16:
    CFRelease(v12);
    goto LABEL_2;
  }

  v10 = Value;
  v11 = CFGetTypeID(Value);
  if (v11 != CFStringGetTypeID())
  {
    endpoint_readActivationOptions_cold_1();
    return 4294950576;
  }

  v12 = *(a2 + 104);
  *(a2 + 104) = v10;
  CFRetain(v10);
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_2:
  if (CFDictionaryContainsKey(theDict, *MEMORY[0x277CC09B0]))
  {
    *(a2 + 40) = CFDictionaryGetInt64();
  }

  v4 = *MEMORY[0x277CC09F8];
  if (CFDictionaryContainsKey(theDict, *MEMORY[0x277CC09F8]))
  {
    v5 = *(a2 + 64);
    v6 = CFDictionaryGetValue(theDict, v4);
    *(a2 + 64) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

uint64_t endpoint_shouldOnlyBeActivatedAsPartOfCluster(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 48))
  {
    return 0;
  }

  result = APSIsEndpointClusteringEnabled();
  if (result)
  {
    return APSIsFBOPropertyNonNull() != 0;
  }

  return result;
}

uint64_t endpoint_ensureSharedContextCreated(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v10 = Mutable;
    if (*(CMBaseObjectGetDerivedStorage() + 48))
    {
      v11 = MEMORY[0x277CEA270];
    }

    else
    {
      Int64 = APSSettingsGetInt64();
      if (FigCFEqual())
      {
        v13 = APSSettingsGetInt64() == 0;
      }

      else
      {
        v13 = FigCFEqual() == 0;
      }

      v14 = v13;
      v24 = v14;
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        v15 = "supported";
        if (v24)
        {
          v15 = "not supported";
        }

        LogPrintF(&gLogCategory_APEndpoint, "CFStringRef endpoint_getPreferredNetworkClockType(FigEndpointRef)", 33554482, "[%{ptr}] PrimaryUsage is %s for use with PTP\n", a1, v15);
      }

      v16 = APSGetFBOPropertyInt64();
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        v17 = "yes";
        if (v16)
        {
          v18 = "yes";
        }

        else
        {
          v18 = "no";
        }

        if (!Int64)
        {
          v17 = "no";
        }

        LogPrintF(&gLogCategory_APEndpoint, "CFStringRef endpoint_getPreferredNetworkClockType(FigEndpointRef)", 33554482, "[%{ptr}] Receiver supports PTP: %s, NTP forced: %s\n", a1, v18, v17);
      }

      if ((v16 == 0) | v24 & 1 | (Int64 != 0))
      {
        v11 = MEMORY[0x277CEA268];
      }

      else
      {
        v11 = MEMORY[0x277CEA278];
      }
    }

    CFDictionarySetValue(v10, @"PreferredNetworkClockType", *v11);
    v19 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v10, @"AllowP2PForNTP", *MEMORY[0x277CBED28]);
    if (a4)
    {
      v20 = v19;
    }

    else
    {
      v20 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v10, @"IgnoreClientPIDForMediaRemote", v20);
    SharedContext = APEndpointCopyFromActivationOptionsOrCreateSharedContext(a3, a2, v10, DerivedStorage + 208, (DerivedStorage + 200), 0);
    v22 = SharedContext;
    if (SharedContext)
    {
      endpoint_ensureSharedContextCreated_cold_1(SharedContext);
    }

    CFRelease(v10);
  }

  else
  {
    endpoint_ensureSharedContextCreated_cold_2();
    return 4294950575;
  }

  return v22;
}

void endpoint_postIsInUseDidChangeNotification(uint64_t a1, int a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 144);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *MEMORY[0x277CBED28];
    v8 = *MEMORY[0x277CBED10];
    if (v4)
    {
      v9 = *MEMORY[0x277CBED28];
    }

    else
    {
      v9 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"IsInUse", v9);
    if (a2)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    CFDictionarySetValue(v6, @"WasAutoconnected", v10);
    if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_postIsInUseDidChangeNotification_cold_1(a1, v11, v12);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v6);
  }

  else
  {
    endpoint_postIsInUseDidChangeNotification_cold_2();
  }
}

void endpoint_activateInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v186 = 0;
  v187 = 0;
  v4 = a1 + 2;
  v3 = a1[2];
  v5 = *(a1 + 32);
  v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (*(DerivedStorage + 120))
  {
    endpoint_activateInternal_cold_1();
    v34 = 0;
    v35 = 0;
    v36 = 0;
    LOBYTE(v174) = 0;
    v9 = 4294950573;
    goto LABEL_92;
  }

  if (a1[12])
  {
    if (CFDictionaryGetInt64())
    {
      v7 = 1;
    }

    else
    {
      v7 = CFDictionaryGetInt64() != 0;
    }

    v174 = v7;
  }

  else
  {
    v174 = 0;
  }

  v8 = *(a1 + 34);
  if (v8 == -16727)
  {
    FigSimpleMutexLock();
    if (a1[6] == *(DerivedStorage + 128) && *(DerivedStorage + 144) == 2)
    {
      v187 = *(DerivedStorage + 136);
      v9 = 4294950569;
    }

    else
    {
      v9 = 4294949692;
    }

    FigSimpleMutexUnlock();
LABEL_91:
    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  if (v8)
  {
    APSLogErrorAt();
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v9 = *(a1 + 34);
    goto LABEL_92;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_activateInternal_cold_2(a1, v5);
  }

  v10 = a1[10];
  if (v10)
  {
    v11 = *a1;
    v12 = a1[5];
    v13 = CMBaseObjectGetDerivedStorage();
    if (!*(v13 + 584))
    {
      if (v12)
      {
        v14 = v13;
        v15 = (v13 + 584);
        v16 = APMediaRemoteCommandReceiverCreate(*MEMORY[0x277CBECE8], v10, (v13 + 584));
        if (v16)
        {
          v9 = v16;
          endpoint_activateInternal_cold_3(v16);
        }

        else
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          LOBYTE(v175) = APEndpointDescriptionIsSourceVersionOlderThan(*(v14 + 40), 0x36193Eu);
          v17 = "no";
          if (IsAppleInternalBuild() && APSSettingsGetBooleanIfPresent())
          {
            v17 = "yes";
          }

          if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
          {
            v18 = "enabled";
            if (!v175)
            {
              v18 = "disabled";
            }

            LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setupMediaRemoteCommands(FigEndpointRef, APSenderSessionRef, APMediaRemoteCommandSinkRef)", 33554462, "[%{ptr}] DACP %s, from prefs: %s\n", v11, v18, v17);
          }

          if (!v175)
          {
            goto LABEL_35;
          }

          v19 = APMediaRemoteCommandReceiverAddClient(*(v14 + 584), v14 + 592);
          if (v19)
          {
            v9 = v19;
            endpoint_activateInternal_cold_4(v19);
          }

          else
          {
            APMediaRemoteCommandReceiverGetID(*v15);
            v20 = APSSetFBOPropertyInt64();
            if (v20)
            {
              v9 = v20;
              endpoint_activateInternal_cold_5(v20);
            }

            else
            {
              v21 = APSSetFBOPropertyInt64();
              if (!v21)
              {
LABEL_35:
                if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
                {
                  endpoint_activateInternal_cold_7(v15, &v175, v11);
                }

                goto LABEL_38;
              }

              v9 = v21;
              endpoint_activateInternal_cold_6(v21);
            }
          }
        }
      }

      else
      {
        endpoint_activateInternal_cold_8();
        v9 = 4294960534;
      }

      APSLogErrorAt();
      goto LABEL_196;
    }
  }

LABEL_38:
  if (!*(DerivedStorage + 48))
  {
    v22 = a1[13];
    APSenderSessionGetCMBaseObject();
    v24 = v23;
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v25(v24, @"GroupID", v22);
    }

    v26 = a1[5];
    if ((a1[2] & 0xFLL) != 0)
    {
      v27 = MEMORY[0x277CBED28];
    }

    else
    {
      v27 = MEMORY[0x277CBED10];
    }

    v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v28)
    {
      v28(v26, @"IsMediaSession", *v27);
    }

    if (*(a1 + 160))
    {
      updated = endpoint_updateUGLRCServerIfNeeded(*a1, a1[5], a1[13], 1);
      if (updated)
      {
        v9 = updated;
        endpoint_activateInternal_cold_9(updated);
LABEL_196:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        goto LABEL_197;
      }
    }
  }

  if (!v5)
  {
    v37 = a1[5];
    v38 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v38)
    {
      v39 = v38(v37);
      if (!v39)
      {
        goto LABEL_61;
      }

      v9 = v39;
    }

    else
    {
      v9 = 4294954514;
    }

    APSLogErrorAt();
    v48 = 0;
    v36 = 0;
    v34 = 0;
    v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    goto LABEL_212;
  }

  while (1)
  {
    v29 = a1[5];
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v30)
    {
      v9 = 4294954514;
      goto LABEL_85;
    }

    v31 = v30(v29);
    v9 = v31;
    if (v31 <= 200400)
    {
      break;
    }

    if (v31 == 200503)
    {
      v9 = 4294949687;
LABEL_85:
      v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
      goto LABEL_90;
    }

    if (v31 != 200470 && v31 != 200401)
    {
      goto LABEL_85;
    }

    if (v174)
    {
      endpoint_activateInternal_cold_10();
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v9 = 4294949696;
      LOBYTE(v174) = 1;
      goto LABEL_197;
    }

    v33 = endpoint_handleAuthorizationRequired(*a1, 0, a1[6], 0);
    if (v33)
    {
      v9 = v33;
      endpoint_activateInternal_cold_11(v33);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      LOBYTE(v174) = 0;
      goto LABEL_197;
    }
  }

  v47 = v31 == -71164 || v31 == -71145;
  v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (v47)
  {
    v9 = 4294949688;
    goto LABEL_90;
  }

  if (v31)
  {
    goto LABEL_85;
  }

LABEL_61:
  v40 = a1[11];
  if (v40)
  {
    v41 = *a1;
    v42 = a1[5];
    v43 = CMBaseObjectGetDerivedStorage();
    v44 = APSGetFBOPropertyInt64();
    if (!*(v43 + 600))
    {
      if (v44)
      {
        v45 = APMetadataSenderCreate(*MEMORY[0x277CBECE8], v42, v44, *(v43 + 576), v40, v41, endpoint_isAudioTimelineEstablished, endpoint_getCurrentRTPTime, (v43 + 600));
        if (v45)
        {
          v9 = v45;
          endpoint_activateInternal_cold_12(v45);
          v34 = 0;
          v35 = 0;
          v36 = 0;
LABEL_197:
          v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
          goto LABEL_92;
        }

        endpoint_activateInternal_cold_13(v40, (v43 + 600), v41);
      }
    }
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 242) && endpoint_shouldOnlyBeActivatedAsPartOfCluster(*a1))
  {
    v9 = 4294895019;
    v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    goto LABEL_89;
  }

  v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (a1[6] != *(DerivedStorage + 128) || (v5 ? (v46 = 1) : (v46 = 2), *(DerivedStorage + 144) != v46))
  {
    v9 = 4294949692;
    goto LABEL_89;
  }

  v9 = *(DerivedStorage + 148);
  if (v9)
  {
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "void endpoint_activateInternal(void *)", 33554522, "[%{ptr}] Activation failed due to endpointStatus: %#m\n", *a1, v9);
    }

LABEL_89:
    FigSimpleMutexUnlock();
LABEL_90:
    APSLogErrorAt();
    goto LABEL_91;
  }

  if (v5)
  {
    shouldUseInactivityTimer = endpoint_shouldUseInactivityTimer(*a1, a1[12]);
    *(DerivedStorage + 262) = shouldUseInactivityTimer;
    if (gLogCategory_APEndpoint > 50)
    {
LABEL_150:
      if (shouldUseInactivityTimer)
      {
        endpoint_startInactivityTimer(*a1);
      }

      if (v3 == 16)
      {
        goto LABEL_153;
      }

      LOBYTE(v175) = 0;
      *(DerivedStorage + 532) = endpointdelegate_getInitialVolumeDBAndIsMuted(*a1, (DerivedStorage + 536), (DerivedStorage + 524), &v175);
      APSVolumeConvertDBToSliderValue();
      *(DerivedStorage + 512) = v86;
      v87 = v175;
      *(DerivedStorage + 516) = v175;
      *(DerivedStorage + 528) = v87;
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        v88 = *a1;
        v89 = *(DerivedStorage + 536);
        APSVolumeConvertDBToSliderValue();
        v91 = v90;
        v92 = "yes";
        if (!v87)
        {
          v92 = "no";
        }

        LogPrintF(&gLogCategory_APEndpoint, "void endpoint_activateInternal(void *)", 33554482, "[%{ptr}] [AirPlayVolume] Setting internal InitialVolume to %.3f dB (%.3f) - receiver has %.3f dB (%.3f); isMuted = %s\n", v88, *&v89, *&v91, *(DerivedStorage + 524), *(DerivedStorage + 512), v92);
      }

      goto LABEL_179;
    }

    if (gLogCategory_APEndpoint == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_149;
      }

      shouldUseInactivityTimer = *(DerivedStorage + 262);
    }

    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_activateInternal(void *)", 33554482, "[%{ptr}] Using inactivity timeout? %d\n", *a1, shouldUseInactivityTimer);
LABEL_149:
    LODWORD(shouldUseInactivityTimer) = *(DerivedStorage + 262);
    goto LABEL_150;
  }

  if (v3 == 16)
  {
LABEL_153:
    v80 = 16;
    goto LABEL_154;
  }

LABEL_179:
  endpoint_updateScreenRelatedConfiguration(*a1, a1[5], a1[12]);
  *(DerivedStorage + 272) = endpoint_isMediaPresentationModeAvailable(*a1);
  v93 = endpoint_setupStreams(*a1, a1[2], a1[3], a1[12], &v187);
  if (v93)
  {
    v9 = v93;
    endpoint_activateInternal_cold_14(v93);
    goto LABEL_89;
  }

  v80 = v187;
  if (*v4 && !v187)
  {
    endpoint_activateInternal_cold_16((a1 + 2), *v4, a1);
    v9 = v175;
    goto LABEL_89;
  }

  if ((v187 & 4) == 0 || !*(DerivedStorage + 320))
  {
    goto LABEL_155;
  }

  if (!APSSettingsGetIntWithDefault())
  {
    v80 = v187;
    goto LABEL_155;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_activateInternal_cold_15();
  }

  v80 = v187 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_154:
  v187 = v80;
LABEL_155:
  *(DerivedStorage + 136) = v80;
  v81 = a1[3];
  v36 = v80 & ~v81;
  v173 = v81 & ~v80;
  if (v5)
  {
    APSEventRecorderRecordEvent();
    *(DerivedStorage + 144) = 2;
    v82 = 1;
  }

  else
  {
    v82 = 0;
  }

  if (*(DerivedStorage + 261) && v36 & 0xFFFFFFFFFFFFFFDFLL | v173 & 0xFFFFFFFFFFFFFFDFLL)
  {
    endpoint_postInterruptingSessionStateDidChangeNotification(*a1, (v36 & 0xFFFFFFFFFFFFFFDFLL) != 0);
  }

  endpoint_updateCurrentVolumeControlType(*a1);
  endpoint_updateIsVolumeAndMuteControlSupported(*a1);
  endpoint_updateVideoPlaybackIsActive(*a1);
  *(DerivedStorage + 488) = 0;
  FigSimpleMutexUnlock();
  v34 = v173;
  if (!v5)
  {
    LODWORD(v9) = 0;
    v48 = 0;
    goto LABEL_214;
  }

  v35 = v82;
  v83 = *(DerivedStorage + 24);
  if (v83)
  {
    v84 = a1[8];
    if (v84)
    {
      APBrowserControllerRegisterEndpointActivated(v83, v84, *(DerivedStorage + 48));
    }
  }

  if (qword_280FB1BF8 != -1)
  {
    endpoint_activateInternal_cold_17();
  }

  if (_MergedGlobals_24)
  {
    v85 = *_MergedGlobals_24;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __endpoint_activateInternal_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = _MergedGlobals_24;
    block[5] = a1;
    dispatch_sync(v85, block);
  }

  v9 = 0;
LABEL_92:
  v48 = v5 != 0;
  if (!v5 || v9 == -16727)
  {
    goto LABEL_212;
  }

  FigSimpleMutexLock();
  v49 = CMBaseObjectGetDerivedStorage();
  v190 = 0;
  v191[0] = 0;
  v189[0] = 0;
  v189[1] = 0;
  v188 = 0;
  if (!*(v49 + 296))
  {
    goto LABEL_201;
  }

  v50 = v49;
  if (!CFDictionaryContainsKey(*(v49 + 288), @"activationMs"))
  {
    if (!a1[5])
    {
      goto LABEL_103;
    }

    APSenderSessionGetCMBaseObject();
    v52 = v51;
    v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v53 || (v53(v52, @"InitialRTCStats", *MEMORY[0x277CBECE8], &v190), !v190) || (v54 = CFDictionaryMergeDictionary(), !v54))
    {
      APSenderSessionGetCMBaseObject();
      v56 = v55;
      v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v57)
      {
        v57(v56, @"ActualTransportType", 0, &v188);
      }

      FigCFDictionarySetValue();
LABEL_103:
      if (a1[19])
      {
        v170 = v36;
        if (a1[5])
        {
          v58 = *MEMORY[0x277CBECE8];
          APSenderSessionGetCMBaseObject();
          v60 = v59;
          v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v61)
          {
            v61(v60, @"EventRecorder", v58, v191);
            if (v191[0])
            {
              MEMORY[0x223DAE7F0](a1[19]);
            }
          }

          APSenderSessionGetCMBaseObject();
          v63 = v62;
          v64 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v64)
          {
            v64(v63, @"ActivationTimingInformation", v58, v189);
          }
        }

        if (v9)
        {
          TimeSinceEventInMilliSecond = APSEventRecorderGetTimeSinceEventInMilliSecond();
          CFDictionarySetInt64();
        }

        else
        {
          TimeSinceEventInMilliSecond = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
        }

        v169 = v35;
        v172 = v34;
        CFDictionarySetInt64();
        v168 = TimeSinceEventInMilliSecond;
        if (v189[0])
        {
          Int64 = CFDictionaryGetInt64();
          v67 = CFDictionaryGetInt64();
          v68 = DerivedStorage;
          v69 = CFDictionaryGetInt64();
          v70 = CFDictionaryGetInt64();
          v71 = CFDictionaryGetInt64();
          v72 = CFStringCreateF(0, " (%llu ms sender, %llu ms connection, %llu ms networking, %llu ms receiver, %llu ms remote)", TimeSinceEventInMilliSecond - (Int64 + v67), Int64, v70, v69, v71);
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          DerivedStorage = v68;
          CFDictionarySetInt64();
          APSRoundToSignificantFigures();
          CFDictionarySetInt64();
        }

        else
        {
          v72 = 0;
        }

        v36 = v170;
        v6 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          v73 = "failed";
          if (!v9)
          {
            v73 = "succeeded";
          }

          LogPrintF(&gLogCategory_APEndpoint, "void endpoint_gatherActivationMetricsIfNeeded(APEndpointActivationContext *, OSStatus)", 33554482, "[%{ptr}] Activation %s. Duration: %llu ms%?@, correlationID: %'@\n", *a1, v73, v168, v72 != 0, v72, a1[18]);
        }

        if (!APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx())
        {
          CFDictionarySetInt64();
        }

        FigCFDictionarySetValue();
        v74 = *MEMORY[0x277CBED28];
        v75 = *MEMORY[0x277CBED10];
        if (*(a1 + 33))
        {
          v76 = *MEMORY[0x277CBED28];
        }

        else
        {
          v76 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(*(v50 + 288), @"isPartOfCluster", v76);
        if (*(v50 + 483))
        {
          v77 = v74;
        }

        else
        {
          v77 = v75;
        }

        CFDictionarySetValue(*(v50 + 288), @"hadAuthorizationRequest", v77);
        if (v189[0])
        {
          CFRelease(v189[0]);
        }

        v34 = v172;
        v35 = v169;
        goto LABEL_202;
      }

      goto LABEL_201;
    }

    endpoint_activateInternal_cold_19(v54);
LABEL_201:
    v72 = 0;
    goto LABEL_202;
  }

  endpoint_activateInternal_cold_18(a1, &v175);
  v72 = v175;
LABEL_202:
  if (v190)
  {
    CFRelease(v190);
  }

  if (v191[0])
  {
    CFRelease(v191[0]);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v188)
  {
    CFRelease(v188);
  }

  if (v35)
  {
    v171 = v36;
    v103 = a1[1];
    v104 = v6;
    v105 = CMBaseObjectGetDerivedStorage();
    v108 = v105;
    v109 = v6[84];
    if (v109 <= 40)
    {
      if (v109 != -1 || (v105 = _LogCategory_Initialize(), v105))
      {
        endpoint_activateInternal_cold_20(v105, v106, v107);
      }

      v110 = v6[84];
      if (v110 <= 40)
      {
        if (v110 != -1 || (v111 = _LogCategory_Initialize(), v111))
        {
          v111 = endpoint_activateInternal_cold_21(v103, v106, v107);
        }

        v104 = v6;
        v112 = v6[84];
        if (v112 <= 40)
        {
          if (v112 != -1 || (v111 = _LogCategory_Initialize(), v111))
          {
            v111 = endpoint_activateInternal_cold_20(v111, v106, v107);
          }

          v104 = v6;
          v113 = v6[84];
          if (v113 <= 40)
          {
            if (v113 != -1 || (v111 = _LogCategory_Initialize(), v111))
            {
              v111 = endpoint_activateInternal_cold_23(v111, v106, v107);
            }

            v104 = v6;
            v114 = v6[84];
            if (v114 <= 40)
            {
              if (v114 != -1 || (v111 = _LogCategory_Initialize(), v111))
              {
                endpoint_activateInternal_cold_24(v111, v106, v107);
              }
            }
          }
        }
      }
    }

    endpoint_logEventInterval(*(v108 + 280), 268369920, 268369921, "Total AirPlay Contribution (Endpoint Activate Start To Endpoint Activate Complete)");
    endpoint_logEvent(*(v108 + 280), 268369920, "EndpointActivate");
    endpoint_logEvent(*(v108 + 280), 150994945, "ResolveDNSTime");
    v118 = v104[84];
    if (v118 <= 40)
    {
      if (v118 != -1 || (v115 = _LogCategory_Initialize(), v115))
      {
        v115 = endpoint_activateInternal_cold_25(v115, v116, v117);
      }

      v119 = v104[84];
      if (v119 <= 40)
      {
        if (v119 != -1 || (v115 = _LogCategory_Initialize(), v115))
        {
          v115 = endpoint_activateInternal_cold_26(v115, v116, v117);
        }

        v120 = v104[84];
        if (v120 <= 40)
        {
          if (v120 != -1 || (v115 = _LogCategory_Initialize(), v115))
          {
            endpoint_activateInternal_cold_27(v115, v116, v117);
          }
        }
      }
    }

    endpoint_logEvent(*(v108 + 104), 268431360, "PresenceBrowsing_Start");
    endpoint_logEvent(*(v108 + 104), 268431361, "DetailedNonP2PBrowsing_Start");
    endpoint_logEvent(*(v108 + 104), 268431362, "DetailedBrowsing_Start");
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374027);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374033);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374017);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374028);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374018);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374024);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374025);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374026);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374023);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374032);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374021);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374031);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374020);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374030);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374034);
    endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374019);
    v121 = endpoint_logTransportDiscoveryDurationIfEventPresent(*(v108 + 104), *(v108 + 280), 268374022);
    v124 = v104[84];
    if (v124 <= 40)
    {
      if (v124 != -1 || (v121 = _LogCategory_Initialize(), v121))
      {
        v121 = endpoint_activateInternal_cold_25(v121, v122, v123);
      }

      v125 = v104[84];
      if (v125 <= 40)
      {
        if (v125 != -1 || (v121 = _LogCategory_Initialize(), v121))
        {
          v121 = endpoint_activateInternal_cold_29(v121, v122, v123);
        }

        v126 = v104[84];
        if (v126 <= 40)
        {
          if (v126 != -1 || (v121 = _LogCategory_Initialize(), v121))
          {
            endpoint_activateInternal_cold_30(v121, v122, v123);
          }
        }
      }
    }

    endpoint_logEvent(*(v108 + 280), 150994944, "QuerySRVTime");
    endpoint_logEvent(*(v108 + 280), 150994946, "ControlStreamConnectingTime");
    endpoint_logEvent(*(v108 + 280), 150994948, "ControlStreamConnectedTime");
    endpoint_logEvent(*(v108 + 280), 250609664, "EndpointConnectionStartTime");
    endpoint_logEvent(*(v108 + 280), 250609666, "EndpointGetInfoCompleteTime");
    endpoint_logEventInterval(*(v108 + 280), 250609665, 250609666, "INFOTimeMs");
    CMBaseObjectGetDerivedStorage();
    TimeBetweenEventsInMilliSecondRecursive = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    v6 = v104;
    v128 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    v129 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    v132 = v104[84];
    if (v132 <= 40)
    {
      v133 = v129;
      if (v132 != -1 || _LogCategory_Initialize())
      {
        endpoint_activateInternal_cold_31(v128 + TimeBetweenEventsInMilliSecondRecursive + v133, v130, v131);
      }
    }

    endpoint_logEventInterval(*(v108 + 280), 150994946, 150994948, "ConnectTimeMs");
    endpoint_logEventInterval(*(v108 + 280), 250609677, 250609678, "EndpointAUTHTimeMs");
    v134 = endpoint_logEventInterval(*(v108 + 280), 250609675, 250609676, "EndpointRECORDTimeMs");
    v137 = v104[84];
    v36 = v171;
    if (v137 <= 40)
    {
      if (v137 != -1 || (v134 = _LogCategory_Initialize(), v134))
      {
        endpoint_activateInternal_cold_20(v134, v135, v136);
      }
    }
  }

  FigSimpleMutexUnlock();
  v48 = 1;
LABEL_212:
  if (v9 != -16727 && v9)
  {
    v184 = 0;
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    *theDict = 0u;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v175 = 0u;
    v96 = v6[84];
    if (v96 <= 90 && (v96 != -1 || _LogCategory_Initialize()))
    {
      v97 = "UpdateFeatures";
      if (v48)
      {
        v97 = "activation";
      }

      LogPrintF(&gLogCategory_APEndpoint, "void endpoint_activateInternal(void *)", 33554522, "[%{ptr}] Endpoint %s (seed %llu) failed with error %#m.\n", *a1, v97, a1[6], v9);
    }

    FigSimpleMutexLock();
    APEndpointDescriptionGetCMBaseObject();
    v101 = v100;
    v102 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v102)
    {
      v102(v101, @"uglServerInfo", 0);
    }

    if (a1[6] == *(DerivedStorage + 128) && *(DerivedStorage + 144) == 1)
    {
      *&v175 = CFRetain(*a1);
      v158 = *(DerivedStorage + 440);
      if (v158)
      {
        v158 = CFRetain(v158);
      }

      *(&v175 + 1) = v158;
      LODWORD(v176) = *(DerivedStorage + 148);
      v159 = CFRetain(@"FailedActivation");
      v160 = 0;
      DWORD1(v179) = 0;
      *(&v183 + 1) = 0;
      v184 = 0;
      v161 = a1[5];
      v162 = a1[6];
      *(&v176 + 1) = v159;
      v163 = a1[2];
      *&v178 = v162;
      *(&v178 + 1) = v163;
      LOBYTE(v179) = *(DerivedStorage + 480);
      if (v161)
      {
        v160 = CFRetain(v161);
      }

      *&v177 = v160;
      v164 = *(DerivedStorage + 160);
      if (v164)
      {
        v164 = CFRetain(v164);
      }

      *(&v177 + 1) = v164;
      BYTE1(v179) = 0;
      v165 = a1[11];
      if (v165)
      {
        v165 = CFRetain(v165);
      }

      *(&v180 + 1) = v165;
      *&v182 = FigCFDictionaryCreateMutableCopy();
      v166 = *(DerivedStorage + 296);
      if (v166)
      {
        v166 = CFRetain(v166);
      }

      *(&v182 + 1) = v166;
      *(DerivedStorage + 488) = v9;
      endpoint_resetActivationState(DerivedStorage + 128);
      if (!*(DerivedStorage + 49) || !*(DerivedStorage + 48))
      {
        v167 = *(DerivedStorage + 464);
        if (v167)
        {
          CFRelease(v167);
          *(DerivedStorage + 464) = 0;
        }
      }

      endpoint_removeAPEndpointManagerNotificationsListenerIfNeeded(*a1);
      endpoint_removeHDMILatencyNotificationListenerIfNeeded(*a1);
      endpoint_stopListeningToSenderSessionAndStreamsNotifications(*a1, v177, *(&v177 + 1));
      if (theDict[1])
      {
        CFDictionaryApplyFunction(theDict[1], endpoint_unsubscribeRCS, *a1);
      }

      if (theDict[0])
      {
        CFSetApplyFunction(theDict[0], endpoint_unsubscribePlaybackSession, *a1);
      }

      endpoint_deregisterWithBrowserController(*a1);
      APSDispatchAsyncFHelper();
    }

    FigSimpleMutexUnlock();
    v99 = 0;
    if (v9 != -17600 && v174)
    {
      LODWORD(v9) = -17601;
    }

    goto LABEL_294;
  }

LABEL_214:
  v94 = v6[84];
  if (v94 > 50)
  {
    goto LABEL_228;
  }

  if (v94 != -1 || _LogCategory_Initialize())
  {
    v95 = "UpdateFeatures complete";
    if (v48)
    {
      v95 = "activated";
    }

    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_activateInternal(void *)", 33554482, "Endpoint [%{ptr}] %s for features %#ll{flags}\n", *a1, v95, v187, &unk_222298838);
  }

  v98 = v6[84];
  if (v98 <= 30 && (v98 != -1 || _LogCategory_Initialize()))
  {
    endpoint_activateInternal_cold_33(a1, v48, &v187);
    if (v9)
    {
      goto LABEL_229;
    }
  }

  else
  {
LABEL_228:
    if (v9)
    {
LABEL_229:
      v99 = 0;
      goto LABEL_294;
    }
  }

  if (v34)
  {
    endpoint_postStreamsChangedNotification(*a1, v34, a1[6], 0);
  }

  if (v48 && !*(DerivedStorage + 48) && !*(DerivedStorage + 242))
  {
    APEndpointApplyInitialVolume(*a1);
  }

  LODWORD(v9) = 0;
  v99 = 1;
LABEL_294:
  v138 = a1[15];
  if (v138)
  {
    if (v9 == -16727)
    {
      v139 = 1;
    }

    else
    {
      v139 = v99;
    }

    if (v139)
    {
      v140 = v187;
    }

    else
    {
      v140 = 0;
    }

    v141 = a1[6];
    *&v175 = *a1;
    *(&v175 + 1) = v141;
    *&v176 = v140;
    *(&v176 + 1) = v9;
    v142 = a1[16];
    *&v177 = v138;
    *(&v177 + 1) = v142;
    CFRetain(v175);
    APSDispatchAsyncFHelper();
  }

  if (v99)
  {
    v143 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v143, v187, a1[6], &v186);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v186)
    {
      CFRelease(v186);
      v186 = 0;
    }

    if (v36)
    {
      endpoint_postStreamsChangedNotification(*a1, v36, a1[6], 1);
    }

    if (!*(DerivedStorage + 48) && !CFDictionaryGetInt64())
    {
      v144 = CFRetain(*a1);
      v145 = a1[6];
      *&v175 = v144;
      *(&v175 + 1) = v145;
      *&v176 = v187;
      APSDispatchAsyncFHelper();
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v146 = a1[1];
  if (v146)
  {
    CFRelease(v146);
  }

  v147 = a1[12];
  if (v147)
  {
    CFRelease(v147);
  }

  v148 = a1[5];
  if (v148)
  {
    CFRelease(v148);
  }

  v149 = a1[7];
  if (v149)
  {
    CFRelease(v149);
  }

  v150 = a1[8];
  if (v150)
  {
    CFRelease(v150);
  }

  v151 = a1[9];
  if (v151)
  {
    CFRelease(v151);
  }

  v152 = a1[10];
  if (v152)
  {
    CFRelease(v152);
  }

  v153 = a1[11];
  if (v153)
  {
    CFRelease(v153);
  }

  v154 = a1[13];
  if (v154)
  {
    CFRelease(v154);
  }

  v155 = a1[14];
  if (v155)
  {
    CFRelease(v155);
  }

  v156 = a1[18];
  if (v156)
  {
    CFRelease(v156);
  }

  v157 = a1[19];
  if (v157)
  {
    CFRelease(v157);
  }

  if (v186)
  {
    CFRelease(v186);
  }
}

uint64_t endpoint_handleAuthorizationRequired(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 128) != a3)
  {
    if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_handleAuthorizationRequired_cold_1();
    }

    goto LABEL_58;
  }

  if (*(DerivedStorage + 144) != 1)
  {
    if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_handleAuthorizationRequired_cold_2();
    }

LABEL_58:
    v14 = 0;
    v15 = 0;
    v13 = 0;
LABEL_59:
    v16 = 4294949692;
LABEL_79:
    FigSimpleMutexUnlock();
    goto LABEL_80;
  }

  if (!*(DerivedStorage + 352))
  {
    v16 = 200401;
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_handleAuthorizationRequired_cold_12(a1, v9, v10);
    }

    v14 = 0;
    v15 = 0;
    v13 = 0;
    goto LABEL_79;
  }

  if (*(DerivedStorage + 416))
  {
    v13 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v13)
    {
      if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_handleAuthorizationRequired_cold_3(a1, v11, v12);
      }

      v14 = 0;
      v15 = 0;
      v13 = 0;
      v16 = 4294960587;
      goto LABEL_79;
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = CMBaseObjectGetDerivedStorage();
  v20 = *(v19 + 248);
  if (v20)
  {
    if (gLogCategory_APEndpoint > 90)
    {
      goto LABEL_16;
    }

    if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
    {
      endpoint_handleAuthorizationRequired_cold_4(a1, v17, v18);
    }

    v20 = *(v19 + 248);
    if (v20)
    {
LABEL_16:
      dispatch_release(v20);
      *(v19 + 248) = 0;
    }
  }

  v21 = dispatch_semaphore_create(0);
  v15 = v21;
  *(v19 + 248) = v21;
  if (!v21)
  {
    endpoint_handleAuthorizationRequired_cold_11();
    v14 = 0;
    v16 = 4294950575;
    goto LABEL_79;
  }

  v22 = v13;
  v23 = a1;
  v40 = a4;
  dispatch_retain(v21);
  v24 = *(DerivedStorage + 128);
  v25 = *(DerivedStorage + 136);
  v26 = *(DerivedStorage + 144);
  v27 = malloc_type_calloc(1uLL, 0x20uLL, 0x108004013E61A9FuLL);
  if (!v27)
  {
    endpoint_handleAuthorizationRequired_cold_10();
    v14 = 0;
    v16 = 4294950575;
    a1 = v23;
    v13 = v22;
    goto LABEL_79;
  }

  v28 = v27;
  *v27 = v24;
  v27[1] = v25;
  *(v27 + 4) = v26;
  v27[3] = v15;
  dispatch_retain(v15);
  *(DerivedStorage + 256) = 0;
  if (a2)
  {
    v42 = CFRetain(a2);
    a1 = v23;
  }

  else
  {
    a1 = v23;
    endpoint_copyAuthorizationType(v23, &v42);
  }

  CFRetain(a1);
  v29 = *(DerivedStorage + 216);
  *(DerivedStorage + 483) = 1;
  FigSimpleMutexUnlock();
  v13 = v22;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_handleAuthorizationRequired(FigEndpointRef, CFStringRef, uint64_t, APEndpointActivationStage, CFStringRef *)", 33554482, "[%{ptr}] Requesting delegate to handle authorization for session [%{ptr}]", a1, v29);
  }

  CFRetain(a1);
  v14 = v42;
  CFRetain(v42);
  if (v22)
  {
    CFRetain(v22);
  }

  v30 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __endpoint_handleAuthorizationRequired_block_invoke;
  block[3] = &__block_descriptor_80_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = a3;
  block[7] = v22;
  block[8] = v14;
  block[9] = v28;
  dispatch_async(v30, block);
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_handleAuthorizationRequired_cold_5(a1);
  }

  v31 = dispatch_time(0, 60000000000);
  if (!dispatch_semaphore_wait(v15, v31))
  {
    v34 = FigSimpleMutexLock();
    if (*(DerivedStorage + 128) == a3)
    {
      if (*(DerivedStorage + 144) == 1)
      {
        if (v40)
        {
          v37 = *(DerivedStorage + 464);
          if (v37)
          {
            v37 = CFRetain(v37);
          }

          *v40 = v37;
        }

        v16 = *(DerivedStorage + 256);
        v38 = *(DerivedStorage + 248);
        if (v38)
        {
          dispatch_release(v38);
          *(DerivedStorage + 248) = 0;
        }

        if (!v16)
        {
          FigSimpleMutexUnlock();
          goto LABEL_42;
        }

        endpoint_handleAuthorizationRequired_cold_9(v16);
        goto LABEL_79;
      }

      if (gLogCategory_APEndpoint <= 60)
      {
        if (gLogCategory_APEndpoint != -1 || (v34 = _LogCategory_Initialize(), v34))
        {
          endpoint_handleAuthorizationRequired_cold_8(v34, v35, v36);
        }
      }
    }

    else if (gLogCategory_APEndpoint <= 60)
    {
      if (gLogCategory_APEndpoint != -1 || (v34 = _LogCategory_Initialize(), v34))
      {
        endpoint_handleAuthorizationRequired_cold_7(v34, v35, v36);
      }
    }

    goto LABEL_59;
  }

  if (gLogCategory_APEndpoint > 90)
  {
    v16 = 4294950568;
    goto LABEL_42;
  }

  if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
  {
    endpoint_handleAuthorizationRequired_cold_6(a1, v32, v33);
  }

  v16 = 4294950568;
LABEL_80:
  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_handleAuthorizationRequired(FigEndpointRef, CFStringRef, uint64_t, APEndpointActivationStage, CFStringRef *)", 33554522, "[%{ptr}] Authorization failed with err=%#m", a1, v16);
  }

LABEL_42:
  if (v13)
  {
    CFRelease(v13);
    v14 = v42;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  return v16;
}

void __endpoint_handleAuthorizationRequired_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 352))(*(a1 + 40), 0, *(a1 + 48), *(a1 + 56), *(a1 + 64), endpoint_authorizationRequestCompletionCallback, *(a1 + 72));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 64));
  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

void endpoint_authorizationRequestCompletionCallback(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v9 = DerivedStorage;
    FigSimpleMutexLock();
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "void endpoint_authorizationRequestCompletionCallback(FigEndpointRef, CFStringRef, OSStatus, void *)", 33554482, "[%{ptr}] Authorization request completion callback for session [%{ptr}] with result = %#m", a1, *(v9 + 216), a3);
    }

    if (*a4 == *(v9 + 128) && *(a4 + 4) == *(v9 + 144))
    {
      if (a2 && !a3)
      {
        endpoint_setAuthorizationString(a1, a2);
      }

      *(v9 + 256) = a3;
    }

    else
    {
      *(v9 + 256) = -17604;
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_authorizationRequestCompletionCallback_cold_1(a1);
      }
    }

    FigSimpleMutexUnlock();
    dispatch_semaphore_signal(*(a4 + 3));
    dispatch_release(*(a4 + 3));
  }

  else
  {
    endpoint_authorizationRequestCompletionCallback_cold_2();
  }

  free(a4);

  CFRelease(a1);
}

void __endpoint_createSetAuthorizationStringBlockWrapper_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a2)
  {
    FigSimpleMutexLock();
    v6 = endpoint_setAuthorizationString(*(a1 + 32), a2);
    if (v6)
    {
      v14 = v6;
      __endpoint_createSetAuthorizationStringBlockWrapper_block_invoke_cold_1(v6);
    }

    else
    {
      APSenderSessionGetCMBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v10 = v9(v8, @"ShouldUseNANDiversifiedPIN", *MEMORY[0x277CBED28]);
        if (v10)
        {
          v14 = v10;
        }

        else
        {
          APSenderSessionGetCMBaseObject();
          v12 = v11;
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v13)
          {
            v14 = v13(v12, @"NANMACAddress", a3);
            if (!v14)
            {
              goto LABEL_11;
            }
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
    }
  }

  else
  {
    __endpoint_createSetAuthorizationStringBlockWrapper_block_invoke_cold_2();
    v14 = 4294960591;
  }

LABEL_11:
  FigSimpleMutexUnlock();
  if (v14)
  {
    v15 = 90;
  }

  else
  {
    v15 = 50;
  }

  v16 = gLogCategory_APEndpoint;
  if (v15 >= gLogCategory_APEndpoint)
  {
    if (gLogCategory_APEndpoint == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v16 = gLogCategory_APEndpoint;
    }

    v17 = *(a1 + 32);
    if (v16 > 30)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16 == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_createSetAuthorizationStringBlockWrapper(FigEndpointRef, APSWrapperRef *)_block_invoke", v15 | 0x2000000u, "[%{ptr}] Set authorization string%?s%?#m%?{end}, authString=%@", v17, v14, "failed with err=", v14, v14, v18, a2);
  }
}

uint64_t endpoint_handleEventMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 40)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return LogPrintF(&gLogCategory_APEndpoint, "void endpoint_handleEventMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", 33554472, "[%{ptr}] Received event stream message of type %'C\n", a4, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APEndpoint, "void endpoint_handleEventMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", 33554472, "[%{ptr}] Received event stream message of type %'C\n", a4, a2);
    }
  }

  return result;
}

uint64_t endpoint_handleEventMessageCreatingReply(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 120);
  v10 = *(DerivedStorage + 216);
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
      v41 = -16723;
    }

    else
    {
      v41 = 0;
    }

    if (v10)
    {
      v20 = v41;
    }

    else
    {
      v20 = 4294950570;
    }

    APSLogErrorAt();
    goto LABEL_79;
  }

  if (a2 != 1668116068)
  {
    if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_handleEventMessageCreatingReply(FigTransportStreamRef, OSType, CMBlockBufferRef, void *, CMBlockBufferRef *)", 33554492, "### [%{ptr}] Unsupported messageType %'C\n", a4, a2);
    }

    v15 = 0;
    v20 = 4294950678;
    goto LABEL_45;
  }

  v12 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    v20 = CFDataWithBlockBufferNoCopy;
    endpoint_handleEventMessageCreatingReply_cold_1(CFDataWithBlockBufferNoCopy);
LABEL_79:
    v15 = 0;
    goto LABEL_45;
  }

  v14 = CFPropertyListCreateWithData(v12, 0, 0, 0, 0);
  v15 = v14;
  if (!v14 || (v16 = CFGetTypeID(v14), v16 != CFDictionaryGetTypeID()))
  {
    endpoint_handleEventMessageCreatingReply_cold_19();
    v20 = 4294950576;
    goto LABEL_45;
  }

  v44 = 0;
  v17 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(v15, @"type");
  if (!Value)
  {
    goto LABEL_43;
  }

  v19 = Value;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_processCommandCreatingResponse(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Processing '%@' command\n", a4, v19);
  }

  if (CFEqual(v19, @"forceKeyFrame"))
  {
    FigSimpleMutexLock();
    v21 = *(v17 + 160);
    if (v21)
    {
      v22 = CFDictionaryGetValue(v21, *MEMORY[0x277CC1980]);
      if (v22)
      {
        v23 = CFRetain(v22);
        FigSimpleMutexUnlock();
        if (v23)
        {
          restarted = APEndpointStreamScreenRestartBitstream(v23);
          v44 = restarted;
          if (restarted)
          {
            endpoint_handleEventMessageCreatingReply_cold_2(restarted);
          }

LABEL_41:
          CFRelease(v23);
          goto LABEL_43;
        }

        goto LABEL_43;
      }
    }

LABEL_42:
    FigSimpleMutexUnlock();
    goto LABEL_43;
  }

  if (!CFEqual(v19, @"setScreenRecordingState"))
  {
    if (!CFEqual(v19, @"updateDisplayInfo"))
    {
      if (CFEqual(v19, @"sendMediaRemoteCommand"))
      {
        FigSimpleMutexLock();
        if (*(v17 + 144) == 2)
        {
          CFRetain(a4);
          CFRetain(v15);
          v37 = *(v17 + 440);
          if (v37)
          {
            CFRetain(v37);
          }

          APSDispatchAsyncFHelper();
          v44 = 0;
        }

        else
        {
          v44 = -16726;
        }

        FigSimpleMutexUnlock();
        if (!v44)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_9(v44);
      }

      else if (CFEqual(v19, @"remoteConrolSessionCreate"))
      {
        IncomingRCSCommand = apEndpoint_handleCreateIncomingRCSCommand(a4, v15);
        v44 = IncomingRCSCommand;
        if (!IncomingRCSCommand)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_10(IncomingRCSCommand);
      }

      else if (CFEqual(v19, @"remoteControlSessionInvalidate"))
      {
        v39 = apEndpoint_handleInvalidateIncomingRCSCommand(a4, v15);
        v44 = v39;
        if (!v39)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_11(v39);
      }

      else if (CFEqual(v19, @"updateInfo"))
      {
        updated = apEndpoint_handleUpdateInfoCommand(a4, v15);
        v44 = updated;
        if (!updated)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_12(updated);
      }

      else if (CFEqual(v19, @"regroupTightSyncBuddy"))
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          endpoint_handleEventMessageCreatingReply_cold_13(a4);
        }

        notify_post("kAirPlayWHANotification_RegroupTightSyncBuddy");
      }

      else if (CFEqual(v19, @"FPSSecureStop"))
      {
        endpoint_handleEventMessageCreatingReply_cold_17(v15);
      }

      else if (CFEqual(v19, @"htSecondaryNonPersistentSessionStarted"))
      {
        v42 = endpoint_handleHTSecondaryNonPersistentSessionStartedEvent(a4, v15);
        v44 = v42;
        if (!v42)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_14(v42);
      }

      else if (CFEqual(v19, @"updateMC2UCStatus"))
      {
        v43 = endpoint_handleUpdateMC2UCStatus(a4, v15);
        v44 = v43;
        if (!v43)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_15(v43);
      }

      else if (gLogCategory_APEndpoint <= 60)
      {
        endpoint_handleEventMessageCreatingReply_cold_16(gLogCategory_APEndpoint, a4, v19);
      }

      goto LABEL_43;
    }

    v29 = CFDictionaryGetValue(v15, @"displays");
    if (!v29 || (v30 = v29, v31 = CFGetTypeID(v29), v31 != CFArrayGetTypeID()))
    {
      endpoint_handleEventMessageCreatingReply_cold_8(&v44);
      goto LABEL_43;
    }

    if (CFArrayGetCount(v30) != 1)
    {
      endpoint_handleEventMessageCreatingReply_cold_5(&v44);
      goto LABEL_43;
    }

    FigSimpleMutexLock();
    v32 = *(v17 + 160);
    if (v32)
    {
      v33 = CFDictionaryGetValue(v32, *MEMORY[0x277CC1980]);
      if (v33)
      {
        v23 = CFRetain(v33);
        FigSimpleMutexUnlock();
        if (v23)
        {
          CFDictionaryGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
          v35 = APEndpointStreamScreenUpdateDisplayInfo(v23, TypedValueAtIndex);
          v44 = v35;
          if (v35)
          {
            endpoint_handleEventMessageCreatingReply_cold_7(v35);
          }

          goto LABEL_41;
        }

        goto LABEL_43;
      }
    }

    goto LABEL_42;
  }

  FigSimpleMutexLock();
  v25 = *(v17 + 160);
  if (!v25)
  {
    goto LABEL_42;
  }

  v26 = CFDictionaryGetValue(v25, *MEMORY[0x277CC1980]);
  if (!v26)
  {
    goto LABEL_42;
  }

  v23 = CFRetain(v26);
  FigSimpleMutexUnlock();
  if (v23)
  {
    Int64 = CFDictionaryGetInt64();
    v28 = APEndpointStreamScreenSetRecordingState(v23, Int64 != 0);
    v44 = v28;
    if (v28)
    {
      endpoint_handleEventMessageCreatingReply_cold_4(v28);
    }

    goto LABEL_41;
  }

LABEL_43:
  v20 = v44;
  if (!v44)
  {
LABEL_44:
    v20 = 0;
    *a5 = 0;
    goto LABEL_45;
  }

  endpoint_handleEventMessageCreatingReply_cold_18(v44);
LABEL_45:
  if (v15)
  {
    CFRelease(v15);
  }

  return v20;
}

void endpoint_getSessionProtocolOverrideString(CFTypeRef *a1)
{
  v2 = APSSettingsCopyValue();
  *a1 = v2;
  if (v2 && !CFEqual(v2, @"legacy") && !CFEqual(*a1, @"airplay"))
  {
    if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_getSessionProtocolOverrideString_cold_1();
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }
  }
}

uint64_t endpoint_isInLocalClusterOfStaticLeader(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  result = APSIsLocalClusterWithStaticLeadershipEnabled();
  if (result)
  {
    return endpoint_isInLocalCluster(a1);
  }

  return result;
}

void endpoint_handleMediaRemoteCommand(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 584))
  {
    endpoint_handleMediaRemoteCommand_cold_4();
    v15 = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_37;
  }

  v3 = DerivedStorage;
  v4 = CFDictionaryCopyCString();
  v5 = CFDictionaryCopyCString();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_handleMediaRemoteCommand(void *)", 33554482, "[%@-%{ptr}] Processing kAPEndpointCommand_SendMediaRemoteCommand with MRCommand: %'s and APCommand: %'s\n", a1[1], *a1, v4, v5);
  }

  if (v4 && *v4)
  {
    v6 = TextToInt32();
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    APMediaRemoteCommandReceiverHandleMRCommand(*(v3 + 584), v6, TypedValue);
LABEL_18:
    v15 = 0;
    goto LABEL_37;
  }

  if (!v5 || !*v5)
  {
    goto LABEL_18;
  }

  v8 = TextToFourCharCode();
  if (v8 != 1685482595)
  {
    v15 = 0;
    v16 = 0;
LABEL_36:
    APMediaRemoteCommandReceiverHandleAPCommand(*(v3 + 584), v8, v15, v16);
    goto LABEL_37;
  }

  v9 = *a1;
  v10 = a1[2];
  v32 = 0;
  v11 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(v10, @"volume");
  v13 = CFDictionaryGetValue(v10, @"isMuted");
  FigSimpleMutexLock();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    if (*(v11 + 242))
    {
      v14 = "yes";
    }

    else
    {
      v14 = "no";
    }

    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_handleDeviceVolumeChangedCommand(FigEndpointRef, CFDictionaryRef, char **, size_t *)", 33554482, "[%{ptr}] handling volume change AP command; volume: %@ isPartOfCluster: %s, muted: %@", v9, Value, v14, v13);
  }

  CFGetDouble();
  v18 = v17;
  v19 = v13 == *MEMORY[0x277CBED28];
  APSVolumeConvertDBToSliderValue();
  v21 = v20;
  APSVolumeConvertDBToSliderValue();
  v23 = v22 < v18;
  v24 = v18;
  if (v23)
  {
    APSVolumeConvertDBToSliderValue();
  }

  if (v21 > v24 || (APSVolumeConvertDBToSliderValue(), v23 = v25 < v18, v26 = v18, v23))
  {
    APSVolumeConvertDBToSliderValue();
  }

  endpointdelegate_setVolumeSliderInternal(v9, 0, 0, 0, v26);
  if (*(v11 + 51) && *(v11 + 516) != v19 && (*(v11 + 516) = v19, v27 = endpoint_postMuteDidChangeNotification(v9), (v32 = v27) != 0))
  {
    endpoint_handleMediaRemoteCommand_cold_2(v27);
  }

  else
  {
    APSVolumeConvertSliderValueToDB();
    *(v11 + 524) = v28;
    *(v11 + 528) = v19;
    if (!*(v11 + 242))
    {
      v29 = v28;
      v15 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
      v16 = snprintf(v15, 0x3FuLL, "%lf", v29);
      goto LABEL_34;
    }
  }

  v15 = 0;
  v16 = 0;
LABEL_34:
  FigSimpleMutexUnlock();
  if (!v32)
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  endpoint_handleMediaRemoteCommand_cold_3(v32);
LABEL_37:
  free(v15);
  free(v5);
  free(v4);
  v30 = a1[2];
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = a1[1];
  if (v31)
  {
    CFRelease(v31);
  }

  CFRelease(*a1);
}

uint64_t apEndpoint_handleCreateIncomingRCSCommand(const void *a1, const __CFDictionary *a2)
{
  value[3] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value[0] = 0;
  if (!a1 || (v5 = DerivedStorage, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    APSLogErrorAt();
LABEL_13:
    v13 = 4294950576;
LABEL_21:
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_handleCreateIncomingRCSCommand(FigEndpointRef, CFDictionaryRef)", 33554522, "[%{ptr}] Could not create incoming RCS. Error: %m\n", a1, v13);
    }

    return v13;
  }

  if (!a2)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_6();
    goto LABEL_13;
  }

  if (*(v5 + 48))
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_1();
    v13 = 4294950570;
    goto LABEL_21;
  }

  v6 = CFDictionaryGetValue(a2, @"clientTypeUUID");
  if (!v6)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_5();
    goto LABEL_13;
  }

  v7 = v6;
  v8 = CFDictionaryGetValue(a2, @"streamID");
  if (!v8)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_4();
    goto LABEL_13;
  }

  v9 = v8;
  CFDictionaryGetValue(a2, @"clientUUID");
  FigCFDictionaryGetInt64IfPresent();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_3();
    v13 = 4294960568;
    goto LABEL_21;
  }

  v11 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC0B38], v7);
  CFDictionarySetValue(v11, @"streamID", v9);
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  FigCFDictionarySetValue();
  UUIDGet();
  CFDictionarySetUUIDString();
  CommChannel = apEndpoint_CreateCommChannel(a1, v11, value);
  v13 = CommChannel;
  if (CommChannel)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_2(CommChannel);
  }

  else
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_handleCreateIncomingRCSCommand(FigEndpointRef, CFDictionaryRef)", 33554482, "[%{ptr}] Created incoming RCS commChannelUUID [%@]\n", a1, value[0]);
    }

    FigSimpleMutexLock();
    v14 = *(v5 + 336);
    if (!v14)
    {
      v15 = CFGetAllocator(a1);
      v14 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v5 + 336) = v14;
    }

    CFDictionarySetValue(v14, v9, value[0]);
    FigSimpleMutexUnlock();
  }

  CFRelease(v11);
  if (value[0])
  {
    CFRelease(value[0]);
  }

  if (v13)
  {
    goto LABEL_21;
  }

  return v13;
}

uint64_t apEndpoint_handleInvalidateIncomingRCSCommand(uint64_t a1, const __CFDictionary *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v18 = 0u;
  v19 = 0u;
  *label = 0u;
  v17 = 0u;
  if (!a2)
  {
    apEndpoint_handleInvalidateIncomingRCSCommand_cold_5();
LABEL_24:
    v12 = 4294950576;
    goto LABEL_15;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    apEndpoint_handleInvalidateIncomingRCSCommand_cold_1();
    a2 = 0;
    v12 = 4294950570;
    goto LABEL_15;
  }

  v6 = CFDictionaryGetValue(a2, @"streamID");
  if (!v6)
  {
    apEndpoint_handleInvalidateIncomingRCSCommand_cold_4();
    a2 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  FigSimpleMutexLock();
  v8 = *(v5 + 336);
  if (!v8 || !CFDictionaryGetValueIfPresent(v8, v7, &value))
  {
    FigSimpleMutexUnlock();
LABEL_14:
    apEndpoint_handleInvalidateIncomingRCSCommand_cold_3();
    a2 = 0;
    v12 = 4294950571;
    goto LABEL_15;
  }

  v9 = CFDictionaryGetValue(*(v5 + 328), value);
  if (v9)
  {
    a2 = CFRetain(v9);
  }

  else
  {
    a2 = 0;
  }

  CFDictionaryRemoveValue(*(v5 + 336), v7);
  FigSimpleMutexUnlock();
  if (!a2)
  {
    goto LABEL_14;
  }

  SNPrintF(label, 64, "APEndpoint.%{ptr}.RCS-%{prt}.Invalidate", a1, a2);
  v10 = dispatch_queue_create(label, 0);
  if (v10)
  {
    v11 = v10;
    CFRetain(a2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __apEndpoint_handleInvalidateIncomingRCSCommand_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a2;
    block[5] = a1;
    dispatch_async(v11, block);
    CFRelease(a2);
    dispatch_release(v11);
    return 0;
  }

  apEndpoint_handleInvalidateIncomingRCSCommand_cold_2();
  v12 = 4294950575;
LABEL_15:
  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_handleInvalidateIncomingRCSCommand(FigEndpointRef, CFDictionaryRef)", 33554522, "[%{ptr}] Could not invalidate Remote Control Session. Error: %m\n", a1, v12);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v12;
}

uint64_t apEndpoint_handleUpdateInfoCommand(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(a2, @"value");
  if (!Value)
  {
    apEndpoint_handleUpdateInfoCommand_cold_1();
    v12 = 4294960591;
LABEL_23:
    FigSimpleMutexUnlock();
    return v12;
  }

  if (!*(DerivedStorage + 144))
  {
    v12 = 0;
    goto LABEL_23;
  }

  v6 = Value;
  if (!*(DerivedStorage + 48))
  {
LABEL_11:
    InfoResponseWithUGLAddressesUpdatedFromSenderSession = 0;
    goto LABEL_12;
  }

  if (*(DerivedStorage + 49))
  {
    FigCFDictionaryGetValue();
    v7 = FigCFDictionaryGetValue();
    if (v7)
    {
      if (gLogCategory_APEndpoint <= 50)
      {
        v8 = v7;
        if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_handleUpdateInfoCommand(FigEndpointRef, CFDictionaryRef)", 33554482, "[%{ptr}] <APUGLPort> UpdateInfo payload for local RC includes UGL server port: %@\n", a1, v8);
        }
      }
    }

    goto LABEL_11;
  }

  InfoResponseWithUGLAddressesUpdatedFromSenderSession = APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromSenderSession(*(DerivedStorage + 216), Value, &gLogCategory_APEndpoint, a1);
  v6 = InfoResponseWithUGLAddressesUpdatedFromSenderSession;
LABEL_12:
  v10 = *(DerivedStorage + 40);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v11)
  {
    v12 = v11(v10, v6);
    if (!v12)
    {
      v13 = *(DerivedStorage + 264);
      if (v13)
      {
        CFRelease(v13);
        v12 = 0;
        *(DerivedStorage + 264) = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 4294954514;
  }

  FigSimpleMutexUnlock();
  if (InfoResponseWithUGLAddressesUpdatedFromSenderSession)
  {
    CFRelease(InfoResponseWithUGLAddressesUpdatedFromSenderSession);
  }

  return v12;
}

uint64_t apEndpoint_CreateCommChannel(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  cf = 0;
  v14 = 0;
  v7 = endpoint_createCommChannelInternal(a1, a2, &cf, &v14);
  if (v7)
  {
    v11 = v7;
    apEndpoint_CreateCommChannel_cold_1(v7);
    goto LABEL_8;
  }

  v8 = cf;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9)
  {
    v11 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v10 = v9(v8, endpoint_handleRemoteControlSessionEvent, FigEndpoint);
  if (v10)
  {
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
  if (a3)
  {
    *a3 = v14;
    v14 = 0;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v11;
}

uint64_t endpoint_createCommChannelInternal(const void *a1, const __CFDictionary *MutableCopy, CFTypeRef *a3, CFTypeRef *a4)
{
  v46 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v44 = 0;
  cf = 0;
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", 33554462, "[%{ptr}] %###s called %'@\n", a1, "OSStatus endpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", MutableCopy);
  }

  FigSimpleMutexLock();
  if (!MutableCopy)
  {
    endpoint_createCommChannelInternal_cold_14();
    v12 = 0;
    goto LABEL_66;
  }

  if (*(DerivedStorage + 120))
  {
    v46 = -16723;
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_createCommChannelInternal_cold_1(a1, v9, v10);
    }

    v12 = 0;
    goto LABEL_78;
  }

  v11 = *(DerivedStorage + 216);
  if (v11)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  if (*(DerivedStorage + 144) != 2)
  {
    v46 = -16726;
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_createCommChannelInternal_cold_2(a1, v9, v10);
    }

    goto LABEL_78;
  }

  Int64 = CFDictionaryGetInt64();
  Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC1618]);
  if (!Value)
  {
    endpoint_createCommChannelInternal_cold_13();
    goto LABEL_78;
  }

  v15 = Value;
  v43 = a3;
  v16 = CMBaseObjectGetDerivedStorage();
  v17 = *MEMORY[0x277CC1608];
  if (!CFEqual(v15, *MEMORY[0x277CC1608]))
  {
    if (CFEqual(v15, *MEMORY[0x277CC1600]))
    {
      if (*(v16 + 48))
      {
        goto LABEL_77;
      }

      v18 = *(v16 + 40);
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v19 || !v19(v18, 49))
      {
        goto LABEL_77;
      }

      goto LABEL_23;
    }

    if (CFEqual(v15, *MEMORY[0x277CC15F8]))
    {
      if (!*(v16 + 48))
      {
        goto LABEL_77;
      }
    }

    else if (!CFEqual(v15, *MEMORY[0x277CC1610]))
    {
      goto LABEL_77;
    }

    if (APSGetFBOPropertyInt64())
    {
      goto LABEL_23;
    }

LABEL_77:
    endpoint_createCommChannelInternal_cold_12();
LABEL_78:
    MutableCopy = 0;
    goto LABEL_66;
  }

LABEL_23:
  v20 = a4;
  v21 = CFDictionaryGetInt64();
  v22 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    endpoint_createCommChannelInternal_cold_11();
    goto LABEL_66;
  }

  if (Int64 == 1)
  {
    v23 = CFEqual(v15, v17);
    v24 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    if (v23)
    {
      v25 = APSGetFBOPropertyInt64();
      v26 = 1;
      if (v25)
      {
        v26 = 2;
      }

      if (!v21)
      {
        v21 = v26;
      }

      if (v25 && v21 != 2)
      {
        endpoint_createCommChannelInternal_cold_4();
        goto LABEL_66;
      }
    }
  }

  else
  {
    v24 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  }

  v27 = APSGetFBOPropertyInt64();
  if (v21 == 1 && !v27)
  {
    endpoint_createCommChannelInternal_cold_10();
    goto LABEL_66;
  }

  if (v21 == 2 && APSGetFBOPropertyInt64())
  {
    if (IsAppleInternalBuild() && APSSettingsGetInt64())
    {
      v28 = v24[84];
      if (v28 <= 50 && (v28 != -1 || _LogCategory_Initialize()))
      {
        endpoint_createCommChannelInternal_cold_5(a1);
      }

      v29 = MEMORY[0x277CBED10];
    }

    else
    {
      v29 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(MutableCopy, @"wantsDedicatedSocket", *v29);
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v31 = *(DerivedStorage + 328);
    if (v31)
    {
      if (CFDictionaryContainsKey(v31, TypedValue))
      {
        endpoint_createCommChannelInternal_cold_6();
        goto LABEL_66;
      }
    }
  }

  CFDictionarySetInt64();
  v32 = CFGetAllocator(a1);
  v33 = APEndpointRemoteControlSessionCreate(v32, v12, *(DerivedStorage + 448), MutableCopy, v21, &v44);
  v46 = v33;
  if (v33)
  {
    endpoint_createCommChannelInternal_cold_7(v33);
    goto LABEL_66;
  }

  if (!*(DerivedStorage + 328))
  {
    v34 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v34, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 328) = Mutable;
    if (!Mutable)
    {
      endpoint_createCommChannelInternal_cold_9();
      goto LABEL_66;
    }
  }

  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v37)
  {
    v38 = 4294954514;
    v46 = -12782;
    goto LABEL_76;
  }

  v38 = v37(CMBaseObject, @"SessionID", v22, &cf);
  v46 = v38;
  if (v38)
  {
LABEL_76:
    endpoint_createCommChannelInternal_cold_8(v38);
    goto LABEL_66;
  }

  if (TypedValue && !FigCFEqual())
  {
    v42 = v24[84];
    if (v42 <= 50 && (v42 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", 33554482, "[%{ptr}] RCS [%{ptr}] sessionID %'@ does not match channelID %'@", a1, v44, cf, TypedValue);
    }

    v46 = -17606;
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CFDictionarySetValue(*(DerivedStorage + 328), cf, v44);
    if (*(DerivedStorage + 48))
    {
      FigEndpoint = FigEndpointExtendedGetFigEndpoint();
      endpoint_handleIdleStateChanged_0(FigEndpoint, 1);
    }

    v40 = v24[84];
    if (v40 <= 50 && (v40 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_createCommChannelInternal(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *, CFStringRef *)", 33554482, "New RCS [%{ptr}] with ID [%@] created for Endpoint [%{ptr}]\n", v44, cf, a1);
    }

    if (v43)
    {
      *v43 = v44;
      v44 = 0;
    }

    if (v20)
    {
      *v20 = cf;
      cf = 0;
    }
  }

LABEL_66:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v46;
}

void endpoint_handleRemoteControlSessionEvent(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v10 = 4294954514;
    goto LABEL_11;
  }

  v10 = v9(CMBaseObject, @"SessionID", 0, &cf);
  if (v10)
  {
LABEL_11:
    endpoint_handleRemoteControlSessionEvent_cold_1(v10);
    goto LABEL_14;
  }

  FigSimpleMutexLock();
  if (CFEqual(a2, *MEMORY[0x277CC1650]))
  {
    APEndpointCallRCDelegateDidReceiveDataAsync(a4, *(DerivedStorage + 128), cf, a3, *DerivedStorage, *(DerivedStorage + 400), *(DerivedStorage + 424));
  }

  else if (CFEqual(a2, *MEMORY[0x277CC1658]))
  {
    APEndpointCallRCDelegateDidCloseAsync(a4, *(DerivedStorage + 128), cf, *DerivedStorage, *(DerivedStorage + 408), *(DerivedStorage + 424));
  }

  else if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_handleRemoteControlSessionEvent(FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef, CFTypeRef)", 33554522, "[%{ptr}] Unsupported RCS event: %@\n", a4, a2);
  }

  FigSimpleMutexUnlock();
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }
}

void endpoint_handleRCSClosed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v11 = 4294954514;
LABEL_14:
    endpoint_handleRCSClosed_cold_1(a2, a4, v11);
    goto LABEL_10;
  }

  v8 = v7(CMBaseObject, @"SessionID", *MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
    v11 = v8;
    goto LABEL_14;
  }

  FigSimpleMutexLock();
  v9 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_unsubscribeAndDestroyRCS(CFStringRef, FigEndpointRemoteControlSessionRef, FigEndpointRef)", 33554482, "[%{ptr}] Unsubscribing and destroying Remote Control Session entry [%{ptr}] with ID: %@ from APEndpoint... \n", a2, a4, v9);
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 328), v9);
  if (*(DerivedStorage + 48))
  {
    endpoint_handleIdleStateChanged_0(a2, 0);
  }

  FigSimpleMutexUnlock();
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }
}

void endpoint_handleRCSFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || (FigEndpointExtendedGetClassID(), v6 = a2, !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(CMBaseObject, @"SessionID", *MEMORY[0x277CBECE8], &cf);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpoint, "void endpoint_handleRCSFailed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554492, "### [%{ptr}] Closing RCS [%{ptr}] due to failure...\n", a2, a4);
      }

      v11 = cf;
      v12 = *(*(CMBaseObjectGetVTable() + 24) + 104);
      if (v12)
      {
        v13 = v12(v6, v11);
        if (!v13)
        {
          goto LABEL_19;
        }

        v10 = v13;
      }

      else
      {
        v10 = 4294954514;
      }
    }
  }

  else
  {
    v10 = 4294954514;
  }

  APSLogErrorAt();
  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_handleRCSFailed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554522, "[%{ptr}] Failed to close RCS [%{ptr}] channel %@: %#m\n", a2, a4, cf, v10);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }
}

void endpoint_handleIdleStateChanged_0(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144) == 2)
  {
    v5 = DerivedStorage;
    v6 = *(DerivedStorage + 263);
    v7 = a2 || !endpoint_isIdle(a1);
    if (v6 != v7)
    {
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_handleIdleStateChanged_cold_1_0(v7, a1);
      }

      *(v5 + 263) = v7;
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v9 = Mutable;
        v10 = MEMORY[0x277CBED10];
        if (v7)
        {
          v10 = MEMORY[0x277CBED28];
        }

        CFDictionarySetValue(Mutable, @"IsEngaged", *v10);
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpoint, "void endpoint_postEngagedStateDidChangeNotification(FigEndpointRef, Boolean)", 33554482, "[%{ptr}] Posting engaged state did change %d\n", a1, v7, 0, 0);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        CFRelease(v9);
      }

      else
      {
        endpoint_handleIdleStateChanged_cold_2();
      }

      if (*(v5 + 262))
      {
        CFRetain(a1);
        APSDispatchAsyncFHelper();
      }

      if (v7 && !*(v5 + 48) && (*(v5 + 532) & 0x10) != 0)
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          endpoint_handleIdleStateChanged_cold_3(a1);
        }

        endpointdelegate_sendCurrentVolumeToReceiver(a1, 1u);
        *(v5 + 532) &= ~0x10u;
      }
    }
  }
}

BOOL endpoint_isIdle(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 48))
  {
    return FigCFDictionaryGetCount() == 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 160))
  {
    CFDictionaryApplyBlock();
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
    if (v2)
    {
      return 0;
    }
  }

  else
  {
    _Block_object_dispose(&v5, 8);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (*(DerivedStorage + 304))
  {
    CFSetApplyBlock();
    v1 = *(v6 + 24) == 0;
  }

  else
  {
    v1 = 1;
  }

  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_2221704FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void endpoint_deferredIdleStateChanged(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 8) && *(DerivedStorage + 262) && *(DerivedStorage + 144) == 2)
  {
    endpoint_startInactivityTimer(*a1);
  }

  else
  {
    v3 = *(DerivedStorage + 608);
    if (v3)
    {
      dispatch_source_cancel(*(DerivedStorage + 608));
      dispatch_release(v3);
      *(DerivedStorage + 608) = 0;
    }
  }

  FigSimpleMutexUnlock();
  v4 = *a1;

  CFRelease(v4);
}

uint64_t __endpoint_isAnyMediaStreamPlaying_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCFEqual();
  if (!result)
  {
    result = APSGetFBOPropertyInt64();
    *(*(*(a1 + 32) + 8) + 24) |= result != 0;
  }

  return result;
}

uint64_t __endpoint_isAnyPlaybackSessionPlaying_block_invoke(uint64_t a1, uint64_t a2)
{
  result = APSGetFBOPropertyInt64();
  *(*(*(a1 + 32) + 8) + 24) |= result != 0;
  return result;
}

void endpoint_startInactivityTimer(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    IntWithDefault = 60;
  }

  else
  {
    IntWithDefault = 480;
  }

  v5 = *(DerivedStorage + 608);
  if (v5)
  {
    dispatch_source_cancel(*(DerivedStorage + 608));
    dispatch_release(v5);
    *(v3 + 608) = 0;
  }

  if (IsAppleInternalBuild())
  {
    IntWithDefault = APSSettingsGetIntWithDefault();
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_startInactivityTimer(FigEndpointRef)", 33554482, "[%{ptr}] Starting %d-sec inactivity timer...\n", a1, IntWithDefault);
  }

  *(v3 + 608) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 576));
  CFRetain(a1);
  dispatch_set_context(*(v3 + 608), a1);
  dispatch_source_set_event_handler_f(*(v3 + 608), endpoint_inactivityTimerFired);
  dispatch_source_set_cancel_handler_f(*(v3 + 608), endpoint_inactivityTimerCancelled);
  v6 = *(v3 + 608);
  v7 = dispatch_time(0, 1000000000 * IntWithDefault);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v8 = *(v3 + 608);

  dispatch_resume(v8);
}

double endpoint_inactivityTimerFired(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 608);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 608));
    dispatch_release(v3);
    *(DerivedStorage + 608) = 0;
  }

  if (endpoint_isIdle(a1) && *(DerivedStorage + 144) == 2)
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "void endpoint_inactivityTimerFired(void *)", 33554482, "[%{ptr}] Disconnecting from %@ due to inactivity...\n", a1, *(DerivedStorage + 440));
    }

    endpoint_updateStatus(a1, 4294895020, 1);
  }

  FigSimpleMutexUnlock();
  return result;
}

void endpoint_inactivityTimerCancelled(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 440);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_inactivityTimerCancelled(void *)", 33554482, "[%{ptr}] Inactivity timer cancelled for %@...\n", a1, v4);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(a1);
}

void endpoint_callDelegateHandleFailed(uint64_t a1)
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

void __apEndpoint_handleInvalidateIncomingRCSCommand_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  if (!CMBaseObject || (v3 = CMBaseObject, (v4 = *(*(CMBaseObjectGetVTable() + 8) + 24)) == 0) || v4(v3))
  {
    __apEndpoint_handleInvalidateIncomingRCSCommand_block_invoke_cold_1();
  }

  v5 = *v1;

  CFRelease(v5);
}

uint64_t endpoint_handleSenderSessionFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_handleSenderSessionFailed_cold_1(a2, v7, v8);
  }

  CFRetain(a2);
  if (a5)
  {
    CFRetain(a5);
  }

  return APSDispatchAsyncFHelper();
}

void endpoint_deferredHandleSenderSessionFailed(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = a1[1];
  Int64 = CFDictionaryGetInt64();
  CFDictionaryGetValue(v3, @"SessionState");
  v5 = FigCFEqual();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 144) == 2)
  {
    endpoint_updateStatus(*a1, Int64, v5 == 0);
  }

  FigSimpleMutexUnlock();
  CFRelease(*a1);
  v6 = a1[1];
  if (v6)
  {

    CFRelease(v6);
  }
}

void endpoint_handleSimulateEndpointFailed(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a3, @"ReceiverSessionIsActive"))
  {
    endpoint_handleSimulateEndpointFailed_cold_1(a3, &v8);
    v7 = v8;
LABEL_8:
    endpoint_handleSimulateEndpointFailed_cold_2(DerivedStorage, a2, v7);
    return;
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 243))
  {
    v7 = 4294895024;
    FigSimpleMutexUnlock();
    goto LABEL_8;
  }

  v6 = *(DerivedStorage + 244);
  FigSimpleMutexUnlock();
  if (v6 != 2)
  {
    v7 = 4294895024;
    goto LABEL_8;
  }
}

void endpoint_handleHDMILatencyChange(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    APSHDMIVideoLatencyMs();
    v5 = FigCFDictionarySetInt32();
    if (v5)
    {
      endpoint_handleHDMILatencyChange_cold_1(v5);
    }

    else
    {
      if (!a2 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        a2 = 0;
      }

      v6 = apEndpoint_SendCommand(a2, @"setSenderDisplayLatencyMs", v4, 0, 0);
      if (v6)
      {
        endpoint_handleHDMILatencyChange_cold_2(v6);
      }
    }

    CFRelease(v4);
  }

  else
  {
    endpoint_handleHDMILatencyChange_cold_3();
  }
}

uint64_t endpointdelegate_getInitialVolumeDBAndIsMuted(uint64_t a1, float *a2, float *a3, BOOL *a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 216))
  {
    APSGetFBOPropertyDouble();
    v9 = v8;
    v10 = v9;
    if (a3)
    {
      *a3 = v9;
    }

    v11 = APSGetFBOPropertyInt64() != 0;
  }

  else
  {
    v11 = 0;
    v10 = -999.0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSGetFBOPropertyInt64())
  {
    if (*(DerivedStorage + 244) == 2 && !*(DerivedStorage + 243))
    {
      v13 = 3;
      goto LABEL_16;
    }
  }

  else
  {
    if (APSGetFBOPropertyInt64())
    {
      if (*(DerivedStorage + 244) == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 3;
      }

      goto LABEL_16;
    }

    if (!APSGetFBOPropertyInt64())
    {
      if (APSGetFBOPropertyInt64())
      {
        v13 = 35;
      }

      else if (APSGetFBOPropertyInt64())
      {
        v13 = 1;
      }

      else
      {
        v13 = 31;
      }

      goto LABEL_16;
    }
  }

  v13 = 1;
LABEL_16:
  v14 = v10;
  v15 = -20.0;
  if (v10 == -999)
  {
    v16 = 1;
  }

  else if (v14 >= -29)
  {
    v16 = (~v14 >> 29) & 4;
  }

  else
  {
    v16 = 2;
    v15 = -27.0;
  }

  if ((v16 & v13) != 0)
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "APEndpointInitialVolumeAdjustmentType endpointdelegate_getInitialVolumeDBAndIsMuted(FigEndpointRef, Float32 *, Float32 *, Boolean *)", 33554482, "[%{ptr}] <AirPlayVolume> Initial volume is zero/loud/invalid (%#{flags}). Setting volume %0.2f => default %.2f dB\n", a1, v16, &unk_22229888A, v10, v15);
    }
  }

  else
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "APEndpointInitialVolumeAdjustmentType endpointdelegate_getInitialVolumeDBAndIsMuted(FigEndpointRef, Float32 *, Float32 *, Boolean *)", 33554482, "[%{ptr}] <AirPlayVolume> Not adjusting initial volume from %0.2f dB because not required by receiver (fix type needed = %#{flags}, supported = %#{flags})\n", a1, v10, v16, &unk_22229888A, v13, &unk_22229888A);
    }

    LODWORD(v16) = 0;
    v15 = v10;
  }

  v17 = v13 & 0x30;
  *a2 = v15;
  *a4 = v11;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpointdelegate_getInitialVolumeDBAndIsMuted_cold_1(a2, a1, v16 | v17);
  }

  return v16 | v17;
}

void endpoint_updateScreenRelatedConfiguration(const void *a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  v25 = 0;
  if (!a2)
  {
    endpoint_updateScreenRelatedConfiguration_cold_4(a1, v7, v8);
    goto LABEL_42;
  }

  v9 = DerivedStorage;
  v10 = *MEMORY[0x277CBECE8];
  APSenderSessionGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, 0x28357A470, v10, &value);
  }

  APSenderSessionGetCMBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, 0x28357A490, v10, &cf);
  }

  APSenderSessionGetCMBaseObject();
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(v18, 0x28357A4B0, v10, &v25);
  }

  if (value)
  {
    if (v25)
    {
      v20 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v20, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"encoderEncryptionData", value);
      CFDictionarySetValue(Mutable, @"protectionFlags", v25);
      FigCFDictionarySetValue();
      *(v9 + 320) = Mutable;
      if (gLogCategory_APEndpoint <= 30)
      {
        if (gLogCategory_APEndpoint == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_14;
          }

          Mutable = *(v9 + 320);
        }

        LogPrintF(&gLogCategory_APEndpoint, "void endpoint_updateScreenRelatedConfiguration(FigEndpointRef, APSenderSessionRef, CFDictionaryRef)", 33554462, "[%{ptr}] PWD protection options: %1.64@\n", a1, Mutable);
      }
    }
  }

LABEL_14:
  if (*(v9 + 320) && !APSSettingsGetIntWithDefault())
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
      {
        endpoint_updateScreenRelatedConfiguration_cold_1(a1);
      }

      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (a3 && CFDictionaryContainsKey(a3, @"ScreenSource"))
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
      {
        endpoint_updateScreenRelatedConfiguration_cold_2(a1);
      }

      goto LABEL_33;
    }

LABEL_40:
    *(v9 + 273) = 0;
    goto LABEL_42;
  }

  if (FigCFDictionaryGetValue() == *MEMORY[0x277CBED28])
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
      {
        endpoint_updateScreenRelatedConfiguration_cold_3(a1);
      }

      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (!APSSettingsIsFeatureEnabled() || !APSHasUDPMirroringSenderSupport())
  {
LABEL_33:
    v22 = 0;
    goto LABEL_34;
  }

  v22 = APSGetFBOPropertyInt64() != 0;
LABEL_34:
  v23 = gLogCategory_APEndpoint;
  *(v9 + 273) = v22;
  if (v23 > 30)
  {
    goto LABEL_42;
  }

  if (v23 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_42;
    }

    v22 = *(v9 + 273);
  }

  if (v22)
  {
    v24 = "yes";
  }

  else
  {
    v24 = "no";
  }

  LogPrintF(&gLogCategory_APEndpoint, "void endpoint_updateScreenRelatedConfiguration(FigEndpointRef, APSenderSessionRef, CFDictionaryRef)", 33554462, "[%{ptr}] AVConferenceBasedMirroringAvailable: %s\n", a1, v24);
LABEL_42:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

uint64_t endpoint_setupStreams(const void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t *a5)
{
  v88 = 0;
  v89 = 0;
  v87 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v86 = 0;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setupStreams(FigEndpointRef, FigEndpointFeatures, FigEndpointFeatures, CFDictionaryRef, FigEndpointFeatures *)", 33554482, "[%{ptr}] setupStreams, features %#ll{flags} -> %#ll{flags}\n", a1, a3, &unk_222298838, a2, &unk_222298838);
  }

  if (!a3)
  {
    v11 = *(DerivedStorage + 160);
    if (v11)
    {
      CFDictionaryApplyFunction(v11, endpoint_dissociateStreamsDictionaryEntry, 0);
      v12 = *(DerivedStorage + 160);
      if (v12)
      {
        CFRelease(v12);
        *(DerivedStorage + 160) = 0;
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 160) = Mutable;
    if (!Mutable)
    {
      endpoint_setupStreams_cold_16();
      v19 = 4294950575;
      goto LABEL_104;
    }
  }

  SupportedFeatures = endpoint_getSupportedFeatures(a1, &v89);
  if (SupportedFeatures)
  {
    v19 = SupportedFeatures;
    endpoint_setupStreams_cold_1(SupportedFeatures);
    goto LABEL_104;
  }

  v15 = *(DerivedStorage + 40);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    v19 = 4294954514;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_104;
  }

  v17 = v16(v15, &v88);
  if (v17)
  {
    v19 = v17;
    goto LABEL_17;
  }

  if (!*(DerivedStorage + 208))
  {
    endpoint_setupStreams_cold_15();
    goto LABEL_133;
  }

  v78 = a5;
  v18 = (a2 & 2) == 0 || APSFeaturesHasFeature() == 0;
  v20 = (v89 & 8) == 0 || (a2 & 8) == 0;
  v21 = a3;
  if ((a2 & 0x20) != 0)
  {
    v22 = (v89 >> 5) & 1;
  }

  else
  {
    v22 = 0;
  }

  Int64 = CFDictionaryGetInt64();
  v77 = Int64 != 0;
  if (Int64)
  {
    v24 = 1;
  }

  else
  {
    v24 = v22;
  }

  v80 = v20;
  v81 = v24;
  v25 = !v18;
  if ((a3 & 2) != 0)
  {
    v25 = 0;
  }

  v79 = a4;
  if (v25 || ((v20 | (a3 >> 3)) & 1) == 0 || (a3 & 0x20) == 0 && v81)
  {
    v26 = CMBaseObjectGetDerivedStorage();
    value[0] = 0;
    v90 = 0;
    v91 = 0;
    APEndpointDescriptionGetCMBaseObject();
    v28 = v27;
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29)
    {
      v30 = *MEMORY[0x277CBECE8];
      v31 = v29(v28, @"SupportedAudioFormats", *MEMORY[0x277CBECE8], value);
      if (v31)
      {
        v19 = v31;
        v39 = a3;
      }

      else
      {
        APEndpointDescriptionGetCMBaseObject();
        v33 = v32;
        v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v34)
        {
          v35 = v34(v33, @"IsConnectedOverUSB", v30, &v91);
          if (v35)
          {
            v19 = v35;
            v39 = a3;
          }

          else
          {
            APSenderSessionGetCMBaseObject();
            v37 = v36;
            v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v38)
            {
              v39 = a3;
              v40 = v38(v37, @"ControlConnectionInterfaceLatencyHint", v30, &v90);
              if (!v40)
              {
                v41 = CFDictionaryCreateMutable(v30, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                v42 = v41;
                if (v41)
                {
                  CFDictionarySetValue(v41, @"SupportedAudioFormats", value[0]);
                  CFDictionarySetValue(v42, @"IsConnectedOverUSB", v91);
                  v43 = APSGetFBOPropertyInt64();
                  v75 = *MEMORY[0x277CBED28];
                  v74 = *MEMORY[0x277CBED10];
                  if (v43)
                  {
                    v44 = *MEMORY[0x277CBED28];
                  }

                  else
                  {
                    v44 = *MEMORY[0x277CBED10];
                  }

                  CFDictionarySetValue(v42, @"IsCarPlay", v44);
                  CFDictionarySetValue(v42, @"ConnectionLatencyHint", v90);
                  v45 = *(v26 + 40);
                  v46 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                  if (!v46 || !v46(v45, 11))
                  {
                    v75 = v74;
                  }

                  CFDictionarySetValue(v42, @"SupportRedundancyAudio", v75);
                  v47 = CFDictionaryCreateMutable(v30, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  v48 = v47;
                  if (v47)
                  {
                    v49 = *(v26 + 208);
                    if (v49)
                    {
                      CFDictionarySetValue(v47, @"NetworkClock", v49);
                      CFDictionarySetValue(v48, @"AudioEngineOptions", v42);
                      a4 = v79;
                      v50 = APEndpointCopyFromActivationOptionsOrCreateSharedContext(v79, a2, v48, 0, 0, &v87);
                      v19 = v50;
                      if (v50)
                      {
                        endpoint_setupStreams_cold_2(v50);
                      }

LABEL_56:
                      if (value[0])
                      {
                        CFRelease(value[0]);
                      }

                      if (v91)
                      {
                        CFRelease(v91);
                      }

                      if (v90)
                      {
                        CFRelease(v90);
                      }

                      if (v42)
                      {
                        CFRelease(v42);
                      }

                      if (v48)
                      {
                        CFRelease(v48);
                      }

                      v21 = v39;
                      v20 = v80;
                      if (v19)
                      {
                        endpoint_setupStreams_cold_6(v19);
                        goto LABEL_104;
                      }

                      goto LABEL_67;
                    }

                    endpoint_setupStreams_cold_3();
                    v19 = 4294949690;
LABEL_55:
                    a4 = v79;
                    goto LABEL_56;
                  }

                  endpoint_setupStreams_cold_4();
                }

                else
                {
                  endpoint_setupStreams_cold_5();
                  v48 = 0;
                }

                v19 = 4294950575;
                goto LABEL_55;
              }

              v19 = v40;
            }

            else
            {
              v39 = a3;
              v19 = 4294954514;
            }
          }
        }

        else
        {
          v39 = a3;
          v19 = 4294954514;
        }
      }
    }

    else
    {
      v39 = a3;
      v19 = 4294954514;
    }

    APSLogErrorAt();
    v42 = 0;
    v48 = 0;
    goto LABEL_55;
  }

LABEL_67:
  if (v18 || v20)
  {
    v51 = 0;
    if (!v18)
    {
      goto LABEL_69;
    }

LABEL_82:
    if ((a3 & 2) != 0)
    {
      markStreamForRemoval(&v86, *MEMORY[0x277CC1960], *(DerivedStorage + 160));
    }

    v52 = 0;
    if (!v20)
    {
      goto LABEL_71;
    }

LABEL_85:
    if ((v21 & 8) != 0)
    {
      markStreamForRemoval(&v86, *MEMORY[0x277CC1968], *(DerivedStorage + 160));
    }

    v53 = v78;
    goto LABEL_88;
  }

  v51 = *(DerivedStorage + 241) == 0;
  if (v18)
  {
    goto LABEL_82;
  }

LABEL_69:
  if ((a3 & 2) == 0)
  {
    v76 = v21;
    v70 = *MEMORY[0x277CC1960];
    v71 = CFDictionaryGetValue(v87, *MEMORY[0x277CC1960]);
    if (!v71)
    {
      endpoint_setupStreams_cold_8();
      goto LABEL_133;
    }

    v72 = CFDictionaryGetValue(v71, @"AudioEngineVendor");
    CFDictionaryGetInt64();
    v73 = endpoint_setupAudioStream(a1, v51, 0, 0, v72, v70);
    if (v73)
    {
      v19 = v73;
      endpoint_setupStreams_cold_7(v73);
      goto LABEL_104;
    }

    v52 = 2;
    v21 = v76;
    if (!v80)
    {
      goto LABEL_71;
    }

    goto LABEL_85;
  }

  v52 = 2;
  if (v20)
  {
    goto LABEL_85;
  }

LABEL_71:
  v53 = v78;
  if ((v21 & 8) == 0)
  {
    v54 = *MEMORY[0x277CC1968];
    v55 = CFDictionaryGetValue(v87, *MEMORY[0x277CC1968]);
    if (!v55)
    {
      endpoint_setupStreams_cold_11();
      goto LABEL_133;
    }

    v56 = CFDictionaryGetValue(v55, @"AudioEngineVendor");
    CFDictionaryGetInt64();
    v57 = 0;
    if (v51)
    {
      v57 = CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1960]);
    }

    v58 = endpoint_setupAudioStream(a1, v51, v57, 0, v56, v54);
    if (v58)
    {
      v19 = v58;
      endpoint_setupStreams_cold_9(v58);
      goto LABEL_104;
    }

    a4 = v79;
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_setupStreams_cold_10(a1);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v52 |= 8uLL;
LABEL_88:
  if (v81)
  {
    if ((v21 & 0x20) != 0)
    {
LABEL_92:
      v52 |= 0x20uLL;
      goto LABEL_95;
    }

    v59 = *MEMORY[0x277CC1970];
    v60 = CFDictionaryGetValue(v87, *MEMORY[0x277CC1970]);
    if (v60)
    {
      v61 = v60;
      CFDictionaryGetInt64();
      v62 = CFDictionaryGetValue(v61, @"AudioEngineVendor");
      v63 = endpoint_setupAudioStream(a1, 0, 0, v77, v62, v59);
      if (v63)
      {
        v19 = v63;
        endpoint_setupStreams_cold_12(v63);
        goto LABEL_104;
      }

      goto LABEL_92;
    }

    endpoint_setupStreams_cold_13();
LABEL_133:
    v19 = 4294949690;
    goto LABEL_104;
  }

  if ((v21 & 0x20) != 0)
  {
    markStreamForRemoval(&v86, *MEMORY[0x277CC1970], *(DerivedStorage + 160));
  }

LABEL_95:
  if ((a2 & 1) != 0 && APSFeaturesHasFeature())
  {
    if ((a3 & 1) == 0)
    {
      v64 = endpoint_setupScreenStream(a1, a4);
      if (v64)
      {
        v19 = v64;
        endpoint_setupStreams_cold_14(v64);
        goto LABEL_104;
      }
    }

    v52 |= 1uLL;
  }

  else if (a3)
  {
    markStreamForRemoval(&v86, *MEMORY[0x277CC1980], *(DerivedStorage + 160));
  }

  v19 = 0;
  if (v53)
  {
    *v53 = v52 | v89 & a2 & 4 | v89 & a2 & 0x10;
  }

LABEL_104:
  v65 = v86;
  if (v86)
  {
    v84 = 0u;
    v85 = 0u;
    *value = 0u;
    v83 = 0u;
    if (!a1 || (v66 = CFRetain(a1), v65 = v86, value[0] = v66, v86))
    {
      v65 = CFRetain(v65);
    }

    *&v83 = v65;
    v67 = *(DerivedStorage + 288);
    if (v67)
    {
      v67 = CFRetain(v67);
    }

    *(&v84 + 1) = v67;
    v68 = *(DerivedStorage + 296);
    if (v68)
    {
      v68 = CFRetain(v68);
    }

    *&v85 = v68;
    APSDispatchAsyncFHelper();
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  return v19;
}

void endpoint_postInterruptingSessionStateDidChangeNotification(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = MEMORY[0x277CBED10];
    if (a2)
    {
      v6 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsInterruptingSessionActive", *v6);
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      v7 = "yes";
      if (!a2)
      {
        v7 = "no";
      }

      LogPrintF(&gLogCategory_APEndpoint, "void endpoint_postInterruptingSessionStateDidChangeNotification(FigEndpointRef, Boolean)", 33554482, "[%{ptr}] Posting InterruptingSessionStateDidChange active=%s\n", a1, v7);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v5);
  }

  else
  {
    endpoint_postInterruptingSessionStateDidChangeNotification_cold_1();
  }
}

void endpoint_updateVideoPlaybackIsActive(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isVideoPlaybackSessionActive = endpoint_isVideoPlaybackSessionActive(a1);
  if (*(DerivedStorage + 484) != isVideoPlaybackSessionActive)
  {
    v4 = isVideoPlaybackSessionActive;
    *(DerivedStorage + 484) = isVideoPlaybackSessionActive;
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_updateVideoPlaybackIsActive_cold_1(v4, a1);
    }

    v5 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      FigCFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();

      CFRelease(v7);
    }

    else
    {
      endpoint_updateVideoPlaybackIsActive_cold_2();
    }
  }
}

void endpoint_deregisterWithBrowserController(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 24))
  {
    v3 = DerivedStorage;
    v4 = CFGetAllocator(a1);
    APEndpointDescriptionGetCMBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(v6, @"TransportDevice", v4, &cf);
      if (cf)
      {
        APBrowserControllerDeregisterEndpoint(*(v3 + 24), cf, *(v3 + 48));
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

void endpoint_deactivateInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = dispatch_semaphore_create(0);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  if (*(a1 + 17))
  {
    APSLogErrorAt();
    v25 = *(a1 + 17);
    goto LABEL_42;
  }

  v4 = (a1 + 4);
  if (a1[4])
  {
    if (qword_280FB1BF8 != -1)
    {
      endpoint_Finalize_cold_2();
    }

    if (_MergedGlobals_24)
    {
      v5 = *_MergedGlobals_24;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __endpoint_deactivateInternal_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = _MergedGlobals_24;
      block[5] = a1;
      dispatch_sync(v5, block);
    }

    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_deactivateInternal_cold_2(a1);
    }

    v6 = *(DerivedStorage + 608);
    if (v6)
    {
      dispatch_source_cancel(*(DerivedStorage + 608));
      dispatch_release(v6);
      *(DerivedStorage + 608) = 0;
    }

    if (*(a1 + 72))
    {
      v51 = 0;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_deactivateInternal_cold_3(a1);
      }

      if (!CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
      {
        endpoint_deactivateInternal_cold_4();
        v25 = -16721;
        goto LABEL_42;
      }

      endpoint_deactivateInternal_cold_7();
    }

    cf = 0;
    v57 = 0;
    APSenderSessionGetCMBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(v8, @"MC2UCToken", 0, &v57);
      if (v57)
      {
        Shared = APMulticastProbeSenderGetShared(v10, v11);
        APMulticastProbeSenderUnregister(Shared, v57, &cf);
        Count = FigCFDictionaryGetCount();
        if (Count <= 0)
        {
          endpoint_deactivateInternal_cold_6(Count, v14, v15);
        }

        else
        {
          v16 = CFDictionaryMergeDictionary();
          if (v16)
          {
            endpoint_deactivateInternal_cold_5(v16);
          }
        }

        if (v57)
        {
          CFRelease(v57);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v17 = *a1;
    if (*a1)
    {
      v17 = CFRetain(v17);
    }

    *&v53 = v17;
    v18 = *v4;
    if (*v4)
    {
      v18 = CFRetain(v18);
    }

    *(&v53 + 1) = v18;
    v19 = a1[5];
    if (v19)
    {
      v19 = CFRetain(v19);
    }

    *&v54 = v19;
    v20 = a1[12];
    if (v20)
    {
      v20 = CFRetain(v20);
    }

    *(&v54 + 1) = v20;
    v21 = a1[13];
    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *&v55 = v21;
    v22 = a1[14];
    if (v22)
    {
      v22 = CFRetain(v22);
    }

    *(&v55 + 1) = v22;
    v23 = a1[15];
    if (v23)
    {
      v23 = CFRetain(v23);
    }

    *&v56 = v23;
    *(&v56 + 1) = v3;
    dispatch_retain(v3);
    APSDispatchAsyncFHelper();
    v24 = dispatch_time(0, 4000000000);
    if (dispatch_semaphore_wait(v3, v24) && gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_deactivateInternal_cold_8();
    }

    endpoint_stopMediaRemoteAndMetadataServices(*a1, a1[11]);
    if (*(a1 + 128))
    {
      endpoint_deactivateInternal_cold_9(a1, a1 + 4, &cf);
      v25 = cf;
      goto LABEL_42;
    }
  }

  else
  {
    endpoint_deactivateInternal_cold_10();
  }

  v25 = 0;
LABEL_42:
  if (a1[4])
  {
    if (a1[14])
    {
      APSGetCPULoadAverage();
      CFDictionarySetDouble();
      CFDictionarySetInt64();
      APSRTCReportingAgentSendEvent();
      if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_deactivateInternal_cold_11(a1, (a1 + 14), v26);
      }
    }
  }

  v27 = a1[17];
  if (v27)
  {
    cf = *a1;
    v44 = *(a1 + 3);
    v46 = v27;
    v45 = v25;
    v47 = a1[18];
    CFRetain(cf);
    APSDispatchAsyncFHelper();
  }

  if (!v25 && !FigCFEqual())
  {
    cf = 0;
    v28 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v28, a1[7], a1[6], &cf);
    v29 = CFGetAllocator(*a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v29, 0, cf);
    v31 = MutableCopy;
    v32 = MEMORY[0x277CBED28];
    if (!*(a1 + 64))
    {
      v32 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(MutableCopy, @"WasAutoconnected", *v32);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v31)
    {
      CFRelease(v31);
    }
  }

  if (*(a1 + 65))
  {
    endpoint_postInterruptingSessionStateDidChangeNotification(*a1, 0);
  }

  FigSimpleMutexLock();
  endpoint_postIsInUseDidChangeNotification(*a1, *(a1 + 64));
  FigSimpleMutexUnlock();
  v33 = *(DerivedStorage + 616);
  if (v33)
  {
    dispatch_source_cancel(*(DerivedStorage + 616));
    dispatch_release(v33);
    *(DerivedStorage + 616) = 0;
  }

  CFRelease(*a1);
  v34 = a1[1];
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = a1[4];
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = a1[5];
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = a1[3];
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = a1[11];
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = a1[12];
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = a1[13];
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = a1[14];
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = a1[15];
  if (v42)
  {
    CFRelease(v42);
  }

  dispatch_release(v3);
}

void endpoint_postStreamsChangedNotification(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  v8 = CFGetAllocator(a1);
  StreamsChangedNotificationPayload = APEndpointCreateStreamsChangedNotificationPayload(v8, a2, a3, a4, &cf);
  if (StreamsChangedNotificationPayload)
  {
    endpoint_postStreamsChangedNotification_cold_1(StreamsChangedNotificationPayload);
  }

  else
  {
    v10 = MEMORY[0x277CC0D90];
    if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      v11 = "adding";
      if (!a4)
      {
        v11 = "removing";
      }

      LogPrintF(&gLogCategory_APEndpoint, "void endpoint_postStreamsChangedNotification(FigEndpointRef, FigEndpointFeatures, uint64_t, Boolean)", 33554462, "[%{ptr}] Notifying %@ %s features %#ll{flags}\n", a1, *v10, v11, a2, &unk_222298838);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void endpoint_createAudioHALDevices(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a1[1] == *(DerivedStorage + 128) && *(DerivedStorage + 144) == 2)
  {
    if (!*(DerivedStorage + 241))
    {
      v3 = a1[2];
      if ((v3 & 2) != 0)
      {
        endpoint_createAudioHALDevice(*a1, *MEMORY[0x277CC1960]);
        v3 = a1[2];
      }

      if ((v3 & 0x20) != 0)
      {
        endpoint_createAudioHALDevice(*a1, *MEMORY[0x277CC1970]);
      }
    }
  }

  else if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_createAudioHALDevices_cold_1();
  }

  FigSimpleMutexUnlock();
  v4 = *a1;

  CFRelease(v4);
}

uint64_t endpoint_dissociateStreamsDictionaryEntry(uint64_t a1, uint64_t a2)
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

uint64_t endpoint_setupAudioStream(const void *a1, int a2, const void *a3, int a4, const void *a5, const void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  cf = 0;
  if (!a6)
  {
    endpoint_setupAudioStream_cold_8();
    return 4294950576;
  }

  v13 = DerivedStorage;
  v14 = CFGetTypeID(a6);
  if (v14 == CFStringGetTypeID())
  {
    v15 = CFEqual(a6, *MEMORY[0x277CC1968]);
    v16 = MEMORY[0x277CBECE8];
    if (v15)
    {
      v27 = CMBaseObjectGetDerivedStorage();
      v28 = *v16;
      Mutable = CFDictionaryCreateMutable(*v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v19 = Mutable;
        v30 = *(v27 + 280);
        if (v30)
        {
          CFDictionarySetValue(Mutable, @"EventRecorder", v30);
        }

        v31 = endpoint_copyClusterInfo(a1);
        FigCFDictionarySetValue();
        if (v31)
        {
          CFRelease(v31);
        }

        v32 = CFGetAllocator(a1);
        v33 = APEndpointStreamBufferedAudioCreate(v32, *(v13 + 440), *(v13 + 448), v19, *(v13 + 216), a5, *(v13 + 40), &cf);
        if (v33)
        {
          v39 = v33;
          endpoint_setupAudioStream_cold_2(v33);
          goto LABEL_58;
        }

        if (!a2)
        {
LABEL_48:
          if (cf)
          {
            v40 = CFRetain(cf);
          }

          else
          {
            v40 = 0;
          }

          value = v40;
LABEL_52:
          v44 = endpoint_addEndpointStreamNotificationListeners(a1, a6, v40);
          if (v44)
          {
            v39 = v44;
            endpoint_setupAudioStream_cold_6(v44);
          }

          else
          {
            CFDictionarySetValue(*(v13 + 160), a6, value);
            if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setupAudioStream(FigEndpointRef, Boolean, FigEndpointStreamRef, Boolean, APAudioFormat, APAudioEngineVendorRef, CFStringRef)", 33554482, "[%{ptr}] Set up %@ stream [%{ptr}], wrapper [%{ptr}]\n", a1, a6, cf, value);
            }

            v39 = 0;
          }

          goto LABEL_58;
        }

        goto LABEL_23;
      }

      endpoint_setupAudioStream_cold_3();
    }

    else
    {
      v17 = CMBaseObjectGetDerivedStorage();
      v48 = *v16;
      v18 = CFDictionaryCreateMutable(*v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v18)
      {
        v19 = v18;
        v46 = a5;
        v47 = a2;
        v20 = FigCFEqual();
        v21 = *MEMORY[0x277CBED28];
        v22 = *MEMORY[0x277CBED10];
        if (v20)
        {
          v23 = *MEMORY[0x277CBED28];
        }

        else
        {
          v23 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v19, @"UsingScreen", v23);
        if (*(v17 + 481))
        {
          v24 = v21;
        }

        else
        {
          v24 = v22;
        }

        CFDictionarySetValue(v19, @"StartSilentAudio", v24);
        if (a4)
        {
          v25 = v21;
        }

        else
        {
          v25 = v22;
        }

        CFDictionarySetValue(v19, @"ForceEnableLLStream", v25);
        v26 = CMBaseObjectGetDerivedStorage();
        if (v26[273])
        {
          APSScreenMediaPresentationUDPLatencyMs();
        }

        else
        {
          APSScreenMediaPresentationLatencyMs();
        }

        FigCFDictionarySetInt32();
        if (v26[272])
        {
          if (v26[240])
          {
            v35 = v21;
          }

          else
          {
            v35 = v22;
          }

          CFDictionarySetValue(v19, @"IsMediaPresentation", v35);
        }

        v36 = *(v17 + 280);
        if (v36)
        {
          CFDictionarySetValue(v19, @"EventRecorder", v36);
        }

        v37 = endpoint_copyClusterInfo(a1);
        FigCFDictionarySetValue();
        if (APSGetFBOPropertyInt64())
        {
          v38 = *(v17 + 244) == 2;
        }

        else
        {
          v38 = 0;
        }

        if (APSSettingsGetIntWithDefault())
        {
          if (v38)
          {
            v41 = v21;
          }

          else
          {
            v41 = v22;
          }

          CFDictionarySetValue(v19, @"DisableRemoteAudioRender", v41);
        }

        if (v37)
        {
          CFRelease(v37);
        }

        v42 = CFGetAllocator(a1);
        v43 = APEndpointStreamAudioCreate(v42, *(v13 + 440), *(v13 + 448), a6, v19, *(v13 + 216), v46, *(v13 + 208), *(v13 + 40), &cf);
        if (v43)
        {
          v39 = v43;
          endpoint_setupAudioStream_cold_4(v43);
          goto LABEL_58;
        }

        v28 = v48;
        if (!v47)
        {
          goto LABEL_48;
        }

LABEL_23:
        if (a3)
        {
          v34 = APEndpointStreamInterruptingWrapperCreate(v28, cf, a3, *(v13 + 192), &value);
        }

        else
        {
          v34 = APEndpointStreamInterruptibleWrapperCreate(v28, cf, *(v13 + 192), &value);
        }

        v39 = v34;
        if (!v34)
        {
          v40 = value;
          goto LABEL_52;
        }

        endpoint_setupAudioStream_cold_5(v34);
LABEL_58:
        CFRelease(v19);
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_60;
      }

      endpoint_setupAudioStream_cold_7();
    }

    v39 = 4294950575;
  }

  else
  {
    endpoint_setupAudioStream_cold_1();
    v39 = 4294950576;
  }

LABEL_60:
  if (value)
  {
    CFRelease(value);
  }

  return v39;
}

void markStreamForRemoval(__CFDictionary **a1, void *key, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (key)
    {
      if (theDict)
      {
        if (*a1 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*a1 = Mutable) != 0))
        {
          Value = CFDictionaryGetValue(theDict, key);
          if (Value)
          {
            v8 = Value;
            v9 = *a1;

            CFDictionarySetValue(v9, key, v8);
          }
        }

        else
        {
          markStreamForRemoval_cold_1();
        }
      }

      else
      {
        markStreamForRemoval_cold_2();
      }
    }

    else
    {
      markStreamForRemoval_cold_3();
    }
  }

  else
  {
    markStreamForRemoval_cold_4();
  }
}

uint64_t endpoint_setupScreenStream(const void *a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v5 = CFStringCreateF(0, "[%{ptr}]", a1);
  v6 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpoint_setupScreenStream_cold_5(&v27);
    v20 = v27;
    goto LABEL_35;
  }

  if (a2)
  {
    v8 = CFDictionaryGetValue(a2, *MEMORY[0x277CC09B0]);
    if (v8)
    {
      CFDictionarySetValue(Mutable, @"clientPID", v8);
    }

    v9 = CFDictionaryGetValue(a2, @"ScreenSource");
    if (v9)
    {
      CFDictionarySetValue(Mutable, @"ScreenSource", v9);
    }

    v10 = CFDictionaryGetValue(a2, @"ScreenProcessor");
    if (v10)
    {
      CFDictionarySetValue(Mutable, @"ScreenProcessor", v10);
    }

    v11 = CFDictionaryGetValue(a2, @"ScreenOverrides");
    if (v11)
    {
      CFDictionarySetValue(Mutable, @"ScreenOverrides", v11);
    }

    v12 = CFDictionaryGetValue(a2, *MEMORY[0x277CC09E0]);
    if (v12 && *(DerivedStorage + 272))
    {
      CFDictionarySetValue(Mutable, @"IsMediaPresentation", v12);
    }
  }

  v13 = *(DerivedStorage + 472);
  if (v13)
  {
    CFDictionarySetValue(Mutable, @"ScreenUsageMode", v13);
  }

  v14 = *MEMORY[0x277CBED28];
  v15 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 272))
  {
    v16 = *MEMORY[0x277CBED28];
  }

  else
  {
    v16 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"IsMediaPresentationModeAvailable", v16);
  if (*(DerivedStorage + 240))
  {
    v17 = v14;
  }

  else
  {
    v17 = v15;
  }

  CFDictionarySetValue(Mutable, @"IsPerAppDisplay", v17);
  CFDictionarySetValue(Mutable, @"LogPrefix", v5);
  FigCFDictionarySetValue();
  if (*(DerivedStorage + 273))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_setupScreenStream_cold_1(a1);
    }

    v18 = CFGetAllocator(a1);
    v19 = APEndpointStreamScreenUDPCreate(v18, Mutable, *(DerivedStorage + 440), *(DerivedStorage + 216), *(DerivedStorage + 40), 0, *(DerivedStorage + 208), 0, &value);
    if (v19)
    {
      v20 = v19;
      endpoint_setupScreenStream_cold_2(v19);
      goto LABEL_35;
    }
  }

  else
  {
    v21 = CFGetAllocator(a1);
    v22 = APEndpointStreamScreenCreate(v21, Mutable, *(DerivedStorage + 440), *(DerivedStorage + 216), *(DerivedStorage + 40), 0, *(DerivedStorage + 208), &value);
    if (v22)
    {
      v20 = v22;
      endpoint_setupScreenStream_cold_3(v22);
      goto LABEL_35;
    }
  }

  v23 = *MEMORY[0x277CC1980];
  v24 = endpoint_addEndpointStreamNotificationListeners(a1, *MEMORY[0x277CC1980], value);
  if (v24)
  {
    v20 = v24;
    endpoint_setupScreenStream_cold_4(v24);
  }

  else
  {
    CFDictionarySetValue(*(DerivedStorage + 160), v23, value);
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_setupScreenStream(FigEndpointRef, CFDictionaryRef)", 33554482, "[%{ptr}] Set up %@ stream [%{ptr}]\n", a1, v23, value);
    }

    v20 = 0;
  }

LABEL_35:
  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v20;
}

void endpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession(void **context)
{
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_cold_1(context);
  }

  v2 = context[2];
  if (v2)
  {
    CFDictionaryApplyFunction(v2, endpoint_suspendAndDissociateStreamsDictionaryEntry, context);
  }

  v3 = context[4];
  if (v3)
  {
    CFDictionaryApplyFunction(v3, endpoint_invalidateRCS, *context);
  }

  if (context[3])
  {
    CFSetApplyBlock();
  }

  v4 = context[1];
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v5)
    {
      v5(v4, 0, 0, 0, 0);
    }

    v6 = context[1];
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v7)
    {
      v7(v6);
    }

    v8 = context[6];
    v30 = 0;
    cf = 0;
    if (!v8)
    {
      goto LABEL_26;
    }

    CMBaseObjectGetDerivedStorage();
    if (APSGetFBOPropertyInt64())
    {
      APSenderSessionGetCMBaseObject();
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v11 || (v11(v10, @"ReceiverSuppliedRTCStats", *MEMORY[0x277CBECE8], &cf), !cf))
      {
LABEL_26:
        APSenderSessionGetCMBaseObject();
        if (v19)
        {
          v20 = v19;
          v21 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v21)
          {
            v21(v20);
          }
        }

        v22 = context[1];
        if (v22)
        {
          CFRelease(v22);
        }

        goto LABEL_31;
      }

      v12 = CFGetTypeID(cf);
      if (v12 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(cf);
        if (Count >= 1)
        {
          v14 = Count;
          v15 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(cf, v15);
            CFDataGetBytePtr(ValueAtIndex);
            CFDataGetLength(ValueAtIndex);
            CFDictionaryGetTypeID();
            v17 = CFCreateWithPlistBytes();
            if (!v17)
            {
              break;
            }

            v18 = v17;
            APSRTCReportingAgentSendOfflineEvent();
            CFRelease(v18);
            if (v14 == ++v15)
            {
              goto LABEL_24;
            }
          }

          endpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_cold_2();
        }
      }
    }

LABEL_24:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_26;
  }

LABEL_31:
  v23 = context[2];
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = context[3];
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = context[4];
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = context[5];
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = context[6];
  if (v27)
  {
    CFRelease(v27);
  }

  if (*context)
  {
    CFRelease(*context);
  }

  v28 = context[7];
  if (v28)
  {
    dispatch_semaphore_signal(v28);
    dispatch_release(context[7]);
  }
}

uint64_t endpoint_addEndpointStreamNotificationListeners(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 40);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v6)
  {
    v7 = v6(v5, 88) == 0;
  }

  else
  {
    v7 = 1;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v8 = FigNotificationCenterAddWeakListener();
  if (v8)
  {
    v15 = v8;
    endpoint_addEndpointStreamNotificationListeners_cold_1(v8);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v9 = FigNotificationCenterAddWeakListener();
    if (v9)
    {
      v15 = v9;
      endpoint_addEndpointStreamNotificationListeners_cold_2(v9);
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v10 = FigNotificationCenterAddWeakListener();
      if (v10)
      {
        v15 = v10;
        endpoint_addEndpointStreamNotificationListeners_cold_3(v10);
      }

      else
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v11 = FigNotificationCenterAddWeakListener();
        if (v11)
        {
          v15 = v11;
          endpoint_addEndpointStreamNotificationListeners_cold_4(v11);
        }

        else if (v7 || !FigCFEqual())
        {
          return 0;
        }

        else
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v12 = FigNotificationCenterAddWeakListener();
          if (v12)
          {
            v15 = v12;
            endpoint_addEndpointStreamNotificationListeners_cold_5(v12);
          }

          else
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v13 = FigNotificationCenterAddWeakListener();
            v15 = v13;
            if (v13)
            {
              endpoint_addEndpointStreamNotificationListeners_cold_6(v13);
            }

            else
            {
              endpoint_handleStreamBadgingFormatInfoChanged(v13, a1, v14, a3);
            }
          }
        }
      }
    }
  }

  return v15;
}

void endpoint_handleStreamTimelineEstablished(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_handleStreamTimelineEstablished(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Stream [%{ptr}] timeline established.\n", a2, a4);
  }

  CFRetain(a2);
  v7 = *(DerivedStorage + 576);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __endpoint_handleStreamTimelineEstablished_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a2;
  dispatch_async(v7, block);
}

double endpoint_handleStreamIsPlayingDidChange(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = CFDictionaryGetInt64() != 0;
  endpoint_handleIdleStateChanged_0(a2, v6);

  FigSimpleMutexUnlock();
  return result;
}

void endpoint_handleStreamBadgingFormatInfoChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 40);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v6)
  {
    v6(v5, 89);
  }

  v19 = 0;
  v18 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v15 = 4294954514;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = v8(CMBaseObject, @"ActiveBadgingFormatInfo", *MEMORY[0x277CBECE8], &v19);
  if (v10)
  {
    v15 = v10;
    goto LABEL_14;
  }

  if (v19 && (Enum = APSBadgingFormatInfoTypeGetEnum(), Enum))
  {
    endpoint_handleStreamBadgingFormatInfoChanged_cold_1(Enum, &v19, a2, v17);
    v15 = LODWORD(v17[0]);
  }

  else
  {
    v18 = APSBadgingFormatInfoTypeResolve();
    Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = FigCFDictionarySetUInt32();
      v15 = v14;
      if (v14)
      {
        endpoint_handleStreamBadgingFormatInfoChanged_cold_2(v14);
      }

      else
      {
        if (a2)
        {
          CFRetain(a2);
        }

        CFRetain(v13);
        global_queue = dispatch_get_global_queue(21, 0);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __endpoint_updateBadgingFormatInfo_block_invoke;
        v17[3] = &__block_descriptor_48_e5_v8__0l;
        v17[4] = a2;
        v17[5] = v13;
        dispatch_async(global_queue, v17);
      }

      CFRelease(v13);
    }

    else
    {
      endpoint_handleStreamBadgingFormatInfoChanged_cold_3();
      v15 = 4294960568;
    }
  }

LABEL_15:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v15)
  {
    endpoint_handleStreamBadgingFormatInfoChanged_cold_4(v15);
  }
}

void __endpoint_handleStreamTimelineEstablished_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 600))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      __endpoint_handleStreamTimelineEstablished_block_invoke_cold_1(a1);
    }

    APMetadataSenderSendInitialMetadata(*(*(a1 + 32) + 600));
  }

  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __endpoint_updateBadgingFormatInfo_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v4)
  {
    v4(v2, @"updateBadgingFormatInfo", v3, 0, 0);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t endpoint_invalidateRCS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "void endpoint_invalidateRCS(const void *, const void *, void *)", 33554482, "[%{ptr}] Invalidating Remote Control Session entry with ID: %@ from APEndpoint...\n", a3, a1);
  }

  result = FigEndpointRemoteControlSessionGetCMBaseObject();
  if (result)
  {
    v6 = result;
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    result = VTable + 8;
    v9 = *(v8 + 24);
    if (v9)
    {

      return v9(v6);
    }
  }

  return result;
}

uint64_t endpoint_isVideoPlaybackSessionActive(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144) != 2)
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 304);
  if (!v3)
  {
    return 0;
  }

  Count = CFSetGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  CFSetGetValues(*(v2 + 304), v6);
  v7 = 0;
  while (1)
  {
    v8 = APSGetFBOPropertyInt64();
    v9 = APSGetFBOPropertyInt64();
    if (v8 && v9 == 0)
    {
      break;
    }

    if (v5 == ++v7)
    {
      v11 = 0;
      goto LABEL_14;
    }
  }

  v11 = 1;
LABEL_14:
  free(v6);
  return v11;
}

uint64_t endpoint_logEventInterval(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!a4)
  {
    return endpoint_logEventInterval_cold_1();
  }

  result = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  if (gLogCategory_APEndpoint <= 40)
  {
    v6 = result;
    if (gLogCategory_APEndpoint != -1)
    {
      return LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_logEventInterval(APSEventRecorderRef, APSEventRecorderEvent, APSEventRecorderEvent, char *)", 33554472, "| %-40s: %lld ms\n", a4, v6);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_logEventInterval(APSEventRecorderRef, APSEventRecorderEvent, APSEventRecorderEvent, char *)", 33554472, "| %-40s: %lld ms\n", a4, v6);
    }
  }

  return result;
}

void endpoint_logEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    APSEventRecorderGetEventTimeRecursive();
    StringWithEventRecorderTime = APSEventRecorderCreateStringWithEventRecorderTime();
    if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_logEvent(APSEventRecorderRef, APSEventRecorderEvent, char *)", 33554472, "| %-40s: %@\n", a3, StringWithEventRecorderTime);
    }

    if (StringWithEventRecorderTime)
    {

      CFRelease(StringWithEventRecorderTime);
    }
  }

  else
  {
    endpoint_logEvent_cold_1();
  }
}

uint64_t __endpoint_stopListeningToSenderSessionAndStreamsNotifications_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 40);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    v4 = v3(v2, 88) == 0;
  }

  else
  {
    v4 = 1;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  result = FigNotificationCenterRemoveWeakListener();
  if (!v4)
  {
    result = FigCFEqual();
    if (result)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterRemoveWeakListener();
    }
  }

  return result;
}

uint64_t endpoint_unsubscribeRCS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  result = FigNotificationCenterRemoveWeakListener();
  if (gLogCategory_APEndpoint <= 50)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return LogPrintF(&gLogCategory_APEndpoint, "void endpoint_unsubscribeRCS(const void *, const void *, void *)", 33554482, "[%{ptr}] Unsubscribed Remote Control Session [%{ptr}]", a3, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APEndpoint, "void endpoint_unsubscribeRCS(const void *, const void *, void *)", 33554482, "[%{ptr}] Unsubscribed Remote Control Session [%{ptr}]", a3, a2);
    }
  }

  return result;
}

uint64_t endpoint_unsubscribePlaybackSession(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

double endpoint_handlePlaybackSessionActivationStateChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpoint_updateCurrentVolumeControlType(a2);
  endpoint_updateIsVolumeAndMuteControlSupported(a2);
  endpoint_updateVideoPlaybackIsActive(a2);

  FigSimpleMutexUnlock();
  return result;
}

double endpoint_handlePlaybackSessionIsPlayingDidChange(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = CFDictionaryGetInt64() != 0;
  endpoint_handleIdleStateChanged_0(a2, v6);

  FigSimpleMutexUnlock();
  return result;
}

void endpoint_handleMediaControlConnectedStateChanged(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_handleMediaControlConnectedStateChanged_cold_1(a2, v7, v8);
    if (a5)
    {
      goto LABEL_5;
    }
  }

  else if (a5)
  {
LABEL_5:
    Int64 = CFDictionaryGetInt64();
    v11 = CFDictionaryGetInt64() != 0;
    FigSimpleMutexLock();
    endpoint_updateStatus(a2, Int64, 1);
    *(DerivedStorage + 312) = v11;
    FigSimpleMutexUnlock();
    return;
  }

  endpoint_handleMediaControlConnectedStateChanged_cold_3();
}

uint64_t endpoint_createAudioHALDevice(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetValue(*(DerivedStorage + 160), a2);
  if (result)
  {
    v6 = result;
    v7 = *MEMORY[0x277CC1960];
    if (CFEqual(a2, *MEMORY[0x277CC1960]))
    {
      result = FigCFEqual();
      v8 = kAPHALAudioDeviceCreationOptionDeviceType_Screen;
      if (!result)
      {
        v8 = kAPHALAudioDeviceCreationOptionDeviceType_Audio;
      }
    }

    else
    {
      result = CFEqual(a2, *MEMORY[0x277CC1970]);
      if (!result)
      {
LABEL_14:
        if (gLogCategory_APEndpoint <= 90)
        {
          if (gLogCategory_APEndpoint != -1)
          {
            return LogPrintF(&gLogCategory_APEndpoint, "void endpoint_createAudioHALDevice(FigEndpointRef, CFStringRef)", 33554522, "[%{ptr}] Skipping audio HAL device creation because we can't decide the audio device type for audio stream type %@.\n", a1, a2);
          }

          result = _LogCategory_Initialize();
          if (result)
          {
            return LogPrintF(&gLogCategory_APEndpoint, "void endpoint_createAudioHALDevice(FigEndpointRef, CFStringRef)", 33554522, "[%{ptr}] Skipping audio HAL device creation because we can't decide the audio device type for audio stream type %@.\n", a1, a2);
          }
        }

        return result;
      }

      v8 = kAPHALAudioDeviceCreationOptionDeviceType_LowLatencyAudio;
    }

    v9 = *v8;
    if (*v8)
    {
      v10 = CFEqual(a2, v7);
      if (v10)
      {
        v11 = APSGetFBOPropertyInt64() == 0;
      }

      else
      {
        v11 = 0;
      }

      if (APSSettingsIsFeatureEnabled() && FigCFEqual() && !FigCFEqual())
      {
        Value = CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1968]);
      }

      else
      {
        Value = 0;
      }

      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpoint, "void endpoint_createAudioHALDevice(FigEndpointRef, CFStringRef)", 33554482, "[%{ptr}] Creating audio HAL device (type: %@) %'@ for %@ stream.\n", a1, v9, *(DerivedStorage + 440), a2);
      }

      v13 = *(DerivedStorage + 440);
      v14 = *(DerivedStorage + 200);
      if (FigCFEqual())
      {
        v15 = 75;
      }

      else
      {
        v15 = 0;
      }

      CMBaseObjectGetDerivedStorage();
      APSVolumeConvertSliderValueToDB();
      result = APEndpointTriggerAudioHALDeviceCreationEx(a1, v6, Value, v13, v9, v14, v15, v10, v16, v11);
      if (result)
      {
        return endpoint_createAudioHALDevice_cold_1(result);
      }

      return result;
    }

    goto LABEL_14;
  }

  if (gLogCategory_APEndpoint <= 90)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return LogPrintF(&gLogCategory_APEndpoint, "void endpoint_createAudioHALDevice(FigEndpointRef, CFStringRef)", 33554522, "[%{ptr}] Skipping audio HAL device creation because audio stream of type %@ has't been set up.\n", a1, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APEndpoint, "void endpoint_createAudioHALDevice(FigEndpointRef, CFStringRef)", 33554522, "[%{ptr}] Skipping audio HAL device creation because audio stream of type %@ has't been set up.\n", a1, a2);
    }
  }

  return result;
}

uint64_t apEndpoint_BorrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_BorrowScreen(FigEndpointExtendedRef, CFStringRef, CFStringRef)", 33554472, "[%{ptr}] Client %'@ borrowing screen for %'@ (isPerAppDisplay=%d)\n", a1, a2, a3, *(DerivedStorage + 240));
  }

  if (*(DerivedStorage + 120))
  {
    apEndpoint_BorrowScreen_cold_1();
    Value = 4294950573;
    goto LABEL_13;
  }

  if (*(DerivedStorage + 144) != 2)
  {
    goto LABEL_12;
  }

  if (!*(DerivedStorage + 240))
  {
    goto LABEL_12;
  }

  v7 = *(DerivedStorage + 160);
  if (!v7)
  {
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v7, *MEMORY[0x277CC1980]);
  if (Value)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v9(Value, 0, 0, 0);
    }

LABEL_12:
    Value = 0;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return Value;
}

uint64_t apEndpoint_UnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_UnborrowScreen(FigEndpointExtendedRef, CFStringRef, CFStringRef)", 33554472, "[%{ptr}] Client %'@ unborrowing screen for %'@ (isPerAppDisplay=%d)\n", a1, a2, a3, *(DerivedStorage + 240));
  }

  if (*(DerivedStorage + 120))
  {
    apEndpoint_UnborrowScreen_cold_1();
    Value = 4294950573;
    goto LABEL_13;
  }

  if (*(DerivedStorage + 144) != 2)
  {
    goto LABEL_12;
  }

  if (!*(DerivedStorage + 240))
  {
    goto LABEL_12;
  }

  v7 = *(DerivedStorage + 160);
  if (!v7)
  {
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v7, *MEMORY[0x277CC1980]);
  if (Value)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v9(Value, 0, 0, 0);
    }

LABEL_12:
    Value = 0;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return Value;
}

uint64_t apEndpoint_DuckAudio(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_DuckAudio(FigEndpointExtendedRef, CFDictionaryRef)", 33554482, "[%{ptr}] DuckAudio %@\n", a1, a2, 0);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (CFEqual(TypedValue, *MEMORY[0x277CC0B98]))
    {
      v8 = @"duckAudio";
    }

    else
    {
      if (!CFEqual(TypedValue, *MEMORY[0x277CC0BA0]))
      {
        v13 = -16720;
        goto LABEL_18;
      }

      v8 = @"unduckAudio";
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v9 = CFDictionarySetDouble();
      v13 = v9;
      if (v9)
      {
        apEndpoint_DuckAudio_cold_2(v9);
        goto LABEL_16;
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v10 = CFDictionarySetDouble();
      v13 = v10;
      if (v10)
      {
        apEndpoint_DuckAudio_cold_3(v10);
        goto LABEL_16;
      }
    }

    if (endpoint_isInLocalCluster(FigEndpoint))
    {
      FigSimpleMutexLock();
      v13 = apEndpoint_sendCommandInternal(FigEndpoint, v8, v6, 0, 0);
      FigSimpleMutexUnlock();
      v12 = v13;
      if (v13)
      {
        if (gLogCategory_APEndpoint > 90)
        {
          goto LABEL_18;
        }

        if (gLogCategory_APEndpoint == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_15;
          }

          v12 = v13;
        }

        LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_DuckAudio(FigEndpointExtendedRef, CFDictionaryRef)", 33554522, "### [%{ptr}] DuckAudio send failed err=%#m\n", a1, v12);
        goto LABEL_15;
      }

      if (gLogCategory_APEndpoint > 50)
      {
        goto LABEL_16;
      }

      if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
      {
        apEndpoint_DuckAudio_cold_4(a1);
      }
    }

LABEL_15:
    if (!v13)
    {
LABEL_16:
      CFRelease(v6);
      return v13;
    }

LABEL_18:
    APSLogErrorAt();
    goto LABEL_16;
  }

  apEndpoint_DuckAudio_cold_5();
  return 4294950575;
}

uint64_t apEndpoint_SendData(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    apEndpoint_SendData_cold_4();
    v18 = -16720;
LABEL_16:
    v17 = 1;
    goto LABEL_8;
  }

  v11 = *(DerivedStorage + 328);
  if (!v11)
  {
    apEndpoint_SendData_cold_3();
    v18 = -16726;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v11, a2);
  if (!Value)
  {
    apEndpoint_SendData_cold_2();
    v18 = -16725;
    goto LABEL_16;
  }

  v13 = Value;
  v14 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040139F2759uLL);
  if (!v14)
  {
    apEndpoint_SendData_cold_1();
    v18 = -16721;
    goto LABEL_16;
  }

  v15 = v14;
  *v14 = CFRetain(a1);
  v15[1] = CFRetain(a2);
  v15[2] = a4;
  v15[3] = a5;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v16(v13, a3, apEndpoint_rcsSendMessageCompletion, v15);
  }

  v17 = 0;
  v18 = 0;
LABEL_8:
  FigSimpleMutexUnlock();
  if (a4 && v17)
  {
    APEndpointCallRCSendDataCompletionAsync(a1, a2, v18, *DerivedStorage, a4, a5);
  }

  return 0;
}

uint64_t apEndpoint_CloseCommChannel(uint64_t a1, const void *a2)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    apEndpoint_CloseCommChannel_cold_3();
LABEL_16:
    v9 = 4294950576;
    goto LABEL_13;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_CloseCommChannel(FigEndpointExtendedRef, CFStringRef)", 33554482, "Closing RCS with ID: [%@] for endpoint: [%{ptr}]\n", a2, a1);
  }

  v5 = *(DerivedStorage + 328);
  if (!v5)
  {
    apEndpoint_CloseCommChannel_cold_2();
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v5, a2);
  if (!Value)
  {
    apEndpoint_CloseCommChannel_cold_1();
    v9 = 4294950571;
    goto LABEL_13;
  }

  v7 = Value;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v9 = 4294954514;
LABEL_12:
    APSLogErrorAt();
    goto LABEL_13;
  }

  v9 = v8(v7);
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t apEndpoint_AcquireAndCopyResource(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_AcquireAndCopyResource(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] Resource '%@' requested.\n", FigEndpoint, a2);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 144) != 2)
  {
    v13 = 4294949690;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    v9 = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v10 = v9;
      Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC09A8]);
      if (Value)
      {
        v12 = Value;
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_acquireAndCopyEndpointStream(FigEndpointRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] %@ stream requested.\n", FigEndpoint, v12);
        }

        v14 = *(v10 + 160);
        if (v14)
        {
          v15 = CFDictionaryGetValue(v14, v12);
          if (v15 && (v16 = CFRetain(v15)) != 0)
          {
            v13 = 0;
            *a4 = v16;
          }

          else
          {
            apEndpoint_AcquireAndCopyResource_cold_1(FigEndpoint, v12, &v18);
            v13 = v18;
          }
        }

        else
        {
          apEndpoint_AcquireAndCopyResource_cold_2();
          v13 = 4294950571;
        }

        goto LABEL_23;
      }

      apEndpoint_AcquireAndCopyResource_cold_3();
    }

    else
    {
      apEndpoint_AcquireAndCopyResource_cold_4();
    }

    v13 = 4294950576;
    goto LABEL_23;
  }

  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_AcquireAndCopyResource(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554522, "### [%{ptr}] Unsupported resource type '%@' requested.\n", FigEndpoint, a2);
  }

  v13 = 4294950570;
LABEL_23:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t apEndpoint_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpoint, "OSStatus apEndpoint_RelinquishResource(FigEndpointExtendedRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Relinquishing '%@' [%{ptr}].\n", FigEndpoint, a2, a3);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 144) != 2)
  {
    v7 = 4294949690;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_9;
  }

  if (!a3)
  {
    v7 = 4294950576;
    goto LABEL_13;
  }

  if (!FigCFEqual())
  {
    v7 = 4294950570;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  return v7;
}

void apEndpoint_rcsSendMessageCompletion(int a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = a3[2];
  if (v6)
  {
    APEndpointCallRCSendDataCompletionAsync(*a3, a3[1], a1, *DerivedStorage, v6, a3[3]);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v7 = a3[1];
  if (v7)
  {
    CFRelease(v7);
  }

  free(a3);
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2)
{

  return FigCFDictionarySetValueFromKeyInDict();
}

void OUTLINED_FUNCTION_35_1(uint64_t a1, const void *a2, uint64_t a3)
{

  endpoint_setPropertyOnMXDescriptor(v3, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{

  return CFDictionaryGetInt64Ranged();
}

void OUTLINED_FUNCTION_49_0()
{

  APEndpointDescriptionGetCMBaseObject();
}

uint64_t APEndpointStreamScreenCreate(const __CFAllocator *a1, const __CFDictionary *a2, CFTypeRef cf, unint64_t a4, const void *a5, const void *a6, const void *a7, CFTypeRef *a8)
{
  v163 = *MEMORY[0x277D85DE8];
  theArray = 0;
  v159 = 0;
  v156 = 0;
  v157 = 0;
  v155 = 0x3FF0000000000000;
  v154 = 0;
  v8 = &unk_27CFF1000;
  if (!cf || (v16 = CFGetTypeID(cf), v16 != CFStringGetTypeID()))
  {
    APEndpointStreamScreenCreate_cold_28();
LABEL_310:
    DerivedStorage = 0;
    v36 = 4294950536;
    goto LABEL_36;
  }

  if (!a5 || (v17 = CFGetTypeID(a5), v17 != APEndpointDescriptionGetTypeID(v17, v18)))
  {
    APEndpointStreamScreenCreate_cold_27();
    goto LABEL_310;
  }

  if (!a8)
  {
    APEndpointStreamScreenCreate_cold_26();
    goto LABEL_310;
  }

  if (!a7)
  {
    APEndpointStreamScreenCreate_cold_25();
    goto LABEL_310;
  }

  v19 = a2;
  v151 = a8;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"TransportStream");
    if (Value)
    {
      v21 = Value;
      v22 = CFGetTypeID(Value);
      if (v22 == FigTransportStreamGetTypeID())
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetInt32IfPresent();
    v19 = CFDictionaryGetValue(a2, @"LogPrefix");
  }

  else
  {
    v23 = 0;
  }

  if (!(a4 | v23))
  {
    APEndpointStreamScreenCreate_cold_24();
LABEL_313:
    DerivedStorage = 0;
LABEL_247:
    v36 = 4294950536;
    goto LABEL_35;
  }

  if (a4 && v23)
  {
    APEndpointStreamScreenCreate_cold_1();
    goto LABEL_313;
  }

  FigEndpointStreamGetClassID();
  v24 = CMDerivedObjectCreate();
  if (v24)
  {
    v36 = v24;
    APEndpointStreamScreenCreate_cold_2(v24);
    DerivedStorage = 0;
    goto LABEL_35;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF(label, 64, "APEndpointStreamScreen.%{ptr}", v159);
  *DerivedStorage = dispatch_queue_create(label, 0);
  *(DerivedStorage + 16) = os_transaction_create();
  *(DerivedStorage + 504) = dispatch_queue_create("APEndpointStreamScreen.stats", 0);
  SNPrintF(label, 64, "APEndpointStreamScreen.%{ptr}.notification", v159);
  *(DerivedStorage + 96) = dispatch_queue_create(label, 0);
  *(DerivedStorage + 280) = v155;
  *(DerivedStorage + 288) = v154;
  *(DerivedStorage + 8) = CFRetain(cf);
  *(DerivedStorage + 56) = CFRetain(a5);
  v26 = &stru_283570B70;
  if (v19)
  {
    v26 = v19;
  }

  v27 = " ";
  if (!v19)
  {
    v27 = "";
  }

  *(DerivedStorage + 40) = CFStringCreateF(0, "%@%s[%{ptr}]", v26, v27, v159);
  APEndpointDescriptionGetCMBaseObject();
  v29 = v28;
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30)
  {
    v31 = *MEMORY[0x277CBECE8];
    v32 = v30(v29, @"DisplayDescriptionArray", *MEMORY[0x277CBECE8], &theArray);
    if (!v32)
    {
      if (theArray && CFArrayGetCount(theArray) > 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (ValueAtIndex)
        {
          v34 = ValueAtIndex;
          if (!a6)
          {
            *(DerivedStorage + 72) = CFRetain(ValueAtIndex);
            v35 = 110;
            goto LABEL_41;
          }

          *(DerivedStorage + 72) = CFRetain(a6);
          APEndpointDisplayDescriptionCopyProperty(v34, @"UUID", v31, &v157);
          if (v157)
          {
            APEndpointDisplayDescriptionCopyProperty(*(DerivedStorage + 72), @"UUID", v31, &v156);
            if (FigCFEqual())
            {
              v35 = 110;
            }

            else
            {
              v35 = 111;
            }

LABEL_41:
            *(DerivedStorage + 88) = v35;
            if (a4)
            {
              v38 = CFRetain(a4);
            }

            else
            {
              v38 = 0;
            }

            *(DerivedStorage + 48) = v38;
            if (v23)
            {
              v39 = CFRetain(v23);
            }

            else
            {
              v39 = 0;
            }

            v40 = v151;
            *(DerivedStorage + 128) = v39;
            v41 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *DerivedStorage);
            *(DerivedStorage + 200) = v41;
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 0x40000000;
            handler[2] = __APEndpointStreamScreenCreate_block_invoke;
            handler[3] = &__block_descriptor_tmp_41;
            handler[4] = v159;
            dispatch_source_set_event_handler(v41, handler);
            dispatch_source_set_timer(*(DerivedStorage + 200), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            dispatch_resume(*(DerivedStorage + 200));
            *(DerivedStorage + 64) = CFRetain(a7);
            v42 = CMBaseObjectGetDerivedStorage();
            if (a2)
            {
              CFDictionaryGetValue(a2, @"EventRecorder");
            }

            v43 = *(v42 + 1152);
            if (v43)
            {
              CFRelease(v43);
              *(v42 + 1152) = 0;
            }

            v44 = APSEventRecorderCreate();
            if (!v44)
            {
              APSEventRecorderAddSignPostForEvent();
              APSEventRecorderAddSignPostForEvent();
              *(DerivedStorage + 1160) = dispatch_queue_create("APEndpointStreamScreen.%{ptr}.RTC", 0);
              *(DerivedStorage + 1168) = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
              v45 = v159;
              v46 = CMBaseObjectGetDerivedStorage();
              v47 = v46;
              v160 = 0;
              if (v46[24])
              {
                APEndpointStreamScreenCreate_cold_5();
                v36 = 4294950534;
LABEL_332:
                v8 = &unk_27CFF1000;
LABEL_333:
                v150 = v8[1002];
                if (v150 <= 90 && (v150 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_activate(FigEndpointStreamRef, CFDictionaryRef)", 33554522, "%@ ### activation failed: %#m\n", *(v47 + 40), v36);
                }

                screenstream_cleanup(v45);
                APSLogErrorAt();
                goto LABEL_36;
              }

              v8 = &unk_27CFF1000;
              if (v46[25])
              {
                goto LABEL_302;
              }

              LODWORD(cfa) = 0;
              v46[396] = APSGetFBOPropertyInt64() != 0;
              v48 = *(v47 + 48);
              if (v48)
              {
                LODWORD(v48) = APSGetFBOPropertyInt64();
              }

              *(v47 + 1196) = v48;
              *(v47 + 394) = APSGetFBOPropertyInt64() != 0;
              *(v47 + 408) = APSGetFBOPropertyInt64() != 0;
              *(v47 + 409) = APDemoManagerIsDemoSession(*(v47 + 56), *(v47 + 48));
              *(v47 + 410) = 0;
              if (*(v47 + 394))
              {
                v49 = APSCarPlayScreenLatencyMs();
              }

              else
              {
                v49 = APSScreenLatencyMs();
              }

              *(v47 + 1188) = v49;
              v50 = APSScreenMediaPresentationLatencyMs();
              v51 = *(v47 + 1188);
              if (v50 <= v51)
              {
                v52 = v51;
              }

              else
              {
                v52 = v50;
              }

              *(v47 + 1192) = v52;
              if (gLogCategory_APEndpointStreamScreen <= 40)
              {
                if (gLogCategory_APEndpointStreamScreen != -1)
                {
LABEL_64:
                  LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_init(StreamScreenStorage *)", 33554472, "%@ initial latency settings are screen latency: %d, media presentation mode latency: %d\n", *(v47 + 40), v51, v52);
                  goto LABEL_66;
                }

                v53 = _LogCategory_Initialize();
                v51 = *(v47 + 1188);
                if (v53)
                {
                  v52 = *(v47 + 1192);
                  goto LABEL_64;
                }
              }

LABEL_66:
              *(v47 + 960) = MillisecondsToUpTicks();
              *(v47 + 968) = 0;
              *(v47 + 972) = 0;
              *(v47 + 973) = APSGetFBOPropertyInt64() != 0;
              *(v47 + 975) = APSGetFBOPropertyInt64() != 0;
              v54 = APSGetFBOPropertyInt64() != 0;
              *(v47 + 978) = v54;
              if (gLogCategory_APEndpointStreamScreen > 40)
              {
                goto LABEL_73;
              }

              if (gLogCategory_APEndpointStreamScreen == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_73;
                }

                v54 = *(v47 + 978);
              }

              if (v54)
              {
                v55 = "yes";
              }

              else
              {
                v55 = "no";
              }

              LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_init(StreamScreenStorage *)", 33554472, "%@ forward frame user data: %s\n", *(v47 + 40), v55);
LABEL_73:
              v56 = APSGetFBOPropertyInt64() != 0;
              *(v47 + 979) = v56;
              if (gLogCategory_APEndpointStreamScreen > 40)
              {
                goto LABEL_80;
              }

              if (gLogCategory_APEndpointStreamScreen == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_80;
                }

                v56 = *(v47 + 979);
              }

              if (v56)
              {
                v57 = "yes";
              }

              else
              {
                v57 = "no";
              }

              LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_init(StreamScreenStorage *)", 33554472, "%@ forward cryptor aux data: %s\n", *(v47 + 40), v57);
LABEL_80:
              v59 = (v47 + 40);
              v58 = *(v47 + 40);
              *(v47 + 976) = 0;
              *(v47 + 952) = v58;
              v60 = *MEMORY[0x277CBF3A8];
              *(v47 + 248) = *MEMORY[0x277CBF3A8];
              *(v47 + 264) = v60;
              *(v47 + 216) = xmmword_222298980;
              *(v47 + 232) = v60;
              APEndpointDescriptionGetCMBaseObject();
              v62 = v61;
              v63 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v63)
              {
                v64 = v63(v62, @"receiverHDRCapability", v31, v47 + 296);
              }

              else
              {
                v64 = -12782;
              }

              LODWORD(cfa) = v64;
              *(v47 + 378) = 0;
              *(v47 + 376) = 0;
              *(v47 + 381) = 1;
              *(v47 + 382) = APSSettingsGetInt64() == 0;
              *(v47 + 336) = 0;
              *(v47 + 380) = 1;
              *(v47 + 383) = 256;
              *(v47 + 388) = *(v47 + 1192);
              *(v47 + 379) = APSGetFBOPropertyInt64() != 0;
              *(v47 + 368) = 0;
              *(v47 + 395) = 0;
              *(v47 + 974) = *(v47 + 394) == 0;
              *(v47 + 400) = 0x1E00000000;
              *(v47 + 1184) = APSSettingsGetInt64();
              *(v47 + 424) = xmmword_222298990;
              *(v47 + 440) = 0x418312D000000000;
              *(v47 + 456) = 0;
              *(v47 + 464) = 0x415E848000000000;
              *(v47 + 472) = xmmword_2222989A0;
              *(v47 + 488) = 0;
              *(v47 + 496) = 5 * UpTicksPerSecond();
              LODWORD(cfa) = 0;
              CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
              *(v47 + 968) = CFPreferenceNumberWithDefault;
              if (gLogCategory_APEndpointStreamScreen <= 40)
              {
                if (gLogCategory_APEndpointStreamScreen != -1)
                {
LABEL_85:
                  LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ remote log level: %d\n", *v59, CFPreferenceNumberWithDefault);
                  goto LABEL_87;
                }

                if (_LogCategory_Initialize())
                {
                  CFPreferenceNumberWithDefault = *(v47 + 968);
                  goto LABEL_85;
                }
              }

LABEL_87:
              v66 = FigGetCFPreferenceNumberWithDefault();
              *(v47 + 972) = v66;
              if (gLogCategory_APEndpointStreamScreen > 40)
              {
                goto LABEL_95;
              }

              if (gLogCategory_APEndpointStreamScreen == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_95;
                }

                v67 = *(v47 + 972);
              }

              else
              {
                v67 = v66;
              }

              if (v67)
              {
                v68 = "yes";
              }

              else
              {
                v68 = "no";
              }

              LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ show HUD: %s\n", *v59, v68);
LABEL_95:
              v69 = FigGetCFPreferenceNumberWithDefault();
              *(v47 + 976) = v69;
              if (gLogCategory_APEndpointStreamScreen > 40)
              {
                goto LABEL_103;
              }

              if (gLogCategory_APEndpointStreamScreen == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_103;
                }

                v70 = *(v47 + 976);
              }

              else
              {
                v70 = v69;
              }

              if (v70)
              {
                v71 = "yes";
              }

              else
              {
                v71 = "no";
              }

              LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ force multi codec: %s\n", *v59, v71);
LABEL_103:
              IsAppleInternalBuild();
              v72 = FigGetCFPreferenceNumberWithDefault();
              *(v47 + 977) = v72;
              if (gLogCategory_APEndpointStreamScreen > 40)
              {
                goto LABEL_111;
              }

              if (gLogCategory_APEndpointStreamScreen == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_111;
                }

                v73 = *(v47 + 977);
              }

              else
              {
                v73 = v72;
              }

              if (v73)
              {
                v74 = "yes";
              }

              else
              {
                v74 = "no";
              }

              LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ log histograms: %s\n", *v59, v74);
LABEL_111:
              v75 = FigGetCFPreferenceNumberWithDefault();
              *(v47 + 380) = v75;
              if (gLogCategory_APEndpointStreamScreen > 40)
              {
                goto LABEL_119;
              }

              if (gLogCategory_APEndpointStreamScreen == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_119;
                }

                v76 = *(v47 + 380);
              }

              else
              {
                v76 = v75;
              }

              if (v76)
              {
                v77 = "yes";
              }

              else
              {
                v77 = "no";
              }

              LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ max display size enabled: %s\n", *v59, v77);
LABEL_119:
              v78 = FigGetCFPreferenceNumberWithDefault();
              *(v47 + 381) = v78;
              if (gLogCategory_APEndpointStreamScreen > 40)
              {
                goto LABEL_127;
              }

              if (gLogCategory_APEndpointStreamScreen == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_127;
                }

                v79 = *(v47 + 381);
              }

              else
              {
                v79 = v78;
              }

              if (v79)
              {
                v80 = "yes";
              }

              else
              {
                v80 = "no";
              }

              LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ HDR enabled: %s\n", *v59, v80);
LABEL_127:
              v81 = FigGetCFPreferenceNumberWithDefault();
              *(v47 + 382) = v81;
              if (gLogCategory_APEndpointStreamScreen <= 40)
              {
                if (gLogCategory_APEndpointStreamScreen == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_135;
                  }

                  v82 = *(v47 + 382);
                }

                else
                {
                  v82 = v81;
                }

                if (v82)
                {
                  v83 = "yes";
                }

                else
                {
                  v83 = "no";
                }

                LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ DoVi enabled: %s\n", *v59, v83);
              }

LABEL_135:
              FigGetCFPreferenceDoubleWithDefault();
              *(v47 + 456) = v84;
              if (v84 > 0.0 && gLogCategory_APEndpointStreamScreen <= 40)
              {
                if (gLogCategory_APEndpointStreamScreen == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_140;
                  }

                  v84 = *(v47 + 456);
                }

                LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ fixed encoder bandwidth: %f bps\n", *v59, *&v84);
              }

LABEL_140:
              v85 = FigGetCFPreferenceNumberWithDefault();
              *(v47 + 476) = v85;
              if (v85 >= 1 && gLogCategory_APEndpointStreamScreen <= 40)
              {
                if (gLogCategory_APEndpointStreamScreen == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_145;
                  }

                  v85 = *(v47 + 476);
                }

                LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ fixed encoder FPS: %d\n", *v59, v85);
              }

LABEL_145:
              v86 = FigGetCFPreferenceNumberWithDefault();
              *(v47 + 472) = v86;
              if (gLogCategory_APEndpointStreamScreen <= 40)
              {
                if (gLogCategory_APEndpointStreamScreen != -1 || (v87 = _LogCategory_Initialize(), v86 = *(v47 + 472), v87))
                {
                  LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ max FPS: %d\n", *v59, v86);
                  LODWORD(v86) = *(v47 + 472);
                }
              }

              *(v47 + 480) = v86;
              *(v47 + 484) = v86;
              FigGetCFPreferenceDoubleWithDefault();
              *(v47 + 432) = v88;
              if (gLogCategory_APEndpointStreamScreen <= 40)
              {
                if (gLogCategory_APEndpointStreamScreen != -1)
                {
LABEL_151:
                  LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ bandwidth min: %f bps\n", *v59, v88);
                  goto LABEL_153;
                }

                if (_LogCategory_Initialize())
                {
                  v88 = *(v47 + 432);
                  goto LABEL_151;
                }
              }

LABEL_153:
              FigGetCFPreferenceDoubleWithDefault();
              *(v47 + 440) = v89;
              if (gLogCategory_APEndpointStreamScreen > 40)
              {
                goto LABEL_157;
              }

              if (gLogCategory_APEndpointStreamScreen == -1)
              {
                if (!_LogCategory_Initialize())
                {
LABEL_157:
                  v90 = FigGetCFPreferenceNumberWithDefault();
                  *(v47 + 384) = v90;
                  if (gLogCategory_APEndpointStreamScreen <= 40)
                  {
                    if (gLogCategory_APEndpointStreamScreen == -1)
                    {
                      if (!_LogCategory_Initialize())
                      {
                        goto LABEL_165;
                      }

                      v91 = *(v47 + 384);
                    }

                    else
                    {
                      v91 = v90;
                    }

                    if (v91)
                    {
                      v92 = "yes";
                    }

                    else
                    {
                      v92 = "no";
                    }

                    LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ enable mirroring restrictions: %s\n", *v59, v92);
                  }

LABEL_165:
                  v93 = FigGetCFPreferenceNumberWithDefault();
                  *(v47 + 388) = v93;
                  if (v93 >= 1 && gLogCategory_APEndpointStreamScreen <= 40)
                  {
                    if (gLogCategory_APEndpointStreamScreen != -1)
                    {
LABEL_168:
                      LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ requested max encoder latency: %d\n", *v59, v93);
                      goto LABEL_170;
                    }

                    if (_LogCategory_Initialize())
                    {
                      v93 = *(v47 + 388);
                      goto LABEL_168;
                    }
                  }

LABEL_170:
                  if (!*(v47 + 394))
                  {
                    goto LABEL_180;
                  }

                  v94 = FigGetCFPreferenceNumberWithDefault();
                  *(v47 + 400) = v94;
                  if (v94 >= 1 && gLogCategory_APEndpointStreamScreen <= 40)
                  {
                    if (gLogCategory_APEndpointStreamScreen != -1)
                    {
LABEL_174:
                      LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ will use APVirtualDisplayTestSink in mode %d\n", *v59, v94);
                      goto LABEL_176;
                    }

                    if (_LogCategory_Initialize())
                    {
                      v94 = *(v47 + 400);
                      goto LABEL_174;
                    }
                  }

LABEL_176:
                  v95 = FigGetCFPreferenceNumberWithDefault();
                  *(v47 + 404) = v95;
                  if (gLogCategory_APEndpointStreamScreen <= 50)
                  {
                    if (gLogCategory_APEndpointStreamScreen == -1)
                    {
                      if (!_LogCategory_Initialize())
                      {
                        goto LABEL_180;
                      }

                      v95 = *(v47 + 404);
                    }

                    LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554482, "%@ max times to reencode idle frame: %d\n", *v59, v95);
                  }

LABEL_180:
                  v96 = APSSettingsCopyValue();
                  v97 = v96;
                  if (cfa || !v96)
                  {
                    if (!v96)
                    {
                      goto LABEL_192;
                    }
                  }

                  else
                  {
                    v98 = CFGetTypeID(v96);
                    v99 = v98 == CFStringGetTypeID();
                    v8 = &unk_27CFF1000;
                    if (v99)
                    {
                      v100 = *(v47 + 296);
                      *(v47 + 296) = v97;
                      CFRetain(v97);
                      if (v100)
                      {
                        CFRelease(v100);
                      }

                      v8 = &unk_27CFF1000;
                      if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                      {
                        APEndpointStreamScreenCreate_cold_6(v47 + 40, v47 + 296, v101);
                      }
                    }
                  }

                  CFRelease(v97);
LABEL_192:
                  LODWORD(cfa) = 0;
                  v102 = FigGetCFPreferenceNumberWithDefault();
                  if (v102 == *(v47 + 1196))
                  {
                    goto LABEL_199;
                  }

                  *(v47 + 1196) = v102;
                  v103 = v8[1002];
                  if (v103 <= 40)
                  {
                    if (v103 != -1)
                    {
LABEL_195:
                      LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ connection latency hint: %d\n", *v59, v102);
                      goto LABEL_197;
                    }

                    if (_LogCategory_Initialize())
                    {
                      v102 = *(v47 + 1196);
                      goto LABEL_195;
                    }
                  }

LABEL_197:
                  if (!*(v47 + 394))
                  {
                    *(v47 + 1188) = APSScreenLatencyMs();
                  }

LABEL_199:
                  if (IsAppleInternalBuild())
                  {
                    v104 = APSSettingsCopyValue();
                    if (v104)
                    {
                      v105 = v104;
                      v106 = CFGetTypeID(v104);
                      if (v106 == CFStringGetTypeID())
                      {
                        v107 = *(v47 + 416);
                        *(v47 + 416) = v105;
                        CFRetain(v105);
                        if (v107)
                        {
                          CFRelease(v107);
                        }

                        if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                        {
                          APEndpointStreamScreenCreate_cold_7(v47 + 40, v47 + 416, v108);
                        }
                      }

                      CFRelease(v105);
                      v8 = &unk_27CFF1000;
                    }
                  }

                  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
                  v110 = CMBufferQueueCreate(v31, 0, CallbacksForUnsortedSampleBuffers, (v47 + 104));
                  if (v110)
                  {
                    v36 = v110;
                    APEndpointStreamScreenCreate_cold_8(v110);
                    goto LABEL_333;
                  }

                  v111 = CMBufferQueueInstallTriggerWithIntegerThreshold(*(v47 + 104), screenstream_signalDataAvailable, v47, 11, 0, (v47 + 112));
                  if (v111)
                  {
                    v36 = v111;
                    APEndpointStreamScreenCreate_cold_9(v111);
                    goto LABEL_333;
                  }

                  if (!a2)
                  {
LABEL_263:
                    v139 = v160;
                    v140 = CMBaseObjectGetDerivedStorage();
                    cfa = 0;
                    inited = screenstream_initDisplayInfo(v140);
                    if (inited)
                    {
                      v36 = inited;
                      APSLogErrorAt();
                      v8 = &unk_27CFF1000;
LABEL_321:
                      APSLogErrorAt();
                      goto LABEL_333;
                    }

                    v142 = *(v140 + 400);
                    if (v142 < 1)
                    {
                      v143 = APVirtualDisplaySinkCreate(v45, *(v140 + 104), &cfa);
                    }

                    else
                    {
                      v143 = APVirtualDisplayTestSinkCreate(v142, v45, *(v140 + 104), &cfa);
                    }

                    v36 = v143;
                    v40 = v151;
                    if (v143)
                    {
                      APEndpointStreamScreenCreate_cold_17(v143);
                      v8 = &unk_27CFF1000;
                    }

                    else
                    {
                      if (!*(v140 + 144))
                      {
                        FigVirtualDisplaySourceScreenGetCurrent();
                      }

                      if (v139 && *(v140 + 383))
                      {
                        if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                        {
                          APEndpointStreamScreenCreate_cold_18();
                        }

                        *(v140 + 368) = 1;
                      }

                      VirtualDisplayActivationOptions = screenstream_createVirtualDisplayActivationOptions(v45);
                      v145 = FigVirtualDisplaySessionActivateWithSourceAndSink();
                      *(v140 + 160) = v145;
                      if (v145)
                      {
                        CFRetain(v145);
                        CMNotificationCenterGetDefaultLocalCenter();
                        CMNotificationCenterAddListener();
                        v146 = *(v140 + 160);
                        v147 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                        if (v147)
                        {
                          v36 = v147(v146);
                          v8 = &unk_27CFF1000;
                          if (!v36)
                          {
                            goto LABEL_283;
                          }
                        }

                        else
                        {
                          v36 = 4294954514;
                          v8 = &unk_27CFF1000;
                        }

                        APSLogErrorAt();
LABEL_283:
                        if (!VirtualDisplayActivationOptions)
                        {
                          goto LABEL_285;
                        }

                        goto LABEL_284;
                      }

                      APEndpointStreamScreenCreate_cold_19();
                      v36 = 4294950535;
                      v8 = &unk_27CFF1000;
                      if (VirtualDisplayActivationOptions)
                      {
LABEL_284:
                        CFRelease(VirtualDisplayActivationOptions);
                      }
                    }

LABEL_285:
                    if (cfa)
                    {
                      CFRelease(cfa);
                    }

                    if (!v36)
                    {
                      *(v47 + 25) = 1;
                      v148 = v8[1002];
                      if (v148 >= 51)
                      {
LABEL_289:
                        v36 = 0;
                        *v40 = v159;
                        v159 = 0;
                        goto LABEL_290;
                      }

                      if (v148 != -1 || _LogCategory_Initialize())
                      {
                        APEndpointStreamScreenCreate_cold_20(v47 + 40, v47, v45);
                      }

LABEL_302:
                      APEndpointStreamScreenCreate_cold_21(&v160, DerivedStorage + 40, &v159);
                      goto LABEL_289;
                    }

                    goto LABEL_321;
                  }

                  v112 = CFDictionaryGetValue(a2, @"clientPID");
                  if (v112)
                  {
                    v113 = v112;
                    v114 = CFGetTypeID(v112);
                    if (v114 != CFNumberGetTypeID())
                    {
                      APEndpointStreamScreenCreate_cold_10();
                      goto LABEL_331;
                    }

                    v115 = *(v47 + 192);
                    *(v47 + 192) = v113;
                    CFRetain(v113);
                    if (v115)
                    {
                      goto LABEL_214;
                    }
                  }

                  else
                  {
                    v115 = *(v47 + 192);
                    *(v47 + 192) = 0;
                    if (v115)
                    {
LABEL_214:
                      CFRelease(v115);
                    }
                  }

                  v116 = CFDictionaryGetValue(a2, @"ScreenSource");
                  v117 = v116;
                  if (v116)
                  {
                    v118 = CFGetTypeID(v116);
                    if (v118 != FigVirtualDisplaySourceGetTypeID())
                    {
                      APEndpointStreamScreenCreate_cold_11();
                      goto LABEL_331;
                    }

                    v119 = *(v47 + 144);
                    *(v47 + 144) = v117;
                    CFRetain(v117);
                    if (v119)
                    {
                      goto LABEL_218;
                    }
                  }

                  else
                  {
                    v119 = *(v47 + 144);
                    *(v47 + 144) = 0;
                    if (v119)
                    {
LABEL_218:
                      CFRelease(v119);
                    }
                  }

                  v120 = CFDictionaryGetValue(a2, @"ScreenProcessor");
                  v121 = v120;
                  if (v120)
                  {
                    v122 = CFGetTypeID(v120);
                    if (v122 != FigVirtualDisplayProcessorGetTypeID())
                    {
                      APEndpointStreamScreenCreate_cold_12();
                      goto LABEL_331;
                    }

                    v123 = *(v47 + 152);
                    *(v47 + 152) = v121;
                    CFRetain(v121);
                    if (!v123)
                    {
                      goto LABEL_223;
                    }
                  }

                  else
                  {
                    v123 = *(v47 + 152);
                    *(v47 + 152) = 0;
                    if (!v123)
                    {
                      goto LABEL_223;
                    }
                  }

                  CFRelease(v123);
LABEL_223:
                  v124 = CFDictionaryGetValue(a2, @"ScreenUsageMode");
                  if (!v124)
                  {
                    v127 = *(v47 + 168);
                    *(v47 + 168) = 0;
                    if (!v127)
                    {
                      goto LABEL_227;
                    }

                    goto LABEL_226;
                  }

                  v125 = v124;
                  v126 = CFGetTypeID(v124);
                  if (v126 == CFStringGetTypeID())
                  {
                    v127 = *(v47 + 168);
                    *(v47 + 168) = v125;
                    CFRetain(v125);
                    if (!v127)
                    {
LABEL_227:
                      if (v117 | v121)
                      {
LABEL_249:
                        v132 = CFDictionaryGetValue(a2, @"ScreenOverrides");
                        if (v132 && (v133 = v132, v134 = CFGetTypeID(v132), v134 == CFDictionaryGetTypeID()) && IsAppleInternalBuild())
                        {
                          v135 = *(v47 + 176);
                          *(v47 + 176) = v133;
                          CFRetain(v133);
                        }

                        else
                        {
                          v135 = *(v47 + 176);
                          *(v47 + 176) = 0;
                        }

                        if (v135)
                        {
                          CFRelease(v135);
                        }

                        FigCFDictionaryGetBooleanIfPresent();
                        FigCFDictionaryGetBooleanIfPresent();
                        if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                        {
                          APEndpointStreamScreenCreate_cold_15(v47 + 40, v47 + 383, v136);
                        }

                        FigCFDictionaryGetBooleanIfPresent();
                        if (FigCFDictionaryGetCGSizeIfPresent() && gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                        {
                          APEndpointStreamScreenCreate_cold_16(v47 + 40, v137, v138);
                        }

                        goto LABEL_263;
                      }

                      v128 = CFDictionaryGetValue(a2, @"ProtectionOptions");
                      v129 = v128;
                      if (!v128)
                      {
                        v131 = *(v47 + 328);
                        *(v47 + 328) = 0;
                        if (!v131)
                        {
                          goto LABEL_232;
                        }

                        goto LABEL_231;
                      }

                      v130 = CFGetTypeID(v128);
                      if (v130 == CFDictionaryGetTypeID())
                      {
                        v131 = *(v47 + 328);
                        *(v47 + 328) = v129;
                        CFRetain(v129);
                        if (!v131)
                        {
LABEL_232:
                          if (v129 && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_activate(FigEndpointStreamRef, CFDictionaryRef)", 33554472, "%@ PWD activation options: %@\n", *v59, v129);
                          }

                          goto LABEL_249;
                        }

LABEL_231:
                        CFRelease(v131);
                        goto LABEL_232;
                      }

                      APEndpointStreamScreenCreate_cold_14();
                      goto LABEL_331;
                    }

LABEL_226:
                    CFRelease(v127);
                    goto LABEL_227;
                  }

                  APEndpointStreamScreenCreate_cold_13();
LABEL_331:
                  v36 = 4294950536;
                  goto LABEL_332;
                }

                v89 = *(v47 + 440);
              }

              LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_initFromPrefs(StreamScreenStorage *)", 33554472, "%@ bandwidth max: %f bps\n", *v59, v89);
              goto LABEL_157;
            }

            v36 = v44;
            APEndpointStreamScreenCreate_cold_4(v44);
            goto LABEL_35;
          }

          APEndpointStreamScreenCreate_cold_3();
        }

        else
        {
          APEndpointStreamScreenCreate_cold_22();
        }
      }

      else
      {
        APEndpointStreamScreenCreate_cold_23();
      }

      goto LABEL_247;
    }

    v36 = v32;
  }

  else
  {
    v36 = 4294954514;
  }

  APSLogErrorAt();
LABEL_35:
  v8 = &unk_27CFF1000;
LABEL_36:
  v37 = v8[1002];
  if (v37 <= 90 && (v37 != -1 || _LogCategory_Initialize()))
  {
    APEndpointStreamScreenCreate_cold_29(DerivedStorage, v36);
  }

LABEL_290:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v156)
  {
    CFRelease(v156);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v159)
  {
    CFRelease(v159);
  }

  return v36;
}