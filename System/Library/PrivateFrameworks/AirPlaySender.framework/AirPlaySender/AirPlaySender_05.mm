uint64_t endpointLocal_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    SInt64 = *(DerivedStorage + 24);
LABEL_13:
    SInt64 = CFRetain(SInt64);
LABEL_14:
    v12 = 0;
    *a4 = SInt64;
    return v12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1450]))
  {
    SInt64 = *(DerivedStorage + 32);
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13A0]))
  {
    v10 = MEMORY[0x277CBED28];
    v11 = *(DerivedStorage + 41);
    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1370]) || CFEqual(a2, @"IsInUse"))
  {
    v10 = MEMORY[0x277CBED28];
    v11 = *(DerivedStorage + 40);
    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11E8]))
  {
    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (!Int64)
    {
      endpointLocal_copyPropertyInternal_cold_1();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, @"EnabledFeatures"))
  {
    v26 = 0;
    EnabledFeatures = APEndpointGetEnabledFeatures(*(DerivedStorage + 80), 0, &v26);
    if (EnabledFeatures)
    {
      v12 = EnabledFeatures;
      endpointLocal_copyPropertyInternal_cold_2(EnabledFeatures);
      return v12;
    }

    v16 = CFNumberCreate(a3, kCFNumberSInt64Type, &v26);
    *a4 = v16;
    if (!v16)
    {
      endpointLocal_copyPropertyInternal_cold_3();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14E0]))
  {
    SInt64 = FigCFDictionaryCopyArrayOfValues();
    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15A8]))
  {
    if (gLogCategory_APEndpointLocal <= 30 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      endpointLocal_copyPropertyInternal_cold_4(DerivedStorage, a1);
    }

    Float64 = FigCFNumberCreateFloat64();
    *a4 = Float64;
    if (!Float64)
    {
      endpointLocal_copyPropertyInternal_cold_5();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15C0]))
  {
    APSVolumeConvertSliderValueToDB();
    v18 = FigCFNumberCreateFloat64();
    *a4 = v18;
    if (!v18)
    {
      endpointLocal_copyPropertyInternal_cold_6();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13D0]) || CFEqual(a2, *MEMORY[0x277CC13D8]))
  {
    v10 = MEMORY[0x277CBED28];
    v11 = *(DerivedStorage + 173);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"IsHALMuted"))
  {
    if (APEndpointIsHALMuteForUser() && *(DerivedStorage + 173))
    {
LABEL_40:
      v10 = MEMORY[0x277CBED28];
LABEL_12:
      SInt64 = *v10;
      goto LABEL_13;
    }

LABEL_43:
    v10 = MEMORY[0x277CBED10];
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13E0]))
  {
    goto LABEL_43;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15B8]))
  {
    UInt64 = FigCFNumberCreateUInt64();
    *a4 = UInt64;
    if (!UInt64)
    {
      endpointLocal_copyPropertyInternal_cold_7();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15B0]))
  {
    v10 = MEMORY[0x277CBED28];
    v11 = *(DerivedStorage + 160);
    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1448]))
  {
    v10 = MEMORY[0x277CBED28];
    v11 = *(DerivedStorage + 172);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"EndpointShowInfo"))
  {
    v20 = endpointLocal_copyShowInfoDictionary(a1, a4);
    v12 = v20;
    if (v20)
    {
      endpointLocal_copyPropertyInternal_cold_8(v20);
    }

    return v12;
  }

  if (CFEqual(a2, @"IsEngaged"))
  {
    v10 = MEMORY[0x277CBED28];
    v11 = *(DerivedStorage + 45);
LABEL_10:
    if (!v11)
    {
      v10 = MEMORY[0x277CBED10];
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"EndpointStatus"))
  {
    v21 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 48));
    *a4 = v21;
    if (!v21)
    {
      endpointLocal_copyPropertyInternal_cold_9();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14B0]))
  {
    SInt64 = *(DerivedStorage + 72);
    if (!SInt64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"LocalRouteState"))
  {
    v22 = *(DerivedStorage + 40);
    v23 = *(DerivedStorage + 72);

    return APEndpointCreateLocalRouteState(v22, v23, 0, a4);
  }

  else
  {
    if (CFEqual(a2, @"ActivationStage"))
    {
      SInt64 = FigCFNumberCreateSInt64();
      goto LABEL_14;
    }

    if (CFEqual(a2, @"IsEndpointInfoComplete"))
    {
      if (*(DerivedStorage + 153) && *(DerivedStorage + 154))
      {
        goto LABEL_40;
      }

      goto LABEL_43;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12D8]))
    {

      return endpointLocal_copyMXDescriptor(a1, a4);
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CC1290]))
      {
        if (gLogCategory_APEndpointLocal <= 30 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
        {
          endpointLocal_copyPropertyInternal_cold_11(a2);
        }

        return 4294954512;
      }

      if (!CFDictionaryGetValue(*(DerivedStorage + 80), *MEMORY[0x277CC1968]))
      {
        endpointLocal_copyPropertyInternal_cold_10(a1, &v27);
        return v27;
      }

      v24 = *MEMORY[0x277CC18B8];
      CMBaseObject = FigEndpointStreamGetCMBaseObject();

      return CMBaseObjectCopyProperty(CMBaseObject, v24, a3, a4);
    }
  }
}

uint64_t endpointLocal_copyAirPlayClusterCompatibleEndpointProperties(uint64_t a1, __CFDictionary **a2)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  APEndpointDescriptionGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v9 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    goto LABEL_7;
  }

  v6 = v5(v4, @"AirPlayClusterCompatibleEndpointProperties", *MEMORY[0x277CBECE8], &cf);
  if (v6)
  {
    v9 = v6;
    goto LABEL_6;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v8 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"IsLocalDevice", *MEMORY[0x277CBED28]);
    v9 = 0;
    *a2 = v8;
  }

  else
  {
    endpointLocal_copyAirPlayClusterCompatibleEndpointProperties_cold_1();
    v9 = 4294950575;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t endpointLocal_copyShowInfoDictionary(uint64_t a1, __CFDictionary **a2)
{
  v40 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v31 = 0;
  v30 = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      SNPrintF(&v30, 10, "[%{ptr}]", a1);
      CFDictionarySetCString();
      v9 = *MEMORY[0x277CBED28];
      CFDictionarySetValue(v8, @"IsLocal", *MEMORY[0x277CBED28]);
      APSGetFBOPropertyCString();
      TextToHardwareAddressScalar();
      CFDictionarySetInt64();
      CFDictionarySetValue(v8, @"DeviceID", *(v5 + 24));
      CFDictionarySetValue(v8, @"Name", *(v5 + 32));
      GetDeviceModelString();
      CFDictionarySetCString();
      APSVersionUtilsGetShortVersionLength();
      TextToSourceVersion();
      CFDictionarySetInt64();
      v10 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(v8, @"IsRemoteControlEndpoint", *MEMORY[0x277CBED10]);
      APEndpointDescriptionGetCMBaseObject();
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(v12, @"IsClusterLeader", v6, &value);
        if (value)
        {
          CFDictionarySetValue(v8, @"IsClusterLeader", value);
        }
      }

      if (*(v5 + 40))
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      CFDictionarySetValue(v8, @"Activated", v14);
      v15 = *(v5 + 16);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v16)
      {
        v16(v15, &cf);
      }

      FigCFDictionarySetValue();
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      APEndpointDescriptionGetCMBaseObject();
      v18 = v17;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(v18, @"StatusFlags", v6, &cf);
      }

      FigCFDictionarySetValue();
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (*(v5 + 40))
      {
        v20 = v9;
      }

      else
      {
        v20 = v10;
      }

      CFDictionarySetValue(v8, @"Started", v20);
      APEndpointDescriptionGetCMBaseObject();
      v22 = v21;
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23)
      {
        v23(v22, @"AccessControlType", v6, &cf);
      }

      FigCFDictionarySetValue();
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      APEndpointDescriptionGetCMBaseObject();
      v25 = v24;
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26)
      {
        v26(v25, @"HKAccessControlLevel", v6, &cf);
      }

      FigCFDictionarySetValue();
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      *a2 = v8;
      result = value;
      if (value)
      {
        CFRelease(value);
        return 0;
      }
    }

    else
    {
      endpointLocal_copyShowInfoDictionary_cold_1();
      return 4294950575;
    }
  }

  else
  {
    endpointLocal_copyShowInfoDictionary_cold_2();
    return 4294950576;
  }

  return result;
}

uint64_t endpointLocal_copyMXDescriptor(uint64_t a1, CFMutableDictionaryRef *a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 153) && (v5 = DerivedStorage, *(DerivedStorage + 154)))
  {
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      if (*(v5 + 41))
      {
LABEL_5:
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        v9 = 0;
        *a2 = v8;
        goto LABEL_11;
      }

      APEndpointDescriptionGetCMBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v13 = v12(v11, @"Descriptor", v6, &cf);
        if (!v13)
        {
          FigCFDictionarySetAllValuesFromDictionary();
          endpointLocal_setPropertyOnMXDescriptor(a1, *MEMORY[0x277CC1400], *MEMORY[0x277D26F78], v8);
          endpointLocal_setPropertyOnMXDescriptor(a1, *MEMORY[0x277CC13C0], *MEMORY[0x277D26F58], v8);
          goto LABEL_5;
        }

        v9 = v13;
      }

      else
      {
        v9 = 4294954514;
      }

      APSLogErrorAt();
      CFRelease(v8);
    }

    else
    {
      endpointLocal_copyMXDescriptor_cold_1();
      v9 = 4294950575;
    }
  }

  else
  {
    endpointLocal_copyMXDescriptor_cold_2();
    v9 = 4294949690;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void endpointLocal_setPropertyOnMXDescriptor(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointLocal_copyStaticProperty(a2, &cf, &v9) || (v6 = *MEMORY[0x277CBECE8], endpointLocal_copyFromEndpointDescription(a1, a2, *MEMORY[0x277CBECE8], &cf, &v9)))
  {
    v7 = v9;
    if (!v9)
    {
LABEL_4:
      FigCFDictionarySetValue();
      goto LABEL_5;
    }
  }

  else
  {
    v7 = endpointLocal_copyPropertyInternal(a1, a2, v6, &cf);
    v9 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  endpointLocal_setPropertyOnMXDescriptor_cold_1(v7);
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t endpointLocal_setVolumeSlider(uint64_t a1, uint64_t a2, float a3)
{
  v3 = a2;
  result = CMBaseObjectGetDerivedStorage();
  v6 = result;
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || (result = _LogCategory_Initialize(), result)))
  {
    result = endpointLocal_setVolumeSlider_cold_1(v6, a3);
    if (!v3)
    {
LABEL_8:
      v8 = *(v6 + 164);
      v7 = (v6 + 164);
      if (vabds_f32(a3, v8) < 0.00000011921)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  if (!*(v6 + 173))
  {
    goto LABEL_8;
  }

  *(v6 + 173) = 0;
  v7 = (v6 + 164);
LABEL_9:
  *v7 = a3;
  return result;
}

uint64_t APEndpointDescriptionSetEndpointInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t APEndpointDescriptionSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  APEndpointDescriptionGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t endpointLocal_writePSGInfoIntoPrefs(uint64_t a1)
{
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  FigCFDictionaryGetValue();
  APSSettingsSetValue();
  APSSettingsSynchronize();

  return notify_post("com.apple.airplay.psgInfoChanged");
}

uint64_t endpointLocal_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = (*(a5 + 16))(a5, a3, "Endpoint:[%{ptr}] (Local) %''@ DeviceID:%@ Parent:[%{ptr}]\n", a1, *(DerivedStorage + 32), *(DerivedStorage + 24), a2);
  v11 = v10;
  if (v10)
  {
    endpointLocal_DumpHierarchy_cold_1(v10);
  }

  FigSimpleMutexUnlock();
  return v11;
}

uint64_t endpointLocal_Activate(void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 56) + 1;
  *(DerivedStorage + 56) = v11;
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Activating local endpoint for features %#ll{flags} with seed %llu\n", a1, a2, &unk_2222980B8, v11);
  }

  if (*(DerivedStorage + 40))
  {
    v12 = 4294950569;
LABEL_11:
    APSLogErrorAt();
    goto LABEL_8;
  }

  if (*(DerivedStorage + 41))
  {
    v12 = 4294950573;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_8:
  endpointLocal_activateInternal(a1, v12, v11, 1, a2, a3, a4, a5);
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t endpointLocal_Deactivate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    endpointLocal_Deactivate_cold_1(a1, v6, v7);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 41))
  {
    endpointLocal_Deactivate_cold_2();
    v9 = 0;
    v12 = 4294950573;
  }

  else
  {
    v9 = *(DerivedStorage + 152);
    endpointLocal_suspendAndDissociateStreams(a1);
    endpointLocal_resetActivationState(a1);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    endpointLocal_updateIsVolumeAndMuteControlSupported(a1);
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      endpointLocal_Deactivate_cold_3(a1, v10, v11);
    }

    v12 = 0;
  }

  FigSimpleMutexUnlock();
  if (a3)
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
  }

  if (v9)
  {
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      endpointLocal_Deactivate_cold_4(a1, v13, v14);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  return v12;
}

uint64_t endpointLocal_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 41))
  {
    endpointLocal_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_SetDelegateRouting(FigEndpointRef, const FigEndpointDelegateRouting *)", 33554482, "[%{ptr}] Setting endpoint routing delegate %{ptr}.\n", a1, a2);
    }

    v5 = *(DerivedStorage + 136);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 136) = 0;
    }

    if (a2)
    {
      v6 = *a2;
      v7 = *(a2 + 16);
      *(DerivedStorage + 128) = *(a2 + 32);
      *(DerivedStorage + 96) = v6;
      *(DerivedStorage + 112) = v7;
      a2 = 0;
      *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 128) = 0;
      *(DerivedStorage + 96) = 0u;
      *(DerivedStorage + 112) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

void endpointLocal_activateInternal(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7, uint64_t a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    endpointLocal_activateInternal_cold_1(a2);
    v25 = 0;
LABEL_81:
    v32 = 0;
    a5 = 0;
    if (!a7)
    {
      goto LABEL_63;
    }

LABEL_62:
    CFRetain(a1);
    APSDispatchAsyncFHelper();
    goto LABEL_63;
  }

  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    v16 = "Activating";
    if (!a4)
    {
      v16 = "UpdateFeatures";
    }

    LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_activateInternal(FigEndpointRef, OSStatus, uint64_t, Boolean, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] %s local endpoint %@ for features 0x%llx with seed %llu...\n", a1, v16, *(DerivedStorage + 32), a5, a3);
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (!*(DerivedStorage + 42))
  {
    endpointLocal_activateInternal_cold_9();
    v25 = 0;
    v37 = 4294895286;
LABEL_76:
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_activateInternal(FigEndpointRef, OSStatus, uint64_t, Boolean, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Local endpoint failed to activate due to error %#m\n", a1, v37);
    }

    goto LABEL_80;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v17 = CMBaseObjectGetDerivedStorage();
  if (a6)
  {
    v18 = v17;
    v19 = *MEMORY[0x277CC09F8];
    if (CFDictionaryContainsKey(a6, *MEMORY[0x277CC09F8]))
    {
      v20 = *(v18 + 72);
      Value = CFDictionaryGetValue(a6, v19);
      *(v18 + 72) = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    if (FigCFDictionaryGetBooleanIfPresent() && gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      endpointLocal_activateInternal_cold_2(v18 + 44, a1, v22);
    }
  }

  if (APSIsEndpointClusteringEnabled() && APSIsFBOPropertyNonNull() && !*(DerivedStorage + 43))
  {
    v37 = 4294895019;
    endpointLocal_activateInternal_cold_3();
    v25 = 0;
    goto LABEL_76;
  }

  if (*(DerivedStorage + 40))
  {
    v25 = 0;
    goto LABEL_26;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v25 = Mutable;
  if (!Mutable)
  {
    endpointLocal_activateInternal_cold_8();
    v37 = 4294950575;
    goto LABEL_76;
  }

  CFDictionarySetValue(Mutable, @"PreferredNetworkClockType", *MEMORY[0x277CEA278]);
  SharedContext = APEndpointCopyFromActivationOptionsOrCreateSharedContext(a6, a5, v25, DerivedStorage + 88, 0, 0);
  if (SharedContext)
  {
    v37 = SharedContext;
    endpointLocal_activateInternal_cold_4(SharedContext);
    goto LABEL_76;
  }

LABEL_26:
  v28 = *(DerivedStorage + 64);
  if (v28)
  {
    if (a5)
    {
      if (v28 == a5)
      {
        if (gLogCategory_APEndpointLocal <= 90)
        {
          if (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_activateInternal(FigEndpointRef, OSStatus, uint64_t, Boolean, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554522, "[%{ptr}] Device already activated with features 0x%llx", a1, a5);
          }

          v37 = 4294950569;
          goto LABEL_76;
        }
      }

      else if (gLogCategory_APEndpointLocal <= 90)
      {
        if (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_activateInternal(FigEndpointRef, OSStatus, uint64_t, Boolean, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554522, "[%{ptr}] Requested activation for features %#ll{flags} -> %#ll{flags} is not yet supported", a1, 0, &unk_2222980B8, a5, &unk_2222980B8);
        }

        v37 = 4294950570;
        goto LABEL_76;
      }

LABEL_80:
      endpointLocal_resetActivationState(a1);
      goto LABEL_81;
    }

    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      endpointLocal_activateInternal_cold_5(a1, v23, v24);
    }

    endpointLocal_suspendAndDissociateStreams(a1);
    CFDictionaryRemoveAllValues(*(DerivedStorage + 80));
    v31 = *(DerivedStorage + 64);
    if (v31)
    {
      endpointLocal_postStreamsChangedNotification(a1, v31, a3, 0);
    }

    a5 = 0;
    goto LABEL_44;
  }

  if (a5)
  {
    v29 = *(DerivedStorage + 44);
    v30 = CMBaseObjectGetDerivedStorage();
    if ((a5 & 2) != 0)
    {
      v33 = endpointLocal_setUpAudioStream(a1, *MEMORY[0x277CC1960], v29);
      if (v33)
      {
        v37 = v33;
        endpointLocal_activateInternal_cold_6(v33);
LABEL_91:
        APSLogErrorAt();
        goto LABEL_76;
      }

      if ((a5 & 8) == 0)
      {
        v32 = 1;
        a5 = 2;
        goto LABEL_57;
      }

      a5 = 10;
    }

    else
    {
      if ((a5 & 8) == 0)
      {
        if (gLogCategory_APEndpointLocal <= 90)
        {
          if (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_activateInternal(FigEndpointRef, OSStatus, uint64_t, Boolean, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554522, "### [%{ptr}] None of the requested features %#ll{flags} is supported\n", a1, a5, &unk_2222980B8);
          }

          v37 = 4294950576;
          goto LABEL_76;
        }

        goto LABEL_80;
      }

      a5 = 8;
    }

    v34 = *MEMORY[0x277CC1968];
    v35 = endpointLocal_setUpAudioStream(a1, *MEMORY[0x277CC1968], v29);
    if (!v35)
    {
      CFDictionaryGetValue(*(v30 + 80), v34);
      CMNotificationCenterGetDefaultLocalCenter();
      v36 = FigNotificationCenterAddWeakListener();
      endpointLocal_handleBufferedAudioCapabilitiesChanged(v36, a1);
      v32 = 1;
      goto LABEL_57;
    }

    v37 = v35;
    endpointLocal_activateInternal_cold_7(v35);
    goto LABEL_91;
  }

LABEL_44:
  v32 = 0;
LABEL_57:
  *(DerivedStorage + 64) = a5;
  *(DerivedStorage + 40) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  endpointLocal_updateIsVolumeAndMuteControlSupported(a1);
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_activateInternal(FigEndpointRef, OSStatus, uint64_t, Boolean, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] Local endpoint activated for feature 0x%llx\n", a1, a5);
  }

  if (a7)
  {
    goto LABEL_62;
  }

LABEL_63:
  if (v32)
  {
    endpointLocal_postStreamsChangedNotification(a1, a5, a3, 1);
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

void endpointLocal_suspendAndDissociateStreams(void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, endpointLocal_suspendAndDissociateStreamsDictionaryEntry, a1);
  }

  endpoint_handleIdleStateChanged(a1, 0);
}

void endpointLocal_postStreamsChangedNotification(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  v8 = CFGetAllocator(a1);
  StreamsChangedNotificationPayload = APEndpointCreateStreamsChangedNotificationPayload(v8, a2, a3, v4, &cf);
  if (StreamsChangedNotificationPayload)
  {
    endpointLocal_postStreamsChangedNotification_cold_1(StreamsChangedNotificationPayload);
  }

  else
  {
    v10 = MEMORY[0x277CC0D90];
    if (gLogCategory_APEndpointLocal <= 30 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      v11 = "adding";
      if (!v4)
      {
        v11 = "removing";
      }

      LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_postStreamsChangedNotification(FigEndpointRef, FigEndpointFeatures, uint64_t, Boolean)", 33554462, "[%{ptr}] Notifying %@ %s features %#ll{flags}\n", a1, *v10, v11, a2, &unk_2222980B8);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t endpointLocal_updateIsVolumeAndMuteControlSupported(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (*(result + 40))
  {
    v4 = *(result + 156) != 0;
  }

  else
  {
    v4 = 0;
  }

  if (*(result + 160) != v4)
  {
    *(result + 160) = v4;
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      v5 = "no";
      if (v4)
      {
        v5 = "yes";
      }

      LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_updateIsVolumeAndMuteControlSupported(FigEndpointRef)", 33554482, "[%{ptr}] <AirPlayVolume> isVolumeControlSupported => %s\n", a1, v5);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    result = FigDispatchAsyncPostNotification();
  }

  if (*(v3 + 172) != v4)
  {
    *(v3 + 172) = v4;
    if (gLogCategory_APEndpointLocal <= 50)
    {
      if (gLogCategory_APEndpointLocal != -1 || (result = _LogCategory_Initialize(), result))
      {
        v6 = "no";
        if (v4)
        {
          v6 = "yes";
        }

        result = LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_updateIsVolumeAndMuteControlSupported(FigEndpointRef)", 33554482, "[%{ptr}] <AirPlayVolume> isMuteControlSupported => %s\n", a1, v6);
      }
    }

    if (*(v3 + 8))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigDispatchAsyncPostNotification();
    }
  }

  return result;
}

void endpointLocal_resetActivationState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 42) = 0;
  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 44) = 0;
  CFDictionaryRemoveAllValues(*(DerivedStorage + 80));
  v2 = *(DerivedStorage + 88);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 88) = 0;
  }

  v3 = *(DerivedStorage + 72);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 72) = 0;
  }
}

