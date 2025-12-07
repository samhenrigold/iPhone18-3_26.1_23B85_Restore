void *__getMRNowPlayingSessionManagerStartSessionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRNowPlayingSessionManagerStartSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRNowPlayingSessionManagerStartSessionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E9CBF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_MRMediaRemoteSetNowPlayingApplicationOverrideEnabled(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr;
  v10 = getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr;
  if (!getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr)
  {
    v3 = MediaRemoteLibrary();
    v8[3] = dlsym(v3, "MRMediaRemoteSetNowPlayingApplicationOverrideEnabled");
    getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(a1);
}

uint64_t soft_MRMediaRemoteSetCanBeNowPlayingApplication(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr;
  v10 = getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr;
  if (!getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr)
  {
    v3 = MediaRemoteLibrary();
    v8[3] = dlsym(v3, "MRMediaRemoteSetCanBeNowPlayingApplication");
    getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(a1);
}

void *__getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRMediaRemoteSetCanBeNowPlayingApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSetCanBeNowPlayingApplicationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRMediaRemoteSetNowPlayingApplicationOverrideEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSetNowPlayingApplicationOverrideEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APAdvertiserGetTypeID()
{
  if (APAdvertiserGetTypeID_initOnce != -1)
  {
    dispatch_once_f(&APAdvertiserGetTypeID_initOnce, &APAdvertiserGetTypeID_typeID, _APAdvertiserClassRegister);
  }

  return APAdvertiserGetTypeID_typeID;
}

uint64_t _APAdvertiserClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void _APAdvertiserFinalize(uint64_t a1)
{
  _APAdvertiserDestroySubAdvertiser(a1 + 136);
  _APAdvertiserDestroySubAdvertiser(a1 + 144);
  _APAdvertiserDestroySubAdvertiser(a1 + 152);
  _APAdvertiserDestroySubAdvertiser(a1 + 160);
  _APAdvertiserDestroySubAdvertiser(a1 + 168);
  _APAdvertiserDestroySubAdvertiser(a1 + 176);
  _APAdvertiserDestroySubAdvertiser(a1 + 184);
  v2 = *(a1 + 104);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 104) = 0;
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 112) = 0;
  }

  v4 = *(a1 + 232);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 232) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    dispatch_source_cancel(*(a1 + 64));
    dispatch_release(v8);
    *(a1 + 64) = 0;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 16) = 0;
  }
}

void _APAdvertiserDestroySubAdvertiser(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[1])
    {
      BonjourAdvertiserStop();
      CFRelease(*(*a1 + 8));
      *(*a1 + 8) = 0;
      v2 = *a1;
    }

    if (!v2[2] || (BonjourAdvertiserStop(), CFRelease(*(*a1 + 16)), *(*a1 + 16) = 0, (v2 = *a1) != 0))
    {
      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t APAdvertiserCreate(const __CFDictionary *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (APAdvertiserGetTypeID_initOnce != -1)
  {
    dispatch_once_f(&APAdvertiserGetTypeID_initOnce, &APAdvertiserGetTypeID_typeID, _APAdvertiserClassRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    Instance[14] = 0u;
    Instance[15] = 0u;
    Instance[12] = 0u;
    Instance[13] = 0u;
    Instance[10] = 0u;
    Instance[11] = 0u;
    Instance[8] = 0u;
    Instance[9] = 0u;
    Instance[6] = 0u;
    Instance[7] = 0u;
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    v6 = dispatch_queue_create("APAdvertiser", 0);
    *(v5 + 16) = v6;
    if (v6)
    {
      v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v5 + 96) = v7;
      if (v7)
      {
        *(v5 + 128) = 1;
        if (a1)
        {
          *(v5 + 196) = CFDictionaryGetInt64() != 0;
          *(v5 + 197) = CFDictionaryGetInt64() != 0;
          if (CFDictionaryGetValue(a1, @"interfaceName"))
          {
            CFGetCString();
            if (v19[0])
            {
              v8 = if_nametoindex(v19);
              if (v8)
              {
                *(v5 + 28) = v8;
              }
            }
          }

          *(v5 + 24) = CFDictionaryGetInt64Ranged();
          Value = CFDictionaryGetValue(a1, @"systemInfo");
          *(v5 + 232) = Value;
          if (Value)
          {
            CFRetain(Value);
          }
        }

        *(v5 + 129) = IsAppleTV();
        FigCFDictionaryGetBooleanIfPresent();
        if (*(v5 + 197))
        {
          *(v5 + 128) = 0;
          _APAdvertiserEnsureAssistedModeInfoCreated(v5, 0);
          v10 = 0;
        }

        else if (*(v5 + 196))
        {
          v10 = 0;
          *(v5 + 128) = 0;
        }

        else
        {
          v10 = 1;
        }

        SharedHelper = APConnectivityHelperGetSharedHelper();
        if (SharedHelper)
        {
          v12 = CFRetain(SharedHelper);
          *(v5 + 40) = v12;
          if (v12)
          {
            v13 = APConnectivityHelperRegisterEventHandler();
            if (v13)
            {
              if (gLogCategory_APAdvertiser <= 90)
              {
                v14 = v13;
                if (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize())
                {
                  LogPrintF(&gLogCategory_APAdvertiser, "OSStatus APAdvertiserCreate(CFDictionaryRef, APAdvertiserRef *)", 33554522, "[%{ptr}] Error setting connectivity helper handler: %#m\n", v5, v14);
                }
              }
            }

LABEL_31:
            v15 = *(v5 + 16);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __APAdvertiserCreate_block_invoke;
            block[3] = &__block_descriptor_49_e5_v8__0l;
            v18 = v10;
            block[4] = v5;
            block[5] = a1;
            dispatch_sync(v15, block);
            result = 0;
            *a2 = v5;
            return result;
          }
        }

        else
        {
          *(v5 + 40) = 0;
        }

        if (gLogCategory_APAdvertiser <= 90 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAdvertiser, "OSStatus APAdvertiserCreate(CFDictionaryRef, APAdvertiserRef *)", 33554522, "[%{ptr}] Error retrieving connectivity helper: %#m\n", v5, 4294960568);
        }

        goto LABEL_31;
      }
    }

    APSLogErrorAt();
    APAdvertiserInvalidate(v5);
    CFRelease(v5);
  }

  else
  {
    APSLogErrorAt();
  }

  return 4294960568;
}

uint64_t _APAdvertiserEnsureAssistedModeInfoCreated(uint64_t result, int a2)
{
  v2 = result;
  v3 = (result + 198);
  if (a2 || !*(result + 198))
  {
    do
    {
LABEL_3:
      while (1)
      {
        RandomString();
        v4 = strlen(v3);
        if (v4 >= 0xA && v4 <= 0xF)
        {
          break;
        }

        APSLogErrorAt();
      }

      v5 = *v3;
      v6 = (v2 + 199);
    }

    while (!*v3);
    while ((v5 - 48) < 0xA)
    {
      v7 = *v6++;
      v5 = v7;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    return RandomString();
  }

  return result;
}

const void *__APAdvertiserCreate_block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(*(a1 + 32) + 56) |= 1u;
  }

  result = CFDictionaryGetValue(*(a1 + 40), @"P2PConfig");
  if (result)
  {
    result = _APAdvertiserProcessP2PConfig(*(a1 + 32), result);
    if (result)
    {

      return APSLogErrorAt();
    }
  }

  return result;
}

uint64_t APAdvertiserInvalidate(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  if (v1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAdvertiserInvalidate_block_invoke;
    block[3] = &unk_278C60820;
    block[5] = &v5;
    block[6] = a1;
    block[4] = &v9;
    dispatch_sync(v1, block);
    v2 = *(v10 + 6);
    if (!v2)
    {
      v2 = *(v6 + 6);
    }
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __APAdvertiserInvalidate_block_invoke(void *a1)
{
  _APAdvertiserStop(a1[6]);
  v2 = a1[6];
  if (v2[5])
  {
    APConnectivityHelperRemoveAllRegistrations();
    v2 = a1[6];
  }

  v3 = v2[12];
  if (v3)
  {
    CFRelease(v3);
    *(a1[6] + 96) = 0;
    v2 = a1[6];
  }

  v4 = v2[13];
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = [v5 internalQueue];
    block = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __APAdvertiserBTLEManagerInvalidate_block_invoke;
    v12 = &unk_278C608C8;
    v13 = v5;
    dispatch_sync(v6, &block);
    *(*(a1[4] + 8) + 24) = 0;
    v2 = a1[6];
  }

  v7 = v2[14];
  if (v7)
  {
    if (gLogCategory_APAdvertiserRapportManager <= 50 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiserRapportManager, "OSStatus APAdvertiserRapportManagerInvalidate(APAdvertiserRapportManagerRef)", 33554482, "[%{ptr}] Advertiser Rapport manager invalidating.\n", v7);
    }

    v8 = v7[5];
    block = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __APAdvertiserRapportManagerInvalidate_block_invoke;
    v12 = &__block_descriptor_40_e5_v8__0l;
    v13 = v7;
    dispatch_sync(v8, &block);
    *(*(a1[5] + 8) + 24) = 0;
    v2 = a1[6];
  }

  _APAdvertiserSetNeedsNIRangingSession(v2, 0);
}

uint64_t _APAdvertiserStop(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    *(result + 32) = 0;
    if (*(result + 40))
    {
      _APAdvertiserStopListeningForNetwork(result, 1, *(result + 48));
      _APAdvertiserStopListeningForNetwork(v1, 7, *(v1 + 49));
    }

    return _APAdvertiserUpdate(v1);
  }

  return result;
}

void _APAdvertiserSetNeedsNIRangingSession(uint64_t result, int a2)
{
  v2 = *(result + 240);
  if (v2 == a2)
  {
    return;
  }

  if (gLogCategory_APAdvertiser <= 50)
  {
    if (gLogCategory_APAdvertiser != -1)
    {
LABEL_5:
      LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserSetNeedsNIRangingSession(APAdvertiserRef, Boolean)", 33554482, "needsNIRangingSession %d -> %d\n", v2, a2);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v2 = *(result + 240);
      goto LABEL_5;
    }
  }

LABEL_7:
  *(result + 240) = a2;
  if (*(result + 232))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    if (a2)
    {
      FigNotificationCenterAddWeakListener();
    }

    else
    {
      FigNotificationCenterRemoveWeakListener();
    }

    _APAdvertiserUpdateNIRangingSession(result, v5);
  }

  else if (gLogCategory_APAdvertiser <= 90 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserSetNeedsNIRangingSession(APAdvertiserRef, Boolean)", 33554522, "NIRangingSession requires systemInfo to work\n");
  }
}

void _APAdvertiserUpdateNIRangingSession(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  if (!v3)
  {
    APSLogErrorAt();
    goto LABEL_46;
  }

  v4 = APReceiverSystemInfoCopyProperty(v3, a2, @"BluetoothAddress", 0, 0);
  if (!v4)
  {
LABEL_46:
    v7 = 0;
LABEL_48:
    v9 = 1;
    goto LABEL_12;
  }

  v5 = v4;
  BytePtr = CFDataGetBytePtr(v4);
  v7 = CFStringCreateF(0, "%.6a", *&BytePtr);
  if (!v7)
  {
    APSLogErrorAt();
    CFRelease(v5);
    goto LABEL_48;
  }

  CFRelease(v5);
  if (*(a1 + 240))
  {
    if (*(a1 + 248))
    {
      if (!APSIsProximityReceiverEnabled())
      {
        goto LABEL_44;
      }

      v8 = *(a1 + 248);
      if (!v8)
      {
        goto LABEL_44;
      }

      if (gLogCategory_APAdvertiser > 50)
      {
        goto LABEL_23;
      }

      if (gLogCategory_APAdvertiser == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_23:
          v11 = dispatch_semaphore_create(0);
          if (v11)
          {
            v12 = v11;
            v13 = *(a1 + 248);
            v23 = MEMORY[0x277D85DD0];
            v24 = 3221225472;
            v25 = ___APAdvertiserUpdateNIRangingSessionWithDeviceIdentifier_block_invoke;
            v26 = &unk_278C5F7D0;
            v27 = v12;
            v28 = a1;
            [v13 updateResponderDeviceIdentifier:v7 completionHandler:&v23];
            dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
            dispatch_release(v12);
          }

          else
          {
            APSLogErrorAt();
          }

          goto LABEL_44;
        }

        v8 = *(a1 + 248);
      }

      LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserUpdateNIRangingSessionWithDeviceIdentifier(APAdvertiserRef, CFStringRef)", 33554482, "Updating NI ranging session [%{ptr}] device identifier to %@\n", v8, v7);
      goto LABEL_23;
    }

    if (APSIsProximityReceiverEnabled())
    {
      if (!*(a1 + 248))
      {
        if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserStartNIRangingSessionWithDeviceIdentifier(APAdvertiserRef, CFStringRef)", 33554482, "Starting NI ranging session\n");
        }

        v23 = 0;
        v24 = &v23;
        v25 = 0x3052000000;
        v26 = __Block_byref_object_copy__258;
        v27 = __Block_byref_object_dispose__259;
        v28 = getNISpatialBrowsingConfigurationClass_softClass;
        if (!getNISpatialBrowsingConfigurationClass_softClass)
        {
          v18 = MEMORY[0x277D85DD0];
          v19 = 3221225472;
          v20 = __getNISpatialBrowsingConfigurationClass_block_invoke;
          v21 = &unk_278C5FC48;
          v22 = &v23;
          __getNISpatialBrowsingConfigurationClass_block_invoke(&v18);
        }

        _Block_object_dispose(&v23, 8);
        v15 = objc_opt_new();
        v16 = v15;
        if (!v15)
        {
          goto LABEL_52;
        }

        [v15 setResponder:1];
        [v16 setDeviceIdentifier:v7];
        v23 = 0;
        v24 = &v23;
        v25 = 0x3052000000;
        v26 = __Block_byref_object_copy__258;
        v27 = __Block_byref_object_dispose__259;
        v28 = getNISessionClass_softClass;
        if (!getNISessionClass_softClass)
        {
          v18 = MEMORY[0x277D85DD0];
          v19 = 3221225472;
          v20 = __getNISessionClass_block_invoke;
          v21 = &unk_278C5FC48;
          v22 = &v23;
          __getNISessionClass_block_invoke(&v18);
        }

        _Block_object_dispose(&v23, 8);
        v17 = objc_opt_new();
        *(a1 + 248) = v17;
        if (v17)
        {
          [v17 runWithConfiguration:v16];
          if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserStartNIRangingSessionWithDeviceIdentifier(APAdvertiserRef, CFStringRef)", 33554482, "Started NI ranging session [%{ptr}] with deviceIdentifier:%@\n", *(a1 + 248), v7);
          }
        }

        else
        {
LABEL_52:
          APSLogErrorAt();
        }

        goto LABEL_43;
      }

      APSLogErrorAt();
    }

    v16 = 0;
LABEL_43:

LABEL_44:
    CFRelease(v7);
    return;
  }

  v9 = 0;
LABEL_12:
  if (APSIsProximityReceiverEnabled())
  {
    v10 = *(a1 + 248);
    if (v10)
    {
      if (gLogCategory_APAdvertiser <= 50)
      {
        if (gLogCategory_APAdvertiser != -1 || (v14 = _LogCategory_Initialize(), v10 = *(a1 + 248), v14))
        {
          LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserStopNIRangingSession(APAdvertiserRef)", 33554482, "Stopping NI ranging session [%{ptr}]\n", v10);
          v10 = *(a1 + 248);
        }
      }

      [v10 invalidate];

      *(a1 + 248) = 0;
      if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserStopNIRangingSession(APAdvertiserRef)", 33554482, "Stopped NI ranging session\n");
      }
    }
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_44;
  }
}

void sub_23E9CD934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNISpatialBrowsingConfigurationClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary();
  result = objc_getClass("NISpatialBrowsingConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getNISpatialBrowsingConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "NISpatialBrowsingConfiguration");
    return __getNISessionClass_block_invoke(v3);
  }

  return result;
}

void __getNISessionClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("NISession");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getNISessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    abort_report_np("Unable to find class %s", "NISession");
    NearbyInteractionLibrary();
  }
}

void NearbyInteractionLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!NearbyInteractionLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __NearbyInteractionLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278C5F7F0;
    v3 = 0;
    NearbyInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (NearbyInteractionLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __NearbyInteractionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NearbyInteractionLibraryCore_frameworkLibrary = result;
  return result;
}

void _APAdvertiserInfoHandleBluetoothAddressChanged(int a1, NSObject **cf)
{
  CFRetain(cf);
  v3 = cf[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___APAdvertiserInfoHandleBluetoothAddressChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = cf;
  dispatch_async(v3, block);
}

uint64_t _APAdvertiserStopListeningForNetwork(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v4 = result;
    result = APConnectivityHelperDeregisterForEvent();
    if (result)
    {
      v5 = result;
      result = APSLogErrorAt();
      if (gLogCategory_APAdvertiser <= 90)
      {
        if (gLogCategory_APAdvertiser != -1)
        {
          return LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserStopListeningForNetwork(APAdvertiserRef, APConnectivityHelperEventType, Boolean)", 33554522, "[%{ptr}] Error stopping listening for network (type %d): %#m\n", v4, a2, v5);
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserStopListeningForNetwork(APAdvertiserRef, APConnectivityHelperEventType, Boolean)", 33554522, "[%{ptr}] Error stopping listening for network (type %d): %#m\n", v4, a2, v5);
        }
      }
    }
  }

  return result;
}

uint64_t _APAdvertiserUpdate(uint64_t a1)
{
  v2 = (a1 + 168);
  v3 = _APAdvertiserWantSubAdvertiserToBeStarted(a1, 6u, *(a1 + 168), 0, 0);
  v6 = *(a1 + 72);
  if (v3)
  {
    if (!v6)
    {
      LODWORD(v73) = 0;
      WORD2(block) = 0;
      LODWORD(block) = 0;
      APSGetDeviceID();
      v9 = CFStringCreateF(&v73, "%.6a", COERCE_DOUBLE(&block));
      if (v73)
      {
        APSLogErrorAt();
      }

      _APAdvertiserUpdateAdvertiserInfoCorrelationID(a1, v9, v7, v8);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else if (v6)
  {
    _APAdvertiserUpdateAdvertiserInfoCorrelationID(a1, 0, v4, v5);
  }

  updated = _APAdvertiserUpdateSubAdvertiserState(a1, 0, (a1 + 136));
  if (*(a1 + 129))
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = _APAdvertiserUpdateSubAdvertiserState(a1, v11, (a1 + 144));
  if (!updated)
  {
    updated = v12;
  }

  v13 = _APAdvertiserUpdateSubAdvertiserState(a1, 3, (a1 + 152));
  if (!updated)
  {
    updated = v13;
  }

  v14 = _APAdvertiserUpdateSubAdvertiserState(a1, 5, (a1 + 160));
  if (!updated)
  {
    updated = v14;
  }

  v15 = _APAdvertiserUpdateSubAdvertiserState(a1, 6, v2);
  if (updated)
  {
    v16 = updated;
  }

  else
  {
    v16 = v15;
  }

  v17 = _APAdvertiserUpdateSubAdvertiserState(a1, 4, (a1 + 176));
  if (!v16)
  {
    v16 = v17;
  }

  v18 = _APAdvertiserUpdateSubAdvertiserState(a1, 8, (a1 + 184));
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  if (*(a1 + 197) || !*(a1 + 49) || (*(a1 + 129) && (v20 = *(a1 + 144)) != 0 && *(v20 + 4) && !*(a1 + 194) ? (v21 = *(a1 + 195) != 0) : (v21 = 1), *(a1 + 192) && v21 == *(a1 + 193)))
  {
    v24 = 0;
  }

  else
  {
    if (APSIsVirtualMachine())
    {
      if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserUpdateSocialChannelForAWDL(APAdvertiserRef)", 33554482, "Ignoring AirPlaySoloMode setting on VirtualMachine\n");
      }

LABEL_47:
      v24 = 0;
      *(a1 + 193) = v21;
      *(a1 + 192) = 1;
      goto LABEL_48;
    }

    if ([objc_msgSend(MEMORY[0x277D7BB18] "currentState")])
    {
      v22 = *(a1 + 120);
      if (v21)
      {
        if (!v22)
        {
          v23 = APSWiFiTransactionCreate();
          if (v23)
          {
            v24 = v23;
            APSLogErrorAt();
            goto LABEL_48;
          }
        }
      }

      else if (v22)
      {
        CFRelease(v22);
        *(a1 + 120) = 0;
      }

      if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserUpdateSocialChannelForAWDL(APAdvertiserRef)", 33554482, "%s AWDL Social Channel (err=%d)\n");
      }

      goto LABEL_47;
    }

    APSLogErrorAt();
    v24 = -6735;
  }

LABEL_48:
  if (v19)
  {
    v25 = v19;
  }

  else
  {
    v25 = v24;
  }

  LOWORD(v65) = 0;
  v26 = *(a1 + 56);
  v27 = ((v26 & 2) == 0 || (*(a1 + 52) & 2) != 0 || !*(a1 + 49)) && ((v26 & 8) == 0 || (*(a1 + 52) & 8) != 0 || !*(a1 + 49)) && ((v26 & 0x20) == 0 || (*(a1 + 52) & 0x20) != 0 || !*(a1 + 48)) && ((v26 & 0x40) == 0 || (*(a1 + 52) & 0x40) != 0 || !*(a1 + 48));
  if (*(a1 + 197))
  {
    goto LABEL_134;
  }

  v28 = *(a1 + 104);
  if (*(a1 + 32))
  {
    v29 = MEMORY[0x277CBED28];
    if (v28)
    {
LABEL_69:
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = 0;
      v38 = *(v28 + 16);
      v39 = [v38 internalQueue];
      block = MEMORY[0x277D85DD0];
      v67 = 3221225472;
      v68 = __APAdvertiserBTLEManagerGetBTLEMode_block_invoke;
      v69 = &unk_278C60940;
      v70 = v38;
      v71 = &v73;
      v72 = &v65;
      dispatch_sync(v39, &block);
      _Block_object_dispose(&v73, 8);
      v40 = MEMORY[0x277CBED10];
      if (!v27)
      {
        v40 = v29;
      }

      v41 = APAdvertiserBTLEManagerSetProperty(*(*(a1 + 104) + 16), @"isP2PAllowed", *v40);
      if (v41)
      {
        v42 = v41;
      }

      else if (v65 == 1)
      {
        if (!*(a1 + 80) || !*(a1 + 88))
        {
          goto LABEL_88;
        }

        if (gLogCategory_APAdvertiser <= 40 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserUpdateBTLEAdvertising(APAdvertiserRef)", 33554472, "Updating BTLE Advertising.\n");
        }

        v44 = _APAdvertiserSetBTLEParameters(a1);
        if (!v44)
        {
          v45 = *(*(a1 + 104) + 16);
          v46 = [v45 internalQueue];
          block = MEMORY[0x277D85DD0];
          v67 = 3221225472;
          v68 = __APAdvertiserBTLEManagerRestartAdvertising_block_invoke;
          v69 = &unk_278C608C8;
          v70 = v45;
          dispatch_sync(v46, &block);
          goto LABEL_88;
        }

        v42 = v44;
      }

      else
      {
        v43 = _APAdvertiserSetBTLEParameters(a1);
        if (v43)
        {
          v42 = v43;
        }

        else
        {
          v42 = APAdvertiserBTLEManagerSetBTLEMode(*(*(a1 + 104) + 16), 1);
          if (!v42)
          {
            goto LABEL_89;
          }
        }
      }

      goto LABEL_166;
    }

    if (gAPAdvertiserBTLEManagerInitOnce != -1)
    {
      dispatch_once(&gAPAdvertiserBTLEManagerInitOnce, &__block_literal_global_5828);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance && (v31 = Instance, *(Instance + 16) = 0, v32 = [[APAdvertiserBTLEManager alloc] initWithEventContext:Instance], (*(v31 + 16) = v32) != 0))
    {
      *(a1 + 104) = v31;
      if (*(a1 + 196))
      {
        v33 = APAdvertiserBTLEManagerSetProperty(v32, @"requireAltBrowser", *v29);
        if (v33)
        {
          v42 = v33;
          goto LABEL_165;
        }

        v32 = *(*(a1 + 104) + 16);
      }

      v34 = [(APAdvertiserBTLEManager *)v32 setEventHandler:_APAdvertiserBTLEEventHandler withContext:*(a1 + 96)];
      if (!v34)
      {
        v35 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, (a1 + 24));
        if (!v35)
        {
          APSLogErrorAt();
          v42 = -6728;
          goto LABEL_166;
        }

        v36 = v35;
        v37 = APAdvertiserBTLEManagerSetProperty(*(*(a1 + 104) + 16), @"receiverPort", v35);
        if (v37)
        {
          v42 = v37;
          APSLogErrorAt();
          CFRelease(v36);
          goto LABEL_166;
        }

        CFRelease(v36);
        v28 = *(a1 + 104);
        if (!v28)
        {
          APSLogErrorAt();
          goto LABEL_88;
        }

        goto LABEL_69;
      }

      v42 = v34;
    }

    else
    {
      APSLogErrorAt();
      v42 = -72312;
    }

LABEL_165:
    APSLogErrorAt();
    goto LABEL_166;
  }

  if (!v28)
  {
LABEL_88:
    v42 = 0;
    goto LABEL_89;
  }

  v42 = APAdvertiserBTLEManagerSetBTLEMode(*(v28 + 16), 0);
  if (!v42)
  {
    goto LABEL_89;
  }

LABEL_166:
  APSLogErrorAt();
LABEL_89:
  v47 = *(a1 + 197);
  if (!v25)
  {
    v25 = v42;
  }

  v64 = 0;
  if (v47)
  {
    goto LABEL_134;
  }

  v48 = *(a1 + 112);
  if (!*(a1 + 32))
  {
    if (!v48)
    {
      goto LABEL_134;
    }

    v51 = APAdvertiserRapportManagerSetMode(v48, 0);
    if (!v51)
    {
      goto LABEL_135;
    }

    goto LABEL_149;
  }

  if (v48)
  {
LABEL_114:
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    v56 = *(v48 + 40);
    block = MEMORY[0x277D85DD0];
    v67 = 3221225472;
    v68 = __APAdvertiserRapportManagerGetMode_block_invoke;
    v69 = &unk_278C607D0;
    v70 = &v73;
    v71 = v48;
    v72 = &v64;
    dispatch_sync(v56, &block);
    _Block_object_dispose(&v73, 8);
    if (v64 != 1)
    {
      v60 = _APAdvertiserSetRapportParameters(a1, v57, v58, v59);
      if (v60)
      {
        v51 = v60;
      }

      else
      {
        v51 = APAdvertiserRapportManagerSetMode(*(a1 + 112), 1);
        if (!v51)
        {
          goto LABEL_135;
        }
      }

      goto LABEL_149;
    }

    if (*(a1 + 80) && *(a1 + 88))
    {
      v51 = _APAdvertiserSetRapportParameters(a1, v57, v58, v59);
      if (!v51)
      {
        goto LABEL_135;
      }

      goto LABEL_149;
    }

LABEL_134:
    v51 = 0;
    goto LABEL_135;
  }

  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  if (gAPAdvertiserRapportManagerInitOnce != -1)
  {
    dispatch_once(&gAPAdvertiserRapportManagerInitOnce, &__block_literal_global_5606);
  }

  v49 = _CFRuntimeCreateInstance();
  v50 = v49;
  if (!v49)
  {
    APSLogErrorAt();
    v51 = -72412;
    *(v74 + 6) = -72412;
    _Block_object_dispose(&v73, 8);
    goto LABEL_149;
  }

  *(v49 + 16) = 0u;
  *(v49 + 80) = 0;
  *(v49 + 48) = 0u;
  *(v49 + 64) = 0u;
  *(v49 + 32) = 0u;
  if (gLogCategory_APAdvertiserRapportManager <= 50 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserRapportManager, "OSStatus APAdvertiserRapportManagerCreate(APAdvertiserRapportManagerRef *)", 33554482, "[%{ptr}] Advertiser Rapport manager created.\n", v50);
  }

  v65 = 0;
  if (_APAdvertiserRapportManager_getActiveManagers_once != -1)
  {
    dispatch_once(&_APAdvertiserRapportManager_getActiveManagers_once, &__block_literal_global_10);
  }

  if (FigCFWeakReferenceTableAddValueAndGetKey())
  {
    APSLogErrorAt();
  }

  v52 = v65;
  v50[2] = v65;
  if (v52)
  {
    v53 = dispatch_queue_create("APAdvertiserRapportManagerInternalQueue", 0);
    v50[5] = v53;
    if (v53)
    {
      v54 = dispatch_queue_create("APAdvertiserRapportManagerEventQueue", 0);
      v50[4] = v54;
      if (v54)
      {
        v55 = v50[5];
        block = MEMORY[0x277D85DD0];
        v67 = 3221225472;
        v68 = __APAdvertiserRapportManagerCreate_block_invoke;
        v69 = &unk_278C60738;
        v70 = &v73;
        v71 = v50;
        dispatch_sync(v55, &block);
        if (!*(v74 + 6))
        {
          *(a1 + 112) = v50;
          _Block_object_dispose(&v73, 8);
          goto LABEL_113;
        }

        APSLogErrorAt();
        goto LABEL_159;
      }
    }

    APSLogErrorAt();
    v63 = -72412;
  }

  else
  {
    APSLogErrorAt();
    v63 = -6728;
  }

  *(v74 + 6) = v63;
