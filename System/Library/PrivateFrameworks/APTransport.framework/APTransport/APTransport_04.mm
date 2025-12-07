void __stream_eventReceived_block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 120);
  if (v3)
  {
    v3(a1[5], 1684628836, a1[6], *(v2 + 112));
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];

  CFRelease(v5);
}

void __stream_postCachedConnectionEvent_block_invoke(uint64_t a1)
{
  stream_handleEventFromSendConnection(*(a1 + 40), 0, *(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void stream_readyToSendBatchCallback(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, void **), void *a4)
{
  v45 = 0;
  v46[0] = &v45;
  v46[1] = 0x2000000000;
  v47 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  value = 0;
  if (!a3)
  {
    stream_readyToSendBatchCallback_cold_7(v46);
    v14 = 0;
    goto LABEL_33;
  }

  if (!a4)
  {
    stream_readyToSendBatchCallback_cold_6(v46);
    v14 = 0;
    goto LABEL_41;
  }

  v8 = *(DerivedStorage + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __stream_readyToSendBatchCallback_block_invoke;
  block[3] = &unk_278BC8018;
  block[4] = &v45;
  block[5] = &v41;
  v35 = a2;
  block[6] = &v37;
  block[7] = DerivedStorage;
  dispatch_sync(v8, block);
  if (!*(v46[0] + 24))
  {
    v9 = v42[3];
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = v38[3];
        if (v12)
        {
          v13 = CFArrayGetCount(v12);
          if ((v13 | 2) == 3)
          {
LABEL_13:
            v15 = *MEMORY[0x277CBECE8];
            Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v11, MEMORY[0x277CBF128]);
            if (!Mutable)
            {
              stream_readyToSendBatchCallback_cold_5(v48);
              goto LABEL_56;
            }

            v14 = Mutable;
            v33 = a4;
            v17 = 0;
            while (1)
            {
              CMBlockBufferGetTypeID();
              TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
              v19 = *(v46[0] + 24);
              if (v19)
              {
                stream_readyToSendBatchCallback_cold_2(v19);
                goto LABEL_32;
              }

              v20 = v17 != 0;
              if (v11 == 1)
              {
                v20 = 2;
              }

              if (v13 != 3)
              {
                v20 = v17;
              }

              if (v13 == 1)
              {
                v21 = 0;
              }

              else
              {
                v21 = v20;
              }

              CFArrayGetValueAtIndex(v38[3], v21);
              v22 = CFGetInt64Ranged();
              v23 = *(v46[0] + 24);
              if (v23)
              {
                stream_readyToSendBatchCallback_cold_3(v23);
                goto LABEL_32;
              }

              v24 = a3(v15, &value);
              *(v46[0] + 24) = v24;
              if (v24)
              {
                break;
              }

              v25 = value;
              v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v26)
              {
                v26(v25, TypedValueAtIndex);
              }

              v27 = value;
              v28 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v28)
              {
                v28(v27, v22);
              }

              CFArrayAppendValue(v14, value);
              if (value)
              {
                CFRelease(value);
                value = 0;
              }

              ++v17;
              if (!--v11)
              {
                goto LABEL_32;
              }
            }

            stream_readyToSendBatchCallback_cold_4(v24);
LABEL_32:
            a4 = v33;
LABEL_33:
            if (!a4)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v13 = 0;
        }

        v29 = v13 == v11;
        v13 = v11;
        if (!v29)
        {
          stream_readyToSendBatchCallback_cold_1(v48);
LABEL_56:
          v14 = 0;
          *(v46[0] + 24) = v48[0];
          goto LABEL_34;
        }

        goto LABEL_13;
      }
    }
  }

  v14 = 0;
LABEL_34:
  if (*(v46[0] + 24))
  {
    v29 = 1;
  }

  else
  {
    v29 = v14 == 0;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = CFRetain(v14);
  }

  *a4 = v30;
LABEL_41:
  v31 = v42[3];
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = v38[3];
  if (v32)
  {
    CFRelease(v32);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (value)
  {
    CFRelease(value);
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
}

void __stream_readyToSendBatchCallback_block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  if (*(v1 + 24))
  {
    __stream_readyToSendBatchCallback_block_invoke_cold_1();
  }

  else
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      *(*(*(result + 40) + 8) + 24) = v2(*(v1 + 96), *(result + 64), *(*(result + 48) + 8) + 24);
    }

    else
    {
      *(*(*(result + 32) + 8) + 24) = -6709;
    }
  }
}

uint64_t APBrowserRapportManagerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPBrowserRapportManagerInitOnce != -1)
  {
    APBrowserRapportManagerGetTypeID_cold_1();
  }

  return gAPBrowserRapportManagerTypeID;
}

uint64_t __APBrowserRapportManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPBrowserRapportManagerTypeID = result;
  return result;
}

uint64_t APBrowserRapportManagerCreate(void *a1, uint64_t a2)
{
  if (gAPBrowserRapportManagerInitOnce != -1)
  {
    APBrowserRapportManagerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v3 = Instance;
    *(Instance + 16) = 0u;
    *(Instance + 80) = 0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 32) = 0u;
    if (gLogCategory_APBrowserRapportManager <= 50 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
    {
      APBrowserRapportManagerCreate_cold_2(v3);
    }

    if (_MergedGlobals_5 != -1)
    {
      APBrowserRapportManagerCreate_cold_3();
    }

    Key = FigCFWeakReferenceTableAddValueAndGetKey();
    if (Key)
    {
      APBrowserRapportManagerCreate_cold_4(Key);
    }

    v3[5] = 0;
    APBrowserRapportManagerCreate_cold_5(233, v3);
  }

  else
  {
    APBrowserRapportManagerCreate_cold_6();
  }

  return 4294895016;
}

uint64_t APBrowserRapportManagerInvalidate(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (gLogCategory_APBrowserRapportManager <= 50 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManagerInvalidate(APBrowserRapportManagerRef)", 33554482, "[%{ptr}] Browser Rapport manager invalidating.\n", a1);
  }

  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserRapportManagerInvalidate_block_invoke;
  block[3] = &unk_278BC7668;
  block[4] = &v6;
  block[5] = a1;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t APBrowserRapportManagerGetMode(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserRapportManagerGetMode_block_invoke;
  block[3] = &unk_278BC80B8;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t APBrowserRapportManagerSetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __APBrowserRapportManagerSetEventHandler_block_invoke;
  v6[3] = &unk_278BC80E0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t APBrowserRapportManagerCopyShowInfo(uint64_t a1, int a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __APBrowserRapportManagerCopyShowInfo_block_invoke;
  v6[3] = &unk_278BC7D48;
  v6[4] = &v8;
  v6[5] = a1;
  v7 = a2;
  v6[6] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t APBrowserRapportManagerUpdatePreferences(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APBrowserRapportManagerUpdatePreferences_block_invoke;
  v4[3] = &unk_278BC7668;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __APBrowserRapportManagerUpdatePreferences_block_invoke(uint64_t a1)
{
  result = APBrowserRapportManager_ensurePreferencesUpdated(*(a1 + 40), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _APBrowserRapportManagerFinalize(void *a1)
{
  if (gLogCategory_APBrowserRapportManager <= 50 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    _APBrowserRapportManagerFinalize_cold_1(a1);
  }

  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    dispatch_release(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    dispatch_release(v5);
    a1[4] = 0;
  }
}

uint64_t APBrowserRapportManager_sendGetInfo(void *a1, uint64_t a2, const void *a3, const void *a4)
{
  value = 0;
  if (gLogCategory_APBrowserRapportManager <= 60 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_sendGetInfo(APBrowserRapportManagerRef, RPCompanionLinkDevice *, CFStringRef, CFStringRef)", 33554492, "[%@:%@] Unexpected: Sending request to rapport direct client\n", a3, a4);
  }

  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v9 = TypedValue;
    v10 = objc_alloc_init(MEMORY[0x277D44160]);
    v11 = v10;
    if (v10)
    {
      [v10 setDispatchQueue:a1[4]];
      v12 = v11;
      v13 = APSWrapperCreate();
      if (v13)
      {
        v16 = v13;
        APBrowserRapportManager_sendGetInfo_cold_1(v13, v11);
      }

      else
      {
        CFDictionarySetValue(v9, @"directClient", value);
        [v11 setServiceType:@"com.apple.airplay.discovery.service"];
        [v11 setControlFlags:{objc_msgSend(v11, "controlFlags") | 2}];
        [v11 setDestinationDevice:a2];
        CFSetGetTypeID();
        v14 = CFDictionaryGetTypedValue();
        if (v14)
        {
          CFSetAddValue(v14, a4);
          v15 = a1[5];
          CFRetain(a3);
          CFRetain(a4);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __APBrowserRapportManager_sendGetInfo_block_invoke;
          v18[3] = &__block_descriptor_56_e17_v16__0__NSError_8l;
          v18[4] = v15;
          v18[5] = a3;
          v18[6] = a4;
          [v11 activateWithCompletion:v18];
          v16 = 0;
          goto LABEL_10;
        }

        v16 = 4294895014;
        APBrowserRapportManager_sendGetInfo_cold_2();
      }
    }

    else
    {
      APBrowserRapportManager_sendGetInfo_cold_3();
      v16 = 4294895016;
    }

    CFDictionaryRemoveValue(v9, @"directClient");
  }

  else
  {
    APBrowserRapportManager_sendGetInfo_cold_4();
    v11 = 0;
    v16 = 4294895015;
  }

LABEL_10:

  if (value)
  {
    CFRelease(value);
  }

  return v16;
}

void APSBrowserRapportManager_invalidateAndReleaseClient(void *a1)
{
  [a1 invalidate];
}

uint64_t APConnectivityHelperGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPConnectivityHelperInitOnce != -1)
  {
    APConnectivityHelperGetTypeID_cold_1();
  }

  return gAPConnectivityHelperTypeID;
}

uint64_t __APConnectivityHelperGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPConnectivityHelperTypeID = result;
  return result;
}

uint64_t APConnectivityHelperGetSharedHelper()
{
  v0 = objc_opt_class();

  return APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass(v0);
}

uint64_t APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass(objc_class *a1)
{
  if (APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_sMutexInitOnce != -1)
  {
    APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_cold_1();
  }

  FigSimpleMutexLock();
  if (!APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_sHelper)
  {
    APConnectivityHelperCreateWithWiFiInterfaceClass(&APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_sHelper, a1);
  }

  FigSimpleMutexUnlock();
  return APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_sHelper;
}

uint64_t __APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_block_invoke(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  APConnectivityHelperGetSharedHelperWithWiFiInterfaceClass_sMutex = result;
  return result;
}

uint64_t APConnectivityHelperCreateWithWiFiInterfaceClass(void *a1, objc_class *a2)
{
  if (gAPConnectivityHelperInitOnce != -1)
  {
    APConnectivityHelperGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    Instance[15] = 0u;
    Instance[16] = 0u;
    Instance[13] = 0u;
    Instance[14] = 0u;
    Instance[11] = 0u;
    Instance[12] = 0u;
    Instance[9] = 0u;
    Instance[10] = 0u;
    Instance[7] = 0u;
    Instance[8] = 0u;
    Instance[5] = 0u;
    Instance[6] = 0u;
    Instance[3] = 0u;
    Instance[4] = 0u;
    Instance[1] = 0u;
    Instance[2] = 0u;
    v4 = dispatch_queue_create("APConnectivityHelperInternalQueue", 0);
    v3[2] = v4;
    if (v4)
    {
      v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v6 = dispatch_queue_create("APConnectivityHelperHighPriorityQueue", v5);
      v3[3] = v6;
      if (v6)
      {
        v7 = dispatch_queue_create("APConnectivityHelperEventQueue", 0);
        v3[4] = v7;
        if (v7)
        {
          if (qword_281309B90 != -1)
          {
            APConnectivityHelperCreateWithWiFiInterfaceClass_cold_2();
          }

          Key = FigCFWeakReferenceTableAddValueAndGetKey();
          if (Key)
          {
            APConnectivityHelperCreateWithWiFiInterfaceClass_cold_3(Key);
          }

          v3[5] = 0;
          APConnectivityHelperCreateWithWiFiInterfaceClass_cold_13();
        }

        else
        {
          APConnectivityHelperCreateWithWiFiInterfaceClass_cold_14();
        }
      }

      else
      {
        APConnectivityHelperCreateWithWiFiInterfaceClass_cold_15();
      }
    }

    else
    {
      APConnectivityHelperCreateWithWiFiInterfaceClass_cold_16();
    }
  }

  else
  {
    APConnectivityHelperCreateWithWiFiInterfaceClass_cold_17();
  }

  [0 invalidate];
  if (v3)
  {
    CFRelease(v3);
  }

  return 4294895096;
}

uint64_t APConnectivityHelperCreate(void *a1)
{
  v2 = objc_opt_class();

  return APConnectivityHelperCreateWithWiFiInterfaceClass(a1, v2);
}

uint64_t APConnectivityHelperCopyProperty(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APConnectivityHelperCopyProperty_block_invoke;
  block[3] = &unk_278BC7CE0;
  block[4] = &v5;
  dispatch_sync(v1, block);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t APConnectivityHelperSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), v4, _APConnectivityHelperSetProperty);
  return v5;
}

uint64_t _APConnectivityHelperSetProperty(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
    v2 = -12784;
  }

  else
  {
    result = _APConnectivityHelperSetProperty_cold_1();
    v2 = -72201;
  }

  *(v1 + 24) = v2;
  return result;
}

uint64_t _APConnectivityHelperUpdateTrafficRegistration(uint64_t *a1)
{
  v2 = *a1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  if (APSIsVirtualMachine())
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperUpdateTrafficRegistration(void *)", 33554482, "Ignoring AWDL traffic registration on VirtualMachine\n");
    }

    v7 = 0;
    v3 = 0;
    goto LABEL_15;
  }

  if (*(v2 + 232))
  {
    APSLogErrorAt();
    v7 = 0;
    v3 = 0;
    v12 = 4294960573;
    goto LABEL_23;
  }

  v3 = objc_alloc_init(MEMORY[0x277D02AC8]);
  if (!v3)
  {
    APSLogErrorAt();
    v7 = 0;
    v3 = 0;
LABEL_32:
    v12 = 4294895096;
    goto LABEL_23;
  }

  v4 = *(a1 + 22) != 0;
  v5 = CUPrintAddress();
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = [MEMORY[0x277D02AC0] AWDLPeerContextWithMACAddress:v5 interfaceName:0];
  if (!v6)
  {
    APSLogErrorAt();
    v7 = 0;
    v12 = 4294895094;
    goto LABEL_23;
  }

  v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v6, 0}];
  if (!v7)
  {
LABEL_31:
    APSLogErrorAt();
    v7 = 0;
    goto LABEL_32;
  }

  [v3 setServiceName:a1[1]];
  [v3 setActive:*(a1 + 22) != 0];
  [v3 setSessionFlags:v4];
  [v3 setPeerContextList:v7];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v16 = ___APConnectivityHelperUpdateTrafficRegistration_block_invoke;
  v17 = &unk_278BC8318;
  v18 = v3;
  v19 = &v28;
  v20 = &v22;
  v21 = v2;
  qos_class = dispatch_queue_get_qos_class(*(v2 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v16(block);
  }

  else
  {
    dispatch_async_and_wait(*(v2 + 24), block);
  }

  if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    v9 = [*(v2 + 48) interfaceName];
    v10 = [objc_msgSend(*(v2 + 48) "AWDL")];
    v11 = [objc_msgSend(*(v2 + 48) "requestParameters")];
    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperUpdateTrafficRegistration(void *)", 33554462, "[%{ptr}] Interface names: if:'%@' awdl:'%@' ctx:'%@' rpif:'%@' err:'%@' success:%d\n", v2, v9, v10, v6, v11, v23[5], *(v29 + 24));
  }

  if (v29[3])
  {
LABEL_15:
    v12 = 0;
    goto LABEL_23;
  }

  v13 = NSErrorToOSStatus();
  if (v13)
  {
    v12 = v13;
  }

  else
  {
    v12 = 4294895094;
  }

  if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperUpdateTrafficRegistration(void *)", 33554522, "[%{ptr}] Failed to set AWDL peer traffic registration, error: %#m", v2, v12);
  }

LABEL_23:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  return v12;
}

void sub_23D2EFF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t APConnectivityHelperStartListeningToEvent(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), &v3, _APConnectivityHelperStartListeningToEvent);
  return v5;
}

uint64_t APConnectivityHelperStopListeningToEvent(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), &v3, _APConnectivityHelperStopListeningToEvent);
  return v5;
}

void _APConnectivityHelperStopListeningToEvent(unsigned int *a1)
{
  v2 = *a1;
  if (*(*a1 + 232))
  {
    _APConnectivityHelperStopListeningToEvent_cold_1();
    v6 = -72203;
    goto LABEL_47;
  }

  v3 = a1[2];
  if (!v3)
  {
    v6 = -72201;
    _APConnectivityHelperStopListeningToEvent_cold_13();
    goto LABEL_47;
  }

  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    _APConnectivityHelperStopListeningToEvent_cold_2(v3);
  }

  CFDictionaryRemoveValue(*(v2 + 264), v3);
  if (v3 <= 8)
  {
    if (v3 >= 3)
    {
      if (v3 <= 3)
      {
        v8 = _APConnectivityHelperEnsureWiFiNetworkListenerStopped(v2, v4, v5);
        v6 = v8;
        if (v8)
        {
          _APConnectivityHelperStopListeningToEvent_cold_10(v8);
        }

        goto LABEL_47;
      }

      if (v3 > 6)
      {
        if (v3 == 7)
        {
          *(v2 + 208) = 0;
          v14 = _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(v2, v4, v5);
          v6 = v14;
          if (v14)
          {
            _APConnectivityHelperStopListeningToEvent_cold_6(v14);
          }
        }

        else
        {
          v12 = _APConnectivityHelperEnsureAWDLSoloSupportListenerStopped(v2, v4, v5);
          v6 = v12;
          if (v12)
          {
            _APConnectivityHelperStopListeningToEvent_cold_5(v12);
          }
        }

        goto LABEL_47;
      }

      if (v3 == 4)
      {
        v13 = _APConnectivityHelperEnsureUSBInterfaceListenerStopped(v2);
        v6 = v13;
        if (v13)
        {
          _APConnectivityHelperStopListeningToEvent_cold_9(v13);
        }

        goto LABEL_47;
      }

      if (v3 == 6)
      {
        v11 = _APConnectivityHelperEnsureIPv6AddressesListenerStopped(v2);
        v6 = v11;
        if (v11)
        {
          _APConnectivityHelperStopListeningToEvent_cold_8(v11);
        }

        goto LABEL_47;
      }
    }

    else
    {
      if (v3 == 1)
      {
        *(v2 + 87) = 0;
        v10 = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(v2, v4, v5);
        v6 = v10;
        if (v10)
        {
          _APConnectivityHelperStopListeningToEvent_cold_12(v10);
        }

        goto LABEL_47;
      }

      if (v3 == 2)
      {
        v7 = _APConnectivityHelperEnsureWiFiPowerListenerStopped(v2, v4, v5);
        v6 = v7;
        if (v7)
        {
          _APConnectivityHelperStopListeningToEvent_cold_11(v7);
        }

        goto LABEL_47;
      }
    }

LABEL_27:
    v6 = -72201;
    if (gLogCategory_APConnectivityHelper <= 60 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperStopListeningToEvent(void *)", 33554492, "[%{ptr}] Unrecognized event type %d.\n", v2, v3);
    }

    goto LABEL_47;
  }

  if ((v3 - 100) <= 9 && ((1 << (v3 - 100)) & 0x39F) != 0)
  {
    v6 = -72201;
    if (gLogCategory_APConnectivityHelper <= 60 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperStopListeningToEvent_cold_3(v3, v2);
    }

    goto LABEL_47;
  }

  if (v3 == 9)
  {
    v9 = _APConnectivityHelperStopLinkDebounceFailedListener(v2, v4, v5);
    v6 = v9;
    if (v9)
    {
      _APConnectivityHelperStopListeningToEvent_cold_4(v9);
    }

    goto LABEL_47;
  }

  if (v3 != 10)
  {
    goto LABEL_27;
  }

  v15 = _APConnectivityHelperEnsureIPv4AddressesListenerStopped(v2);
  v6 = v15;
  if (v15)
  {
    _APConnectivityHelperStopListeningToEvent_cold_7(v15);
  }

LABEL_47:
  a1[3] = v6;
}

uint64_t APConnectivityHelperRegisterForEvent(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APConnectivityHelperRegisterForEvent_block_invoke;
    v6[3] = &unk_278BC7D48;
    v7 = a3;
    v6[5] = a1;
    v6[6] = a2;
    v6[4] = &v8;
    dispatch_sync(v3, v6);
    v4 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v9 + 6) = -6705;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void __APConnectivityHelperRegisterForEvent_block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  v24 = *(a1 + 40);
  v3 = (a1 + 56);
  v25 = *(a1 + 56);
  v26 = 0;
  Value = CFDictionaryGetValue(*(v24 + 248), v25);
  v5 = MEMORY[0x277CBECE8];
  if (Value)
  {
    v6 = CFRetain(Value);
    if (v6)
    {
      v7 = v6;
      if (CFSetContainsValue(v6, *(a1 + 48)))
      {
        goto LABEL_22;
      }

LABEL_7:
      CFSetAddValue(v7, *(a1 + 48));
      if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        __APConnectivityHelperRegisterForEvent_block_invoke_cold_1(v2, a1 + 48, v3, v7);
      }

      if (CFSetGetCount(v7) == 1)
      {
        _APConnectivityHelperStartListeningToEvent(&v24, v9, v10);
        v23 = v26;
        *(*(*(a1 + 32) + 8) + 24) = v26;
        if (v23)
        {
          __APConnectivityHelperRegisterForEvent_block_invoke_cold_3(v23);
        }

        goto LABEL_22;
      }

      v11 = *v3;
      if (v11 > 0xA || ((1 << v11) & 0x5DA) == 0)
      {
LABEL_22:
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
LABEL_35:
          CFRelease(v7);
          return;
        }

        CFSetRemoveValue(v7, *(a1 + 48));
        v17 = 0;
        goto LABEL_24;
      }

      v12 = *v2;
      v13 = *(a1 + 48);
      Mutable = CFArrayCreateMutable(*v5, 0, MEMORY[0x277CBF128]);
      if (!Mutable)
      {
        __APConnectivityHelperRegisterForEvent_block_invoke_cold_2();
        goto LABEL_22;
      }

      v15 = Mutable;
      switch(v11)
      {
        case 0xA:
          v27 = MEMORY[0x277D85DD0];
          v28 = 3221225472;
          v29 = ___APConnectivityHelperReplayEvents_block_invoke;
          v30 = &__block_descriptor_52_e15_v24__0r_v8r_v16l;
          v31 = v12;
          v32 = v13;
          v16 = 10;
          break;
        case 6:
          v27 = MEMORY[0x277D85DD0];
          v28 = 3221225472;
          v29 = ___APConnectivityHelperReplayEvents_block_invoke;
          v30 = &__block_descriptor_52_e15_v24__0r_v8r_v16l;
          v31 = v12;
          v32 = v13;
          v16 = 6;
          break;
        case 4:
          v27 = MEMORY[0x277D85DD0];
          v28 = 3221225472;
          v29 = ___APConnectivityHelperReplayEvents_block_invoke;
          v30 = &__block_descriptor_52_e15_v24__0r_v8r_v16l;
          v31 = v12;
          v32 = v13;
          v16 = 4;
          break;
        default:
          v22 = CFDictionaryGetValue(*(v12 + 264), v11);
          if (v22)
          {
            _APConnectivityHelperReplayEvent(v12, v13, v11, v22);
          }

          goto LABEL_21;
      }

      v33 = v16;
      CFDictionaryApplyBlock();