uint64_t endpointLocal_setUpAudioStream(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (!a2)
  {
    endpointLocal_setUpAudioStream_cold_5();
    return 4294950576;
  }

  v7 = DerivedStorage;
  v8 = *MEMORY[0x277CC1960];
  if (CFEqual(a2, *MEMORY[0x277CC1960]) || CFEqual(a2, *MEMORY[0x277CC1968]))
  {
    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    if (Mutable)
    {
      if (a3)
      {
        CFDictionarySetValue(Mutable, @"ForEchoCancellationReference", *MEMORY[0x277CBED28]);
      }

      v23 = 0;
      cf = 0;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v12 = *(CMBaseObjectGetDerivedStorage() + 16);
      if (v12)
      {
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v13 || (v13(v12, &cf, &v23, &v22, 0, &v21, &v20, 0), !cf))
        {
          v12 = 0;
LABEL_14:
          if (v23)
          {
            CFRelease(v23);
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

          FigCFDictionarySetValue();
          v14 = *(v7 + 88);
          v15 = CFEqual(a2, v8);
          v16 = APEndpointStreamLocalCreate(v9, @"Local Playback Stream", a2, v11, v14, v15, &value);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          v17 = APSGetFBOPropertyInt64() != 0;
          endpoint_handleIdleStateChanged(a1, v17);
          CFDictionarySetValue(*(v7 + 80), a2, value);
          if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_setUpAudioStream(FigEndpointRef, CFStringRef, Boolean)", 33554482, "[%{ptr}] Set up local audio stream [%{ptr}] (type: %@)\n", a1, value, a2);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_28;
        }

        v12 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v12)
        {
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
        }

        else
        {
          endpointLocal_setUpAudioStream_cold_1();
        }
      }

      else
      {
        endpointLocal_setUpAudioStream_cold_2();
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_14;
    }

    endpointLocal_setUpAudioStream_cold_3();
    v16 = 4294950575;
  }

  else
  {
    endpointLocal_setUpAudioStream_cold_4();
    v11 = 0;
    v16 = 4294950576;
  }

LABEL_28:
  if (value)
  {
    CFRelease(value);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v16;
}

uint64_t endpointLocal_handleBufferedAudioCapabilitiesChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    endpointLocal_handleBufferedAudioCapabilitiesChanged_cold_1(a2, v3, v4);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t endpointLocal_handleStreamIsPlayingDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  v6 = CFDictionaryGetInt64() != 0;
  FigSimpleMutexLock();
  endpoint_handleIdleStateChanged(a2, v6);

  return FigSimpleMutexUnlock();
}

void endpoint_handleIdleStateChanged(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 45);
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v7 = *(CMBaseObjectGetDerivedStorage() + 80);
    if (v7)
    {
      endpoint_handleIdleStateChanged_cold_1(v7, &v13);
      v8 = v13;
    }

    else
    {
      v8 = 1;
    }

    v6 = v8 == 0;
  }

  if (v5 != v6)
  {
    if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      v9 = "no";
      if (v6)
      {
        v9 = "yes";
      }

      LogPrintF(&gLogCategory_APEndpointLocal, "void endpoint_handleIdleStateChanged(FigEndpointRef, Boolean)", 33554482, "[%{ptr}] Engaged state has changed to %s\n", a1, v9);
    }

    *(DerivedStorage + 45) = v6;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    v12 = MEMORY[0x277CBED10];
    if (v6)
    {
      v12 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsEngaged", *v12);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v11)
    {

      CFRelease(v11);
    }
  }
}

uint64_t endpointLocal_suspendAndDissociateStreamsDictionaryEntry(const void *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointLocal, "void endpointLocal_suspendAndDissociateStreamsDictionaryEntry(const void *, const void *, void *)", 33554482, "[%{ptr}] Suspend and dissociate stream [%{ptr}] (type: %@)\n", a3, a2, a1);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (CFEqual(a1, *MEMORY[0x277CC1968]))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = FigNotificationCenterRemoveWeakListener();
    endpointLocal_handleBufferedAudioCapabilitiesChanged(v6, a3);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v7)
  {
    v7(a2, 0, 0, 0);
  }

  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 32);
  if (v11)
  {

    return v11(a2);
  }

  return result;
}

uint64_t endpointLocal_DuckAudio(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_DuckAudio(FigEndpointExtendedRef, CFDictionaryRef)", 33554482, "[%{ptr}] DuckAudio %@\n", a1, a2);
  }

  return 0;
}

uint64_t endpointLocal_AcquireAndCopyResource(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_AcquireAndCopyResource(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] Resource '%@' requested.\n", FigEndpoint, a2);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 40))
  {
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
          if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointLocal, "OSStatus endpointCluster_acquireAndCopyEndpointStream(FigEndpointRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] %@ stream requested.\n", FigEndpoint, v12);
          }

          v14 = *(v10 + 80);
          if (v14)
          {
            v15 = CFDictionaryGetValue(v14, v12);
            if (v15)
            {
              v16 = CFRetain(v15);
              if (v16)
              {
                v13 = 0;
                *a4 = v16;
                goto LABEL_23;
              }
            }

            endpointLocal_AcquireAndCopyResource_cold_1();
          }

          else
          {
            endpointLocal_AcquireAndCopyResource_cold_2();
          }

          v13 = 4294950571;
          goto LABEL_23;
        }

        endpointLocal_AcquireAndCopyResource_cold_3();
      }

      else
      {
        endpointLocal_AcquireAndCopyResource_cold_4();
      }

      v13 = 4294950576;
      goto LABEL_23;
    }

    if (gLogCategory_APEndpointLocal <= 90 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_AcquireAndCopyResource(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554522, "### [%{ptr}] Unsupported resource type '%@' requested.\n", FigEndpoint, a2);
    }

    v13 = 4294950570;
  }

  else
  {
    v13 = 4294949690;
  }

LABEL_23:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t endpointLocal_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointLocal <= 50 && (gLogCategory_APEndpointLocal != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointLocal, "OSStatus endpointLocal_RelinquishResource(FigEndpointExtendedRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Relinquishing '%@' [%{ptr}].\n", FigEndpoint, a2, a3);
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 40))
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

void endpointLocal_callDelegateHandleFailed(uint64_t a1)
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

uint64_t APAuthenticationClientMFiMutualAuthCreate(uint64_t a1, const void *a2, const void *a3, const __CFData *a4, CFTypeRef *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a2)
  {
    v19 = 4294895495;
    APAuthenticationClientMFiMutualAuthCreate_cold_9();
    return v19;
  }

  if (a3)
  {
    if (a4)
    {
      APAuthenticationClientGetClassID(a1, a2);
      v9 = CMDerivedObjectCreate();
      if (v9)
      {
        v19 = v9;
        APAuthenticationClientMFiMutualAuthCreate_cold_1(v9);
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        SNPrintF(label, 64, "APAuthenticationClientMFiMutualAuth.%{ptr}", cf);
        DerivedStorage[12] = dispatch_queue_create(label, 0);
        *DerivedStorage = CFRetain(a2);
        v11 = CFRetain(a3);
        DerivedStorage[2] = v11;
        v12 = APAccTransportClientConnectionCopyEndpoint(v11, "com.apple.AccTransportClientEndpointMFi4Authentication", (DerivedStorage + 1));
        if (v12)
        {
          v19 = v12;
          APAuthenticationClientMFiMutualAuthCreate_cold_2(v12);
        }

        else if (CFDataGetLength(a4) == 64)
        {
          BytePtr = CFDataGetBytePtr(a4);
          Length = CFDataGetLength(a4);
          memcpy(DerivedStorage + 3, BytePtr, Length);
          v15 = FigSimpleMutexCreate();
          DerivedStorage[13] = v15;
          if (v15)
          {
            v16 = dispatch_semaphore_create(0);
            DerivedStorage[11] = v16;
            if (v16)
            {
              DerivedStorage[15] = 0;
              if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
              {
                APAuthenticationClientMFiMutualAuthCreate_cold_4(&cf, v17, v18);
              }

              v19 = 0;
              *a5 = cf;
              return v19;
            }

            APAuthenticationClientMFiMutualAuthCreate_cold_5();
          }

          else
          {
            APAuthenticationClientMFiMutualAuthCreate_cold_6();
          }

          v19 = 4294895496;
        }

        else
        {
          v19 = 4294895495;
          APAuthenticationClientMFiMutualAuthCreate_cold_3();
        }
      }
    }

    else
    {
      v19 = 4294895495;
      APAuthenticationClientMFiMutualAuthCreate_cold_7();
    }
  }

  else
  {
    v19 = 4294895495;
    APAuthenticationClientMFiMutualAuthCreate_cold_8();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t mfiMutualAuth_createTransformedMessage(uint64_t a1, uint64_t a2, const __CFData *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    mfiMutualAuth_createTransformedMessage_cold_5();
    goto LABEL_34;
  }

  if (!a4)
  {
    mfiMutualAuth_createTransformedMessage_cold_4();
    goto LABEL_34;
  }

  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 120);
  if (v9 != 3 || *(DerivedStorage + 124))
  {
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90)
    {
      if (gLogCategory_APAuthenticationClientMFiMutualAuth != -1)
      {
LABEL_27:
        if (v9 > 4)
        {
          v20 = "UnknownState";
        }

        else
        {
          v20 = off_27849A778[v9];
        }

        SecureTunnelStateString = mfiMutualAuth_getSecureTunnelStateString(*(DerivedStorage + 124));
        LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "OSStatus mfiMutualAuth_createTransformedMessage(APAuthenticationClientRef, CryptoOperation, CFDataRef, CFDataRef *)", 33554522, "[%{ptr}] Failed to use SecureTunnel due to the wrong state (authState: %s, secureTunnelState: %s)\n", a1, v20, SecureTunnelStateString);
        goto LABEL_32;
      }

      if (_LogCategory_Initialize())
      {
        v9 = *(DerivedStorage + 120);
        goto LABEL_27;
      }
    }

LABEL_32:
    FigSimpleMutexUnlock();
    v12 = 4294895493;
LABEL_33:
    mfiMutualAuth_createTransformedMessage_cold_1(v12);
    goto LABEL_34;
  }

  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 30 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    Length = CFDataGetLength(a3);
    LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "OSStatus mfiMutualAuth_createTransformedMessage(APAuthenticationClientRef, CryptoOperation, CFDataRef, CFDataRef *)", 33554462, "[%{ptr}] Forwarding %zu bytes to APAccTransportClientEndpoint (Crypto Operation: %d)\n", a1, Length, a2);
  }

  if (a2)
  {
    mfiMutualAuth_setAndLogSecureTunnelState(a1, 3);
    v11 = APAccTransportClientEndpointForwardData(*(DerivedStorage + 8), a3);
  }

  else
  {
    mfiMutualAuth_setAndLogSecureTunnelState(a1, 1);
    v11 = APAccTransportClientEndpointSecureTunnelDataSend(*(DerivedStorage + 8), a3);
  }

  v12 = v11;
  FigSimpleMutexUnlock();
  if (v12)
  {
    goto LABEL_33;
  }

  dispatch_semaphore_wait(*(DerivedStorage + 88), 0xFFFFFFFFFFFFFFFFLL);
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    mfiMutualAuth_createTransformedMessage_cold_2(a1, v13, v14);
  }

  FigSimpleMutexLock();
  v15 = *(DerivedStorage + 124);
  if (v15 == 4 || v15 == 2)
  {
    v16 = *(DerivedStorage + 112);
    if (v16)
    {
      *a4 = CFRetain(v16);
      v17 = *(DerivedStorage + 112);
      if (v17)
      {
        CFRelease(v17);
        v18 = 0;
        v19 = 0;
        *(DerivedStorage + 112) = 0;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      goto LABEL_38;
    }

    mfiMutualAuth_createTransformedMessage_cold_3();
  }

  else
  {
    FigSimpleMutexUnlock();
  }

LABEL_34:
  v19 = 4294896151;
  FigSimpleMutexLock();
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    mfiMutualAuth_createTransformedMessage_cold_6(DerivedStorage);
  }

  v18 = 7;
LABEL_38:
  mfiMutualAuth_setAndLogSecureTunnelState(a1, v18);
  FigSimpleMutexUnlock();
  return v19;
}

void mfiMutualAuth_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    mfiMutualAuth_Finalize_cold_1(a1, v2, v3);
  }

  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v5)
  {
    APAccTransportClientEndpointDeactivate(v5);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v6 = *(DerivedStorage + 112);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 112) = 0;
  }

  APAccTransportClientConnectionInvalidateEndpoint(*(DerivedStorage + 16), *(DerivedStorage + 8));
  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    CFRelease(v8);
  }

  FigSimpleMutexDestroy();
  v9 = *(DerivedStorage + 88);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 88) = 0;
  }

  v10 = *(DerivedStorage + 96);
  if (v10)
  {
    dispatch_release(v10);
    *(DerivedStorage + 96) = 0;
  }
}

__CFString *mfiMutualAuth_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientMFiMutualAuth %p>", a1);
  return Mutable;
}

uint64_t mfiMutualAuth_AuthenticateEndpoint(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 96);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __mfiMutualAuth_AuthenticateEndpoint_block_invoke;
  v5[3] = &unk_27849A6D8;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t mfiMutualAuth_sendMessageMFi4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      snprintf(__str, 0x20uLL, "%d", 32);
      CFDictionarySetCString();
      if (a3)
      {
        v11 = MEMORY[0x277D85DD0];
        v12 = 0x40000000;
        v13 = __mfiMutualAuth_sendMessageMFi4_block_invoke;
        v14 = &__block_descriptor_tmp_50;
        v15 = v8;
        CFDictionaryApplyBlock();
      }

      CFDictionarySetValue(v8, *MEMORY[0x277CEA360], a2);
      if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 20 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "OSStatus mfiMutualAuth_sendMessageMFi4(APAuthenticationClientRef, CFDataRef, CFDictionaryRef, CMBlockBufferRef *)", 33554452, "[%{ptr}] Sending 'MFi' message to accessory with payload: %@\n", a1, v8, v11, v12, v13, v14, v15);
      }

      v9 = APTransportStreamSendPlistMessageCreatingReply();
      CFRelease(v8);
    }

    else
    {
      mfiMutualAuth_sendMessageMFi4_cold_1();
      return 4294895496;
    }
  }

  else
  {
    v9 = 4294895495;
    mfiMutualAuth_sendMessageMFi4_cold_2();
  }

  return v9;
}

uint64_t mfiMutualAuth_setAndLogAuthState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 40)
  {
    if (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = mfiMutualAuth_setAndLogAuthState_cold_1(v5, v2, a1);
    }
  }

  *(v5 + 120) = v2;
  return result;
}

uint64_t __mfiMutualAuth_initMFi4_block_invoke(uint64_t a1, const void *a2)
{
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_initMFi4_block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 120);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (v5 == 3)
  {
    v7 = *(DerivedStorage + 124);
    if (v7 == 5)
    {
      v8 = v4;
      v9 = 6;
    }

    else
    {
      if (v7 != 1)
      {
        mfiMutualAuth_setAndLogSecureTunnelState(v4, 7);
        if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
        {
          __mfiMutualAuth_initMFi4_block_invoke_cold_3();
        }

LABEL_16:
        if (*(DerivedStorage + 124) == 7)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      v8 = v4;
      v9 = 2;
    }

    mfiMutualAuth_setAndLogSecureTunnelState(v8, v9);
    goto LABEL_16;
  }

  if (*(DerivedStorage + 120) == 1)
  {
    mfiMutualAuth_setAndLogAuthState(v4, 2);
LABEL_17:
    v10 = *(DerivedStorage + 112);
    *(DerivedStorage + 112) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    dispatch_semaphore_signal(*(DerivedStorage + 88));
    goto LABEL_22;
  }

  mfiMutualAuth_setAndLogAuthState(v4, 4);
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_initMFi4_block_invoke_cold_2();
  }

LABEL_22:

  return FigSimpleMutexUnlock();
}

uint64_t __mfiMutualAuth_initMFi4_block_invoke_2(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (*(*(a1 + 32) + 120) == 1)
  {
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_initMFi4_block_invoke_2_cold_2(a1, a2, v4);
    }

    mfiMutualAuth_setAndLogAuthState(*(a1 + 40), 2);
    if (a2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    mfiMutualAuth_setAndLogAuthState(*(a1 + 40), v5);
    dispatch_semaphore_signal(*(*(a1 + 32) + 88));
  }

  else
  {
    mfiMutualAuth_setAndLogAuthState(*(a1 + 40), 4);
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_initMFi4_block_invoke_2_cold_1(a1 + 40, a2, v6);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t __mfiMutualAuth_initMFi4_block_invoke_3(uint64_t a1, const void *a2)
{
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_initMFi4_block_invoke_3_cold_1();
  }

  FigSimpleMutexLock();
  v4 = *(a1 + 32);
  if (*(*(a1 + 40) + 124) == 3)
  {
    mfiMutualAuth_setAndLogSecureTunnelState(v4, 4);
    v5 = *(a1 + 40);
    v6 = *(v5 + 112);
    *(v5 + 112) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    dispatch_semaphore_signal(*(*(a1 + 40) + 88));
  }

  else
  {
    mfiMutualAuth_setAndLogSecureTunnelState(v4, 7);
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_initMFi4_block_invoke_3_cold_2();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t mfiMutualAuth_setAndLogSecureTunnelState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 40)
  {
    if (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = mfiMutualAuth_setAndLogSecureTunnelState_cold_1(v5, v2, a1);
    }
  }

  *(v5 + 124) = v2;
  return result;
}

const char *mfiMutualAuth_getSecureTunnelStateString(unsigned int a1)
{
  if (a1 > 7)
  {
    return "UnknownState";
  }

  else
  {
    return off_27849A7A0[a1];
  }
}

uint64_t APKeyHolderCoreUtilsCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  APSKeyHolderGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v8 = v5;
    APKeyHolderCoreUtilsCreate_cold_1(v5);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v7 = APSCreateSecureMemAllocator();
    DerivedStorage[1] = v7;
    if (v7)
    {
      if (gLogCategory_APKeyHolderCoreUtils <= 30 && (gLogCategory_APKeyHolderCoreUtils != -1 || _LogCategory_Initialize()))
      {
        APKeyHolderCoreUtilsCreate_cold_2(&cf);
      }

      v8 = 0;
      *a3 = cf;
      return v8;
    }

    APKeyHolderCoreUtilsCreate_cold_3();
    v8 = 4294895576;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void coreUtilsKeyHolder_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APKeyHolderCoreUtils <= 30 && (gLogCategory_APKeyHolderCoreUtils != -1 || _LogCategory_Initialize()))
  {
    coreUtilsKeyHolder_Finalize_cold_1(a1);
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

__CFString *coreUtilsKeyHolder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APKeyHolderCoreUtils %p>", a1);
  return Mutable;
}

uint64_t coreUtilsKeyHolder_CopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (gLogCategory_APKeyHolderCoreUtils <= 10 && (gLogCategory_APKeyHolderCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APKeyHolderCoreUtils, "OSStatus coreUtilsKeyHolder_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "[%p] %###s propertyKey: '%@'\n", a1, "OSStatus coreUtilsKeyHolder_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", cf1);
  }

  if (CFEqual(cf1, @"HasPairingClient"))
  {
    v7 = CFRetain(*MEMORY[0x277CBED28]);
    result = 0;
    *a4 = v7;
  }

  else
  {
    if (gLogCategory_APKeyHolderCoreUtils <= 90 && (gLogCategory_APKeyHolderCoreUtils != -1 || _LogCategory_Initialize()))
    {
      coreUtilsKeyHolder_CopyProperty_cold_1(cf1);
    }

    return 4294954512;
  }

  return result;
}

uint64_t coreUtilsKeyHolder_CreateEncryptionKeysForContext(uint64_t a1, CFStringRef theString1, CFIndex a3, CFTypeRef *a4, CFIndex a5, __CFData **a6)
{
  v29 = 0;
  cf = 0;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = 32;
  }

  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 32;
  }

  if (CFStringCompare(theString1, @"Ctrl", 0))
  {
    if (CFStringCompare(theString1, @"Events", 0))
    {
      v33 = 0;
      v34 = 0;
      v31 = 0;
      v32 = 0;
      v12 = CFStringGetOrCopyCStringUTF8();
      if (v12)
      {
        coreUtilsKeyHolder_CreateEncryptionKeysForContext_cold_1(v12);
        v15 = 0;
        v14 = 1;
      }

      else
      {
        v13 = SNScanF(v34, v32, "DataStream(seed: %llu)", &v31);
        v14 = v13 != 1;
        if (v13 == 1)
        {
          v15 = v31;
        }

        else
        {
          v15 = 0;
        }
      }

      if (v33)
      {
        free(v33);
      }

      if (v14)
      {
        EncryptionKeysForStream = 4294895575;
      }

      else
      {
        EncryptionKeysForStream = coreUtilsKeyHolder_CreateEncryptionKeysForStream(a1, v15, v10, a4, v11, a6);
      }

      goto LABEL_31;
    }

    v28 = a6;
    v17 = "Events-Write-Encryption-Key";
    v18 = "Events-Read-Encryption-Key";
    v19 = 27;
    v20 = 26;
    v21 = 11;
    v22 = "Events-Salt";
  }

  else
  {
    v28 = a6;
    v17 = "Control-Write-Encryption-Key";
    v18 = "Control-Read-Encryption-Key";
    v19 = 28;
    v20 = 27;
    v21 = 12;
    v22 = "Control-Salt";
  }

  v23 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v23)
  {
    EncryptionKeysForStream = 4294954514;
LABEL_30:
    APSLogErrorAt();
    goto LABEL_31;
  }

  v24 = v23(a1, v22, v21, v18, v20, v10, &cf);
  if (v24)
  {
    EncryptionKeysForStream = v24;
    goto LABEL_30;
  }

  v25 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v25)
  {
    EncryptionKeysForStream = 4294954514;
    goto LABEL_30;
  }

  v26 = v25(a1, v22, v21, v17, v19, v11, &v29);
  if (v26)
  {
    EncryptionKeysForStream = v26;
    goto LABEL_30;
  }

  if (a4)
  {
    *a4 = cf;
    cf = 0;
  }

  EncryptionKeysForStream = 0;
  if (v28)
  {
    *v28 = v29;
    v29 = 0;
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return EncryptionKeysForStream;
}