LABEL_159:
  CFRelease(v50);
  v51 = *(v74 + 6);
  _Block_object_dispose(&v73, 8);
  if (!v51)
  {
LABEL_113:
    v48 = *(a1 + 112);
    if (!v48)
    {
      APSLogErrorAt();
      goto LABEL_134;
    }

    goto LABEL_114;
  }

LABEL_149:
  APSLogErrorAt();
  v62 = *(a1 + 112);
  if (v62)
  {
    APAdvertiserRapportManagerSetMode(v62, 0);
  }

LABEL_135:
  if (v25)
  {
    result = v25;
  }

  else
  {
    result = v51;
  }

  *(a1 + 88) = 0;
  return result;
}

void sub_23E9CEAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APAdvertiserWantSubAdvertiserToBeStarted(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4, char *a5)
{
  if (a3)
  {
    v5 = *(a3 + 4);
  }

  else
  {
    v5 = 0;
  }

  if ((*(a1 + 56) & (1 << a2)) == 0 || (*(a1 + 52) & (1 << a2)) != 0)
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  v6 = 0;
  if (a2 > 8)
  {
    v8 = 0;
    goto LABEL_21;
  }

  if (((1 << a2) & 0x10E) != 0)
  {
    v7 = 49;
  }

  else
  {
    if (((1 << a2) & 0x70) == 0)
    {
      v8 = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    v7 = 48;
  }

  v8 = *(a1 + v7);
  if (!v8)
  {
    v6 = 0;
    goto LABEL_21;
  }

LABEL_12:
  v8 = *(a1 + 32);
  if (*(a1 + 32))
  {
    v8 = *(a1 + 194) || (*(a1 + 195) != 0);
    if ((a2 & 0xFFFFFFFD) != 1)
    {
      if ((a2 > 6) | (0x15u >> a2) & 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = *(a1 + 194) & 1;
      }
    }
  }

  v6 = 1;
LABEL_21:
  if (a4)
  {
    *a4 = v5;
  }

  if (a5)
  {
    *a5 = v6;
  }

  return v8;
}

void _APAdvertiserUpdateAdvertiserInfoCorrelationID(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_APAdvertiser <= 30 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserUpdateAdvertiserInfoCorrelationID(APAdvertiserRef, CFStringRef)", 33554462, "[%{ptr}] Correlation ID changed from %@ to %@\n", a1, *(a1 + 72), cf);
  }

  v6 = *(a1 + 72);
  *(a1 + 72) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (*(a1 + 80))
  {
    if (gLogCategory_APAdvertiser <= 30 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserUpdateAdvertiserInfoCorrelationID(APAdvertiserRef, CFStringRef)", 33554462, "[%{ptr}] Setting correlation ID on advertiser info: %@\n", a1, *(a1 + 72));
    }

    APAdvertiserInfoSetProperty(*(a1 + 80), cf, @"correlationID", a4, *(a1 + 72));
    *(a1 + 88) = 1;
  }
}

uint64_t _APAdvertiserUpdateSubAdvertiserState(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v33[0] = 0;
  LOBYTE(cf) = 0;
  if (!_APAdvertiserWantSubAdvertiserToBeStarted(a1, a2, v6, v33, &cf) || a2 == 6 && !*(a1 + 72))
  {
    if (v33[0])
    {
      v10 = v6 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(v6 + 4) && *(v6 + 1))
    {
      BonjourAdvertiserStop();
      if (*(v6 + 2))
      {
        BonjourAdvertiserStop();
      }

      if (*v6 == 8)
      {
        _APAdvertiserEnsureAssistedModeInfoCreated(a1, 1);
      }

      *(v6 + 4) = 0;
      if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserStopSubAdvertiser(APAdvertiserRef, SubAdvertiser *)", 33554482, "Stopped subAdvertiser of type %d %{flags} \n", *v6, (1 << *v6), &unk_23EAA18F8);
      }
    }

    return 0;
  }

  v7 = v33[0];
  v8 = cf;
  if (!v33[0])
  {
    if (v6)
    {
      goto LABEL_33;
    }

    v11 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
    if (!v11)
    {
      APSLogErrorAt();
      v9 = 4294960568;
      goto LABEL_106;
    }

    v6 = v11;
    *v11 = a2;
    v12 = BonjourAdvertiserCreate();
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      BonjourAdvertiserSetDispatchQueue();
      if (a2 > 2 || !*(a1 + 128))
      {
        goto LABEL_32;
      }

      v13 = BonjourAdvertiserCreate();
      if (!v13)
      {
        BonjourAdvertiserSetDispatchQueue();
LABEL_32:
        *a3 = v6;
LABEL_33:
        v35 = 0u;
        v36 = 0u;
        *v33 = 0u;
        v34 = 0u;
        v31 = 0;
        cf = 0;
        if (*(v6 + 4))
        {
LABEL_81:
          v9 = 0;
          goto LABEL_82;
        }

        if (!*(v6 + 1))
        {
          APSLogErrorAt();
          v9 = 4294960587;
          goto LABEL_82;
        }

        v14 = 0;
        v15 = 0;
        v16 = *v6;
        if (*v6 > 8)
        {
          v17 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          goto LABEL_71;
        }

        if (((1 << v16) & 0x127) != 0)
        {
          if (!*(a1 + 196))
          {
            if (v16 == 5)
            {
              v17 = "com.apple.airplay";
            }

            else if (v16 == 8)
            {
              v17 = v33;
              __sprintf_chk(v33, 0, 0x40uLL, "_%s._%s.", (a1 + 198), "tcp");
              cf = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 214), 0x8000100u);
              if (cf)
              {
LABEL_41:
                if (*v6 == 5)
                {
                  v15 = 0;
                  v21 = 0x280000000000000;
                  v20 = 2304;
LABEL_69:
                  v19 = 1;
                  goto LABEL_70;
                }

                if (!*v6)
                {
                  v19 = 0;
                  v20 = 0;
                  v21 = 0;
                  v15 = *(a1 + 28);
LABEL_70:
                  v14 = "local.";
                  goto LABEL_71;
                }

                v23 = if_nametoindex("awdl0");
                if (v23)
                {
                  v15 = v23;
                  v20 = 0;
                  v21 = 0;
                  goto LABEL_69;
                }

LABEL_107:
                APSLogErrorAt();
                v9 = 4294960534;
                goto LABEL_82;
              }
            }

            else
            {
              v17 = "_airplay._tcp.";
            }

LABEL_40:
            v18 = APAdvertiserInfoCreateAirPlayServiceName(*(a1 + 80), &cf);
            if (v18)
            {
              v9 = v18;
              goto LABEL_109;
            }

            goto LABEL_41;
          }

          if (v16 == 1)
          {
            v17 = "_airplay-alt._tcp.";
            goto LABEL_40;
          }
        }

        else
        {
          v17 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          if (((1 << v16) & 0x58) == 0)
          {
LABEL_71:
            v26 = _APAdvertiserSetupBonjourAdvertiser(*(v6 + 1), v14, v17, cf, v15, *(a1 + 24), v19, v21, v20);
            if (v26)
            {
              v9 = v26;
              goto LABEL_109;
            }

            if (!*(v6 + 2))
            {
LABEL_76:
              updated = _APAdvertiserUpdateSubAdvertiserTXTRecordsAndStartIfNecessary(a1, v6);
              if (!updated)
              {
                *(v6 + 4) = 1;
                if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserSetupAndStartSubAdvertiser(APAdvertiserRef, SubAdvertiser *)", 33554482, "Started subAdvertiser of type %d %{flags} \n", *v6, (1 << *v6), &unk_23EAA18F8);
                }

                goto LABEL_81;
              }

              v9 = updated;
              goto LABEL_109;
            }

            if (!*(a1 + 196))
            {
              RAOPServiceName = APAdvertiserInfoCreateRAOPServiceName(*(a1 + 80), &v31);
              if (RAOPServiceName)
              {
                v9 = RAOPServiceName;
              }

              else
              {
                v28 = _APAdvertiserSetupBonjourAdvertiser(*(v6 + 2), "local.", "_raop._tcp.", v31, v15, *(a1 + 24), v19, 0, 0);
                if (!v28)
                {
                  goto LABEL_76;
                }

                v9 = v28;
              }

LABEL_109:
              APSLogErrorAt();
LABEL_82:
              if (cf)
              {
                CFRelease(cf);
              }

              if (v31)
              {
                CFRelease(v31);
              }

              if (!v9)
              {
                return v9;
              }

LABEL_106:
              APSLogErrorAt();
              v7 = 0;
LABEL_9:
              if (gLogCategory_APAdvertiser <= 90 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserUpdateSubAdvertiserState(APAdvertiserRef, APSubAdvertiserType, SubAdvertiser **)", 33554522, "Unexpected state for subAdvertiser of type %d %{flags}. AdvertisingStarted=%d SubAdvertiserStarted=%d SubAdvertiserCanStart=%d SubAdvertiserShouldBeStarted=%d", a2, (1 << a2), &unk_23EAA18F8, *(a1 + 32), v7, v8, 1);
              }

              return v9;
            }

            goto LABEL_102;
          }

          if (!*(a1 + 196))
          {
            if (v16 == 6)
            {
              v17 = "com.apple.airplay";
            }

            else
            {
              v17 = "_airplay-p2p._tcp.";
            }

            if (v16 == 3)
            {
              v22 = if_nametoindex("awdl0");
              if (!v22)
              {
                goto LABEL_107;
              }

              v15 = v22;
              v21 = 0;
              v20 = 0;
            }

            else if (v16 == 6)
            {
              v24 = APAdvertiserInfoCreateAirPlayServiceName(*(a1 + 80), &cf);
              if (v24)
              {
                v9 = v24;
                goto LABEL_109;
              }

              v15 = 0;
              v20 = 2304;
              v21 = 0x280000000000000;
              if (cf)
              {
                v19 = 1;
                v17 = "com.apple.airplay";
                goto LABEL_70;
              }
            }

            else
            {
              v15 = 0;
              v20 = 2304;
              v21 = 0x280000000000000;
            }

            v25 = APAdvertiserInfoCreateRAOPServiceName(*(a1 + 80), &cf);
            if (v25)
            {
              v9 = v25;
              goto LABEL_109;
            }

            goto LABEL_69;
          }
        }

LABEL_102:
        APSLogErrorAt();
        goto LABEL_81;
      }

      v9 = v13;
    }

    APSLogErrorAt();
    free(v6);
    goto LABEL_106;
  }

  if (*(a1 + 88))
  {
    v9 = _APAdvertiserUpdateSubAdvertiserTXTRecordsAndStartIfNecessary(a1, v6);
    if (v9)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    v9 = 0;
  }

  if (v7 != 1)
  {
    goto LABEL_9;
  }

  return v9;
}

uint64_t _APAdvertiserSetBTLEParameters(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    if (*(a1 + 104))
    {
      PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
      result = APAdvertiserBTLEManagerSetProperty(*(*(a1 + 104) + 16), @"accessControlType", [MEMORY[0x277CCABB0] numberWithUnsignedInt:PropertyInt64Sync]);
      v4 = result;
      if (result)
      {
        APSLogErrorAt();
        return v4;
      }
    }

    else
    {
      APSLogErrorAt();
      return 0;
    }
  }

  return result;
}

uint64_t _APAdvertiserSetRapportParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v5 = *(a1 + 80);
  if (v5)
  {
    if (*(a1 + 112))
    {
      v6 = APAdvertiserInfoCopyProperty(v5, a2, @"deviceID", a4, &v11);
      if (v11)
      {
        APSLogErrorAt();
        v11 = -6705;
      }

      else
      {
        v7 = *(a1 + 112);
        v13 = 0;
        v14 = &v13;
        v15 = 0x2020000000;
        v16 = 0;
        v8 = *(v7 + 40);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __APAdvertiserRapportManagerSetProperty_block_invoke;
        block[3] = &unk_278C60780;
        block[4] = &v13;
        block[5] = v7;
        block[6] = @"deviceID";
        block[7] = v6;
        dispatch_sync(v8, block);
        v9 = *(v14 + 6);
        _Block_object_dispose(&v13, 8);
        v11 = v9;
        if (v9)
        {
          APSLogErrorAt();
        }
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

  return v11;
}

void _APAdvertiserBTLEEventHandler(uint64_t a1, int a2, uint64_t a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___APAdvertiserBTLEEventHandler_block_invoke;
    v7[3] = &__block_descriptor_44_e5_v8__0l;
    v8 = a2;
    v7[4] = v5;
    dispatch_sync(v6, v7);
    CFRelease(v5);
  }
}

uint64_t _APAdvertiserHandleSourceDeviceNearbyEvent(uint64_t a1, int a2)
{
  if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    v4 = "Source";
    if (!a2)
    {
      v4 = "No source";
    }

    LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserHandleSourceDeviceNearbyEvent(APAdvertiserRef, Boolean)", 33554482, "%s device nearby\n", v4);
  }

  *(a1 + 194) = a2;
  result = _APAdvertiserUpdate(a1);
  if (result)
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t _APAdvertiserUpdateSubAdvertiserTXTRecordsAndStartIfNecessary(uint64_t a1, unsigned int *a2)
{
  v14 = 0;
  v15 = 0;
  if (!*(a2 + 1))
  {
    APSLogErrorAt();
    BinaryTXTRecordFromTXTRecordBytes = 0;
    v9 = 4294960587;
    goto LABEL_37;
  }

  v18 = 0;
  v16 = 0;
  cf = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    BinaryTXTRecordFromTXTRecordBytes = 0;
    v6 = *a2;
    if (*a2 <= 3)
    {
      if (v6 >= 3)
      {
        if (v6 != 3)
        {
          goto LABEL_22;
        }

        v18 = APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(v4, 0, 0, &v15);
        if (!v18)
        {
          goto LABEL_12;
        }

        goto LABEL_51;
      }

      goto LABEL_11;
    }

    if (v6 - 5 >= 2)
    {
      if (v6 == 4)
      {
        v18 = APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(v4, 0, 2, &v15);
        if (!v18)
        {
          goto LABEL_12;
        }

        goto LABEL_51;
      }

      if (v6 != 8)
      {
        goto LABEL_22;
      }

LABEL_11:
      v18 = APAdvertiserInfoCopyAirPlayDataWithNANServiceType(v4, 0, &v15);
      if (!v18)
      {
LABEL_12:
        BinaryTXTRecordFromTXTRecordBytes = 0;
        goto LABEL_22;
      }

LABEL_51:
      APSLogErrorAt();
      goto LABEL_12;
    }

    v18 = APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(v4, v6 != 5, 2, &v16);
    if (v18)
    {
      goto LABEL_51;
    }

    if (*a2 == 5)
    {
      p_cf = &cf;
      v18 = APAdvertiserInfoCopyAirPlayDataWithNANServiceType(*(a1 + 80), 2, &cf);
      if (v18)
      {
        goto LABEL_51;
      }
    }

    else
    {
      p_cf = &v16;
    }

    v8 = *p_cf;
    CFDataGetBytePtr(v8);
    CFDataGetLength(v8);
    BinaryTXTRecordFromTXTRecordBytes = CreateBinaryTXTRecordFromTXTRecordBytes();
    if (v18)
    {
      APSLogErrorAt();
      if (BinaryTXTRecordFromTXTRecordBytes)
      {
        CFRelease(BinaryTXTRecordFromTXTRecordBytes);
        goto LABEL_12;
      }
    }

    else
    {
      v15 = v16;
      v16 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    BinaryTXTRecordFromTXTRecordBytes = 0;
    v18 = -6709;
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v9 = v18;
  if (v18)
  {
    goto LABEL_50;
  }

  updated = _APAdvertiserUpdateBonjourAdvertiser(a2, 1, v15, BinaryTXTRecordFromTXTRecordBytes);
  if (updated)
  {
    v9 = updated;
LABEL_50:
    APSLogErrorAt();
    goto LABEL_37;
  }

  if (!*(a2 + 2))
  {
    goto LABEL_31;
  }

  v11 = APAdvertiserInfoCopyRAOPData(*(a1 + 80), &v14);
  if (v11)
  {
    v9 = v11;
    goto LABEL_50;
  }

  v12 = _APAdvertiserUpdateBonjourAdvertiser(a2, 0, v14, 0);
  if (v12)
  {
    v9 = v12;
    goto LABEL_50;
  }

LABEL_31:
  if (*(a2 + 4) && gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserUpdateSubAdvertiserTXTRecordsAndStartIfNecessary(APAdvertiserRef, SubAdvertiser *)", 33554482, "Updated subAdvertiser of type %d %{flags} \n", *a2, (1 << *a2), &unk_23EAA18F8);
  }

  v9 = 0;
LABEL_37:
  if (v15)
  {
    CFRelease(v15);
  }

  if (BinaryTXTRecordFromTXTRecordBytes)
  {
    CFRelease(BinaryTXTRecordFromTXTRecordBytes);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v9;
}

uint64_t _APAdvertiserSetupBonjourAdvertiser(uint64_t a1, uint64_t a2, const char *a3, CFStringRef theString, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  if (!CFStringGetCString(theString, v17, 256, 0x8000100u))
  {
    APSLogErrorAt();
    return 4294960534;
  }

  v11 = BonjourAdvertiserSetDomain();
  if (v11)
  {
    v14 = v11;
LABEL_21:
    APSLogErrorAt();
    return v14;
  }

  v12 = BonjourAdvertiserSetName();
  if (v12)
  {
    v14 = v12;
    goto LABEL_21;
  }

  v13 = BonjourAdvertiserSetServiceType();
  if (v13)
  {
    v14 = v13;
    goto LABEL_21;
  }

  v14 = a9;
  if ((a8 & 0x200000000000000) != 0)
  {
    if (!strcmp(a3, "com.apple.airplay"))
    {
      v15 = ((a9 >> 10) & 2) + 1;
    }

    else
    {
      v15 = (a9 >> 10) & 2;
    }

    if (v15)
    {
      BonjourAdvertiserSetNANControlFlags();
    }
  }

  else
  {
    BonjourAdvertiserSetInterfaceIndex();
  }

  BonjourAdvertiserSetPort();
  BonjourAdvertiserSetP2P();
  if (a8)
  {
    BonjourAdvertiserSetFlags();
  }

  if (a9)
  {
    BonjourAdvertiserSetTrafficFlags();
    return 0;
  }

  return v14;
}

uint64_t _APAdvertiserUpdateBonjourAdvertiser(uint64_t a1, int a2, CFDataRef theData, const __CFData *a4)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
  }

  v7 = BonjourAdvertiserSetTXTRecord();
  if (v7)
  {
    v10 = v7;
LABEL_18:
    APSLogErrorAt();
    return v10;
  }

  BonjourAdvertiserSetNANCustomData();
  if (gLogCategory_APAdvertiser <= 10 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    if (a4)
    {
      Length = CFDataGetLength(a4);
    }

    else
    {
      Length = 0;
    }

    LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserUpdateBonjourAdvertiser(SubAdvertiser *, Boolean, CFDataRef, CFDataRef)", 33554442, "Set NAN Binary TXT record of size %d: %@\n", Length, a4);
  }

  if (*(a1 + 4))
  {
    v9 = BonjourAdvertiserUpdate();
  }

  else
  {
    v9 = BonjourAdvertiserStart();
  }

  v10 = v9;
  if (v9)
  {
    goto LABEL_18;
  }

  return v10;
}

uint64_t _APAdvertiserProcessP2PConfig(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 197))
  {
    return 0;
  }

  v3 = *(a1 + 129);
  Int64 = CFDictionaryGetInt64();
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  if (Int64)
  {
    v6 = *(a1 + 56) | v5;
  }

  else
  {
    v6 = *(a1 + 56) & ~v5;
  }

  *(a1 + 56) = v6;
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFF7 | (8 * (CFDictionaryGetInt64() != 0));
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFDF | (32 * (CFDictionaryGetInt64() != 0));
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFBF | ((CFDictionaryGetInt64() != 0) << 6);
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFEF | (16 * (CFDictionaryGetInt64() != 0));
  v7 = _APAdvertiserUpdate(a1);
  if (v7)
  {
    APSLogErrorAt();
  }

  return v7;
}

void _APAdvertiserHandleConnectivityHelperEvent(const void *a1, int a2, uint64_t a3, void *a4)
{
  CFRetain(a1);
  CFRetain(a4);
  v7 = a4[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___APAdvertiserHandleConnectivityHelperEvent_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v9 = a2;
  block[4] = a4;
  block[5] = a1;
  dispatch_async(v7, block);
}

uint64_t APAdvertiserStart(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APAdvertiserStart_block_invoke;
  v4[3] = &unk_278C60738;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __APAdvertiserStart_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 32))
  {
    v3 = 0;
    goto LABEL_7;
  }

  if (*(v2 + 24) <= 0 || !*(v2 + 80))
  {
    APSLogErrorAt();
    v3 = -6745;
LABEL_11:
    result = _APAdvertiserStop(v2);
    goto LABEL_7;
  }

  *(v2 + 32) = 1;
  if (*(v2 + 40))
  {
    _APAdvertiserStartListeningForNetwork(v2, 1, *(v2 + 48), "WiFi");
    _APAdvertiserStartListeningForNetwork(v2, 7, *(v2 + 49), "AWDL");
  }

  result = _APAdvertiserUpdate(v2);
  v3 = result;
  if (result)
  {
    APSLogErrorAt();
    goto LABEL_11;
  }

LABEL_7:
  *(*(*(v1 + 32) + 8) + 24) = v3;
  return result;
}

uint64_t _APAdvertiserStartListeningForNetwork(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    v5 = result;
    result = APConnectivityHelperRegisterForEvent();
    if (result)
    {
      if (gLogCategory_APAdvertiser <= 90)
      {
        if (gLogCategory_APAdvertiser != -1)
        {
          return LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserStartListeningForNetwork(APAdvertiserRef, APConnectivityHelperEventType, Boolean, const char *)", 33554522, "[%{ptr}] Error setting connectivity helper %s listener: %#m\n", v5, a4, result);
        }

        v7 = result;
        v6 = _LogCategory_Initialize();
        result = v7;
        if (v6)
        {
          return LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserStartListeningForNetwork(APAdvertiserRef, APConnectivityHelperEventType, Boolean, const char *)", 33554522, "[%{ptr}] Error setting connectivity helper %s listener: %#m\n", v5, a4, result);
        }
      }
    }
  }

  return result;
}

uint64_t APAdvertiserFlushBonjourRecords(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiser, "OSStatus APAdvertiserFlushBonjourRecords(APAdvertiserRef)", 33554482, "Flushing Bonjour records\n");
  }

  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserFlushBonjourRecords_block_invoke;
  block[3] = &unk_278C60820;
  block[5] = v10;
  block[6] = a1;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v3;
}

void sub_23E9D080C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void __APAdvertiserFlushBonjourRecords_block_invoke(void *a1)
{
  v2 = a1[6];
  if (!*(v2 + 64))
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 16));
    v4 = a1[6];
    v4[8] = v3;
    if (!v3)
    {
      APSLogErrorAt();
      *(*(a1[4] + 8) + 24) = -6728;
      return;
    }

    *(*(a1[5] + 8) + 24) = CFRetain(v4);
    v5 = *(a1[6] + 64);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __APAdvertiserFlushBonjourRecords_block_invoke_2;
    handler[3] = &unk_278C5FC48;
    handler[4] = a1[5];
    dispatch_source_set_event_handler(v5, handler);
    v6 = *(a1[6] + 64);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __APAdvertiserFlushBonjourRecords_block_invoke_3;
    v10[3] = &unk_278C5FC48;
    v10[4] = a1[5];
    dispatch_source_set_cancel_handler(v6, v10);
    dispatch_resume(*(a1[6] + 64));
    v2 = a1[6];
  }

  if (*(v2 + 129))
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  *(v2 + 52) |= 0x109 | v7;
  _APAdvertiserUpdate(v2);
  v8 = *(a1[6] + 64);
  v9 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

uint64_t __APAdvertiserFlushBonjourRecords_block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (*(v1 + 129))
  {
    v2 = -270;
  }

  else
  {
    v2 = -268;
  }

  *(v1 + 52) &= v2;
  return _APAdvertiserUpdate(v1);
}

void __APAdvertiserFlushBonjourRecords_block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t APAdvertiserStop(uint64_t a1)
{
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserStop_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t APAdvertiserSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (a2 && a3)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APAdvertiserSetProperty_block_invoke;
    v6[3] = &unk_278C60780;
    v6[4] = &v7;
    v6[5] = a2;
    v6[6] = a1;
    v6[7] = a3;
    dispatch_sync(v3, v6);
    v4 = *(v8 + 6);
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v8 + 6) = -6705;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __APAdvertiserSetProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), @"advertiserInfo"))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    block[0] = 0;
    v4 = *(v2 + 80);
    if (v4 == v3 || v3 && v4 && CFEqual(v4, v3))
    {
      v5 = 0;
    }

    else
    {
      v9 = APAdvertiserInfoCopy(*MEMORY[0x277CBECE8], v3, block);
      if (v9)
      {
        v5 = v9;
      }

      else
      {
        v12 = *(v2 + 72);
        if (v12)
        {
          if (gLogCategory_APAdvertiser <= 30)
          {
            if (gLogCategory_APAdvertiser != -1 || (v19 = _LogCategory_Initialize(), v12 = *(v2 + 72), v19))
            {
              LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserSetAdvertiserInfo(APAdvertiserRef, APAdvertiserInfoRef)", 33554462, "[%{ptr}] Setting correlation ID %@ on incoming advertiser info\n", v2, v12);
              v12 = *(v2 + 72);
            }
          }

          APAdvertiserInfoSetProperty(block[0], v10, @"correlationID", v11, v12);
        }

        v20 = *(v2 + 80);
        if (v20)
        {
          CFRelease(v20);
        }

        *(v2 + 80) = block[0];
        *(v2 + 88) = 1;
        v5 = _APAdvertiserUpdate(v2);
        if (!v5)
        {
          goto LABEL_34;
        }
      }

      APSLogErrorAt();
    }