LABEL_21:
      CFRelease(v15);
      goto LABEL_22;
    }
  }

  v8 = CFSetCreateMutable(*v5, 0, MEMORY[0x277CBF158]);
  if (v8)
  {
    v7 = v8;
    CFDictionarySetValue(*(*v2 + 248), *v3, v8);
    goto LABEL_7;
  }

  if (__APConnectivityHelperRegisterForEvent_block_invoke_cold_4())
  {
    return;
  }

  v7 = 0;
  v17 = 1;
LABEL_24:
  if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    EventString = APConnectivityHelperGetEventString(*(a1 + 56));
    if (v17)
    {
      Count = 0;
    }

    else
    {
      Count = CFSetGetCount(v7);
    }

    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus APConnectivityHelperRegisterForEvent(APConnectivityHelperRef, CFTypeRef, APConnectivityHelperEventType)_block_invoke", 33554522, "[%{ptr}] Failed to register client [%{ptr}] for event %'s. %ld registered clients", v18, v19, EventString, Count);
  }

  if (v7)
  {
    goto LABEL_35;
  }
}

uint64_t APConnectivityHelperDeregisterForEvent(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APConnectivityHelperDeregisterForEvent_block_invoke;
    v6[3] = &unk_278BC7D48;
    v6[4] = &v8;
    v6[5] = a1;
    v6[6] = a2;
    v7 = a3;
    dispatch_sync(v3, v6);
    if (*(v9 + 6))
    {
      APSLogErrorAt();
      v4 = *(v9 + 6);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v9 + 6) = -6705;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __APConnectivityHelperDeregisterForEvent_block_invoke(uint64_t a1)
{
  result = _APConnectivityHelperDeregisterForEvent(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t APConnectivityHelperRegisterActivity(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APConnectivityHelperRegisterActivity_block_invoke;
    v6[3] = &unk_278BC7D48;
    v7 = a3;
    v6[5] = a1;
    v6[6] = a2;
    v6[4] = &v8;
    dispatch_sync(v3, v6);
    v4 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v9 + 6) = -6705;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void __APConnectivityHelperRegisterActivity_block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (a1 + 56);
  Value = CFDictionaryGetValue(*(*(a1 + 40) + 256), *(a1 + 56));
  if (Value && (v5 = CFRetain(Value)) != 0)
  {
    Mutable = v5;
    if (CFSetContainsValue(v5, *(a1 + 48)))
    {
      goto LABEL_26;
    }
  }

  else
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
    if (!Mutable)
    {
      __APConnectivityHelperRegisterActivity_block_invoke_cold_3();
      goto LABEL_26;
    }

    CFDictionarySetValue(*(*v2 + 256), *v3, Mutable);
  }

  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    __APConnectivityHelperRegisterActivity_block_invoke_cold_1(v2, a1, v2 + 16, Mutable);
  }

  if (CFSetGetCount(Mutable))
  {
    goto LABEL_25;
  }

  if (*v3)
  {
    __APConnectivityHelperRegisterActivity_block_invoke_cold_4();
    v12 = -6735;
  }

  else
  {
    v7 = *v2;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3052000000;
    v22[3] = __Block_byref_object_copy__0;
    v22[4] = __Block_byref_object_dispose__0;
    v22[5] = 0;
    if (*(v7 + 72))
    {
      v12 = 0;
    }

    else
    {
      v8 = [MEMORY[0x277D02AD8] activityWithType:4 reason:0];
      v9 = v8;
      if (v8)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v16 = ___APConnectivityHelperStartWakeOnWireless_block_invoke;
        v17 = &unk_278BC8318;
        v18 = v8;
        v19 = &v23;
        v20 = v22;
        v21 = v7;
        qos_class = dispatch_queue_get_qos_class(*(v7 + 24), 0);
        if (qos_class_self() >= qos_class)
        {
          v16(v15);
        }

        else
        {
          dispatch_async_and_wait(*(v7 + 24), v15);
        }

        if (v24[3])
        {
          v11 = v9;
          v12 = 0;
          *(v7 + 72) = v11;
        }

        else
        {
          v13 = NSErrorToOSStatus();
          v12 = v13 ? v13 : -72202;
          APSLogErrorAt();
        }
      }

      else
      {
        APSLogErrorAt();
        v12 = -72202;
      }
    }

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(&v23, 8);
  }

  *(*(*(a1 + 32) + 8) + 24) = v12;
  v14 = *(*(*(a1 + 32) + 8) + 24);
  if (v14)
  {
    __APConnectivityHelperRegisterActivity_block_invoke_cold_2(v14);
  }

  else
  {
LABEL_25:
    CFSetAddValue(Mutable, *(a1 + 48));
  }

LABEL_26:
  if (!*(*(*(a1 + 32) + 8) + 24) || gLogCategory_APConnectivityHelper > 90 || gLogCategory_APConnectivityHelper == -1 && !_LogCategory_Initialize())
  {
    if (!Mutable)
    {
      return;
    }

    goto LABEL_31;
  }

  __APConnectivityHelperRegisterActivity_block_invoke_cold_5(v2, a1, v2 + 4, Mutable);
  if (Mutable)
  {
LABEL_31:
    CFRelease(Mutable);
  }
}

void sub_23D2F0D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

const char *APConnectivityHelperGetActivityString(int a1)
{
  if (a1)
  {
    return "Unknown";
  }

  else
  {
    return "Wake on Wireless";
  }
}

uint64_t APConnectivityHelperDeregisterActivity(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APConnectivityHelperDeregisterActivity_block_invoke;
    v6[3] = &unk_278BC7D48;
    v6[4] = &v8;
    v6[5] = a1;
    v6[6] = a2;
    v7 = a3;
    dispatch_sync(v3, v6);
    if (*(v9 + 6))
    {
      APSLogErrorAt();
      v4 = *(v9 + 6);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v4 = 4294960591;
    *(v9 + 6) = -6705;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __APConnectivityHelperDeregisterActivity_block_invoke(uint64_t a1)
{
  result = _APConnectivityHelperDeregisterActivity(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t APConnectivityHelperRemoveAllRegistrations(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a2)
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus APConnectivityHelperRemoveAllRegistrations(APConnectivityHelperRef, CFTypeRef)", 33554482, "[%{ptr}] Remove all active registrations for client [%{ptr}]", a1, a2);
    }

    v4 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APConnectivityHelperRemoveAllRegistrations_block_invoke;
    block[3] = &unk_278BC80B8;
    block[4] = &v9;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v4, block);
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus APConnectivityHelperRemoveAllRegistrations(APConnectivityHelperRef, CFTypeRef)", 33554462, "[%{ptr}] Remove Event handler registration for [%{ptr}]", a1, a2);
    }

    v5 = *(a1 + 16);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __APConnectivityHelperDeregisterEventHandler_block_invoke;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = a1;
    v13[5] = a2;
    dispatch_sync(v5, v13);
    v6 = *(v10 + 6);
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294960591;
    *(v10 + 6) = -6705;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_23D2F10D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = CFSetCreateMutable(v2, 0, 0);
    if (v5)
    {
      v6 = v5;
      CFDictionaryApplyBlock();
      CFDictionaryApplyBlock();
      if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_1(v1 + 40, v4);
      }

      CFSetApplyBlock();
      if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_2(v1 + 40, v6);
      }

      CFSetApplyBlock();
      CFRelease(v6);
    }

    else
    {
      __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_3();
    }

    CFRelease(v4);
  }

  else
  {
    __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_4();
  }
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke_2(uint64_t a1, const void *a2, CFSetRef theSet)
{
  if (CFSetContainsValue(theSet, *(a1 + 32)))
  {
    v5 = *(a1 + 40);

    CFSetAddValue(v5, a2);
  }
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke_3(uint64_t a1, const void *a2, CFSetRef theSet)
{
  if (CFSetContainsValue(theSet, *(a1 + 32)))
  {
    v5 = *(a1 + 40);

    CFSetAddValue(v5, a2);
  }
}

void APConnectivityHelperDeregisterEventHandler(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APConnectivityHelperDeregisterEventHandler_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }

  else
  {
    APConnectivityHelperDeregisterEventHandler_cold_1();
  }
}

uint64_t APConnectivityHelperSetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), v4, _APConnectivityHelperSetEventHandler);
  return v5;
}

uint64_t *_APConnectivityHelperSetEventHandler(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  if (*(*result + 232))
  {
    result = _APConnectivityHelperSetEventHandler_cold_1();
    v3 = -72203;
  }

  else if (*(v2 + 88))
  {
    v3 = -72204;
    result = _APConnectivityHelperSetEventHandler_cold_2();
  }

  else if (*(v2 + 85))
  {
    v3 = -72204;
    result = _APConnectivityHelperSetEventHandler_cold_3();
  }

  else
  {
    v3 = 0;
    *(v2 + 216) = *(result + 1);
  }

  *(v1 + 24) = v3;
  return result;
}

uint64_t APConnectivityHelperRegisterEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    APConnectivityHelperRegisterEventHandler_cold_2();
    return 4294960591;
  }

  if (!a3)
  {
    APConnectivityHelperRegisterEventHandler_cold_1();
    return 4294960591;
  }

  v3 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APConnectivityHelperRegisterEventHandler_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
  return 0;
}

void __APConnectivityHelperRegisterEventHandler_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    __APConnectivityHelperRegisterEventHandler_block_invoke_cold_1(a1, a2, a3);
  }

  v4 = a1[5];
  v5 = *(a1[4] + 240);
  v6 = a1[6];

  CFDictionarySetValue(v5, v4, v6);
}

void __APConnectivityHelperDeregisterEventHandler_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    __APConnectivityHelperDeregisterEventHandler_block_invoke_cold_1(a1, a2, a3);
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 240);

  CFDictionaryRemoveValue(v5, v4);
}

uint64_t APConnectivityHelperCopyCurrentWiFiNetworkInfo(dispatch_queue_t *a1, CFMutableDictionaryRef *a2)
{
  v8 = 0;
  context = a1;
  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  dispatch_sync_f(a1[2], &context, _APConnectivityHelperPopulateCurrentWiFiNetworkInfo);
  if (v8)
  {
    APConnectivityHelperCopyCurrentWiFiNetworkInfo_cold_1(v8, &Mutable);
  }

  else
  {
    *a2 = Mutable;
  }

  return v8;
}

void _APConnectivityHelperPopulateCurrentWiFiNetworkInfo(uint64_t *a1)
{
  v2 = *a1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  if (*(v2 + 232))
  {
    APSLogErrorAt();
    v11 = -72203;
  }

  else
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      CFDictionarySetValue(a1[1], @"networkInterfaceName", v3);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v18 = ___APConnectivityHelperPopulateCurrentWiFiNetworkInfo_block_invoke;
      v19 = &unk_278BC7668;
      v20 = &v28;
      v21 = v2;
      qos_class = dispatch_queue_get_qos_class(*(v2 + 24), 0);
      if (qos_class_self() >= qos_class)
      {
        v18(block);
      }

      else
      {
        dispatch_async_and_wait(*(v2 + 24), block);
      }

      v5 = v29[5];
      if (v5)
      {
        CFDictionarySetValue(a1[1], @"wifiNetworkSSID", v5);
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v13 = ___APConnectivityHelperPopulateCurrentWiFiNetworkInfo_block_invoke_2;
      v14 = &unk_278BC7668;
      v15 = &v22;
      v16 = v2;
      v6 = dispatch_queue_get_qos_class(*(v2 + 24), 0);
      if (qos_class_self() >= v6)
      {
        v13(v12);
      }

      else
      {
        dispatch_async_and_wait(*(v2 + 24), v12);
      }

      v7 = v23[5];
      if (v7)
      {
        v8 = [v7 isCarPlay];
        v9 = MEMORY[0x277CBED28];
        if (!v8)
        {
          v9 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(a1[1], @"wifiNetworkIsCarPlay", *v9);
        v10 = [v23[5] carplayUUID];
        if (v10)
        {
          if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperPopulateCurrentWiFiNetworkInfo(void *)", 33554482, "[%{ptr}] WifiNetwork interface name: %@, setting carPlayUUID = %@.", v2, *(v2 + 56), v10);
          }

          CFDictionarySetValue(a1[1], @"wifiNetworkCarPlayUUID", v10);
        }
      }

      v11 = 0;
    }

    else
    {
      APSLogErrorAt();
      v11 = -72205;
    }
  }

  *(a1 + 4) = v11;
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void sub_23D2F1AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t APConnectivityHelperInvalidate(uint64_t a1)
{
  v3 = a1;
  v4 = 0;
  dispatch_sync_f(*(a1 + 16), &v3, _APConnectivityHelperInvalidate);
  dispatch_sync(*(a1 + 16), &__block_literal_global_61);
  return v4;
}

void _APConnectivityHelperFinalize(uint64_t a1)
{
  if (*(a1 + 232))
  {

    *(a1 + 144) = 0;
    *(a1 + 48) = 0;

    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    v2 = *(a1 + 112);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 112) = 0;
    }

    v3 = *(a1 + 128);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 128) = 0;
    }

    v4 = *(a1 + 136);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 136) = 0;
    }

    v5 = *(a1 + 240);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 240) = 0;
    }

    v6 = *(a1 + 248);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 248) = 0;
    }

    v7 = *(a1 + 256);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 256) = 0;
    }

    v8 = *(a1 + 264);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 264) = 0;
    }

    v9 = *(a1 + 160);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 160) = 0;
    }

    v10 = *(a1 + 168);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 168) = 0;
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      dispatch_release(v11);
      *(a1 + 16) = 0;
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      dispatch_release(v12);
      *(a1 + 24) = 0;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      dispatch_release(v13);
      *(a1 + 32) = 0;
    }
  }

  else
  {
    if (gLogCategory_APConnectivityHelper <= 100 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperFinalize_cold_1(a1);
    }

    __break(1u);
  }
}

void _APConnectivityHelperReplayEvent(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    EventString = APConnectivityHelperGetEventString(a3);
    LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperReplayEvent(APConnectivityHelperRef, CFTypeRef, APConnectivityHelperEventType, CFTypeRef)", 33554462, "[%{ptr}] Dispatching recent event %'s to client [%{ptr}]", a1, EventString, a2);
  }

  if (*MEMORY[0x277CBEEE8] == a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  _APConnectivityHelperDispatchEventToClient(a1, a2, a3, v9);
}

void _APConnectivityHelperTrySettingAWDLDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 64))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    block = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = ___APConnectivityHelperTrySettingAWDLDevice_block_invoke;
    v11 = &unk_278BC7668;
    v12 = &v14;
    v13 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v10(&block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), &block);
    }

    v5 = v15[5];
    if (!v5)
    {
      _Block_object_dispose(&v14, 8);
      return;
    }

    v6 = v5;
    *(a1 + 64) = v6;
    if (gLogCategory_APConnectivityHelper > 40)
    {
      goto LABEL_10;
    }

    if (gLogCategory_APConnectivityHelper == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_10:
        _Block_object_dispose(&v14, 8);
        if (!*(a1 + 64))
        {
          return;
        }

        goto LABEL_11;
      }

      v6 = *(a1 + 64);
    }

    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperTrySettingAWDLDevice(APConnectivityHelperRef)", 33554472, "[%{ptr}] AWDL device: %@\n", a1, v6, block, v9);
    goto LABEL_10;
  }

LABEL_11:
  if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    _APConnectivityHelperTrySettingAWDLDevice_cold_1(a1, a2, a3);
  }

  if (*(a1 + 208))
  {
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperTrySettingAWDLDevice_cold_2(a1, a2, a3);
    }

    v7 = _APConnectivityHelperDispatchEvent(a1, 7, 0);
    if (v7)
    {
      _APConnectivityHelperTrySettingAWDLDevice_cold_3(v7);
    }

    else
    {
      *(a1 + 208) = 0;
    }
  }

  _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(a1, a2, a3);
}

void sub_23D2F2024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperStartWiFiPowerListener(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = __Block_byref_object_copy__0;
  v12[4] = __Block_byref_object_dispose__0;
  v12[5] = 0;
  if (*(a1 + 85))
  {
LABEL_23:
    v3 = 0;
    goto LABEL_17;
  }

  if (!*(a1 + 56))
  {
    APSLogErrorAt();
    v3 = 4294895091;
    goto LABEL_17;
  }

  if (APSIsVirtualMachine())
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartWiFiPowerListener(APConnectivityHelperRef)", 33554482, "Ignoring WiFi power change monitoring on VirtualMachine\n");
    }

    goto LABEL_23;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartWiFiPowerListener(APConnectivityHelperRef)", 33554472, "[%{ptr}] Starting WiFi power listener.\n", a1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v7 = ___APConnectivityHelperStartWiFiPowerListener_block_invoke;
  v8 = &unk_278BC82F0;
  v9 = &v13;
  v10 = v12;
  v11 = a1;
  qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v7(block);
  }

  else
  {
    dispatch_async_and_wait(*(a1 + 24), block);
  }

  if (v14[3])
  {
    v3 = 0;
    *(a1 + 85) = 1;
  }

  else
  {
    v4 = NSErrorToOSStatus();
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = 4294895094;
    }

    APSLogErrorAt();
  }

LABEL_17:
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);
  return v3;
}

void sub_23D2F2300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperStartWiFiNetworkListener(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3052000000;
  v15[3] = __Block_byref_object_copy__0;
  v15[4] = __Block_byref_object_dispose__0;
  v15[5] = 0;
  if (*(a1 + 81))
  {
LABEL_25:
    v4 = 0;
    goto LABEL_19;
  }

  if (!*(a1 + 56))
  {
    APSLogErrorAt();
    v4 = 4294895091;
    goto LABEL_18;
  }

  if (APSIsVirtualMachine())
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartWiFiNetworkListener(APConnectivityHelperRef)", 33554482, "Ignoring WiFi network monitoring on VirtualMachine\n");
    }

    goto LABEL_25;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartWiFiNetworkListener(APConnectivityHelperRef)", 33554472, "[%{ptr}] Starting WiFi network listener.\n", a1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v10 = ___APConnectivityHelperStartWiFiNetworkListener_block_invoke;
  v11 = &unk_278BC82F0;
  v12 = &v16;
  v13 = v15;
  v14 = a1;
  qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v10(block);
  }

  else
  {
    dispatch_async_and_wait(*(a1 + 24), block);
  }

  if ((v17[3] & 1) == 0)
  {
    v5 = NSErrorToOSStatus();
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = 4294895094;
    }

    goto LABEL_17;
  }

  *(a1 + 81) = 1;
  v4 = _APConnectivityHelperHandleWiFiLinkChangedInternal(a1, 0, v3);
  if (v4)
  {
LABEL_17:
    APSLogErrorAt();
LABEL_18:
    _APConnectivityHelperStopWiFiNetworkListener(a1, v6, v7);
  }

LABEL_19:
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
  return v4;
}

void sub_23D2F25C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperStartLinkDebounceFailedListener(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3052000000;
  v14[3] = __Block_byref_object_copy__0;
  v14[4] = __Block_byref_object_dispose__0;
  v14[5] = 0;
  if (*(a1 + 83))
  {
LABEL_27:
    v3 = 0;
    goto LABEL_21;
  }

  if (!*(a1 + 56))
  {
    APSLogErrorAt();
    v3 = 4294895091;
LABEL_20:
    _APConnectivityHelperStopLinkDebounceFailedListener(a1, v5, v6);
    goto LABEL_21;
  }

  if (APSIsVirtualMachine())
  {
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartLinkDebounceFailedListener(APConnectivityHelperRef)", 33554482, "Ignoring WiFi link down debounce failed monitoring on VirtualMachine\n");
    }

    goto LABEL_27;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartLinkDebounceFailedListener(APConnectivityHelperRef)", 33554472, "[%{ptr}] Starting WiFi LinkDownDebounceFailed listener.\n", a1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v9 = ___APConnectivityHelperStartLinkDebounceFailedListener_block_invoke;
  v10 = &unk_278BC82F0;
  v11 = &v15;
  v12 = v14;
  v13 = a1;
  qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v9(block);
  }

  else
  {
    dispatch_async_and_wait(*(a1 + 24), block);
  }

  if ((v16[3] & 1) == 0)
  {
    v4 = NSErrorToOSStatus();
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = 4294895094;
    }

    if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartLinkDebounceFailedListener(APConnectivityHelperRef)", 33554522, "[%{ptr}] Failed to set up listener for LinkDownDebounceFailed, error: %#m", a1, v3);
    }

    goto LABEL_20;
  }

  v3 = 0;
  *(a1 + 83) = 1;
LABEL_21:
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  return v3;
}

void sub_23D2F28AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 209) || *(a1 + 64))
    {
      goto LABEL_8;
    }

    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted_cold_1(a1, a2, a3);
    }

    *(a1 + 209) = 1;
    updated = _APConnectivityHelperUpdateInterfaceAddedListener(a1, a2, a3);
    if (!updated)
    {
LABEL_8:
      _APConnectivityHelperTrySettingAWDLDevice(a1, a2, a3);
      return 0;
    }

    else
    {
      v5 = updated;
      _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted_cold_2(updated, a1);
    }
  }

  else
  {
    *(a1 + 210) = 1;
    v6 = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(a1);
    v5 = v6;
    if (v6)
    {
      _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted_cold_3(v6);
    }
  }

  return v5;
}

void _APConnectivityHelperDispatchEventExternal(void *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  (*a1)(v2, *(a1 + 4), v3, a1[4]);
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(v2);

  free(a1);
}

uint64_t _APConnectivityHelperStopWiFiNetworkListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 82);
  if (*(a1 + 82))
  {
    *(a1 + 82) = 0;
    v4 = 1;
  }

  if (*(a1 + 81))
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperStopWiFiNetworkListener_cold_1(a1, a2, a3);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v9 = ___APConnectivityHelperStopWiFiNetworkListener_block_invoke;
    v10 = &__block_descriptor_40_e5_v8__0l;
    v11 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v9(block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), block);
    }

    *(a1 + 81) = 0;
    v4 = 1;
  }

  result = 0;
  if (v4 && *(a1 + 216))
  {
    result = _APConnectivityHelperDispatchEvent(a1, 0x67, 0);
    if (result)
    {
      v7 = result;
      _APConnectivityHelperStopWiFiNetworkListener_cold_2(result);
      return v7;
    }
  }

  return result;
}

uint64_t _APConnectivityHelperStopLinkDebounceFailedListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 84);
  if (*(a1 + 84))
  {
    *(a1 + 84) = 0;
    v4 = 1;
  }

  if (*(a1 + 83))
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperStopLinkDebounceFailedListener_cold_1(a1, a2, a3);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v9 = ___APConnectivityHelperStopLinkDebounceFailedListener_block_invoke;
    v10 = &__block_descriptor_40_e5_v8__0l;
    v11 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v9(block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), block);
    }

    *(a1 + 83) = 0;
    v4 = 1;
  }

  result = 0;
  if (v4 && *(a1 + 216))
  {
    result = _APConnectivityHelperDispatchEvent(a1, 0x6D, 0);
    if (result)
    {
      v7 = result;
      _APConnectivityHelperStopLinkDebounceFailedListener_cold_2(result);
      return v7;
    }
  }

  return result;
}

uint64_t _APConnectivityHelperUpdateInterfaceAddedListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88) || *(a1 + 209))
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3052000000;
    v22 = __Block_byref_object_copy__0;
    v23 = __Block_byref_object_dispose__0;
    v24 = 0;
    if (APSIsVirtualMachine())
    {
      if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartInterfaceAddedListenerIfNecessary(APConnectivityHelperRef)", 33554482, "Ignoring WiFi interface monitoring on VirtualMachine\n");
      }
    }

    else if (!*(a1 + 104))
    {
      *(a1 + 104) = 1;
      if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartInterfaceAddedListenerIfNecessary(APConnectivityHelperRef)", 33554462, "[%{ptr}] Starting InterfaceAdded listening\n", a1);
      }

      if (!*(a1 + 96))
      {
        if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperStartInterfaceAddedRetryTimer(APConnectivityHelperRef)", 33554462, "[%{ptr}] Start InterfaceAdded timer\n", a1);
        }

        v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 16));
        *(a1 + 96) = v4;
        if (v4)
        {
          CFRetain(a1);
          _APConnectivityHelperUpdateInterfaceAddedListener_cold_1((a1 + 96), &block, a1, v29);
        }

        else
        {
          APSLogErrorAt();
        }
      }

      block = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = ___APConnectivityHelperStartInterfaceAddedListenerIfNecessary_block_invoke;
      v15 = &unk_278BC82F0;
      v16 = &v25;
      v17 = &v19;
      v18 = a1;
      qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
      if (qos_class_self() >= qos_class)
      {
        v14(&block);
      }

      else
      {
        dispatch_async_and_wait(*(a1 + 24), &block);
      }

      if ((v26[3] & 1) == 0)
      {
        if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartInterfaceAddedListenerIfNecessary(APConnectivityHelperRef)", 33554522, "[%{ptr}] Monitoring failed %@\n", a1, v20[5]);
        }

        _APConnectivityHelperStopInterfaceAddedRetryTimer(a1, v6, v7);
        v10 = NSErrorToOSStatus();
        if (v10)
        {
          v8 = v10;
        }

        else
        {
          v8 = 4294895094;
        }

        APSLogErrorAt();
        goto LABEL_36;
      }
    }

    v8 = 0;