uint64_t metadataSource_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMetadataSourceCreateWithNowPlayingAppPID(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v5 = [objc_alloc(getMRClientClass()) initWithProcessIdentifier:a2 bundleIdentifier:0];
  if (!v5)
  {
    APMetadataSourceCreateWithNowPlayingAppPID_cold_4();
    v10 = 0;
    v7 = 0;
LABEL_17:
    v8 = 0;
LABEL_19:
    v11 = 4294960568;
    goto LABEL_11;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy_;
  v6 = getMRPlayerPathClass_softClass;
  v19 = __Block_byref_object_dispose_;
  v20 = getMRPlayerPathClass_softClass;
  if (!getMRPlayerPathClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getMRPlayerPathClass_block_invoke;
    v14[3] = &unk_27849ACC8;
    v14[4] = &v15;
    __getMRPlayerPathClass_block_invoke(v14);
    v6 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  v7 = [[v6 alloc] initWithOrigin:0 client:v5 player:0];
  if (!v7)
  {
    APMetadataSourceCreateWithNowPlayingAppPID_cold_3();
    v10 = 0;
    goto LABEL_17;
  }

  v8 = [objc_alloc(getMRDestinationClass()) initWithPlayerPath:v7];
  if (!v8)
  {
    APMetadataSourceCreateWithNowPlayingAppPID_cold_2();
    v10 = 0;
    goto LABEL_19;
  }

  v9 = metadataSource_createWithMRDestination(a1, v8, &v13);
  if (v9)
  {
    v11 = v9;
    APSLogErrorAt();
    v10 = v13;
  }

  else
  {
    if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      APMetadataSourceCreateWithNowPlayingAppPID_cold_1(&v13, v7);
    }

    v10 = 0;
    v11 = 0;
    *a3 = v13;
  }

LABEL_11:

  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

void sub_222085DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMRClientClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getMRClientClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getMRClientClass_softClass;
  if (!getMRClientClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMRClientClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getMRClientClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_222085EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMRDestinationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getMRDestinationClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getMRDestinationClass_softClass;
  if (!getMRDestinationClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMRDestinationClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getMRDestinationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_222085FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t metadataSource_createWithMRDestination(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  *label = 0u;
  v19 = 0u;
  if (_MergedGlobals_1 != -1)
  {
    metadataSource_createWithMRDestination_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    *(Instance + 128) = 0;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    if (a2)
    {
      *(Instance + 120) = a2;
      SNPrintF(label, 64, "APMetadataSource.%{ptr}.state", v6);
      v7 = dispatch_queue_create(label, 0);
      v6[2] = v7;
      if (v7)
      {
        SNPrintF(label, 64, "APMetadataSource.%{ptr}.event", v6);
        v8 = dispatch_queue_create(label, 0);
        v6[12] = v8;
        if (v8)
        {
          v9 = *MEMORY[0x277CBECE8];
          v10 = 3;
          v11 = MEMORY[0x277CBF138];
          v12 = MEMORY[0x277CBF150];
          do
          {
            Mutable = CFDictionaryCreateMutable(v9, 0, v11, v12);
            v6[v10] = Mutable;
            if (!Mutable)
            {
              metadataSource_createWithMRDestination_cold_4();
              goto LABEL_15;
            }

            ++v10;
          }

          while (v10 != 7);
          v14 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v6[7] = v14;
          if (v14)
          {
            v15 = CFDictionaryCreateMutable(v9, 0, 0, 0);
            v6[14] = v15;
            if (v15)
            {
              v16 = 0;
              *a3 = v6;
              return v16;
            }

            metadataSource_createWithMRDestination_cold_2();
          }

          else
          {
            metadataSource_createWithMRDestination_cold_3();
          }
        }

        else
        {
          metadataSource_createWithMRDestination_cold_5();
        }
      }

      else
      {
        metadataSource_createWithMRDestination_cold_6();
      }

LABEL_15:
      v16 = 4294960568;
    }

    else
    {
      metadataSource_createWithMRDestination_cold_7();
      v16 = 4294960591;
    }

    CFRelease(v6);
  }

  else
  {
    metadataSource_createWithMRDestination_cold_8();
    return 4294960568;
  }

  return v16;
}

uint64_t APMetadataSourceCreateWithRoutingContextUUID(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v6 = [objc_alloc(getMRDestinationClass()) initWithOutputContextUID:a2];
  if (v6)
  {
    v7 = metadataSource_createWithMRDestination(a1, v6, &v11);
    if (v7)
    {
      v8 = v7;
      APSLogErrorAt();
      v10 = v11;

      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
      if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMetadataSource, "OSStatus APMetadataSourceCreateWithRoutingContextUUID(CFAllocatorRef, CFStringRef, APMetadataSourceRef *)", 33554482, "[%{ptr}] APMetadataSource created for routingContextUUID: %@\n", v11, a2);
      }

      *a3 = v11;

      return 0;
    }
  }

  else
  {
    APMetadataSourceCreateWithRoutingContextUUID_cold_1(0);
    return 4294960568;
  }

  return v8;
}

uint64_t APMetadataSourceAddEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  context[0] = a1;
  context[1] = v5;
  context[2] = a3;
  context[3] = &v8;
  dispatch_sync_f(*(a1 + 96), context, metadataSource_addEventCallbackInternal);
  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

uint64_t metadataSource_addEventCallbackInternal(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  v3 = a1[1];
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  v4 = a1[2];
  *v2 = v3;
  v2[1] = v4;
  v5 = *(*a1 + 112);
  v6 = (*(*a1 + 104) + 1);
  *(*a1 + 104) = v6;
  CFDictionarySetValue(v5, v6, v2);
  CFRetain(*a1);
  v7 = a1[1];
  if (v7)
  {
    CFRetain(v7);
  }

  result = APSDispatchAsyncFHelper();
  *a1[3] = *(*a1 + 104);
  return result;
}

void APMetadataSourceRemoveEventCallback(uint64_t a1, uint64_t a2)
{
  v2[0] = a1;
  v2[1] = a2;
  dispatch_sync_f(*(a1 + 96), v2, metadataSource_removeEventCallbackInternal);
}

void metadataSource_removeEventCallbackInternal(const void **a1)
{
  Value = CFDictionaryGetValue(*(*a1 + 14), a1[1]);
  if (Value)
  {
    v3 = Value;
    v4 = *Value;
    if (v4)
    {
      CFRelease(v4);
    }

    CFDictionaryRemoveValue(*(*a1 + 14), a1[1]);

    free(v3);
  }
}

void APMetadataSourceStart(uint64_t a1)
{
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APMetadataSourceStart_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void *__APMetadataSourceStart_block_invoke(void *result)
{
  v1 = result + 4;
  if (*(result[4] + 128))
  {
    return result;
  }

  v2 = [[APMRNowPlayingControllerDelegate alloc] initWithMetadataSource:*v1];
  v3 = *v1;
  *(*v1 + 128) = v2;
  if (gLogCategory_APMetadataSource <= 50)
  {
    if (gLogCategory_APMetadataSource == -1)
    {
      v4 = _LogCategory_Initialize();
      v3 = *v1;
      if (!v4)
      {
        goto LABEL_6;
      }

      v2 = *(v3 + 128);
    }

    LogPrintF(&gLogCategory_APMetadataSource, "void APMetadataSourceStart(APMetadataSourceRef)_block_invoke", 33554482, "[%{ptr}] Created now playing controller delegate [%{ptr}]\n", v3, v2);
    v3 = *v1;
  }

LABEL_6:
  result = [*(v3 + 128) start];
  if (gLogCategory_APMetadataSource <= 50)
  {
    if (gLogCategory_APMetadataSource != -1)
    {
      return __APMetadataSourceStart_block_invoke_cold_1(v1, v5, v6);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __APMetadataSourceStart_block_invoke_cold_1(v1, v5, v6);
    }
  }

  return result;
}

void APMetadataSourceStop(uint64_t a1)
{
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APMetadataSourceStop_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void __APMetadataSourceStop_block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) stop];

  v2 = *(a1 + 32);
  *(v2 + 128) = 0;
  if (gLogCategory_APMetadataSource <= 50)
  {
    if (gLogCategory_APMetadataSource != -1)
    {
LABEL_3:
      LogPrintF(&gLogCategory_APMetadataSource, "void APMetadataSourceStop(APMetadataSourceRef)_block_invoke", 33554482, "[%{ptr}] Stopped\n", v2);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v2 = *(a1 + 32);
      goto LABEL_3;
    }
  }
}

uint64_t APMetadataSourceSetMetadata(void *a1, const void *a2)
{
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  return APSDispatchAsyncFHelper();
}

void metadataSource_setMetadataCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = 0; i != 3; ++i)
  {
    Value = CFDictionaryGetValue(v3, off_27849ADC0[i]);
    if (Value)
    {
      v7 = Value;
      metadataSource_updateMetadata(v2, i, Value);
      CFDictionaryApplyFunction(v7, metadataSource_appendDictionaryInternal, Mutable);
    }
  }

  if (CFDictionaryGetCount(Mutable) >= 1)
  {
    metadataSource_updateMetadata(v2, 3u, Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(*a1);
  v8 = *(a1 + 8);
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t APMetadataSourceCopyMetadata(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a2 && a3)
  {
    v4 = *(a1 + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __APMetadataSourceCopyMetadata_block_invoke;
    v8[3] = &unk_27849ABE0;
    v8[6] = a2;
    v8[7] = a1;
    v8[4] = &v9;
    v8[5] = &v13;
    dispatch_sync(v4, v8);
    v5 = v10;
    *a3 = v10[3];
    v5[3] = 0;
    v6 = *(v14 + 6);
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294960591;
    *(v14 + 6) = -6705;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void sub_222086A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

const void *__APMetadataSourceCopyMetadata_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 48), @"APNowPlayingInfoArtwork"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 24);
LABEL_11:
    result = CFDictionaryCreateCopy(v2, v3);
LABEL_12:
    *(*(*(a1 + 32) + 8) + 24) = result;
    return result;
  }

  if (CFEqual(*(a1 + 48), @"APNowPlayingInfoProgress"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 32);
    goto LABEL_11;
  }

  if (CFEqual(*(a1 + 48), @"APNowPlayingInfoText"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 40);
    goto LABEL_11;
  }

  if (CFEqual(*(a1 + 48), @"APNowPlayingInfoCoalesced"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 48);
    goto LABEL_11;
  }

  if (CFEqual(*(a1 + 48), @"MRNowPlayingInfo"))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = *(*(a1 + 56) + 56);
    goto LABEL_11;
  }

  if (CFEqual(*(a1 + 48), @"MRSupportedCommands"))
  {
    result = *(*(a1 + 56) + 64);
    if (!result)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (CFEqual(*(a1 + 48), @"MRPlaybackState"))
  {
    result = *(*(a1 + 56) + 72);
    if (!result)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  result = CFEqual(*(a1 + 48), @"MRNowPlayingClient");
  if (result)
  {
    result = *(*(a1 + 56) + 80);
    if (!result)
    {
      goto LABEL_12;
    }

LABEL_21:
    result = CFRetain(result);
    goto LABEL_12;
  }

  *(*(*(a1 + 40) + 8) + 24) = -6735;
  return result;
}

void sub_222086EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void metadataSource_handleNowPlayingInfoChangedInternal(void *a1, const __CFDictionary *a2, const void *a3, uint64_t a4)
{
  if (!a2)
  {
    return;
  }

  v4 = a4;
  v8 = gLogCategory_APMetadataSource;
  if (gLogCategory_APMetadataSource <= 10)
  {
    if (gLogCategory_APMetadataSource != -1)
    {
LABEL_4:
      if (v8 != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APMetadataSource, "void metadataSource_handleNowPlayingInfoChangedInternal(APMetadataSourceRef, CFDictionaryRef, CFStringRef, Boolean)", 33554442, "[%{ptr}] Now Playing Info Updated:\n%1.64@\n", a1, a2);
      }

      goto LABEL_12;
    }

    v9 = _LogCategory_Initialize();
    v8 = gLogCategory_APMetadataSource;
    if (v9)
    {
      if (gLogCategory_APMetadataSource > 10)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }
  }

  if (v8 <= 40 && (v8 != -1 || _LogCategory_Initialize()))
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_1();
  }

LABEL_12:
  if (CFDictionaryGetCount(a2) == 2)
  {
    v152 = 0;
    v153 = &v152;
    v154 = 0x2020000000;
    v10 = getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr;
    v155 = getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr;
    if (!getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr)
    {
      v147 = MEMORY[0x277D85DD0];
      v148 = 3221225472;
      v149 = __getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_block_invoke;
      v150 = &unk_27849ACC8;
      v151 = &v152;
      v11 = MediaRemoteLibrary();
      v153[3] = dlsym(v11, "kMRMediaRemoteNowPlayingInfoIsMusicApp");
      getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr = *(v151[1] + 24);
      v10 = v153[3];
    }

    _Block_object_dispose(&v152, 8);
    if (!v10)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_45();
    }

    if (CFDictionaryGetValue(a2, *v10) == *MEMORY[0x277CBED28])
    {
      v118 = getkMRMediaRemoteNowPlayingInfoTimestamp();
      if (CFDictionaryGetValue(a2, v118))
      {
        if (gLogCategory_APMetadataSource <= 40 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
        {
          metadataSource_handleNowPlayingInfoChangedInternal_cold_2(a1, v119, v120);
        }

        return;
      }
    }
  }

  v12 = MEMORY[0x277CBECE8];
  if (a3)
  {
    v13 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    if (MutableCopy)
    {
      v15 = MutableCopy;
      v16 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifier();
      if (CFDictionaryContainsKey(v15, v16))
      {
        v152 = 0;
        v153 = &v152;
        v154 = 0x2020000000;
        v17 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr;
        v155 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr;
        if (!getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr)
        {
          v147 = MEMORY[0x277D85DD0];
          v148 = 3221225472;
          v149 = __getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_block_invoke;
          v150 = &unk_27849ACC8;
          v151 = &v152;
          v18 = MediaRemoteLibrary();
          v153[3] = dlsym(v18, "kMRMediaRemoteNowPlayingInfoMediaType");
          getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr = *(v151[1] + 24);
          v17 = v153[3];
        }

        _Block_object_dispose(&v152, 8);
        if (!v17)
        {
          metadataSource_handleNowPlayingInfoChangedInternal_cold_4();
        }

        v19 = *v17;
        v152 = 0;
        v153 = &v152;
        v154 = 0x2020000000;
        v20 = getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr;
        v155 = getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr;
        if (!getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr)
        {
          v147 = MEMORY[0x277D85DD0];
          v148 = 3221225472;
          v149 = __getkMRMediaRemoteMediaTypeMusicSymbolLoc_block_invoke;
          v150 = &unk_27849ACC8;
          v151 = &v152;
          v21 = MediaRemoteLibrary();
          v153[3] = dlsym(v21, "kMRMediaRemoteMediaTypeMusic");
          getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr = *(v151[1] + 24);
          v20 = v153[3];
        }

        _Block_object_dispose(&v152, 8);
        if (!v20)
        {
          metadataSource_handleNowPlayingInfoChangedInternal_cold_3();
        }

        CFDictionaryAddValue(v15, v19, *v20);
      }

      v152 = 0;
      v153 = &v152;
      v154 = 0x2020000000;
      v22 = getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr;
      v155 = getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr;
      if (!getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr)
      {
        v147 = MEMORY[0x277D85DD0];
        v148 = 3221225472;
        v149 = __getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_block_invoke;
        v150 = &unk_27849ACC8;
        v151 = &v152;
        v23 = MediaRemoteLibrary();
        v153[3] = dlsym(v23, "kMRMediaRemoteNowPlayingInfoAssetURL");
        getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr = *(v151[1] + 24);
        v22 = v153[3];
      }

      _Block_object_dispose(&v152, 8);
      if (!v22)
      {
        metadataSource_handleNowPlayingInfoChangedInternal_cold_5();
      }

      CFDictionaryRemoveValue(v15, *v22);
      if (CFEqual(a3, @"replace"))
      {
        v24 = a1[7];
        a1[7] = v15;
        CFRetain(v15);
        if (v24)
        {
          CFRelease(v24);
        }

        goto LABEL_35;
      }

      if (CFEqual(a3, @"update"))
      {
        CFDictionaryMergeDictionary();
LABEL_35:
        CFRelease(v15);
        metadataSource_notifyMetadataChange(a1, 1852860704, a2, a3, v4);
        goto LABEL_36;
      }

      if (gLogCategory_APMetadataSource <= 60 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMetadataSource, "OSStatus metadataSource_updateMRNowPlayingInfoInternal(APMetadataSourceRef, CFDictionaryRef, CFStringRef)", 33554492, "### [%{ptr}] Unsupported merge policy: %@\n", a1, a3);
      }

      CFRelease(v15);
    }

    else
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_6();
    }
  }

  else
  {
    APSLogErrorAt();
    v13 = *v12;
  }

  APSLogErrorAt();
LABEL_36:
  v25 = a1[7];
  v146 = 0;
  v144 = 0;
  cf = 0;
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  v138 = 0;
  value = 0;
  Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_44();
LABEL_168:
    v137 = 4294960568;
    goto LABEL_149;
  }

  v27 = Mutable;
  v28 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v28)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_43(&v146, v27);
    goto LABEL_168;
  }

  v29 = v28;
  v30 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v30)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_42();
    v31 = 0;
    goto LABEL_144;
  }

  v31 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v31)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_41();
    goto LABEL_144;
  }

  v32 = getkMRMediaRemoteNowPlayingInfoArtworkData();
  TypeID = CFDataGetTypeID();
  v34 = *MEMORY[0x277CBEEE8];
  v35 = metadataSource_cloneValue(v25, v32, TypeID, *MEMORY[0x277CBEEE8], v27, @"artworkData", 0);
  v146 = v35;
  if (v35)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_7(v35);
    goto LABEL_144;
  }

  v36 = CFDictionaryGetValue(v27, @"artworkData");
  if (CFEqual(v36, v34))
  {
    CFDictionarySetValue(v27, @"artworkMIMEType", @"image/none");
  }

  else
  {
    v37 = getkMRMediaRemoteNowPlayingInfoArtworkMIMEType();
    v38 = CFStringGetTypeID();
    v39 = metadataSource_cloneValue(v25, v37, v38, @"image/jpeg", v27, @"artworkMIMEType", 0);
    v146 = v39;
    if (v39)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_8(v39);
      goto LABEL_144;
    }

    v40 = CFDictionaryGetValue(v27, @"artworkMIMEType");
    if (CFEqual(v40, @"image/none"))
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_9(&v146, a1);
      goto LABEL_144;
    }
  }

  v41 = getkMRMediaRemoteNowPlayingInfoTimestamp();
  v42 = CFDateGetTypeID();
  v43 = metadataSource_cloneValue(v25, v41, v42, 0, v29, @"timestamp", &cf);
  v146 = v43;
  if (v43)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_10(v43);
    goto LABEL_144;
  }

  if (!cf)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v45 = CFDateCreate(0, Current);
    cf = v45;
    if (!v45)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_40();
      goto LABEL_144;
    }

    CFDictionarySetValue(v29, @"timestamp", v45);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v46 = getkMRMediaRemoteNowPlayingInfoAlbum();
  v47 = CFStringGetTypeID();
  v48 = metadataSource_cloneValue(v25, v46, v47, &stru_283570B70, v30, @"album", &v144);
  v146 = v48;
  if (v48)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_11(v48);
    goto LABEL_144;
  }

  v49 = getkMRMediaRemoteNowPlayingInfoArtist();
  v50 = CFStringGetTypeID();
  v51 = metadataSource_cloneValue(v25, v49, v50, &stru_283570B70, v30, @"artist", &v143);
  v146 = v51;
  if (v51)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_12(v51);
    goto LABEL_144;
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v52 = getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v53 = MediaRemoteLibrary();
    v54 = dlsym(v53, "kMRMediaRemoteNowPlayingInfoComposer");
    *(v151[1] + 24) = v54;
    getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr = *(v151[1] + 24);
    v52 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v52)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_39();
  }

  v55 = *v52;
  v56 = CFStringGetTypeID();
  v57 = metadataSource_cloneValue(v25, v55, v56, &stru_283570B70, v30, @"composer", 0);
  v146 = v57;
  if (v57)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_13(v57);
    goto LABEL_144;
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v58 = getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v59 = MediaRemoteLibrary();
    v60 = dlsym(v59, "kMRMediaRemoteNowPlayingInfoGenre");
    *(v151[1] + 24) = v60;
    getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr = *(v151[1] + 24);
    v58 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v58)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_38();
  }

  v61 = *v58;
  v62 = CFStringGetTypeID();
  v63 = metadataSource_cloneValue(v25, v61, v62, &stru_283570B70, v30, @"genre", 0);
  v146 = v63;
  if (v63)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_14(v63);
    goto LABEL_144;
  }

  v64 = getkMRMediaRemoteNowPlayingInfoTitle();
  v65 = CFStringGetTypeID();
  v66 = metadataSource_cloneValue(v25, v64, v65, &stru_283570B70, v30, @"title", &v142);
  v146 = v66;
  if (v66)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_15(v66);
    goto LABEL_144;
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v67 = getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v68 = MediaRemoteLibrary();
    v69 = dlsym(v68, "kMRMediaRemoteNowPlayingInfoQueueIndex");
    *(v151[1] + 24) = v69;
    getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr = *(v151[1] + 24);
    v67 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v67)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_37();
  }

  v141 = CFDictionaryGetValue(v25, *v67);
  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v70 = getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v71 = MediaRemoteLibrary();
    v72 = dlsym(v71, "kMRMediaRemoteNowPlayingInfoTotalQueueCount");
    *(v151[1] + 24) = v72;
    getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr = *(v151[1] + 24);
    v70 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v70)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_36();
  }

  v140 = CFDictionaryGetValue(v25, *v70);
  if (v141 && (v73 = CFGetTypeID(v141), v73 == CFNumberGetTypeID()) && v140 && (v74 = CFGetTypeID(v140), v74 == CFNumberGetTypeID()))
  {
    CFGetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(v30, @"totalTracks", v140);
  }

  else
  {
    v75 = getkMRMediaRemoteNowPlayingInfoTrackNumber();
    v76 = CFNumberGetTypeID();
    v77 = metadataSource_cloneValue(v25, v75, v76, 0, v30, @"trackNumber", &v141);
    v146 = v77;
    if (v77)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_16(v77);
      goto LABEL_144;
    }

    v78 = getkMRMediaRemoteNowPlayingInfoTotalTrackCount();
    v79 = CFNumberGetTypeID();
    v80 = metadataSource_cloneValue(v25, v78, v79, 0, v30, @"totalTracks", &v140);
    v146 = v80;
    if (v80)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_17(v80);
      goto LABEL_144;
    }
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v81 = getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v82 = MediaRemoteLibrary();
    v83 = dlsym(v82, "kMRMediaRemoteNowPlayingInfoDiscNumber");
    *(v151[1] + 24) = v83;
    getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr = *(v151[1] + 24);
    v81 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v81)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_35();
  }

  v84 = *v81;
  v85 = CFNumberGetTypeID();
  v86 = metadataSource_cloneValue(v25, v84, v85, 0, v30, @"discNumber", 0);
  v146 = v86;
  if (v86)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_18(v86);
    goto LABEL_144;
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v87 = getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v88 = MediaRemoteLibrary();
    v89 = dlsym(v88, "kMRMediaRemoteNowPlayingInfoTotalDiscCount");
    *(v151[1] + 24) = v89;
    getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr = *(v151[1] + 24);
    v87 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v87)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_34();
  }

  v90 = *v87;
  v91 = CFNumberGetTypeID();
  v92 = metadataSource_cloneValue(v25, v90, v91, 0, v30, @"totalDiscs", 0);
  v146 = v92;
  if (v92)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_19(v92);
    goto LABEL_144;
  }

  v93 = getkMRMediaRemoteNowPlayingInfoElapsedTime();
  v94 = CFNumberGetTypeID();
  v95 = metadataSource_cloneValue(v25, v93, v94, 0, v29, @"elapsedTime", 0);
  v146 = v95;
  if (v95)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_20(v95);
    goto LABEL_144;
  }

  v96 = getkMRMediaRemoteNowPlayingInfoDuration();
  v97 = CFNumberGetTypeID();
  v98 = metadataSource_cloneValue(v25, v96, v97, 0, v29, @"duration", &value);
  v146 = v98;
  if (v98)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_21(v98);
    goto LABEL_144;
  }

  if (value)
  {
    CFDictionarySetValue(v30, @"duration", value);
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v99 = getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v100 = MediaRemoteLibrary();
    v101 = dlsym(v100, "kMRMediaRemoteNowPlayingInfoIsExplicitTrack");
    *(v151[1] + 24) = v101;
    getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr = *(v151[1] + 24);
    v99 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v99)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_33();
  }

  v102 = *v99;
  v103 = CFBooleanGetTypeID();
  v104 = *MEMORY[0x277CBED10];
  v105 = metadataSource_cloneValue(v25, v102, v103, *MEMORY[0x277CBED10], v30, @"isExplicitTrack", 0);
  v146 = v105;
  if (v105)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_22(v105);
    goto LABEL_144;
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v106 = getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v107 = MediaRemoteLibrary();
    v108 = dlsym(v107, "kMRMediaRemoteNowPlayingInfoIsAlwaysLive");
    *(v151[1] + 24) = v108;
    getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr = *(v151[1] + 24);
    v106 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v106)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_32();
  }

  v109 = *v106;
  v110 = CFBooleanGetTypeID();
  v111 = metadataSource_cloneValue(v25, v109, v110, v104, v30, @"isStream", 0);
  v146 = v111;
  if (v111)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_23(v111);
    goto LABEL_144;
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v112 = getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v113 = MediaRemoteLibrary();
    v114 = dlsym(v113, "kMRMediaRemoteNowPlayingInfoPlaybackRate");
    *(v151[1] + 24) = v114;
    getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr = *(v151[1] + 24);
    v112 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v112)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_31();
  }

  CFDictionaryGetDouble();
  CFDictionarySetDouble();
  CFDictionarySetDouble();
  v115 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifier();
  v116 = CFNumberGetTypeID();
  v117 = metadataSource_cloneValue(v25, v115, v116, 0, v30, @"uniqueID", &v138);
  v146 = v117;
  if (v117)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_24(v117);
    goto LABEL_144;
  }

  if (!v138)
  {
    if (v144)
    {
      CFHash(v144);
    }

    if (v143)
    {
      CFHash(v143);
    }

    if (v142)
    {
      CFHash(v142);
    }

    if (v141)
    {
      CFHash(v141);
    }

    CFDictionarySetInt64();
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v121 = getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v122 = MediaRemoteLibrary();
    v123 = dlsym(v122, "kMRMediaRemoteNowPlayingInfoRepeatMode");
    *(v151[1] + 24) = v123;
    getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr = *(v151[1] + 24);
    v121 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v121)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_30();
  }

  Int64 = CFDictionaryGetInt64();
  v125 = Int64;
  if (Int64 < 2)
  {
    v126 = @"none";
    goto LABEL_125;
  }

  if (Int64 == 2)
  {
    v126 = @"one";
    goto LABEL_125;
  }

  if (Int64 == 3)
  {
    v126 = @"all";
LABEL_125:
    CFDictionarySetValue(v31, @"repeatMode", v126);
    goto LABEL_126;
  }

  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMetadataSource, "OSStatus metadataSource_updateAPNowPlayingInfo(APMetadataSourceRef, CFDictionaryRef)", 33554482, "### [%{ptr}] Bad repeat mode: %d\n", a1, v125);
  }