LABEL_34:
    *(*(*(a1 + 32) + 8) + 24) = v5;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      APSLogErrorAt();
    }

    return;
  }

  if (CFEqual(*(a1 + 40), @"P2PConfig"))
  {
    *(*(*(a1 + 32) + 8) + 24) = _APAdvertiserProcessP2PConfig(*(a1 + 48), *(a1 + 56));
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v6 = *(*(a1 + 48) + 104);
      if (v6)
      {
        v23[0] = 0;
        v23[1] = v23;
        v23[2] = 0x2020000000;
        v24 = 0;
        v7 = *(v6 + 16);
        v8 = [v7 internalQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __APAdvertiserBTLEManagerUpdatePreferences_block_invoke;
        block[3] = &unk_278C60990;
        block[4] = v7;
        block[5] = v23;
        dispatch_sync(v8, block);
        _Block_object_dispose(v23, 8);
      }

      return;
    }

    goto LABEL_47;
  }

  if (CFEqual(*(a1 + 40), @"enforceSolo"))
  {
    v13 = CFGetInt64();
    v14 = v13 != 0;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      goto LABEL_47;
    }

    v15 = *(a1 + 48);
    if (*(v15 + 197) || *(v15 + 195) == v14)
    {
      v21 = 0;
    }

    else
    {
      if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
      {
        v16 = "no";
        if (v13)
        {
          v16 = "yes";
        }

        LogPrintF(&gLogCategory_APAdvertiser, "OSStatus _APAdvertiserSetEnforceSolo(APAdvertiserRef, Boolean)", 33554482, "Enforce Solo: %s\n", v16);
      }

      *(v15 + 195) = v14;
      v21 = _APAdvertiserUpdate(v15);
      if (v21)
      {
        APSLogErrorAt();
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = v21;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
LABEL_47:

      APSLogErrorAt();
    }
  }

  else
  {
    if (!CFEqual(*(a1 + 40), @"allowAssistedModeAdvertisingOverAWDL"))
    {
      *(*(*(a1 + 32) + 8) + 24) = -6727;
      return;
    }

    v17 = CFGetInt64();
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      goto LABEL_47;
    }

    v18 = *(a1 + 48);
    *(v18 + 56) = *(v18 + 56) & 0xFFFFFEFF | ((v17 != 0) << 8);
    *(*(*(a1 + 32) + 8) + 24) = _APAdvertiserUpdate(v18);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      goto LABEL_47;
    }
  }
}

void sub_23E9D1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAdvertiserCopyProperty(uint64_t a1, CFTypeRef cf1, CFTypeRef *a3)
{
  if (!CFEqual(cf1, @"assistedModeInfo"))
  {
    return 4294960569;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *(a1 + 16);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___APAdvertiserCopyAssistedModeInfo_block_invoke;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a1;
    v10[5] = v6;
    dispatch_sync(v7, v10);
    *a3 = CFRetain(v6);
    CFRelease(v6);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    v8 = 4294960568;
    APSLogErrorAt();
  }

  return v8;
}

uint64_t APAdvertiserDebugShow(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), v4, _APAdvertiserDebugShow);
  return v5;
}

void _APAdvertiserDebugShow(uint64_t *a1)
{
  v23 = 0;
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = a1[2];
  DataBuffer_AppendF(v4, "\n");
  DataBuffer_AppendF(v4, "+-+ AirPlay Advertiser state +-+\n");
  DataBuffer_AppendF(v4, "\n");
  v7 = *(v2 + 80);
  if (v7)
  {
    v8 = APAdvertiserInfoCopyProperty(v7, v5, @"deviceID", v6, &v23);
    FigCFStringGetCStringPtrAndBufferToFree();
    CFStringGetLength(v8);
    v9 = TextToHardwareAddressScalar();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (*(v2 + 48))
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (*(v2 + 49))
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  DataBuffer_AppendF(v4, "Systems Available: WiFi=%-3s AWDL=%-3s\n", v10, v11);
  DataBuffer_AppendF(v4, "\n");
  if (*(v2 + 32))
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  DataBuffer_AppendF(v4, "Advertising: started=%-3s port=%5d interfaceIndex=%d deviceID=%llu (%@)", v12, *(v2 + 24), *(v2 + 28), v9, v8);
  _APAdvertiserAddSubAdvertiserInfo(v2, v4, "Infra", 0, *(v2 + 136));
  if (*(v2 + 129))
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  _APAdvertiserAddSubAdvertiserInfo(v2, v4, "Full AWDL", v13, *(v2 + 144));
  if (*(v2 + 129))
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  DataBuffer_AppendF(v4, ", infraAssist=%-3s", v14);
  _APAdvertiserAddSubAdvertiserInfo(v2, v4, "Partial AWDL", 3u, *(v2 + 152));
  _APAdvertiserAddSubAdvertiserInfo(v2, v4, "Open Full NAN", 5u, *(v2 + 160));
  _APAdvertiserAddSubAdvertiserInfo(v2, v4, "Open Partial NAN", 6u, *(v2 + 168));
  _APAdvertiserAddSubAdvertiserInfo(v2, v4, "Secure Partial NAN", 4u, *(v2 + 176));
  if (*(v2 + 197))
  {
    _APAdvertiserAddSubAdvertiserInfo(v2, v4, "Assisted Mode", 8u, *(v2 + 184));
    DataBuffer_AppendF(v4, ", bonjour=%s._%s._%s.", (v2 + 214), (v2 + 198), "tcp");
  }

  if (*(v2 + 194))
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  if (*(v2 + 195))
  {
    v16 = "yes";
  }

  else
  {
    v16 = "no";
  }

  DataBuffer_AppendF(v4, "\n %-*s: soloSourceNearby=%s, enforceSoloAdvertising=%s", 20, "P2P", v15, v16);
  if (*(v2 + 80))
  {
    DataBuffer_AppendF(v4, "\n\n");
    v23 = APAdvertiserInfoDebugShow(*(v2 + 80), v3, v4);
  }

  if (*(v2 + 104))
  {
    DataBuffer_AppendF(v4, "\n\n");
    v17 = *(v2 + 104);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v18 = *(v17 + 16);
    v19 = [v18 internalQueue];
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __APAdvertiserBTLEManagerDebugShow_block_invoke;
    v27 = &unk_278C60968;
    v28 = v18;
    v29 = &v32;
    v30 = v4;
    v31 = v3;
    dispatch_sync(v19, &block);
    LODWORD(v18) = *(v33 + 6);
    _Block_object_dispose(&v32, 8);
    v23 = v18;
  }

  if (*(v2 + 112))
  {
    DataBuffer_AppendF(v4, "\n\n");
    v20 = *(v2 + 112);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v21 = *(v20 + 40);
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __APAdvertiserRapportManagerDebugShow_block_invoke;
    v27 = &unk_278C607F8;
    v28 = &v32;
    v29 = v20;
    v31 = v3;
    v30 = v4;
    dispatch_sync(v21, &block);
    v22 = *(v33 + 6);
    _Block_object_dispose(&v32, 8);
    v23 = v22;
  }

  DataBuffer_AppendF(v4, "\n");
  *(a1 + 6) = v23;
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t _APAdvertiserAddSubAdvertiserInfo(uint64_t a1, uint64_t a2, const char *a3, unsigned int a4, uint64_t a5)
{
  v5 = "no";
  v6 = "yes";
  if (a5 && *(a5 + 4))
  {
    v5 = "yes";
  }

  v7 = *(a1 + 56) & (1 << a4);
  v8 = *(a1 + 52) & (1 << a4);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v13 = "no";
    goto LABEL_16;
  }

  if (a4 > 8)
  {
    goto LABEL_23;
  }

  if (((1 << a4) & 0x10E) != 0)
  {
    v10 = 49;
  }

  else
  {
    if (((1 << a4) & 0x70) == 0)
    {
      if (!a4)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

    v10 = 48;
  }

  if (*(a1 + v10))
  {
LABEL_15:
    v13 = "yes";
    goto LABEL_16;
  }

LABEL_23:
  v13 = "no";
LABEL_16:
  if (v8)
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  if (!v7)
  {
    v6 = "no";
  }

  return DataBuffer_AppendF(a2, "\n %-*s: started=%-3s, requested=%-3s, blocked=%-3s, allow=%-3s", 20, a3, v5, v6, v11, v13);
}

uint64_t APAdvertiserReportNANIssue(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __APAdvertiserReportNANIssue_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_sync(v2, v4);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }
}

uint64_t __APAdvertiserReportNANIssue_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = v2[20];
  if (v3)
  {
    if (gLogCategory_APAdvertiser <= 50)
    {
      if (gLogCategory_APAdvertiser == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v3 = *(*(v1 + 32) + 160);
      }

      LogPrintF(&gLogCategory_APAdvertiser, "OSStatus APAdvertiserReportNANIssue(APAdvertiserRef, APTNANDataSessionIssueReportRef)_block_invoke", 33554482, "Submitting NAN Issue Report '%@' for subAdvertiser of type %d %{flags}", *(v1 + 40), *v3, (1 << *v3), &unk_23EAA18F8);
    }

LABEL_6:
    result = BonjourAdvertiserReportNANIssue();
    v2 = *(v1 + 32);
  }

  v4 = v2[21];
  if (!v4)
  {
    goto LABEL_13;
  }

  if (gLogCategory_APAdvertiser <= 50)
  {
    if (gLogCategory_APAdvertiser == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v4 = *(*(v1 + 32) + 168);
    }

    LogPrintF(&gLogCategory_APAdvertiser, "OSStatus APAdvertiserReportNANIssue(APAdvertiserRef, APTNANDataSessionIssueReportRef)_block_invoke", 33554482, "Submitting NAN Issue Report '%@' for subAdvertiser of type %d %{flags}", *(v1 + 40), *v4, (1 << *v4), &unk_23EAA18F8);
  }

LABEL_12:
  result = BonjourAdvertiserReportNANIssue();
  v2 = *(v1 + 32);
LABEL_13:
  v5 = v2[22];
  if (!v5)
  {
    return result;
  }

  if (gLogCategory_APAdvertiser <= 50)
  {
    if (gLogCategory_APAdvertiser == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v5 = *(*(v1 + 32) + 176);
    }

    LogPrintF(&gLogCategory_APAdvertiser, "OSStatus APAdvertiserReportNANIssue(APAdvertiserRef, APTNANDataSessionIssueReportRef)_block_invoke", 33554482, "Submitting NAN Issue Report '%@' for subAdvertiser of type %d %{flags}", *(v1 + 40), *v5, (1 << *v5), &unk_23EAA18F8);
  }

LABEL_19:

  return BonjourAdvertiserReportNANIssue();
}

uint64_t APAdvertiserUpdateNANLinkStatus(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __APAdvertiserUpdateNANLinkStatus_block_invoke;
    v4[3] = &__block_descriptor_44_e5_v8__0l;
    v4[4] = a1;
    v5 = a2 != 0;
    dispatch_sync(v2, v4);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }
}

uint64_t __APAdvertiserUpdateNANLinkStatus_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2[20])
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiser, "OSStatus APAdvertiserUpdateNANLinkStatus(APAdvertiserRef, Boolean)_block_invoke", 33554482, "Update Open Full NAN link status: %d", *(v1 + 40));
    }

    result = BonjourAdvertiserUpdateLinkStatusNAN();
    v2 = *(v1 + 32);
  }

  if (v2[21])
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiser, "OSStatus APAdvertiserUpdateNANLinkStatus(APAdvertiserRef, Boolean)_block_invoke", 33554482, "Update Open Partial NAN link status: %d", *(v1 + 40));
    }

    result = BonjourAdvertiserUpdateLinkStatusNAN();
    v2 = *(v1 + 32);
  }

  if (v2[22])
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiser, "OSStatus APAdvertiserUpdateNANLinkStatus(APAdvertiserRef, Boolean)_block_invoke", 33554482, "Update Secure Partial NAN link status: %d", *(v1 + 40));
    }

    return BonjourAdvertiserUpdateLinkStatusNAN();
  }

  return result;
}

uint64_t APAdvertiserCopyNANWifiStats(uint64_t a1, void *a2)
{
  v21 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v13 = 4294960591;
    goto LABEL_15;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v13 = 4294960568;
    goto LABEL_15;
  }

  v5 = dispatch_semaphore_create(0);
  if (!v5)
  {
    APSLogErrorAt();
    v13 = 4294960568;
    goto LABEL_14;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserCopyNANWifiStats_block_invoke;
  block[3] = &unk_278C608F0;
  block[6] = a1;
  block[7] = Mutable;
  block[4] = v6;
  block[5] = &v17;
  dispatch_sync(v7, block);
  if (!*(v18 + 24))
  {
    v13 = 4294960561;
    goto LABEL_13;
  }

  v8 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    APSLogErrorAt();
    v13 = 4294960574;
    goto LABEL_13;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
  v10 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_12;
  }

  v11 = CFGetTypeID(ValueAtIndex);
  if (v11 != CFDictionaryGetTypeID())
  {
    v14 = CFGetTypeID(v10);
    if (v14 == CFNumberGetTypeID() && FigCFArrayGetInt64AtIndex())
    {
      v13 = v21;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 4294960587;
    goto LABEL_13;
  }

  v12 = CFRetain(v10);
  v13 = 0;
  *a2 = v12;
LABEL_13:
  dispatch_release(v6);
LABEL_14:
  CFRelease(Mutable);
LABEL_15:
  _Block_object_dispose(&v17, 8);
  return v13;
}

void sub_23E9D1F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APAdvertiserCopyNANWifiStats_block_invoke(uint64_t result)
{
  if (*(*(result + 48) + 176))
  {
    v1 = result;
    *(*(*(result + 40) + 8) + 24) = 1;
    CFRetain(*(result + 56));
    dispatch_retain(*(v1 + 32));
    return BonjourAdvertiserGenerateStatisticsNAN();
  }

  return result;
}

void __APAdvertiserCopyNANWifiStats_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (NSErrorToOSStatus())
  {
    CFArrayAppendInt64();
  }

  else if (APTNANDataSessionStatisticsReportCopyDictionary())
  {
    APSLogErrorAt();
  }

  else
  {
    CFArrayAppendValue(*(a1 + 40), 0);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t APReceiverRemoteControlSessionGetClassID()
{
  if (APReceiverRemoteControlSessionGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APReceiverRemoteControlSessionGetClassID_sRegisterOnce, &APReceiverRemoteControlSessionGetClassID_sClassID, rcs_getClassID);
  }

  return APReceiverRemoteControlSessionGetClassID_sClassID;
}

uint64_t rcs_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&rcs_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t APReceiverRemoteControlSessionGetTypeID()
{
  if (APReceiverRemoteControlSessionGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APReceiverRemoteControlSessionGetClassID_sRegisterOnce, &APReceiverRemoteControlSessionGetClassID_sClassID, rcs_getClassID);
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t __APReceiverRequestProcessorGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APReceiverRequestProcessorGetClassID_classDesc, ClassID, 1, &APReceiverRequestProcessorGetClassID_classID);
}

uint64_t APReceiverAudioSessionRealTimeCreate(uint64_t a1, const void *a2, uint64_t a3, _OWORD *a4, const __CFDictionary *a5, uint64_t *a6)
{
  v166 = *MEMORY[0x277D85DE8];
  v153 = 0;
  memset(v152, 0, 28);
  *&v149.sa_len = 0;
  *&v149.sa_data[6] = 0;
  v151 = 0;
  v150 = 0;
  v148 = 0;
  AudioFormatIndex = 0;
  if (gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554462, "%@ Creating real time audio session\n", a2);
  }

  v12 = malloc_type_calloc(1uLL, 0x24D0uLL, 0x10F0040BEA07A60uLL);
  if (!v12)
  {
    APSLogErrorAt();
    return -72150;
  }

  v13 = v12;
  *v12 = a1;
  v12[4] = CFRetain(a2);
  *(v13 + 24) = 96;
  v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v13 + 8) = v14;
  if (!v14)
  {
    goto LABEL_320;
  }

  v15 = APSRTCReportingAgentCreate();
  v154 = v15;
  if (v15)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 90)
    {
      v16 = v15;
      if (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554522, "### %@ Could not create RTCReporting agent. err=%d\n", *(v13 + 32), v16);
      }
    }

    v154 = 0;
  }

  else if (gLogCategory_APReceiverAudioSessionRealTime <= 40 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554472, "%@ Created RTCReporting agent. %p\n", *(v13 + 32), *(v13 + 9400));
  }

  v17 = FigSimpleMutexCreate();
  *(v13 + 2360) = v17;
  if (!v17)
  {
LABEL_320:
    APSLogErrorAt();
    v24 = 0;
    v25 = -72150;
    goto LABEL_37;
  }

  v18 = dispatch_queue_create("APReceiverAudioSessionPeriodicTaskQueue", 0);
  *(v13 + 9032) = v18;
  if (!v18 || (v19 = dispatch_queue_create("APReceiverAudioSessionLogQueue", 0), (*(v13 + 9152) = v19) == 0))
  {
    APSLogErrorAt();
    v24 = 0;
    v154 = APSSignalErrorAt();
    goto LABEL_561;
  }

  if (CFDictionaryGetInt64())
  {
    v20 = 0;
  }

  else
  {
    v20 = APSSettingsGetIntWithDefault() != 0;
  }

  *(v13 + 9304) = v20;
  Int64 = CFDictionaryGetInt64();
  if (v154)
  {
    APSLogErrorAt();
    v24 = 0;
    goto LABEL_561;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged != 1381257248)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554522, "### %@ audioConnectionType '%C' not supported\n", *(v13 + 32), Int64Ranged);
    }

    v24 = 0;
    goto LABEL_36;
  }

  v142 = a6;
  if (CFDictionaryContainsKey(a5, @"MediaDataControl"))
  {
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    Count = CFArrayGetCount(TypedValue);
    if (Count)
    {
      if (Count != 1)
      {
        if (Count != 2)
        {
          v24 = 0;
          v25 = -6705;
          goto LABEL_37;
        }

        CFDataGetTypeID();
        CFArrayGetTypedValueAtIndex();
      }

      CFDataGetTypeID();
      CFArrayGetTypedValueAtIndex();
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v24 = Mutable;
    if (!Mutable)
    {
LABEL_369:
      APSLogErrorAt();
      v25 = -6728;
      goto LABEL_37;
    }

    v27 = MEMORY[0x277CBED28];
    if (!Int64)
    {
      v27 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"MDC::AllowP2P", *v27);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    CFDictionarySetValue(v24, @"MDC::Label", @"RT");
    CFDictionarySetInt64();
    FigCFDictionarySetInt32();
    *&v145 = a1;
    *(&v145 + 1) = audioSession_handleMediaDataControlRequest;
    v146 = 0;
    *&inSourceFormat.mSampleRate = *a4;
    *&inSourceFormat.mFormatFlags = *(a4 + 12);
    v154 = APMediaDataControlServerCreate(&inSourceFormat, v24, &v145, (v13 + 40));
    if (v154)
    {
      goto LABEL_367;
    }

    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554482, "%@ Created media data control server [%{ptr}]", *(v13 + 32), *(v13 + 40));
    }
  }

  else
  {
    v24 = 0;
  }

  *(v13 + 72) = CFDictionaryGetInt64();
  if (v154)
  {
    goto LABEL_367;
  }

  Value = CFDictionaryGetValue(a5, @"AudioFormat");
  if (Value)
  {
    v29 = CFRetain(Value);
    *(v13 + 2368) = v29;
    if (v29)
    {
      AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
      goto LABEL_56;
    }
  }

  else
  {
    *(v13 + 2368) = 0;
  }

  v154 = APCompressionTypeToAPAudioFormatIndex();
  if (v154)
  {
    goto LABEL_367;
  }

  v154 = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
  if (v154)
  {
    goto LABEL_367;
  }