LABEL_36:
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
    return v8;
  }

  if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperUpdateInterfaceAddedListener_cold_2(a1, a2, a3);
    }

    _APConnectivityHelperStopInterfaceAddedRetryTimer(a1, a2, a3);
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = ___APConnectivityHelperStopInterfaceAddedListenerIfNecessary_block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0l;
    v16 = a1;
    v9 = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= v9)
    {
      v14(&block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), &block);
    }
  }

  return 0;
}

void sub_23D2F31C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_23D2F3440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperEnsureWiFiPowerListenerStopped(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 86);
  if (*(a1 + 86))
  {
    *(a1 + 86) = 0;
    v4 = 1;
  }

  if (*(a1 + 85))
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperEnsureWiFiPowerListenerStopped_cold_1(a1, a2, a3);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v8 = ___APConnectivityHelperStopWiFiPowerListener_block_invoke;
    v9 = &__block_descriptor_40_e5_v8__0l;
    v10 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v8(v7);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), v7);
    }

    *(a1 + 85) = 0;
    v4 = 1;
  }

  if (v4 && *(a1 + 216) && (_APConnectivityHelperEnsureWiFiPowerListenerStopped_cold_2(a1, v7, &v11) & 1) == 0)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t _APConnectivityHelperEnsureWiFiNetworkListenerStopped(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _APConnectivityHelperStopWiFiNetworkListener(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    _APConnectivityHelperEnsureWiFiNetworkListenerStopped_cold_1(v3);
  }

  return v4;
}

void _APConnectivityHelperStopListeningToDynamicStoreNetworkEntity(uint64_t a1, CFStringRef entity)
{
  if (*(a1 + 168))
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], entity);
    CFDictionaryRemoveValue(*(a1 + 168), NetworkInterfaceEntity);
    if (!*(a1 + 160))
    {
      goto LABEL_11;
    }

    if (CFDictionaryGetCount(*(a1 + 168)) || *(a1 + 80))
    {
      v4 = CFDictionaryCopyKeys();
      if (!SCDynamicStoreSetNotificationKeys(*(a1 + 160), 0, v4) && SCError())
      {
        SCError();
      }

      if (!NetworkInterfaceEntity)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    SCDynamicStoreSetDispatchQueue(*(a1 + 160), 0);
    v5 = *(a1 + 160);
    if (v5)
    {
      CFRelease(v5);
      v4 = 0;
      *(a1 + 160) = 0;
      if (!NetworkInterfaceEntity)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_11:
      v4 = 0;
      if (!NetworkInterfaceEntity)
      {
LABEL_15:
        if (v4)
        {
          CFRelease(v4);
        }

        return;
      }
    }

LABEL_14:
    CFRelease(NetworkInterfaceEntity);
    goto LABEL_15;
  }
}

uint64_t _APConnectivityHelperSendAWDLSoloSupportEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 153))
  {
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperSendAWDLSoloSupportEvent_cold_1(a1, a2, a3);
    }

    v4 = *(a1 + 152);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      _APConnectivityHelperSendAWDLSoloSupportEvent_cold_2(v4, Mutable, a1, &v8);
      return v8;
    }

    else
    {
      _APConnectivityHelperSendAWDLSoloSupportEvent_cold_3();
      return 4294895096;
    }
  }

  else
  {
    v6 = 4294895095;
    _APConnectivityHelperSendAWDLSoloSupportEvent_cold_4();
  }

  return v6;
}

uint64_t _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity(uint64_t a1, CFStringRef entity, const void *a3)
{
  v19 = 0;
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  values = 0;
  if (*(a1 + 160))
  {
    goto LABEL_10;
  }

  v6 = SCDynamicStoreCreate(0, @"APConnectivityHelper: Network Listener", _APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange, &context);
  *(a1 + 160) = v6;
  if (!v6)
  {
    if (SCError())
    {
      v7 = SCError();
      v19 = v7;
      if (!v7)
      {
        v6 = *(a1 + 160);
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 4294960596;
      v19 = -6700;
    }

    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_7(v7);
    goto LABEL_44;
  }

LABEL_6:
  if (!SCDynamicStoreSetDispatchQueue(v6, *(a1 + 16)))
  {
    if (SCError())
    {
      v8 = SCError();
      v19 = v8;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = 4294960596;
      v19 = -6700;
    }

    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_6(v8);
    goto LABEL_44;
  }

  v19 = 0;
LABEL_10:
  if (!*(a1 + 168))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
    *(a1 + 168) = Mutable;
    if (!Mutable)
    {
      _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_5();
      goto LABEL_44;
    }
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], entity);
  values = NetworkInterfaceEntity;
  if (!NetworkInterfaceEntity)
  {
    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_4();
    goto LABEL_44;
  }

  CFDictionarySetValue(*(a1 + 168), NetworkInterfaceEntity, a3);
  v11 = CFDictionaryCopyKeys();
  if (v19)
  {
    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_1(v19);
    goto LABEL_45;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity(APConnectivityHelperRef, CFStringRef, APConnectivityHelperDynamicStoreCallBack)", 33554472, "[%{ptr}] Listening to SystemConfiguration key patterns: %@\n", a1, v11);
  }

  v12 = SCDynamicStoreSetNotificationKeys(*(a1 + 160), 0, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    v19 = 0;
    goto LABEL_24;
  }

  if (!SCError())
  {
    v13 = 4294960596;
    v19 = -6700;
    goto LABEL_39;
  }

  v13 = SCError();
  v19 = v13;
  if (v13)
  {
LABEL_39:
    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_3(v13);
LABEL_44:
    v11 = 0;
LABEL_45:
    v15 = 0;
    v14 = 0;
    goto LABEL_29;
  }

LABEL_24:
  v11 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
  if (!v11)
  {
    _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity_cold_2();
    goto LABEL_45;
  }

  v14 = SCDynamicStoreCopyMultiple(*(a1 + 160), 0, v11);
  if (v14)
  {
    v15 = CFDictionaryCopyKeys();
    if (v15)
    {
      _APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange(*(a1 + 160), v15, a1);
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_29:
  if (values)
  {
    CFRelease(values);
    values = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v19;
}

void _APConnectivityHelperHandleIPv4ChangedEvent(const __SCDynamicStore *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v7 = SCDynamicStoreCopyValue(a1, a2);
  v8 = v7;
  if (v7)
  {
    Value = CFDictionaryGetValue(v7, @"Addresses");
    if (!Value)
    {
      goto LABEL_5;
    }

    v9 = Value;
    CFRetain(Value);
  }

  else
  {
    v9 = CFArrayCreate(0, 0, 0, MEMORY[0x277CBF128]);
    if (!v9)
    {
LABEL_5:
      _APConnectivityHelperHandleIPv4ChangedEvent_cold_1();
      if (!v8)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  v11 = CFGetTypeID(v9);
  if (v11 == CFArrayGetTypeID())
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperHandleIPv4ChangedEvent(SCDynamicStoreRef, CFStringRef, CFStringRef, void *)", 33554472, "[%{ptr}] IPv4 Address changed (for interface %@): %@ = %@\n", a4, a3, a2, v9);
    }

    if (CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
    {
      _APConnectivityHelperHandleIPv4ChangedEvent_cold_2();
    }

    else
    {
      _APConnectivityHelperHandleIPv4ChangedEvent_cold_3();
    }
  }

  else
  {
    _APConnectivityHelperHandleIPv4ChangedEvent_cold_1();
  }

  CFRelease(v9);
  if (v8)
  {
LABEL_16:

    CFRelease(v8);
  }
}

uint64_t APTPacingControllerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPTPacingControllerInitOnce != -1)
  {
    APTPacingControllerGetTypeID_cold_1();
  }

  return gAPTPacingControllerTypeID;
}

uint64_t _APTPacingControllerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPTPacingControllerTypeID = result;
  return result;
}

uint64_t APTPacingControllerCreate(NSObject *a1, CFTypeRef *a2)
{
  if (!a1)
  {
    APTPacingControllerCreate_cold_7();
    return 4294960591;
  }

  if (!a2)
  {
    APTPacingControllerCreate_cold_6();
    return 4294960591;
  }

  if (gAPTPacingControllerInitOnce != -1)
  {
    APTPacingControllerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APTPacingControllerCreate_cold_5();
    return 4294960568;
  }

  v5 = Instance;
  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 16) = 1000 * APSSettingsGetIntWithDefault();
  *(v5 + 24) = 1000 * APSSettingsGetIntWithDefault();
  *(v5 + 72) = -1;
  v6 = FigSimpleMutexCreate();
  *(v5 + 32) = v6;
  if (v6)
  {
    dispatch_retain(a1);
    *(v5 + 40) = a1;
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a1);
    *(v5 + 48) = v7;
    if (v7)
    {
      dispatch_set_context(v7, v5);
      dispatch_source_set_event_handler_f(*(v5 + 48), pacingController_yieldTimerFire);
      dispatch_activate(*(v5 + 48));
      if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
      {
        APTPacingControllerCreate_cold_2(v5, v8, v9);
      }

      v10 = 0;
      *a2 = CFRetain(v5);
      goto LABEL_12;
    }

    APTPacingControllerCreate_cold_3();
  }

  else
  {
    APTPacingControllerCreate_cold_4();
  }

  v10 = 4294960568;
LABEL_12:
  CFRelease(v5);
  return v10;
}

void pacingController_yieldTimerFire(void *a1)
{
  v2 = 0;
  memset(v3, 0, sizeof(v3));
  FigSimpleMutexLock();
  dispatch_time_to_nsec();
  pacingController_endYieldInternal(a1, 0, v3, &v2);
  FigSimpleMutexUnlock();
  (v3[0])(v2);
  CFRelease(a1);
}

uint64_t APTPacingControllerReset(void *a1)
{
  FigSimpleMutexLock();
  if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
  {
    APTPacingControllerReset_cold_1(a1, v2, v3);
  }

  if (a1[10])
  {
    APTPacingControllerReset_cold_2();
    v4 = 4294960587;
  }

  else
  {
    v4 = 0;
    a1[7] = 0;
    a1[8] = 0;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t APTPacingControllerAddBytesSent(void *a1, uint64_t a2)
{
  dispatch_time_to_nsec();
  FigSimpleMutexLock();
  if (a1[10])
  {
    APTPacingControllerAddBytesSent_cold_1();
    v8 = 4294960587;
    goto LABEL_12;
  }

  v4 = a1[7];
  if (!v4)
  {
    a1[7] = 0;
    v4 = 0;
  }

  v5 = a1[8];
  v6 = __CFADD__(a2, v5);
  v7 = a2 + v5;
  if (v6)
  {
    v7 = -1;
  }

  a1[8] = v7;
  if (gLogCategory_APTPacingController <= 30)
  {
    if (gLogCategory_APTPacingController == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v4 = a1[7];
      v7 = a1[8];
    }

    LogPrintF(&gLogCategory_APTPacingController, "OSStatus APTPacingControllerAddBytesSent(APTPacingControllerRef, size_t)", 33554462, "[%{ptr}] addBytesSent nowNs=%llu epochNs=%llu bytesSent=%llu", a1, 0, v4, v7);
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APTPacingControllerYieldOnQueueWithContinuationFunction(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  dispatch_time_to_nsec();
  v15 = 0;
  v16 = 0;
  FigSimpleMutexLock();
  if (a1[10])
  {
    APTPacingControllerYieldOnQueueWithContinuationFunction_cold_1();
    v11 = 4294960587;
    goto LABEL_15;
  }

  a1[10] = a2;
  a1[11] = a3;
  v6 = a1[7];
  if (!v6)
  {
    a1[7] = 0;
    v6 = 0;
  }

  if (gLogCategory_APTPacingController <= 30)
  {
    if (gLogCategory_APTPacingController != -1 || (v7 = _LogCategory_Initialize(), v6 = a1[7], v7))
    {
      LogPrintF(&gLogCategory_APTPacingController, "OSStatus APTPacingControllerYieldOnQueueWithContinuationFunction(APTPacingControllerRef, dispatch_function_t, void *)", 33554462, "[%{ptr}] begYield nowNs=%llu epochNs=%llu bytesSent=%llu", a1, 0, v6, a1[8]);
      v6 = a1[7];
    }
  }

  v8 = a1[8];
  if (v8)
  {
    v9 = a1[9];
    if (v9 == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = (1000000000.0 / v9 * v8);
    }
  }

  v10 = v8 + v6;
  a1[12] = v10;
  if (v10 >= a1[3])
  {
    CFRetain(a1);
    v12 = a1[6];
    v13 = dispatch_time_from_nsec();
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, a1[2]);
    v11 = 0;
LABEL_15:
    FigSimpleMutexUnlock();
    return v11;
  }

  pacingController_endYieldInternal(a1, 0, &v16, &v15);
  v11 = v16;
  FigSimpleMutexUnlock();
  if (v11)
  {
    (v11)(v15);
    return 0;
  }

  return v11;
}

void *pacingController_endYieldInternal(void *result, uint64_t a2, void *a3, void *a4)
{
  v7 = result;
  v8 = result[7];
  v9 = a2 - v8;
  if ((a2 - v8) >= 0x3B9ACA00)
  {
    v8 += 1000000000 * (v9 / 0x3B9ACA00);
    v11 = result[8];
    v10 = result[9];
    v12 = v11 / (v9 / 0x3B9ACA00);
    v13 = v11 - v10 * (v9 / 0x3B9ACA00);
    if (v10 <= v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    result[7] = v8;
    result[8] = v14;
  }

  if (gLogCategory_APTPacingController <= 30)
  {
    if (gLogCategory_APTPacingController == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_10;
      }

      v8 = v7[7];
    }

    result = LogPrintF(&gLogCategory_APTPacingController, "void pacingController_endYieldInternal(APTPacingControllerRef, uint64_t, dispatch_function_t *, void **)", 33554462, "[%{ptr}] endYield nowNs=%llu epochNs=%llu bytesSent=%llu", v7, a2, v8, v7[8]);
  }

LABEL_10:
  *a3 = v7[10];
  v7[10] = 0;
  *a4 = v7[11];
  v7[11] = 0;
  return result;
}

uint64_t APTPacingControllerYieldOnQueueWithContinuationBlock(uint64_t *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = v3;
    v5 = APTPacingControllerYieldOnQueueWithContinuationFunction(a1, pacingController_runAndReleaseBlock, v3);
    v6 = v5;
    if (v5)
    {
      APTPacingControllerYieldOnQueueWithContinuationBlock_cold_1(v5, v4);
    }
  }

  else
  {
    APTPacingControllerYieldOnQueueWithContinuationBlock_cold_2();
    return 4294960568;
  }

  return v6;
}

void pacingController_runAndReleaseBlock(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

void pacingController_updateYieldTimerIfNeededAsync(uint64_t a1)
{
  dispatch_time_to_nsec();
  v8 = 0;
  v9 = 0;
  FigSimpleMutexLock();
  if (!*(a1 + 80))
  {
    goto LABEL_14;
  }

  if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
  {
    pacingController_updateYieldTimerIfNeededAsync_cold_1(a1, 0, v2);
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 72);
    if (v5 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = (1000000000.0 / v5 * v4);
    }
  }

  v6 = v4 + v3;
  if (v4 + v3 + *(a1 + 16) > *(a1 + 96))
  {
    goto LABEL_14;
  }

  *(a1 + 96) = v6;
  if (v6 >= *(a1 + 24))
  {
    pacingController_updateYieldTimerIfNeededAsync_cold_2(v6, (a1 + 16), *(a1 + 48));
LABEL_14:
    FigSimpleMutexUnlock();
    goto LABEL_12;
  }

  dispatch_source_set_timer(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  pacingController_endYieldInternal(a1, 0, &v9, &v8);
  v7 = v9;
  FigSimpleMutexUnlock();
  if (v7)
  {
    v7(v8);
  }

LABEL_12:
  CFRelease(a1);
}

uint64_t _APTPacingControllerFinalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
  {
    _APTPacingControllerFinalize_cold_1(a1, a2, a3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(a1 + 48));
  }

  return FigSimpleMutexDestroy();
}

uint64_t APTransportPackageTCPCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  v2 = APTransportPackageTCPCreateWithBBuf(a1, 0, a2);
  v3 = v2;
  if (v2)
  {
    APTransportPackageTCPCreate_cold_1(v2);
  }

  return v3;
}

uint64_t APTransportPackageTCPCreateWithBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  blockBufferOut = 0;
  cf = 0;
  APTransportPackageGetClassID(a1, a2);
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v13 = v6;
    APTransportPackageTCPCreateWithBBuf_cold_1(v6);
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = APTransportParcelMake(0x20uLL, 0, DerivedStorage);
  if (v8)
  {
    v13 = v8;
    APTransportPackageTCPCreateWithBBuf_cold_2(v8);
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  v15 = 0u;
  v16 = 0u;
  v9 = CMBlockBufferCopyDataBytes(a2, 0, 0x20uLL, &v15);
  if (v9)
  {
    v13 = v9;
    APTransportPackageTCPCreateWithBBuf_cold_3(v9);
    goto LABEL_12;
  }

  APTransportParcelSetMessageType(*DerivedStorage, bswap32(v16));
  DerivedStorage[1] = bswap64(*(&v15 + 1));
  *(DerivedStorage + 4) = bswap32(DWORD1(v15));
  DerivedStorage[3] = bswap64(*(&v16 + 4));
  *(DerivedStorage + 8) = bswap32(HIDWORD(v16));
  if (CMBlockBufferGetDataLength(a2) < 0x21)
  {
    goto LABEL_25;
  }

  DataLength = CMBlockBufferGetDataLength(a2);
  v11 = CMBlockBufferCreateWithBufferReference(a1, a2, 0x20uLL, DataLength - 32, 0, &blockBufferOut);
  if (v11)
  {
    v13 = v11;
    APTransportPackageTCPCreateWithBBuf_cold_4(v11);
    goto LABEL_12;
  }

  v12 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
  if (v12)
  {
    v13 = v12;
    APTransportPackageTCPCreateWithBBuf_cold_5(v12);
  }

  else
  {
LABEL_25:
    if (gLogCategory_APTransportPackageTCP <= 30 && (gLogCategory_APTransportPackageTCP != -1 || _LogCategory_Initialize()))
    {
      APTransportPackageTCPCreateWithBBuf_cold_6(&cf);
    }

    v13 = 0;
    *a3 = cf;
    cf = 0;
  }

LABEL_12:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t APTransportPackageTCPCreateWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    APTransportPackageGetClassID(a1, a2);
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      APTransportPackageTCPCreateWithMessageSize_cold_1(v5);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = APTransportParcelMake(0x20uLL, a2, DerivedStorage);
      if (v7)
      {
        v8 = v7;
        APTransportPackageTCPCreateWithMessageSize_cold_2(v7);
      }

      else
      {
        if (gLogCategory_APTransportPackageTCP <= 30 && (gLogCategory_APTransportPackageTCP != -1 || _LogCategory_Initialize()))
        {
          APTransportPackageTCPCreateWithMessageSize_cold_3(&cf);
        }

        v8 = 0;
        *a3 = cf;
      }
    }
  }

  else
  {
    APTransportPackageTCPCreateWithMessageSize_cold_4();
    return 4294894936;
  }

  return v8;
}

uint64_t APTransportPackageTCPGetHeaderSize(_DWORD *a1)
{
  if (a1)
  {
    result = 0;
    *a1 = 32;
  }

  else
  {
    v6 = v1;
    v7 = v2;
    APTransportPackageTCPGetHeaderSize_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t APTransportPackageTCPGetPayloadSize(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (!a2)
  {
    APTransportPackageTCPGetPayloadSize_cold_4(&v8);
    return v8;
  }

  if (!a1)
  {
    APTransportPackageTCPGetPayloadSize_cold_3(&v8);
    return v8;
  }

  DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v4 = DataPointer;
    APTransportPackageTCPGetPayloadSize_cold_1(DataPointer);
  }

  else if (lengthAtOffsetOut == 32)
  {
    v4 = 0;
    *a2 = bswap32(*dataPointerOut) - 32;
  }

  else
  {
    APTransportPackageTCPGetPayloadSize_cold_2();
    return 4294894936;
  }

  return v4;
}

void tcppackage_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageTCP <= 30 && (gLogCategory_APTransportPackageTCP != -1 || _LogCategory_Initialize()))
  {
    tcppackage_Finalize_cold_1(a1);
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

__CFString *tcppackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportPackageTCP %p>", a1);
  return Mutable;
}

const void *tcppackage_CopyMessageData(uint64_t a1)
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

uint64_t tcppackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t tcppackage_GetMessageType(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v1);
}

uint64_t tcppackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

uint64_t tcppackage_SetReplyToken(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 24) = a2;
  return result;
}

CMBlockBufferRef tcppackage_CreateBBufRepresentation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  MessageType = APTransportParcelGetMessageType(*DerivedStorage);
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  DataLength = CMBlockBufferGetDataLength(MessageData);
  v5 = bswap32(*(DerivedStorage + 16));
  v9[0] = bswap32(DataLength + 32);
  v9[1] = v5;
  v6 = *DerivedStorage;
  v10 = bswap64(*(DerivedStorage + 8));
  v11 = bswap32(MessageType);
  v12 = bswap64(*(DerivedStorage + 24));
  v13 = bswap32(*(DerivedStorage + 32));
  APTransportParcelCreateBBufRepresentation(v6, *MEMORY[0x277CBECE8], v9, &v8);
  return v8;
}

uint64_t tcppackage_SetGroupID(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = a2;
  return result;
}

uint64_t tcppackage_SetPackageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 16) = a2;
  return result;
}

uint64_t tcppackage_SetReplyStatus(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 32) = a2;
  return result;
}

uint64_t APTConnectionListenerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_7 != -1)
  {
    APTConnectionListenerGetTypeID_cold_1();
  }

  return qword_281309BA0;
}

uint64_t connectionlistener_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTConnectionListenerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    APTConnectionListenerCreate_cold_6(label);
    return *label;
  }

  if (!a3)
  {
    APTConnectionListenerCreate_cold_5(label);
    return *label;
  }

  if (!a7)
  {
    APTConnectionListenerCreate_cold_4(label);
    return *label;
  }

  v14 = a2;
  v15 = a1;
  if (_MergedGlobals_7 != -1)
  {
    APTConnectionListenerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v17 = Instance;
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    SNPrintF(label, 128, "APTConnectionListener.%{ptr}", Instance);
    v18 = dispatch_queue_create(label, 0);
    *(v17 + 2) = v18;
    if (v18)
    {
      result = 0;
      *(v17 + 6) = v15;
      *(v17 + 7) = v14;
      *(v17 + 4) = a3;
      *(v17 + 5) = a4;
      *(v17 + 6) = a5;
      *(v17 + 7) = a6;
      *(v17 + 8) = a7;
      *a8 = v17;
    }

    else
    {
      APTConnectionListenerCreate_cold_2(v17, &v20);
      return v20;
    }
  }

  else
  {
    APTConnectionListenerCreate_cold_3();
    return 4294895436;
  }

  return result;
}