LABEL_126:
  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v127 = getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr;
  v155 = getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr)
  {
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = __getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_block_invoke;
    v150 = &unk_27849ACC8;
    v151 = &v152;
    v128 = MediaRemoteLibrary();
    v129 = dlsym(v128, "kMRMediaRemoteNowPlayingInfoShuffleMode");
    *(v151[1] + 24) = v129;
    getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr = *(v151[1] + 24);
    v127 = v153[3];
  }

  _Block_object_dispose(&v152, 8);
  if (!v127)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_29();
  }

  v130 = CFDictionaryGetInt64();
  v131 = v130;
  if (v130 < 2)
  {
    v132 = @"off";
  }

  else if (v130 == 2)
  {
    v132 = @"albums";
  }

  else
  {
    if (v130 != 3)
    {
      if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMetadataSource, "OSStatus metadataSource_updateAPNowPlayingInfo(APMetadataSourceRef, CFDictionaryRef)", 33554482, "### [%{ptr}] Bad shuffle mode: %d\n", a1, v131);
      }

      goto LABEL_139;
    }

    v132 = @"songs";
  }

  CFDictionarySetValue(v31, @"shuffleMode", v132);
LABEL_139:
  mach_absolute_time();
  CFDictionarySetInt64();
  updated = metadataSource_updateMetadata(a1, 2u, v30);
  v146 = updated;
  if (updated)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_25(updated);
  }

  else
  {
    v134 = metadataSource_updateMetadata(a1, 1u, v29);
    v146 = v134;
    if (v134)
    {
      metadataSource_handleNowPlayingInfoChangedInternal_cold_26(v134);
    }

    else
    {
      v135 = metadataSource_updateMetadata(a1, 0, v27);
      v146 = v135;
      if (v135)
      {
        metadataSource_handleNowPlayingInfoChangedInternal_cold_27(v135);
      }

      else
      {
        CFDictionaryApplyFunction(v27, metadataSource_appendDictionaryInternal, v31);
        CFDictionaryApplyFunction(v30, metadataSource_appendDictionaryInternal, v31);
        CFDictionaryApplyFunction(v29, metadataSource_appendDictionaryInternal, v31);
        v136 = metadataSource_updateMetadata(a1, 3u, v31);
        v146 = v136;
        if (v136)
        {
          metadataSource_handleNowPlayingInfoChangedInternal_cold_28(v136);
        }
      }
    }
  }

LABEL_144:
  CFRelease(v27);
  CFRelease(v29);
  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  v137 = v146;
  if (v146)
  {
LABEL_149:
    if (gLogCategory_APMetadataSource > 90)
    {
      return;
    }

    if (gLogCategory_APMetadataSource == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v137 = v146;
    }

    LogPrintF(&gLogCategory_APMetadataSource, "OSStatus metadataSource_updateAPNowPlayingInfo(APMetadataSourceRef, CFDictionaryRef)", 33554522, "### [%{ptr}] Bad Now Playing Info: %#m\n%.64@\n", a1, v137, v25);
  }
}

void sub_2220889A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void metadataSource_handleMRPlaybackStateChangedInternal(void *a1, uint64_t a2)
{
  if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMetadataSource, "void metadataSource_handleMRPlaybackStateChangedInternal(APMetadataSourceRef, MRPlaybackState)", 33554462, "[%{ptr}] %###s called with inPlaybackState=%d\n", a1, "void metadataSource_handleMRPlaybackStateChangedInternal(APMetadataSourceRef, MRPlaybackState)", a2);
  }

  UInt32 = FigCFNumberCreateUInt32();
  if (UInt32)
  {
    v5 = UInt32;
    v6 = a1[9];
    a1[9] = UInt32;
    CFRetain(UInt32);
    if (v6)
    {
      CFRelease(v6);
    }

    metadataSource_notifyMetadataChange(a1, 1836216435, v5, @"notApplicable", 1);

    CFRelease(v5);
  }

  else
  {
    metadataSource_handleMRPlaybackStateChangedInternal_cold_1();
  }
}

void metadataSource_handleMRSupportedCommandsChangedInternal(void *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    metadataSource_handleMRSupportedCommandsChangedInternal_cold_4();
LABEL_15:
    APSLogErrorAt();
    return;
  }

  Count = CFArrayGetCount(theArray);
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    metadataSource_handleMRSupportedCommandsChangedInternal_cold_3();
    goto LABEL_15;
  }

  v7 = Mutable;
  if (Count >= 1)
  {
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v10 = getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr;
      v18 = getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr;
      if (!getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr)
      {
        v11 = MediaRemoteLibrary();
        v16[3] = dlsym(v11, "MRMediaRemoteCommandInfoCreateExternalRepresentation");
        getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr = v16[3];
        v10 = v16[3];
      }

      _Block_object_dispose(&v15, 8);
      if (!v10)
      {
        metadataSource_handleMRSupportedCommandsChangedInternal_cold_2();
      }

      v12 = v10(v5, ValueAtIndex);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      CFArrayAppendValue(v7, v12);
      CFRelease(v13);
      if (Count == ++v8)
      {
        goto LABEL_10;
      }
    }

    metadataSource_handleMRSupportedCommandsChangedInternal_cold_1(v7);
    goto LABEL_15;
  }

LABEL_10:
  v14 = a1[8];
  a1[8] = v7;
  CFRetain(v7);
  if (v14)
  {
    CFRelease(v14);
  }

  metadataSource_notifyMetadataChange(a1, 1836217187, v7, @"notApplicable", 0);
  CFRelease(v7);
}

void sub_222088D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void metadataSource_handleNowPlayingClientChangedInternal(void *result, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMetadataSource, "void metadataSource_handleNowPlayingClientChangedInternal(APMetadataSourceRef, MRNowPlayingClientRef)", 33554462, "[%{ptr}] %###s called with inNowPlayingClient=%@\n", result, "void metadataSource_handleNowPlayingClientChangedInternal(APMetadataSourceRef, MRNowPlayingClientRef)", a2);
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v4 = getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr;
    v10 = getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr;
    if (!getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr)
    {
      v5 = MediaRemoteLibrary();
      v8[3] = dlsym(v5, "MRNowPlayingClientCreateExternalRepresentation");
      getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr = v8[3];
      v4 = v8[3];
    }

    _Block_object_dispose(&v7, 8);
    if (!v4)
    {
      metadataSource_handleNowPlayingClientChangedInternal_cold_2();
    }

    v6 = v4(a2);
    if (v6)
    {
      metadataSource_handleNowPlayingClientChangedInternal_cold_3(result, v6);
    }

    else
    {
      metadataSource_handleNowPlayingClientChangedInternal_cold_1();
    }
  }
}

void sub_222088EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void metadataSource_Finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APMetadataSource <= 50 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
  {
    metadataSource_Finalize_cold_1(a1, a2, a3);
  }

  if (*(a1 + 128))
  {
    if (gLogCategory_APMetadataSource <= 100 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
    {
      metadataSource_Finalize_cold_2(a1);
    }

    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = a1 + 24;
    do
    {
      v6 = *(v5 + v4);
      if (v6)
      {
        CFDictionaryRemoveAllValues(v6);
        v7 = *(v5 + v4);
        if (v7)
        {
          CFRelease(v7);
          *(v5 + v4) = 0;
        }
      }

      v4 += 8;
    }

    while (v4 != 32);

    *(a1 + 120) = 0;
    v8 = *(a1 + 56);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 56) = 0;
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 64) = 0;
    }

    v10 = *(a1 + 72);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 72) = 0;
    }

    v11 = *(a1 + 80);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 80) = 0;
    }

    v12 = *(a1 + 88);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 88) = 0;
    }

    v13 = *(a1 + 112);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 112) = 0;
    }

    v14 = *(a1 + 96);
    if (v14)
    {
      dispatch_release(v14);
      *(a1 + 96) = 0;
    }

    v15 = *(a1 + 16);
    if (v15)
    {
      dispatch_release(v15);
      *(a1 + 16) = 0;
    }
  }
}

Class __getMRClientClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRClientClass_block_invoke_cold_1();
  }

  getMRClientClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t MediaRemoteLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaRemoteLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849ACE8;
    v4 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaRemoteLibraryCore_frameworkLibrary;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    MediaRemoteLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __MediaRemoteLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMRPlayerPathClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRPlayerPath");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRPlayerPathClass_block_invoke_cold_1();
  }

  getMRPlayerPathClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRDestinationClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRDestination");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRDestinationClass_block_invoke_cold_1();
  }

  getMRDestinationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void metadataSource_notifyListenerAboutCurrentMetadata(uint64_t *a1)
{
  if (a1[1])
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (a1[1])
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      metadataSource_notifyListenerAboutCurrentMetadata_cold_1();
      goto LABEL_22;
    }

    v4 = v2;
    v12 = v2 == 0;
  }

  else
  {
    v4 = 0;
    v12 = 1;
  }

  v5 = &off_27849AD10;
  v6 = 8;
  do
  {
    cf = 0;
    v7 = *(v5 - 4);
    v9 = *(v5 - 1);
    v8 = *v5;
    v10 = APMetadataSourceCopyMetadata(*a1, v9, &cf);
    if (v10)
    {
      metadataSource_notifyListenerAboutCurrentMetadata_cold_2(v10, a1, v9);
    }

    else
    {
      if (gLogCategory_APMetadataSource <= 30 && (gLogCategory_APMetadataSource != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMetadataSource, "void metadataSource_notifyListenerAboutCurrentMetadata(void *)", 33554462, "[%{ptr}] Copied current %'@ metadata: %@\n", *a1, v9, cf);
      }

      (a1[2])(*a1, v4, v7, cf, v8, 0);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v5 += 3;
    --v6;
  }

  while (v6);
  if (!v12)
  {
    CFRelease(v4);
  }

LABEL_22:
  v11 = a1[1];
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(*a1);
}

uint64_t metadataSource_updateMetadata(void *a1, unsigned int a2, const __CFDictionary *a3)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10[0] = a1[a2 + 3];
  v10[1] = Mutable;
  if (Mutable)
  {
    MutableCopy = Mutable;
    CFDictionaryApplyFunction(a3, metadataSource_updateMetadataApplier, v10);
    if (CFDictionaryGetCount(MutableCopy) < 1)
    {
      goto LABEL_6;
    }

    if (a2 <= 1)
    {
      CFRelease(MutableCopy);
      MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a1[a2 + 3]);
    }

    metadataSource_notifyMetadataChange(a1, kAPMetadataSourceEventTypes[a2], MutableCopy, @"notApplicable", 0);
    if (MutableCopy)
    {
LABEL_6:
      CFRelease(MutableCopy);
    }

    return 0;
  }

  else
  {
    metadataSource_updateMetadata_cold_1();
    return 4294960568;
  }
}

void metadataSource_updateMetadataApplier(void *key, const void *a2, CFDictionaryRef *a3)
{
  CFDictionaryGetValue(*a3, key);
  if (*MEMORY[0x277CBEEE8] == a2)
  {
    v6 = *a3;

    CFDictionaryRemoveValue(v6, key);
  }

  else if (!FigCFEqual())
  {
    CFDictionarySetValue(*a3, key, a2);
    v7 = a3[1];

    CFDictionarySetValue(v7, key, a2);
  }
}

void metadataSource_notifyMetadataChange(void *a1, int a2, const void *a3, const void *a4, char a5)
{
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  CFRetain(a4);
  v10 = a1[12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __metadataSource_notifyMetadataChange_block_invoke;
  v11[3] = &__block_descriptor_61_e5_v8__0l;
  v12 = a2;
  v11[4] = a1;
  v11[5] = a3;
  v11[6] = a4;
  v13 = a5;
  dispatch_async(v10, v11);
}

void __metadataSource_notifyMetadataChange_block_invoke(uint64_t a1)
{
  CFDictionaryApplyBlock();
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(*(a1 + 48));
}

Class __getMRNowPlayingControllerConfigurationClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRNowPlayingControllerConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRNowPlayingControllerConfigurationClass_block_invoke_cold_1();
  }

  getMRNowPlayingControllerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRPlaybackQueueRequestClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRPlaybackQueueRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRPlaybackQueueRequestClass_block_invoke_cold_1();
  }

  getMRPlaybackQueueRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getMRNowPlayingControllerClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  result = objc_getClass("MRNowPlayingController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMRNowPlayingControllerClass_block_invoke_cold_1();
  }

  getMRNowPlayingControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtworkData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTotalTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoElapsedTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoArtworkMIMEType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoIsMusicApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoIsMusicAppSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTimestamp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoUniqueIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoMediaType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteMediaTypeMusicSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteMediaTypeMusic");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoAssetURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoAssetURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t metadataSource_cloneValue(const __CFDictionary *a1, const void *a2, uint64_t a3, const void *a4, __CFDictionary *a5, const void *a6, void *a7)
{
  Value = CFDictionaryGetValue(a1, a2);
  v13 = Value;
  if (Value)
  {
    a4 = Value;
    if (CFGetTypeID(Value) != a3)
    {
      metadataSource_cloneValue_cold_1();
      return 4294960540;
    }
  }

  else if (!a4)
  {
    goto LABEL_6;
  }

  CFDictionarySetValue(a5, a6, a4);
LABEL_6:
  result = 0;
  if (a7)
  {
    *a7 = v13;
  }

  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoComposerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoQueueIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoQueueIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTotalQueueCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTotalQueueCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoDiscNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoDiscNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTotalDiscCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTotalDiscCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoIsExplicitTrack");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoIsExplicitTrackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoIsAlwaysLive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoIsAlwaysLiveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoPlaybackRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoPlaybackRateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoRepeatMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoRepeatModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoShuffleMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoShuffleModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRMediaRemoteCommandInfoCreateExternalRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteCommandInfoCreateExternalRepresentationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRNowPlayingClientCreateExternalRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRNowPlayingClientCreateExternalRepresentationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APEndpointPlaybackSessionMCCreate(__CFString *a1, const void *a2, const void *a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  if (!a2)
  {
    APEndpointPlaybackSessionMCCreate_cold_5();
    return 4294950556;
  }

  if (!a3)
  {
    APEndpointPlaybackSessionMCCreate_cold_4();
    return 4294950556;
  }

  FigEndpointPlaybackSessionGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v21 = v12;
    APEndpointPlaybackSessionMCCreate_cold_1(v12);
    return v21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = dispatch_queue_create("APEndpointPlaybackSessionMC", 0);
  DerivedStorage[2] = v14;
  if (!v14)
  {
    APEndpointPlaybackSessionMCCreate_cold_3();
    return 4294950555;
  }

  v15 = dispatch_queue_create("APEndpointPlaybackSessionMC.notifications", 0);
  DerivedStorage[3] = v15;
  if (!v15)
  {
    return 4294950555;
  }

  if (a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = @"unnamed";
  }

  DerivedStorage[5] = v16;
  CFRetain(v16);
  v17 = *MEMORY[0x277CC1038];
  DerivedStorage[6] = *MEMORY[0x277CC1038];
  if (v17)
  {
    CFRetain(v17);
  }

  if (CFDictionaryContainsKey(a5, @"VolumeDB"))
  {
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    mcs_SetProperty(0, @"VolumeDB", TypedValue);
  }

  DerivedStorage[10] = CFRetain(a3);
  DerivedStorage[9] = CFRetain(a2);
  if (a4)
  {
    v19 = CFRetain(a4);
  }

  else
  {
    v19 = 0;
  }

  DerivedStorage[11] = v19;
  v20 = APEndpointPlaybackSessionStatsCreate(@"MC", a1, a5, DerivedStorage + 16);
  v21 = v20;
  if (v20)
  {
    APEndpointPlaybackSessionMCCreate_cold_2(v20);
  }

  else
  {
    *a6 = 0;
  }

  return v21;
}

uint64_t mcs_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"VolumeDB"))
  {
    CFGetDouble();
    APSVolumeConvertDBToSliderValue();
    *&valuePtr.value = v6;
    v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
    v8 = AirPlaySetProperty();
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC10D0]))
    {
      Value = CFBooleanGetValue(a3);
      APEndpointPlaybackSessionSetIsParticipatingInCoordinatedPlayback(*(DerivedStorage + 128), Value);
    }

    else if (CFEqual(a2, *MEMORY[0x277CC1108]))
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      CMTimeMakeFromDictionary(&valuePtr, a3);
      v10 = *(DerivedStorage + 128);
      v12 = valuePtr;
      APEndpointPlaybackSessionSetVideoSyncTime(v10, &v12);
    }

    return 0;
  }

  return v8;
}

uint64_t mcs_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 16), a1, mcs_InvalidateInternal);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  return 0;
}

void mcs_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
    {
      mcs_Finalize_cold_1(a1);
    }

    mcs_InvalidateInternal(a1);
    v4 = v3[4];
    if (v4)
    {
      CFRelease(v4);
      v3[4] = 0;
    }

    v5 = v3[5];
    if (v5)
    {
      CFRelease(v5);
      v3[5] = 0;
    }

    v6 = v3[6];
    if (v6)
    {
      CFRelease(v6);
      v3[6] = 0;
    }

    v7 = v3[9];
    if (v7)
    {
      CFRelease(v7);
      v3[9] = 0;
    }

    v8 = v3[10];
    if (v8)
    {
      CFRelease(v8);
      v3[10] = 0;
    }

    v9 = v3[11];
    if (v9)
    {
      CFRelease(v9);
      v3[11] = 0;
    }

    v10 = v3[15];
    if (v10)
    {
      CFRelease(v10);
      v3[15] = 0;
    }

    v11 = v3[8];
    if (v11)
    {
      CFRelease(v11);
      v3[8] = 0;
    }

    v12 = v3[2];
    if (v12)
    {
      dispatch_release(v12);
      v3[2] = 0;
    }

    v13 = v3[3];
    if (v13)
    {
      dispatch_release(v13);
      v3[3] = 0;
    }

    APEndpointPlaybackSessionStatsDestroy(v3 + 16);
  }
}

CFStringRef mcs_CopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = *(DerivedStorage + 40);
  }

  else
  {
    v2 = @"?";
  }

  return CFStringCreateWithFormat(0, 0, @"[APEndpointPlaybackSessionMC %@]", v2);
}

uint64_t mcs_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"RTCStats"))
  {
    APEndpointPlaybackSessionCopyRTCStats(*(DerivedStorage + 128), a4);
    if (!*a4)
    {
      mcs_CopyProperty_cold_1(&v22);
    }

    return v22;
  }

  if (*(DerivedStorage + 8))
  {
    mcs_CopyProperty_cold_2(&v22);
    return v22;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10E0]))
  {
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1100]))
  {
    APEndpointDescriptionGetCMBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      return v11(v10, @"SupportsAirPlayVideoPausedStart", a3, a4);
    }

    else
    {
      return -12782;
    }
  }

  if (CFEqual(a2, *MEMORY[0x277CC10F8]))
  {
    goto LABEL_15;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10E8]))
  {
    if (*(DerivedStorage + 80))
    {
      if (APSGetFBOPropertyInt64())
      {
        v14 = v22 == 0;
      }

      else
      {
        v14 = 0;
      }

      v8 = MEMORY[0x277CBED28];
      if (!v14)
      {
        v8 = MEMORY[0x277CBED10];
      }

      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, *MEMORY[0x277CC10D8]))
  {
LABEL_15:
    v8 = MEMORY[0x277CBED10];
    goto LABEL_7;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC10F0]))
  {
    if (CFEqual(a2, @"Activated"))
    {
      v8 = MEMORY[0x277CBED28];
      v19 = *(DerivedStorage + 56);
    }

    else
    {
      if (!CFEqual(a2, @"IsPlaying"))
      {
        return -12787;
      }

      v8 = MEMORY[0x277CBED28];
      v19 = *(DerivedStorage + 57);
    }

    if (!v19)
    {
      v8 = MEMORY[0x277CBED10];
    }

    goto LABEL_7;
  }

  if (!*(DerivedStorage + 80) || (v15 = APSGetFBOPropertyInt64(), v15 <= 2206799))
  {
    if (gLogCategory_EndpointPlaybackSessionMC <= 20 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
    {
      mcs_CopyProperty_cold_3();
    }

    goto LABEL_15;
  }

  if (v15 > 0x24D2F3)
  {
LABEL_6:
    v8 = MEMORY[0x277CBED28];
LABEL_7:
    *a4 = CFRetain(*v8);
    return v22;
  }

  theString = 0;
  v16 = APEndpointDescriptionCopyProperty(*(DerivedStorage + 80), @"OSVersion", *MEMORY[0x277CBECE8], &theString);
  v17 = 0;
  v22 = v16;
  if (!v16 && theString)
  {
    v17 = CFStringGetLength(theString) > 0;
  }

  if (gLogCategory_EndpointPlaybackSessionMC <= 20 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    v18 = "false";
    if (v17)
    {
      v18 = "true";
    }

    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554452, "endpointSourceVersion >= kAirPlaySourceVersion_Stowe && endpointSourceVersion < kAirPlaySourceVersion_Monarch, kFigEndpointPlaybackSessionProperty_SupportsHLSRenew = %s, osVersion = %@, err = %d", v18, theString, v22);
  }

  v20 = MEMORY[0x277CBED28];
  if (!v17)
  {
    v20 = MEMORY[0x277CBED10];
  }

  *a4 = CFRetain(*v20);
  if (theString)
  {
    CFRelease(theString);
  }

  return 0;
}