LABEL_56:
  ASBD = APSAudioFormatDescriptionGetASBD();
  *(v13 + 92) = APAudioFormatIndexGetBitsPerChannel();
  if (!*(v13 + 72))
  {
    *(v13 + 72) = APAudioFormatIDToAPCompressionType();
  }

  *(v13 + 76) = *ASBD;
  v31 = *(ASBD + 28);
  *(v13 + 80) = v31;
  v32 = *(ASBD + 24);
  *(v13 + 84) = v32;
  if (!v32)
  {
    *(v13 + 84) = (((*(v13 + 92) + 7) & 0xFFFFFFF8) * v31) >> 3;
  }

  v33 = CFDictionaryGetValue(a5, @"NetworkClock");
  *(v13 + 2376) = v33;
  if (!v33)
  {
    goto LABEL_64;
  }

  v34 = CFGetTypeID(v33);
  if (v34 == APSNetworkClockGetTypeID())
  {
    v35 = *(v13 + 2376);
    if (v35)
    {
      CFRetain(v35);
    }

LABEL_64:
    *(v13 + 572) = 0;
    *(v13 + 568) = CFDictionaryGetInt64();
    if (!v154)
    {
      *(v13 + 2384) = CFDictionaryGetInt64() != 0;
      if (!v154)
      {
        v36 = CFDictionaryGetInt64();
        if (!v154)
        {
          if (v36)
          {
            audioSession_updateCallDurationMetric(v13, 1);
          }

          v37 = CFDictionaryGetValue(a5, @"StatsCollector");
          *(v13 + 2416) = v37;
          if (v37)
          {
            CFRetain(v37);
          }

          *(v13 + 9160) = FigGetCFPreferenceNumberWithDefault();
          v38 = CFDictionaryGetInt64();
          if (v38 >= 1)
          {
            v39 = v38;
          }

          else
          {
            v39 = 6001;
          }

          *(v13 + 1608) = v39;
          v40 = CFDictionaryGetInt64();
          if (v40)
          {
            v41 = *(v13 + 76) * v40 / 0x3E8u;
            *(v13 + 1652) = v41;
          }

          else
          {
            *(v13 + 1652) = CFDictionaryGetInt64();
            v41 = CFDictionaryGetInt64();
          }

          *(v13 + 1656) = v41;
          if (*(v13 + 2384))
          {
            v42 = 11;
          }

          else
          {
            v42 = 10;
          }

          *(v13 + 1664) = v42;
          if (CFDictionaryContainsKey(a5, @"ClientDeviceModel"))
          {
            v43 = CFDictionaryGetValue(a5, @"ClientDeviceModel");
            *(v13 + 136) = v43;
            if (v43)
            {
              CFRetain(v43);
            }
          }

          if (CFDictionaryContainsKey(a5, @"ClientOSBuildVersion"))
          {
            v44 = CFDictionaryGetValue(a5, @"ClientOSBuildVersion");
            *(v13 + 144) = v44;
            if (v44)
            {
              CFRetain(v44);
            }
          }

          *(v13 + 156) = CFDictionaryGetInt64();
          *(v13 + 152) = CFDictionaryGetInt64();
          v45 = CFDictionaryGetInt64();
          *(v13 + 88) = v45;
          v46 = *(v13 + 76);
          v47 = *(v13 + 84);
          CFDictionaryGetData();
          if (v154 == -6727)
          {
            cf = 0;
            v154 = 0;
            goto LABEL_94;
          }

          if (!v154)
          {
            if (v153 == 32)
            {
              for (i = 160; i != 464; ++i)
              {
                *(v13 + i) = 0;
              }

              __memcpy_chk();
              *(v13 + 160) = 1;
              v49 = CFDataCreate(*MEMORY[0x277CBECE8], (v13 + 424), 32);
              if (v49)
              {
                cf = v49;
                v154 = APSCryptorChaCha20Poly1305Create();
                if (v154)
                {
                  APSLogErrorAt();
                  v133 = cf;
LABEL_559:
                  CFRelease(v133);
LABEL_560:
                  if (!v13)
                  {
                    goto LABEL_562;
                  }

                  goto LABEL_561;
                }

LABEL_94:
                LODWORD(v50) = (v45 + v45 / (v46 / 0x3E8) + 16) * v47;
                *(v13 + 1668) = 512;
                if (v50 <= 0x5C0)
                {
                  v50 = 1472;
                }

                else
                {
                  v50 = v50;
                }

                *(v13 + 1672) = v50 + 12;
                v51 = UpTicksPerSecond();
                v52 = mach_absolute_time();
                *(v13 + 1784) = SecondsToUpTicks();
                *(v13 + 1792) = v52;
                *(v13 + 1904) = 60 * v51;
                *(v13 + 1896) = v52 + 60 * v51;
                *(v13 + 2016) = v51;
                *(v13 + 2008) = v52 + v51;
                *(v13 + 1976) = 10 * v51;
                *(v13 + 1968) = v52 + 10 * v51;
                *(v13 + 1984) = v52;
                *(v13 + 2040) = 0x7FFFFFFFFFFFFFFFLL;
                *(v13 + 2048) = 0x7FFFFFFFFFFFFFFFLL;
                *(v13 + 2064) = 0;
                *(v13 + 2056) = v52 + 8 * v51;
                v53 = (v51 * FigGetCFPreferenceNumberWithDefault()) / 1000.0;
                *(v13 + 9176) = v53;
                v54 = v52 + v53;
                *(v13 + 9168) = v54;
                *(v13 + 9184) = v53;
                *(v13 + 9192) = v54;
                *(v13 + 9201) = FigGetCFPreferenceNumberWithDefault();
                *(v13 + 9240) = 0;
                *(v13 + 9253) = 0;
                APSSettingsGetIntWithDefault();
                *(v13 + 9312) = MillisecondsToUpTicks() + v52;
                *(v13 + 9336) = 0;
                atomic_store(0, (v13 + 9352));
                *(v13 + 9340) = APSSettingsGetIntWithDefault();
                v55 = v51 * FigGetCFPreferenceNumberWithDefault();
                *(v13 + 9384) = v55;
                *(v13 + 9376) = v55 + v52;
                *(v13 + 8892) = 0;
                *(v13 + 8912) = 0;
                *(v13 + 8936) = 0;
                APSIOReporterCreate();
                v154 = 0;
                APSSettingsGetIntWithDefault();
                *(v13 + 9008) = SecondsToUpTicks();
                *(v13 + 9016) = mach_absolute_time();
                *(v13 + 9024) = 0;
                *(v13 + 1660) = (*(v13 + 1656) * 1000.0) / *(v13 + 76);
                *(v13 + 9232) = FigGetCFPreferenceNumberWithDefault();
                *(v13 + 9224) = FigGetCFPreferenceNumberWithDefault();
                v56 = CFDictionaryGetInt64();
                *(v13 + 1920) = v52;
                *(v13 + 1928) = v56 * v51;
                *(v13 + 1936) = v51;
                *(v13 + 1944) = 0;
                *(v13 + 1952) = v52;
                *(v13 + 1960) = 10 * v51;
                *(v13 + 9200) = 0;
                v57 = *MEMORY[0x277CBECE8];
                v154 = APSAtomicMessageQueueCreate();
                if (v154)
                {
                  goto LABEL_386;
                }

                v154 = APSAtomicMessageQueueCreate();
                if (v154)
                {
                  goto LABEL_386;
                }

                if (*(a3 + 1) == 2)
                {
                  v58 = 0;
                }

                else
                {
                  v58 = *(a3 + 24);
                }

                v138 = v13 + 1600;
                v59 = ServerSocketOpenEx2();
                v154 = v59;
                if (v59)
                {
                  if (gLogCategory_APReceiverAudioSessionRealTime > 90)
                  {
                    goto LABEL_558;
                  }

                  if (gLogCategory_APReceiverAudioSessionRealTime == -1)
                  {
                    if (!_LogCategory_Initialize())
                    {
                      goto LABEL_558;
                    }

                    v59 = v154;
                  }

                  LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554522, "### %@ RTCP UDP server socket setup on %##a if:%u failed: %#m\n", *(v13 + 32), a3, v58, v59);
                  goto LABEL_558;
                }

                if (Int64)
                {
                  SocketSetP2P();
                }

                SocketSetPacketTimestamps();
                SocketSetQoS();
                SockAddrCopy();
                SockAddrSetPort();
                *(v13 + 1612) = v152[0];
                *(v13 + 1624) = *(v152 + 12);
                Size = SockAddrGetSize();
                *(v13 + 1640) = Size;
                v154 = connect(*(v13 + 1600), (v13 + 1612), Size);
                if (v154)
                {
                  if (*__error())
                  {
                    v61 = *__error();
                    v154 = v61;
                    if (!v61)
                    {
LABEL_110:
                      *(v13 + 1644) = 1;
                      v148 = 28;
                      getsockname(*(v13 + 1600), &v149, &v148);
                      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554482, "%@ RTCP localAddr=%##a remoteAddr=%##a\n", *(v13 + 32), &v149, v13 + 1612);
                      }

                      APTTrafficMetricsCreate();
                      APTTrafficMetricsConnectionFormed();
                      goto LABEL_119;
                    }
                  }

                  else
                  {
                    v61 = 4294960596;
                    v154 = -6700;
                  }

                  *(v13 + 1644) = 0;
                  if (gLogCategory_APReceiverAudioSessionRealTime <= 90)
                  {
                    if (gLogCategory_APReceiverAudioSessionRealTime == -1)
                    {
                      if (!_LogCategory_Initialize())
                      {
                        goto LABEL_119;
                      }

                      v61 = v154;
                    }

                    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554522, "### %@ RTCP connect UDP to %##a failed (using sendto instead): %#m\n", *(v13 + 32), v13 + 1612, v61);
                  }

LABEL_119:
                  if (CFDictionaryGetInt64() || *(v13 + 568))
                  {
                    *(v13 + 2240) = 1;
                  }

                  else
                  {
                    v74 = malloc_type_malloc(0x5000uLL, 0x102004012755DA7uLL);
                    *(v13 + 2216) = v74;
                    if (!v74)
                    {
                      goto LABEL_565;
                    }

                    v75 = 0;
                    v76 = xmmword_23EAA1810;
                    v77 = vdupq_n_s64(0x1FFuLL);
                    v78 = vdupq_n_s64(1uLL);
                    v79 = vdupq_n_s64(2uLL);
                    do
                    {
                      v80 = vaddq_s64(v76, v78);
                      if (vmovn_s64(vcgtq_u64(v77, v76)).u8[0])
                      {
                        v74[v75] = &v74[5 * v80.i64[0]];
                      }

                      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFuLL), *&v76)).i32[1])
                      {
                        v74[v75 + 5] = &v74[5 * v80.i64[1]];
                      }

                      v76 = vaddq_s64(v76, v79);
                      v75 += 10;
                    }

                    while (v75 != 2560);
                    v74[2555] = 0;
                    *(v13 + 2224) = v74;
                    *(v13 + 2248) = 0x7FFFFFFFFFFFFFFFLL;
                    *(v13 + 2256) = xmmword_23EAA1820;
                    *(v13 + 2280) = 100000000;
                    if (*(v13 + 568))
                    {
                      v81 = 1;
                    }

                    else
                    {
                      v81 = FigGetCFPreferenceNumberWithDefault() != 0;
                    }

                    *(v13 + 2240) = v81;
                    *(v13 + 2304) = -1;
                    *(v13 + 2328) = -1;
                    *(v13 + 2344) = 128;
                    v154 = APSAtomicMessageQueueCreate();
                    if (v154)
                    {
                      goto LABEL_386;
                    }
                  }

                  v154 = APSRTPPassThroughJitterBufferCreate();
                  if (v154)
                  {
                    goto LABEL_386;
                  }

                  BufferSize = APCompressionTypeGetBufferSize();
                  if (!BufferSize)
                  {
                    APSLogErrorAt();
                    v131 = -6735;
                    goto LABEL_566;
                  }

                  v63 = BufferSize;
                  *(v13 + 9096) = 0;
                  *(v13 + 9128) = 0;
                  *(v13 + 9080) = 0;
                  *(v13 + 9086) = 0;
                  v64 = (*(v13 + 84) * *(v13 + 88));
                  *(v13 + 9112) = v64;
                  *(v13 + 9120) = v64;
                  v65 = malloc_type_malloc(v64, 0x77F455ACuLL);
                  *(v13 + 9104) = v65;
                  if (v65)
                  {
                    if (*(v13 + 72) == 1)
                    {
                      goto LABEL_203;
                    }

                    memset(&inSourceFormat, 0, sizeof(inSourceFormat));
                    memset(&inDestinationFormat, 0, sizeof(inDestinationFormat));
                    inPropertyData = 3;
                    v66 = APCompressionTypeFillStreamDescription();
                    if (v66)
                    {
                      v134 = v66;
                      goto LABEL_385;
                    }

                    if (*(v13 + 88))
                    {
                      inSourceFormat.mFramesPerPacket = *(v13 + 88);
                    }

                    LODWORD(v67) = *(v13 + 76);
                    inDestinationFormat.mSampleRate = v67;
                    *&inDestinationFormat.mFormatID = 0xC6C70636DLL;
                    v68 = *(v13 + 80);
                    v69 = *(v13 + 92);
                    inDestinationFormat.mBytesPerPacket = (v69 >> 3) * v68;
                    inDestinationFormat.mFramesPerPacket = 1;
                    inDestinationFormat.mBytesPerFrame = inDestinationFormat.mBytesPerPacket;
                    inDestinationFormat.mChannelsPerFrame = v68;
                    inDestinationFormat.mBitsPerChannel = v69;
                    inDestinationFormat.mReserved = 0;
                    v70 = (v13 + 1840);
                    v71 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, (v13 + 1840));
                    if (v71)
                    {
                      v134 = v71;
                      goto LABEL_385;
                    }

                    if (gLogCategory_APReceiverAudioSessionRealTime > 50 || gLogCategory_APReceiverAudioSessionRealTime == -1 && !_LogCategory_Initialize())
                    {
LABEL_178:
                      if (((*(v13 + 72) - 4) & 0xFFFFFFFB) != 0)
                      {
                        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_audioDecoderInitialize(APReceiverAudioSessionRealTimeStateRef)", 33554482, "%@ audioConverter. no codec plc support. plcMode=%d ", *(v13 + 32), 0);
                        }

                        v85 = malloc_type_calloc(1uLL, 0x4020uLL, 0x1010040784321C2uLL);
                        *(v13 + 9080) = v85;
                        if (!v85)
                        {
                          v134 = -72150;
                          goto LABEL_385;
                        }

                        APSPacketLossConcealerReset();
                        *(v13 + 9093) = 0;
                        *(v13 + 9096) = 0;
                        v84 = &unk_27E37D000;
                      }

                      else
                      {
                        outPropertyData = 0;
                        ioPropertyDataSize = 8;
                        v82 = AudioConverterSetProperty(*v70, 0x636F6E6Du, 4u, &inPropertyData);
                        if (v82)
                        {
                          v134 = v82;
                          goto LABEL_385;
                        }

                        Property = AudioConverterGetProperty(*v70, 0x7072696Du, &ioPropertyDataSize, &outPropertyData);
                        v84 = &unk_27E37D000;
                        if (Property)
                        {
                          v134 = Property;
                          goto LABEL_385;
                        }

                        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_audioDecoderInitialize(APReceiverAudioSessionRealTimeStateRef)", 33554482, "%@ audioConverter primeInfo penalty, leadingFrames=%u, trailingFrames=%u, codecPLC=%u", *(v13 + 32), outPropertyData, HIDWORD(outPropertyData), inPropertyData);
                        }

                        v86 = outPropertyData;
                        if (inPropertyData == 5)
                        {
                          v86 = 1;
                        }

                        *(v13 + 9088) = v86;
                        *(v13 + 9093) = 1;
                        *(v13 + 9096) = 0;
                      }

                      if (*(v13 + 80) < 3u)
                      {
                        goto LABEL_569;
                      }

                      ioPropertyDataSize = 0;
                      outPropertyData = 0;
                      v87 = v84[662];
                      if (v87 <= 50 && (v87 != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_audioDecoderInitialize(APReceiverAudioSessionRealTimeStateRef)", 33554482, "%@ audioConverter setting channel layout", *(v13 + 32), v138);
                      }

                      APAudioFormatGetMagicCookieForAACELD();
                      v88 = AudioConverterSetProperty(*(v13 + 1840), 0x646D6763u, ioPropertyDataSize, outPropertyData);
                      if (v88)
                      {
                        v134 = v88;
                      }

                      else
                      {
LABEL_569:
                        if (inSourceFormat.mFormatID != 1634492771 || (LODWORD(outPropertyData) = bswap32(inSourceFormat.mFramesPerPacket), BYTE5(outPropertyData) = *(v13 + 92), HIWORD(outPropertyData) = 2600, v156 = 14, v89 = *(v13 + 76), v157 = *(v13 + 80), v158 = -256, BYTE4(outPropertyData) = 0, v159 = 0, v160 = 0, v161 = bswap32(v89), (v90 = AudioConverterSetProperty(*(v13 + 1840), 0x646D6763u, 0x18u, &outPropertyData)) == 0))
                        {
                          v154 = 0;
LABEL_203:
                          *(v13 + 1704) = v63;
                          v91 = malloc_type_malloc(v63, 0x100004077774924uLL);
                          *(v13 + 1696) = v91;
                          if (v91)
                          {
                            *(v13 + 1720) = v63;
                            v92 = malloc_type_malloc(v63, 0x100004077774924uLL);
                            *(v13 + 1712) = v92;
                            if (v92)
                            {
                              *(v13 + 1736) = v63;
                              v93 = malloc_type_malloc(v63, 0x100004077774924uLL);
                              *(v13 + 1728) = v93;
                              if (v93)
                              {
                                *(v13 + 1752) = v63;
                                v94 = malloc_type_malloc(v63, 0x100004077774924uLL);
                                *(v13 + 1744) = v94;
                                if (v94)
                                {
                                  gAirPlayAudioStats = xmmword_23EAA1830;
                                  byte_27E37EED0 = 0;
                                  qword_27E37EED8 = 0;
                                  dword_27E37EEE0 = 0;
                                  *(v13 + 9408) = 16842752;
                                  *(v13 + 9412) = 0;
                                  v95 = CFDictionaryGetValue(a5, @"ReceiverSession");
                                  if (!v95)
                                  {
                                    goto LABEL_340;
                                  }

                                  v96 = v95[124];
                                  *(v13 + 9420) = v96;
                                  v97 = &unk_27E37D000;
                                  if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
                                  {
                                    if (gLogCategory_APReceiverAudioSessionRealTime != -1)
                                    {
LABEL_210:
                                      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554482, "%@ sender perceived cluster type %u\n", *(v13 + 32), v96);
                                      goto LABEL_212;
                                    }

                                    if (_LogCategory_Initialize())
                                    {
                                      v96 = *(v13 + 9420);
                                      goto LABEL_210;
                                    }
                                  }

LABEL_212:
                                  v98 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                                  *(v13 + 16) = v98;
                                  if (v98)
                                  {
                                    v99 = nw_activity_create();
                                    *(v13 + 104) = v99;
                                    if (!v99)
                                    {
                                      APSLogErrorAt();
                                      v154 = -6728;
                                      if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                      {
                                        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554522, "ReceiverAudioSession %{ptr} failed to create nwActivity\n", v13, v138, v139, v140);
                                      }

                                      goto LABEL_558;
                                    }

                                    nw_activity_activate();
                                    v100 = CFDictionaryContainsKey(a5, @"NetworkInfoRemoteRTP");
                                    *(v13 + 96) = v100;
                                    if (!v100)
                                    {
                                      v154 = ServerSocketOpen();
                                      if (v154)
                                      {
                                        goto LABEL_386;
                                      }

                                      v109 = v142;
                                      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                      {
                                        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554482, "%@ Listening for RTP on port %d", *(v13 + 32), *(v13 + 512));
                                      }

                                      APTTrafficMetricsCreate();
                                      APTTrafficMetricsConnectionFormed();
                                      if (Int64)
                                      {
                                        SocketSetP2P();
                                      }

                                      v127 = CFDictionaryGetInt64();
                                      if (v154)
                                      {
                                        goto LABEL_386;
                                      }

                                      if (!v127)
                                      {
                                        SocketSetQoS();
                                      }

                                      goto LABEL_288;
                                    }

                                    CFDictionaryGetTypeID();
                                    v101 = CFDictionaryGetTypedValue();
                                    if (v154)
                                    {
                                      goto LABEL_386;
                                    }

                                    LODWORD(outPropertyData) = 0;
                                    inSourceFormat.mSampleRate = 0.0;
                                    inDestinationFormat.mSampleRate = 0.0;
                                    IntWithDefault = APSSettingsGetIntWithDefault();
                                    v103 = APSSettingsGetIntWithDefault();
                                    CFStringGetTypeID();
                                    CFDictionaryGetTypedValue();
                                    if (outPropertyData)
                                    {
                                      APSLogErrorAt();
                                    }

                                    else
                                    {
                                      v144 = v101;
                                      v104 = CFDictionaryCreateMutable(v57, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                      if (v104)
                                      {
                                        v105 = v104;
                                        v106 = v24;
                                        v107 = IntWithDefault | v103;
                                        *(v13 + 112) = dispatch_queue_create("APReceiverAudioSessionRealTime.callbackQueue", 0);
                                        v108 = *MEMORY[0x277CBED28];
                                        CFDictionarySetValue(v105, *MEMORY[0x277CE4E88], *MEMORY[0x277CBED28]);
                                        CFDictionarySetInt64();
                                        if (v107)
                                        {
                                          LODWORD(outPropertyData) = APSRealTimeReadableRingBufferCreate();
                                          if (outPropertyData)
                                          {
                                            APSLogErrorAt();
                                            v24 = v106;
                                            v109 = v142;
                                            v97 = &unk_27E37D000;
                                            goto LABEL_282;
                                          }

                                          CFDictionarySetValue(v105, *MEMORY[0x277CE4F20], *(v13 + 128));
                                          if (IntWithDefault)
                                          {
                                            CFDictionarySetValue(v105, *MEMORY[0x277CE4F18], v108);
                                          }
                                        }

                                        if (APSGetAllowPersistentGroupsOnInfra())
                                        {
                                          CFDictionarySetValue(v105, *MEMORY[0x277CE4F10], v108);
                                        }

                                        LODWORD(outPropertyData) = APTransportConnectionUDPNWCreate();
                                        v24 = v106;
                                        if (outPropertyData)
                                        {
                                          APSLogErrorAt();
                                          v97 = &unk_27E37D000;
                                          v109 = v142;
                                          if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                          {
                                            LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_startServer(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554522, "### %@ Failed to create UDP low latency connection!\n", *(v13 + 32), v138);
                                          }

                                          goto LABEL_282;
                                        }

                                        v97 = &unk_27E37D000;
                                        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                        {
                                          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_startServer(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554482, "%@ Created UDPNW connection [%{ptr}]\n", *(v13 + 32), *(v13 + 120));
                                        }

                                        LODWORD(outPropertyData) = APSNetworkAddressCreateWithString();
                                        if (outPropertyData)
                                        {
                                          APSLogErrorAt();
                                          v109 = v142;
                                          if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                          {
                                            LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_startServer(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554522, "### %@ Failed to create APSNetworkAddress err=%#m!\n", *(v13 + 32), outPropertyData);
                                          }

                                          goto LABEL_282;
                                        }

                                        LODWORD(outPropertyData) = APSNetworkAddressCopyInterfaceName();
                                        if (outPropertyData)
                                        {
                                          goto LABEL_281;
                                        }

                                        mSampleRate = inSourceFormat.mSampleRate;
                                        CMBaseObject = APTransportConnectionGetCMBaseObject();
                                        v112 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                        if (v112)
                                        {
                                          LODWORD(outPropertyData) = v112(CMBaseObject, *MEMORY[0x277CE4EF8], *&mSampleRate);
                                          if (!outPropertyData)
                                          {
                                            v113 = inDestinationFormat.mSampleRate;
                                            if (!*&inDestinationFormat.mSampleRate)
                                            {
                                              goto LABEL_243;
                                            }

                                            v114 = APTransportConnectionGetCMBaseObject();
                                            v115 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                            if (v115)
                                            {
                                              LODWORD(outPropertyData) = v115(v114, *MEMORY[0x277CE4ED8], *&v113);
                                              if (!outPropertyData)
                                              {
                                                if (*&inDestinationFormat.mSampleRate && CFStringHasPrefix(*&inDestinationFormat.mSampleRate, @"llw"))
                                                {
                                                  *(v13 + 9252) = APSSettingsGetIntWithDefault() != 0;
                                                  *(v13 + 9254) = APSSettingsGetIntWithDefault() != 0;
                                                  APSSettingsGetIntWithDefault();
                                                  *(v13 + 9256) = SecondsToUpTicks();
                                                }

LABEL_243:
                                                v116 = APTransportConnectionGetCMBaseObject();
                                                v117 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                                if (v117)
                                                {
                                                  LODWORD(outPropertyData) = v117(v116, *MEMORY[0x277CE4F00], v144);
                                                  if (!outPropertyData)
                                                  {
                                                    v118 = *(v13 + 112);
                                                    v119 = *(v13 + 120);
                                                    v120 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                                                    if (v120)
                                                    {
                                                      LODWORD(outPropertyData) = v120(v119, v13, audioSession_eventCallback, v118, 0);
                                                      if (!outPropertyData)
                                                      {
                                                        v121 = APTransportConnectionGetCMBaseObject();
                                                        v122 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                                        if (v122)
                                                        {
                                                          LODWORD(outPropertyData) = v122(v121, *MEMORY[0x277CE4EF0], *MEMORY[0x277CE4EC0]);
                                                          if (!outPropertyData)
                                                          {
                                                            v123 = *(v13 + 120);
                                                            v124 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                                            if (v124)
                                                            {
                                                              LODWORD(outPropertyData) = v124(v123);
                                                              if (!outPropertyData)
                                                              {
                                                                v125 = APTransportConnectionGetCMBaseObject();
                                                                v126 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                                                if (!v126)
                                                                {
                                                                  LODWORD(outPropertyData) = -12782;
LABEL_314:
                                                                  APSLogErrorAt();
                                                                  v109 = v142;
                                                                  if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                                                  {
                                                                    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_startServer(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554522, "### %@ Failed to get network info!\n", *(v13 + 32), v138);
                                                                  }

                                                                  goto LABEL_282;
                                                                }

                                                                LODWORD(outPropertyData) = v126(v125, *MEMORY[0x277CE4EE0], v57, v13 + 520);
                                                                v109 = v142;
                                                                if (outPropertyData)
                                                                {
                                                                  goto LABEL_314;
                                                                }

LABEL_282:
                                                                CFRelease(v105);
LABEL_283:
                                                                if (*&inSourceFormat.mSampleRate)
                                                                {
                                                                  CFRelease(*&inSourceFormat.mSampleRate);
                                                                }

                                                                if (*&inDestinationFormat.mSampleRate)
                                                                {
                                                                  CFRelease(*&inDestinationFormat.mSampleRate);
                                                                }

                                                                v154 = outPropertyData;
                                                                if (!outPropertyData)
                                                                {
LABEL_288:
                                                                  v154 = OpenSelfConnectedLoopbackSocket();
                                                                  if (!v154)
                                                                  {
                                                                    PIDInit();
                                                                    *(v13 + 2120) = CFDictionaryGetInt64() != 0;
                                                                    v128 = v97[662];
                                                                    if (v128 <= 30 && (v128 != -1 || _LogCategory_Initialize()))
                                                                    {
                                                                      v129 = *(v13 + 32);
                                                                      if (APSAudioFormatDescriptionGetAudioFormatIndex() == 6)
                                                                      {
                                                                        v130 = "PCM/24000/16/1";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 10)
                                                                      {
                                                                        v130 = "PCM/44100/16/1";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 11)
                                                                      {
                                                                        v130 = "PCM/44100/16/2";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 15)
                                                                      {
                                                                        v130 = "PCM/48000/16/2";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 18)
                                                                      {
                                                                        v130 = "ALAC/44100/16/2";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 22)
                                                                      {
                                                                        v130 = "AAC-LC/44100/2";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 24)
                                                                      {
                                                                        v130 = "AAC-ELD/44100/2";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 2)
                                                                      {
                                                                        v130 = "PCM/8000/16/1";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 3)
                                                                      {
                                                                        v130 = "PCM/8000/16/2";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 4)
                                                                      {
                                                                        v130 = "PCM/16000/16/1";
                                                                      }

                                                                      else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 5)
                                                                      {
                                                                        v130 = "PCM/16000/16/2";
                                                                      }

                                                                      else
                                                                      {
                                                                        if (APSAudioFormatDescriptionGetAudioFormatIndex() == 7)
                                                                        {
                                                                          v130 = "PCM/24000/16/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 8)
                                                                        {
                                                                          v130 = "PCM/32000/16/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 9)
                                                                        {
                                                                          v130 = "PCM/32000/16/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 12)
                                                                        {
                                                                          v130 = "PCM/44100/24/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 13)
                                                                        {
                                                                          v130 = "PCM/44100/24/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 14)
                                                                        {
                                                                          v130 = "PCM/48000/16/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 16)
                                                                        {
                                                                          v130 = "PCM/48000/24/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 17)
                                                                        {
                                                                          v130 = "PCM/48000/24/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 45)
                                                                        {
                                                                          v130 = "PCM/48000/32f/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 46)
                                                                        {
                                                                          v130 = "PCM/48000/32f/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 44)
                                                                        {
                                                                          v130 = "PCM/48000/16/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 38)
                                                                        {
                                                                          v130 = "PCM/48000/16/5.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 78)
                                                                        {
                                                                          v130 = "PCM/48000/16/7.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 80)
                                                                        {
                                                                          v130 = "PCM/48000/16/5.1.4";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 82)
                                                                        {
                                                                          v130 = "PCM/48000/16/7.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 84)
                                                                        {
                                                                          v130 = "PCM/48000/16/7.1.4";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 93)
                                                                        {
                                                                          v130 = "PCM/48000/16/9.1.6";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 47)
                                                                        {
                                                                          v130 = "PCM/48000/32f/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 48)
                                                                        {
                                                                          v130 = "PCM/48000/32f/5.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 79)
                                                                        {
                                                                          v130 = "PCM/48000/32f/7.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 81)
                                                                        {
                                                                          v130 = "PCM/48000/32f/5.1.4";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 83)
                                                                        {
                                                                          v130 = "PCM/48000/32f/7.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 69)
                                                                        {
                                                                          v130 = "PCM/48000/32f/7.1.4";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 94)
                                                                        {
                                                                          v130 = "PCM/48000/32f/9.1.6";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 85)
                                                                        {
                                                                          v130 = "ALAC/44100/20/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 19)
                                                                        {
                                                                          v130 = "ALAC/44100/24/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 20)
                                                                        {
                                                                          v130 = "ALAC/48000/16/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 86)
                                                                        {
                                                                          v130 = "ALAC/48000/20/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 21)
                                                                        {
                                                                          v130 = "ALAC/48000/24/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 40)
                                                                        {
                                                                          v130 = "AAC_LC/48000/5.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 39)
                                                                        {
                                                                          v130 = "AAC_LC/48000/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 90)
                                                                        {
                                                                          v130 = "AAC_LC/48000/7.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 23)
                                                                        {
                                                                          v130 = "AAC-LC/48000/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 42)
                                                                        {
                                                                          v130 = "AAC_ELD/48000/5.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 41)
                                                                        {
                                                                          v130 = "AAC_ELD/48000/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 25)
                                                                        {
                                                                          v130 = "AAC-ELD/48000/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 26)
                                                                        {
                                                                          v130 = "AAC-ELD/16000/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 27)
                                                                        {
                                                                          v130 = "AAC-ELD/24000/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 28)
                                                                        {
                                                                          v130 = "OPUS/16000/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 29)
                                                                        {
                                                                          v130 = "OPUS/24000/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 30)
                                                                        {
                                                                          v130 = "OPUS/48000/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 31)
                                                                        {
                                                                          v130 = "AAC-ELD/44100/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 32)
                                                                        {
                                                                          v130 = "AAC-ELD/48000/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 43)
                                                                        {
                                                                          v130 = "AAC-ELD/32000/1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 49)
                                                                        {
                                                                          v130 = "DDPLUS/48000/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 50)
                                                                        {
                                                                          v130 = "DDPLUS/48000/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 51)
                                                                        {
                                                                          v130 = "DDPLUS/48000/5.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 52)
                                                                        {
                                                                          v130 = "DDPLUS/48000/7.1.4";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 53)
                                                                        {
                                                                          v130 = "DDPLUS/48000/9.1.6";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 54)
                                                                        {
                                                                          v130 = "QAAC/48000/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 55)
                                                                        {
                                                                          v130 = "QAAC/48000/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 56)
                                                                        {
                                                                          v130 = "QAAC/48000/5.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 57)
                                                                        {
                                                                          v130 = "QAACHE/48000/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 58)
                                                                        {
                                                                          v130 = "QAACHE/48000/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 60)
                                                                        {
                                                                          v130 = "QAACHE/48000/5.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 89)
                                                                        {
                                                                          v130 = "PAAC/44100/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 61)
                                                                        {
                                                                          v130 = "QLAC/48000/24/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 62)
                                                                        {
                                                                          v130 = "QC3/48000/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 63)
                                                                        {
                                                                          v130 = "QC3/48000/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 33)
                                                                        {
                                                                          v130 = "QC3/48000/5.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 34)
                                                                        {
                                                                          v130 = "QC3/48000/7.1.4";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 35)
                                                                        {
                                                                          v130 = "QC3/48000/9.1.6";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 87)
                                                                        {
                                                                          v130 = "QAC3/48000/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 88)
                                                                        {
                                                                          v130 = "QEC3/48000/7.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 91)
                                                                        {
                                                                          v130 = "EAC3/48000/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 64)
                                                                        {
                                                                          v130 = "APAC/48000/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 65)
                                                                        {
                                                                          v130 = "APAC/48000/5.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 66)
                                                                        {
                                                                          v130 = "APAC/48000/5.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 67)
                                                                        {
                                                                          v130 = "APAC/48000/7.1";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 76)
                                                                        {
                                                                          v130 = "APAC/48000/5.1.4";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 77)
                                                                        {
                                                                          v130 = "APAC/48000/7.1.2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 68)
                                                                        {
                                                                          v130 = "APAC/48000/7.1.4";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 92)
                                                                        {
                                                                          v130 = "APAC/48000/9.1.6";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 70)
                                                                        {
                                                                          v130 = "QAAC/44100/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 71)
                                                                        {
                                                                          v130 = "QAACHE/44100/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 72)
                                                                        {
                                                                          v130 = "QAACHEV2/44100/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 73)
                                                                        {
                                                                          v130 = "QLAC/44100/24/2";
                                                                        }

                                                                        else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 74)
                                                                        {
                                                                          v130 = "MP3/44100/2";
                                                                        }

                                                                        else
                                                                        {
                                                                          v135 = APSAudioFormatDescriptionGetAudioFormatIndex();
                                                                          v130 = "";
                                                                          if (v135 == 75)
                                                                          {
                                                                            v130 = "MP3/48000/2";
                                                                          }
                                                                        }

                                                                        v109 = v142;
                                                                      }

                                                                      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554462, "%@ audio set up for %s on port %d, RTCP on port %d\n", v129, v130, *(v13 + 512), *(v13 + 1604));
                                                                    }

                                                                    *(v13 + 1768) = 8;
                                                                    v136 = malloc_type_calloc(1uLL, 8uLL, 0x457A0FEuLL);
                                                                    *(v13 + 1760) = v136;
                                                                    if (v136)
                                                                    {
                                                                      *(v13 + 2356) = 0;
                                                                      if (v109)
                                                                      {
                                                                        *v109 = v13;
                                                                        v13 = 0;
                                                                      }

                                                                      goto LABEL_558;
                                                                    }

                                                                    goto LABEL_565;
                                                                  }

LABEL_386:
                                                                  APSLogErrorAt();
                                                                  goto LABEL_558;
                                                                }

                                                                APSLogErrorAt();
                                                                v132 = v97[662];
                                                                if (v132 <= 90 && (v132 != -1 || _LogCategory_Initialize()))
                                                                {
                                                                  LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeCreate(APReceiverAudioSessionRef, CFStringRef, sockaddr_ip, sockaddr_ip, uint8_t *, CFDictionaryRef, void **)", 33554522, "%@ Failed to start NW server.", *(v13 + 32), v138, v139, v140);
                                                                }

LABEL_558:
                                                                v133 = cf;
                                                                if (!cf)
                                                                {
                                                                  goto LABEL_560;
                                                                }

                                                                goto LABEL_559;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              LODWORD(outPropertyData) = -12782;
                                                            }

                                                            APSLogErrorAt();
                                                            v109 = v142;
                                                            if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                                            {
                                                              LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_startServer(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554522, "### %@ Failed to start connection!\n", *(v13 + 32), v138);
                                                            }

                                                            goto LABEL_282;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          LODWORD(outPropertyData) = -12782;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      LODWORD(outPropertyData) = -12782;
                                                    }

LABEL_281:
                                                    APSLogErrorAt();
                                                    v109 = v142;
                                                    goto LABEL_282;
                                                  }
                                                }

                                                else
                                                {
                                                  LODWORD(outPropertyData) = -12782;
                                                }

                                                APSLogErrorAt();
                                                v109 = v142;
                                                if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                                {
                                                  LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_startServer(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554522, "### %@ Failed to set kAPTransportConnectionProperty_RemoteNetworkInfo!\n", *(v13 + 32), v138);
                                                }

                                                goto LABEL_282;
                                              }
                                            }

                                            else
                                            {
                                              LODWORD(outPropertyData) = -12782;
                                            }

                                            APSLogErrorAt();
                                            v109 = v142;
                                            if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                            {
                                              LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_startServer(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554522, "### %@ Failed to set kAPTransportConnectionProperty_LocalInterfaceName!\n", *(v13 + 32), v138);
                                            }

                                            goto LABEL_282;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(outPropertyData) = -12782;
                                        }

                                        v109 = v142;
                                        APSLogErrorAt();
                                        if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
                                        {
                                          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_startServer(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554522, "### %@ Failed to set kAPTransportConnectionProperty_RemoteNetworkIPAddress!\n", *(v13 + 32), v138);
                                        }

                                        goto LABEL_282;
                                      }

                                      APSLogErrorAt();
                                      LODWORD(outPropertyData) = -72150;
                                    }

                                    v109 = v142;
                                    goto LABEL_283;
                                  }

LABEL_340:
                                  APSLogErrorAt();
                                  v154 = APSSignalErrorAt();
                                  goto LABEL_558;
                                }
                              }
                            }
                          }

                          APSLogErrorAt();
                          v131 = -72150;
LABEL_566:
                          v154 = v131;
                          goto LABEL_558;
                        }

                        v134 = v90;
                      }

LABEL_385:
                      APSLogErrorAt();
                      v154 = v134;
                      goto LABEL_386;
                    }

                    v72 = *(v13 + 72);
                    if (v72 > 63)
                    {
                      if (v72 > 511)
                      {
                        switch(v72)
                        {
                          case 0x200:
                            v73 = "QAAC-HE";
                            goto LABEL_177;
                          case 0x400:
                            v73 = "QAAC-LC";
                            goto LABEL_177;
                          case 0x800:
                            v73 = "QLAC";
                            goto LABEL_177;
                        }
                      }

                      else
                      {
                        switch(v72)
                        {
                          case 0x40:
                            v73 = "HEVC";
                            goto LABEL_177;
                          case 0x80:
                            v73 = "DDPLUS";
                            goto LABEL_177;
                          case 0x100:
                            v73 = "QC3";
                            goto LABEL_177;
                        }
                      }
                    }

                    else if (v72 > 7)
                    {
                      switch(v72)
                      {
                        case 8:
                          v73 = "AAC-ELD";
                          goto LABEL_177;
                        case 0x10:
                          v73 = "H.264";
                          goto LABEL_177;
                        case 0x20:
                          v73 = "Opus";
                          goto LABEL_177;
                      }
                    }

                    else
                    {
                      switch(v72)
                      {
                        case 1:
                          v73 = "PCM";
                          goto LABEL_177;
                        case 2:
                          v73 = "ALAC";
                          goto LABEL_177;
                        case 4:
                          v73 = "AAC-LC";
LABEL_177:
                          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_audioDecoderInitialize(APReceiverAudioSessionRealTimeStateRef)", 33554482, "%@ audioConverter codecPLC=%d, plcMode=%d, compressionType=%d, framesPerPacket=%u, channels=%u, audioFormat: %s\n", *(v13 + 32), 3, 0, v72, *(v13 + 88), *(v13 + 80), v73);
                          goto LABEL_178;
                      }
                    }

                    v73 = "?";
                    if (v72 == 4096)
                    {
                      v73 = "APAC";
                    }

                    goto LABEL_177;
                  }

LABEL_565:
                  APSLogErrorAt();
                  v131 = -6728;
                  goto LABEL_566;
                }

                v154 = 0;
                goto LABEL_110;
              }

              goto LABEL_369;
            }

            goto LABEL_368;
          }
        }
      }
    }

LABEL_367:
    APSLogErrorAt();
    goto LABEL_561;
  }

LABEL_368:
  APSLogErrorAt();
LABEL_36:
  v25 = -72151;
LABEL_37:
  v154 = v25;
LABEL_561:
  free(v13);
LABEL_562:
  if (v24)
  {
    CFRelease(v24);
  }

  return v154;
}

uint64_t audioSession_updateCallDurationMetric(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 9368);
  if (!a2)
  {
    if (!v3)
    {
      return result;
    }

LABEL_7:
    mach_absolute_time();
    result = UpTicksToSeconds();
    v4 = v2[1170] + result;
    v2[1170] = v4;
    v2[1171] = 0;
    if (gLogCategory_APReceiverAudioSessionRealTime > 50)
    {
      return result;
    }

    if (gLogCategory_APReceiverAudioSessionRealTime == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v4 = v2[1170];
    }

    return LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_updateCallDurationMetric(APReceiverAudioSessionRealTimeStateRef, Boolean)", 33554482, "%@ End of voice call. Total call duration is %u secs.\n", v2[4], v4);
  }

  if (v3)
  {
    goto LABEL_7;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_updateCallDurationMetric(APReceiverAudioSessionRealTimeStateRef, Boolean)", 33554482, "%@ Start of voice call for duration calculation. \n", v2[4]);
  }

  result = mach_absolute_time();
  v2[1171] = result;
  return result;
}

uint64_t audioSession_eventCallback(int a1, uint64_t a2, void *a3)
{
  if (a1 == 7)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      if (APSRTPPassThroughJitterBufferAcquireRelinquishedNode())
      {
        APSLogErrorAt();
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_handlePackageReceived(APReceiverAudioSessionRealTimeStateRef, APTransportPackageRef)", 33554482, "%@ Failed to get node from free list!", a3[4]);
        }

        goto LABEL_13;
      }

      v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v7)
      {
        v8 = v7(a2);
        if (v8)
        {
          v9 = v8;
          DataLength = CMBlockBufferGetDataLength(v8);
          CMBlockBufferCopyDataBytes(v9, 0, DataLength, MEMORY[0x18]);
          MEMORY[0x30] = mach_absolute_time();
          if (!audioSession_processPacket(a3, 0, DataLength, 0))
          {
LABEL_18:
            CFRelease(v9);
LABEL_19:
            if (v5)
            {
              goto LABEL_20;
            }

            return 0;
          }

LABEL_17:
          if (!v9)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }
    }

    APSLogErrorAt();
    APSSignalErrorAt();
LABEL_13:
    v9 = 0;
    goto LABEL_17;
  }

  if (a1 == 6)
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_handleConnectionDisconnected(APReceiverAudioSessionRealTimeStateRef)", 33554482, "audioSession_handleConnectionDisconnected!");
    }

    if (v5)
    {
      AirPlayReceiverSessionControl(v5, v4, @"sessionDied", 0, 0, 0);
LABEL_20:
      CFRelease(v5);
    }
  }

  return 0;
}

uint64_t audioSession_processPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kdebug_trace();
  v5 = APSRTPPacketProcessorProcessPacket();
  v6 = v5;
  if (v5)
  {
    if (v5 != -6757)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    atomic_fetch_add((a1 + 1992), 1u);
    atomic_fetch_add((a1 + 1996), 0);
    if (gLogCategory_APReceiverAudioSessionRealTime <= 10 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_processPacket(APReceiverAudioSessionRealTimeStateRef, APSRTPPassThroughJitterBufferNode *, size_t, Boolean)", 33554442, "%@ RTP Packet enqueued with redundancy %u\n", *(a1 + 32), 0);
    }

    kdebug_trace();
  }

  return v6;
}

uint64_t audioSession_enqueueNodeCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = atomic_load((*a3 + 1808));
  mach_absolute_time();
  _X26 = 0;
  _X27 = 0;
  __asm { CASPAL          X26, X27, X26, X27, [X9] }

  if ((v4 & 0xFF000000000000) != 0 && *(a2 + 32) - v4 < 1)
  {
    return 4294960539;
  }

  else
  {
    return APSRTPPassThroughJitterBufferInsertNode();
  }
}

void audioSession_receiverLogger(uint64_t a1, double a2)
{
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_receiverLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "### %@ [Possible glitch] Difference of [%ld ms] detected between packet seq numbers [%u] and [%u]. (log latency: %1.3f ms)\n", *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *&a2);
  }

  v4 = *a1;
  if (*a1)
  {

    CFRelease(v4);
  }
}

void audioSession_endToEndLogger(uint64_t a1, double a2)
{
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_endToEndLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "### %@ [Possible glitch] Transit time threshold crossed. Transit time for RTPSeqNum[%u] with RTPTime[%u]: [%ld ms]. (log latency: %1.3f ms)\n", *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *&a2);
  }

  v4 = *a1;
  if (*a1)
  {

    CFRelease(v4);
  }
}

uint64_t audioSession_shouldProcessPacketCallback(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, _BYTE *a5)
{
  v7 = *a4;
  v8 = *(a1 + 24);
  audioSession_sessionLock(*(*a4 + 2360));
  audioSession_processEnqueuedRetransmitCommands(v7);
  v9 = *(v8 + 2);
  if (*(v7 + 572))
  {
    v10 = *(v7 + 574);
    v11 = (v9 - v10);
    if (v11 <= 0 && (v9 == v10 || v11 < -511) || *(v7 + 576 + 2 * (v9 & 0x1FF)) == v9)
    {
      if (!*(v7 + 568) && gLogCategory_APReceiverAudioSessionRealTimeStats <= 40 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTimeStats, "Boolean audioSession_trackDups(APReceiverAudioSessionRealTimeStateRef, uint16_t)", 33554472, "### %@ Duplicate packet seq %u\n", *(v7 + 32), v9);
      }

      *a5 = 0;
      goto LABEL_59;
    }

    *(v7 + 576 + 2 * (v9 & 0x1FF)) = v9;
  }

  else
  {
    v12 = 0;
    v13 = vdupq_n_s16(v9);
    do
    {
      *(v7 + 576 + v12) = v13;
      v12 += 16;
    }

    while (v12 != 1024);
    *(v7 + 572) = 1;
  }

  *(v7 + 574) = v9;
  if (!a2)
  {
    v14 = *(v8 + 2);
    if (!*(v7 + 1912))
    {
      goto LABEL_52;
    }

    v15 = *(v7 + 1800);
    v16 = v15 + 1;
    if (v14 == (v15 + 1))
    {
      goto LABEL_52;
    }

    v17 = (v15 + 1);
    v18 = v14 - v16;
    if ((v14 - v16) >= 1)
    {
      v19 = (v14 - v16);
      v20 = qword_27E37EED8 + v18;
      LODWORD(qword_27E37EED8) = qword_27E37EED8 + v18;
      v21 = *(v7 + 2416);
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 60), v19, memory_order_relaxed);
      }

      if (*(v7 + 2348) < v19)
      {
        *(v7 + 2348) = v19;
      }

      if (*(v7 + 2344) < v19)
      {
        if (gLogCategory_APReceiverAudioSessionRealTime <= 30)
        {
          if (gLogCategory_APReceiverAudioSessionRealTime == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_37;
            }

            v20 = qword_27E37EED8;
          }

          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_trackLosses(APReceiverAudioSessionRealTimeStateRef, const APSRTPPacket *)", 33554462, "### %@ Burst packet loss %u-%u (+%u, %u total)\n", *(v7 + 32), v17, v14, v18, v20);
        }

LABEL_37:
        ++*(v7 + 2352);
        audioSession_retransmitsAbortAll(v7, "BURST");
LABEL_52:
        *(v7 + 1800) = v14;
        *(v7 + 1804) = *(v8 + 4);
        goto LABEL_53;
      }

      if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 30)
      {
        if (gLogCategory_APReceiverAudioSessionRealTimeStats != -1)
        {
LABEL_35:
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTimeStats, "void audioSession_trackLosses(APReceiverAudioSessionRealTimeStateRef, const APSRTPPacket *)", 33554462, "### %@ Lost packets %u-%u (+%u, %u total)\n", *(v7 + 32), v17, v14, v18, v20);
          goto LABEL_39;
        }

        if (_LogCategory_Initialize())
        {
          v20 = qword_27E37EED8;
          goto LABEL_35;
        }
      }

LABEL_39:
      if (!*(v7 + 2240))
      {
        v22 = (v7 + 2232);
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
        mach_absolute_time();
        v24 = UpTicksToNanoseconds();
        v25 = 0;
        while (1)
        {
          v26 = *(v7 + 2224);
          if (!v26)
          {
            break;
          }

          *(v7 + 2224) = *v26;
          *v26 = 0;
          *(v26 + 8) = v25 + v17;
          *(v26 + 10) = 0;
          *(v26 + 16) = v24;
          *(v26 + 32) = v24;
          *v23 = v26;
          ++v25;
          v23 = v26;
          if (v25 >= v18)
          {
            goto LABEL_52;
          }
        }

        if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 60 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTimeStats, "void audioSession_retransmitsSchedule(APReceiverAudioSessionRealTimeStateRef, uint16_t, uint16_t)", 33554492, "### %@ No free retransmit nodes, dropping retransmit of seq %u#%u, %u\n", *(v7 + 32), v17, v19, v25);
        }
      }

      goto LABEL_52;
    }

    if (v14 == v15 || *(v7 + 568) || gLogCategory_APReceiverAudioSessionRealTime > 30)
    {
      goto LABEL_53;
    }

    if (gLogCategory_APReceiverAudioSessionRealTime == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_53;
      }

      v15 = *(v7 + 1800);
    }

    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_trackLosses(APReceiverAudioSessionRealTimeStateRef, const APSRTPPacket *)", 33554462, "### %@ Misordered packet seq %u -> %u\n", *(v7 + 32), v15, v14);
  }

LABEL_53:
  if (!*(v7 + 2240))
  {
    v30 = *(v8 + 2);
    mach_absolute_time();
    v31 = UpTicksToNanoseconds();
    v32 = v31;
    v33 = (v7 + 2232);
    v34 = v7 + 2232;
    while (1)
    {
      v35 = v34;
      v34 = *v34;
      if (!v34)
      {
        break;
      }

      if (*(v34 + 8) == v30)
      {
        if (!a2)
        {
          goto LABEL_95;
        }

        v36 = v31 - *(v34 + 16);
        v37 = *(v7 + 2304);
        if (v36 < v37)
        {
          *(v7 + 2304) = v36;
          v37 = v36;
        }

        v38 = *(v7 + 2312);
        if (v36 <= v38)
        {
          if (v36 > v37 && v36 < v38)
          {
            *(v7 + 2320) = (v36 - *(v7 + 2320) + (*(v7 + 2320) << 6)) >> 6;
          }
        }

        else
        {
          *(v7 + 2312) = v36;
        }

        if (*(v34 + 10) > 1u)
        {
          goto LABEL_95;
        }

        v40 = v31 - *(v34 + 24);
        if (v40 >= *(v7 + 2248))
        {
          if (v40 <= *(v7 + 2256))
          {
            v41 = *(v7 + 2264);
            v42 = __OFSUB__(v40, v41);
            v43 = v40 - v41;
            if (v43 >= 0)
            {
              v44 = v43;
            }

            else
            {
              v44 = -v43;
            }

            if (v43 < 0 != v42)
            {
              v43 += 7;
            }

            v45 = v41 + (v43 >> 3);
            *(v7 + 2264) = v45;
            v46 = *(v7 + 2272);
            v47 = v44 < v46;
            v48 = v44 - v46;
            if (v47)
            {
              v48 += 3;
            }

            v49 = v46 + (v48 >> 2);
            *(v7 + 2272) = v49;
            v50 = 4 * v49 + 2 * v45;
            if (v50 >= 100000000)
            {
              v50 = 100000000;
            }

            *(v7 + 2280) = v50;
            goto LABEL_95;
          }
        }

        else
        {
          *(v7 + 2248) = v40;
          if (v40 <= *(v7 + 2256))
          {
            goto LABEL_95;
          }
        }

        *(v7 + 2256) = v40;
LABEL_95:
        *v35 = *v34;
        *v34 = *(v7 + 2224);
        *(v7 + 2224) = v34;
        goto LABEL_96;
      }
    }

    if (a2)
    {
      if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 40 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTimeStats, "void audioSession_retransmitsUpdate(APReceiverAudioSessionRealTimeStateRef, uint16_t, Boolean)", 33554472, "### %@ Retransmit seq %u not found\n", *(v7 + 32), v30);
      }

      ++*(v7 + 2300);
    }

LABEL_96:
    v51 = *v33;
    if (*v33)
    {
      v52 = 3;
      do
      {
        if (v32 >= v51[4])
        {
          v53 = v51[2];
          v54 = *(v51 + 5);
          *(v51 + 5) = v54 + 1;
          if (v54)
          {
            v55 = v32 - v53;
            if (v55 < *(v7 + 2328))
            {
              *(v7 + 2328) = v55;
            }

            if (v55 > *(v7 + 2336))
            {
              *(v7 + 2336) = v55;
            }
          }

          v56 = *(v7 + 2280) + v32;
          v51[3] = v32;
          v51[4] = v56;
          LODWORD(v56) = *(v51 + 4);
          v62 = 0;
          v59 = 16831872;
          v60 = bswap32(v56) >> 16;
          v61 = 256;
          v57 = *(v7 + 1600);
          v58 = *(v7 + 1644) ? send(v57, &v59, 8uLL, 0) : sendto(v57, &v59, 8uLL, 0, (v7 + 1612), *(v7 + 1640));
          if (v58 == 8 || *__error() && !*__error())
          {
            ++*(v7 + 2288);
          }

          else
          {
            APSLogErrorAt();
          }

          if (!--v52)
          {
            break;
          }
        }

        v51 = *v51;
      }

      while (v51);
    }
  }

  if (!a2)
  {
    v27 = *(v7 + 1912);
    if ((v27 + 1) > 1)
    {
      v28 = v27 + 1;
    }

    else
    {
      v28 = 1;
    }

    *(v7 + 1912) = v28;
  }

LABEL_59:
  audioSession_sessionUnlock(*(v7 + 2360));
  return 0;
}

uint64_t audioSession_sessionLock(uint64_t result)
{
  if (!result || (v2 = FigSimpleMutexLock(), v1 = vars8, v2))
  {

    return APSLogErrorAt();
  }

  return v2;
}

uint64_t audioSession_processEnqueuedRetransmitCommands(uint64_t a1)
{
  result = *(a1 + 2208);
  if (result)
  {
    while (1)
    {
      result = APSAtomicMessageQueueReadMessage();
      if (!result)
      {
        break;
      }

      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_processEnqueuedRetransmitCommands(APReceiverAudioSessionRealTimeStateRef)", 33554482, "Unknown Retransmit Command Type");
      }
    }
  }

  return result;
}

uint64_t audioSession_retransmitsAbortAll(void *a1, uint64_t a2)
{
  v3 = a1[279];
  if (v3)
  {
    if (gLogCategory_APReceiverAudioSessionRealTimeStats > 40)
    {
      goto LABEL_7;
    }

    if (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTimeStats, "void audioSession_retransmitsAbortAll(APReceiverAudioSessionRealTimeStateRef, const char *)", 33554472, "### %@ Aborting all retransmits (%s)\n", a1[4], a2);
    }

    v3 = a1[279];
    if (v3)
    {
LABEL_7:
      v5 = a1[278];
      do
      {
        v6 = v3;
        v3 = *v3;
        *v6 = v5;
        v5 = v6;
      }

      while (v3);
      a1[279] = 0;
      a1[278] = v6;
    }
  }

  return audioSession_processEnqueuedRetransmitCommands(a1);
}

uint64_t audioSession_sessionUnlock(uint64_t result)
{
  if (!result || (v2 = FigSimpleMutexUnlock(), v1 = vars8, v2))
  {

    return APSLogErrorAt();
  }

  return v2;
}

uint64_t audioSession_handleMediaDataControlRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *cf, uint64_t a6)
{
  v32 = 0;
  v11 = *(a6 + 40);
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "%@ Media Data Control Request: %C\n", *(v11 + 4), a3);
  }

  if (a3 > 1752458867)
  {
    switch(a3)
    {
      case 0x68746674:
        Int64 = CFDictionaryGetInt64();
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          v20 = "false";
          if (Int64)
          {
            v20 = "true";
          }

          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "%@ Voice metric updated. value:%s \n", *(v11 + 4), v20);
        }

        audioSession_updateCallDurationMetric(v11, Int64 != 0);
        return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v32);
      case 0x736D6673:
        CFBooleanGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          v27 = *(v11 + 4);
          Value = CFBooleanGetValue(TypedValue);
          v29 = 116;
          if (!Value)
          {
            v29 = 102;
          }

          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "%@ SetMuteForStream. %c\n", v27, v29);
        }

        v32 = APReceiverAudioSessionPlatformSetProperty(*v11, v24, @"RASP::MuteStream", v25, TypedValue);
        if (v32)
        {
          goto LABEL_50;
        }

        return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v32);
      case 0x74726363:
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "%@  MediaDataControl Triggering Core Capture. \n", *(v11 + 4));
        }

        audioSession_triggerCoreCapture(v11, cf);
        return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v32);
    }

LABEL_26:
    v21 = -6714;
LABEL_27:
    v32 = v21;
    return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v32);
  }

  if (a3 == 1634562925)
  {
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    v32 = APReceiverAudioSessionPlatformSetProperty(*v11, v17, @"RASP::AudioMode", v18, v16);
    if (v32)
    {
      goto LABEL_50;
    }

    return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v32);
  }

  if (a3 == 1701733219)
  {
    if (cf)
    {
      v22 = CFDictionaryGetInt64();
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        v23 = "Disabling";
        if (v22)
        {
          v23 = "Enabling";
        }

        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554482, "%@ %s Core Capture triggering on this receiver (for next glitch). \n", *(v11 + 4), v23);
      }

      atomic_store(v22 != 0, v11 + 9352);
    }

    return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v32);
  }

  if (a3 != 1718383464)
  {
    goto LABEL_26;
  }

  if (!cf || (v12 = CFGetTypeID(cf), v12 != CFDictionaryGetTypeID()))
  {
    APSLogErrorAt();
    v21 = -6756;
    goto LABEL_27;
  }

  CFDictionaryGetInt64Ranged();
  Int64Ranged = CFDictionaryGetInt64Ranged();
  APSAudioTransportTimeMakeWithRTPTime();
  v32 = APReceiverAudioSessionRealTimeFlushAudio(v11, 0, v14, v15, v31, Int64Ranged, 0);
  if (v32)
  {
LABEL_50:
    APSLogErrorAt();
  }

  return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v32);
}

uint64_t APReceiverAudioSessionRealTimeFlushAudio(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, _OWORD *a7)
{
  if (*a5 != 1)
  {
    APSLogErrorAt();
    return 4294895145;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
  {
    v11 = a5[1];
    if (gLogCategory_APReceiverAudioSessionRealTime == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v11 = a5[1];
    }

    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeFlushAudio(void *, Boolean, APSAudioTransportTime, uint32_t, APSAudioTransportTime, uint32_t, APSAudioTransportTime *)", 33554482, "%@ Flushing until ts %u seq %u\n", a1[4], v11, a6);
  }

LABEL_6:
  audioSession_sessionLock(a1[295]);
  APReceiverAudioSessionPlatformControl(*a1, @"RASP::FlushAudio");
  a1[224] = mach_absolute_time();
  atomic_load(a1 + 226);
  atomic_store(0, a1 + 226);
  while (!APSAtomicMessageQueueSendMessage())
  {
    usleep(1u);
  }

  if (*(a1 + 142))
  {
    v12 = 1;
  }

  else
  {
    v12 = FigGetCFPreferenceNumberWithDefault() != 0;
  }

  *(a1 + 2240) = v12;
  *(a1 + 478) = 0;
  v13 = APSRTPPassThroughJitterBufferFlush();
  if (v13)
  {
    v15 = v13;
    APSLogErrorAt();
    goto LABEL_18;
  }

  audioSession_retransmitsAbortAll(a1, "flush");
  v14 = a1[230];
  if (v14)
  {
    v15 = AudioConverterReset(v14);
    if (!a7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = 0;
  if (a7)
  {
LABEL_17:
    APSAudioTransportTimeMakeWithRTPTime();
    *a7 = *v17;
    *(a7 + 12) = *&v17[12];
  }

LABEL_18:
  audioSession_sessionUnlock(a1[295]);
  return v15;
}

void audioSession_triggerCoreCapture(void *a1, const __CFDictionary *a2)
{
  v4 = a1 + 1024;
  v12 = 0;
  v5 = a1[1168];
  cf = 0;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!APSSettingsGetIntWithDefault())
  {
    v4[832] = 0;
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_triggerCoreCapture(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554482, "%@ Not triggering NAN issue report (internal=%d) \n", a1[4], 1);
    }

    goto LABEL_18;
  }

  if (v4[1060])
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v9 = CFDictionaryGetInt64Ranged();
  }

  else
  {
    Int64Ranged = 0;
    v9 = 0;
  }

  v4[832] = 1;
  if (v6)
  {
    v10 = a1[1122] + 1;
    a1[1122] = v10;
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v10 = a1[1122];
      }

      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_triggerCoreCapture(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554482, "%@ Triggering CoreCapture. apCCTriggerCount: %llu. (log latency: %1.3f ms) \n", a1[4], v10, v5);
    }

LABEL_13:
    AirPlayReceiverSessionControl(v6, v7, @"reportIssue", 0, a2, 0);
  }

  if (!v4[1060])
  {
LABEL_17:
    atomic_store(0, v4 + 1160);
    goto LABEL_18;
  }

  v12 = CFAppendPrintF(&cf, "AirPlay %@ SeqNum[%u] RTPStartTime[%u] glitched", a1[4], Int64Ranged, v9);
  if (!v12)
  {
    APSW5LogCollect();
    goto LABEL_17;
  }

  APSLogErrorAt();
  if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_triggerCoreCapture(APReceiverAudioSessionRealTimeStateRef, CFDictionaryRef)", 33554522, "%@ Unable to create reason string with err=%#m\n", a1[4], v12);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void APReceiverAudioSessionRealTimeFinalize(uint64_t a1)
{
  if (*(a1 + 9072))
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void APReceiverAudioSessionRealTimeFinalize(void *)", 33554522, "### %@ Packet processor is started in finalize, forcing crash\n", *(a1 + 32));
    }

    CFRelease(0);
  }

  if (*(a1 + 64))
  {
    SendSelfConnectedLoopbackMessage();
    pthread_join(*(a1 + 56), 0);
    *(a1 + 64) = 0;
  }

  v2 = *(a1 + 48);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) && *__error())
    {
      __error();
    }

    *(a1 + 48) = -1;
  }

  if (*(a1 + 104))
  {
    nw_activity_complete_with_reason();
    nw_release(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  if (*(a1 + 96))
  {
    v3 = *(a1 + 112);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 112) = 0;
    }

    if (*(a1 + 120))
    {
      CMBaseObject = APTransportConnectionGetCMBaseObject();
      if (CMBaseObject)
      {
        v5 = CMBaseObject;
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v6)
        {
          v6(v5);
        }
      }

      v7 = *(a1 + 120);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 120) = 0;
      }
    }
  }

  else
  {
    v8 = *(a1 + 52);
    if ((v8 & 0x80000000) == 0)
    {
      if (close(v8) && *__error())
      {
        __error();
      }

      *(a1 + 52) = -1;
    }

    APTTrafficMetricsConnectionClosed();
  }

  v9 = *(a1 + 2424);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 2424) = 0;
  }

  if (*(a1 + 2360))
  {
    FigSimpleMutexDestroy();
    *(a1 + 2360) = 0;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 8) = 0;
  }

  v11 = *(a1 + 128);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 128) = 0;
  }

  v12 = *(a1 + 2072);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 2072) = 0;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 40) = 0;
  }

  v14 = *(a1 + 2376);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 2376) = 0;
  }

  v15 = *(a1 + 2416);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 2416) = 0;
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 16) = 0;
  }

  audioSession_logHistograms(a1);
  v17 = *(a1 + 2448);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 2448) = 0;
  }

  v18 = *(a1 + 2440);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 2440) = 0;
  }

  *(a1 + 512) = 0;
  v19 = *(a1 + 1600);
  if ((v19 & 0x80000000) == 0)
  {
    if (close(v19) && *__error())
    {
      __error();
    }

    *(a1 + 1600) = -1;
  }

  APTTrafficMetricsConnectionClosed();
  v20 = *(a1 + 2432);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 2432) = 0;
  }

  v21 = *(a1 + 520);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 520) = 0;
  }

  v22 = *(a1 + 2208);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 2208) = 0;
  }

  v23 = *(a1 + 9136);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 9136) = 0;
  }

  v24 = *(a1 + 2216);
  if (v24)
  {
    free(v24);
    *(a1 + 2216) = 0;
  }

  v25 = *(a1 + 1680);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 1680) = 0;
  }

  v26 = *(a1 + 1696);
  if (v26)
  {
    free(v26);
    *(a1 + 1696) = 0;
  }

  v27 = *(a1 + 1712);
  if (v27)
  {
    free(v27);
    *(a1 + 1712) = 0;
  }

  v28 = *(a1 + 1728);
  if (v28)
  {
    free(v28);
    *(a1 + 1728) = 0;
  }

  v29 = *(a1 + 1744);
  if (v29)
  {
    free(v29);
    *(a1 + 1744) = 0;
  }

  v30 = *(a1 + 1840);
  if (v30)
  {
    AudioConverterDispose(v30);
    *(a1 + 1840) = 0;
  }

  *(a1 + 1912) = 0;
  v31 = *(a1 + 2368);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 2368) = 0;
  }

  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void APReceiverAudioSessionRealTimeFinalize(void *)", 33554482, "%@ Audio session torn down\n", *(a1 + 32));
    }
  }

  AES_CBCFrame_Final();
  v32 = *(a1 + 472);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 472) = 0;
  }

  v33 = *(a1 + 9288);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(a1 + 9296);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(a1 + 9032);
  if (v35)
  {
    dispatch_release(v35);
    *(a1 + 9032) = 0;
  }

  v36 = *(a1 + 9152);
  if (v36)
  {
    dispatch_release(v36);
    *(a1 + 9152) = 0;
  }

  v37 = *(a1 + 1760);
  if (v37)
  {
    free(v37);
  }

  v38 = *(a1 + 9080);
  if (v38)
  {
    free(v38);
  }

  v39 = *(a1 + 9104);
  if (v39)
  {
    free(v39);
  }

  v40 = *(a1 + 136);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 136) = 0;
  }

  v41 = *(a1 + 144);
  if (v41)
  {
    CFRelease(v41);
    *(a1 + 144) = 0;
  }

  v42 = *(a1 + 9400);
  if (v42)
  {
    CFRelease(v42);
    *(a1 + 9400) = 0;
  }

  v43 = *(a1 + 8952);
  if (v43)
  {
    CFRelease(v43);
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void APReceiverAudioSessionRealTimeFinalize(void *)", 33554482, "%@ APReceiverAudioSessionRealTime finalized\n", *(a1 + 32));
  }

  v44 = *(a1 + 32);
  if (v44)
  {
    CFRelease(v44);
  }

  free(a1);
}