uint64_t APTConnectionListenerResume(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  dispatch_sync_f(*(a1 + 16), &v2, connectionlistener_resumeInternal);
  return v3;
}

uint64_t APTConnectionListenerGetListeningPort(uint64_t a1, _DWORD *a2)
{
  context = a1;
  v5 = 0xFFFFFFFFLL;
  if (a2)
  {
    dispatch_sync_f(*(a1 + 16), &context, connectionlistener_getListeningPortInternal);
    result = HIDWORD(v5);
    if (HIDWORD(v5))
    {
      APSLogErrorAt();
      return HIDWORD(v5);
    }

    else
    {
      *a2 = v5;
    }
  }

  else
  {
    APTConnectionListenerGetListeningPort_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t APTConnectionListenerInvalidate(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  dispatch_sync_f(*(a1 + 16), &v2, connectionlistener_invalidateInternal);
  return v3;
}

void connectionlistener_Finalize(uint64_t a1)
{
  connectionlistener_cleanUp(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }
}

void connectionlistener_cleanUp(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    dispatch_source_cancel(*(a1 + 80));
    dispatch_release(v3);
    *(a1 + 80) = 0;
  }
}

void connectionlistener_listenerSocketEventHandler(uint64_t *a1)
{
  v1 = *a1;
  v6 = -1;
  memset(v5, 0, sizeof(v5));
  if (*(v1 + 89))
  {
    goto LABEL_16;
  }

  v2 = SocketAccept();
  if (v2)
  {
    connectionlistener_listenerSocketEventHandler_cold_1(v2, v1);
LABEL_16:
    connectionlistener_listenerSocketEventHandler_cold_4(&v6);
    return;
  }

  if (gLogCategory_APTConnectionListener <= 40 && (gLogCategory_APTConnectionListener != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTConnectionListener, "OSStatus connectionlistener_acceptConnection(APTConnectionListenerRef, SocketRef)", 33554472, "[%{ptr}] Accepted connection from %##a\n", v1, v5);
  }

  v7[0] = *v5;
  *(v7 + 12) = *&v5[12];
  v8 = v1;
  v9 = v6;
  v11 = 0uLL;
  v10 = 0;
  v3 = APSNetworkAddressCreateWithSocketAddr();
  v4 = v3;
  if (v3)
  {
    connectionlistener_listenerSocketEventHandler_cold_2(v3);
  }

  else
  {
    v11 = *(v1 + 32);
    CFRetain(v1);
    CFRetain(v10);
    APSDispatchAsyncFHelper();
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v4)
  {
    connectionlistener_listenerSocketEventHandler_cold_3(v4);
    goto LABEL_16;
  }
}

void connectionlistener_listenerSocketCancelHandler(_DWORD *a1)
{
  v2 = a1[2];
  if ((v2 & 0x80000000) == 0 && close(v2) && *__error())
  {
    __error();
  }

  free(a1);
}

void connectionlistener_deferCallConnectedCallback(uint64_t a1)
{
  (*(a1 + 24))(*a1, *(a1 + 32), *(a1 + 8), *(a1 + 16));
  CFRelease(*(a1 + 16));
  v2 = *a1;

  CFRelease(v2);
}

void connectionlistener_deferCallInvalidatedCallback(uint64_t a1)
{
  (*(a1 + 8))(*a1, *(a1 + 16));
  v2 = *a1;

  CFRelease(v2);
}

uint64_t APTransportKeepAliveControllerGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_8 != -1)
  {
    APTransportKeepAliveControllerGetClassID_cold_1();
  }

  return qword_281309BB0;
}

uint64_t APTransportKeepAliveControllerGetClassIDCallback(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APTransportKeepAliveControllerGetClassIDCallback_sClassDesc, ClassID, 1, a1);
}

void sub_23D2F59E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D2F5DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHMMutableHomeManagerConfigurationClass_block_invoke(uint64_t a1)
{
  HomeKitLibrary();
  result = objc_getClass("HMMutableHomeManagerConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getHMMutableHomeManagerConfigurationClass_block_invoke_cold_1();
  }

  getHMMutableHomeManagerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void HomeKitLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __HomeKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278BC8428;
    v2 = 0;
    HomeKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    HomeKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __HomeKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HomeKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getHMHomeManagerClass_block_invoke(uint64_t a1)
{
  HomeKitLibrary();
  result = objc_getClass("HMHomeManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getHMHomeManagerClass_block_invoke_cold_1();
  }

  getHMHomeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t APTransportConnectionUnbufferedNWCreate(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    APTransportConnectionUnbufferedNWCreate_cold_15();
    return 4294894974;
  }

  APTransportConnectionGetClassID(a1, a2);
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v21 = v10;
    APTransportConnectionUnbufferedNWCreate_cold_1(v10);
    v19 = 0;
    goto LABEL_55;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gAPTransportConnectionUnbufferedNWGutsInitOnce != -1)
  {
    APTransportConnectionUnbufferedNWCreate_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  *DerivedStorage = Instance;
  if (!Instance)
  {
    APTransportConnectionUnbufferedNWCreate_cold_14();
    v19 = 0;
    v21 = 4294960568;
    goto LABEL_55;
  }

  Instance[28] = 0u;
  Instance[29] = 0u;
  Instance[26] = 0u;
  Instance[27] = 0u;
  Instance[24] = 0u;
  Instance[25] = 0u;
  Instance[22] = 0u;
  Instance[23] = 0u;
  Instance[20] = 0u;
  Instance[21] = 0u;
  Instance[18] = 0u;
  Instance[19] = 0u;
  Instance[16] = 0u;
  Instance[17] = 0u;
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
  v13 = *DerivedStorage;
  *(v13 + 16) = 0;
  *(v13 + 24) = a3;
  *(v13 + 28) = 0;
  if (APSSettingsGetInt64())
  {
    Int64Ranged = 1601528944;
    *(v13 + 32) = 1601528944;
    v15 = (v13 + 32);
    goto LABEL_8;
  }

  if (a5)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    *(v13 + 32) = Int64Ranged;
  }

  else
  {
    Int64Ranged = *(v13 + 32);
  }

  v15 = (v13 + 32);
  if (Int64Ranged > 1601528943)
  {
    if (Int64Ranged == 1601528944)
    {
      goto LABEL_8;
    }

    v35 = 1903520099;
  }

  else
  {
    if (!Int64Ranged)
    {
      *v15 = 1601463152;
      Int64Ranged = 1601463152;
      goto LABEL_8;
    }

    v35 = 1601463152;
  }

  if (Int64Ranged != v35)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 90)
    {
      if (gLogCategory_APTransportConnectionUnbufferedNW == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_70;
        }

        Int64Ranged = *v15;
      }

      LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus APTransportConnectionUnbufferedNWCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554522, "### [%{ptr}] unsupported transport protocol '%C'", 0, Int64Ranged);
    }

LABEL_70:
    v19 = 0;
    v21 = 4294894974;
    goto LABEL_55;
  }

LABEL_8:
  if (gLogCategory_APTransportConnectionUnbufferedNW <= 50)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      Int64Ranged = *v15;
    }

    LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus APTransportConnectionUnbufferedNWCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554482, "[%{ptr}] using transport protocol '%C'", 0, Int64Ranged);
  }

LABEL_14:
  if (a5)
  {
    v16 = CFDictionaryGetInt64Ranged();
    *(v13 + 36) = CFDictionaryGetInt64() != 0;
    if (CFDictionaryGetInt64())
    {
      v17 = *v15 == 1601463152;
    }

    else
    {
      v17 = 0;
    }

    *(v13 + 37) = v17;
    if (CFDictionaryGetInt64())
    {
      v18 = *v15 == 1601463152;
    }

    else
    {
      v18 = 0;
    }

    *(v13 + 38) = v18;
    *(v13 + 39) = CFDictionaryGetInt64() != 0;
  }

  else
  {
    v16 = 0;
  }

  *(v13 + 40) = 125 * APSSettingsGetIntWithDefault();
  if (!IsAppleInternalBuild())
  {
    v19 = 0;
    goto LABEL_28;
  }

  v19 = CFStringCreateF(0, "UnbufNW[%{ptr}]::RequestData", 0);
  if (v19)
  {
    v20 = APSStallMonitorActivityCreate();
    if (v20)
    {
      v21 = v20;
      APTransportConnectionUnbufferedNWCreate_cold_3(v20);
      goto LABEL_55;
    }

LABEL_28:
    v22 = *v15;
    if (*v15 == 1601463152)
    {
      v23 = nw_protocol_copy_tcp_definition();
    }

    else if (v22 == 1601528944)
    {
      v23 = nw_protocol_copy_udp_definition();
    }

    else
    {
      if (v22 != 1903520099)
      {
        if (*(v13 + 56))
        {
LABEL_35:
          v24 = nw_protocol_copy_ip_definition();
          *(v13 + 64) = v24;
          if (v24)
          {
            v25 = FigSimpleMutexCreate();
            *(v13 + 72) = v25;
            if (v25)
            {
              v26 = FigSimpleMutexCreate();
              *(v13 + 320) = v26;
              if (v26)
              {
                v27 = APTransportConnectionCopyNWContextForType(v16);
                *(v13 + 392) = v27;
                if (v27)
                {
                  SNPrintF(label, 128, "APTransportConnectionUnbufferedNW.%{ptr}", 0);
                  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
                  v29 = dispatch_queue_create(label, initially_inactive);
                  *(v13 + 400) = v29;
                  if (v29)
                  {
                    nw_queue_context_target_dispatch_queue();
                    dispatch_activate(*(v13 + 400));
                    *(v13 + 436) = 1;
                    if (APSSettingsGetIntWithDefault() && (v30 = APTPacingControllerCreate(*(v13 + 400), (v13 + 440)), v30))
                    {
                      v21 = v30;
                      APTransportConnectionUnbufferedNWCreate_cold_5(v30);
                    }

                    else
                    {
                      v31 = APSFlatQueueCreate();
                      if (v31)
                      {
                        v21 = v31;
                        APTransportConnectionUnbufferedNWCreate_cold_6(v31);
                      }

                      else if (*(v13 + 38) && (v36 = 16, v37 = unbufnwTrackingWindowItem_Copy, v39 = 0, v40 = 0, v38 = unbufnwTrackingWindowItem_Free, v32 = APSFlatQueueCreate(), v32))
                      {
                        v21 = v32;
                        APTransportConnectionUnbufferedNWCreate_cold_7(v32);
                      }

                      else
                      {
                        if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus APTransportConnectionUnbufferedNWCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554482, "[%{ptr}] APTransportConnectionUnbufferedNW with name %'@ created", 0, a2, v36, v37, v38, v39, v40, 4, 0, 0, 0, 0);
                        }

                        if (*(v13 + 36))
                        {
                          v33 = 5;
                        }

                        else
                        {
                          v33 = 3;
                        }

                        APTTrafficMetricsCreate(&gLogCategory_APTransportConnectionUnbufferedNW, 0, (v13 + 448), v33);
                        v21 = 0;
                        *a6 = 0;
                      }
                    }
                  }

                  else
                  {
                    v21 = 4294894973;
                    APTransportConnectionUnbufferedNWCreate_cold_8();
                  }
                }

                else
                {
                  v21 = 4294894973;
                  APTransportConnectionUnbufferedNWCreate_cold_9();
                }
              }

              else
              {
                v21 = 4294894973;
                APTransportConnectionUnbufferedNWCreate_cold_10();
              }
            }

            else
            {
              v21 = 4294894973;
              APTransportConnectionUnbufferedNWCreate_cold_11();
            }
          }

          else
          {
            v21 = 4294894973;
            APTransportConnectionUnbufferedNWCreate_cold_12();
          }

          goto LABEL_55;
        }

        goto LABEL_49;
      }

      v23 = nw_protocol_copy_quic_definition();
    }

    *(v13 + 56) = v23;
    if (v23)
    {
      goto LABEL_35;
    }

LABEL_49:
    v21 = 4294894973;
    APTransportConnectionUnbufferedNWCreate_cold_13();
    goto LABEL_55;
  }

  v21 = 4294894973;
  APTransportConnectionUnbufferedNWCreate_cold_4();
LABEL_55:
  if (v19)
  {
    CFRelease(v19);
  }

  return v21;
}

uint64_t unbufnwTrackingWindowItem_Copy(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    CFRetain(v5);
  }

  *a3 = *a2;
  return 0;
}

uint64_t unbufnwTrackingWindowItem_Free(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

uint64_t unbufnw_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  unbufnwGuts_invalidate(*DerivedStorage);
  return 0;
}

void unbufnw_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    unbufnwGuts_invalidate(*DerivedStorage);
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t unbufnwGuts_invalidate(uint64_t a1)
{
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  unbufnwGuts_invalidateInternal(a1);
  FigSimpleMutexUnlock();

  return FigSimpleMutexUnlock();
}

uint64_t unbufnwGuts_handleDataPacingRateDidChange(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  unbufnwGuts_updateDataPacingInternal(a2);

  return FigSimpleMutexUnlock();
}

void unbufnwGuts_drainEventQueueAsyncOnCallbackQueue(const void *a1, NSObject *a2)
{
  CFRetain(a1);
  dispatch_retain(a2);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __unbufnwGuts_drainEventQueueAsyncOnCallbackQueue_block_invoke;
  v4[3] = &__block_descriptor_tmp_20_0;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_async(a2, v4);
}

uint64_t __unbufnwGuts_drainEventQueueAsyncOnCallbackQueue_block_invoke_2(uint64_t a1, CFArrayRef theArray)
{
  CFArrayGetValueAtIndex(theArray, 0);
  v3 = CFGetInt64();
  ValueAtIndex = FigCFArrayGetValueAtIndex();
  v5 = *(a1 + 32);
  v7 = *(v5 + 360);
  v6 = *(v5 + 368);

  return v7(v3, ValueAtIndex, v6);
}

void __unbufnwGuts_connectionReceivePackages_block_invoke(uint64_t a1, dispatch_data_t data, NSObject *a3, uint64_t a4, NSObject *a5)
{
  v10 = *(*(a1 + 32) + 448);
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
  APTTrafficMetricsMessageReadFinished(v10, size, error_code);
  unbufnwGuts_connectionHandlePackageHeader(*(a1 + 32), data, a3, 1, a4, a5);
  v13 = *(a1 + 32);
  if (a4)
  {

    CFRelease(v13);
  }

  else
  {
    v14 = v13[56];

    APTTrafficMetricsMessageReadStarted(v14, 1);
  }
}

void unbufnwGuts_connectionHandlePackageHeader(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  dataPointerOut = 0;
  maximum_length = 0;
  if (!unbufnwGuts_connectionHandlePotentialDisconnect(a1))
  {
    if (!a2)
    {
      unbufnwGuts_connectionHandlePackageHeader_cold_5(a1, v7);
      return;
    }

    if (*(a1 + 39))
    {
      if (!*(a1 + 472))
      {
        *(a1 + 472) = mach_get_times() == 0;
      }
    }

    if (*(a1 + 176))
    {
      DataPointer = CMBlockBufferGetDataPointer(*(a1 + 256), 0, 0, 0, &dataPointerOut);
      if (DataPointer)
      {
        v19 = DataPointer;
        unbufnwGuts_connectionHandlePackageHeader_cold_1(DataPointer);
        goto LABEL_25;
      }

      v12 = APSDispatchDataCopyBytes();
      if (v12)
      {
        v19 = v12;
        unbufnwGuts_connectionHandlePackageHeader_cold_2(v12);
        goto LABEL_25;
      }

      v13 = (*(a1 + 200))(*(a1 + 256), &maximum_length);
      if (v13)
      {
        v19 = v13;
        unbufnwGuts_connectionHandlePackageHeader_cold_3(v13);
        goto LABEL_25;
      }

      size = maximum_length;
      if (maximum_length)
      {
LABEL_11:
        if (*(a1 + 32) != 1601528944)
        {
          CFRetain(a1);
          APTTrafficMetricsMessageReadStarted(*(a1 + 448), 2);
          v15 = *(a1 + 248);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 0x40000000;
          v20[2] = __unbufnwGuts_connectionHandlePackageHeader_block_invoke;
          v20[3] = &__block_descriptor_tmp_33;
          v20[4] = a1;
          v20[5] = a6;
          v21 = v7;
          nw_connection_receive(v15, maximum_length, maximum_length, v20);
          return;
        }

        subrange = dispatch_data_create_subrange(a2, *(a1 + 176), size);
        if (subrange)
        {
          v17 = subrange;
          unbufnwGuts_connectionHandlePackagePayload(a1, subrange, a3, 1, v7);
          dispatch_release(v17);
          return;
        }

        unbufnwGuts_connectionHandlePackageHeader_cold_4();
        v19 = 4294894973;
LABEL_25:
        APTTrafficMetricsMessageProcessed(*(a1 + 448));
        unbufnwGuts_updateStatus(a1, v19);
        return;
      }
    }

    else
    {
      size = dispatch_data_get_size(a2);
      maximum_length = size;
      if (size)
      {
        goto LABEL_11;
      }
    }

    unbufnwGuts_connectionHandlePackagePayload(a1, MEMORY[0x277D85CC8], 0, 1, v7);
    return;
  }

  v18 = *(a1 + 448);

  APTTrafficMetricsMessageProcessed(v18);
}

void __unbufnwGuts_connectionReceivePackages_block_invoke_2(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4, nw_error_t error)
{
  v10 = *(a1 + 32);
  v11 = *(v10 + 448);
  v12 = *(v10 + 176);
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  APTTrafficMetricsMessageReadFinished(v11, v12, error_code);
  unbufnwGuts_connectionHandlePackageHeader(*(a1 + 32), a2, a3, a4, 1, error);
  v14 = *(a1 + 32);

  CFRelease(v14);
}

uint64_t APTransportPackageSetArrivalTicks(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 176);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t unbufnw_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *DerivedStorage;
  if (*(*DerivedStorage + 312) == 5)
  {
    v12 = nw_connection_copy_connected_path();
    v13 = nw_path_copy_effective_local_endpoint(v12);
    v14 = nw_path_copy_effective_remote_endpoint(v12);
    v15 = *(v11 + 32);
    address = nw_endpoint_get_address(v13);
    v17 = nw_endpoint_get_address(v14);
    v18 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UnbufferedNW:%C) %''@ Ports:%##a -> %##a Parent:[%{ptr}]\n", a1, v15, a4, address, v17, a2);
  }

  else
  {
    v18 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UnbufferedNW:%C) %''@ (Not Connected) Parent:[%{ptr}]\n", a1, *(v11 + 32), a4, a2);
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  nw_release(v12);
  nw_release(v13);
  nw_release(v14);
  return v18;
}

uint64_t unbufnw_AddEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v11 = 4294894974;
      unbufnw_AddEventCallback_cold_1();
    }

    else
    {
      v10 = *DerivedStorage;
      if (!a4)
      {
        a4 = v10[50];
      }

      unbufnwGuts_setEventCallback(v10, a2, a3, a4);
      return 0;
    }
  }

  else
  {
    v11 = 4294894974;
    unbufnw_AddEventCallback_cold_2();
  }

  return v11;
}

uint64_t unbufnw_RemoveEventCallback(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    unbufnw_RemoveEventCallback_cold_1();
    return 4294894974;
  }

  else
  {
    unbufnwGuts_setEventCallback(*DerivedStorage, 0, 0, 0);
    return 0;
  }
}

uint64_t unbufnw_SetReadyToSendCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5[41] = a2;
  v5[42] = a3;
  if (a2)
  {
    v6 = unbufnwGuts_readyToSendBatchSlow;
  }

  else
  {
    v6 = 0;
  }

  v5[43] = v6;
  v5[44] = v5;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t unbufnw_SignalDataAvailable(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  CFRetain(v1);
  v2 = v1[50];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __unbufnw_SignalDataAvailable_block_invoke;
  block[3] = &__block_descriptor_tmp_95;
  block[4] = v1;
  dispatch_async(v2, block);
  return 0;
}

uint64_t unbufnw_SetReadyToSendBatchCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5[41] = 0;
  v5[42] = 0;
  v5[43] = a2;
  v5[44] = a3;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t unbufnwGuts_handleNewConnectionInternal(uint64_t a1, NSObject *obj, int a3)
{
  if (*(a1 + 248))
  {
    unbufnwGuts_handleNewConnectionInternal_cold_1(obj);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v17 = 4294894954;
  }

  else
  {
    *(a1 + 248) = nw_retain(obj);
    v6 = nw_connection_copy_parameters(obj);
    v7 = nw_parameters_copy_required_interface(v6);
    v8 = nw_connection_copy_endpoint(obj);
    if (!v7)
    {
      v7 = nw_endpoint_copy_interface();
    }

    v9 = nw_connection_copy_description(obj);
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
    {
      v10 = *(a1 + 16);
      if (a3)
      {
        v11 = "accepting connection from";
      }

      else
      {
        v11 = "connecting to";
      }

      address = nw_endpoint_get_address(v8);
      if (v7)
      {
        name = nw_interface_get_name(v7);
      }

      else
      {
        name = "any";
      }

      v14 = "no connection info";
      if (v9)
      {
        v14 = v9;
      }

      LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus unbufnwGuts_handleNewConnectionInternal(APTransportConnectionUnbufferedNWGutsRef, nw_connection_t, Boolean)", 33554482, "[%{ptr}] %s '%##a' using '%s' interface (%s)", v10, v11, address, name, v14);
    }

    CFRetain(a1);
    nw_connection_set_queue(obj, *(a1 + 400));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __unbufnwGuts_handleNewConnectionInternal_block_invoke;
    handler[3] = &__block_descriptor_tmp_61;
    handler[4] = a1;
    nw_connection_set_state_changed_handler(obj, handler);
    *(a1 + 224) = mach_absolute_time();
    nw_connection_start(obj);
    v15 = *(a1 + 240);
    if (v15)
    {
      nw_connection_group_cancel(v15);
    }

    v16 = *(a1 + 232);
    if (v16)
    {
      nw_listener_cancel(v16);
    }

    v17 = 0;
  }

  free(v9);
  nw_release(v6);
  nw_release(v7);
  nw_release(v8);
  return v17;
}

uint64_t unbufnwGuts_handleNewConnectionGroupInternal(uint64_t a1, nw_connection_group_t group)
{
  if (*(a1 + 240))
  {
    v6 = 4294894954;
    unbufnwGuts_handleNewConnectionGroupInternal_cold_1(group);
    v4 = 0;
    goto LABEL_9;
  }

  v4 = nw_connection_group_copy_descriptor(group);
  if (!v4)
  {
    unbufnwGuts_handleNewConnectionGroupInternal_cold_2();
    v6 = 4294894973;
    goto LABEL_9;
  }

  *(a1 + 240) = nw_retain(group);
  CFRetain(a1);
  nw_connection_group_set_queue(group, *(a1 + 400));
  type = nw_group_descriptor_get_type();
  if (type == 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_3;
    v9[3] = &__block_descriptor_tmp_80;
    v9[4] = a1;
    v9[5] = group;
    nw_connection_group_set_state_changed_handler(group, v9);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_4;
    v8[3] = &__block_descriptor_tmp_82_0;
    v8[4] = a1;
    nw_connection_group_set_receive_handler(group, 0xFFFFu, 1, v8);
    *(a1 + 224) = mach_absolute_time();
  }

  else
  {
    if (type != 2)
    {
      v6 = 4294894974;
      goto LABEL_9;
    }

    state_changed_handler[0] = MEMORY[0x277D85DD0];
    state_changed_handler[1] = 0x40000000;
    state_changed_handler[2] = __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke;
    state_changed_handler[3] = &__block_descriptor_tmp_78;
    state_changed_handler[4] = a1;
    state_changed_handler[5] = group;
    nw_connection_group_set_state_changed_handler(group, state_changed_handler);
    nw_connection_group_set_new_connection_limit();
    new_connection_handler[0] = MEMORY[0x277D85DD0];
    new_connection_handler[1] = 0x40000000;
    new_connection_handler[2] = __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_2;
    new_connection_handler[3] = &__block_descriptor_tmp_79_0;
    new_connection_handler[4] = a1;
    nw_connection_group_set_new_connection_handler(group, new_connection_handler);
  }

  nw_connection_group_start(group);
  v6 = 0;
LABEL_9:
  nw_release(v4);
  return v6;
}