void mcs_InvalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v3 = DerivedStorage;
    APEndpointPlaybackSessionStatsUpdateAtInvalidate(*(DerivedStorage + 128));
    v4 = CMBaseObjectGetDerivedStorage();
    if (!*(v4 + 8))
    {
      v5 = *(v4 + 32);
      if (v5)
      {
        mcs_InvalidateInternal_cold_1(v4, a1, v5, (v4 + 32));
      }
    }

    *(v3 + 8) = 1;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    if (*v3)
    {
      os_release(*v3);
      *v3 = 0;
    }
  }
}

void mcs_postConnectedStateChangedNotification(uint64_t a1, int a2, int a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = *MEMORY[0x277CBED28];
    v10 = *MEMORY[0x277CBED10];
    if (a2)
    {
      v11 = *MEMORY[0x277CBED28];
    }

    else
    {
      v11 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"APEndpointPlaybackSessionMCNotificationPayloadKey_IsConnected", v11);
    if (a3)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    CFDictionarySetValue(v8, @"APEndpointPlaybackSessionMCNotificationPayloadKey_IsConnectedOnP2P", v12);
    if (a4)
    {
      CFDictionarySetValue(v8, @"APEndpointPlaybackSessionMCNotificationPayloadKey_EventStatus", a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v8);
  }

  else
  {
    mcs_postConnectedStateChangedNotification_cold_1();
  }
}

uint64_t mcs_updatePassword(uint64_t a1)
{
  v3 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 72))
  {
    APSGetFBOPropertyCString();
    v1 = MediaControlClient_SetPassword();
    v3 = v1;
    if (v1)
    {
      mcs_updatePassword_cold_2(v1);
    }
  }

  return v3;
}

uint64_t APEndpointDescriptionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  APEndpointDescriptionGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2, a3, a4);
}

uint64_t mcs_AuthorizeItem(const void *a1, const void *a2, const void *a3, void (*a4)(void, void, uint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    mcs_AuthorizeItem_cold_1(DerivedStorage, v10, v11);
  }

  if (*(DerivedStorage + 8))
  {
    v13 = 4294950554;
    if (a4)
    {
      a4(0, 0, 4294950554, a5);
    }
  }

  else
  {
    CFRetain(a2);
    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v13;
}

uint64_t mcs_Play(const void *a1, const __CFDictionary *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = a2;
  v14 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_Play(FigEndpointPlaybackSessionRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554482, "[%{ptr}] Endpoint playback session %@ play\n", a1, *(DerivedStorage + 40));
  }

  if (!*(DerivedStorage + 8))
  {
    CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CC0F68], &value);
    v9 = value;
    if (value)
    {
      v10 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = value;
    }

    else
    {
      v9 = *MEMORY[0x277CC1038];
      value = v9;
      v10 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = v9;
      if (!v9)
      {
LABEL_10:
        if (v10)
        {
          CFRelease(v10);
          v6 = v14;
        }

        APEndpointPlaybackSessionStatsUpdateAtPlay(*(DerivedStorage + 128), v6);
        APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(v6, &v14);
        CFRetain(a1);
        APSDispatchAsyncFHelper();
        return 0;
      }
    }

    CFRetain(v9);
    goto LABEL_10;
  }

  v11 = 4294950554;
  if (a3)
  {
    a3(4294950554, a4);
  }

  return v11;
}

uint64_t mcs_InsertPlayQueueItem(const void *a1, const __CFDictionary *a2, const void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v16 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_InsertPlayQueueItem(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554482, "[%{ptr}] Endpoint playback session %@ insert item\n", a1, *(DerivedStorage + 40));
  }

  if (*(DerivedStorage + 8))
  {
    v13 = 4294950554;
    if (a4)
    {
      a4(4294950554, a5);
    }
  }

  else
  {
    APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(a2, &v16);
    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a1);
    CFDictionaryGetValueIfPresent(v16, *MEMORY[0x277CC0F68], &value);
    if (!value)
    {
      value = *MEMORY[0x277CC1038];
    }

    if (!FigCFEqual())
    {
      v11 = value;
      v12 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = value;
      if (v11)
      {
        CFRetain(v11);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    APSDispatchAsyncFHelper();
    return 0;
  }

  return v13;
}

uint64_t mcs_RemovePlayQueueItem(const void *a1, const void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_RemovePlayQueueItem(FigEndpointPlaybackSessionRef, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554482, "[%{ptr}] Endpoint playback session %@ remove item (%@)\n", a1, *(DerivedStorage + 40), a2);
  }

  if (*(DerivedStorage + 8))
  {
    v9 = 4294950554;
    if (a3)
    {
      a3(4294950554, a4);
    }
  }

  else
  {
    if (a2)
    {
      CFRetain(a2);
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v9;
}

uint64_t mcs_Stop(const void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_Stop(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554482, "[%{ptr}] Endpoint playback session %@ stop\n", a1, *(DerivedStorage + 40));
  }

  if (*(DerivedStorage + 8))
  {
    APSLogErrorAt();
    v7 = 4294950554;
    if (a2)
    {
      a2(4294950554, a3);
    }
  }

  else
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v7;
}

uint64_t mcs_GetPlaybackInfo(const void *a1, void (*a2)(void, uint64_t, uint64_t), uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_GetPlaybackInfo(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionGetPlaybackInfoCompletion, void *)", 33554462, "[%{ptr}] Endpoint playback session %@ get playback info\n", a1, *(DerivedStorage + 40));
  }

  if (*(DerivedStorage + 8))
  {
    v7 = 4294950554;
    if (a2)
    {
      a2(0, 4294950554, a3);
    }
  }

  else
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v7;
}

uint64_t mcs_SeekToTime(const void *a1, CMTime *a2, const void *a3, void (*a4)(void, uint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    mcs_SeekToTime_cold_1(DerivedStorage, a2, a1);
  }

  if (*(DerivedStorage + 8))
  {
    v11 = 4294950554;
    if (a4)
    {
      a4(0, 4294950554, a5);
    }
  }

  else
  {
    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v11;
}

uint64_t mcs_SeekToDate(const void *a1, const void *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_SeekToDate(FigEndpointPlaybackSessionRef, CFDateRef, CFDictionaryRef, FigEndpointPlaybackSessionSeekCompletion, void *)", 33554482, "[%{ptr}] Endpoint playback session %@ seek to date %@\n", a1, *(DerivedStorage + 40), a2);
  }

  if (*(DerivedStorage + 8))
  {
    v10 = 4294950554;
    if (a4)
    {
      a4(0, 4294950554, a5);
    }
  }

  else
  {
    CFRetain(a1);
    if (a2)
    {
      CFRetain(a2);
    }

    APSDispatchAsyncFHelper();
    return 0;
  }

  return v10;
}

uint64_t mcs_SetRate(const void *a1, float a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 50 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_SetRate(FigEndpointPlaybackSessionRef, float, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554482, "[%{ptr}] Endpoint playback session %@ set rate %.3f\n", a1, *(DerivedStorage + 40), a2);
  }

  if (*(DerivedStorage + 8))
  {
    v10 = 4294950554;
    if (a4)
    {
      a4(4294950554, a5);
    }
  }

  else
  {
    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v10;
}

uint64_t mcs_GetProxiedProperty(const void *a1, const void *a2, uint64_t a3, void (*a4)(const void *, void, uint64_t, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "OSStatus mcs_GetProxiedProperty(FigEndpointPlaybackSessionRef, CFStringRef, CFDictionaryRef, FigEndpointPlaybackSessionGetProxiedPropertyCompletion, void *)", 33554462, "Endpoint playback session %@ get property %@\n", *(DerivedStorage + 40), a2);
  }

  if (FigCFEqual())
  {
    Value = FigCFDictionaryGetValue();
  }

  else
  {
    if (FigCFEqual())
    {
      v11 = 4294954509;
      if (!a4)
      {
        return v11;
      }

LABEL_14:
      a4(a2, 0, v11, a5);
      return v11;
    }

    Value = 0;
  }

  if (*(DerivedStorage + 8))
  {
    v11 = 4294950554;
    if (!a4)
    {
      return v11;
    }

    goto LABEL_14;
  }

  CFRetain(a2);
  if (Value)
  {
    CFRetain(Value);
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t mcs_PerformRemoteAction(const void *a1, const void *a2, const void *a3, void (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v10 = 4294950554;
    if (a4)
    {
      a4(4294950554, 0, a5);
    }
  }

  else
  {
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    return 0;
  }

  return v10;
}

uint64_t mcs_BroadcastCoordinatedPlaybackState(uint64_t a1)
{
  if (gLogCategory_EndpointPlaybackSessionMC <= 90 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    mcs_BroadcastCoordinatedPlaybackState_cold_1(a1);
  }

  return 4294954514;
}

void mcs_updateIsPlayingAndPostNotification(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 57) != v2)
  {
    v4 = DerivedStorage;
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = Mutable;
    v7 = MEMORY[0x277CBED10];
    if (v2)
    {
      v7 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"Playing", *v7);
    *(v4 + 57) = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v6);
  }
}

void mcs_invokeEventHandlerCallback(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_EndpointPlaybackSessionMC <= 30 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    mcs_invokeEventHandlerCallback_cold_1(DerivedStorage, a1, v2);
  }

  if (!*(DerivedStorage + 8))
  {
    v4 = *(DerivedStorage + 104);
    if (v4)
    {
      v4(*a1, a1[1], *(DerivedStorage + 112), *(DerivedStorage + 120));
    }
  }

  CFRelease(a1[1]);
  v5 = *a1;

  CFRelease(v5);
}

void mcs_PlayInternal(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v17 = -16742;
  }

  else
  {
    v3 = DerivedStorage;
    v4 = mcs_EnsureConnectedInternal(*a1);
    v17 = v4;
    if (!v4)
    {
      if (!*v3)
      {
        SNPrintF(v18, 64, "APEndpointPlaybackSessionMC.%{ptr}", *a1);
        *v3 = os_transaction_create();
      }

      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (v17 || (CFStringCopyUTF8CString(), !v16))
      {
        v5 = MediaControlClient_DoPlayRemote();
        v17 = v5;
        if (!v5)
        {
LABEL_12:
          *(v3 + 136) = 1;
LABEL_25:
          v17 = 0;
          *(v3 + 56) = 1;
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          mcs_updateIsPlayingAndPostNotification(*a1, 1);
          goto LABEL_26;
        }
      }

      else
      {
        v17 = MediaControlClient_DoPlayLocal();
        free(v16);
        v5 = v17;
        if (!v17)
        {
          goto LABEL_12;
        }
      }

      if (gLogCategory_EndpointPlaybackSessionMC <= 90)
      {
        if (gLogCategory_EndpointPlaybackSessionMC != -1 || (v6 = _LogCategory_Initialize(), v5 = v17, v6))
        {
          LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "void mcs_PlayInternal(void *)", 33554522, "[%{ptr}] Endpoint playback session %@ failed Play, err = %d\n", *a1, *(v3 + 40), v5);
          LODWORD(v5) = v17;
        }
      }

      if (v5 == 200453 && *(v3 + 136))
      {
        v12 = *a1;
        v14 = 0;
        v15 = 0;
        v13 = 0;
        v7 = v12;
        if (gLogCategory_EndpointPlaybackSessionMC <= 50)
        {
          if (gLogCategory_EndpointPlaybackSessionMC != -1 || (v8 = _LogCategory_Initialize(), v7 = *a1, v8))
          {
            LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "void mcs_PlayInternal(void *)", 33554482, "[%{ptr}] Endpoint playback session %@ sends InsertPlayQueueItem instead of Play\n", v7, *(v3 + 40));
            v7 = *a1;
          }
        }

        if (v7)
        {
          CFRetain(v7);
        }

        v9 = a1[1];
        if (v9)
        {
          CFRetain(v9);
        }

        mcs_InsertPlayQueueItemInternal(&v12);
      }

      goto LABEL_25;
    }

    mcs_PlayInternal_cold_1(v4);
  }

LABEL_26:
  v10 = a1[2];
  if (v10)
  {
    v10(v17, a1[3]);
  }

  v11 = a1[1];
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(*a1);
}

void mcs_InsertPlayQueueItemInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 8))
  {
    v5 = 4294950554;
  }

  else if (*(DerivedStorage + 32))
  {
    inserted = MediaControlClient_DoInsertPlaylistItem();
    v5 = inserted;
    if (!inserted)
    {
      goto LABEL_4;
    }

    mcs_InsertPlayQueueItemInternal_cold_1(inserted);
  }

  else
  {
    v5 = 4294950553;
  }

  if (gLogCategory_EndpointPlaybackSessionMC <= 90 && (gLogCategory_EndpointPlaybackSessionMC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EndpointPlaybackSessionMC, "void mcs_InsertPlayQueueItemInternal(void *)", 33554522, "[%{ptr}] Endpoint playback session %@ failed InsertPlayQueueItem, err = %d\n", *a1, *(v3 + 40), v5);
  }

LABEL_4:
  v6 = a1[3];
  if (v6)
  {
    v6(v5, a1[4]);
  }

  CFRelease(a1[1]);
  v7 = a1[2];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *a1;

  CFRelease(v8);
}

void mcs_StopInternal(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    mcs_StopInternal_cold_1();
    v4 = 4294950554;
  }

  else
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 32))
    {
      v4 = MediaControlClient_DoStop();
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 56) = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v5 = a1[1];
  if (v5)
  {
    v5(v4, a1[2]);
  }

  v6 = *a1;

  CFRelease(v6);
}

void mcs_GetProxiedPropertyInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (*(DerivedStorage + 8))
  {
    v3 = 0;
    v6 = -16742;
  }

  else
  {
    if (*(DerivedStorage + 32))
    {
      v3 = MediaControlClient_CopyProperty();
      goto LABEL_4;
    }

    v3 = 0;
    v6 = -16743;
  }

  v7 = v6;
LABEL_4:
  v4 = a1[3];
  if (v4)
  {
    v4(a1[1], v3, v7, a1[4]);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(a1[1]);
  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*a1);
}

uint64_t APMulticastProbeSenderCreate(void *a1)
{
  if (APMulticastProbeSenderGetShared_once != -1)
  {
    APMulticastProbeSenderCreate_cold_1();
  }

  v2 = APMulticastProbeSenderGetShared_multicastProbeSender;
  if (APMulticastProbeSenderGetShared_multicastProbeSender)
  {
    v2 = CFRetain(APMulticastProbeSenderGetShared_multicastProbeSender);
  }

  *a1 = v2;
  return gCreationErr;
}

uint64_t APMulticastProbeSenderGetShared(uint64_t a1, uint64_t a2)
{
  if (APMulticastProbeSenderGetShared_once != -1)
  {
    APMulticastProbeSenderCreate_cold_1();
  }

  return APMulticastProbeSenderGetShared_multicastProbeSender;
}

void __APMulticastProbeSenderGetShared_block_invoke()
{
  cf = 0;
  LogSetAppID();
  IsFeatureEnabled = APSSettingsIsFeatureEnabled();
  multicastProbeSender_create_isMC2UCDetectionEnabled = IsFeatureEnabled;
  if (gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      IsFeatureEnabled = multicastProbeSender_create_isMC2UCDetectionEnabled;
    }

    LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_create(CFDictionaryRef, APMulticastProbeSenderRef *)", 33554482, "multicastProbeSender_create isMC2UCDetectionEnabled=%d", IsFeatureEnabled);
LABEL_5:
    IsFeatureEnabled = multicastProbeSender_create_isMC2UCDetectionEnabled;
  }

  if (!IsFeatureEnabled)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if (multicastProbeSender_GetClassID_onceToken != -1)
  {
    __APMulticastProbeSenderGetShared_block_invoke_cold_1();
  }

  v1 = CMDerivedObjectCreate();
  if (v1)
  {
    v2 = v1;
    if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      __APMulticastProbeSenderGetShared_block_invoke_cold_2(v2);
    }

    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigSimpleMutexCreate();
  DerivedStorage[15] = v5;
  if (!v5)
  {
    __APMulticastProbeSenderGetShared_block_invoke_cold_8();
LABEL_38:
    v2 = -6728;
LABEL_15:
    if (cf)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(cf);
      }

      CFRelease(cf);
    }

    goto LABEL_33;
  }

  v6 = dispatch_queue_create("AirPlayMulticastProbeSenderQueue", 0);
  DerivedStorage[6] = v6;
  if (!v6)
  {
    __APMulticastProbeSenderGetShared_block_invoke_cold_7();
    goto LABEL_38;
  }

  DerivedStorage[13] = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    __APMulticastProbeSenderGetShared_block_invoke_cold_3(&cf);
  }

  v7 = cf;
  v8 = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  if (!*(v8 + 56))
  {
    v9 = v8;
    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v8 + 48));
    *(v9 + 56) = v10;
    if (v10)
    {
      v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v19[3] = v11;
      if (v11)
      {
        CFRetain(v11);
        v12 = *(v9 + 56);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 0x40000000;
        handler[2] = __multicastProbeSender_createMC2UCProbingTimer_block_invoke;
        handler[3] = &unk_27849AE98;
        handler[4] = &v18;
        dispatch_source_set_event_handler(v12, handler);
        v13 = *(v9 + 56);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 0x40000000;
        v16[2] = __multicastProbeSender_createMC2UCProbingTimer_block_invoke_2;
        v16[3] = &unk_27849AEC0;
        v16[4] = &v18;
        dispatch_source_set_cancel_handler(v13, v16);
        dispatch_source_set_timer(*(v9 + 56), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        dispatch_activate(*(v9 + 56));
        if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
        {
          __APMulticastProbeSenderGetShared_block_invoke_cold_4(v7);
        }
      }

      else
      {
        __APMulticastProbeSenderGetShared_block_invoke_cold_5();
      }
    }

    else
    {
      __APMulticastProbeSenderGetShared_block_invoke_cold_6();
    }
  }

  v14 = v19[3];
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v18, 8);
  v2 = 0;
  APMulticastProbeSenderGetShared_multicastProbeSender = cf;
LABEL_33:
  gCreationErr = v2;
}

uint64_t multicastProbeSender_registerDeviceForAddressFamily(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    multicastProbeSender_registerDeviceForAddressFamily_cold_1();
    v16 = 4294896148;
  }

  else
  {
    v8 = CFStringGetOrCopyCStringUTF8();
    if (v8)
    {
      v16 = v8;
      multicastProbeSender_registerDeviceForAddressFamily_cold_2(v8);
    }

    else
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s_%u", 0, a4);
      if (v9)
      {
        v10 = v9;
        if (CFDictionaryContainsKey(*(DerivedStorage + 104), v9))
        {
          Value = CFDictionaryGetValue(*(DerivedStorage + 104), v10);
          v12 = Value;
          if (a4 != 2 && !Value)
          {
            if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_registerDeviceForAddressFamily(APMulticastProbeSenderRef, CFStringRef, CFStringRef, sa_family_t)", 33554482, "[%{ptr}] Unsupported inFamily=%u!\n", a1, a4);
            }

            v16 = 0;
            goto LABEL_27;
          }

          if (!Value)
          {
            multicastProbeSender_registerDeviceForAddressFamily_cold_9();
            goto LABEL_52;
          }

          v13 = CFDictionaryContainsKey(*(DerivedStorage + 96), a2);
          if (v13)
          {
            v14 = CFDictionaryGetValue(*(DerivedStorage + 96), a2);
            if (!v14)
            {
              multicastProbeSender_registerDeviceForAddressFamily_cold_3();
LABEL_52:
              v16 = 4294960587;
              goto LABEL_27;
            }
          }

          else
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!Mutable)
            {
              multicastProbeSender_registerDeviceForAddressFamily_cold_8();
              v16 = 4294960568;
              goto LABEL_27;
            }

            v14 = Mutable;
            FigCFDictionarySetValue();
            CFDictionarySetValue(*(DerivedStorage + 96), a2, v14);
          }

          if (a4 == 2 || a4 == 30)
          {
            FigCFDictionarySetUInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetUInt32();
            if (APMulticastProbeSenderGetShared_once != -1)
            {
              multicastProbeSender_registerDeviceForAddressFamily_cold_4();
            }

            if (multicastProbeSender_probeForMC2UC(APMulticastProbeSenderGetShared_multicastProbeSender, a4) && gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
            {
              multicastProbeSender_registerDeviceForAddressFamily_cold_5(a4, a1, v20);
            }

            v21 = multicastProbeSender_incrementRefCountForSSMGroupInfo(a1, v10, v12);
            if (v21)
            {
              v16 = v21;
              multicastProbeSender_registerDeviceForAddressFamily_cold_6(v21);
            }

            else
            {
              if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
              {
                multicastProbeSender_registerDeviceForAddressFamily_cold_7(a4, a1, a2);
              }

              v16 = 0;
            }
          }

          else
          {
            if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_registerDeviceForAddressFamily(APMulticastProbeSenderRef, CFStringRef, CFStringRef, sa_family_t)", 33554522, "[%{ptr}] Invalid inFamily=%u!\n", a1, a4);
            }

            v16 = 4294960591;
          }

          if (!v13)
          {
            CFRelease(v14);
          }

LABEL_27:
          free(0);
          CFRelease(v10);
          if (!v16)
          {
            return v16;
          }

          goto LABEL_28;
        }

        multicastProbeSender_registerDeviceForAddressFamily_cold_10();
        goto LABEL_52;
      }

      multicastProbeSender_registerDeviceForAddressFamily_cold_11();
      v16 = 4294960568;
    }
  }

  free(0);
LABEL_28:
  if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    multicastProbeSender_registerDeviceForAddressFamily_cold_12(a1, v17, v18);
  }

  return v16;
}