uint64_t audioSession_logHistograms(uint64_t a1)
{
  audioSession_flushHistogramMessageQueue(a1);
  result = *(a1 + 2440);
  if (result)
  {

    return CFDictionaryApplyBlock();
  }

  return result;
}

uint64_t audioSession_flushHistogramMessageQueue(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 2448);
    if (result)
    {
      while (1)
      {
        result = APSAtomicMessageQueueReadMessage();
        if (!result)
        {
          break;
        }

        if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_flushHistogramMessageQueue(APReceiverAudioSessionRealTimeStateRef)", 33554522, "### %@ Unknown HistogramMessageType %C", *(a1 + 32), 0);
        }
      }
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

void __audioSession_logHistograms_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_logHistograms(APReceiverAudioSessionRealTimeStateRef)_block_invoke", 33554482, "[%@]\n%@\n", a2, a3);
  }
}

const __CFDictionary *audioSession_addHistogramValue(const __CFDictionary *result, const void *a2, double a3)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v4.n128_f64[0] = a3;

      return MEMORY[0x28213CA70](v4);
    }
  }

  return result;
}

uint64_t APReceiverAudioSessionRealTimeInvalidate(uint64_t a1)
{
  result = *(a1 + 120);
  if (result)
  {
    result = APTransportConnectionGetCMBaseObject();
    if (result)
    {
      v3 = result;
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 8);
      result = VTable + 8;
      v6 = *(v5 + 24);
      if (v6)
      {
        result = v6(v3);
      }
    }
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime != -1)
    {
      return LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void APReceiverAudioSessionRealTimeInvalidate(void *)", 33554482, "%@ APReceiverAudioSessionRealTime invalidated\n", *(a1 + 32));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void APReceiverAudioSessionRealTimeInvalidate(void *)", 33554482, "%@ APReceiverAudioSessionRealTime invalidated\n", *(a1 + 32));
    }
  }

  return result;
}