void __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke(uint64_t a1, uint64_t a2, nw_error_t error)
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

  *(v4 + 408) = v3;
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
    v8 = nw_connection_group_state_to_string();
    LogPrintF(&gLogCategory_APTransportConnectionUnbufferedNW, "void unbufnwGuts_multiplexConnectionGroupStateChangedHandler(APTransportConnectionUnbufferedNWGutsRef, nw_connection_group_t, nw_connection_group_state_t, nw_error_t)", v6 | 0x2000000u, "[%{ptr}] connection group state '%s'%?{end} err=%#m", v7, v8, error_code == 0, error_code);
  }

  if (v3 == 4)
  {

    CFRelease(v4);
  }
}

uint64_t __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_2(uint64_t a1, NSObject *a2)
{
  FigSimpleMutexLock();
  unbufnwGuts_handleNewConnectionInternal(*(a1 + 32), a2, 1);

  return FigSimpleMutexUnlock();
}

void __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_4(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  *(v4 + 472) = 0;
  unbufnwGuts_connectionHandlePackageHeader(v4, a2, a3, a4, 0, 0);
}

uint64_t unbufnwGuts_setEventCallback(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  FigSimpleMutexLock();
  if (a3)
  {
    if (a4)
    {
      if (a1[47] != a4)
      {
        v8 = a1[48];
        if (v8)
        {
          if (CFArrayGetCount(v8) >= 1)
          {
            unbufnwGuts_drainEventQueueAsyncOnCallbackQueue(a1, a4);
          }
        }
      }
    }
  }

  else
  {
    v9 = a1[48];
    if (v9)
    {
      CFRelease(v9);
      a1[48] = 0;
    }
  }

  v10 = a1[47];
  if (v10)
  {
    dispatch_release(v10);
  }

  if (a4)
  {
    dispatch_retain(a4);
  }

  a1[45] = a3;
  a1[46] = a2;
  a1[47] = a4;

  return FigSimpleMutexUnlock();
}

uint64_t _APTransportConnectionUnbufferedNWGutsGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPTransportConnectionUnbufferedNWGutsTypeID = result;
  return result;
}

void _APTransportConnectionUnbufferedNWGutsFinalize(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 448) = 0;
  }

  FigSimpleMutexDestroy();
  v3 = *(a1 + 168);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 216);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 280);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 288);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 304);
  if (v8)
  {
    CFRelease(v8);
  }

  nw_release(*(a1 + 232));
  nw_release(*(a1 + 240));
  nw_release(*(a1 + 248));
  v9 = *(a1 + 256);
  if (v9)
  {
    CFRelease(v9);
  }

  nw_release(*(a1 + 264));
  FigSimpleMutexDestroy();
  v10 = *(a1 + 376);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(a1 + 384);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 400);
  if (v12)
  {
    dispatch_release(v12);
  }

  nw_release(*(a1 + 392));
  v13 = *(a1 + 424);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 440);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    CFRelease(v15);
  }

  nw_release(*(a1 + 56));
  nw_release(*(a1 + 64));
  if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    _APTransportConnectionUnbufferedNWGutsFinalize_cold_1(a1);
  }
}

uint64_t APBrokerGroupGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPBrokerGroupInitOnce != -1)
  {
    APBrokerGroupGetTypeID_cold_1();
  }

  return gAPBrokerGroupTypeID;
}

uint64_t _APBrokerGroupGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPBrokerGroupTypeID = result;
  return result;
}

uint64_t APBrokerGroupCreate(const void *a1, CFTypeRef *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  *label = 0u;
  v15 = 0u;
  if (!a2)
  {
    APBrokerGroupCreate_cold_9();
    return 4294960591;
  }

  if (!a1)
  {
    APBrokerGroupCreate_cold_8();
    return 4294960591;
  }

  if (gAPBrokerGroupInitOnce != -1)
  {
    APBrokerGroupGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APBrokerGroupCreate_cold_7();
    return 4294960568;
  }

  v5 = Instance;
  Instance[6] = 0u;
  Instance[7] = 0u;
  Instance[4] = 0u;
  Instance[5] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  Instance[1] = 0u;
  *(Instance + 2) = CFRetain(a1);
  v6 = FigSimpleMutexCreate();
  v5[3] = v6;
  if (v6)
  {
    SNPrintF(label, 64, "APBrokerGroup.notification.%{ptr}", v5);
    v7 = dispatch_queue_create(label, 0);
    v5[12] = v7;
    if (v7)
    {
      SNPrintF(label, 64, "APBrokerGroup.polling.%{ptr}", v5);
      v8 = dispatch_queue_create(label, 0);
      v5[13] = v8;
      if (v8)
      {
        v9 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v5[5] = Mutable;
        if (Mutable)
        {
          v11 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v5[7] = v11;
          if (v11)
          {
            *a2 = CFRetain(v5);
            if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APBrokerGroup, "OSStatus APBrokerGroupCreate(CFStringRef, APBrokerGroupRef *)", 33554482, "[%{ptr}] Creating broker group with ID %@\n", v5, a1, *label, *&label[8], v15, v16, v17);
            }

            v12 = 0;
            goto LABEL_16;
          }

          APBrokerGroupCreate_cold_2();
        }

        else
        {
          APBrokerGroupCreate_cold_3();
        }
      }

      else
      {
        APBrokerGroupCreate_cold_4();
      }
    }

    else
    {
      APBrokerGroupCreate_cold_5();
    }
  }

  else
  {
    APBrokerGroupCreate_cold_6();
  }

  v12 = 4294960568;
LABEL_16:
  CFRelease(v5);
  return v12;
}

uint64_t APBrokerGroupInvalidate(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 80) = 0;
  ++*(a1 + 88);
  v3 = *(a1 + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___APBrokerGroupStopReceiverPollingInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_67;
  block[4] = a1;
  dispatch_sync(v3, block);
  *(a1 + 32) = 1;
  return FigSimpleMutexUnlock();
}

CFDictionaryRef APBrokerGroupCopyReceivers(uint64_t a1, int *a2)
{
  FigSimpleMutexLock();
  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 56));
  if (Copy)
  {
    v5 = 0;
  }

  else
  {
    APBrokerGroupCopyReceivers_cold_1();
    v5 = -6728;
  }

  FigSimpleMutexUnlock();
  if (a2)
  {
    *a2 = v5;
  }

  return Copy;
}

BOOL APBrokerGroupIsEmpty(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = CFDictionaryGetCount(*(a1 + 40)) == 0;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APBrokerGroupSetDelegate(uint64_t a1, const void *a2, void *a3)
{
  FigSimpleMutexLock();
  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 80) = 0;
  ++*(a1 + 88);
  if (a3)
  {
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 80) = v7;
    *(a1 + 72) = *a3;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APBrokerGroupAddOrUpdateBroker(uint64_t a1, const void *a2)
{
  cf1 = 0;
  key = 0;
  value = 0;
  v4 = APBrokerCopyBrokerInfoFromBonjourInfo(a2, &key, &cf1);
  if (v4)
  {
    v10 = v4;
    APBrokerGroupAddOrUpdateBroker_cold_1(v4);
    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  if (cf1 != v5 && (!cf1 || !v5 || !CFEqual(cf1, v5)))
  {
    APBrokerGroupAddOrUpdateBroker_cold_2();
    v10 = 4294960591;
    goto LABEL_23;
  }

  FigSimpleMutexLock();
  v6 = CFDictionaryGetValue(*(a1 + 40), key);
  if (v6)
  {
    v7 = v6;
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrokerGroup, "OSStatus APBrokerGroupAddOrUpdateBroker(APBrokerGroupRef, CFDictionaryRef)", 33554462, "[%{ptr}] Updating broker [%{ptr}]\n", a1, v7);
    }

    v11 = APBrokerUpdate(v7, a2);
    v10 = v11;
    if (v11)
    {
      APBrokerGroupAddOrUpdateBroker_cold_3(v11);
      goto LABEL_21;
    }

LABEL_19:
    if (!*(a1 + 48))
    {
      *(a1 + 48) = CFRetain(key);
      _APBrokerDoReceiverPollingIfNecessary(a1, 5);
    }

    goto LABEL_21;
  }

  v8 = APBrokerCreate(a2, &value);
  v9 = value;
  if (value)
  {
    v10 = v8;
    if (gLogCategory_APBrokerGroup <= 30)
    {
      if (gLogCategory_APBrokerGroup != -1 || (v12 = _LogCategory_Initialize(), v9 = value, v12))
      {
        LogPrintF(&gLogCategory_APBrokerGroup, "OSStatus APBrokerGroupAddOrUpdateBroker(APBrokerGroupRef, CFDictionaryRef)", 33554462, "[%{ptr}] Adding broker [%{ptr}]\n", a1, v9);
        v9 = value;
      }
    }

    CFDictionarySetValue(*(a1 + 40), key, v9);
    goto LABEL_19;
  }

  APBrokerGroupAddOrUpdateBroker_cold_4();
  v10 = 4294960568;
LABEL_21:
  FigSimpleMutexUnlock();
  if (value)
  {
    CFRelease(value);
  }

LABEL_23:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (key)
  {
    CFRelease(key);
  }

  return v10;
}

uint64_t APBrokerGroupRemoveBroker(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v3 = APBrokerCopyBrokerInfoFromBonjourInfo(a2, &v13, &v12);
  if (v3)
  {
    v10 = v3;
    APBrokerGroupRemoveBroker_cold_1(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    if (v12 == v4 || v12 && v4 && CFEqual(v12, v4))
    {
      FigSimpleMutexLock();
      Value = CFDictionaryGetValue(*(a1 + 40), v13);
      if (!Value)
      {
LABEL_20:
        FigSimpleMutexUnlock();
        v10 = 0;
        goto LABEL_21;
      }

      v6 = Value;
      if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APBrokerGroup, "OSStatus APBrokerGroupRemoveBroker(APBrokerGroupRef, CFDictionaryRef)", 33554462, "[%{ptr}] Removing broker [%{ptr}]\n", a1, v6);
      }

      v7 = *(a1 + 48);
      if (v12 != v7)
      {
        if (!v12 || !v7 || !CFEqual(v12, v7))
        {
LABEL_18:
          APBrokerInvalidate();
          CFDictionaryRemoveValue(*(a1 + 40), v13);
          if (!*(a1 + 48))
          {
            CFDictionaryApplyBlock();
            if (!*(a1 + 48))
            {
              if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
              {
                APBrokerGroupRemoveBroker_cold_3(a1, v8, v9);
              }

              _APBrokerGroupRemoveAllReceivers(a1);
            }
          }

          goto LABEL_20;
        }

        v7 = *(a1 + 48);
      }

      if (v7)
      {
        CFRelease(v7);
        *(a1 + 48) = 0;
      }

      goto LABEL_18;
    }

    APBrokerGroupRemoveBroker_cold_2();
    v10 = 4294960591;
  }

LABEL_21:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

void *__APBrokerGroupRemoveBroker_block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if (!*(result[4] + 48))
  {
    v3 = result;
    GroupID = APBrokerGroupGetGroupID(a3);
    result = CFRetain(GroupID);
    *(v3[4] + 48) = result;
  }

  return result;
}

void APBrokerGroupAuthenticate(uint64_t a1, const void *a2, void *aBlock)
{
  v6 = gLogCategory_APBrokerGroup;
  if (gLogCategory_APBrokerGroup <= 50)
  {
    if (gLogCategory_APBrokerGroup != -1)
    {
LABEL_3:
      if (v6 > 30)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6 == -1 && _LogCategory_Initialize() == 0;
      }

      LogPrintF(&gLogCategory_APBrokerGroup, "void APBrokerGroupAuthenticate(APBrokerGroupRef, CFStringRef, APBrokerGroupAuthenticateCallbackBlock)", 33554482, "[%{ptr}] Authenticating%?{end} with token %@\n", a1, v7, a2);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      v6 = gLogCategory_APBrokerGroup;
      goto LABEL_3;
    }
  }

LABEL_11:
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 96);
  dispatch_retain(v9);
  v10 = CFRetain(*(a1 + 16));
  if (a2)
  {
    CFRetain(a2);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __APBrokerGroupAuthenticate_block_invoke;
  v12[3] = &__block_descriptor_tmp_12_1;
  v12[4] = a1;
  v12[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __APBrokerGroupAuthenticate_block_invoke_2;
  v11[3] = &unk_278BC87B8;
  v11[4] = v8;
  v11[5] = v9;
  v11[6] = v10;
  v11[7] = a2;
  _APBrokerGroupCallAllBrokers(a1, v12, v11);
}

void _APBrokerGroupCallAllBrokers(uint64_t a1, const void *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040425D96D4uLL);
  if (!v6)
  {
    _APBrokerGroupCallAllBrokers_cold_2();
    return;
  }

  v7 = v6;
  *v6 = a1;
  if (gLogCategory_APBrokerGroup <= 30)
  {
    v8 = a1;
    if (gLogCategory_APBrokerGroup != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_APBrokerGroup, "void _APBrokerGroupCallAllBrokers(APBrokerGroupRef, APBrokerGroupBrokerOperationBlock, APBrokerGroupBrokerOperationCleanupBlock)", 33554462, "[%{ptr}] [%{ptr}] Calling all brokers\n", v8, v7 + 5);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v8 = *v7;
      goto LABEL_4;
    }
  }

LABEL_6:
  v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v7[1] = v9;
  if (!v9)
  {
    v14 = 584;
LABEL_18:
    _APBrokerGroupCallAllBrokers_cold_1(v14, a3, a1, v7);
    return;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  v7[4] = Mutable;
  if (!Mutable)
  {
    v14 = 587;
    goto LABEL_18;
  }

  v11 = _Block_copy(a2);
  v7[2] = v11;
  if (!v11)
  {
    v14 = 590;
    goto LABEL_18;
  }

  v12 = _Block_copy(a3);
  v7[3] = v12;
  if (!v12)
  {
    v14 = 593;
    goto LABEL_18;
  }

  _APBrokerGroupCallNextBroker(a1, v7, v13);
}

void __APBrokerGroupAuthenticate_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = ___APBrokerGroupAuthenticateWithOneBroker_block_invoke;
  v10[3] = &unk_278BC89B0;
  v10[6] = a4;
  v10[7] = a3;
  v10[4] = v9;
  v10[5] = v8;
  APBrokerAuthenticate(a3, v7, v10);
}

void __APBrokerGroupAuthenticate_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(*(a1 + 40));
  v3 = *(a1 + 32);

  _Block_release(v3);
}

void APBrokerGroupGetInfo(uint64_t a1, void *aBlock, uint64_t a3)
{
  if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    APBrokerGroupGetInfo_cold_1(a1, aBlock, a3);
  }

  v5 = _Block_copy(aBlock);
  v6 = *(a1 + 96);
  dispatch_retain(v6);
  v7 = CFRetain(*(a1 + 16));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __APBrokerGroupGetInfo_block_invoke;
  v9[3] = &__block_descriptor_tmp_18_0;
  v9[4] = a1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __APBrokerGroupGetInfo_block_invoke_2;
  v8[3] = &unk_278BC8828;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v7;
  _APBrokerGroupCallAllBrokers(a1, v9, v8);
}

void __APBrokerGroupGetInfo_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v7 = *(a1 + 32);
  v8 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = ___APBrokerGroupGetInfoWithOneBroker_block_invoke;
  v10[3] = &unk_278BC89D8;
  v10[6] = a4;
  v10[7] = a3;
  v10[4] = v8;
  v10[5] = v7;
  APBrokerGetInfo(a3, v10, v9);
}

void __APBrokerGroupGetInfo_block_invoke_2(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __APBrokerGroupGetInfo_block_invoke_3;
  v10[3] = &unk_278BC8800;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = a3;
  v9 = *(a1 + 48);
  v10[4] = v8;
  v10[5] = v9;
  v10[6] = cf;
  dispatch_async(v7, v10);
  dispatch_release(*(a1 + 40));
}

void __APBrokerGroupGetInfo_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(*(a1 + 40));
  v3 = *(a1 + 32);

  _Block_release(v3);
}

void APBrokerGroupResolveReceiverDNSName(uint64_t a1, const void *a2, void *a3)
{
  if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    APBrokerGroupResolveReceiverDNSName_cold_1();
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (Value)
  {
    v7 = CFRetain(Value);
    FigSimpleMutexUnlock();
    if (v7)
    {
      ReceiverGroupUUID = APBrokeredReceiverGetReceiverGroupUUID(v7);
      if (ReceiverGroupUUID)
      {
        v9 = ReceiverGroupUUID;
        if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APBrokerGroup, "void APBrokerGroupResolveReceiverDNSName(APBrokerGroupRef, CFStringRef, APBrokerResolveBrokeredAddressCallbackBlock)", 33554462, "[%{ptr}] Resolving with receiver group UUID %@ public receiver UUID %@\n", a1, v9, a2);
        }

        v10 = _Block_copy(a3);
        if (v10)
        {
          v11 = v10;
          v12 = *(a1 + 96);
          dispatch_retain(v12);
          if (a2)
          {
            CFRetain(a2);
          }

          CFRetain(v9);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 0x40000000;
          v16[2] = __APBrokerGroupResolveReceiverDNSName_block_invoke;
          v16[3] = &__block_descriptor_tmp_24_0;
          v16[4] = a1;
          v16[5] = v9;
          v16[6] = a2;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 0x40000000;
          v15[2] = __APBrokerGroupResolveReceiverDNSName_block_invoke_2;
          v15[3] = &unk_278BC8898;
          v15[4] = v11;
          v15[5] = v12;
          v15[6] = a2;
          v15[7] = v9;
          _APBrokerGroupCallAllBrokers(a1, v16, v15);
          CFRelease(v7);
          return;
        }

        v13 = 4294960568;
      }

      else
      {
        v13 = 4294960587;
      }

      APSLogErrorAt();
      if (a2)
      {
        CFRelease(a2);
      }

      a2 = v7;
      goto LABEL_17;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  v13 = 4294960587;
  if (!APBrokerGroupResolveReceiverDNSName_cold_2(a2))
  {
LABEL_17:
    CFRelease(a2);
  }

  v14 = a3[2];

  v14(a3, v13, 0, 0, 0);
}

void __APBrokerGroupResolveReceiverDNSName_block_invoke(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = ___APBrokerGroupResolveReceiverDNSNameWithOneBroker_block_invoke;
  v11[3] = &unk_278BC8A00;
  v11[6] = a4;
  v11[7] = a3;
  v11[4] = v10;
  v11[5] = v8;
  APBrokerGetReceiverConnectivityInfo(a3, v7, v9, v11);
}

void __APBrokerGroupResolveReceiverDNSName_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8 = a3;
    __APBrokerGroupResolveReceiverDNSName_block_invoke_2_cold_1(a3);
    v5 = 0;
    Int64Ranged = 0;
    TypedValue = 0;
  }

  else
  {
    v5 = a4;
    if (a4)
    {
      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (TypedValue)
      {
        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (Int64Ranged)
        {
          v8 = 0;
          v5 = CFDictionaryGetInt64Ranged();
        }

        else
        {
          __APBrokerGroupResolveReceiverDNSName_block_invoke_2_cold_2();
          v5 = 0;
          v8 = -6705;
        }

        CFRetain(TypedValue);
        goto LABEL_7;
      }

      __APBrokerGroupResolveReceiverDNSName_block_invoke_2_cold_3();
      v5 = 0;
      Int64Ranged = 0;
    }

    else
    {
      __APBrokerGroupResolveReceiverDNSName_block_invoke_2_cold_4();
      Int64Ranged = 0;
      TypedValue = 0;
    }

    v8 = -6705;
  }

LABEL_7:
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __APBrokerGroupResolveReceiverDNSName_block_invoke_3;
  v11[3] = &unk_278BC8870;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v11[5] = TypedValue;
  v12 = v8;
  v13 = v5;
  v14 = Int64Ranged;
  dispatch_async(v9, v11);
  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(*(a1 + 56));
  dispatch_release(*(a1 + 40));
}

void __APBrokerGroupResolveReceiverDNSName_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  _Block_release(v3);
}

uint64_t APBrokerGroupStartReceiverPolling(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = *(a1 + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APBrokerGroupStartReceiverPolling_block_invoke;
  block[3] = &unk_278BC8920;
  block[4] = &v7;
  block[5] = a1;
  dispatch_sync(v2, block);
  if (*(v8 + 6))
  {
    v3 = *(a1 + 104);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = ___APBrokerGroupStopReceiverPollingInternal_block_invoke;
    v11[3] = &__block_descriptor_tmp_67;
    v11[4] = a1;
    dispatch_sync(v3, v11);
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __APBrokerGroupStartReceiverPolling_block_invoke_2(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = *(v1 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APBrokerGroupStartReceiverPolling_block_invoke_3;
    block[3] = &__block_descriptor_tmp_28_0;
    block[4] = v1;
    dispatch_async(v2, block);
  }
}

void __APBrokerGroupStartReceiverPolling_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    __APBrokerGroupStartReceiverPolling_block_invoke_3_cold_1(v4, a2, a3);
  }

  _APBrokerGroupCallAllBrokers(v4, &__block_literal_global_9, &__block_literal_global_62);
  v5 = *(a1 + 32);

  CFRelease(v5);
}

void _APBrokerGroupFinalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    _APBrokerGroupFinalize_cold_1(a1, a2, a3);
  }

  if (*(a1 + 32))
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      dispatch_release(v4);
      *(a1 + 120) = 0;
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      dispatch_release(v6);
      *(a1 + 104) = 0;
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      dispatch_release(v7);
      *(a1 + 96) = 0;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 56) = 0;
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 48) = 0;
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 40) = 0;
    }

    if (*(a1 + 24))
    {
      FigSimpleMutexDestroy();
      *(a1 + 24) = 0;
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 16) = 0;
    }
  }

  else
  {
    v12 = FatalErrorF("[%{ptr}] Not invalidated before finalize", a1);
    _APBrokerGroupCallNextBroker(v12, v13, v14);
  }
}

void _APBrokerGroupCallNextBroker(uint64_t a1, void *a2, uint64_t a3)
{
  if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    _APBrokerGroupCallNextBroker_cold_1(a2, a2, a3);
  }

  v5 = a2[4];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  FigSimpleMutexLock();
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = CFSetContainsValue(v5, v6);
    v8 = v19;
    if (!v7)
    {
      v19[3] = *(a1 + 48);
    }
  }

  else
  {
    v8 = v19;
  }

  v9 = v8[3];
  if (v9 || (v17[6] = MEMORY[0x277D85DD0], v17[7] = 0x40000000, v17[8] = ___APBrokerGroupCopyNextBroker_block_invoke, v17[9] = &unk_278BC8988, v17[10] = &v18, v17[11] = v5, CFDictionaryApplyBlock(), (v9 = v19[3]) != 0))
  {
    Value = CFDictionaryGetValue(*(a1 + 40), v9);
    if (Value)
    {
      v11 = CFRetain(Value);
      if (v11)
      {
        v12 = v11;
        CFSetAddValue(v5, v19[3]);
        goto LABEL_13;
      }
    }

    _APBrokerGroupCallNextBroker_cold_2();
  }

  v12 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  _Block_object_dispose(&v18, 8);
  if (v12)
  {
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrokerGroup, "void _APBrokerGroupCallNextBroker(APBrokerGroupRef, APBrokerGroupOperationData *)", 33554462, "[%{ptr}] [%{ptr}] Chose broker [%{ptr}]. Processing.\n", *a2, a2 + 5, v12);
    }

    v15 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v15)
    {
      v16 = a2[2];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 0x40000000;
      v17[2] = ___APBrokerGroupCallNextBroker_block_invoke;
      v17[3] = &__block_descriptor_tmp_41_0;
      v17[4] = v15;
      v17[5] = a2;
      (*(v16 + 16))(v16, a1, v12, a2 + 5, v17);
    }

    else
    {
      _APBrokerGroupCallNextBroker_cold_3();
    }

    CFRelease(v12);
  }

  else
  {
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
    {
      _APBrokerGroupCallNextBroker_cold_4(a2, v13, v14);
    }

    _APBrokerGroupDoneCallingBrokers(a1, a2);
  }
}