uint64_t APMulticastProbeSenderReleaseSSMGroupInfo(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = 0;
  if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus APMulticastProbeSenderReleaseSSMGroupInfo(CMBaseObjectRef, CFStringRef)", 33554462, "[%{ptr}] MC2UC - Decrement the ref count for interface=%@ by 1\n", a1, a2, 0, 0);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 64))
  {
    APMulticastProbeSenderReleaseSSMGroupInfo_cold_1();
    v7 = 4294896148;
  }

  else if (*(DerivedStorage + 104))
  {
    v5 = CFStringGetOrCopyCStringUTF8();
    if (v5)
    {
      v7 = v5;
      APMulticastProbeSenderReleaseSSMGroupInfo_cold_2(v5);
    }

    else
    {
      multicastProbeSender_decrementRefCountForSSMGroupInfo(a1, v12, 2);
      v6 = multicastProbeSender_decrementRefCountForSSMGroupInfo(a1, v12, 30);
      v7 = v6;
      if (v6)
      {
        APMulticastProbeSenderReleaseSSMGroupInfo_cold_3(v6);
      }
    }
  }

  else
  {
    APMulticastProbeSenderReleaseSSMGroupInfo_cold_4();
    v7 = 4294960591;
  }

  FigSimpleMutexUnlock();
  free(v11);
  if (v7 && gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    APMulticastProbeSenderReleaseSSMGroupInfo_cold_5(a1, v8, v9);
  }

  return v7;
}

uint64_t multicastProbeSender_decrementRefCountForSSMGroupInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    multicastProbeSender_decrementRefCountForSSMGroupInfo_cold_1();
    return 4294896148;
  }

  v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s_%u", a2, a3);
  if (!v7)
  {
    multicastProbeSender_decrementRefCountForSSMGroupInfo_cold_4();
    return 4294960568;
  }

  v8 = v7;
  Value = CFDictionaryGetValue(*(DerivedStorage + 104), v7);
  if (a3 != 30)
  {
    if (a3 != 2)
    {
      if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_decrementRefCountForSSMGroupInfo(APMulticastProbeSenderRef, const char *, sa_family_t)", 33554522, "[%{ptr}] Invalid inAddressFamily=%u!\n", a1, a3);
      }

      v12 = 4294960591;
      goto LABEL_22;
    }

    if (!Value)
    {
      multicastProbeSender_decrementRefCountForSSMGroupInfo_cold_3();
      goto LABEL_27;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged <= 0)
    {
      multicastProbeSender_decrementRefCountForSSMGroupInfo_cold_2();
LABEL_27:
      v12 = 4294960587;
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if (Value)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged >= 1)
    {
LABEL_10:
      v11 = (Int64Ranged - 1);
      if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_decrementRefCountForSSMGroupInfo(APMulticastProbeSenderRef, const char *, sa_family_t)", 33554462, "[%{ptr}] Updated reference count=%d for key='%@'\n", a1, v11, v8);
      }

      FigCFDictionarySetInt32();
      if (!v11)
      {
        FigCFDictionaryGetIntIfPresent();
        CFDictionaryRemoveValue(*(DerivedStorage + 104), v8);
      }
    }
  }

  v12 = 0;
LABEL_22:
  CFRelease(v8);
  return v12;
}

uint64_t APMulticastProbeSenderUnregister(uint64_t a1, void *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = mach_absolute_time();
  if (gLogCategory_APMulticastProbeSender <= 10 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus APMulticastProbeSenderUnregister(CMBaseObjectRef, CFStringRef, CFDictionaryRef *)", 33554442, "[%{ptr}] MC2UC - Unregistering device name=%@\n", a1, a2);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 64))
  {
    v31 = 4294896148;
LABEL_111:
    APSLogErrorAt();
    goto LABEL_112;
  }

  v7 = *(DerivedStorage + 96);
  if (!v7)
  {
    v31 = 4294960591;
    goto LABEL_111;
  }

  key = a2;
  v39 = a1;
  Value = CFDictionaryGetValue(v7, a2);
  if (!Value)
  {
    v31 = 4294960569;
LABEL_112:
    FigSimpleMutexUnlock();
LABEL_86:
    if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      APMulticastProbeSenderUnregister_cold_19(a1, v32, v33);
    }

    return v31;
  }

  v9 = Value;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v10 = CFDictionaryGetInt64Ranged();
  v11 = CFDictionaryGetInt64Ranged();
  v12 = CFDictionaryGetInt64Ranged();
  v13 = CFDictionaryGetInt64Ranged();
  v35 = v6;
  v14 = v6 - CFDictionaryGetInt64();
  Int64 = CFDictionaryGetInt64();
  v16 = CFDictionaryGetInt64();
  v17 = CFDictionaryGetInt64Ranged();
  if (v17 == 2)
  {
    v16 += v14;
  }

  else if (v17 == 1)
  {
    Int64 += v14;
  }

  CFDictionaryGetValue(v9, @"MC2UCInterface");
  if (gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus APMulticastProbeSenderUnregister(CMBaseObjectRef, CFStringRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Report MC2UC KPIs for [%@]:\n", v39, key);
    }

    if (gLogCategory_APMulticastProbeSender <= 50)
    {
      if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
      {
        APMulticastProbeSenderUnregister_cold_1(v12);
      }

      if (gLogCategory_APMulticastProbeSender <= 50)
      {
        if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
        {
          APMulticastProbeSenderUnregister_cold_2(v10);
        }

        if (gLogCategory_APMulticastProbeSender <= 50)
        {
          if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
          {
            APMulticastProbeSenderUnregister_cold_3(Int64Ranged);
          }

          if (gLogCategory_APMulticastProbeSender <= 50)
          {
            if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
            {
              APMulticastProbeSenderUnregister_cold_4(v11);
            }

            if (gLogCategory_APMulticastProbeSender <= 50)
            {
              if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
              {
                APMulticastProbeSenderUnregister_cold_5(v13);
              }

              if (gLogCategory_APMulticastProbeSender <= 50)
              {
                if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
                {
                  APMulticastProbeSenderUnregister_cold_6(v16 + Int64, Int64);
                }

                if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
                {
                  APMulticastProbeSenderUnregister_cold_7(v16 + Int64, v16);
                }
              }
            }
          }
        }
      }
    }
  }

  if (!a3)
  {
    v19 = 0;
    v20 = CFDictionaryGetInt64Ranged();
    if (!v20)
    {
      goto LABEL_71;
    }

    goto LABEL_43;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v31 = 4294960568;
    a1 = v39;
    goto LABEL_111;
  }

  v19 = Mutable;
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v20 = CFDictionaryGetInt64Ranged();
  if (!v20)
  {
    goto LABEL_70;
  }

LABEL_43:
  v37 = CFDictionaryGetInt64Ranged();
  v21 = CFDictionaryGetInt64Ranged();
  v22 = CFDictionaryGetInt64Ranged();
  v23 = CFDictionaryGetInt64Ranged();
  v24 = v35 - CFDictionaryGetInt64();
  v25 = CFDictionaryGetInt64();
  v26 = CFDictionaryGetInt64();
  v27 = CFDictionaryGetInt64Ranged();
  if (v27 == 2)
  {
    v26 += v24;
  }

  else if (v27 == 1)
  {
    v25 += v24;
  }

  if (gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
    {
      APMulticastProbeSenderUnregister_cold_8(v22);
    }

    if (gLogCategory_APMulticastProbeSender <= 50)
    {
      if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
      {
        APMulticastProbeSenderUnregister_cold_9(v20);
      }

      if (gLogCategory_APMulticastProbeSender <= 50)
      {
        if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
        {
          APMulticastProbeSenderUnregister_cold_10(v37);
        }

        if (gLogCategory_APMulticastProbeSender <= 50)
        {
          if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
          {
            APMulticastProbeSenderUnregister_cold_11(v21);
          }

          if (gLogCategory_APMulticastProbeSender <= 50)
          {
            if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
            {
              APMulticastProbeSenderUnregister_cold_12(v23);
            }

            if (gLogCategory_APMulticastProbeSender <= 50)
            {
              if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
              {
                APMulticastProbeSenderUnregister_cold_13(v26 + v25, v25);
              }

              if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
              {
                APMulticastProbeSenderUnregister_cold_14(v26 + v25, v26);
              }
            }
          }
        }
      }
    }
  }

  if (a3)
  {
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
LABEL_70:
    *a3 = CFRetain(v19);
  }

LABEL_71:
  v28 = CFStringGetOrCopyCStringUTF8();
  if (v28)
  {
    v31 = v28;
    APMulticastProbeSenderUnregister_cold_15(v28);
    a1 = v39;
  }

  else
  {
    a1 = v39;
    v29 = multicastProbeSender_decrementRefCountForSSMGroupInfo(v39, 0, 2);
    if (v29)
    {
      v31 = v29;
      APMulticastProbeSenderUnregister_cold_16(v29);
    }

    else
    {
      v30 = multicastProbeSender_decrementRefCountForSSMGroupInfo(v39, 0, 30);
      if (v30)
      {
        v31 = v30;
        APMulticastProbeSenderUnregister_cold_17(v30);
      }

      else
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 96), key);
        if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus APMulticastProbeSenderUnregister(CMBaseObjectRef, CFStringRef, CFDictionaryRef *)", 33554482, "[%{ptr}] MC2UC - Unregistered device name=%@\n", v39, key);
        }

        if (!FigCFDictionaryGetCount())
        {
          dispatch_source_set_timer(*(DerivedStorage + 56), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
          *(DerivedStorage + 112) = 0;
          if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
          {
            APMulticastProbeSenderUnregister_cold_18(v39);
          }
        }

        v31 = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  if (v19)
  {
    CFRelease(v19);
  }

  free(0);
  if (v31)
  {
    goto LABEL_86;
  }

  return v31;
}

void __multicastProbeSender_createMC2UCProbingTimer_block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __multicastProbeSender_updateTxProbePacketsForClients_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v6 = (result + 60);
  v5 = *(result + 60);
  if (v5 == 30)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (!Int64Ranged)
    {
      FigCFDictionarySetUInt64();
    }

    v8 = (*(v4 + 56) + Int64Ranged);
    goto LABEL_9;
  }

  if (v5 != 2)
  {
    if (gLogCategory_APMulticastProbeSender <= 90)
    {
      if (gLogCategory_APMulticastProbeSender == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_14;
        }

        v5 = *v6;
      }

      result = LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_updateTxProbePacketsForClients(CMBaseObjectRef, int, sa_family_t)_block_invoke", 33554522, "[%{ptr}] Invalid inFamily=%u!\n", *(v4 + 48), v5);
    }

LABEL_14:
    v8 = 0;
    *(*(*(v4 + 32) + 8) + 24) = -6705;
    goto LABEL_15;
  }

  v7 = CFDictionaryGetInt64Ranged();
  if (!v7)
  {
    FigCFDictionarySetUInt64();
  }

  v8 = (*(v4 + 56) + v7);
LABEL_9:
  result = FigCFDictionarySetInt32();
LABEL_15:
  if (!*(*(*(v4 + 32) + 8) + 24) && gLogCategory_APMulticastProbeSender <= 50)
  {
    if (gLogCategory_APMulticastProbeSender != -1)
    {
      return __multicastProbeSender_updateTxProbePacketsForClients_block_invoke_cold_1(v4, v6, a2, v8);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __multicastProbeSender_updateTxProbePacketsForClients_block_invoke_cold_1(v4, v6, a2, v8);
    }
  }

  return result;
}

uint64_t multicastProbeSender_incrementRefCountForSSMGroupInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    multicastProbeSender_incrementRefCountForSSMGroupInfo_cold_1();
    return 4294896148;
  }

  else
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged < 0)
    {
      multicastProbeSender_incrementRefCountForSSMGroupInfo_cold_2();
      return 4294960587;
    }

    else
    {
      v7 = (Int64Ranged + 1);
      if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_incrementRefCountForSSMGroupInfo(APMulticastProbeSenderRef, CFStringRef, CFMutableDictionaryRef)", 33554462, "[%{ptr}] Updated reference count=%d for key='%@'\n", a1, v7, a2);
      }

      FigCFDictionarySetInt32();
      return 0;
    }
  }
}

uint64_t multicastProbeSender_constructMulticastGroupInfoForAddressFamily(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v46.sa_len = 0;
  *&v46.sa_data[6] = 0;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  cf = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 64))
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_1();
    v20 = 0;
    v10 = 0;
    v15 = 0;
    v22 = 4294896148;
LABEL_155:
    v19 = -1;
    goto LABEL_90;
  }

  v8 = CFStringGetOrCopyCStringUTF8();
  if (v8)
  {
    v22 = v8;
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_2(v8);
    v20 = 0;
    v10 = 0;
    v15 = 0;
    goto LABEL_155;
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s_%u", 0, a3);
  if (!v10)
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_16();
    v20 = 0;
    v15 = 0;
    v22 = 4294960568;
    goto LABEL_155;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 104), v10);
  v12 = Value;
  if (Value)
  {
    CFRetain(Value);
    v13 = CFDictionaryGetValue(v12, @"MC2UCSSMGroupInfo");
    if (v13)
    {
      v14 = CFRetain(v13);
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v19 = -1;
    v20 = v12;
    goto LABEL_16;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  v42 = a4;
  allocator = v9;
  if (a3 == 30)
  {
    if (IsAppleInternalBuild() && (CFStringGetTypeID(), (v25 = APSSettingsCopyValueEx()) != 0))
    {
      v26 = v25;
      if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMulticastProbeSender, "void multicastProbeSender_configureSSM(APMulticastProbeSenderRef, sa_family_t)", 33554482, "[%{ptr}] defaults write ssmGroupIPv6Addr=%@", a1, v26);
      }

      APSCFStringToSockAddr();
      CFRelease(v26);
    }

    else
    {
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 40) = 0;
      *(v16 + 32) = 0;
      *(v16 + 16) = 572661276;
      *(v16 + 24) = 13311;
      v27 = arc4random();
      *(v16 + 36) = HIBYTE(v27) | 0x80;
      *(v16 + 37) = BYTE2(v27);
      *(v16 + 38) = BYTE1(v27);
      *(v16 + 39) = v27;
    }

    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "void multicastProbeSender_configureSSM(APMulticastProbeSenderRef, sa_family_t)", 33554482, "[%{ptr}] ssmGroupIPv6Addr=%##a", a1, v16 + 16);
    }
  }

  else if (a3 == 2)
  {
    if (IsAppleInternalBuild() && (CFStringGetTypeID(), (v17 = APSSettingsCopyValueEx()) != 0))
    {
      v18 = v17;
      if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMulticastProbeSender, "void multicastProbeSender_configureSSM(APMulticastProbeSenderRef, sa_family_t)", 33554482, "[%{ptr}] defaults write ssmGroupIPv4Addr=%@", a1, v18);
      }

      APSCFStringToSockAddr();
      CFRelease(v18);
    }

    else
    {
      *v16 = 0;
      *(v16 + 8) = 0;
      *v16 = 572654096;
      *(v16 + 4) = bswap32(arc4random() % 0xFFFF00 - 402652928);
    }

    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "void multicastProbeSender_configureSSM(APMulticastProbeSenderRef, sa_family_t)", 33554482, "[%{ptr}] ssmGroupIPv4Addr=%##a", a1, v16);
    }
  }

  else if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMulticastProbeSender, "void multicastProbeSender_configureSSM(APMulticastProbeSenderRef, sa_family_t)", 33554522, "[%{ptr}] Invalid addressFamily=%u!\n", a1, a3);
  }

  v19 = socket(a3, 2, 17);
  if (v19 < 0)
  {
    if (*__error())
    {
      v22 = *__error();
      if (!v22)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v22 = 4294960596;
    }

    if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_constructMulticastGroupInfoForAddressFamily(APMulticastProbeSenderRef, CFStringRef, sa_family_t, CFMutableDictionaryRef *)", 33554522, "[%{ptr}] Failed to create socket with err=%#m\n", a1, v22);
    }

    goto LABEL_89;
  }

LABEL_53:
  if_nametoindex(0);
  v28 = SocketSetMulticastInterface();
  if (v28)
  {
    v22 = v28;
    if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_constructMulticastGroupInfoForAddressFamily(APMulticastProbeSenderRef, CFStringRef, sa_family_t, CFMutableDictionaryRef *)", 33554522, "[%{ptr}] SocketSetMulticastInterface failed with err=%#m\n", a1, v22);
    }

    goto LABEL_89;
  }

  v29 = v42;
  if (a3 == 2)
  {
    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_constructMulticastGroupInfoForAddressFamily(APMulticastProbeSenderRef, CFStringRef, sa_family_t, CFMutableDictionaryRef *)", 33554482, "[%{ptr}] Connecting to ssmGroupIPv4Addr=%##a", a1, DerivedStorage);
    }

    if (!connect(v19, DerivedStorage, 0x10u))
    {
      goto LABEL_75;
    }

LABEL_73:
    if (*__error())
    {
      v22 = *__error();
      if (!v22)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v22 = 4294960596;
    }

    if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_constructMulticastGroupInfoForAddressFamily(APMulticastProbeSenderRef, CFStringRef, sa_family_t, CFMutableDictionaryRef *)", 33554522, "[%{ptr}] connect failed with err=%#m\n", a1, v22);
    }

    goto LABEL_89;
  }

  if (a3 == 30)
  {
    *(DerivedStorage + 40) = if_nametoindex(0);
    if (gLogCategory_APMulticastProbeSender <= 50 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_constructMulticastGroupInfoForAddressFamily(APMulticastProbeSenderRef, CFStringRef, sa_family_t, CFMutableDictionaryRef *)", 33554482, "[%{ptr}] Connecting to ssmGroupIPv6Addr=%##a", a1, DerivedStorage + 16);
    }

    v29 = v42;
    if (connect(v19, (DerivedStorage + 16), 0x1Cu))
    {
      goto LABEL_73;
    }
  }

LABEL_75:
  v45 = 28;
  if (getsockname(v19, &v46, &v45))
  {
    if (*__error())
    {
      v22 = *__error();
      if (!v22)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v22 = 4294960596;
    }

    if (gLogCategory_APMulticastProbeSender <= 90 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_constructMulticastGroupInfoForAddressFamily(APMulticastProbeSenderRef, CFStringRef, sa_family_t, CFMutableDictionaryRef *)", 33554522, "[%{ptr}] getsockname failed with err=%#m\n", a1, v22);
    }

LABEL_89:
    v20 = 0;
    v15 = 0;
    goto LABEL_90;
  }