uint64_t APReceiverAudioSessionRealTimeReadAudio(uint64_t a1, unsigned int a2, uint64_t a3, char *a4, unint64_t a5)
{
  _X24 = a3;
  kdebug_trace();
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  __dst = a4;
  if (*(a1 + 2080))
  {
    v10 = *(a1 + 1824);
    do
    {
      _X3 = *(a1 + 1832);
      __asm { CASPAL          X2, X3, X24, X25, [X8] }

      _ZF = _X2 == v10;
      v10 = _X2;
    }

    while (!_ZF);
  }

  v150 = 0;
  v15 = *(a1 + 120);
  if (v15)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v16)
    {
      v16(v15);
    }
  }

  if (*(a1 + 128) && (APSRTPPassThroughJitterBufferAcquireRelinquishedNode() || APSRealTimeReadableRingBufferRead()))
  {
    APSLogErrorAt();
  }

  v143 = a5;
  v17 = a1 + 8913;
  v136 = (a1 + 2084);
  v147 = (a1 + 2092);
  v138 = (a1 + 1884);
  v150 = 0;
  v151 = 0;
  v18 = &unk_27E37D000;
  v152 = 0;
  v142 = a2;
  while (APSAtomicMessageQueueReadMessage())
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_handleTimeAnnounceIfNeeded(APReceiverAudioSessionRealTimeStateRef, uint32_t, uint64_t)", 33554522, "### %@ Unknown TimeAnnounceMessageType %d\n", *(a1 + 32), 0);
    }
  }

  v19 = mach_absolute_time();
  v148 = *(a1 + 84);
  v153 = 0;
  v150 = 0;
  v151 = 0;
  do
  {
    v20 = *(a1 + 8872);
    v21 = *(a1 + 8872);
    atomic_compare_exchange_strong((a1 + 8872), &v21, v20 | 1);
  }

  while (v21 != v20);
  v22 = a1 + 3208 * ((v20 >> 1) & 1);
  v140 = v22 + 2456;
  v141 = *(v22 + 5656) % 0xC8u;
  v149 = a2 - *(a1 + 464);
  v23 = v149 + (a5 / v148);
  if (!*(a1 + 2080))
  {
    if ((a5 / v148 - 1) < 0)
    {
      goto LABEL_230;
    }

    v137 = v19;
    LOWORD(v24) = 0;
    v139 = 0;
    v106 = 1;
    v109 = v149;
LABEL_204:
    v111 = (v23 - v109);
    if (*v17)
    {
      v112 = *(a1 + 2084) + *(a1 + 1776);
      v113 = v109;
      v114 = v109 - *(a1 + 8924) - v112;
      v115 = v114 >= 0 ? v109 - *(a1 + 8924) - v112 : v112 - (v109 - *(a1 + 8924));
      v116 = *(a1 + 8928);
      if (v116 || (v116 = *(a1 + 88)) != 0)
      {
        v117 = v115 / v116;
      }

      else
      {
        v117 = 0;
      }

      if (v114 >= 0)
      {
        LOWORD(v119) = v117;
      }

      else
      {
        v119 = -v117;
      }

      v118 = *(v17 + 7);
      LOWORD(v24) = v118 + v119;
      if (*(v17 + 159) == 1)
      {
        if (!*(v17 + 340))
        {
          *(v17 + 340) = 1;
          audioSession_triggerAsyncGlitchLog(a1, "[Glitch Underrun Start]", (v118 + v119), (v113 - v112));
          v112 = *(a1 + 2084) + *(a1 + 1776);
        }

        v120 = v140 + 16 * v141;
        *v120 = v137;
        *(v120 + 8) = v113 - v112;
        *(v120 + 12) = v111;
        ++v141;
        kdebug_trace();
      }
    }

    audioSession_plc(a1, __dst, (v111 * v148), __dst);
    v121 = v18[662];
    if (v121 <= 10 && (v121 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_render(APReceiverAudioSessionRealTimeStateRef, uint32_t, void *, size_t)", 33554442, "%@ Concealed %d units at end (ts=%u)\n", *(a1 + 32), v111, v23);
    }

    if (v106)
    {
      a2 = v142;
      goto LABEL_230;
    }

    v110 = v139 + 1;
    audioSession_enqueueRetransmitCommand(a1, v24, 3);
    a2 = v142;
    goto LABEL_226;
  }

  v137 = v19;
  LOWORD(v24) = 0;
  v139 = 0;
  v145 = (v23 + 441000);
  v146 = v149 + (a5 / v148);
  v135 = &__dst[a5];
  v25 = *(a1 + 1688);
  v153 = v25;
  v26 = v25 == 0;
  v27 = 1;
  do
  {
    while (1)
    {
LABEL_24:
      if (v26)
      {
        APSRTPPassThroughJitterBufferAcquireLowestInsertedNode();
        v25 = v153;
        if (!v153)
        {
          v35 = 0;
LABEL_200:
          v106 = v27;
          goto LABEL_201;
        }
      }

      *(v17 + 179) = 0;
      v28 = *(v25 + 32);
      v29 = *v147;
      if (!*v147)
      {
        goto LABEL_34;
      }

      v30 = *(a1 + 2096);
      if (v28 - v30 < 0)
      {
        v29 = 1;
        goto LABEL_34;
      }

      v31 = v18[662];
      if (v31 <= 30)
      {
        if (v31 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_33;
          }

          v30 = *(a1 + 2096);
        }

        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_render(APReceiverAudioSessionRealTimeStateRef, uint32_t, void *, size_t)", 33554462, "%@ Applying RTP offset %u (was=%u, ts=%u, apply=%u)\n", *(a1 + 32), *(a1 + 2088), *(a1 + 2084), v28, v30);
      }

LABEL_33:
      v29 = 0;
      *(a1 + 2084) = *(a1 + 2088);
      *(a1 + 2092) = 0;
      *(a1 + 1884) = 1;
LABEL_34:
      v32 = (*(a1 + 2084) + v28 + *(a1 + 1776));
      if (v29 && v32 - v145 >= 1)
      {
        v33 = v18[662];
        if (v33 <= 30 && (v33 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_render(APReceiverAudioSessionRealTimeStateRef, uint32_t, void *, size_t)", 33554462, "%@ Force apply RTP offset (srcTS=%u maxTS=%u)\n", *(a1 + 32), v32, v145);
        }

        v34 = *(a1 + 2088);
        *(a1 + 2084) = v34;
        *(a1 + 2092) = 0;
        *(a1 + 1884) = 1;
        v32 = (v34 + v28 + *(a1 + 1776));
      }

      v35 = v153;
      if (v32 - v23 >= 0)
      {
        goto LABEL_200;
      }

      v24 = *(*v153 + 2);
      v36 = atomic_load((a1 + 1808));
      if ((v36 & 0xFF000000000000) != 0 && (v24 - WORD2(v36)) >= 2)
      {
        v37 = (v24 - WORD2(v36) - 1);
        v38 = HIDWORD(qword_27E37EED8) + (v24 - WORD2(v36) - 1);
        HIDWORD(qword_27E37EED8) += (v24 - WORD2(v36) - 1);
        v39 = *(a1 + 2416);
        if (v39)
        {
          atomic_fetch_add_explicit((v39 + 64), v37, memory_order_relaxed);
        }

        if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 30)
        {
          if (gLogCategory_APReceiverAudioSessionRealTimeStats != -1)
          {
            goto LABEL_48;
          }

          if (_LogCategory_Initialize())
          {
            v38 = HIDWORD(qword_27E37EED8);
LABEL_48:
            LogPrintF(&gLogCategory_APReceiverAudioSessionRealTimeStats, "void audioSession_render(APReceiverAudioSessionRealTimeStateRef, uint32_t, void *, size_t)", 33554462, "### %@ Unrecovered packets: %u-%u (%u) %u total\n", *(a1 + 32), WORD2(v36) + 1, v24, v37, v38);
          }
        }
      }

      atomic_store(v36 & 0xFF00000000000000 | (v24 << 32) | v28 | 0x1000000000000, (a1 + 1808));
      v40 = v153;
      if (*v17)
      {
        v41 = *(v153 + 32) - *(a1 + 8924);
        if (v41 >= 0)
        {
          v42 = *(v153 + 32) - *(a1 + 8924);
        }

        else
        {
          v42 = *(a1 + 8924) - *(v153 + 32);
        }

        v43 = *(a1 + 8928);
        if (v43 || (v43 = *(a1 + 88)) != 0)
        {
          v44 = v42 / v43;
        }

        else
        {
          v44 = 0;
        }

        if (v41 >= 0)
        {
          LOWORD(v45) = v44;
        }

        else
        {
          v45 = -v44;
        }

        LOWORD(v24) = *(v17 + 7) + v45;
      }

      v46 = *(a1 + 72);
      if (v46 != 1 && *(v153 + 8) == *v153 + 12)
      {
        LODWORD(v47) = *(a1 + 88);
      }

      else
      {
        v47 = *(v153 + 16) / v148;
      }

      v48 = (v32 - v149);
      if (v47 + v48 <= 0)
      {
        v26 = 1;
        audioSession_discardLatePacket(a1, v153, v24, v149, v32, 1);
        v25 = 0;
        v27 = 0;
        v153 = 0;
        v23 = v146;
        continue;
      }

      v49 = *(v153 + 8);
      if (v49 != (*v153 + 12))
      {
        goto LABEL_66;
      }

      v53 = *(v153 + 16);
      v54 = *(a1 + 1672) - 12;
      if (v46 == 1)
      {
        break;
      }

      v154[0] = 0;
      v56 = audioSession_audioDecoderDecodeFrame(a1, v49, v53, *(a1 + 1696), *(a1 + 1704), v154);
      if (!v56)
      {
        *(a1 + 9120) = *(a1 + 9112);
        v55 = v154[0];
        if (v154[0] <= v54)
        {
          memcpy(v49, *(a1 + 1696), v154[0]);
          goto LABEL_77;
        }

LABEL_191:
        APSLogErrorAt();
        v68 = 4294960553;
        goto LABEL_192;
      }

      v68 = v56;
      APSLogErrorAt();
LABEL_192:
      v17 = a1 + 8913;
      v18 = &unk_27E37D000;
LABEL_115:
      v69 = v18[662];
      v23 = v146;
      if (v69 <= 90 && (v69 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_render(APReceiverAudioSessionRealTimeStateRef, uint32_t, void *, size_t)", 33554522, "### %@ Decoding packet failure: err = %d seq: %d destDataSize = %d bufferSize = %d\n", *(a1 + 32), v68, *(*v153 + 2), *(a1 + 1672) - 12, *(v153 + 16));
      }

      APSRTPPassThroughJitterBufferRelinquishNode();
      v25 = 0;
      v27 = 0;
      v153 = 0;
      v26 = 1;
    }

    if (v53 > v54)
    {
      goto LABEL_191;
    }

    Swap16Mem();
    v154[0] = v53;
    v55 = v53;
LABEL_77:
    v17 = a1 + 8913;
    if (!*(a1 + 9201))
    {
      goto LABEL_95;
    }

    if (v55 < 8 || *(a1 + 9200))
    {
      goto LABEL_94;
    }

    v57 = v55 >> 3;
    while (!*v49)
    {
LABEL_93:
      ++v49;
      if (!--v57)
      {
        goto LABEL_94;
      }
    }

    *(a1 + 9200) = 1;
    if (*(a1 + 9136))
    {
      if (!APSAtomicMessageQueueSendMessage() && gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_detectFirstNonZeroPCMSample(APReceiverAudioSessionRealTimeStateRef, uint8_t *, size_t, uint64_t)", 33554522, "### %@ Could not enque logging message; APSAtomicMessageQueueSendMessage() failed with err %#m\n", *(a1 + 32), 0);
      }

      mach_absolute_time();
      if (!APSAtomicMessageQueueSendMessage() && gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_detectFirstNonZeroPCMSample(APReceiverAudioSessionRealTimeStateRef, uint8_t *, size_t, uint64_t)", 33554522, "### %@ Could not enque logging message; APSAtomicMessageQueueSendMessage() failed with err %#m\n", *(a1 + 32), 0);
      }

      goto LABEL_93;
    }

    if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_detectFirstNonZeroPCMSample(APReceiverAudioSessionRealTimeStateRef, uint8_t *, size_t, uint64_t)", 33554522, "### %@ loggingMessageQueue not initialized. Non zero PCM sample found; could not log event\n", *(a1 + 32));
    }

LABEL_94:
    v55 = v154[0];
LABEL_95:
    if (v55)
    {
      v58 = 10000 * v53 / v55;
    }

    else
    {
      LODWORD(v58) = 0;
    }

    v18 = &unk_27E37D000;
    *(a1 + 1880) = (v58 - *(a1 + 1880) + (*(a1 + 1880) << 6)) >> 6;
    *(v40 + 16) = v55;
    v59 = v153;
    if (!*(v153 + 16))
    {
      v68 = 0;
      goto LABEL_115;
    }

    ++*(a1 + 8936);
    if ((*(v59 + 36) & 2) != 0)
    {
      goto LABEL_66;
    }

    v60 = *(*v59 + 2);
    v61 = *(v59 + 32);
    v62 = *(a1 + 8920);
    v63 = *(a1 + 8924);
    v64 = v60 - v62;
    if (v60 - v62 < 0)
    {
      v64 = v62 - v60;
    }

    v65 = v61 - v63;
    if (v61 - v63 < 0)
    {
      v65 = v63 - v61;
    }

    *(a1 + 8913) = 1;
    *(a1 + 8914) = v62;
    *(a1 + 8916) = v63;
    *(a1 + 8920) = v60;
    *(a1 + 8924) = v61;
    _ZF = v60 == v62 || v61 == v63;
    if (!_ZF && v65 >= v64)
    {
      v70 = v65 / v64;
      *(a1 + 8928) = v70;
      v71 = *(a1 + 88);
      if (v70 != v71 && gLogCategory_APReceiverAudioSessionRealTime <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionRealTime == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_66;
          }

          v70 = *(a1 + 8928);
          v71 = *(a1 + 88);
          v62 = *(a1 + 8914);
          v63 = *(a1 + 8916);
          v60 = *(a1 + 8920);
          v61 = *(a1 + 8924);
        }

        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_updateRTPInfo(APReceiverAudioSessionRealTimeStateRef, uint16_t, uint32_t)", 33554482, "### %@ New FramesPerPacket detected: %u. Initialized FramesPerPacket: %u. PrevRTPInfo: (%u, %u). CurrRTPInfo: (%u, %u)\n", *(a1 + 32), v70, v71, v62, v63, v60, v61);
      }
    }

    else
    {
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionRealTime != -1)
        {
          goto LABEL_113;
        }

        if (_LogCategory_Initialize())
        {
          v62 = *(a1 + 8914);
          v63 = *(a1 + 8916);
          v60 = *(a1 + 8920);
          v61 = *(a1 + 8924);
LABEL_113:
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_updateRTPInfo(APReceiverAudioSessionRealTimeStateRef, uint16_t, uint32_t)", 33554482, "### %@ Erroneous RTP information processed. PrevRTPInfo: (%u, %u). CurrRTPInfo: (%u, %u)\n", *(a1 + 32), v62, v63, v60, v61);
        }
      }

      *(a1 + 8928) = *(a1 + 88);
    }

LABEL_66:
    v50 = v153;
    v51 = v149;
    v52 = v32 + *(v153 + 16) / v148;
    if (v52 - v149 <= 0)
    {
      audioSession_discardLatePacket(a1, v153, v24, v149, v32, 0);
      v25 = 0;
      v27 = 0;
      v153 = 0;
      v26 = 1;
      v23 = v146;
      goto LABEL_24;
    }

    v72 = (v149 - v32);
    if (v149 - v32 < 0)
    {
      if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 20)
      {
        if (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || (v76 = _LogCategory_Initialize(), v51 = v149, v76))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTimeStats, "void audioSession_render(APReceiverAudioSessionRealTimeStateRef, uint32_t, void *, size_t)", 33554452, "%@ Concealed %d unit gap (%u vs %u), curr seq %u\n", *(a1 + 32), v48, v51, v32, v24);
        }
      }

      if (*(a1 + 8936) >= 2uLL)
      {
        kdebug_trace();
        if (!*(v17 + 340))
        {
          *(v17 + 340) = 1;
          audioSession_triggerAsyncGlitchLog(a1, "[Glitch Gap Start]", v24, (v149 - (*(a1 + 2084) + *(a1 + 1776))));
        }

        v77 = v140 + 16 * v141;
        *v77 = v137;
        *(v77 + 8) = v149 - (*(a1 + 2084) + *(a1 + 1776));
        *(v77 + 12) = v48;
        ++v141;
      }

      audioSession_enqueueRetransmitCommand(a1, v24, 2);
      audioSession_plc(a1, *(v153 + 8), (v48 * v148), __dst);
      __dst += (v48 * v148);
      ++v139;
      v50 = v153;
      LODWORD(v51) = v32;
LABEL_144:
      v75 = v146;
      goto LABEL_147;
    }

    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_144;
    }

    v73 = ++dword_27E37EEE0;
    v74 = *(a1 + 2416);
    if (v74)
    {
      atomic_fetch_add_explicit((v74 + 68), 1u, memory_order_relaxed);
    }

    v75 = v146;
    if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 20)
    {
      if (gLogCategory_APReceiverAudioSessionRealTimeStats != -1)
      {
        goto LABEL_128;
      }

      if (_LogCategory_Initialize())
      {
        v73 = dword_27E37EEE0;
LABEL_128:
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTimeStats, "void audioSession_render(APReceiverAudioSessionRealTimeStateRef, uint32_t, void *, size_t)", 33554452, "%@ Dropped %d late units (%u vs %u), %u total\n", *(a1 + 32), v72, v32, v149, v73);
      }
    }

    audioSession_enqueueRetransmitCommand(a1, v24, 5);
    LODWORD(v51) = v149;
    v78 = (v72 * v148);
    v50 = v153;
    v79 = *(v153 + 16);
    *(v153 + 8) += v78;
    *(v50 + 16) = v79 - v78;
    *(v50 + 32) += v72;
    ++v139;
    LODWORD(v32) = v149;
LABEL_147:
    v134 = v72;
    if (*(a1 + 2121) && (v80 = *(v50 + 8), v80 == (*v50 + 12)))
    {
      v82 = *(a1 + 2192);
      if (v82 < 1)
      {
        if (v82 < 0)
        {
          v89 = v51;
          v90 = *(a1 + 1744);
          memcpy(v90, v80, *(v50 + 16));
          v91 = *(a1 + 84);
          v93 = *(v50 + 8);
          v92 = *(v50 + 16);
          if ((v92 / v91) < 1)
          {
            v95 = *(v50 + 8);
          }

          else
          {
            v94 = &v90[v92 / v91];
            v95 = *(v50 + 8);
            do
            {
              v96 = *v90;
              v97 = *(a1 + 2196) + 1;
              *(a1 + 2196) = v97;
              if (v97 >= *(a1 + 2200))
              {
                *(a1 + 2196) = 0;
                *v95++ = v96;
              }

              *v95++ = v96;
              ++v90;
            }

            while (v90 < v94);
            v91 = *(a1 + 84);
          }

          v107 = v95 - v93;
          v108 = &v107[-v92] / v91;
          *(v50 + 16) = v107;
          *(v50 + 32) -= v108;
          *v136 = vadd_s32(*v136, vdup_n_s32(v108));
          v50 = v153;
          LODWORD(v51) = v89;
        }
      }

      else
      {
        v83 = *(v50 + 16);
        v84 = *(a1 + 84);
        if ((v83 / v84) < 1)
        {
          v86 = *(v50 + 8);
        }

        else
        {
          v85 = &v80[4 * (v83 / v84)];
          v86 = *(v50 + 8);
          v87 = v86;
          do
          {
            v88 = *(a1 + 2196) + 1;
            *(a1 + 2196) = v88;
            if (v88 >= *(a1 + 2200))
            {
              *(a1 + 2196) = 0;
            }

            else
            {
              *v86 = *v87;
              v86 += 4;
            }

            v87 += 4;
          }

          while (v87 < v85);
          v84 = *(a1 + 84);
        }

        v98 = v86 - v80;
        v99 = (v83 - v98) / v84;
        *(v50 + 16) = v98;
        *(v50 + 32) += v99;
        *v136 = vsub_s32(*v136, vdup_n_s32(v99));
      }

      v81 = v51;
      v52 = v32 + *(v50 + 16) / v148;
    }

    else
    {
      v81 = v51;
    }

    v100 = v52 - v75;
    if (v52 - v75 <= 0)
    {
      v101 = v52;
    }

    else
    {
      v101 = v75;
    }

    v102 = v101 - v32;
    v103 = ((v101 - v32) * v148);
    memcpy(__dst, *(v50 + 8), v103);
    kdebug_trace();
    if (*(v17 + 340) == 1)
    {
      *(v17 + 340) = 0;
      audioSession_triggerAsyncGlitchLog(a1, "[Glitch End]", v24, (v32 - (*(a1 + 2084) + *(a1 + 1776))));
    }

    if ((v134 & 0x80000000) == 0)
    {
      APSPacketLossConcealerSaveData();
    }

    __dst += v103;
    v149 = (v102 + v81);
    if (v100 >= 1)
    {
      v106 = 0;
      v35 = v153;
      v133 = *(v153 + 16) - v103;
      *(v153 + 8) += v103;
      *(v35 + 16) = v133;
      *(v35 + 32) += v102;
      v18 = &unk_27E37D000;
      v23 = v146;
      break;
    }

    atomic_fetch_add((a1 + 2000), 1u);
    v104 = v153;
    v18 = &unk_27E37D000;
    if ((*(v153 + 36) & 2) != 0)
    {
      atomic_fetch_add((a1 + 2004), 1u);
      v104 = v153;
    }

    v23 = v146;
    if (*(a1 + 2448))
    {
      v105 = *(v104 + 40);
      LODWORD(v150) = 1919247468;
      LODWORD(v151) = v105;
      APSAtomicMessageQueueSendMessage();
    }

    APSRTPPassThroughJitterBufferRelinquishNode();
    v25 = 0;
    v27 = 0;
    v35 = 0;
    v106 = 0;
    v153 = 0;
    v26 = 1;
  }

  while (__dst < v135);
LABEL_201:
  *(a1 + 1688) = v35;
  v109 = v149;
  if (v149 - v23 < 0)
  {
    goto LABEL_204;
  }

  a2 = v142;
  v110 = v139;
  if (v106)
  {
    goto LABEL_230;
  }

LABEL_226:
  if (!APSRTPPassThroughJitterBufferIsFlushing() && v110 >= 1 && *v138)
  {
    *v138 = 0;
  }