void _APBrokerGroupFreeOperationData(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  free(a1);
}

void _APBrokerGroupDoneCallingBrokers(uint64_t a1, void *a2)
{
  v3 = (a2 + 4);
  if (CFSetGetCount(a2[4]))
  {
    if (!*(a2 + 40) && *(a2 + 11) == 0)
    {
      if (gLogCategory_APBrokerGroup > 60)
      {
        goto LABEL_15;
      }

      if (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APBrokerGroup, "void _APBrokerGroupDoneCallingBrokers(APBrokerGroupRef, APBrokerGroupOperationData *)", 33554492, "[%{ptr}] [%{ptr}] Unexpected: Both done and error not set\n", *a2, a2 + 5);
      }
    }
  }

  if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    _APBrokerGroupDoneCallingBrokers_cold_1(a2, v3);
  }

LABEL_15:
  (*(a2[3] + 16))();

  _APBrokerGroupFreeOperationData(a2);
}

uint64_t APTransportConnectionTCPUnbufferedCreate(uint64_t a1, const void *a2, int a3, uint64_t a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    APTransportConnectionTCPUnbufferedCreate_cold_5();
    return 4294894974;
  }

  v8 = a4;
  APTransportConnectionGetClassID(a1, a2);
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    v25 = v11;
    APTransportConnectionTCPUnbufferedCreate_cold_1(v11);
    return v25;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(DerivedStorage + 16) = v13;
  *(DerivedStorage + 56) = a3;
  *(DerivedStorage + 60) = 5;
  Value = CFDictionaryGetValue(a5, @"ReadyToSendCallbackQueuePool");
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(DerivedStorage + 64) = Value;
  *(DerivedStorage + 72) = CFDictionaryGetInt64() != 0;
  *(DerivedStorage + 72) = APSSettingsGetIntWithDefault() != 0;
  CFUUIDGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  *(DerivedStorage + 144) = TypedValue;
  if (TypedValue)
  {
    CFRetain(TypedValue);
  }

  SNPrintF(label, 128, "APTransportConnectionTCPUnbuffered.%{ptr}", 0);
  if (v8)
  {
    v16 = FigDispatchQueueCreateWithPriority();
  }

  else
  {
    v16 = dispatch_queue_create(label, 0);
  }

  *(DerivedStorage + 8) = v16;
  SNPrintF(label, 128, "APTransportConnectionTCPUnbuffered.callbackState.%{ptr}", 0);
  v17 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 24) = v17;
  if (!v17)
  {
    v25 = 4294894973;
    APTransportConnectionTCPUnbufferedCreate_cold_4();
    return v25;
  }

  SNPrintF(label, 128, "APTransportConnectionTCPUnbuffered.notification.%{ptr}", 0);
  v18 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 352) = v18;
  if (!v18)
  {
    APTransportConnectionTCPUnbufferedCreate_cold_3(&v27);
    return LODWORD(v27.value);
  }

  v19 = FigSimpleMutexCreate();
  *(DerivedStorage + 200) = v19;
  if (!v19)
  {
    APTransportConnectionTCPUnbufferedCreate_cold_2(&v27);
    return LODWORD(v27.value);
  }

  *(DerivedStorage + 324) = 0x1E0000000ALL;
  CMTimeMake(&v27, 2000, 1000);
  *(DerivedStorage + 360) = v27;
  *(DerivedStorage + 332) = 4000;
  *(DerivedStorage + 340) = 1;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 340) = CFPreferenceNumberWithDefault;
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 40)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered != -1)
    {
      v21 = CFPreferenceNumberWithDefault;
LABEL_19:
      if (v21)
      {
        v22 = "en";
      }

      else
      {
        v22 = "dis";
      }

      LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_initFromPrefs(TCPConnectionUnbufferedStorage *)", 33554472, "low watermark writes %sabled\n", v22);
      goto LABEL_24;
    }

    if (_LogCategory_Initialize())
    {
      v21 = *(DerivedStorage + 340);
      goto LABEL_19;
    }
  }

LABEL_24:
  *(DerivedStorage + 336) = CFDictionaryGetInt64();
  *(DerivedStorage + 342) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  *(DerivedStorage + 232) = dispatch_queue_create("APTransportConnectionTCP.netinfo", 0);
  *(DerivedStorage + 240) = xmmword_23D383870;
  *(DerivedStorage + 256) = 1;
  *(DerivedStorage + 264) = 0x3FE0000000000000;
  *(DerivedStorage + 272) = 0;
  *(DerivedStorage + 280) = 0;
  *(DerivedStorage + 288) = 20;
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
  {
    v23 = "yes";
    if (!*(DerivedStorage + 72))
    {
      v23 = "no";
    }

    LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "OSStatus APTransportConnectionTCPUnbufferedCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554482, "[%{ptr}] Unbuffered TCP connection '%@' created. Connection QoS: %d, WriteSourceQueuePool: [%{ptr}], UseNonBlockingSend: %s\n", 0, a2, *(DerivedStorage + 336), *(DerivedStorage + 64), v23);
  }

  if (*(DerivedStorage + 340))
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  APTTrafficMetricsCreate(&gLogCategory_APTransportConnectionTCPUnbuffered, 0, (DerivedStorage + 584), v24);
  *a6 = 0;
  return 0;
}

uint64_t tcpunbuf_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), a1, tcpunbuf_invalidateInternal);
  return 0;
}

uint64_t tcpunbuf_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), a1, tcpunbuf_invalidateInternal);
  APSDispatchSyncFlush();
  if (*(DerivedStorage + 64))
  {
    APSPriorityDispatchQueuePoolSyncFlush();
  }

  APSDispatchSyncFlush();
  v3 = *(DerivedStorage + 584);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 584) = 0;
  }

  v4 = *(DerivedStorage + 152);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 152) = 0;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 16) = 0;
  }

  v6 = *(DerivedStorage + 144);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 144) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 576);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 576) = 0;
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 24) = 0;
  }

  v10 = *(DerivedStorage + 48);
  if (v10)
  {
    dispatch_release(v10);
    *(DerivedStorage + 48) = 0;
  }

  v11 = *(DerivedStorage + 8);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 8) = 0;
  }

  v12 = *(DerivedStorage + 352);
  if (v12)
  {
    dispatch_release(v12);
    *(DerivedStorage + 352) = 0;
  }

  v13 = *(DerivedStorage + 232);
  if (v13)
  {
    dispatch_release(v13);
    *(DerivedStorage + 232) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 200) = 0;
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered != -1)
    {
      return tcpunbuf_Finalize_cold_1(a1, v15, v16);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return tcpunbuf_Finalize_cold_1(a1, v15, v16);
    }
  }

  return result;
}

__CFString *tcpunbuf_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportConnectionTCPUnbuffered %p '%@'>", a1, *(DerivedStorage + 16));
  return Mutable;
}

void tcpunbuf_cleanUp(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 168))
  {
    if (!*(DerivedStorage + 176) || (APSPriorityDispatchSourceResume(), *(DerivedStorage + 176) = 0, *(DerivedStorage + 168)))
    {
      APSPriorityDispatchSourceCancel();
      CFRelease(*(DerivedStorage + 168));
      *(DerivedStorage + 168) = 0;
    }
  }

  v2 = *(DerivedStorage + 160);
  if (v2)
  {
    dispatch_source_cancel(*(DerivedStorage + 160));
    dispatch_release(v2);
    *(DerivedStorage + 160) = 0;
  }

  *(DerivedStorage + 180) = 6;
  v3 = *(DerivedStorage + 152);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 152) = 0;
  }
}

void tcpunbuf_clearCallbackState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[4] = 0;
  DerivedStorage[5] = 0;
  v2 = DerivedStorage[6];
  if (v2)
  {
    dispatch_release(v2);
    DerivedStorage[6] = 0;
  }
}

uint64_t tcpunbuf_setPropertyInternal(void *a1)
{
  v24 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = APSWrapperGetValue();
  v4 = (a1 + 1);
  if (!CFEqual(a1[1], @"PackageType"))
  {
    if (CFEqual(*v4, @"RemoteNetworkIPAddress"))
    {
      if (Value)
      {
        tcpunbuf_setPropertyInternal_cold_2();
        return v24;
      }

      v6 = a1[2];
      if (!v6 || (v7 = CFGetTypeID(v6), v7 != APSNetworkAddressGetTypeID()))
      {
        tcpunbuf_setPropertyInternal_cold_3();
        return v24;
      }

      APSNetworkAddressGetSocketAddr();
      *(DerivedStorage + 104) = *v23;
      *(DerivedStorage + 116) = *&v23[12];
    }

    else
    {
      if (!CFEqual(*v4, @"RemoteNetworkPort"))
      {
        if (CFEqual(*v4, @"BoundInterfaceIndex"))
        {
          if (Value)
          {
            tcpunbuf_setPropertyInternal_cold_6();
          }

          else
          {
            *(DerivedStorage + 136) = CFGetInt64();
            if (v24)
            {
              tcpunbuf_setPropertyInternal_cold_7(v24);
            }
          }
        }

        else if (CFEqual(*v4, @"PackageSendTimeout"))
        {
          v11 = CFGetInt64Ranged();
          *(DerivedStorage + 328) = v11;
          if (v24)
          {
            tcpunbuf_setPropertyInternal_cold_8(v24);
          }

          else
          {
            if (v11 && Value)
            {
              SocketSetTCPTimeout();
            }

            if (gLogCategory_APTransportConnectionTCPUnbuffered <= 40 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
            {
              tcpunbuf_setPropertyInternal_cold_9(a1, (DerivedStorage + 328));
            }
          }
        }

        else if (CFEqual(*v4, @"ReadyToSendThreshold"))
        {
          v12 = a1[2];
          if (!v12 || (v13 = CFGetTypeID(v12), v13 != CFNumberGetTypeID()))
          {
            tcpunbuf_setPropertyInternal_cold_10();
            return v24;
          }

          v14 = CFGetInt64();
          *(DerivedStorage + 332) = v14;
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 40)
          {
            if (gLogCategory_APTransportConnectionTCPUnbuffered == -1)
            {
              if (!_LogCategory_Initialize())
              {
                return v24;
              }

              v14 = *(DerivedStorage + 332);
            }

            LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "OSStatus tcpunbuf_setPropertyInternal(void *)", 33554472, "[%{ptr}] TCP low watermark set to %u bytes\n", *a1, v14);
          }
        }

        else if (CFEqual(*v4, @"QualityOfService"))
        {
          v15 = a1[2];
          if (!v15 || (v16 = CFGetTypeID(v15), v16 != CFNumberGetTypeID()))
          {
            tcpunbuf_setPropertyInternal_cold_13();
            return v24;
          }

          v17 = CFGetInt64();
          if (!*(DerivedStorage + 341))
          {
            if (Value)
            {
              v18 = SocketSetQoS();
              v24 = v18;
              if (v18)
              {
                tcpunbuf_setPropertyInternal_cold_12(v18);
                return v24;
              }
            }
          }

          *(DerivedStorage + 336) = v17;
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50)
          {
            if (gLogCategory_APTransportConnectionTCPUnbuffered == -1)
            {
              if (!_LogCategory_Initialize())
              {
                return v24;
              }

              v17 = *(DerivedStorage + 336);
            }

            LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "OSStatus tcpunbuf_setPropertyInternal(void *)", 33554482, "[%{ptr}] Received new QoS: %d\n", *a1, v17);
          }
        }

        else if (CFEqual(*v4, @"ReadyToSendCallbackPriority"))
        {
          v21 = CFGetInt64Ranged();
          if (*(DerivedStorage + 64) || v21 == 5)
          {
            if (*(DerivedStorage + 168) && (v22 = APSPriorityDispatchSourceSetPriority(), (v24 = v22) != 0))
            {
              tcpunbuf_setPropertyInternal_cold_16(v22);
            }

            else
            {
              *(DerivedStorage + 60) = v21;
            }
          }

          else
          {
            tcpunbuf_setPropertyInternal_cold_15(&v24);
          }
        }

        else if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
        {
          tcpunbuf_setPropertyInternal_cold_17((a1 + 1), v19, v20);
        }

        return v24;
      }

      if (Value)
      {
        tcpunbuf_setPropertyInternal_cold_4();
        return v24;
      }

      v8 = a1[2];
      if (!v8 || (v9 = CFGetTypeID(v8), v9 != CFNumberGetTypeID()))
      {
        tcpunbuf_setPropertyInternal_cold_5();
        return v24;
      }

      *(DerivedStorage + 132) = CFGetInt64();
    }

    SockAddrSetPort();
    return v24;
  }

  if (FigCFEqual())
  {
    *(DerivedStorage + 184) = APTPackageRTPBufferedCreate;
    v5 = APTPackageRTPBufferedGetMaxPayloadSize;
LABEL_11:
    *(DerivedStorage + 192) = v5;
    return v24;
  }

  if (FigCFEqual())
  {
    *(DerivedStorage + 184) = APTransportPackageBufferedAPAPCreate;
    v5 = APTransportPackageBufferedAPAPGetMaxPayloadSize;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    *(DerivedStorage + 184) = APTransportPackageScreenCreate;
  }

  else
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      tcpunbuf_setPropertyInternal_cold_1(a1, a1 + 2);
    }

    return -12780;
  }

  return v24;
}

uint64_t tcpunbuf_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 180) == 5)
  {
    return (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (TCPUnbuffered) %''@ Ports:%##a -> %##a%?s%?lu Parent:[%{ptr}]\n", a1, a4, DerivedStorage + 76, DerivedStorage + 104, *(DerivedStorage + 136) != 0, " IDX:", *(DerivedStorage + 136) != 0, *(DerivedStorage + 136), a2);
  }

  else
  {
    return (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (TCPUnbuffered) %''@ (Not Connected) Parent:[%{ptr}]\n", a1, a4, a2);
  }
}

uint64_t tcpunbuf_Resume(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "OSStatus tcpunbuf_Resume(APTransportConnectionRef)", 33554462, "resuming unbuffered TCP connection %{ptr} '%@'\n", a1, *(DerivedStorage + 16));
  }

  v3 = APSDispatchSyncTask();
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "OSStatus tcpunbuf_Resume(APTransportConnectionRef)", 33554462, "Unbuffered TCP connection %{ptr} '%@' resumed\n", a1, *(DerivedStorage + 16));
  }

  return v3;
}

uint64_t tcpunbuf_AddEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a4)
    {
      dispatch_retain(a4);
      APSDispatchAsyncFHelper();
      return 0;
    }

    else
    {
      v6 = 4294894974;
      tcpunbuf_AddEventCallback_cold_1();
    }
  }

  else
  {
    v6 = 4294894974;
    tcpunbuf_AddEventCallback_cold_2();
  }

  return v6;
}

uint64_t tcpunbuf_SetReadyToSendCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 208) = a2;
  *(DerivedStorage + 216) = a3;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t tcpunbuf_resumeInternal(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v36, 0, sizeof(v36));
  *v32 = 0;
  v33 = 0;
  if (*(DerivedStorage + 152))
  {
    goto LABEL_61;
  }

  v3 = SockAddrToString();
  valuePtr = v3;
  if (v3)
  {
    tcpunbuf_resumeInternal_cold_1(v3);
    v6 = 0;
    v4 = -1;
    goto LABEL_8;
  }

  v4 = socket(*(DerivedStorage + 105), 1, 6);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_17:
    v8 = SocketSetNonBlocking();
    valuePtr = v8;
    if (v8)
    {
      tcpunbuf_resumeInternal_cold_3(v8);
      goto LABEL_7;
    }

    if (!*(DerivedStorage + 136))
    {
      goto LABEL_24;
    }

    v11 = *(DerivedStorage + 105);
    if (v11 == 2)
    {
      v12 = v4;
      v13 = 0;
      v14 = 25;
    }

    else
    {
      if (v11 != 30)
      {
LABEL_24:
        v16 = *(DerivedStorage + 56);
        if ((v16 & 0x1B) != 0)
        {
          SocketSetP2P();
          v16 = *(DerivedStorage + 56);
        }

        if ((v16 & 0x20) != 0)
        {
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
          {
            tcpunbuf_resumeInternal_cold_5(a1, v9, v10);
          }

          v32[1] = 4;
          setsockopt(v4, 0xFFFF, 4225, &v32[1], 4u);
        }

        if (!*(DerivedStorage + 341))
        {
          SocketSetQoS();
        }

        v17 = *(DerivedStorage + 144);
        if (v17)
        {
          v31 = CFUUIDGetUUIDBytes(v17);
          setsockopt(v4, 0xFFFF, 4360, &v31, 0x10u);
        }

        v32[1] = 1;
        setsockopt(v4, 0xFFFF, 4130, &v32[1], 4u);
        v18 = *(DerivedStorage + 342);
        *(DerivedStorage + 344) = *(DerivedStorage + 342) != 0;
        tcpunbuf_setAggregationSocketOption(v4, v18);
        if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "OSStatus tcpunbuf_resumeInternal(void *)", 33554482, "[%{ptr}] Set buffering mode to %d\n", a1, *(DerivedStorage + 344));
        }

        SocketSetBufferSize();
        SocketSetBufferSize();
        if (*(DerivedStorage + 328))
        {
          SocketSetTCPTimeout();
        }

        if (gLogCategory_APTransportConnectionTCPUnbuffered <= 40 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
        {
          tcpunbuf_resumeInternal_cold_6(v36);
        }

        mach_absolute_time();
        v19 = UpTicksToMicroseconds();
        v20 = SocketConnect();
        valuePtr = v20;
        if (v20)
        {
          tcpunbuf_resumeInternal_cold_7(v20, a1, v4, &v31, &v35);
          v6 = *&v31.byte0;
          v4 = v35;
          goto LABEL_8;
        }

        v32[0] = 28;
        v21 = getsockname(v4, (DerivedStorage + 76), v32);
        valuePtr = v21;
        if (v21)
        {
          tcpunbuf_resumeInternal_cold_8(v21);
          goto LABEL_7;
        }

        if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
        {
          v22 = *(DerivedStorage + 136);
          mach_absolute_time();
          v23 = UpTicksToMicroseconds();
          LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "OSStatus tcpunbuf_resumeInternal(void *)", 33554482, "[%{ptr}] connected to %##a (from %##a)%?s%?lu in %.3f ms \n", a1, DerivedStorage + 104, DerivedStorage + 76, v22 != 0, " on bound interface index: ", v22 != 0, v22, (v23 - v19) / 1000.0);
        }

        APTTrafficMetricsConnectionFormed(*(DerivedStorage + 584));
        v24 = NetSocket_CreateWithNative();
        valuePtr = v24;
        if (v24)
        {
          tcpunbuf_resumeInternal_cold_9(v24);
          goto LABEL_7;
        }

        v25 = APSWrapperCreate();
        valuePtr = v25;
        if (v25)
        {
          tcpunbuf_resumeInternal_cold_10(v25);
          goto LABEL_7;
        }

        Source = tcpunbuf_setupDataSocketReadSource(a1);
        valuePtr = Source;
        if (Source)
        {
          tcpunbuf_resumeInternal_cold_11(Source);
          goto LABEL_7;
        }

        if (*(DerivedStorage + 340))
        {
          socket_setLowWatermarkWriteable(v4, *(DerivedStorage + 332));
          v27 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          v6 = v27;
          if (!v27)
          {
            tcpunbuf_resumeInternal_cold_13(&valuePtr);
            goto LABEL_8;
          }

          *v27 = a1;
          v27[1] = CFRetain(*(DerivedStorage + 152));
          v28 = APSPriorityDispatchSourceCreate();
          valuePtr = v28;
          if (v28)
          {
            tcpunbuf_resumeInternal_cold_12(v28);
            goto LABEL_8;
          }

          *(DerivedStorage + 176) = 1;
        }

        v32[1] = 1;
        v29 = setsockopt(v4, 6, 514, &v32[1], 4u);
        *(DerivedStorage + 320) = v29 == 0;
        valuePtr = 0;
        if (!v29)
        {
          *&v31.byte0 = 0x1E0000000ALL;
          setsockopt(v4, 6, 515, &v31, 8u);
        }

LABEL_61:
        *(DerivedStorage + 180) = 5;
        tcpunbuf_callEventCallback(a1, 5u, 0);
        return valuePtr;
      }

      v12 = v4;
      v13 = 41;
      v14 = 125;
    }

    v15 = setsockopt(v12, v13, v14, (DerivedStorage + 136), 4u);
    valuePtr = v15;
    if (v15)
    {
      tcpunbuf_resumeInternal_cold_4(v15);
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  if (*__error())
  {
    v5 = *__error();
    valuePtr = v5;
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  v5 = 4294960596;
  valuePtr = -6700;
LABEL_6:
  tcpunbuf_resumeInternal_cold_2(v5);
LABEL_7:
  v6 = 0;
LABEL_8:
  *(DerivedStorage + 180) = 4;
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  tcpunbuf_callEventCallback(a1, 4u, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    tcpunbuf_freeDispatchSourceContext(v6);
  }

  if ((v4 & 0x80000000) == 0 && close(v4) && *__error())
  {
    __error();
  }

  return valuePtr;
}

uint64_t tcpunbuf_setAggregationSocketOption(int a1, int a2)
{
  v9 = a2 == 0;
  setsockopt(a1, 6, 1, &v9, 4u);
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
  {
    tcpunbuf_setAggregationSocketOption_cold_1(&v9, v4, v5);
  }

  v9 = a2 != 0;
  result = setsockopt(a1, 6, 4, &v9, 4u);
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered != -1)
    {
      return tcpunbuf_setAggregationSocketOption_cold_2(&v9, v7, v8);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return tcpunbuf_setAggregationSocketOption_cold_2(&v9, v7, v8);
    }
  }

  return result;
}

uint64_t tcpunbuf_finalizeWrappedNetSocket(uint64_t a1)
{
  NetSocket_Cancel();

  return NetSocket_Delete();
}

uint64_t tcpunbuf_setupDataSocketReadSource(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(APSWrapperGetValue() + 4);
  if ((v3 & 0x80000000) != 0)
  {
    tcpunbuf_setupDataSocketReadSource_cold_3();
    return 4294894972;
  }

  else
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D28], v3, 0, *(DerivedStorage + 8));
    *(DerivedStorage + 160) = v4;
    if (v4)
    {
      v5 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
      if (v5)
      {
        v6 = v5;
        *v5 = a1;
        v5[1] = CFRetain(*(DerivedStorage + 152));
        dispatch_source_set_event_handler_f(*(DerivedStorage + 160), tcpunbuf_receivedData);
        dispatch_source_set_cancel_handler_f(*(DerivedStorage + 160), tcpunbuf_freeDispatchSourceContext);
        dispatch_set_context(*(DerivedStorage + 160), v6);
        dispatch_resume(*(DerivedStorage + 160));
        return 0;
      }

      else
      {
        v7 = 4294894973;
        tcpunbuf_setupDataSocketReadSource_cold_1();
      }
    }

    else
    {
      v7 = 4294894973;
      tcpunbuf_setupDataSocketReadSource_cold_2();
    }
  }

  return v7;
}

uint64_t socket_setLowWatermarkWriteable(int a1, unsigned int a2)
{
  v4 = a2;
  if (a2 > 0xF9F)
  {
    if (a2 < 0xFA01)
    {
      goto LABEL_6;
    }

    v2 = 64000;
  }

  else
  {
    v2 = 4000;
  }

  v4 = v2;
LABEL_6:
  result = setsockopt(a1, 6, 513, &v4, 4u);
  if (result)
  {
    return socket_setLowWatermarkWriteable_cold_1(result);
  }

  return result;
}

void tcpunbuf_freeDispatchSourceContext(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void tcpunbuf_deferCallEventCallback(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    dispatch_sync_f(*(DerivedStorage + 48), a1, tcpunbuf_callEventCallbackOnEventQueue);
  }

  v3 = a1[2];
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t tcpunbuf_callEventCallbackOnEventQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 16);
  v4 = *(DerivedStorage + 32);
  v5 = *(DerivedStorage + 40);
  v6 = *(a1 + 8);

  return v5(v6, v3, v4);
}