LABEL_78:
  if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_constructMulticastGroupInfoForAddressFamily(APMulticastProbeSenderRef, CFStringRef, sa_family_t, CFMutableDictionaryRef *)", 33554462, "[%{ptr}] Socket address %##a\n", a1, &v46);
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_15();
    v20 = 0;
    v15 = 0;
    v22 = 4294960568;
    goto LABEL_90;
  }

  v14 = Mutable;
  if (a3 == 2)
  {
    v32 = APSCFDictionarySetSockAddr();
    if (v32)
    {
      v22 = v32;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_5(v32);
      goto LABEL_171;
    }

    v33 = APSCFDictionarySetSockAddr();
    if (v33)
    {
      v22 = v33;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_6(v33);
LABEL_171:
      v20 = 0;
      v15 = 0;
      goto LABEL_25;
    }
  }

  else if (a3 == 30)
  {
    v34 = APSCFDictionarySetSockAddr();
    if (v34)
    {
      v22 = v34;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_3(v34);
      goto LABEL_171;
    }

    v35 = APSCFDictionarySetSockAddr();
    if (v35)
    {
      v22 = v35;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_4(v35);
      goto LABEL_171;
    }
  }

  if (*v29 && CFDictionaryContainsKey(*v29, @"groupEncryptionKey"))
  {
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v15 = CFRetain(TypedValue);
      v37 = 0;
    }

    else
    {
      v37 = 0;
      v15 = 0;
    }
  }

  else
  {
    v49 = 0;
    RandomBytes();
    v38 = CFDataCreate(allocator, bytes, 32);
    v39 = APSCryptorChaCha20Poly1305Create();
    v22 = v39;
    if (v39)
    {
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_7(v39);
      v37 = 0;
      v15 = 0;
    }

    else
    {
      if (gLogCategory_APMulticastProbeSender <= 30 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
      {
        multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_8(a1);
      }

      v37 = v49;
      cf = v49;
      v49 = 0;
      v15 = v38;
      v38 = 0;
    }

    for (i = 0; i != 32; ++i)
    {
      bytes[i] = 0;
    }

    if (v38)
    {
      CFRelease(v38);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v22)
    {
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_9(v22);
      v20 = 0;
      goto LABEL_24;
    }

    FigCFDictionarySetValue();
  }

  v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v20)
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_14();
    goto LABEL_162;
  }

  FigCFDictionarySetInt();
  if (gLogCategory_APMulticastProbeSender <= 10 && (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_constructMulticastGroupInfoForAddressFamily(APMulticastProbeSenderRef, CFStringRef, sa_family_t, CFMutableDictionaryRef *)", 33554442, "[%{ptr}] Set refCount=%d for key='%@'\n", a1, 1, v10);
  }

  FigCFDictionarySetInt32();
  FigCFDictionarySetValue();
  if (!v37)
  {
    if (v15)
    {
      v41 = APSCryptorChaCha20Poly1305Create();
      if (v41)
      {
        v22 = v41;
        multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_10(v41);
        goto LABEL_24;
      }
    }
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (gLogCategory_APMulticastProbeSender > 50)
  {
    a4 = v42;
  }

  else
  {
    a4 = v42;
    if (gLogCategory_APMulticastProbeSender != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APMulticastProbeSender, "OSStatus multicastProbeSender_constructMulticastGroupInfoForAddressFamily(APMulticastProbeSenderRef, CFStringRef, sa_family_t, CFMutableDictionaryRef *)", 33554482, "[%{ptr}] MC2UC added entry for interface_family [%@]\n", a1, v10);
    }
  }

LABEL_16:
  if (*a4)
  {
    v21 = CFDictionaryMergeDictionary();
    if (v21)
    {
      v22 = v21;
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_11(v21);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *a4 = MutableCopy;
  if (!MutableCopy)
  {
    multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_13();
LABEL_162:
    v22 = 4294960568;
    goto LABEL_24;
  }

LABEL_20:
  if (v12)
  {
    v24 = multicastProbeSender_incrementRefCountForSSMGroupInfo(a1, v10, v20);
    v22 = v24;
    if (v24)
    {
      multicastProbeSender_constructMulticastGroupInfoForAddressFamily_cold_12(v24);
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_24:
  if (v14)
  {
LABEL_25:
    CFRelease(v14);
  }

LABEL_90:
  free(0);
  if ((v19 & 0x80000000) == 0 && v22 && close(v19) && *__error())
  {
    __error();
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1)
{

  return FigCFDictionarySetUInt64();
}

uint64_t handleTestEchoCommand(int a1, CFTypeRef cf, void *a3)
{
  if (cf)
  {
    v4 = CFRetain(cf);
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 0;
}

uint64_t AirPlayDiscoveryBrokerXPCServicesServerStart()
{
  if (!APSSettingsIsFeatureEnabled() || !FigGetCFPreferenceNumberWithDefault())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CEA3A0], @"com.apple.airplay.discoverybroker.allow");
  v1 = APSXPCServerStart();
  v2 = v1;
  if (v1)
  {
    AirPlayDiscoveryBrokerXPCServicesServerStart_cold_1(v1);
    if (!Mutable)
    {
      return v2;
    }

    goto LABEL_7;
  }

  if (IsAppleInternalBuild())
  {
    APSXPCServerAddCommandHandler();
  }

  if (Mutable)
  {
LABEL_7:
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t AirPlayStartAlwaysOnModules()
{
  APDemoManagerStart();

  return APSRegisterReceiverAppLauncher();
}

uint64_t AirPlayXPCServicesStart()
{
  v0 = MEMORY[0x223DAEBE0]();
  if (FigEndpointStreamAudioEngineStartServer())
  {
    AirPlayXPCServicesStart_cold_1();
  }

  else if (FigSampleBufferConsumerStartServer())
  {
    AirPlayXPCServicesStart_cold_2();
  }

  else if (FigEndpointPlaybackSessionStartServer())
  {
    AirPlayXPCServicesStart_cold_3();
  }

  else if (FigEndpointRemoteControlSessionStartServer())
  {
    AirPlayXPCServicesStart_cold_4();
  }

  else if (FigEndpointStreamStartServer())
  {
    AirPlayXPCServicesStart_cold_5();
  }

  else if (AirPlayDiscoveryBrokerXPCServicesServerStart())
  {
    AirPlayXPCServicesStart_cold_6();
  }

  else if (FigBufferedAirPlayGlobalRoutingRegistryStartServer())
  {
    AirPlayXPCServicesStart_cold_7();
  }

  else if (FigClusterSynchronizationManager_OneTimeInitialization())
  {
    AirPlayXPCServicesStart_cold_8();
  }

  else
  {
    if (MTAudioProcessingTapServerStart() && gLogCategory_AirPlayServices <= 90 && (gLogCategory_AirPlayServices != -1 || _LogCategory_Initialize()))
    {
      AirPlayXPCServicesStart_cold_9();
    }

    v1 = APCarPlayAVVCServerInit();
    if (v1)
    {
      v4 = v1;
      AirPlayXPCServicesStart_cold_10(v1);
      return v4;
    }

    started = AirPlayStartEndpointXPCService();
    if (started)
    {
      v4 = started;
      AirPlayXPCServicesStart_cold_11(started);
      return v4;
    }

    v3 = AirPlayStartEndpointManagerXPCServiceIfNeeded();
    if (v3)
    {
      v4 = v3;
      AirPlayXPCServicesStart_cold_12(v3);
      return v4;
    }

    AirPlayXPCServicesStart_cold_13(v0, &v6);
  }

  return v6;
}

uint64_t AirPlayStartServicesInMXProcess()
{
  if (MEMORY[0x223DAEBE0]())
  {
    APDemoManagerStart();
    if (APAirPlayAgentServicesServerStart())
    {
      AirPlayStartServicesInMXProcess_cold_1();
      return v1;
    }
  }

  else
  {
    AirPlayXPCServicesStart();
    APDemoManagerStart();
  }

  APSRegisterReceiverAppLauncher();
  result = SPHubbedDevicesProviderStartService(0);
  if (result)
  {
    AirPlayStartServicesInMXProcess_cold_2(result, &v2);
    return v2;
  }

  return result;
}

uint64_t APAudioSourceCompressionCreate(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a2)
  {
    APAudioSourceCompressionCreate_cold_3();
    return 4294950525;
  }

  if (!a3)
  {
    APAudioSourceCompressionCreate_cold_2();
    return 4294950525;
  }

  if (!a4)
  {
    APAudioSourceCompressionCreate_cold_1();
    return 4294950525;
  }

  FigEndpointAudioSourceGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v11 = v7;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = *(a3 + 32);
    v10 = *(a3 + 16);
    *(DerivedStorage + 8) = *a3;
    *(DerivedStorage + 24) = v10;
    *(DerivedStorage + 40) = v9;
    *(DerivedStorage + 48) = CFRetain(a2);
    *(DerivedStorage + 136) = 0;
    *(DerivedStorage + 144) = -1;
    *(DerivedStorage + 148) = 0;
    if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioSourceCompression, "OSStatus APAudioSourceCompressionCreate(CFAllocatorRef, FigEndpointAudioSourceRef, const AudioStreamBasicDescription *, FigEndpointAudioSourceRef *)", 33554462, "APAudioSourceCompression %p with input source %p created.\n", 0, a2);
    }

    v11 = 0;
    *a4 = 0;
  }

  return v11;
}

__CFString *compsource_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSourceCompression %p>", a1);
  return Mutable;
}

uint64_t compsource_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"PacketSizeLimit"))
  {
    v8 = CFNumberCreate(a3, kCFNumberSInt64Type, DerivedStorage + 12);
    *a4 = v8;
    if (!v8)
    {
      compsource_CopyProperty_cold_1();
      return 4294950526;
    }
  }

  else if (CFEqual(a2, @"VBRBitRate"))
  {
    v9 = CFNumberCreate(a3, kCFNumberSInt64Type, DerivedStorage + 17);
    *a4 = v9;
    if (!v9)
    {
      compsource_CopyProperty_cold_2();
      return 4294950526;
    }
  }

  else if (CFEqual(a2, @"AlgorithmicLatency"))
  {
    outPropertyData = 0;
    v10 = DerivedStorage[13];
    if (!v10)
    {
      compsource_CopyProperty_cold_5();
      return 4294950524;
    }

    ioPropertyDataSize = 8;
    Property = AudioConverterGetProperty(v10, 0x7072696Du, &ioPropertyDataSize, &outPropertyData);
    if (Property)
    {
      v15 = Property;
      compsource_CopyProperty_cold_3(Property);
      return v15;
    }

    v12 = CFNumberCreate(a3, kCFNumberSInt32Type, &outPropertyData);
    *a4 = v12;
    if (!v12)
    {
      compsource_CopyProperty_cold_4();
      return 4294950526;
    }
  }

  else
  {
    if (!CFEqual(a2, @"MaximumOutputPacketSize"))
    {
      return 4294954512;
    }

    ioPropertyDataSize = 4;
    LODWORD(outPropertyData) = 0;
    v13 = AudioConverterGetProperty(DerivedStorage[13], 0x786F7073u, &ioPropertyDataSize, &outPropertyData);
    if (v13)
    {
      v15 = v13;
      compsource_CopyProperty_cold_6(v13);
      return v15;
    }

    v14 = CFNumberCreate(a3, kCFNumberSInt32Type, &outPropertyData);
    *a4 = v14;
    if (!v14)
    {
      compsource_CopyProperty_cold_7();
      return 4294950526;
    }
  }

  return 0;
}

uint64_t compsource_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  if (CFEqual(a2, @"PacketSizeLimit"))
  {
    v7 = ASBDToAPAudioFormat();
    v16 = v7;
    if (v7)
    {
      compsource_SetProperty_cold_1(v7);
    }

    else if (APAudioFormatSupportsVBR())
    {
      *(DerivedStorage + 96) = CFGetInt64();
      if (v16)
      {
        compsource_SetProperty_cold_2(v16);
      }
    }

    else if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      compsource_SetProperty_cold_3(&v15, a1, v8);
    }

    return v16;
  }

  if (!CFEqual(a2, @"VBRBitRate"))
  {
    if (CFEqual(a2, @"CodecQuality"))
    {
      v11 = ASBDToAPAudioFormat();
      v16 = v11;
      if (v11)
      {
        compsource_SetProperty_cold_7(v11);
        return v16;
      }

      if (!APAudioFormatSupportsVBR())
      {
        if (gLogCategory_APAudioSourceCompression > 50 || gLogCategory_APAudioSourceCompression == -1 && !_LogCategory_Initialize())
        {
          return v16;
        }

LABEL_23:
        compsource_SetProperty_cold_6(&v15, a1, v10);
        return v16;
      }

      if (CFEqual(a3, @"CodecQualityMode_Max"))
      {
        v12 = 127;
LABEL_36:
        *(DerivedStorage + 144) = v12;
        return v16;
      }

      if (CFEqual(a3, @"CodecQualityMode_High"))
      {
        v12 = 96;
        goto LABEL_36;
      }

      if (CFEqual(a3, @"CodecQualityMode_Medium"))
      {
        v12 = 64;
        goto LABEL_36;
      }

      if (CFEqual(a3, @"CodecQualityMode_Low"))
      {
        v12 = 32;
        goto LABEL_36;
      }

      if (CFEqual(a3, @"CodecQualityMode_Min"))
      {
        *(DerivedStorage + 144) = 0;
        return v16;
      }

      *(DerivedStorage + 144) = -1;
      if (gLogCategory_APAudioSourceCompression <= 50 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] CodecQualitySetting error. Unknown type. %@", a1, a3, v15);
      }

      return -16771;
    }

    else
    {
      return -12784;
    }
  }

  v9 = ASBDToAPAudioFormat();
  v16 = v9;
  if (v9)
  {
    compsource_SetProperty_cold_4(v9);
    return v16;
  }

  if (!APAudioFormatSupportsVBR())
  {
    if (gLogCategory_APAudioSourceCompression > 50 || gLogCategory_APAudioSourceCompression == -1 && !_LogCategory_Initialize())
    {
      return v16;
    }

    goto LABEL_23;
  }

  *(DerivedStorage + 136) = CFGetInt64();
  if (v16)
  {
    compsource_SetProperty_cold_5(v16);
  }

  return v16;
}

void compsource_ensureAudioConverterDestroyed(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 104);
  if (v2)
  {
    AudioConverterDispose(v2);
    *(DerivedStorage + 104) = 0;
  }

  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 72) = 0u;
  *(DerivedStorage + 56) = 0u;
  if (*(DerivedStorage + 112))
  {
    DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
    CFAllocatorDeallocate(DefaultAirPlayMallocZoneCFAllocator, *(DerivedStorage + 112));
    *(DerivedStorage + 112) = 0;
  }

  *(DerivedStorage + 120) = 0;
}

uint64_t compsource_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (gLogCategory_APAudioSourceCompression <= 30)
  {
    if (gLogCategory_APAudioSourceCompression != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      compsource_Suspend_cold_1(DerivedStorage, v3, v4);
    }
  }

  v6 = *(v5 + 48);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v7)
  {
    v7(v6);
  }

  compsource_ensureAudioConverterDestroyed(a1);
  return 0;
}

uint64_t compsource_Flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (gLogCategory_APAudioSourceCompression <= 30)
  {
    if (gLogCategory_APAudioSourceCompression != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      compsource_Flush_cold_1(DerivedStorage, v2, v3);
    }
  }

  v5 = *(v4 + 104);
  if (v5)
  {
    v6 = AudioConverterReset(v5);
    if (v6)
    {
      v9 = v6;
      compsource_Flush_cold_2(v6);
      return v9;
    }
  }

  v7 = *(v4 + 48);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v9 = 4294954514;
    goto LABEL_10;
  }

  v9 = v8(v7);
  if (v9)
  {
LABEL_10:
    APSLogErrorAt();
    return v9;
  }

  *(v4 + 128) = 0;
  return v9;
}

uint64_t compsource_CanProduceBytes(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 48);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 0;
  }

  return v4(v3, a2);
}

uint64_t compsource_GetAudioFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSourceCompression <= 30 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
  {
    compsource_GetAudioFormat_cold_1(a1);
  }

  v5 = *(DerivedStorage + 8);
  v6 = *(DerivedStorage + 24);
  *(a2 + 32) = *(DerivedStorage + 40);
  *a2 = v5;
  *(a2 + 16) = v6;
  return 0;
}

uint64_t compsource_CanProducePackets(uint64_t a1, unint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 28);
  v5 = *(DerivedStorage + 80);
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = *(DerivedStorage + 48);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    return 0;
  }

  return v8(v7, v6 * (v5 * v4));
}

uint64_t compsource_FillComplexBuffer(uint64_t a1, void *a2, UInt32 a3, AudioStreamPacketDescription *a4, uint64_t a5, void *a6, uint64_t *a7, void *a8, uint64_t a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&outOutputData.mNumberBuffers = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = *(DerivedStorage + 128);
  inInputDataProcUserData = a1;
  v19 = *(DerivedStorage + 48);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v20)
  {
    v21 = v20(v19, &v32 + 8);
  }

  else
  {
    v21 = 0;
  }

  *&v32 = v21;
  LOBYTE(v33) = 1;
  DWORD1(v33) = 0;
  ioOutputDataPacketSize = a5;
  v22 = *(DerivedStorage + 36);
  outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mNumberChannels = v22;
  outOutputData.mBuffers[0].mDataByteSize = a3;
  outOutputData.mBuffers[0].mData = a2;
  bzero(a4, 16 * a5);
  v23 = AudioConverterFillComplexBuffer(*(DerivedStorage + 104), compsource_audioConverterInputCallBack, &inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, a4);
  v24 = v23;
  if (v32)
  {
    *(v32 + 24) += DWORD1(v33);
  }

  v25 = ioOutputDataPacketSize;
  *(DerivedStorage + 128) -= *(DerivedStorage + 28) * ioOutputDataPacketSize;
  *(DerivedStorage + 148) = 0;
  if (v23 != -16774)
  {
    if (v23)
    {
      APSLogErrorAt();
      return v24;
    }

    if (!outOutputData.mBuffers[0].mDataByteSize)
    {
      compsource_FillComplexBuffer_cold_1();
      return 4294950524;
    }
  }

  *a7 = v25;
  *a6 = 0;
  if (v25)
  {
    v26 = 0;
    v27 = v25;
    do
    {
      v26 += a4[--v27].mDataByteSize;
    }

    while (v27 * 16);
    *a6 = v26;
  }

  if (a8)
  {
    *a8 = *(&v32 + 1) - v18;
  }

  if (a9)
  {
    v28 = *(DerivedStorage + 8);
    v29 = *(DerivedStorage + 24);
    *(a9 + 32) = *(DerivedStorage + 40);
    *a9 = v28;
    *(a9 + 16) = v29;
  }

  return v24;
}

uint64_t compsource_SetWriteHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 48);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_5:
    APSLogErrorAt();
    return v7;
  }

  v7 = v6(v5, a2, a3);
  if (v7)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t compsource_PrepareForFlush(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 48);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v2)
  {
    v3 = 4294954514;
LABEL_5:
    APSLogErrorAt();
    return v3;
  }

  v3 = v2(v1);
  if (v3)
  {
    goto LABEL_5;
  }

  return v3;
}

uint64_t compsource_audioConverterInputCallBack(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  v31 = 0;
  *(a3 + 16) = 0;
  v10 = *(DerivedStorage + 80);
  *(a3 + 8) = *(DerivedStorage + 84);
  *(a3 + 12) = 0;
  v11 = v10 * *a2;
  v12 = a5[1];
  if (v12)
  {
    v13 = *(a5 + 7);
    v14 = *(v12 + 24);
    if (v13)
    {
      v14 += v13;
      *(v12 + 24) = v14;
      *(a5 + 7) = 0;
    }

    v15 = *(v12 + 28) - v14;
    if (v15)
    {
      if (v15 >= v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = v15;
      }

      *(a3 + 16) = *v12 + (*(v12 + 20) & v14);
      *(a3 + 12) = v16;
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v19 = (DerivedStorage + 48);
  v20 = *(DerivedStorage + 48);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v21 || !v21(v20, 0))
  {
LABEL_18:
    *a2 = 0;
LABEL_19:
    v17 = 4294950522;
    if (*(a5 + 7))
    {
      if (*(v9 + 148))
      {
        return 0;
      }

      else
      {
        return 4294950522;
      }
    }

    return v17;
  }

  v22 = *(v9 + 120);
  if (v22 >= v11)
  {
    v24 = *(v9 + 112);
    goto LABEL_27;
  }

  v23 = (v11 + *MEMORY[0x277D85FA0] - 1) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
  if (gLogCategory_APAudioSourceCompression <= 50)
  {
    if (gLogCategory_APAudioSourceCompression == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v22 = *(v9 + 120);
    }

    LogPrintF(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_audioConverterInputCallBack(AudioConverterRef, UInt32 *, AudioBufferList *, AudioStreamPacketDescription **, void *)", 33554482, "[%{ptr}] Reallocating converterInputBufferCapacity=%zu bytesRequested=%u newCapacity=%zu", *a5, v22, v11, v23);
  }

LABEL_25:
  DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  v26 = MEMORY[0x223DAFDE0](DefaultAirPlayMallocZoneCFAllocator, *(v9 + 112), v23, 131598848, 0);
  if (!v26)
  {
    APSLogErrorAt();
    v17 = APSSignalErrorAt();
    if (!v17)
    {
      v16 = 0;
      v10 = *(v9 + 80);
      goto LABEL_10;
    }

LABEL_45:
    *a2 = 0;
    if (v17 != -16774)
    {
      return v17;
    }

    goto LABEL_19;
  }

  v24 = v26;
  *(v9 + 112) = v26;
  *(v9 + 120) = v23;
LABEL_27:
  v30 = 0;
  if (!v11)
  {
LABEL_47:
    compsource_audioConverterInputCallBack_cold_1(a5, (v9 + 48), &v32);
    v17 = v32;
    goto LABEL_45;
  }

  v16 = 0;
  while (1)
  {
    v27 = *v19;
    v28 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v28)
    {
      v17 = 4294954514;
      goto LABEL_40;
    }

    v29 = v28(v27, v24, v11, &v30, 0, &v31, a5 + 4);
    if (v29)
    {
      break;
    }

    if (v30)
    {
      v24 += v30;
      v16 += v30;
      LODWORD(v11) = v11 - v30;
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  v17 = v29;
  if (v29 != -16774)
  {
LABEL_40:
    if (gLogCategory_APAudioSourceCompression <= 90 && (gLogCategory_APAudioSourceCompression != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioSourceCompression, "OSStatus compsource_audioConverterInputCallBack(AudioConverterRef, UInt32 *, AudioBufferList *, AudioStreamPacketDescription **, void *)", 33554522, "### [%{ptr}] Failed to FillBuffer from source [%{ptr}] with err=%#m", *a5, *v19, v17);
    }

    APSLogErrorAt();
    goto LABEL_45;
  }

LABEL_36:
  if (!v16)
  {
    goto LABEL_47;
  }

  if (!*(a5 + 24))
  {
    a5[2] = v31;
    *(a5 + 24) = 1;
  }

  *(a3 + 16) = *(v9 + 112);
  *(a3 + 12) = v16;
  v10 = *(v9 + 80);
LABEL_9:
  *(a5 + 7) = v16;
  *(v9 + 128) += v16 / v10;
LABEL_10:
  v17 = 0;
  *a2 = v16 / v10;
  return v17;
}

uint64_t APEndpointPlusCreateWithBonjourInfo(int a1, const __CFDictionary *a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  v16 = 0;
  if (!a2)
  {
    APEndpointPlusCreateWithBonjourInfo_cold_6();
LABEL_15:
    v12 = 4294954516;
    goto LABEL_19;
  }

  if (!a4)
  {
    APEndpointPlusCreateWithBonjourInfo_cold_5();
    goto LABEL_15;
  }

  v8 = APEndpointPlusCreate(a1, a3, &v16);
  if (v8)
  {
    v12 = v8;
    APEndpointPlusCreateWithBonjourInfo_cold_1(v8);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1 == 2)
    {
      v10 = APEndpointPlusCreateWithBonjourInfo(1, a2, a3, &cf);
      if (!v10)
      {
        v11 = APEndpointPlusAddSubEndpoint(v16, cf);
        if (v11)
        {
          v12 = v11;
          APEndpointPlusCreateWithBonjourInfo_cold_4(v11);
          goto LABEL_19;
        }

LABEL_9:
        v12 = 0;
        *a4 = v16;
        v16 = 0;
        goto LABEL_10;
      }

      v12 = v10;
      APEndpointPlusCreateWithBonjourInfo_cold_3(v10);
    }

    else
    {
      v13 = APEndpointDescriptionAirPlayCreateWithBonjourInfo(*MEMORY[0x277CBECE8], a2, 0, (DerivedStorage + 48));
      if (!v13)
      {
        goto LABEL_9;
      }

      v12 = v13;
      APEndpointPlusCreateWithBonjourInfo_cold_2(v13);
    }
  }

LABEL_19:
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t APEndpointPlusCopySubEndpoint(uint64_t a1, const void *a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = epp_copySubEndpoint(a1, a2, a3);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t epp_copySubEndpoint(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    epp_copySubEndpoint_cold_4();
    return 4294950576;
  }

  if (!a3)
  {
    epp_copySubEndpoint_cold_3();
    return 4294950576;
  }

  if (*DerivedStorage != 2)
  {
    epp_copySubEndpoint_cold_1();
    return 4294950576;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 80), a2);
  if (Value && (v7 = CFRetain(Value)) != 0)
  {
    v8 = v7;
    result = 0;
    *a3 = v8;
  }

  else
  {
    epp_copySubEndpoint_cold_2();
    return 4294960569;
  }

  return result;
}

uint64_t APEndpointPlusRemoveSubEndpoint(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    APEndpointPlusRemoveSubEndpoint_cold_4();
LABEL_13:
    v9 = 4294950576;
    goto LABEL_10;
  }

  v5 = DerivedStorage;
  if (*DerivedStorage != 2)
  {
    APEndpointPlusRemoveSubEndpoint_cold_1();
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 80), a2);
  if (Value)
  {
    if (gLogCategory_APEndpointPlus <= 50)
    {
      v7 = Value;
      if (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_removeSubEndpoint(FigEndpointRef, CFStringRef)", 33554482, "[%{ptr}] Remove subEndpointPlus [%{ptr}] %@", a1, v7, a2);
      }
    }

    CFDictionaryRemoveValue(*(v5 + 80), a2);
    updated = epp_updateDescription(a1);
    v9 = updated;
    if (updated)
    {
      APEndpointPlusRemoveSubEndpoint_cold_2(updated);
    }

    else
    {
      epp_postNotificationAsync(a1, *MEMORY[0x277CC0D48], 0);
    }
  }

  else
  {
    APEndpointPlusRemoveSubEndpoint_cold_3();
    v9 = 4294960569;
  }

LABEL_10:
  FigSimpleMutexUnlock();
  return v9;
}

CFIndex APEndpointPlusGetSubEndpointCount(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage == 2)
  {
    Count = CFDictionaryGetCount(*(DerivedStorage + 80));
  }

  else
  {
    Count = 0;
  }

  FigSimpleMutexUnlock();
  return Count;
}

CFStringRef APEndpointPlusUtils_CopyDeviceIDFromEndpointDescription()
{
  theString = 0;
  v0 = *MEMORY[0x277CBECE8];
  APEndpointDescriptionGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3(v2, @"PairingPeerCUSystemIdentifier", v0, &theString);
  v5 = theString;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = theString == 0;
  }

  if (v6)
  {
LABEL_8:
    if (v5)
    {
      CFRelease(v5);
      theString = 0;
    }

LABEL_10:
    APEndpointDescriptionGetCMBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(v8, @"DeviceID", v0, &theString);
      if (!v10)
      {
        return theString;
      }
    }

    else
    {
      v10 = 4294954514;
    }

    APEndpointPlusUtils_CopyDeviceIDFromEndpointDescription_cold_1(v10);
    return theString;
  }

  if (CFStringHasPrefix(theString, @"00000000-0000-0000-0000"))
  {
    v5 = theString;
    goto LABEL_8;
  }

  return theString;
}

CFStringRef epp_CopyDebugDescription(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *cStr = 0u;
  v6 = 0u;
  v2 = *CMBaseObjectGetDerivedStorage() - 1;
  if (v2 > 2)
  {
    v3 = "<unknown>";
  }

  else
  {
    v3 = off_27849B040[v2];
  }

  SNPrintF(cStr, 256, "<APEndpointPlus %{ptr} %s>", a1, v3);
  return CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
}