LABEL_230:
  if (*v17)
  {
    *(v140 + 3200) = v141;
  }

  v122 = atomic_load((a1 + 1808));
  if ((v122 & 0xFF000000000000) != 0 && gLogCategory_APReceiverAudioSessionRealTimeStats <= 50 && (gLogCategory_APReceiverAudioSessionRealTimeStats != -1 || _LogCategory_Initialize()))
  {
    v123 = *(a1 + 1804) - v122;
    if (byte_27E37EED0)
    {
      v124 = *(&gAirPlayAudioStats + 1) + *&gAirPlayAudioStats * (v123 - *(&gAirPlayAudioStats + 1));
    }

    else
    {
      v124 = v123;
      byte_27E37EED0 = 1;
    }

    *(&gAirPlayAudioStats + 1) = v124;
    v125 = *(a1 + 76);
    v126 = v125 >> 1;
    v127 = ((v125 >> 1) + v124 * 1000.0) / v125;
    v128 = v18[662];
    if (v128 <= 10)
    {
      if (v128 != -1)
      {
        goto LABEL_242;
      }

      if (_LogCategory_Initialize())
      {
        v125 = *(a1 + 76);
        v126 = v125 >> 1;
LABEL_242:
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_render(APReceiverAudioSessionRealTimeStateRef, uint32_t, void *, size_t)", 33554442, "%@ RTP Buffer: %3d ms, %3.2f ms avg\n", *(a1 + 32), (v126 + 1000 * v123) / v125, *&v127);
      }
    }

    v129 = *(a1 + 2416);
    if (v129)
    {
      *(v129 + 56) = v127;
    }
  }

  atomic_exchange((a1 + 8872), *(a1 + 8872) & 0xFFFFFFFE);
  v130 = v143 / *(a1 + 84);
  if (*(a1 + 9240) && *(a1 + 9248) + *(a1 + 9244) != a2)
  {
    atomic_fetch_add((a1 + 8944), 1u);
    v131 = *(a1 + 32);
    if (v131)
    {
      CFRetain(v131);
    }

    APSAsyncLoggerGetSharedLogger();
    APSAsyncLoggerLogMessage();
  }

  kdebug_trace();
  result = 0;
  *(a1 + 9240) = 1;
  *(a1 + 9244) = a2;
  *(a1 + 9248) = v130;
  return result;
}

uint64_t audioSession_discardLatePacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = ++dword_27E37EEE0;
  v12 = *(a1 + 2416);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 68), 1u, memory_order_relaxed);
  }

  if (gLogCategory_APReceiverAudioSessionRealTimeStats <= 30)
  {
    if (gLogCategory_APReceiverAudioSessionRealTimeStats == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v11 = dword_27E37EEE0;
    }

    v13 = "Preemptively discarding";
    if (!a6)
    {
      v13 = "Discarding";
    }

    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTimeStats, "void audioSession_discardLatePacket(APReceiverAudioSessionRealTimeStateRef, APSRTPPassThroughJitterBufferNode *, uint16_t, uint32_t, uint32_t, Boolean)", 33554462, "%@ %s late packet: seq %u ts %u-%u (%u ms), %u total\n", *(a1 + 32), v13, a3, a4, a5, (1000 * (a4 - a5) + (*(a1 + 76) >> 1)) / *(a1 + 76), v11);
  }

LABEL_9:
  kdebug_trace();
  audioSession_enqueueRetransmitCommand(a1, a3, 1);

  return APSRTPPassThroughJitterBufferRelinquishNode();
}

uint64_t audioSession_audioDecoderDecodeFrame(void *inInputDataProcUserData, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void *a6)
{
  if (!a2 || !a4)
  {
    goto LABEL_13;
  }

  v7 = *(inInputDataProcUserData + 22);
  v8 = *(inInputDataProcUserData + 21) * v7;
  if (v8 > a5)
  {
    APSLogErrorAt();
    return 4294960553;
  }

  if (!a6)
  {
LABEL_13:
    APSLogErrorAt();
    return 4294960591;
  }

  *&v13.mNumberBuffers = 1;
  *(inInputDataProcUserData + 231) = a2;
  *(inInputDataProcUserData + 232) = a2 + a3;
  ioOutputDataPacketSize = v7;
  v13.mBuffers[0].mNumberChannels = *(inInputDataProcUserData + 20);
  v13.mBuffers[0].mDataByteSize = v8;
  v13.mBuffers[0].mData = a4;
  v10 = AudioConverterFillComplexBuffer(*(inInputDataProcUserData + 230), audioSession_audioDecoderDecodeCallback, inInputDataProcUserData, &ioOutputDataPacketSize, &v13, 0);
  if (v10 != -6750 && (v11 = v10, v10))
  {
    APSLogErrorAt();
  }

  else
  {
    v11 = 0;
    *a6 = *(inInputDataProcUserData + 21) * ioOutputDataPacketSize;
  }

  return v11;
}

uint64_t audioSession_triggerAsyncGlitchLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRetain(v4);
  }

  APSAsyncLoggerGetSharedLogger();
  return APSAsyncLoggerLogMessage();
}

uint64_t audioSession_enqueueRetransmitCommand(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 2208))
  {
    v5 = result;
    if (*(result + 2232) && gLogCategory_APReceiverAudioSessionRealTime <= 40 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_enqueueRetransmitCommand(APReceiverAudioSessionRealTimeStateRef, uint16_t, APReceiverAudioSessionRetransmitCommandReason)", 33554472, "### %@ Aborting retransmits <= %u (%s)\n", *(v5 + 32), a2, off_278C5F8D0[a3 - 1]);
    }

    mach_absolute_time();
    UpTicksToNanoseconds();
    result = APSAtomicMessageQueueSendMessage();
    if (!result)
    {
      return APSLogErrorAt();
    }
  }

  return result;
}

void audioSession_plc(uint64_t a1, uint64_t a2, size_t a3, char *a4)
{
  v8 = a1 + 0x2000;
  v15 = 0;
  v9.i32[0] = 1;
  v9.i32[1] = a3 / *(a1 + 84);
  *(a1 + 9128) = vadd_s32(*(a1 + 9128), v9);
  bzero(a4, a3);
  *(v8 + 900) = 1;
  if (((*(a1 + 72) - 4) & 0xFFFFFFFB) != 0 || !*(v8 + 901))
  {
    *(a1 + 9100) = APSPacketLossConcealerConceal();
    return;
  }

  if (a3)
  {
    v10 = 0;
    v11 = *(a1 + 9120);
    do
    {
      v12 = *(a1 + 9112);
      if (v11 == v12)
      {
        bzero(*(a1 + 9104), v11);
        if (audioSession_audioDecoderDecodeFrame(a1, a2, 0, *(a1 + 9104), *(a1 + 9112), &v15))
        {
          APSLogErrorAt();
          return;
        }

        v11 = 0;
        *(a1 + 9120) = 0;
        v12 = *(a1 + 9112);
      }

      v13 = v12 - v11;
      if (a3 - v10 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = a3 - v10;
      }

      memcpy(&a4[v10], (*(a1 + 9104) + v11), v14);
      v10 += v14;
      v11 = *(a1 + 9120) + v14;
      *(a1 + 9120) = v11;
    }

    while (v10 < a3);
  }

  *(a1 + 9100) = *(a1 + 9096);
}

void audioSession_ioDiscontinuityLogger(uint64_t a1, double a2)
{
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 12);
    v7 = *(a1 + 16);
    v6 = *(a1 + 20);
    if (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_ioDiscontinuityLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "### %@ [Possible glitch] IO Discontinuity detected. currSampleTime: %u. currPCMSampleCount: %u. prevSampleTime: %u. prevPCMSampleCount: %u. (log latency: %1.3f ms)\n", *a1, v4, v5, v6, v7, *&a2);
    }
  }

  v8 = *a1;
  if (*a1)
  {

    CFRelease(v8);
  }
}

void audioSession_glitchLogger(__CFDictionary **a1, double a2)
{
  v4 = mach_absolute_time();
  v5 = *a1;
  if (!*a1)
  {
    return;
  }

  v6 = v4;
  v7 = *(a1 + 8);
  v8 = *(a1 + 6);
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v9)
  {
    v19 = v5;
LABEL_25:

    CFRelease(v19);
    return;
  }

  v10 = v9;
  v11 = *(v9 + 40);
  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_glitchLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "### %@ %s. SeqNum: %u. RTPStartTime: %u. (log latency: %1.3f ms) \n", *(v11 + 32), a1[1], v7, v8, *&a2);
  }

  v13 = a1[1];
  if (strcmp(v13, "[Glitch Gap Start]") && strcmp(v13, "[Glitch Underrun Start]"))
  {
    goto LABEL_21;
  }

  if (*(v11 + 9304))
  {
    notify_post("com.apple.airplay.AmbientAudioGlitched");
  }

  if (!*(v11 + 9254) || *(v11 + 9024) || v6 < *(v11 + 9312))
  {
    goto LABEL_21;
  }

  if (*(v11 + 9336) || (v14 = *(v11 + 8876), v14 < *(v11 + 9340)) || ((v15 = UpTicksToSeconds(), (v16 = v15) == 0) ? (v17 = 0) : (v17 = 3600 * v14 / v15), v17 < *(v11 + 9340)))
  {
    v18 = atomic_load(&audioSession_glitchLogger_sNextIssueReportTicks);
    if (v6 < v18)
    {
LABEL_21:
      v19 = 0;
      goto LABEL_22;
    }

    v31 = v18;
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_glitchLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "### %@ It's time to send a glitch report\n", *(v11 + 32));
    }

    v33 = 1;
  }

  else
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (v32 = v17, v34 = v15, v30 = _LogCategory_Initialize(), v17 = v32, v16 = v34, v30))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_glitchLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "### %@ It's time to send a severe glitches report. sessionDurationSec=%llu glitchesTotal=%d glitchesPerHour=%llu\n", *(v11 + 32), v16, v14, v17);
      }
    }

    v33 = 0;
    v31 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v19 = Mutable;
  if (!Mutable || (CFDictionarySetValue(Mutable, *MEMORY[0x277CEA1F0], *MEMORY[0x277CEA1F8]), CFDictionarySetInt64()) || CFDictionarySetInt64())
  {
    APSLogErrorAt();
    goto LABEL_22;
  }

  v21 = *MEMORY[0x277CBED28];
  v22 = *MEMORY[0x277CBED10];
  if (v33)
  {
    v23 = *MEMORY[0x277CBED10];
  }

  else
  {
    v23 = *MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(v19, *MEMORY[0x277CEA1D8], v23);
  v24 = atomic_load((v11 + 9352));
  v25 = *MEMORY[0x277CEA1D0];
  if (v24)
  {
    CFDictionarySetValue(v19, v25, v21);
    if (v33)
    {
      if (!APSSettingsGetIntWithDefault())
      {
        v26 = v31;
        v27 = v31;
        atomic_compare_exchange_strong(&audioSession_glitchLogger_sNextIssueReportTicks, &v27, *(v11 + 9256) + v6);
        if (v27 != v26)
        {
          if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_glitchLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "%@ Skipping triggering core capture and reporting a glitch because a different thread just did it\n", *(v11 + 32));
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      *(v11 + 9336) = 1;
    }

    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_glitchLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "### %@ Sending TTR issue report; includes trigger core captures on receiver\n", *(v11 + 32));
    }

    v29 = *(v11 + 40);
    if (v29)
    {
      APMediaDataControlServerSendRequest(v29, 1919513459, v19, 0, 0);
    }

    audioSession_triggerCoreCapture(v11, v19);
  }

  else
  {
    CFDictionarySetValue(v19, v25, v22);
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_glitchLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "### %@ Sending final non-TTR issue report. \n", *(v11 + 32));
    }

    v28 = *(v11 + 40);
    if (v28)
    {
      APMediaDataControlServerSendRequest(v28, 1919513459, v19, 0, 0);
    }
  }

LABEL_22:
  CFRelease(v5);
  CFRelease(v10);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v19)
  {
    goto LABEL_25;
  }
}

uint64_t audioSession_audioDecoderDecodeCallback(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = *(a5 + 1848);
  v6 = *(a5 + 1856);
  if (v5 == v6 && !*(a5 + 9092))
  {
    *a2 = 0;
    return 4294960546;
  }

  else
  {
    result = 0;
    *a2 = 1;
    *a3 = 1;
    *(a3 + 8) = *(a5 + 80);
    *(a3 + 12) = v6 - v5;
    *(a3 + 16) = v5;
    *(a5 + 1848) = v6;
    *(a5 + 1864) = 0;
    *(a5 + 1872) = 0;
    *(a5 + 1876) = v6 - v5;
    *a4 = a5 + 1864;
  }

  return result;
}

uint64_t audioSession_consumeNetworkDataBufferPacket(uint64_t result, int a2, NSObject *a3)
{
  v3 = result;
  if (a2)
  {
    *(*(result + 8) + 48) = mach_absolute_time();
    size = dispatch_data_get_size(a3);
    if (size > *(*v3 + 1672))
    {
      result = APSLogErrorAt();
      v7 = -6743;
    }

    else
    {
      v6 = size;
      result = APSDispatchDataCopyBytes();
      v7 = result;
      if (result)
      {
        result = APSLogErrorAt();
      }

      else
      {
        *(v3 + 16) = v6;
      }
    }
  }

  else
  {
    v7 = 0;
    *(result + 16) = 0;
  }

  *(v3 + 24) = v7;
  return result;
}

uint64_t APReceiverAudioSessionRealTimeConvertProgressRTPTimeToSecond(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double *a6, double a7, double a8)
{
  if (a1)
  {
    v14 = atomic_load((a1 + 1808));
    if ((v14 & 0xFF000000000000) == 0)
    {
      LODWORD(v14) = a3;
    }

    LODWORD(a8) = *(a1 + 76);
    v15 = *&a8;
    v16 = (v14 - a2) / v15;
    v17 = (a4 - a2) / v15;
    if (gLogCategory_APReceiverAudioSessionRealTime <= 40 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeConvertProgressRTPTimeToSecond(void *, uint32_t, uint32_t, uint32_t, double *, double *)", 33554472, "%@ Convert progress: %u / %u / %u --> %#{dur} of %#{dur}\n", *(a1 + 32), a2, a3, a4, v16, v17);
    }

    if (a5)
    {
      *a5 = v16;
    }

    result = 0;
    if (a6)
    {
      *a6 = v17;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895144;
  }

  return result;
}

uint64_t APReceiverAudioSessionRealTimeSetSecurityInfo(void *a1, const UInt8 *a2, const UInt8 *a3)
{
  if (!a1)
  {
    return 4294895144;
  }

  v6 = a1 + 60;
  AES_CBCFrame_Final();
  a1[63] = 0;
  v7 = AES_CBCFrame_Init();
  if (v7)
  {
    v13 = v7;
    APSLogErrorAt();
    return v13;
  }

  a1[63] = v6;
  if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeSetSecurityInfo(void *, const uint8_t *, const uint8_t *)", 33554482, "%@ Using legacy CBC Cryptor for decryption.", a1[4]);
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = CFDataCreate(*MEMORY[0x277CBECE8], a2, 16);
  if (!v9)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v10 = v9;
  v11 = CFDataCreate(v8, a3, 16);
  if (!v11)
  {
    APSLogErrorAt();
    CFRelease(v10);
    return 4294960568;
  }

  v12 = v11;
  v13 = APSCryptorCBCCreate();
  if (v13)
  {
    APSLogErrorAt();
  }

  else
  {
    v14 = a1[59];
    a1[59] = 0;
    if (v14)
    {
      CFRelease(v14);
    }
  }

  CFRelease(v10);
  CFRelease(v12);
  return v13;
}

uint64_t APReceiverAudioSessionRealTimeStartPacketProcesser(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  v2 = a1 + 0x2000;
  if (*(a1 + 9072))
  {
    v38 = 4294895143;
    goto LABEL_62;
  }

  if (!*(a1 + 64))
  {
    *(a1 + 9040) = mach_absolute_time();
    v3 = pthread_create((a1 + 56), 0, audioSession_networkThread, a1);
    if (v3)
    {
      v38 = v3;
    }

    else
    {
      *(a1 + 64) = a1 + 56;
      *(a1 + 1952) = *(a1 + 9040);
      v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 9032));
      *(a1 + 9056) = v4;
      if (!v4 || (v5 = v4, dispatch_set_context(v4, a1), dispatch_source_set_event_handler_f(v5, audioSession_performPeriodicTasks), v6 = dispatch_time(0, 250000000), dispatch_source_set_timer(v5, v6, 0xEE6B280uLL, 0xEE6B280uLL), dispatch_resume(v5), v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 9152)), (*(a1 + 9144) = v7) == 0))
      {
        APSLogErrorAt();
        return 4294960596;
      }

      dispatch_set_context(v7, a1);
      dispatch_source_set_event_handler_f(*(a1 + 9144), audioSession_log);
      dispatch_source_set_timer(*(a1 + 9144), 0, 1000000 * *(a1 + 9160), 0);
      dispatch_resume(*(a1 + 9144));
      *(a1 + 8880) = 0;
      *(a1 + 8888) = 0;
      *(a1 + 8872) = 0;
      *(a1 + 8936) = 0;
      *(v2 + 720) = 0;
      v40 = v2;
      *(v2 + 832) = 0;
      *(a1 + 8976) = 0;
      bzero((a1 + 2456), 0xC84uLL);
      bzero((a1 + 5664), 0xC84uLL);
      APSIOReporterGetCoreCaptureCount();
      *(a1 + 9272) = mach_absolute_time();
      *(a1 + 9280) = FigGetCFPreferenceNumberWithDefault();
      *(a1 + 9392) = *(a1 + 9040);
      v8 = *MEMORY[0x277CBECE8];
      v9 = MEMORY[0x277CBF138];
      v10 = MEMORY[0x277CBF150];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v12 = CFDictionaryCreateMutable(v8, 0, v9, v10);
      v13 = *(a1 + 2440);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 2440) = 0;
      }

      v14 = *(a1 + 2448);
      if (v14)
      {
        CFRelease(v14);
        *(a1 + 2448) = 0;
      }

      v15 = *MEMORY[0x277CEA338];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CEA338], @"ms");
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      v16 = MEMORY[0x277CEA330];
      if (Mutable && v12)
      {
        v17 = *MEMORY[0x277CEA330];
        CFDictionarySetValue(Mutable, *MEMORY[0x277CEA330], @"Histogram_GlitchDuration");
        v18 = APSStatsHistogramCreate();
        if (v18)
        {
          v19 = v18;
          CFDictionarySetValue(v12, @"Histogram_GlitchDuration", v18);
          CFRelease(v19);
        }

        CFDictionarySetValue(Mutable, v17, @"Histogram_StartupGlitchDuration");
        v20 = APSStatsHistogramCreate();
        if (v20)
        {
          v21 = v20;
          CFDictionarySetValue(v12, @"Histogram_StartupGlitchDuration", v20);
          CFRelease(v21);
        }

        CFDictionarySetValue(Mutable, v17, @"Histogram_NonStartupGlitchDuration");
        v22 = APSStatsHistogramCreate();
        if (v22)
        {
          v23 = v22;
          CFDictionarySetValue(v12, @"Histogram_NonStartupGlitchDuration", v22);
          CFRelease(v23);
        }

        CFDictionarySetValue(Mutable, v17, @"Histogram_LiveAdaptiveGlitchDuration");
        v24 = APSStatsHistogramCreate();
        if (v24)
        {
          v25 = v24;
          CFDictionarySetValue(v12, @"Histogram_LiveAdaptiveGlitchDuration", v24);
          CFRelease(v25);
        }
      }

      else
      {
        APSLogErrorAt();
        APSLogErrorAt();
        APSLogErrorAt();
        APSLogErrorAt();
      }

      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      if (Mutable && v12)
      {
        CFDictionarySetValue(Mutable, *v16, @"Histogram_NetworkTransitTime");
        v26 = APSStatsHistogramCreate();
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(v12, @"Histogram_NetworkTransitTime", v26);
          CFRelease(v27);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      if (Mutable && v12)
      {
        CFDictionarySetValue(Mutable, *v16, @"Histogram_HLANetworkTransitTime");
        v28 = APSStatsHistogramCreate();
        if (v28)
        {
          v29 = v28;
          CFDictionarySetValue(v12, @"Histogram_HLANetworkTransitTime", v28);
          CFRelease(v29);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      CFDictionaryRemoveValue(Mutable, v15);
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      if (Mutable && v12)
      {
        CFDictionarySetValue(Mutable, *v16, @"Histogram_RenderRedundancyLevel");
        v30 = APSStatsHistogramCreate();
        if (v30)
        {
          v31 = v30;
          CFDictionarySetValue(v12, @"Histogram_RenderRedundancyLevel", v30);
          CFRelease(v31);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      if (Mutable && v12)
      {
        CFDictionarySetValue(Mutable, *v16, @"Histogram_GlitchFreeDuration");
        v32 = APSStatsHistogramCreate();
        if (v32)
        {
          v33 = v32;
          CFDictionarySetValue(v12, @"Histogram_GlitchFreeDuration", v32);
          CFRelease(v33);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      APSAtomicMessageQueueCreate();
      CFRelease(Mutable);
      *(a1 + 2440) = v12;
      v34 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 9032));
      *(a1 + 9064) = v34;
      if (!v34)
      {
        APSLogErrorAt();
        return 4294960568;
      }

      dispatch_set_context(v34, a1);
      dispatch_source_set_event_handler_f(*(a1 + 9064), audioSession_performGlitchCollection);
      v35 = *(a1 + 9064);
      v36 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v35, v36, 0x3B9ACA00uLL, 0x3B9ACA00uLL);
      dispatch_resume(*(a1 + 9064));
      v37 = *(a1 + 40);
      if (!v37 || (context = *(a1 + 40), v42 = 0, dispatch_sync_f(*(v37 + 112), &context, controlServer_startInternal), v38 = v42, !v42))
      {
        APSCopyTightSyncInfo();
        if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeStartPacketProcesser(void *)", 33554482, "%@ TightSyncBuddy status at start of audio session. IsPartOfTightSyncGroup: %d. ccCountBegin: %llu\n", *(a1 + 32), *(v40 + 1216), *(a1 + 8960));
        }

        *(v40 + 880) = 1;
        return 0;
      }
    }

LABEL_62:
    APSLogErrorAt();
    return v38;
  }

  return 0;
}

uint64_t audioSession_performGlitchCollection(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    v5 = result + 0x2000;
    APSAsyncLoggerGetSharedLogger();
    result = APSAsyncLoggerLogMessage();
    v6 = 0;
    v7 = 0;
    for (i = 0; i != 100; ++i)
    {
      v9 = *(v4 + 8872);
      if ((v9 & 1) == 0)
      {
        v7 = (v9 >> 1) & 1;
        v10 = *(v4 + 8872);
        atomic_compare_exchange_strong((v4 + 8872), &v10, (v9 & 0xFFFFFFFC | (2 * v7)) ^ 2);
        if (v10 == v9)
        {
          break;
        }
      }

      result = usleep(0xAu);
      v6 = i > 0x62;
    }

    v11 = v4 + 3208 * v7;
    v12 = (v11 + 2456);
    v13 = v6;
    v14 = v13 ? 0 : v11 + 2456;
    if (!v13)
    {
      v15 = *(v11 + 5656);
      v16 = *(v5 + 720);
      result = mach_absolute_time();
      v51 = result;
      if (v15 > 0xC8)
      {
        goto LABEL_95;
      }

      v17 = v15;
      if (v15 != 200)
      {
        goto LABEL_19;
      }

      if (*(v5 + 700) == 1)
      {
LABEL_95:
        if (gLogCategory_APReceiverAudioSessionRealTime <= 90)
        {
          if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (result = _LogCategory_Initialize(), result))
          {
            result = LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_coalesceGlitches(APReceiverAudioSessionRealTimeStateRef, APReceiverAudioSessionGlitchPeriod *, uint32_t, Boolean)", 33554522, "### %@ Number of entries in inGlitchArray exceeded allocation. Number of entries: %d. PrevGlitchPeriodValid: %d\n", *(v4 + 32), v15, *(v5 + 700));
          }
        }
      }

      v17 = 200;
LABEL_19:
      if (*(v5 + 700) == 1)
      {
        result = memmove(v12 + 4, v12, (16 * v17));
        *v12 = *(v4 + 8896);
        LODWORD(v15) = v15 + 1;
      }

      if (v15 < 2)
      {
        v18 = 0;
        if (v16)
        {
LABEL_28:
          if (v17 || *(v5 + 700))
          {
            v23 = v18 + 1;
            v24 = 1;
            goto LABEL_45;
          }

          v24 = 1;
          goto LABEL_44;
        }
      }

      else
      {
        v18 = 0;
        v19 = v15 - 1;
        v20 = (v14 + 28);
        do
        {
          v21 = v14 + 16 * v18;
          v22 = *(v21 + 12);
          if (v22 + *(v21 + 8) == *(v20 - 1))
          {
            *(v21 + 12) = *v20 + v22;
          }

          else
          {
            *(v14 + 16 * ++v18) = *(v20 - 3);
          }

          v20 += 4;
          --v19;
        }

        while (v19);
        if (v16)
        {
          goto LABEL_28;
        }
      }

      if (!v17)
      {
        v25 = *(v5 + 700);
        v26 = v25 == 1;
        if (v25 == 1)
        {
          v27 = v18 + 1;
        }

        else
        {
          v27 = v18;
        }

        v28 = v25 == 0;
        if (*(v5 + 700))
        {
          v23 = v27;
        }

        else
        {
          v23 = v18;
        }

        v24 = v28 || v26;
LABEL_45:
        if (*(v5 + 833))
        {
          if (v51 < *(v4 + 9016))
          {
LABEL_92:
            v12[800] = 0;
            return result;
          }

          *(v5 + 832) = 0;
        }

        v49 = v24;
        v50 = v12;
        v29 = 0;
        if (v23)
        {
          v30 = v23;
          v31 = v14;
          v52 = v5;
          do
          {
            if (!*(v5 + 721))
            {
              goto LABEL_83;
            }

            v32 = *(v31 + 8);
            v33 = v32 - *(v4 + 8924);
            if (v33 >= 0)
            {
              v34 = v32 - *(v4 + 8924);
            }

            else
            {
              v34 = *(v4 + 8924) - v32;
            }

            v35 = *(v4 + 8928);
            if (v35 || (v35 = *(v4 + 88)) != 0)
            {
              v36 = v34 / v35;
            }

            else
            {
              v36 = 0;
            }

            v37 = ((*(v31 + 12) * 1000.0) / *(v4 + 76));
            if (v33 >= 0)
            {
              LOWORD(v38) = v36;
            }

            else
            {
              v38 = -v36;
            }

            v39 = *v31;
            v40 = *(v4 + 9312);
            if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
            {
              v41 = *(v52 + 728);
              if (gLogCategory_APReceiverAudioSessionRealTime == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_66;
                }

                v32 = *(v31 + 8);
              }

              v42 = "no";
              if (v39 < v40)
              {
                v42 = "yes";
              }

              LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_coalesceGlitches(APReceiverAudioSessionRealTimeStateRef, APReceiverAudioSessionGlitchPeriod *, uint32_t, Boolean)", 33554482, "### %@ Glitch due to RTPSeqNum [%u] starting at RTP sample number [%u] and lasted [%.2f] ms at startup [%s]\n", *(v4 + 32), (v41 + v38), v32, *&v37, v42);
            }

LABEL_66:
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.airplay.realTimeAudioUnderrun", 0, 0, 1u);
            audioSession_addHistogramValue(*(v4 + 2440), @"Histogram_GlitchDuration", v37);
            v44 = *(v4 + 2440);
            if (v39 >= v40)
            {
              audioSession_addHistogramValue(v44, @"Histogram_NonStartupGlitchDuration", v37);
              v5 = v52;
              if (*(v4 + 2384) && APSSettingsIsFeatureEnabled())
              {
                audioSession_addHistogramValue(*(v4 + 2440), @"Histogram_LiveAdaptiveGlitchDuration", v37);
              }
            }

            else
            {
              audioSession_addHistogramValue(v44, @"Histogram_StartupGlitchDuration", v37);
              v5 = v52;
            }

            v45 = UpTicksToMilliseconds();
            if (v45 >= 0x36EE80)
            {
              v46 = 5.0;
            }

            else
            {
              v46 = 4.0;
            }

            if (v45 < 0x927C0)
            {
              v46 = 3.0;
            }

            if (v45 >> 5 < 0x753)
            {
              v46 = 2.0;
            }

            if (v45 < 0x3E8)
            {
              v46 = 1.0;
            }

            if (v45 < 0x64)
            {
              v46 = 0.0;
            }

            audioSession_addHistogramValue(*(v4 + 2440), @"Histogram_GlitchFreeDuration", v46);
            v47 = *v31;
            result = MillisecondsToUpTicks();
            *(v4 + 9392) = result + v47;
            ++v29;
            if (*(v5 + 832))
            {
              v48 = 0;
              v12 = v50;
              *(v4 + 9016) = *(v4 + 9008) + v51;
              *(v5 + 833) = 1;
              *(v4 + 8876) += v29;
              goto LABEL_91;
            }

LABEL_83:
            v31 += 16;
            --v30;
          }

          while (v30);
        }

        *(v4 + 8876) += v29;
        v12 = v50;
        if (v49)
        {
          v48 = 0;
        }

        else
        {
          *(v4 + 8896) = *(v14 + 16 * v18);
          v48 = 1;
        }

LABEL_91:
        *(v5 + 700) = v48;
        goto LABEL_92;
      }

      v24 = 0;