void tcpunbuf_addEventCallbackInternal(uint64_t a1)
{
  tcpunbuf_setEventCallback(a1);
  v2 = *(a1 + 24);
  if (v2)
  {

    dispatch_release(v2);
  }
}

uint64_t tcpunbuf_setEventCallback(uint64_t a1)
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

uint64_t __tcpunbuf_ensureStallMonitorTimerCreated_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = CMBaseObjectGetDerivedStorage();
  *(result + 392) = 1;
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered != -1)
    {
      return __tcpunbuf_ensureStallMonitorTimerCreated_block_invoke_cold_1(v1, v3, v4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __tcpunbuf_ensureStallMonitorTimerCreated_block_invoke_cold_1(v1, v3, v4);
    }
  }

  return result;
}

uint64_t APBrokeredReceiverGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_9 != -1)
  {
    APBrokeredReceiverGetTypeID_cold_1();
  }

  return qword_281309BC0;
}

uint64_t _APBrokeredReceiverClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APBrokeredReceiverCreateWithTXTRecordBase64(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!a1)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_13();
    return 4294960591;
  }

  if (!a2)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_12();
    return 4294960591;
  }

  if (!a3)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_11();
    return 4294960591;
  }

  if (!a4)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_10();
    return 4294960591;
  }

  if (!a5)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_9();
    return 4294960591;
  }

  if (!a6)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_8();
    return 4294960591;
  }

  if (!a8)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_7();
    return 4294960591;
  }

  if (_MergedGlobals_9 != -1)
  {
    APBrokeredReceiverGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_6();
    return 4294960568;
  }

  v16 = Instance;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  *(Instance + 2) = CFRetain(a1);
  v16[3] = CFRetain(a2);
  v16[4] = CFRetain(a3);
  v16[5] = CFRetain(a4);
  v16[6] = CFRetain(a5);
  v17 = APSCFDataCreateWithBase64String();
  v16[8] = v17;
  if (!v17)
  {
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_5();
    v20 = 4294960568;
LABEL_36:
    CFRelease(v16);
    return v20;
  }

  if (a7)
  {
    v18 = APSCFDataCreateWithBase64String();
    v16[9] = v18;
    if (v18)
    {
      if (CFDataGetLength(v18) == 32)
      {
        goto LABEL_15;
      }

      APBrokeredReceiverCreateWithTXTRecordBase64_cold_2();
    }

    else
    {
      APBrokeredReceiverCreateWithTXTRecordBase64_cold_3();
    }

    v20 = 4294960591;
    goto LABEL_36;
  }

LABEL_15:
  v19 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v19)
  {
    v20 = v19;
    APBrokeredReceiverCreateWithTXTRecordBase64_cold_4(v19);
    goto LABEL_36;
  }

  if (gLogCategory_APBrokeredReceiver <= 50 && (gLogCategory_APBrokeredReceiver != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokeredReceiver, "OSStatus APBrokeredReceiverCreateWithTXTRecordBase64(CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, APBrokeredReceiverRef *)", 33554482, "[%{ptr}] BrokeredReceiver created with receiverGroupUUID=%@ publicReceiverUUID=%@ deviceID=%@ name=%@\n", v16, v16[3], v16[4], v16[7], v16[5]);
  }

  v20 = 0;
  *a8 = v16;
  return v20;
}

uint64_t APBrokeredReceiverCopyBonjourInfo(uint64_t a1, int a2, __CFDictionary **a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  DNSName = APBrokeredReceiverCreateDNSName(*(a1 + 16), *(a1 + 32));
  if (!DNSName)
  {
    APBrokeredReceiverCopyBonjourInfo_cold_4();
    return 4294960568;
  }

  v7 = DNSName;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v9 = Mutable;
    CFDictionarySetValue(Mutable, @"domain", @"local.");
    CFDictionarySetValue(v9, @"ifname", @"broker0");
    CFDictionarySetInt64();
    FigCFDictionarySetValue();
    v18[0] = v9;
    v10 = CFArrayCreate(0, v18, 1, MEMORY[0x277CBF128]);
    if (v10)
    {
      v11 = v10;
      CFRelease(v9);
      v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(v12, @"deviceID", *(a1 + 56));
        CFDictionarySetValue(v13, @"name", *(a1 + 40));
        if (a2)
        {
          v14 = (a1 + 48);
          CFDictionarySetValue(v13, @"removedServices", v11);
          v15 = @"serviceType";
        }

        else
        {
          CFDictionarySetValue(v13, @"services", v11);
          CFDictionarySetValue(v13, @"serviceType", *(a1 + 48));
          v14 = (a1 + 64);
          v15 = @"txt";
        }

        CFDictionarySetValue(v13, v15, *v14);
        v16 = 0;
        *a3 = v13;
      }

      else
      {
        APBrokeredReceiverCopyBonjourInfo_cold_1();
        v16 = 4294960568;
      }

      CFRelease(v11);
      goto LABEL_10;
    }

    APBrokeredReceiverCopyBonjourInfo_cold_2(v9);
  }

  else
  {
    APBrokeredReceiverCopyBonjourInfo_cold_3();
  }

  v16 = 4294960568;
  APSLogErrorAt();
LABEL_10:
  CFRelease(v7);
  return v16;
}

void _APBrokeredReceiverFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
    a1[8] = 0;
  }

  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
    a1[9] = 0;
  }
}

uint64_t APTransportStreamSendBackingProviderGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_10 != -1)
  {
    APTransportStreamSendBackingProviderGetTypeID_cold_1();
  }

  return qword_281309BD0;
}

uint64_t transportStreamBackingProvider_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportStreamSendBackingProviderCreateWithStreamID(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 == 1734700576)
  {
    if (_MergedGlobals_10 != -1)
    {
      APTransportStreamSendBackingProviderGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 64) = 0;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      v8 = FigSimpleMutexCreate();
      v7[2] = v8;
      if (v8)
      {
        v7[3] = 1734700576;
        v7[6] = APTransportPackageRTPCreate;
        v7[7] = APTransportPackageRTPCreateWithMessageSize;
        v7[8] = APTransportPackageRTPCreateWithMessageSizeAndType;
        Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x277CBF158]);
        v7[4] = Mutable;
        if (Mutable)
        {
          v10 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x277CBF150]);
          v7[5] = v10;
          if (v10)
          {
            if (gLogCategory_APTransportStreamSendBackingProvider <= 40 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
            {
              APTransportStreamSendBackingProviderCreateWithStreamID_cold_3(v7);
            }

            v11 = 0;
            *a4 = v7;
          }

          else
          {
            v11 = 4294894946;
            APTransportStreamSendBackingProviderCreateWithStreamID_cold_4();
          }
        }

        else
        {
          v11 = 4294894946;
          APTransportStreamSendBackingProviderCreateWithStreamID_cold_5();
        }
      }

      else
      {
        v11 = 4294894946;
        APTransportStreamSendBackingProviderCreateWithStreamID_cold_6();
      }
    }

    else
    {
      v11 = 4294894946;
      APTransportStreamSendBackingProviderCreateWithStreamID_cold_7();
    }
  }

  else
  {
    APTransportStreamSendBackingProviderCreateWithStreamID_cold_1();
    return 4294894945;
  }

  return v11;
}

uint64_t APTransportStreamSendBackingProviderAcquireBBuf(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer **a4)
{
  dataPointerOut = 0;
  cf = 0;
  v6 = *MEMORY[0x277CBECE8];
  if (a3 == 48)
  {
    v7 = (*(a1 + 56))(v6, a2, &cf);
    if (v7)
    {
      v8 = v7;
      APTransportStreamSendBackingProviderAcquireBBuf_cold_2(v7);
LABEL_19:
      v12 = 0;
LABEL_20:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v9 = (*(a1 + 64))(v6, a2, a3, &cf);
    if (v9)
    {
      v8 = v9;
      APTransportStreamSendBackingProviderAcquireBBuf_cold_1(v9);
      goto LABEL_19;
    }
  }

  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v11)
  {
    v12 = v11(v10);
  }

  else
  {
    v12 = 0;
  }

  DataPointer = CMBlockBufferGetDataPointer(v12, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    v8 = DataPointer;
    APTransportStreamSendBackingProviderAcquireBBuf_cold_3(DataPointer);
    goto LABEL_20;
  }

  FigSimpleMutexLock();
  CFSetAddValue(*(a1 + 32), v12);
  CFDictionarySetValue(*(a1 + 40), dataPointerOut, cf);
  FigSimpleMutexUnlock();
  if (gLogCategory_APTransportStreamSendBackingProvider <= 10 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportStreamSendBackingProvider, "OSStatus APTransportStreamSendBackingProviderAcquireBBuf(APTransportStreamSendBackingProviderRef, size_t, OSType, CMBlockBufferRef *)", 33554442, "[%{ptr}] Acquire BBuf [%{ptr}]", a1, v12);
  }

  v8 = 0;
  *a4 = v12;
  cf = 0;
LABEL_14:
  if (v12)
  {
    CFRelease(v12);
  }

  return v8;
}

uint64_t APTransportStreamSendBackingProviderRelinquishBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  dataPointerOut = 0;
  if (gLogCategory_APTransportStreamSendBackingProvider <= 10 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportStreamSendBackingProvider, "OSStatus APTransportStreamSendBackingProviderRelinquishBBuf(APTransportStreamSendBackingProviderRef, CMBlockBufferRef)", 33554442, "[%{ptr}] Relinquish BBuf [%{ptr}]", a1, a2);
  }

  FigSimpleMutexLock();
  if (CFSetContainsValue(*(a1 + 32), a2))
  {
    DataPointer = CMBlockBufferGetDataPointer(a2, 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      v7 = DataPointer;
      APTransportStreamSendBackingProviderRelinquishBBuf_cold_1(DataPointer);
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1 + 40), dataPointerOut);
      if (Value)
      {
        v6 = Value;
        CFSetRemoveValue(*(a1 + 32), a2);
        CFDictionaryRemoveValue(*(a1 + 40), dataPointerOut);
        CFRelease(v6);
        v7 = 0;
      }

      else
      {
        v7 = 4294894944;
        APTransportStreamSendBackingProviderRelinquishBBuf_cold_2();
      }
    }
  }

  else
  {
    APTransportStreamSendBackingProviderRelinquishBBuf_cold_3();
    v7 = 4294894945;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t APTransportStreamSendBackingProviderCopyPackageForGivenBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  v12 = 0;
  cf = 0;
  (*(a1 + 48))(*MEMORY[0x277CBECE8], &cf);
  v6 = cf;
  if (a2)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(v6, a2);
    }

    DataPointer = CMBlockBufferGetDataPointer(a2, 0, 0, 0, &v12);
    v9 = DataPointer;
    if (DataPointer)
    {
      APTransportStreamSendBackingProviderCopyPackageForGivenBBuf_cold_1(DataPointer);
    }

    else
    {
      FigSimpleMutexLock();
      CFSetAddValue(*(a1 + 32), a2);
      CFDictionarySetValue(*(a1 + 40), v12, cf);
      FigSimpleMutexUnlock();
    }
  }

  else
  {
    if (cf)
    {
      v10 = CFRetain(cf);
    }

    else
    {
      v10 = 0;
    }

    v9 = 0;
    *a3 = v10;
  }

  return v9;
}

uint64_t transportStreamBackingProvider_Finalize(void *a1)
{
  if (gLogCategory_APTransportStreamSendBackingProvider <= 40 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
  {
    transportStreamBackingProvider_Finalize_cold_1(a1);
  }

  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t APBrowserCarSessionCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  cf = 0;
  if (!a4)
  {
    APBrowserCarSessionCreate_cold_10();
    DerivedStorage = 0;
    goto LABEL_36;
  }

  APBrowserGetClassID(a1, a2);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v24 = v8;
    APBrowserCarSessionCreate_cold_1(v8);
    DerivedStorage = 0;
    goto LABEL_25;
  }

  v9 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = dispatch_queue_create("APBrowserCarSessionInternalQueue", 0);
  *(DerivedStorage + 24) = v11;
  if (v11)
  {
    v12 = dispatch_queue_create("APBrowserCarSessionEventQueue", 0);
    *(DerivedStorage + 112) = v12;
    if (v12)
    {
      if (a2)
      {
        v13 = CFRetain(a2);
        *(DerivedStorage + 56) = v13;
        if (v13)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v15 = Mutable;
            if (a3)
            {
              Value = CFDictionaryGetValue(a3, @"PowerAssertion");
              *(DerivedStorage + 48) = Value;
              if (Value)
              {
                CFRetain(Value);
                CFDictionarySetValue(v15, @"powerAssertion", *(DerivedStorage + 48));
              }

              v17 = CFDictionaryGetValue(a3, @"EventRecorder");
              *(DerivedStorage + 40) = v17;
              if (v17)
              {
                CFRetain(v17);
                CFDictionarySetValue(v15, @"eventRecorder", *(DerivedStorage + 40));
              }

              *(DerivedStorage + 16) = CFDictionaryGetInt64() != 0;
            }

            if (APSIsVirtualMachine())
            {
              v18 = CFDictionarySetInt64();
              if (gLogCategory_APBrowserCarSession <= 50)
              {
                if (gLogCategory_APBrowserCarSession != -1 || (v18 = _LogCategory_Initialize(), v18))
                {
                  APBrowserCarSessionCreate_cold_2(v18, v19, v20);
                }
              }
            }

            else
            {
              CFDictionarySetInt64();
            }

            CFDictionarySetValue(v15, @"enableSessionEvents", *MEMORY[0x277CBED28]);
            v21 = APCarPlayHelperSessionCreate(a1, carSessionBrowser_handleCarPlayHelperEvent, cf, v15, (DerivedStorage + 64));
            if (!v21)
            {
              v22 = dispatch_semaphore_create(0);
              *(DerivedStorage + 8) = v22;
              if (v22)
              {
                v23 = dispatch_group_create();
                *DerivedStorage = v23;
                if (v23)
                {
                  dispatch_group_enter(v23);
                  v24 = 0;
                  *a4 = v9;
LABEL_24:
                  CFRelease(v15);
                  goto LABEL_25;
                }

                APBrowserCarSessionCreate_cold_4();
              }

              else
              {
                APBrowserCarSessionCreate_cold_5();
              }

              v24 = 4294954510;
              goto LABEL_24;
            }

            v24 = v21;
            APBrowserCarSessionCreate_cold_3(v21);
            goto LABEL_24;
          }

          APBrowserCarSessionCreate_cold_6();
          goto LABEL_43;
        }
      }

      else
      {
        *(DerivedStorage + 56) = 0;
      }

      APBrowserCarSessionCreate_cold_7();
LABEL_36:
      v24 = 4294954516;
      goto LABEL_25;
    }

    APBrowserCarSessionCreate_cold_8();
  }

  else
  {
    APBrowserCarSessionCreate_cold_9();
  }

LABEL_43:
  v24 = 4294954510;
LABEL_25:
  v25 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v26 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APBrowserCarSessionCreate_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = cf;
    block[5] = DerivedStorage;
    dispatch_group_notify(v25, v26, block);
  }

  if (v24)
  {
    if (gLogCategory_APBrowserCarSession <= 90 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
    {
      APBrowserCarSessionCreate_cold_11(v24);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v24;
}

void carSessionBrowser_handleCarPlayHelperEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v8 = *(DerivedStorage + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carSessionBrowser_handleCarPlayHelperEvent_block_invoke;
  block[3] = &__block_descriptor_tmp_33_0;
  v10 = a2;
  block[4] = a4;
  block[5] = a3;
  dispatch_async(v8, block);
}

NSObject *__APBrowserCarSessionCreate_block_invoke(uint64_t a1)
{
  carSessionBrowser_dispatchEvent(*(a1 + 32), 8, 0);
  result = *(*(a1 + 40) + 8);
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void carSessionBrowser_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carSessionBrowser_finalize_block_invoke;
    block[3] = &__block_descriptor_tmp_12_2;
    block[4] = DerivedStorage;
    dispatch_sync(v3, block);
    carSessionBrowser_invalidate(a1);
    v12 = *(DerivedStorage + 8);
    if (v12)
    {
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }

    dispatch_sync(*(DerivedStorage + 24), &__block_literal_global_10);
    v13 = *(DerivedStorage + 24);
    if (v13)
    {
      dispatch_release(v13);
      *(DerivedStorage + 24) = 0;
    }
  }

  v4 = *(DerivedStorage + 112);
  if (v4)
  {
    dispatch_sync(v4, &__block_literal_global_16);
    v5 = *(DerivedStorage + 112);
    if (v5)
    {
      dispatch_release(v5);
      *(DerivedStorage + 112) = 0;
    }
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 64) = 0;
  }

  v10 = *(DerivedStorage + 80);
  if (v10)
  {
    os_release(v10);
    *(DerivedStorage + 80) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v11 = *(DerivedStorage + 8);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 8) = 0;
  }
}

void __carSessionBrowser_invalidate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 32))
  {
    if (*(v1 + 64))
    {
      APTransportKeepAliveControllerGetCMBaseObject();
      if (v3)
      {
        v4 = v3;
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v5)
        {
          v5(v4);
        }
      }
    }

    *(*(a1 + 32) + 32) = 1;
  }
}

uint64_t __carSessionBrowser_finalize_block_invoke(uint64_t result)
{
  *(*(result + 32) + 120) = 0;
  *(*(result + 32) + 128) = 0;
  return result;
}

uint64_t carSessionBrowser_getMode(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carSessionBrowser_getMode_block_invoke;
    block[3] = &unk_278BC8BF0;
    block[4] = &v8;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_sync(v4, block);
    v5 = *(v9 + 6);
  }

  else
  {
    v5 = 4294954516;
    *(v9 + 6) = -12780;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t carSessionBrowser_setMode(uint64_t a1, int a2)
{
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1)
  {
    carSessionBrowser_setMode_cold_1(v11);
    v6 = 4294895234;
  }

  else
  {
    v5 = *(DerivedStorage + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __carSessionBrowser_setMode_block_invoke;
    v8[3] = &unk_278BC8C18;
    v8[4] = &v10;
    v8[5] = DerivedStorage;
    v9 = a2;
    v8[6] = a1;
    dispatch_sync(v5, v8);
    v6 = *(v11[0] + 24);
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t carSessionBrowser_setEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __carSessionBrowser_setEventHandler_block_invoke;
  v9[3] = &unk_278BC8C40;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t carSessionBrowser_getDNSForDeviceID(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    carSessionBrowser_getDNSForDeviceID_cold_1(v19);
LABEL_7:
    v15 = 4294954516;
    goto LABEL_4;
  }

  if (!a6)
  {
    carSessionBrowser_getDNSForDeviceID_cold_2(v19);
    goto LABEL_7;
  }

  v14 = *(DerivedStorage + 24);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __carSessionBrowser_getDNSForDeviceID_block_invoke;
  v17[3] = &unk_278BC8C68;
  v17[4] = &v18;
  v17[5] = DerivedStorage;
  v17[6] = a2;
  v17[7] = a6;
  v17[8] = a7;
  v17[9] = a8;
  dispatch_sync(v14, v17);
  v15 = *(v19[0] + 24);
LABEL_4:
  _Block_object_dispose(&v18, 8);
  return v15;
}

void __carSessionBrowser_getMode_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (*(v2 + 32))
  {
    __carSessionBrowser_getMode_block_invoke_cold_1();
  }

  else
  {
    if (*(v2 + 72))
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    **(result + 48) = v3;
  }
}

void __carSessionBrowser_setEventHandler_block_invoke(void *result)
{
  v1 = result[5];
  if (*(v1 + 32))
  {
    __carSessionBrowser_setEventHandler_block_invoke_cold_1();
  }

  else if (*(v1 + 72))
  {
    __carSessionBrowser_setEventHandler_block_invoke_cold_2();
  }

  else if (*(v1 + 76))
  {
    __carSessionBrowser_setEventHandler_block_invoke_cold_3();
  }

  else
  {
    *(v1 + 120) = result[6];
    *(result[5] + 128) = result[7];
  }
}

void __carSessionBrowser_getDNSForDeviceID_block_invoke(const char **a1)
{
  v2 = a1[5];
  if (v2[32])
  {
    __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_1();
  }

  else if (*(v2 + 19))
  {
    __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_2();
  }

  else if (v2[72])
  {
    if (*(v2 + 11) == a1[6])
    {
      v3 = a1 + 7;
      *(*(a1[4] + 1) + 24) = APSNetworkAddressGetCStringRepresentation();
      v4 = *(*(a1[4] + 1) + 24);
      if (v4)
      {
        __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_4(v4);
      }

      else
      {
        v5 = a1[9];
        if (v5)
        {
          *v5 = *(a1[5] + 26) == 2;
          if (gLogCategory_APBrowserCarSession <= 40 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
          {
            __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_5(a1 + 7, a1 + 9, (a1 + 6));
          }
        }

        else if (gLogCategory_APBrowserCarSession <= 40 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APBrowserCarSession, "OSStatus carSessionBrowser_getDNSForDeviceID(APBrowserRef, uint64_t, Boolean, Boolean, Boolean, char *, size_t, Boolean *)_block_invoke", 33554472, "DNS = '%s' For deviceID: %#.6a\n", *v3, COERCE_DOUBLE(a1 + 6));
        }
      }
    }

    else
    {
      __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_3();
    }
  }

  else
  {
    __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_6();
  }
}

void __carSessionBrowser_handleCarPlayHelperEvent_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 48);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      if (gLogCategory_APBrowserCarSession <= 30)
      {
        if (gLogCategory_APBrowserCarSession != -1 || (a1 = _LogCategory_Initialize(), a1))
        {
          __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_1(a1, a2, a3);
        }
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      dispatch_group_leave(*DerivedStorage);
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_29;
      }

      if (gLogCategory_APBrowserCarSession <= 30)
      {
        if (gLogCategory_APBrowserCarSession != -1 || (a1 = _LogCategory_Initialize(), a1))
        {
          __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_2(a1, a2, a3);
        }
      }

      v30 = *(v3 + 32);
      v31 = CMBaseObjectGetDerivedStorage();
      carSessionBrowser_networkChanged(v30, 0);
      carSessionBrowser_dispatchEvent(v30, 7, 0);
      --*(v31 + 76);
    }
  }

  else
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (gLogCategory_APBrowserCarSession <= 30)
        {
          if (gLogCategory_APBrowserCarSession != -1 || (a1 = _LogCategory_Initialize(), a1))
          {
            __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_3(a1, a2, a3);
          }
        }

        v5 = *(v3 + 32);
        v6 = *(v3 + 40);
        v46 = 0;
        cf = v5;
        v7 = CMBaseObjectGetDerivedStorage();
        v45 = 0;
        v8 = CFDictionaryGetValue(v6, @"advertiserInfo");
        if (v8)
        {
          v9 = v8;
          v10 = CFDictionaryGetValue(v6, @"networkAddress");
          if (v10)
          {
            v11 = v10;
            v12 = APAdvertiserInfoCopyProperty(v9, 0, @"deviceID", 0, &v46);
            if (v46)
            {
              __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_4(v46);
            }

            else
            {
              v43 = v11;
              FigCFStringGetCStringPtrAndBufferToFree();
              CFStringGetLength(v12);
              v13 = TextToHardwareAddressScalar();
              Int64Ranged = CFDictionaryGetInt64Ranged();
              if (!v46)
              {
                value = CFDictionaryGetValue(v6, @"sessionHostInfo");
                if (Int64Ranged == 1)
                {
                  if (*(v7 + 40))
                  {
                    APSEventRecorderRecordEventWithFlags();
                  }

                  v15 = LogCategoryCopyOSLogHandle();
                  v16 = v15;
                  if (v15)
                  {
                    v17 = v15;
                  }

                  else
                  {
                    v17 = MEMORY[0x277D86220];
                  }

                  if (!os_signpost_enabled(v17))
                  {
                    goto LABEL_41;
                  }

                  *buf = 0;
                  v18 = "AP_SIGNPOST_ENDPOINTADDED_USB";
                  v19 = v17;
                  v20 = 730662900;
                }

                else
                {
                  if (Int64Ranged != 2)
                  {
                    goto LABEL_43;
                  }

                  if (*(v7 + 40))
                  {
                    APSEventRecorderRecordEventWithFlags();
                  }

                  v22 = LogCategoryCopyOSLogHandle();
                  v16 = v22;
                  if (v22)
                  {
                    v23 = v22;
                  }

                  else
                  {
                    v23 = MEMORY[0x277D86220];
                  }

                  if (!os_signpost_enabled(v23))
                  {
LABEL_41:
                    if (v16)
                    {
                      os_release(v16);
                    }

LABEL_43:
                    v24 = *(v7 + 88);
                    if (v24 == v13)
                    {
                      if (*(v7 + 104) != Int64Ranged)
                      {
                        goto LABEL_80;
                      }

                      if (FigCFEqual())
                      {
                        Mutable = 0;
LABEL_47:
                        APCarPlayControlServerInjectCommand(*(v7 + 56), v13, "connect");
                        goto LABEL_48;
                      }

                      v24 = *(v7 + 88);
                    }

                    if (v24 && v24 != v13)
                    {
                      v32 = CFGetAllocator(cf);
                      Mutable = CFDictionaryCreateMutable(v32, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (!Mutable)
                      {
                        __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_7(&v46);
                        goto LABEL_49;
                      }

                      CFDictionarySetInt64();
                      if (gLogCategory_APBrowserCarSession <= 30 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
                      {
                        __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_6(v13);
                      }

                      carSessionBrowser_dispatchEvent(cf, 5, Mutable);
                      CFRelease(Mutable);
                    }

LABEL_80:
                    v33 = CFGetAllocator(cf);
                    Mutable = CFDictionaryCreateMutable(v33, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (!Mutable)
                    {
                      __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_8(&v46);
                      goto LABEL_49;
                    }

                    CFDictionarySetInt64();
                    CFDictionarySetValue(Mutable, @"deviceInfo", v9);
                    v34 = MEMORY[0x277CBED10];
                    if (Int64Ranged == 1)
                    {
                      v34 = MEMORY[0x277CBED28];
                    }

                    CFDictionarySetValue(Mutable, @"IsConnectedOverUSB", *v34);
                    if (value)
                    {
                      CFDictionarySetValue(Mutable, @"sessionHostInfo", value);
                    }

                    v35 = gLogCategory_APBrowserCarSession;
                    if (gLogCategory_APBrowserCarSession > 30)
                    {
                      goto LABEL_106;
                    }

                    if (gLogCategory_APBrowserCarSession == -1)
                    {
                      if (!_LogCategory_Initialize())
                      {
                        goto LABEL_106;
                      }

                      v35 = gLogCategory_APBrowserCarSession;
                    }

                    if (*(v7 + 88) == v13)
                    {
                      v36 = "update";
                    }

                    else
                    {
                      v36 = "add";
                    }

                    if (v35 > 20)
                    {
                      v37 = 0;
                    }

                    else
                    {
                      if (v35 != -1)
                      {
                        v37 = 1;
                        goto LABEL_102;
                      }

                      v37 = _LogCategory_Initialize() != 0;
                      v35 = gLogCategory_APBrowserCarSession;
                      if (gLogCategory_APBrowserCarSession <= 20)
                      {
LABEL_102:
                        v38 = v35 != -1 || _LogCategory_Initialize() != 0;
                        goto LABEL_105;
                      }
                    }

                    v38 = 0;
LABEL_105:
                    LogPrintF(&gLogCategory_APBrowserCarSession, "OSStatus carSessionBrowser_startSession(APBrowserRef, CFDictionaryRef)", 33554462, "Dispatching %s event for device with ID: %llu%?s%?@\n", v36, v13, v37, "\n", v38, v6);
LABEL_106:
                    if (*(v7 + 88) == v13)
                    {
                      v39 = 4;
                    }

                    else
                    {
                      v39 = 3;
                    }

                    carSessionBrowser_dispatchEvent(cf, v39, Mutable);
                    *(v7 + 104) = Int64Ranged;
                    v40 = *(v7 + 96);
                    *(v7 + 88) = v13;
                    *(v7 + 96) = v43;
                    CFRetain(v43);
                    if (v40)
                    {
                      CFRelease(v40);
                    }

                    goto LABEL_47;
                  }

                  *buf = 0;
                  v18 = "AP_SIGNPOST_ENDPOINTADDED_WIFI";
                  v19 = v23;
                  v20 = 722862484;
                }

                _os_signpost_emit_with_name_impl(&dword_23D2A9000, v19, OS_SIGNPOST_EVENT, v20, v18, "", buf, 2u);
                goto LABEL_41;
              }

              __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_5(v46);
            }

            Mutable = 0;
LABEL_48:
            if (!v46)
            {
LABEL_51:
              if (v12)
              {
                CFRelease(v12);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              v27 = v45;
              if (v45)
              {
                v45 = 0;
                free(v27);
              }

              if (v46)
              {
                __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_11(v46);
              }

              goto LABEL_61;
            }

LABEL_49:
            *(v7 + 88) = 0;
            *(v7 + 104) = 0;
            v26 = *(v7 + 96);
            if (v26)
            {
              CFRelease(v26);
              *(v7 + 96) = 0;
            }

            goto LABEL_51;
          }

          __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_9(&v46);
        }

        else
        {
          __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_10(&v46);
        }

        v12 = 0;
        Mutable = 0;
        goto LABEL_49;
      }

LABEL_29:
      if (gLogCategory_APBrowserCarSession <= 90)
      {
        if (gLogCategory_APBrowserCarSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_60;
          }

          v4 = *(v3 + 48);
        }

        LogPrintF(&gLogCategory_APBrowserCarSession, "void carSessionBrowser_handleCarPlayHelperEvent(APCarPlayHelperRef, APCarPlayHelperEventType, CFDictionaryRef, void *)_block_invoke", 33554522, "Unrecognized CarPlayHelper event: %d\n", v4);
      }

LABEL_60:
      APSLogErrorAt();
      goto LABEL_61;
    }

    if (gLogCategory_APBrowserCarSession <= 30)
    {
      if (gLogCategory_APBrowserCarSession != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_12(a1, a2, a3);
      }
    }

    carSessionBrowser_networkChanged(*(v3 + 32), *(v3 + 40));
  }