uint64_t epp_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = epp_copyInner(a1);
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] SetProperty: %@", a1, a2);
  }

  if (!a2)
  {
    v9 = 4294950576;
    if (epp_SetProperty_cold_1(v6))
    {
      return v9;
    }

    goto LABEL_10;
  }

  if (v6)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v9 = v8(CMBaseObject, a2, a3);
    }

    else
    {
      v9 = 4294954514;
    }

LABEL_10:
    CFRelease(v6);
    return v9;
  }

  if (gLogCategory_APEndpointPlus <= 90 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_setDescriptionProperty(FigEndpointRef, CFStringRef, CFTypeRef)", 33554522, "[%{ptr}] setDescriptionProperty: %@", a1, a2);
  }

  return 4294950570;
}

uint64_t epp_copyCachedProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CC1568]))
  {
    v10 = MEMORY[0x277CC1A18];
LABEL_6:
    v11 = *v10;
LABEL_7:
    Int64 = CFRetain(v11);
LABEL_8:
    v13 = 0;
    *a4 = Int64;
    return v13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13A0]) || CFEqual(a2, *MEMORY[0x277CC1370]))
  {
    v10 = MEMORY[0x277CBED10];
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13F0]))
  {
    v10 = MEMORY[0x277CBED28];
    v15 = MEMORY[0x277CBED10];
    v16 = *v9 == 3;
    goto LABEL_14;
  }

  if (CFEqual(a2, @"IsClusterEndpoint"))
  {
    v10 = MEMORY[0x277CBED28];
    v15 = MEMORY[0x277CBED10];
    v16 = *v9 == 2;
LABEL_14:
    if (!v16)
    {
      v10 = v15;
    }

    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11E8]))
  {
    Int64 = CFNumberCreateInt64();
    goto LABEL_8;
  }

  v17 = *MEMORY[0x277CC1400];
  if (CFEqual(a2, *MEMORY[0x277CC1400]))
  {
    v10 = MEMORY[0x277CBED28];
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1270]))
  {
    v10 = MEMORY[0x277CC0A70];
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1498]))
  {
    v10 = MEMORY[0x277CC11D8];
    goto LABEL_6;
  }

  if (CFEqual(a2, @"EndpointDescription"))
  {
    v11 = *(DerivedStorage + 48);
    if (!v11)
    {
      epp_copyCachedProperty_cold_1();
      return 4294960587;
    }

    goto LABEL_7;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC12D8]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC13C0]))
    {
      v10 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 56))
      {
        v10 = MEMORY[0x277CBED10];
      }

      goto LABEL_6;
    }

    if (*DerivedStorage == 2)
    {
      v41 = epp_copyCachedClusterProperty(a1, a2, a3, a4);
      v13 = v41;
      if (!v41 || v41 == -12784)
      {
        return v13;
      }
    }

    else
    {
      v42 = epp_copyCachedDescriptionProperty(a1, a2, a3, a4);
      v13 = v42;
      if (!v42 || v42 == -12784)
      {
        return v13;
      }
    }

    APSLogErrorAt();
    return v13;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  theDict = 0;
  if (*(v18 + 48))
  {
    APEndpointDescriptionGetCMBaseObject();
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v22 = *MEMORY[0x277CBECE8];
      v23 = v21(v20, @"Descriptor", *MEMORY[0x277CBECE8], &theDict);
      if (!v23)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(a3, 0, theDict);
        if (MutableCopy)
        {
          v25 = MutableCopy;
          v26 = *MEMORY[0x277CC1368];
          cf = 0;
          v27 = epp_copyCachedProperty(a1, v26, v22, &cf);
          v28 = cf;
          if (!v27)
          {
            FigCFDictionarySetValue();
          }

          if (v28)
          {
            CFRelease(v28);
          }

          v29 = *MEMORY[0x277CC1450];
          cf = 0;
          v30 = epp_copyCachedProperty(a1, v29, v22, &cf);
          v31 = cf;
          if (!v30)
          {
            FigCFDictionarySetValue();
          }

          if (v31)
          {
            CFRelease(v31);
          }

          v32 = *MEMORY[0x277CC1440];
          cf = 0;
          v33 = epp_copyCachedProperty(a1, v32, v22, &cf);
          v34 = cf;
          if (!v33)
          {
            FigCFDictionarySetValue();
          }

          if (v34)
          {
            CFRelease(v34);
          }

          v35 = *MEMORY[0x277CC13C0];
          cf = 0;
          v36 = epp_copyCachedProperty(a1, v35, v22, &cf);
          v37 = cf;
          if (!v36)
          {
            FigCFDictionarySetValue();
          }

          if (v37)
          {
            CFRelease(v37);
          }

          cf = 0;
          v38 = epp_copyCachedProperty(a1, v17, v22, &cf);
          v39 = cf;
          if (!v38)
          {
            FigCFDictionarySetValue();
          }

          if (v39)
          {
            CFRelease(v39);
          }

          FigCFDictionarySetBoolean();
          if (*v18 == 2)
          {
            APEndpointAPSClusterTypeToFigEndpointClusterType(*(v18 + 72));
            FigCFDictionarySetValue();
          }

          v40 = 0;
          *a4 = v25;
        }

        else
        {
          epp_copyCachedProperty_cold_2();
          v40 = 4294960568;
        }

        goto LABEL_58;
      }

      v40 = v23;
    }

    else
    {
      v40 = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    epp_copyCachedProperty_cold_3();
    v40 = 4294960587;
  }

LABEL_58:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (!v40)
  {
    return 0;
  }

  v13 = v40;
  epp_copyCachedProperty_cold_4(v40);
  return v13;
}

uint64_t epp_copyCachedClusterProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage != 2)
  {
    epp_copyCachedClusterProperty_cold_1();
    return 4294950576;
  }

  v9 = DerivedStorage;
  if (!*(DerivedStorage + 48))
  {
    epp_copyCachedClusterProperty_cold_10();
    v10 = 4294960587;
    goto LABEL_40;
  }

  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_copyCachedClusterProperty(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] copyClusterProperty %@", a1, a2);
  }

  if (CFEqual(a2, *MEMORY[0x277CC12A8]))
  {
    cf = FigCFArrayCreateCopy();
    if (!cf)
    {
      epp_copyCachedClusterProperty_cold_2();
      return 4294954512;
    }

    goto LABEL_49;
  }

  if (CFEqual(a2, *MEMORY[0x277CC12B0]))
  {
    cf = FigCFArrayCreateCopy();
    if (!cf)
    {
      epp_copyCachedClusterProperty_cold_3();
      return 4294954512;
    }

LABEL_49:
    v10 = 0;
    *a4 = cf;
    return v10;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC14E8]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC1428]))
    {
      TextToHardwareAddress();
      cf = CFDataCreate(a3, bytes, 6);
      if (cf)
      {
        goto LABEL_49;
      }

      epp_copyCachedClusterProperty_cold_5();
      v10 = 4294960568;
      goto LABEL_40;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14F0]))
    {
      v12 = MEMORY[0x277CC19B8];
      v13 = MEMORY[0x277CC19B0];
      v14 = *(v9 + 72);
      if (v14 != 2)
      {
        v13 = MEMORY[0x277CC19A8];
      }

      if (v14 != 1)
      {
        v12 = v13;
      }

      if (*v12)
      {
        cf = CFRetain(*v12);
        if (cf)
        {
          goto LABEL_49;
        }
      }

      else
      {
        cf = 0;
      }

      epp_copyCachedClusterProperty_cold_6();
      v10 = 4294960534;
      goto LABEL_40;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14F8]))
    {
      epp_getCachedClusterSupportedFeatures(a1);
      cf = FigCFNumberCreateUInt64();
      if (!cf)
      {
        epp_copyCachedClusterProperty_cold_7();
        return 4294960568;
      }

      goto LABEL_49;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1440]))
    {
      v15 = APSGetClusterModelNameForClusterTypeAndModel();
      if (!v15)
      {
        goto LABEL_48;
      }
    }

    else if (CFEqual(a2, *MEMORY[0x277CC1430]))
    {
      v15 = @"Apple";
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CC1258]))
      {
        v16 = MEMORY[0x277CBED10];
      }

      else
      {
        if (!CFEqual(a2, *MEMORY[0x277CC1558]))
        {
          if (epp_getClusterDescriptionKeyMap_onceToken != -1)
          {
            epp_copyCachedClusterProperty_cold_8();
          }

          Value = CFDictionaryGetValue(epp_getClusterDescriptionKeyMap_keyMap, a2);
          if (Value)
          {
            v19 = APEndpointDescriptionCopyProperty(*(v9 + 48), Value, a3, &cf);
            if (!v19)
            {
              goto LABEL_49;
            }

            v10 = v19;
            epp_copyCachedClusterProperty_cold_9(v19);
          }

          else
          {
            if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_copyCachedClusterProperty(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] Unhandled copy cached cluster property: %@", a1, a2);
            }

            v10 = 4294954512;
          }

          goto LABEL_40;
        }

        v16 = MEMORY[0x277CC1A10];
      }

      v15 = *v16;
    }

    v15 = CFRetain(v15);
LABEL_48:
    cf = v15;
    goto LABEL_49;
  }

  v11 = epp_copySubEndpointsArray(a1, &cf);
  if (!v11)
  {
    goto LABEL_49;
  }

  v10 = v11;
  epp_copyCachedClusterProperty_cold_4(v11);
LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t epp_getCachedClusterSupportedFeatures(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DeviceClass = GestaltGetDeviceClass();
  if (*DerivedStorage == 2)
  {
    v3 = DeviceClass;
    v4 = *(DerivedStorage + 72);
    if (v4 == 1)
    {
      result = 10;
    }

    else
    {
      result = 0;
    }

    if (v4 == 2)
    {
      if (v3 == 7)
      {
        return 10;
      }

      else if (v3 == 4)
      {
        if (*(DerivedStorage + 56))
        {
          return 42;
        }

        else
        {
          return 10;
        }
      }

      else
      {
        return 15;
      }
    }
  }

  else
  {
    epp_getCachedClusterSupportedFeatures_cold_1();
    return 0;
  }

  return result;
}

CFDictionaryRef __epp_getClusterDescriptionKeyMap_block_invoke()
{
  v8[10] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC1450];
  v7[0] = *MEMORY[0x277CC1368];
  v7[1] = v0;
  v8[0] = @"ClusterUUID";
  v8[1] = @"GroupPublicName";
  v1 = *MEMORY[0x277CC12C8];
  v7[2] = *MEMORY[0x277CC12C0];
  v7[3] = v1;
  v8[2] = @"ClusterSize";
  v8[3] = @"ClusterType";
  v2 = *MEMORY[0x277CC1540];
  v7[4] = *MEMORY[0x277CC1340];
  v7[5] = v2;
  v8[4] = @"GroupID";
  v8[5] = @"StatusFlags";
  v3 = *MEMORY[0x277CC1208];
  v7[6] = *MEMORY[0x277CC1238];
  v7[7] = v3;
  v8[6] = @"VodkaVersion";
  v8[7] = @"SupportsAirPlayFromCloud";
  v4 = *MEMORY[0x277CC1550];
  v7[8] = *MEMORY[0x277CC1490];
  v7[9] = v4;
  v5 = *MEMORY[0x277CBECE8];
  v8[8] = @"ClusterUUID";
  v8[9] = @"TightSyncUUID";
  result = CFDictionaryCreateCopy(v5, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:10]);
  epp_getClusterDescriptionKeyMap_keyMap = result;
  return result;
}

CFDictionaryRef __epp_getDescriptionKeyMap_block_invoke()
{
  v19[44] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  v1 = *MEMORY[0x277CC1440];
  v18[0] = *MEMORY[0x277CC1450];
  v18[1] = v1;
  v19[0] = @"Name";
  v19[1] = @"Model";
  v2 = *MEMORY[0x277CC14F0];
  v18[2] = *MEMORY[0x277CC1428];
  v18[3] = v2;
  v19[2] = @"MACAddress";
  v19[3] = @"SubType";
  v3 = *MEMORY[0x277CC12C0];
  v18[4] = *MEMORY[0x277CC1340];
  v18[5] = v3;
  v19[4] = @"GroupID";
  v19[5] = @"ClusterSize";
  v4 = *MEMORY[0x277CC14C0];
  v18[6] = *MEMORY[0x277CC1540];
  v18[7] = v4;
  v19[6] = @"StatusFlags";
  v19[7] = @"SerialNumber";
  v5 = *MEMORY[0x277CC1550];
  v18[8] = *MEMORY[0x277CC1430];
  v18[9] = v5;
  v19[8] = @"Manufacturer";
  v19[9] = @"TightSyncUUID";
  v6 = *MEMORY[0x277CC14C8];
  v18[10] = *MEMORY[0x277CC1538];
  v18[11] = v6;
  v19[10] = @"DeviceSupportsRelay";
  v19[11] = @"SilentPrimary";
  v7 = *MEMORY[0x277CC1328];
  v18[12] = *MEMORY[0x277CC13B0];
  v18[13] = v7;
  v19[12] = @"IsGroupLeader";
  v19[13] = @"FirmwareVersion";
  v8 = *MEMORY[0x277CC1390];
  v18[14] = *MEMORY[0x277CC1210];
  v18[15] = v8;
  v19[14] = @"AirPlaySecurity";
  v19[15] = @"IsClusterLeader";
  v9 = *MEMORY[0x277CC1238];
  v18[16] = *MEMORY[0x277CC1298];
  v18[17] = v9;
  v19[16] = @"CloudLibraryIsOn";
  v19[17] = @"VodkaVersion";
  v10 = *MEMORY[0x277CC11F8];
  v18[18] = *MEMORY[0x277CC1490];
  v18[19] = v10;
  v19[18] = @"ClusterUUID";
  v19[19] = @"AdvertisesHAPSupport";
  v11 = *MEMORY[0x277CC1548];
  v18[20] = *MEMORY[0x277CC1350];
  v18[21] = v11;
  v19[20] = @"HKAccessControlLevel";
  v19[21] = @"TightSyncIsGroupLeader";
  v12 = *MEMORY[0x277CC1230];
  v18[22] = *MEMORY[0x277CC1378];
  v18[23] = v12;
  v19[22] = @"IsAppleMusicSubscriber";
  v19[23] = @"SupportsAirPlayVideoV2";
  v13 = *MEMORY[0x277CC13B8];
  v18[24] = *MEMORY[0x277CC1338];
  v18[25] = v13;
  v19[24] = @"GroupContainsDiscoverableLeader";
  v19[25] = @"IsHKAccessControlEnabled";
  v14 = *MEMORY[0x277CC12D0];
  v18[26] = *MEMORY[0x277CC1208];
  v18[27] = v14;
  v19[26] = @"SupportsAirPlayFromCloud";
  v19[27] = @"IsThirdPartyTVFamily";
  v15 = *MEMORY[0x277CC12F8];
  v18[28] = *MEMORY[0x277CC1510];
  v18[29] = v15;
  v19[28] = @"SupportsExtendedWHA";
  v19[29] = @"ExternalPlaybackCapabilities";
  v16 = *MEMORY[0x277CC1308];
  v18[30] = *MEMORY[0x277CC1218];
  v18[31] = v16;
  v19[30] = @"SupportsAirPlayVideoPlayQueue";
  v19[31] = @"DoesNotRequireVodkaForHLS";
  v18[32] = @"RoomUUID";
  v18[33] = @"RoomName";
  v19[32] = @"RoomUUID";
  v19[33] = @"RoomName";
  v18[34] = @"StatusFlags";
  v18[35] = @"EndpointInfo";
  v19[34] = @"StatusFlags";
  v19[35] = @"EndpointInfo";
  v18[36] = @"ClusterModel";
  v18[37] = @"SourceVersion";
  v19[36] = @"ClusterModel";
  v19[37] = @"SourceVersion";
  v18[38] = @"GroupPublicName";
  v18[39] = @"TransportDevice";
  v19[38] = @"GroupPublicName";
  v19[39] = @"TransportDevice";
  v18[40] = @"TightSyncClusterInfo";
  v18[41] = @"AirPlayClusterCompatibleEndpointProperties";
  v19[40] = @"TightSyncClusterInfo";
  v19[41] = @"AirPlayClusterCompatibleEndpointProperties";
  v18[42] = *MEMORY[0x277CC1330];
  v18[43] = @"IsScreenDemoReceiver";
  v19[42] = @"IsScreenDemoMode";
  v19[43] = @"IsScreenDemoMode";
  result = CFDictionaryCreateCopy(v0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:44]);
  epp_getDescriptionKeyMap_keyMap = result;
  return result;
}

uint64_t epp_ActivateForFeaturesWithCompletionCallback(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 64);
  if (v11)
  {
    dispatch_semaphore_signal(v11);
  }

  FigSimpleMutexUnlock();
  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v12 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v12[1] = CFRetain(a1);
  v12[2] = a4;
  v12[3] = a5;
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v13 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_ActivateForFeaturesWithCompletionCallback_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = a4;
  block[8] = v12;
  dispatch_async(v13, block);
  return 0;
}

uint64_t epp_DeactivateWithCompletionCallback(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    dispatch_semaphore_signal(v9);
  }

  FigSimpleMutexUnlock();
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v10 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v10[1] = CFRetain(a1);
  v10[2] = a3;
  v10[3] = a4;
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v11 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_DeactivateWithCompletionCallback_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = v10;
  block[6] = a2;
  dispatch_async(v11, block);
  return 0;
}

uint64_t epp_EnsureAuthorizedWithCompletionCallback(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = epp_copyInner(a1);
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v10 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v10[1] = CFRetain(a1);
  v10[2] = a3;
  v10[3] = a4;
  if (v9)
  {
    CFRetain(a1);
    CFRetain(v9);
    if (a2)
    {
      CFRetain(a2);
    }

    v11 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __epp_EnsureAuthorizedWithCompletionCallback_block_invoke;
    block[3] = &__block_descriptor_64_e5_v8__0l;
    block[4] = a1;
    block[5] = v9;
    block[6] = v10;
    block[7] = a2;
    dispatch_async(v11, block);
    CFRelease(v9);
    return 0;
  }

  else
  {
    epp_EnsureAuthorizedWithCompletionCallback_cold_1(DerivedStorage, v13);
    return 4294949690;
  }
}

uint64_t epp_Dissociate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_Dissociate_cold_1(a1, v2, v3);
  }

  CFRetain(a1);
  v5 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_Dissociate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v5, block);
  return 0;
}

uint64_t epp_SetDelegate(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = epp_copyInner(a1);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  if (a2)
  {
    v20 = *(a2 + 4);
    v6 = a2[1];
    v18 = *a2;
    v19 = v6;
    *&v17[0] = v18;
    *(&v17[1] + 1) = *(a2 + 7);
    v7 = *(a2 + 40);
    v8 = DerivedStorage + 104;
    a2 = (DerivedStorage + 144);
    v9 = v17;
    v10 = &v18;
    *(v17 + 8) = v7;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
  }

  epp_updateDelegateRouting(a1, v10);
  epp_updateDelegateRemoteControl(a1, v9);
  if (!v5)
  {
    return 0;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v11)
  {
    v12 = v11(v5, v8);
  }

  else
  {
    v12 = -12782;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v13)
  {
    v14 = v13(v5, a2);
  }

  else
  {
    v14 = -12782;
  }

  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v12 && v12 != -16723 || v14 != -16723 && v14)
  {
    APSLogErrorAt();
  }

  CFRelease(v5);
  return v15;
}

uint64_t epp_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = epp_copyInner(a1);
  epp_updateDelegateRouting(a1, a2);
  if (!v5)
  {
    return 0;
  }

  if (a2)
  {
    v6 = DerivedStorage + 104;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v7)
  {
    v8 = v7(v5, v6);
    v9 = v8;
    if (v8 == -16723 || v8 == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  APSLogErrorAt();
LABEL_13:
  CFRelease(v5);
  return v9;
}

uint64_t epp_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = epp_copyInner(a1);
  epp_updateDelegateRemoteControl(a1, a2);
  if (!v5)
  {
    return 0;
  }

  if (a2)
  {
    v6 = DerivedStorage + 144;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    v8 = v7(v5, v6);
    v9 = v8;
    if (v8 == -16723 || v8 == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  APSLogErrorAt();
LABEL_13:
  CFRelease(v5);
  return v9;
}

uint64_t epp_SetDelegateVolumeAndMute(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = epp_copyInner(a1);
  v6 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6[38] = 0;
  v6[39] = 0;
  v6[37] = 0;
  v7 = v6[40];
  if (v7)
  {
    CFRelease(v7);
    v6[40] = 0;
  }

  if (a2)
  {
    *(v6 + 19) = *(a2 + 8);
    if (*a2)
    {
      v6[40] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }
  }

  FigSimpleMutexUnlock();
  if (!v5)
  {
    return 0;
  }

  if (a2)
  {
    v8 = DerivedStorage + 176;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v9)
  {
    v10 = v9(v5, v8);
    v11 = v10;
    if (v10 == -16723 || v10 == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 4294954514;
  }

  APSLogErrorAt();
LABEL_18:
  CFRelease(v5);
  return v11;
}

uint64_t epp_CreatePlaybackSession(uint64_t a1, uint64_t a2)
{
  v6 = epp_copyInner(a1);
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CreatePlaybackSession_cold_1(a1, v4, v5);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CreatePlaybackSession_cold_2();
    return 4294949690;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v7)
  {
    v8 = v7(v6, a2);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t epp_UpdateFeaturesWithCompletionCallback(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v11 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v11[1] = CFRetain(a1);
  v11[2] = a4;
  v11[3] = a5;
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v12 = *(DerivedStorage + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __epp_UpdateFeaturesWithCompletionCallback_block_invoke;
  v14[3] = &__block_descriptor_64_e5_v8__0l;
  v14[4] = a1;
  v14[5] = v11;
  v14[6] = a2;
  v14[7] = a3;
  dispatch_async(v12, v14);
  return 0;
}

uint64_t epp_toggleInnerEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = epp_copyInner(a1);
  v6 = v5;
  if (a2 && v5)
  {
    v11 = 0;
LABEL_19:
    CFRelease(v6);
    return v11;
  }

  if (!*(DerivedStorage + 16))
  {
    epp_toggleInnerEndpointDiscovery_cold_2();
    v11 = 4294949690;
    goto LABEL_16;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v11 = 4294954514;
LABEL_12:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v9 = v8(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
  if (v9)
  {
    v11 = v9;
    goto LABEL_12;
  }

  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    v10 = "on";
    if (!a2)
    {
      v10 = "off";
    }

    LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_toggleInnerEndpointDiscovery(FigEndpointRef, Boolean)", 33554482, "[%{ptr}] Turn %s discovery for device %@ %?{end}for %u ms", a1, v10, cf, a2 == 0, *(DerivedStorage + 24));
  }

  updated = APEndpointManagerUpdateInternalClientNeedingDiscovery(*(DerivedStorage + 16), cf, a2);
  v11 = updated;
  if (updated)
  {
    epp_toggleInnerEndpointDiscovery_cold_1(updated);
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    goto LABEL_19;
  }

  return v11;
}