LABEL_44:
      v23 = v18;
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t audioSession_log(uint64_t a1)
{
  result = APSRTPPassThroughJitterBufferGetInsertedNodeCount();
  if (*(a1 + 1668) > 0 && (v3 = *(a1 + 76), v3))
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      v4 = result;
      v5 = *(a1 + 88);
      if (gLogCategory_APReceiverAudioSessionRealTime != -1 || (result = _LogCategory_Initialize(), result))
      {
        v6 = *(a1 + 32);
        v7 = APSSGetGasGaugeStringForPercent();
        return LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_log(void *)", 33554482, "%@ BusyNodeCount (%3u) BufferedMSecs (%4llu) %s\n", v6, v4, 1000 * v5 * v4 / v3, v7);
      }
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

void audioSession_performPeriodicTasks(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return;
  }

  audioSession_sessionLock(*(a1 + 2360));
  audioSession_processEnqueuedRetransmitCommands(a1);
  audioSession_sessionUnlock(*(a1 + 2360));
  audioSession_flushHistogramMessageQueue(a1);
  v2 = mach_absolute_time();
  if (*(a1 + 1912) == *(a1 + 1916))
  {
    v3 = v2;
    v4 = v2 - *(a1 + 1920);
    if (v2 - *(a1 + 1952) > *(a1 + 1960))
    {
      if (gLogCategory_APReceiverAudioSessionRealTime <= 40 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        v5 = *(a1 + 32);
        v6 = UpTicksPerSecond();
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_performPeriodicTasks(void *)", 33554472, "### %@ Idle for %llu seconds\n", v5, v4 / v6);
      }

      *(a1 + 1952) = v3;
    }

    if (v4 > *(a1 + 1928))
    {
      goto LABEL_108;
    }
  }

  v7 = mach_absolute_time();
  if (v7 < *(a1 + 1896))
  {
    goto LABEL_26;
  }

  v8 = (*(a1 + 1888) + 1);
  *(a1 + 1888) = v8;
  v9 = *(a1 + 8876);
  v10 = (v9 - *(a1 + 8880));
  *(a1 + 8880) = v9;
  if (v10 < 1)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 1888);
      }

      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_performPeriodicTasks(void *)", 33554482, "%@ No glitches in the last minute of %d minutes (%d%% glitchy)\n", *(a1 + 32), v8, (100 * *(a1 + 8888) / v8));
      goto LABEL_21;
    }
  }

  else
  {
    v11 = *(a1 + 8888) + 1;
    *(a1 + 8888) = v11;
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 1888);
        v11 = *(a1 + 8888);
      }

      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_performPeriodicTasks(void *)", 33554482, "### %@ %d glitches in the last minute of %d minute(s) (%d%% glitchy)\n", *(a1 + 32), v10, v8, (100 * v11 / v8));
LABEL_21:
      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_performPeriodicTasks(void *)", 33554482, "%@ Session duration: %d minute(s). %d glitch(es) detected\n", *(a1 + 32), *(a1 + 1888), *(a1 + 8876));
      }
    }
  }

  *(a1 + 1896) = *(a1 + 1904) + v7;
LABEL_26:
  if (v7 >= *(a1 + 2008))
  {
    v12 = atomic_exchange((a1 + 2024), 0);
    v13 = atomic_exchange((a1 + 2028), 0);
    v14 = atomic_exchange((a1 + 2032), 0);
    v15 = atomic_exchange((a1 + 1992), 0);
    v16 = atomic_exchange((a1 + 1996), 0);
    v17 = atomic_exchange((a1 + 2000), 0);
    v18 = atomic_exchange((a1 + 2004), 0);
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_performPeriodicTasks(void *)", 33554482, "%@ Received bytes: RTPSocket=%u RTCPSocket=%u RTPNW=%u\n", *(a1 + 32), v12, v13, v14);
    }

    if (v15 && gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_performPeriodicTasks(void *)", 33554482, "%@ Average packet redundancy %u%%\n", *(a1 + 32), 100 * v16 / v15);
    }

    if (v17 && gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_performPeriodicTasks(void *)", 33554482, "%@ Average redundant payload renders %u%%(%u / %u)\n", *(a1 + 32), 100 * v18 / v17, v18, v17);
    }

    *(a1 + 2008) = *(a1 + 2016) + v7;
  }

  if (v7 >= *(a1 + 9168))
  {
    audioSession_logHistograms(a1);
    *(a1 + 9168) = *(a1 + 9176) + v7;
  }

  if (v7 >= *(a1 + 2056))
  {
    audioSession_reportAudioPerformance(a1, 0);
    v19 = *(a1 + 2064);
    if ((v19 + 1) <= 4)
    {
      *(a1 + 2064) = ++v19;
    }

    v20 = kAirPlayReportRenderDeadlineBackoffSec[v19];
    *(a1 + 2056) = v7 + UpTicksPerSecond() * v20;
  }

  if (APSSettingsIsFeatureEnabled() && *(a1 + 2384) && v7 >= *(a1 + 1968))
  {
    audioSession_reportAudioPerformance(a1, 1);
    *(a1 + 1968) = *(a1 + 1976) + v7;
  }

  if (v7 >= *(a1 + 9376))
  {
    if (*(a1 + 2440) && *(a1 + 40))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      v22 = *(a1 + 2440);
      if (v22)
      {
        CFDictionaryGetValue(v22, @"Histogram_GlitchDuration");
        v23 = APSStatsHistogramCopyValuesAsRTCString();
        APSStatsHistogramGetTotalSampleCount();
        FigCFDictionarySetInt64();
        CFDictionarySetValue(Mutable, @"glitchDurationHistogram", v23);
        if (v23)
        {
          CFRelease(v23);
        }

        CFDictionaryGetValue(*(a1 + 2440), @"Histogram_GlitchFreeDuration");
        v24 = APSStatsHistogramCopyValuesAsRTCString();
        APSStatsHistogramGetTotalSampleCount();
        FigCFDictionarySetInt64();
        CFDictionarySetValue(Mutable, @"glitchFreeDurationHistogram", v24);
        if (v24)
        {
          CFRelease(v24);
        }

        CFDictionaryGetValue(*(a1 + 2440), @"Histogram_HLANetworkTransitTime");
        v25 = APSStatsHistogramCopyValuesAsRTCString();
        APSStatsHistogramGetTotalSampleCount();
        FigCFDictionarySetInt64();
        CFDictionarySetValue(Mutable, @"receiverNetworkTransitTimeHistogram", v25);
        if (v25)
        {
          CFRelease(v25);
        }
      }

      v26 = CFPreferencesCopyValue(@"ExperimentGroup", @"com.apple.da", @"mobile", *MEMORY[0x277CBF010]);
      if (FigCFEqual())
      {
        FigCFDictionarySetInt64();
      }

      APMediaDataControlServerSendRequest(*(a1 + 40), 1920101748, Mutable, 0, 0);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v26)
      {
        CFRelease(v26);
      }
    }

    *(a1 + 9376) = *(a1 + 9384) + v7;
  }

  if (v7 < *(a1 + 9192))
  {
    goto LABEL_101;
  }

  memset(v45, 0, sizeof(v45));
  if (!*(a1 + 9136))
  {
    goto LABEL_100;
  }

  v27 = 0;
  v46 = 0;
  v47 = 0;
  while (1)
  {
    if (!APSAtomicMessageQueueReadMessage())
    {
      goto LABEL_100;
    }

    if (v47 == 1)
    {
      break;
    }

    if (v47 != 2)
    {
      goto LABEL_88;
    }

    v28 = *(a1 + 2376);
    v29 = v46;
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v30)
    {
      v36 = 4294954514;
LABEL_90:
      APSLogErrorAt();
      if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_processEnqueuedLoggingMessages(APReceiverAudioSessionRealTimeStateRef)", 33554522, "### %@ Packet decode time ConvertUpTicksToNetworkTime failed, err %#m\n", *(a1 + 32), v36);
      }

      goto LABEL_100;
    }

    v31 = v30(v28, v29, v45);
    if (v31)
    {
      v36 = v31;
      goto LABEL_90;
    }

    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      mach_absolute_time();
      UpTicksToMilliseconds();
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_processEnqueuedLoggingMessages(APReceiverAudioSessionRealTimeStateRef)", 33554482, "Event: 'Decoded first non-zero PCM sample packet on receiver'. [%d] Decoded packet %d ms ago; at NetworkTime: %f; using GM 0x%016llx\n");
    }

LABEL_88:
    ++v27;
  }

  v32 = *(a1 + 2376);
  v33 = v46;
  v34 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v34)
  {
    v37 = 4294954514;
    goto LABEL_94;
  }

  v35 = v34(v32, v33, v45);
  if (!v35)
  {
    if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
    {
      mach_absolute_time();
      UpTicksToMilliseconds();
      LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_processEnqueuedLoggingMessages(APReceiverAudioSessionRealTimeStateRef)", 33554482, "Event: 'Detected non-zero PCM sample on receiver'. [%d] Packet received %d ms ago; at NetworkTime: %f; using GM 0x%016llx\n");
    }

    goto LABEL_88;
  }

  v37 = v35;
LABEL_94:
  APSLogErrorAt();
  if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_processEnqueuedLoggingMessages(APReceiverAudioSessionRealTimeStateRef)", 33554522, "### %@ Packet reception time ConvertUpTicksToNetworkTime failed , err %#m\n", *(a1 + 32), v37);
  }

LABEL_100:
  *(a1 + 9192) = *(a1 + 9184) + v7;
LABEL_101:
  UpTicksToSecondsF();
  if (*(a1 + 9280) <= v38 && (*(a1 + 9272) = v7, (v39 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0))
  {
    v41 = v39;
    AirPlayReceiverSessionControl(v39, v40, @"nanWifiStats", 0, 0, &cf);
    v42 = cf;
    if (cf)
    {
      v43 = *(a1 + 9296);
      CFRetain(cf);
      *(a1 + 9296) = v42;
      if (v43)
      {
        CFRelease(v43);
      }
    }

    APSNetworkClockLogCurrentNetworkTime();
    CFRelease(v41);
  }

  else
  {
    APSNetworkClockLogCurrentNetworkTime();
  }

LABEL_108:
  if (cf)
  {
    CFRelease(cf);
  }
}

void audioSession_reportAudioPerformance(void *a1, int a2)
{
  v3 = a1[305];
  if (v3)
  {
    if (a1[5] && a1[255] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a2)
      {
        v5 = @"Histogram_LiveAdaptiveGlitchDuration";
      }

      else
      {
        v5 = @"Histogram_NonStartupGlitchDuration";
      }

      Value = CFDictionaryGetValue(v3, v5);
      if (!Value)
      {
        goto LABEL_20;
      }

      SerializedDictionary = APSStatsHistogramCreateSerializedDictionary();
      if (!SerializedDictionary)
      {
        if (a2)
        {
          APSStatsHistogramRemoveAllValues();
          v8 = mach_absolute_time();
          UpTicksToSeconds();
          a1[248] = v8;
        }

        else
        {
          mach_absolute_time();
          UpTicksToSeconds();
        }

        Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Value)
        {
          v9 = FigCFDictionarySetInt32();
          if (v9)
          {
            v12 = v9;
          }

          else
          {
            v10 = CFDictionarySetInt64();
            if (v10)
            {
              v12 = v10;
            }

            else
            {
              if (a2)
              {
                v11 = CFDictionarySetInt64();
                a1[256] = 0x7FFFFFFFFFFFFFFFLL;
                if (!v11)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                v11 = CFDictionarySetInt64();
                if (!v11)
                {
LABEL_19:
                  FigCFDictionarySetValue();
                  APMediaDataControlServerSendRequest(a1[5], 1918989680, Value, 0, 0);
                  goto LABEL_20;
                }
              }

              v12 = v11;
            }
          }

          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
          v12 = 4294895146;
        }

LABEL_32:
        if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_reportAudioPerformance(APReceiverAudioSessionRealTimeStateRef, Boolean)", 33554522, "[%{ptr}] %s failed with err=%#m\n", a1, "void audioSession_reportAudioPerformance(APReceiverAudioSessionRealTimeStateRef, Boolean)", v12);
        }

        goto LABEL_20;
      }

      v12 = SerializedDictionary;
      APSLogErrorAt();
      if (gLogCategory_APReceiverAudioSessionRealTime <= 90)
      {
        if (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_reportAudioPerformance(APReceiverAudioSessionRealTimeStateRef, Boolean)", 33554522, "[%{ptr}] %s serialize histogram failed\n", a1, "void audioSession_reportAudioPerformance(APReceiverAudioSessionRealTimeStateRef, Boolean)");
        }

        Value = 0;
        goto LABEL_32;
      }
    }

    Value = 0;
LABEL_20:
    if (Value)
    {
      CFRelease(Value);
    }
  }
}

uint64_t audioSession_networkThread(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 96))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 52);
  }

  v3 = *(a1 + 1600);
  v4 = *(a1 + 48);
  pthread_setname_np("AirPlayAudioReceiver");
  if (*(a1 + 96))
  {
    FigThreadGetMachThreadPriorityValue();
  }

  SetCurrentThreadPriority();
  if (v2 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v2;
  }

  v6 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v5 = -1;
  }

  if (v3 > v5)
  {
    v5 = v3;
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  memset(&v25, 0, sizeof(v25));
  v8 = v4 >> 5;
  v24 = 1 << v2;
  v23 = v2 >> 5;
  v9 = 1 << v3;
  v10 = v3 >> 5;
  v11 = 1 << v4;
  v22 = v7;
  v21 = v2;
  if (!v6)
  {
LABEL_17:
    if (__darwin_check_fd_set_overflow(v2, &v25, 0))
    {
      v25.fds_bits[v23] |= v24;
    }

    goto LABEL_19;
  }

  while (1)
  {
LABEL_19:
    if (__darwin_check_fd_set_overflow(v3, &v25, 0))
    {
      v25.fds_bits[v10] |= v9;
    }

    if (__darwin_check_fd_set_overflow(v4, &v25, 0))
    {
      v25.fds_bits[v8] |= v11;
    }

    v12 = select(v7 + 1, &v25, 0, 0, 0);
    if (v12 > 0)
    {
      break;
    }

    if (!v12 || !*__error())
    {
      goto LABEL_42;
    }

    v15 = *__error();
    if (!v15)
    {
      break;
    }

    if (v15 != 4)
    {
LABEL_42:
      usleep(0x186A0u);
    }

LABEL_68:
    if (!*(a1 + 96))
    {
      goto LABEL_17;
    }
  }

  if (!*(a1 + 96) && __darwin_check_fd_set_overflow(v2, &v25, 0) && (v25.fds_bits[v23] & v24) != 0)
  {
    v32 = 0;
    v16 = *(a1 + 560);
    *&v26 = 0;
    if (!APSRTPPassThroughJitterBufferAcquireRelinquishedNode())
    {
      APTTrafficMetricsMessageReadStarted();
      v20 = 0;
      v17 = SocketRecvFrom();
      APTTrafficMetricsMessageReadFinished();
      if (v17 == 35)
      {
LABEL_51:
        APTTrafficMetricsMessageProcessed();
        v7 = v22;
        if (v32)
        {
          APSRTPPassThroughJitterBufferRelinquishNode();
        }

        APSNetworkClockLogCurrentNetworkTime();
        v2 = v21;
        goto LABEL_25;
      }

      if (!v17)
      {
        if (!v16 && *(a1 + 560) && gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_receiveRTPSocket(APReceiverAudioSessionRealTimeStateRef)", 33554482, "%@ Receiving RTP packets from %##a", *(a1 + 32), a1 + 528);
        }

        atomic_fetch_add((a1 + 2024), v26);
        if (!audioSession_processPacket(a1, v32, v26, 0))
        {
          v32 = 0;
        }

        goto LABEL_51;
      }
    }

    APSLogErrorAt();
    goto LABEL_51;
  }

LABEL_25:
  if (__darwin_check_fd_set_overflow(v3, &v25, 0) && (v25.fds_bits[v10] & v9) != 0)
  {
    bzero(&v32, 0x5A4uLL);
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    APTTrafficMetricsMessageReadStarted();
    v20 = 0;
    v13 = SocketRecvFrom();
    APTTrafficMetricsMessageReadFinished();
    if (v13 == 35)
    {
      goto LABEL_65;
    }

    if (v13)
    {
      goto LABEL_80;
    }

    atomic_fetch_add((a1 + 2028), v30);
    v14 = v30 - 4;
    if (v30 < 4 || (v32 & 0xC0) != 0x80)
    {
      goto LABEL_65;
    }

    if (BYTE1(v32) == 215)
    {
      if (v30 > 0x1B)
      {
        LODWORD(v26) = 2;
        BYTE8(v26) = v32;
        *(&v27 + 1) = bswap64(v33) / 1000000000.0;
        HIDWORD(v26) = bswap32(HIDWORD(v32));
        LODWORD(v27) = bswap32(v34);
        v28 = bswap64(v35);
        while (!APSAtomicMessageQueueSendMessage())
        {
          usleep(1u);
        }

        goto LABEL_64;
      }

LABEL_80:
      APSLogErrorAt();
      goto LABEL_65;
    }

    if (BYTE1(v32) != 214)
    {
      if (BYTE1(v32) == 212)
      {
        if (v30 > 0x13)
        {
          BYTE8(v26) = v32;
          LODWORD(v26) = 1;
          *(&v27 + 1) = bswap32(v33) + bswap32(HIDWORD(v33)) * 2.32830644e-10 + -2208988800.0;
          HIDWORD(v26) = bswap32(HIDWORD(v32));
          LODWORD(v27) = bswap32(v34);
          v28 = 0;
          while (!APSAtomicMessageQueueSendMessage())
          {
            usleep(1u);
          }

LABEL_64:
          audioSession_logTimeAnnounce(a1, &v26);
          kdebug_trace();
          goto LABEL_65;
        }

        goto LABEL_80;
      }

LABEL_65:
      APTTrafficMetricsMessageProcessed();
      v7 = v22;
      goto LABEL_66;
    }

    if (v30 == 8)
    {
      v18 = bswap32(WORD2(v32));
      WORD2(v32) = HIWORD(v18);
      audioSession_enqueueRetransmitCommand(a1, HIWORD(v18), 4);
      ++*(a1 + 2296);
      goto LABEL_65;
    }

    if (v30 < 0x10)
    {
      goto LABEL_65;
    }

    v31 = 0;
    if (*(a1 + 2240))
    {
      if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_receiveRTPRetransmitPacket(APReceiverAudioSessionRealTimeStateRef, APSRTPPacket *, size_t)", 33554522, "### %@ got RTP retransmit, but rtcpRTDisable=true", *(a1 + 32), 0);
      }
    }

    else if (*(a1 + 96))
    {
      if (gLogCategory_APReceiverAudioSessionRealTime <= 90 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus audioSession_receiveRTPRetransmitPacket(APReceiverAudioSessionRealTimeStateRef, APSRTPPacket *, size_t)", 33554522, "### %@ got RTP retransmit, but enableUDPConnectionNW=true", *(a1 + 32), 0);
      }
    }

    else if (APSRTPPassThroughJitterBufferAcquireRelinquishedNode() || *(a1 + 1672) < v14)
    {
      APSLogErrorAt();
    }

    else
    {
      memcpy(*(v31 + 24), &v32 + 4, v14);
      if (!audioSession_processPacket(a1, v31, v14, 1))
      {
        v31 = 0;
LABEL_77:
        APSNetworkClockLogCurrentNetworkTime();
        ++*(a1 + 2292);
        goto LABEL_65;
      }
    }

    if (v31)
    {
      APSRTPPassThroughJitterBufferRelinquishNode();
    }

    goto LABEL_77;
  }

LABEL_66:
  if (!__darwin_check_fd_set_overflow(v4, &v25, 0) || (v25.fds_bits[v8] & v11) == 0)
  {
    goto LABEL_68;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime <= 30 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void *audioSession_networkThread(void *)", 33554462, "%@ General audio thread exit\n", *(a1 + 32), v20);
  }

  return 0;
}

uint64_t audioSession_logTimeAnnounce(uint64_t result, uint64_t a2)
{
  if ((*a2 - 3) >= 0xFFFFFFFE)
  {
    v13 = v2;
    v14 = v3;
    v5 = result;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = *(result + 2376);
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = VTable + 16;
    v9 = *(v8 + 8);
    if (v9)
    {
      result = v9(v6, &v10);
    }

    if (gLogCategory_APReceiverAudioSessionRealTime <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionRealTime != -1)
      {
        return LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_logTimeAnnounce(APReceiverAudioSessionRealTimeStateRef, const APReceiverAudioSessionTimeAnnounceCommand *)", 33554482, "%@ Time Announce Updated: vpm: %u; rtpTime: %u; rtpApply: %u; taNet: %1.7f (%llu); nowNet: %1.7f (%llu); sessionCount: %u\n", *(v5 + 32), *(a2 + 8), *(a2 + 12), *(a2 + 16), *(a2 + 24), *(a2 + 32), v12 + v11 * 5.42101086e-20, v10, *(v5 + 2080));
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "void audioSession_logTimeAnnounce(APReceiverAudioSessionRealTimeStateRef, const APReceiverAudioSessionTimeAnnounceCommand *)", 33554482, "%@ Time Announce Updated: vpm: %u; rtpTime: %u; rtpApply: %u; taNet: %1.7f (%llu); nowNet: %1.7f (%llu); sessionCount: %u\n", *(v5 + 32), *(a2 + 8), *(a2 + 12), *(a2 + 16), *(a2 + 24), *(a2 + 32), v12 + v11 * 5.42101086e-20, v10, *(v5 + 2080));
      }
    }
  }

  return result;
}

uint64_t APReceiverAudioSessionRealTimeStopPacketProcesser(uint64_t a1, const __CFDictionary *a2)
{
  v2 = a1;
  v19 = 0;
  if (!a1)
  {
    return v2;
  }

  if (*(a1 + 9072))
  {
    if (*(a1 + 64) && *(a1 + 48))
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        context[0] = *(a1 + 40);
        context[1] = 0;
        dispatch_sync_f(*(v4 + 112), context, controlServer_stopInternal);
      }

      SendSelfConnectedLoopbackMessage();
      pthread_join(*(v2 + 56), 0);
      *(v2 + 64) = 0;
      *(v2 + 8912) = 1;
      audioSession_performGlitchCollection(v2, v5, v6, v7);
      *(v2 + 8913) = 0;
      APSIOReporterGetCoreCaptureCount();
      v8 = *(v2 + 9032);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke;
      block[3] = &__block_descriptor_tmp_494;
      block[4] = v2;
      dispatch_sync(v8, block);
      v9 = *(v2 + 9152);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 0x40000000;
      v17[2] = __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke_2;
      v17[3] = &__block_descriptor_tmp_171;
      v17[4] = v2;
      dispatch_sync(v9, v17);
      v10 = *(v2 + 9032);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke_3;
      v16[3] = &__block_descriptor_tmp_172;
      v16[4] = v2;
      dispatch_sync(v10, v16);
      APSCopyTightSyncInfo();
      if (v19)
      {
        *(v2 + 9409) = 1;
      }

      if (a2)
      {
        *(v2 + 8984) = CFDictionaryGetInt64();
        *(v2 + 8992) = CFDictionaryGetInt64();
        *(v2 + 9000) = CFDictionaryGetInt64();
        *(v2 + 9320) = CFDictionaryGetInt64();
        *(v2 + 9328) = CFDictionaryGetInt64();
        v11 = *(v2 + 9288);
        Value = CFDictionaryGetValue(a2, @"senderNANWifiStats");
        v13 = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        *(v2 + 9288) = v13;
        if (v11)
        {
          CFRelease(v11);
        }
      }

      if (gLogCategory_APReceiverAudioSessionRealTime <= 50 && (gLogCategory_APReceiverAudioSessionRealTime != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeStopPacketProcesser(void *, CFDictionaryRef)", 33554482, "%@ TightSyncBuddy status at end of audio session. IsPartOfTightSyncGroup: %d. ccCountBegin: %llu. apCCTriggerCount: %llu. ccCountEnd: %llu. ccCountAPSender: %llu. ccCountNonAPSender: %llu. \n", *(v2 + 32), *(v2 + 9409), *(v2 + 8960), *(v2 + 8976), *(v2 + 8968), *(v2 + 8992), *(v2 + 9000));
      }

      *(v2 + 9048) = mach_absolute_time();
      *(v2 + 9072) = 0;
      v2 = *(v2 + 120);
      if (!v2)
      {
        goto LABEL_22;
      }

      v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v14)
      {
        v14(v2, 0);
      }
    }

    v2 = 0;
  }

  else
  {
    APSLogErrorAt();
    v2 = 4294895143;
  }

LABEL_22:
  if (v19)
  {
    CFRelease(v19);
  }

  return v2;
}

void __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 9056);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 9056));
    dispatch_release(v2);
    *(*(a1 + 32) + 9056) = 0;
  }
}

void __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 9144);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 9144));
    dispatch_release(v2);
    *(*(a1 + 32) + 9144) = 0;
  }
}

void __APReceiverAudioSessionRealTimeStopPacketProcesser_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 9064);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 9064));
    dispatch_release(v2);
    *(*(a1 + 32) + 9064) = 0;
  }
}

uint64_t APReceiverAudioSessionRealTimeUpdateLatency(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  v2 = *(a1 + 1652);
  v3 = *(a1 + 1648);
  v4 = __OFSUB__(v2, v3);
  LODWORD(v5) = v2 - v3;
  if (v5 < 0 != v4)
  {
    if (v3 < 22051)
    {
      LODWORD(v5) = -v3;
      goto LABEL_9;
    }

    v5 = 4294526296;
    *(a1 + 1776) = -441000;
    if (gLogCategory_APReceiverAudioSessionRealTime > 50)
    {
      goto LABEL_9;
    }

    if (gLogCategory_APReceiverAudioSessionRealTime == -1)
    {
      v10 = _LogCategory_Initialize();
      v5 = *(a1 + 1776);
      if (!v10)
      {
        goto LABEL_9;
      }

      v3 = *(a1 + 1648);
    }

    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeUpdateLatency(void *)", 33554482, "%@ Platform latency (%u) is larger than 22050 i.e. 500ms, set Audio Latency Offset to %u i.e. -10s\n", *(a1 + 32), v3, v5);
    LODWORD(v5) = *(a1 + 1776);
  }

LABEL_9:
  v6 = (*(a1 + 9088) * *(a1 + 88));
  v7 = gAirTunesRelativeTimeOffset;
  v8 = (v5 - v6 + gAirTunesRelativeTimeOffset);
  *(a1 + 1776) = v8;
  if (gLogCategory_APReceiverAudioSessionRealTime > 50)
  {
    return 0;
  }

  if (gLogCategory_APReceiverAudioSessionRealTime != -1)
  {
LABEL_11:
    LogPrintF(&gLogCategory_APReceiverAudioSessionRealTime, "OSStatus APReceiverAudioSessionRealTimeUpdateLatency(void *)", 33554482, "%@ Audio Latency Offset %d, Platform latency %d, Sender min latency %u, Sender max latency %u, Relative latency %d, plc_delay_samples %d \n", *(a1 + 32), v8, *(a1 + 1648), *(a1 + 1652), *(a1 + 1656), v7, v6);
    return 0;
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    v8 = *(a1 + 1776);
    v7 = gAirTunesRelativeTimeOffset;
    goto LABEL_11;
  }

  return result;
}