LABEL_61:
  v28 = *(v3 + 32);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(v3 + 40);
  if (v29)
  {
    CFRelease(v29);
  }
}

uint64_t carSessionBrowser_networkChanged(const void *a1, const __CFDictionary *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (Value = CFDictionaryGetValue(a2, @"interfaceName"), Int64 = CFDictionaryGetInt64(), Value))
  {
    if (!*(DerivedStorage + 80) && Int64)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      v8 = "WiFi";
      if (Int64Ranged == 1)
      {
        v8 = "USB";
      }

      SNPrintF(v12, 64, "APBrowserCarSession_%s.%{ptr}", v8, a1);
      if (gLogCategory_APBrowserCarSession <= 50 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
      {
        carSessionBrowser_networkChanged_cold_1(v12, v9, v10);
      }

      *(DerivedStorage + 80) = os_transaction_create();
    }
  }

  else if (*(DerivedStorage + 88))
  {
    carSessionBrowser_networkChanged_cold_2((DerivedStorage + 88), DerivedStorage, a1);
  }

  APSEventRecorderResetEvent();
  return APSEventRecorderResetEvent();
}

void __carSessionBrowser_dispatchEvent_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t APTransportDeviceGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_11 != -1)
  {
    APTransportDeviceGetTypeID_cold_1();
  }

  return qword_281309BE0;
}

uint64_t transportDevice_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportDeviceCreateWithNetworkAddress(uint64_t a1, const void *a2, char a3, const void *a4, void *a5)
{
  if (!a2)
  {
    APTransportDeviceCreateWithNetworkAddress_cold_4();
    return 4294954516;
  }

  if (!a4)
  {
    APTransportDeviceCreateWithNetworkAddress_cold_3();
    return 4294954516;
  }

  if (!a5)
  {
    APTransportDeviceCreateWithNetworkAddress_cold_2();
    return 4294954516;
  }

  v9 = transportDevice_create(a1);
  if (v9)
  {
    v10 = v9;
    *(v9 + 3) = CFRetain(a4);
    *(v10 + 4) = CFRetain(a2);
    *(v10 + 48) = a3;
    if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportDevice, "OSStatus APTransportDeviceCreateWithNetworkAddress(CFAllocatorRef, APSNetworkAddressRef, APTransportDeviceAddressType, CFDictionaryRef, APTransportDeviceRef *)", 33554462, "APTransportDevice %{ptr} created with address %@ and deviceInfo %@\n", v10, a2, a4);
    }

    result = 0;
    *a5 = v10;
  }

  else
  {
    APTransportDeviceCreateWithNetworkAddress_cold_1();
    return 4294954510;
  }

  return result;
}

uint64_t APTransportDeviceCreateWithNetworkAddresses(const __CFAllocator *a1, CFArrayRef theArray, char a3, const void *a4, void *a5)
{
  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    APTransportDeviceCreateWithNetworkAddresses_cold_4();
    return 4294954516;
  }

  if (!a4)
  {
    APTransportDeviceCreateWithNetworkAddresses_cold_3();
    return 4294954516;
  }

  if (!a5)
  {
    APTransportDeviceCreateWithNetworkAddresses_cold_2();
    return 4294954516;
  }

  v10 = transportDevice_create(a1);
  if (v10)
  {
    v11 = v10;
    *(v10 + 3) = CFRetain(a4);
    *(v11 + 5) = CFArrayCreateCopy(a1, theArray);
    *(v11 + 48) = a3;
    if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportDevice, "OSStatus APTransportDeviceCreateWithNetworkAddresses(CFAllocatorRef, CFArrayRef, APTransportDeviceAddressType, CFDictionaryRef, APTransportDeviceRef *)", 33554462, "APTransportDevice %{ptr} created with addresses %@ and deviceInfo %@\n", v11, theArray, a4);
    }

    result = 0;
    *a5 = v11;
  }

  else
  {
    APTransportDeviceCreateWithNetworkAddresses_cold_1();
    return 4294954510;
  }

  return result;
}

uint64_t APTransportDeviceCopyBrokeredReceiverInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 16);
  Int64 = CFDictionaryGetInt64();
  VTable = CMBaseObjectGetVTable();
  v13 = *(VTable + 16);
  result = VTable + 16;
  v14 = *(v13 + 96);
  if (v14)
  {

    return v14(v9, Int64, a2, a3, a4, a5);
  }

  return result;
}

BOOL APTransportDeviceHasMinimumRelationship(uint64_t a1, int a2)
{
  FigCFDictionaryGetInt32IfPresent();
  if (a2 == 2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    return 0;
  }

  return a2 == 0;
}

CFTypeRef APTransportDeviceCopyAssistedInfo(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 24), @"assistedInfo");
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

BOOL APTransportDeviceIsSelf(uint64_t a1)
{
  Int64 = CFDictionaryGetInt64();
  v2 = APSGetDeviceID();
  return CFDictionaryGetInt64() || Int64 == v2;
}

uint64_t APTransportDeviceIsReachable(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v15 = 0;
  if (*(a1 + 32) != 0)
  {
    return *(a1 + 48) == a2;
  }

  if ((a2 - 2) > 3u)
  {
    if (a2 == 6)
    {
      v7 = 24;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 3;
    }

    v9 = (v8 & CFDictionaryGetInt64Ranged()) != 0;
    v10 = *(a1 + 16);
    Int64 = CFDictionaryGetInt64();
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v12)
    {
      v13 = v12(v10, Int64, v2 == 1, 0, v9, v17, 1024, 0);
      if (!v13)
      {
        if (v2 == 6)
        {
          if (aptransportdevice_copyInterfaceNameFromDNSName(v17, &v15))
          {
            APSLogErrorAt();
            v4 = 0;
            v14 = v15;
            if (!v15)
            {
              return v4;
            }
          }

          else
          {
            v14 = v15;
            v4 = APSIsDirectLinkInterface();
            if (!v14)
            {
              return v4;
            }
          }

          CFRelease(v14);
          return v4;
        }

        return 1;
      }

      v4 = 0;
      if (v13 == -6727)
      {
        return v4;
      }
    }

    APSLogErrorAt();
    return 0;
  }

  NANDataSessionForAddressType = transportDevice_getNANDataSessionForAddressType(a1, a2, &v16);
  if (v16)
  {
    APTransportDeviceIsReachable_cold_1(v16);
    return 0;
  }

  return APTNANDataSessionIsActivatable(NANDataSessionForAddressType);
}

CFTypeRef transportDevice_getNANDataSessionForAddressType(void *a1, int a2, unsigned int *a3)
{
  v10 = 0;
  v4 = (a2 & 0xFE) == 4;
  if (a2 == 5 || a2 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  NANDataSession = transportDevice_getNANDataSession(a1, v6, v4, &v10);
  v8 = v10;
  if (v10)
  {
    transportDevice_getNANDataSessionForAddressType_cold_1(v10);
  }

  *a3 = v8;
  return NANDataSession;
}

void APTransportDeviceGetInfraReachability(void *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  cf = 0;
  IsReachable = APTransportDeviceIsReachable(a1, 0);
  v9 = APTransportDeviceIsReachable(a1, 6);
  if (*(a1 + 2) != 0)
  {
LABEL_8:
    v16 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = (CFDictionaryGetInt64Ranged() & 3) != 0;
  v11 = a1[2];
  Int64 = CFDictionaryGetInt64();
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v13)
  {
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v14 = v13(v11, Int64, 0, 0, v10, v18, 1024, 0);
  if (v14)
  {
    if (v14 == -6727)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v15 = aptransportdevice_copyInterfaceNameFromDNSName(v18, &cf);
  if (v15)
  {
    APTransportDeviceGetInfraReachability_cold_1(v15);
    goto LABEL_8;
  }

  v16 = APSIsEthernetInterface();
  if (a2)
  {
LABEL_9:
    *a2 = IsReachable;
  }

LABEL_10:
  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = v16;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t APTransportDeviceGetAddress(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v12 = a2;
  v29 = 0;
  cf = 0;
  if (a2 == 6)
  {
    v14 = 24;
  }

  else
  {
    v14 = 0;
  }

  if (a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 3;
  }

  v16 = (a1 + 24);
  if ((v15 & CFDictionaryGetInt64Ranged()) != 0)
  {
    if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
    {
      APTransportDeviceGetAddress_cold_1(v12, v16, @"transportsRequiringBroker", a1);
    }

    v17 = 1;
    BrowserAddress = APTransportDeviceGetBrowserAddress(a1, v12, a3, 1, a4, a5, a7);
    if (BrowserAddress)
    {
      v19 = BrowserAddress;
      APTransportDeviceGetAddress_cold_2(BrowserAddress);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (*(a1 + 32))
  {
    if (*(a1 + 48) == v12)
    {
      CStringRepresentation = APSNetworkAddressGetCStringRepresentation();
      if (CStringRepresentation)
      {
        v19 = CStringRepresentation;
        APTransportDeviceGetAddress_cold_4(CStringRepresentation);
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    APTransportDeviceGetAddress_cold_3();
LABEL_41:
    v19 = 4294960569;
    goto LABEL_33;
  }

  if (!*(a1 + 40))
  {
    if ((v12 - 2) <= 3u)
    {
      NANDataSessionForAddressType = transportDevice_getNANDataSessionForAddressType(a1, v12, &v29);
      v19 = v29;
      if (v29)
      {
        APTransportDeviceGetAddress_cold_7(v29);
        goto LABEL_33;
      }

      v24 = APTNANDataSessionCopyPeerAddress(NANDataSessionForAddressType, &cf);
      if (v24)
      {
        v19 = v24;
        APTransportDeviceGetAddress_cold_8(v24);
        goto LABEL_33;
      }

      v25 = APSNetworkAddressGetCStringRepresentation();
      if (v25)
      {
        v19 = v25;
        APTransportDeviceGetAddress_cold_9(v25);
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if (*(a1 + 16))
    {
      v26 = APTransportDeviceGetBrowserAddress(a1, v12, a3, 0, a4, a5, a7);
      if (v26)
      {
        v19 = v26;
        APTransportDeviceGetAddress_cold_6(v26);
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v19 = 4294960561;
LABEL_38:
    APSLogErrorAt();
    goto LABEL_33;
  }

  if (*(a1 + 48) != v12)
  {
    APTransportDeviceGetAddress_cold_5();
    goto LABEL_41;
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __transportDevice_networkAddressesToCStringRepresentation_block_invoke;
  v33 = &unk_278BC8CE8;
  v34 = v21;
  FigCFArrayApplyBlock();
  if (![v21 count])
  {
    v19 = 4294960569;
    goto LABEL_38;
  }

  v22 = [v21 componentsJoinedByString:@"\x1E"];
  if (!v22)
  {
    v19 = 4294960568;
    goto LABEL_44;
  }

  if (([v22 getCString:a4 maxLength:a5 encoding:1] & 1) == 0)
  {
    v19 = 4294960591;
LABEL_44:
    APSLogErrorAt();
    goto LABEL_38;
  }

LABEL_30:
  v17 = 0;
LABEL_31:
  v19 = 0;
  if (a6)
  {
    *a6 = v17;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t APTransportDeviceGetBrowserAddress(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 16);
  Int64 = CFDictionaryGetInt64();
  v15 = a2 == 1;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v16)
  {
    v18 = 4294954514;
    goto LABEL_6;
  }

  v17 = v16(v13, Int64, v15, a3, a4, a5, a6, a7);
  v18 = v17;
  if (v17)
  {
    if (v17 == -6727)
    {
      v18 = 0;
      *a5 = 0;
      return v18;
    }

LABEL_6:
    APSLogErrorAt();
  }

  return v18;
}

uint64_t APTransportDeviceResolveAddress(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 1)
  {
    v8 = *(a1 + 16);
    Int64 = CFDictionaryGetInt64();
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v10)
    {

      return v10(v8, Int64, a2, 1, a4, a5);
    }

    v12 = 4294954514;
    APSLogErrorAt();
    a2 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a5 + 16);

  return v13(a5, a2, 0, 0, a4, v12);
}

uint64_t APTransportDeviceCopyNANDataSession(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  if (a4)
  {
    NANDataSession = transportDevice_getNANDataSession(a1, a2, a3, &v8);
    v6 = v8;
    if (v8)
    {
      APTransportDeviceCopyNANDataSession_cold_1(v8);
    }

    else
    {
      if (NANDataSession)
      {
        NANDataSession = CFRetain(NANDataSession);
      }

      v6 = 0;
      *a4 = NANDataSession;
    }
  }

  else
  {
    APTransportDeviceCopyNANDataSession_cold_2();
    return 4294954516;
  }

  return v6;
}

CFTypeRef transportDevice_getNANDataSession(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (a2 == 2)
  {
    v14 = 11;
    if (!a3)
    {
      v14 = 9;
    }

    v9 = &a1[v14];
    if (a1[v14])
    {
      goto LABEL_11;
    }

    v15 = a1[2];
    Int64 = CFDictionaryGetInt64();
    v17 = APTNANDataSessionCreate(2, v15, Int64, a3, v9);
    v13 = v17;
    if (v17)
    {
      transportDevice_getNANDataSession_cold_1(v17);
    }
  }

  else
  {
    if (a2 == 1)
    {
      v8 = 10;
      if (!a3)
      {
        v8 = 8;
      }

      v9 = &a1[v8];
      if (!a1[v8])
      {
        v10 = a1[2];
        v11 = CFDictionaryGetInt64();
        v12 = APTNANDataSessionCreate(1, v10, v11, a3, v9);
        v13 = v12;
        if (v12)
        {
          transportDevice_getNANDataSession_cold_2(v12);
        }

        goto LABEL_19;
      }

LABEL_11:
      v13 = 0;
      goto LABEL_19;
    }

    v13 = -12780;
    APSLogErrorAt();
    if (gLogCategory_APTransportDevice <= 90 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportDevice, "APTNANDataSessionRef transportDevice_getNANDataSession(APTransportDeviceRef, APSNANServiceType, Boolean, OSStatus *)", 33554522, "[%{ptr}] Unknown NAN Data Session Type: %u", a1, a2);
    }

    v9 = 0;
  }

LABEL_19:
  FigSimpleMutexUnlock();
  *a4 = v13;
  if (v9)
  {
    return *v9;
  }

  else
  {
    return 0;
  }
}

const void *APTransportDeviceCopyProximityData(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v25[0] = 0xF0E0E0B0D0A0E0DLL;
  Value = CFDictionaryGetValue(*(a1 + 24), @"deviceInfo");
  v17 = 0;
  v3 = 0;
  v4 = 0;
  if (!APSIsProximitySenderEnabled() || !Value)
  {
    goto LABEL_35;
  }

  if (APSSettingsGetInt64())
  {
    v5 = APAdvertiserInfoCopyProperty(Value, 0, @"deviceName", 0, 0);
    if (!v5)
    {
      v3 = 0;
      v4 = 0;
      goto LABEL_35;
    }

    v6 = v5;
    v7 = APAdvertiserInfoCopyProperty(Value, 0, @"bluetoothAddress", 0, 0);
    if (!v7 || (getNINearbyObjectClass(), (objc_opt_respondsToSelector() & 1) == 0))
    {
      v4 = 0;
      v3 = 0;
      goto LABEL_32;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x3052000000;
    v22 = __Block_byref_object_copy__2;
    v8 = getNIDiscoveryTokenClass_softClass;
    v23 = __Block_byref_object_dispose__2;
    v24 = getNIDiscoveryTokenClass_softClass;
    if (!getNIDiscoveryTokenClass_softClass)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __getNIDiscoveryTokenClass_block_invoke;
      v18[3] = &unk_278BC7CE0;
      v18[4] = &v19;
      __getNIDiscoveryTokenClass_block_invoke(v18);
      v8 = v20[5];
    }

    _Block_object_dispose(&v19, 8);
    v9 = [v8 alloc];
    v3 = [v9 initWithBytes:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", v25, 8)}];
    if (!v3 || (v10 = [getNINearbyObjectClass() fauxObjectWithDiscoveryToken:v3 name:v6 deviceIdentifier:v7]) == 0)
    {
      v4 = 0;
      goto LABEL_32;
    }

    v11 = 5.0;
    if (CFStringGetLength(v6) < 1)
    {
      goto LABEL_22;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(v6, 0);
    v13 = CharacterAtIndex;
    if (CharacterAtIndex > 0x7F)
    {
      if (!__maskrune(CharacterAtIndex, 0x100uLL))
      {
        goto LABEL_22;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * CharacterAtIndex + 60) & 0x100) == 0)
    {
LABEL_22:
      if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportDevice, "OSStatus transportDevice_getFakeDistanceFromDeviceName(CFStringRef, float *)", 33554462, "Fake distance for %'@=%.1f\n", v6, v11);
      }

      if (objc_opt_respondsToSelector())
      {
        *&v14 = v11;
        [v10 overrideDistance:v14];
      }

      goto LABEL_28;
    }

    v11 = (91 - __toupper(v13)) * 0.1;
    goto LABEL_22;
  }

  v10 = CFDictionaryGetValue(*(a1 + 24), @"proximityData");
  if (gLogCategory_APTransportDevice <= 30)
  {
    APTransportDeviceCopyProximityData_cold_2(gLogCategory_APTransportDevice, a1, v10);
  }

  v7 = 0;
  v6 = 0;
  v3 = 0;
  v4 = 0;
  if (v10)
  {
LABEL_28:
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v17];
    v4 = v15;
    if (v17)
    {
      APTransportDeviceCopyProximityData_cold_1(&v17, v17, a1, v15, &v19);
      v4 = v19;
      if (!v6)
      {
LABEL_33:
        if (v7)
        {
          CFRelease(v7);
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v15)
      {
        CFRetain(v15);
      }

      if (!v6)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    CFRelease(v6);
    goto LABEL_33;
  }

LABEL_35:

  return v4;
}