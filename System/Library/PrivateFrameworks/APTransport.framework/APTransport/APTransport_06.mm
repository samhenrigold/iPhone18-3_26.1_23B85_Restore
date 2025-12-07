APCarSessionRequestHandler *__GetSharedCarSession_block_invoke()
{
  result = objc_alloc_init(APCarSessionRequestHandler);
  qword_281309C60 = result;
  return result;
}

Class __getCARSessionRequestAgentClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CarKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278BC9C08;
    v5 = 0;
    CarKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    __getCARSessionRequestAgentClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CARSessionRequestAgent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCARSessionRequestAgentClass_block_invoke_cold_1();
  }

  getCARSessionRequestAgentClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t APTransportStreamEnableReverseControl(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __APTransportStreamEnableReverseControl_block_invoke;
  v5[3] = &unk_278BC9D98;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t APTransportStreamWaitUntilReverseControlConnected(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = stream_waitUntilConnectionSetup(a1, 1);
  v3 = v2;
  if (v2)
  {
    APTransportStreamWaitUntilReverseControlConnected_cold_1(v2);
  }

  return v3;
}

__CFString *stream_CopyDebugDescription_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportStream %p '%@'>", a1, *(DerivedStorage + 88));
  return Mutable;
}

uint64_t stream_DumpHierarchy_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  if (DerivedStorage)
  {
    v11 = *(DerivedStorage + 24);
    v12 = 56;
    if (!v11)
    {
      v12 = 48;
    }

    v13 = *(DerivedStorage + v12);
    if (v11)
    {
      v14 = *(DerivedStorage + 48);
    }

    else
    {
      v14 = *(DerivedStorage + 56);
    }
  }

  else
  {
    stream_DumpHierarchy_cold_1_0();
    v13 = 0;
    v14 = 0;
  }

  v15 = (*(a5 + 16))(a5, a3, "Stream:[%{ptr}] (Buffered) %''@ Parent:[%{ptr}]\n", a1, *(v10 + 88), a2);
  if (v15)
  {
    v18 = v15;
    stream_DumpHierarchy_cold_2_0(v15);
  }

  else
  {
    v16 = stream_dumpConnectionInfo(a1, v13, a3 + 1, a5);
    if (v16)
    {
      v18 = v16;
      stream_DumpHierarchy_cold_3(v16);
    }

    else if (v14 == v13)
    {
      return 0;
    }

    else
    {
      v17 = stream_dumpConnectionInfo(a1, v14, a3 + 1, a5);
      v18 = v17;
      if (v17)
      {
        stream_DumpHierarchy_cold_4(v17);
      }
    }
  }

  return v18;
}

uint64_t stream_dumpConnectionInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 24);
  if (*(a2 + 96))
  {
    v8 = @"receive";
  }

  else
  {
    v8 = @"send";
  }

  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v10 = *(ProtocolVTable + 16)) == 0)
  {
    result = 4294954508;
    goto LABEL_13;
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
    result = 4294954514;
    if (a4)
    {
      return (*(a4 + 16))(a4, a3, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v7, v8, " ", v8, v8, result, a1);
    }

    return 0;
  }

  result = v11(v7, a1, a3, v8, a4);
  if (result == -12782 || result == -12788)
  {
LABEL_13:
    if (a4)
    {
      return (*(a4 + 16))(a4, a3, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v7, v8, " ", v8, v8, result, a1);
    }

    return 0;
  }

  return result;
}

uint64_t stream_ConfigureEncryption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
  {
    stream_ConfigureEncryption_cold_1(a1, v4, v5);
  }

  v6 = APSDispatchSyncTask();
  v7 = v6;
  if (v6)
  {
    stream_ConfigureEncryption_cold_2(v6);
  }

  return v7;
}

void __stream_postCachedConnectionEvent_block_invoke_0(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 48), 0, *(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __stream_waitUntilConnectedInternal_block_invoke(void *a1)
{
  v2 = a1[7];
  if (*(v2 + 72))
  {
    __stream_waitUntilConnectedInternal_block_invoke_cold_1();
  }

  else
  {
    stream_getConnectionState(v2, 0, (*(a1[5] + 8) + 24));
    CFDictionarySetData();

    CFDictionarySetInt64();
  }
}

void stream_relinquishMessageBBufInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dataPointerOut = 0;
  if (CFSetContainsValue(*(DerivedStorage + 104), a1[1]))
  {
    DataPointer = CMBlockBufferGetDataPointer(a1[1], 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      stream_relinquishMessageBBufInternal_cold_1(DataPointer);
    }

    else
    {
      Value = CFDictionaryGetValue(*(DerivedStorage + 112), dataPointerOut);
      if (Value)
      {
        v5 = Value;
        CFSetRemoveValue(*(DerivedStorage + 104), a1[1]);
        CFDictionaryRemoveValue(*(DerivedStorage + 112), dataPointerOut);
        v6 = 56;
        if (!*(DerivedStorage + 24))
        {
          v6 = 48;
        }

        v7 = *(*(DerivedStorage + v6) + 24);
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v8)
        {
          v9 = v8(v7, v5);
          if (!v9)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v9 = 4294954514;
        }

        stream_relinquishMessageBBufInternal_cold_2(v9);
      }

      else
      {
        stream_relinquishMessageBBufInternal_cold_3();
      }
    }
  }

  else
  {
    stream_relinquishMessageBBufInternal_cold_4();
  }

LABEL_8:
  if (*a1)
  {
    CFRelease(*a1);
  }
}

uint64_t stream_configureEncryptionInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_configureEncryptionInternal_cold_1();
    return 4294950679;
  }

  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 120);
  v5 = a1[1];
  *(v3 + 120) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = *(v3 + 128);
  v7 = a1[2];
  *(v3 + 128) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v8 = 56;
  if (!*(v3 + 24))
  {
    v8 = 48;
  }

  v9 = *(*(v3 + v8) + 24);
  v11 = a1[1];
  v10 = a1[2];
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v12)
  {
    v13 = 4294954514;
LABEL_16:
    APSLogErrorAt();
    return v13;
  }

  v13 = v12(v9, v11, v10);
  if (v13)
  {
    goto LABEL_16;
  }

  return v13;
}

void stream_sendBatchInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  Count = CFArrayGetCount(a1[2]);
  if (*(DerivedStorage + 72))
  {
    stream_sendBatchInternal_cold_1();
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
      v6 = Count;
      v7 = CFGetAllocator(a1[2]);
      Mutable = CFArrayCreateMutable(v7, v6, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v9 = Mutable;
        v10 = CFGetAllocator(a1[2]);
        v11 = MEMORY[0x23EEDC950](v10, v6, 0x100004077774924, 0);
        if (v11)
        {
          v12 = v11;
          v32 = v5;
          bzero(v11, v6);
          if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
          {
            stream_sendBatchInternal_cold_2(a1);
          }

          v33 = DerivedStorage;
          if (v6 < 1)
          {
LABEL_22:
            if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
            {
              stream_sendBatchInternal_cold_4(a1);
            }

            v20 = v32;
            v21 = *(v32 + 24);
            v22 = *(*(CMBaseObjectGetVTable() + 16) + 88);
            v23 = v33;
            if (v22)
            {
              v24 = v22(v21, v9);
            }

            else
            {
              v24 = APTransportConnectionSendBatchSlow(v21, v9);
            }

            if (v24)
            {
              stream_sendBatchInternal_cold_5(v24);
            }
          }

          else
          {
            v13 = 0;
            v14 = v12;
            v15 = v6;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a1[2], v13);
              if (!ValueAtIndex || (v17 = ValueAtIndex, v18 = CFGetTypeID(ValueAtIndex), v18 != CMBlockBufferGetTypeID()))
              {
                stream_sendBatchInternal_cold_6();
                goto LABEL_50;
              }

              v19 = stream_copyFormattedAsyncPackageForBBuf(*a1, v17, *(a1 + 2), &value, v14);
              if (v19)
              {
                break;
              }

              if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APTransportStream, "void stream_sendBatchInternal(void *)", 33554442, "[%{ptr}] Sending batch: type %'C message %{ptr}.\n", *a1, *(a1 + 2), v17);
              }

              CFArrayAppendValue(v9, value);
              if (value)
              {
                CFRelease(value);
                value = 0;
              }

              ++v13;
              ++v14;
              if (!--v15)
              {
                goto LABEL_22;
              }
            }

            stream_sendBatchInternal_cold_3(v19);
LABEL_50:
            v20 = v32;
            v23 = v33;
          }

          if (v6 >= 1)
          {
            for (i = 0; i != v6; ++i)
            {
              if (v12[i])
              {
                if (*(v23 + 40))
                {
                  v26 = CFArrayGetValueAtIndex(a1[2], i);
                  APTransportStreamSendBackingProviderRelinquishBBuf(*(v23 + 40), v26);
                }

                else
                {
                  v27 = CFArrayGetValueAtIndex(v9, i);
                  value = v27;
                  v28 = *(v20 + 24);
                  v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                  if (v29)
                  {
                    v29(v28, v27);
                  }
                }
              }
            }
          }

          v30 = CFGetAllocator(a1[2]);
          CFAllocatorDeallocate(v30, v12);
        }

        else
        {
          stream_sendBatchInternal_cold_7();
        }

        CFRelease(v9);
      }

      else
      {
        stream_sendBatchInternal_cold_8();
      }
    }

    else
    {
      stream_sendBatchInternal_cold_9();
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v31 = a1[2];
  if (v31)
  {
    CFRelease(v31);
  }
}

void __stream_eventReceived_block_invoke_2_0(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 200);
  if (v3)
  {
    v3(a1[5], 1668179564, a1[6], *(v2 + 192));
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];

  CFRelease(v5);
}

void __stream_eventReceived_block_invoke_3_0(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 200);
  if (v3)
  {
    v3(a1[5], 1684628836, a1[6], *(v2 + 192));
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];

  CFRelease(v5);
}

uint64_t APTTrafficMetricsGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_19 != -1)
  {
    APTTrafficMetricsGetTypeID_cold_1();
  }

  return qword_281309C70;
}

uint64_t _APTTrafficMetricsGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  qword_281309C70 = result;
  return result;
}

uint64_t APTransportPackageDatagramCreateWithBBuf(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (a3)
  {
    APTransportPackageGetClassID(a1, a2);
    v5 = CMDerivedObjectCreate();
    v6 = v5;
    if (v5)
    {
      APTransportPackageDatagramCreateWithBBuf_cold_1(v5);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = 1684501101;
      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      *(DerivedStorage + 8) = v8;
      *a3 = CFRetain(0);
    }
  }

  else
  {
    APTransportPackageDatagramCreateWithBBuf_cold_2();
    return 4294894936;
  }

  return v6;
}

void datagramPackage_Finalize(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t datagramPackage_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateF(0, "<APTransportPackageDatagram %p [%p]>{ type='%C', data=%@ }", a1, v3, *DerivedStorage, *(DerivedStorage + 1));
  if (!v4)
  {
    datagramPackage_CopyDebugDescription_cold_1();
  }

  return v4;
}

CFTypeRef datagramPackage_CopyMessageData(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 8);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

_DWORD *datagramPackage_SetMessageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *result = a2;
  return result;
}

CFTypeRef datagramPackage_CreateBBufRepresentation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (!v2)
  {
    datagramPackage_CreateBBufRepresentation_cold_2();
    return 0;
  }

  if (CMBlockBufferIsEmpty(v2))
  {
    datagramPackage_CreateBBufRepresentation_cold_1();
    return 0;
  }

  v3 = *(DerivedStorage + 8);

  return CFRetain(v3);
}

uint64_t APBrowserCreate(const __CFAllocator *a1, const __CFDictionary *a2, _DWORD *a3, CFTypeRef *a4)
{
  if (!a3)
  {
    APBrowserCreate_cold_26();
    DerivedStorage = 0;
LABEL_80:
    v58 = 4294960591;
    goto LABEL_74;
  }

  APBrowserGetClassID(a1, a2);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v58 = v8;
    APBrowserCreate_cold_1(v8);
    DerivedStorage = 0;
    goto LABEL_74;
  }

  v71 = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a3;
  v10 = dispatch_queue_create("APBrowserInternalQueue", 0);
  DerivedStorage[1] = v10;
  if (!v10)
  {
    APBrowserCreate_cold_25();
LABEL_85:
    v58 = 4294960568;
    goto LABEL_74;
  }

  v11 = dispatch_queue_create("APBrowserEventQueue", 0);
  DerivedStorage[2] = v11;
  if (!v11)
  {
    APBrowserCreate_cold_24();
    goto LABEL_85;
  }

  if (!a2)
  {
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
LABEL_14:
    v22 = 1;
    v23 = "AirPlay";
    v24 = kAPBonjourBrowserServiceType_AirPlay;
    v25 = @"AirPlayBonjourInfo";
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(a2, @"EventRecorder");
  if (!Value)
  {
    DerivedStorage[48] = 0;
    goto LABEL_11;
  }

  v17 = CFRetain(Value);
  DerivedStorage[48] = v17;
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 != APSEventRecorderGetTypeID())
    {
      APBrowserCreate_cold_2();
      goto LABEL_80;
    }
  }

LABEL_11:
  DerivedStorage[54] = mach_absolute_time();
  *(DerivedStorage + 264) = CFDictionaryGetInt64() != 0;
  v14 = CFDictionaryGetInt64() == 0;
  v13 = CFDictionaryGetInt64() == 0;
  v12 = CFDictionaryGetInt64() == 0;
  Int64 = CFDictionaryGetInt64();
  v20 = CFDictionaryGetValue(a2, @"BrokerManager");
  v21 = 0;
  if (v20)
  {
    v21 = CFRetain(v20);
  }

  DerivedStorage[43] = v21;
  v15 = CFDictionaryGetInt64() == 0;
  if (!Int64)
  {
    goto LABEL_14;
  }

  v22 = 0;
  v23 = "SidePlay";
  v24 = &kAPBonjourBrowserServiceType_SidePlay;
  v25 = @"SidePlayBonjourInfo";
LABEL_16:
  v26 = *v24;
  DerivedStorage[8] = v25;
  DerivedStorage[9] = v26;
  DerivedStorage[10] = v23;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APBrowserCreate_cold_23();
    goto LABEL_85;
  }

  v28 = Mutable;
  CFDictionarySetInt64();
  v29 = *MEMORY[0x277CBED28];
  v30 = v22;
  v31 = v15;
  v32 = v12;
  v33 = *MEMORY[0x277CBED10];
  if (v30)
  {
    v34 = *MEMORY[0x277CBED28];
  }

  else
  {
    v34 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v28, @"raopEnabled", v34);
  CFDictionarySetValue(v28, @"localEnabled", v34);
  if (v14)
  {
    v35 = v33;
  }

  else
  {
    v35 = v29;
  }

  CFDictionarySetValue(v28, @"partialAWDLAllowed", v35);
  if (*(DerivedStorage + 264))
  {
    v36 = v29;
  }

  else
  {
    v36 = v33;
  }

  CFDictionarySetValue(v28, @"fullAWDLAllowed", v36);
  if (v13)
  {
    v37 = v33;
  }

  else
  {
    v37 = v29;
  }

  CFDictionarySetValue(v28, @"openNANAllowed", v37);
  if (v32)
  {
    v38 = v33;
  }

  else
  {
    v38 = v29;
  }

  CFDictionarySetValue(v28, @"securePartialNANAllowed", v38);
  if (v31)
  {
    v39 = v33;
  }

  else
  {
    v39 = v29;
  }

  CFDictionarySetValue(v28, @"browseForAltReceiver", v39);
  CFDictionarySetValue(v28, @"enableCache", v34);
  v40 = APBonjourBrowserCreate(a1, v28, DerivedStorage + 11);
  if (v40)
  {
    v58 = v40;
    APBrowserCreate_cold_3(v40);
  }

  else
  {
    v41 = APBonjourBrowserSetEventHandler(DerivedStorage[11], browser_handleBonjourEventExternal, 0);
    if (v41)
    {
      v58 = v41;
      APBrowserCreate_cold_4(v41);
    }

    else
    {
      CFRetain(0);
      *(DerivedStorage + 244) = 0;
      if (v31)
      {
        v42 = 0;
        goto LABEL_41;
      }

      v43 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v43)
      {
        v42 = v43;
        CFDictionarySetValue(v43, @"BrowseForAltReceivers", v29);
LABEL_41:
        v44 = APBrowserBTLEManagerCreate(v42, DerivedStorage + 12);
        if (v44)
        {
          v58 = v44;
          APBrowserCreate_cold_6(v44);
          goto LABEL_71;
        }

        v45 = APBrowserBTLEManagerSetEventHandler(DerivedStorage[12], browser_handleBTLEEventExternal, 0);
        if (v45)
        {
          v58 = v45;
          APBrowserCreate_cold_7(v45);
          goto LABEL_71;
        }

        CFRetain(0);
        v47 = APBrowserDeviceQueryManagerGetInfoCreate(DerivedStorage + 13, v46);
        if (v47)
        {
          v58 = v47;
          APBrowserCreate_cold_8(v47);
          goto LABEL_71;
        }

        v48 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[14] = v48;
        if (!v48)
        {
          APBrowserCreate_cold_22();
          goto LABEL_55;
        }

        v49 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[19] = v49;
        if (!v49)
        {
          APBrowserCreate_cold_21();
          goto LABEL_55;
        }

        v50 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[20] = v50;
        if (!v50)
        {
          APBrowserCreate_cold_20();
          goto LABEL_55;
        }

        v51 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[21] = v51;
        if (!v51)
        {
          APBrowserCreate_cold_19();
          goto LABEL_55;
        }

        v52 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[22] = v52;
        if (!v52)
        {
          APBrowserCreate_cold_18();
          goto LABEL_55;
        }

        v54 = APBrowserRapportManagerCreate(DerivedStorage + 18, v53);
        if (v54)
        {
          v58 = v54;
          APBrowserCreate_cold_9(v54);
          goto LABEL_71;
        }

        v55 = APBrowserRapportManagerSetEventHandler(DerivedStorage[18], browser_handleRapportEventExternal, 0);
        if (v55)
        {
          v58 = v55;
          APBrowserCreate_cold_10(v55);
          goto LABEL_71;
        }

        CFRetain(0);
        v56 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[45] = v56;
        if (!v56)
        {
          APBrowserCreate_cold_17();
          goto LABEL_55;
        }

        SharedHelper = APConnectivityHelperGetSharedHelper();
        if (!SharedHelper)
        {
          DerivedStorage[23] = 0;
LABEL_54:
          APBrowserCreate_cold_16();
LABEL_55:
          v58 = 4294960568;
          goto LABEL_71;
        }

        v59 = CFRetain(SharedHelper);
        DerivedStorage[23] = v59;
        if (!v59)
        {
          goto LABEL_54;
        }

        v60 = APConnectivityHelperRegisterEventHandler(v59, 0, browser_handleConnectivityHelperEventExternal);
        if (v60)
        {
          v58 = v60;
          APBrowserCreate_cold_11(v60);
          goto LABEL_71;
        }

        v61 = objc_opt_new();
        DerivedStorage[25] = v61;
        if (!v61)
        {
          APBrowserCreate_cold_15();
          goto LABEL_55;
        }

        [v61 setDispatchQueue:DerivedStorage[1]];
        [DerivedStorage[25] activateWithCompletion:0];
        v62 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[26] = v62;
        if (!v62)
        {
          APBrowserCreate_cold_14();
          goto LABEL_55;
        }

        v63 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[27] = v63;
        if (!v63)
        {
          APBrowserCreate_cold_13();
          goto LABEL_55;
        }

        if (IsAppleInternalBuild())
        {
          v64 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          DerivedStorage[29] = v64;
          if (!v64)
          {
            APBrowserCreate_cold_12();
            goto LABEL_55;
          }
        }

        v65 = *DerivedStorage;
        v66 = **DerivedStorage;
        if (v66 <= 50)
        {
          if (v66 != -1)
          {
LABEL_67:
            LogPrintF(v65, "OSStatus APBrowserCreate(CFAllocatorRef, CFDictionaryRef, LogCategory *, APBrowserRef *)", 33554482, "[%{ptr}] Created APBrowserStandard with %@ primary APBonjourBrowser [%{ptr}]", 0, DerivedStorage[9], DerivedStorage[11]);
            goto LABEL_68;
          }

          if (_LogCategory_Initialize())
          {
            v65 = *DerivedStorage;
            goto LABEL_67;
          }
        }

LABEL_68:
        browser_sendPowerLogDiscoveryModeEvent(0);
        v67 = CFStringCreateF(0, "%s [%p] Discovery Lifetime Dump", *(*DerivedStorage + 3), 0);
        DerivedStorage[7] = v67;
        if (v67)
        {
          FigInstallSysdiagnoseBlock();
        }

        v58 = 0;
        *v71 = 0;
LABEL_71:
        if (v42)
        {
          CFRelease(v42);
        }

        CFRelease(v28);
        if (!v58)
        {
          return v58;
        }

        goto LABEL_74;
      }

      APBrowserCreate_cold_5();
      v58 = 4294960568;
    }
  }

  CFRelease(v28);
LABEL_74:
  v68 = *DerivedStorage;
  v69 = **DerivedStorage;
  if (v69 <= 90)
  {
    if (v69 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v58;
      }

      v68 = *DerivedStorage;
    }

    LogPrintF(v68, "OSStatus APBrowserCreate(CFAllocatorRef, CFDictionaryRef, LogCategory *, APBrowserRef *)", 33554522, "APBrowserCreate failed %#m.\n", v58);
  }

  return v58;
}

void browser_handleConnectivityHelperEventExternal(uint64_t a1, int a2, const void *a3, const void *a4)
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
  block[2] = __browser_handleConnectivityHelperEventExternal_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v10 = a2;
  block[4] = a4;
  block[5] = a3;
  dispatch_async(v8, block);
}

void __APBrowserCreate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  v4 = **v2;
  if (v4 <= 50)
  {
    if (v4 == -1)
    {
      v5 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_5;
      }

      v3 = *v2;
    }

    LogPrintF(v3, "OSStatus APBrowserCreate(CFAllocatorRef, CFDictionaryRef, LogCategory *, APBrowserRef *)_block_invoke", 33554482, "[%{ptr}] Discovery lifetime sysdiagnose dump", *(a1 + 40));
    v2 = *(a1 + 32);
  }

LABEL_5:
  v6 = *(v2 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserCreate_block_invoke_2;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = *(a1 + 40);
  block[5] = v2;
  dispatch_sync(v6, block);
}

void *__APBrowserCreate_block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __APBrowserCreate_block_invoke_3;
  v3[3] = &__block_descriptor_40_e9_i16__0r_8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return browser_dumpLifetimeMetrics(v1, v3);
}

void *browser_dumpLifetimeMetrics(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  v5 = mach_absolute_time();
  result = CMBaseObjectGetDerivedStorage();
  v7 = result + 50;
  if (v4)
  {
    v7 = 0;
  }

  if (v4 == 1)
  {
    v7 = result + 51;
  }

  if (v4 == 2)
  {
    v7 = result + 52;
  }

  if (v4 == 3)
  {
    v7 = result + 53;
  }

  *v7 += v5 - result[54];
  result[54] = v5;
  if (a2)
  {
    v8 = UpTicksToSeconds();
    (*(a2 + 16))(a2, "%-34s %3lluh %02llum %02llus\n", "Time spent in None mode:", v8 / 0xE10, v8 % 0xE10 / 0x3C, v8 % 0x3C);
    v9 = UpTicksToSeconds();
    (*(a2 + 16))(a2, "%-34s %3lluh %02llum %02llus\n", "Time spent in Presence mode:", v9 / 0xE10, v9 % 0xE10 / 0x3C, v9 % 0x3C);
    v10 = UpTicksToSeconds();
    (*(a2 + 16))(a2, "%-34s %3lluh %02llum %02llus\n", "Time spent in DetailedNonP2P mode:", v10 / 0xE10, v10 % 0xE10 / 0x3C, v10 % 0x3C);
    v11 = UpTicksToSeconds();
    (*(a2 + 16))(a2, "%-34s %3lluh %02llum %02llus\n", "Time spent in Detailed mode:", v11 / 0xE10, v11 % 0xE10 / 0x3C, v11 % 0x3C);
    return (*(a2 + 16))(a2, "Discovery mode increase transitions: %u\n", *(DerivedStorage + 392));
  }

  return result;
}

uint64_t __APBrowserCreate_block_invoke_3(uint64_t a1)
{
  v1 = ***(a1 + 32);
  if (v1 <= 50 && (v1 != -1 || _LogCategory_Initialize()))
  {
    LogPrintV();
  }

  return 0;
}

uint64_t APBrowserTickleDetailedMode(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = APSDispatchSyncTask();
  v2 = v1;
  if (v1)
  {
    APBrowserTickleDetailedMode_cold_1(v1);
  }

  return v2;
}

uint64_t APBrowserDiscoverAndInjectDevice(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APBrowserDiscoverAndInjectDevice_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v5, block);
    return 0;
  }

  else
  {
    APBrowserDiscoverAndInjectDevice_cold_1();
    return 4294960591;
  }
}

uint64_t __APBrowserDiscoverAndInjectDevice_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  v4 = **v2;
  if (v4 > 30)
  {
    goto LABEL_5;
  }

  if (v4 != -1)
  {
    goto LABEL_3;
  }

  v5 = _LogCategory_Initialize();
  v2 = *(a1 + 32);
  if (v5)
  {
    v3 = *v2;
LABEL_3:
    LogPrintF(v3, "OSStatus APBrowserDiscoverAndInjectDevice(APBrowserRef, CFDictionaryRef)_block_invoke", 33554462, "[%{ptr}] Discover and inject device with info: %@", *(a1 + 40), *(a1 + 48));
    v2 = *(a1 + 32);
  }

LABEL_5:
  v6 = *(v2 + 224);
  if (v6)
  {
    [v6 stopBrowsing];
  }

  else
  {
    v7 = objc_opt_new();
    v8 = *(a1 + 32);
    *(v8 + 224) = v7;
    [v7 setDispatchQueue:*(v8 + 8)];
  }

  CFRetain(*(a1 + 40));
  CFRetain(*(a1 + 48));
  return [*(*(a1 + 32) + 224) startBrowsingFor:30.0 withTimeout:? deviceFoundHandler:?];
}

void __APBrowserDiscoverAndInjectDevice_block_invoke_2(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v5 = NSErrorToOSStatus();
  cf = 0;
  value = 0;
  v6 = **(a1 + 32);
  v7 = *v6;
  if (!v5)
  {
    if (v7 > 50)
    {
      goto LABEL_12;
    }

    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v6 = **(a1 + 32);
      v7 = *v6;
    }

    v8 = *(a1 + 40);
    if (v7 > 30)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(v6, "OSStatus APBrowserDiscoverAndInjectDevice(APBrowserRef, CFDictionaryRef)_block_invoke_2", 33554482, "[%{ptr}] Discovered assisted device%?{end} matching info: %@", v8, v9, *(a1 + 48));
LABEL_12:
    v10 = *MEMORY[0x277CBECE8];
    v11 = APBrowserCreateAdvertiserInfoForDevice(*MEMORY[0x277CBECE8], a2, 0, 0, &cf);
    if (v11)
    {
      __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_1(v11);
    }

    else
    {
      v12 = APBrowserCopyDeviceIDFromBonjourInfo(v10, a2, &value);
      if (v12)
      {
        __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_2(v12);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(v10, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v14 = Mutable;
          CFDictionarySetValue(Mutable, @"deviceID", value);
          CFDictionarySetValue(v14, @"deviceInfo", cf);
          CFDictionarySetValue(v14, @"assistedInfo", *(a1 + 48));
          CFDictionarySetValue(v14, @"isModernPresent", *MEMORY[0x277CBED28]);
          v15 = CFDictionaryCreateMutable(v10, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v15)
          {
            __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_4();
LABEL_23:
            CFRelease(v14);
            goto LABEL_24;
          }

          v16 = v15;
          CFDictionarySetValue(v15, @"AirPlayBonjourInfo", a2);
          CFDictionarySetValue(v16, @"LastEventInfo", v14);
          CFDictionarySetValue(*(*(a1 + 32) + 216), value, v16);
          v17 = **(a1 + 32);
          if (*v17 <= 50)
          {
            if (*v17 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_20;
              }

              v17 = **(a1 + 32);
            }

            LogPrintF(v17, "OSStatus APBrowserDiscoverAndInjectDevice(APBrowserRef, CFDictionaryRef)_block_invoke_2", 33554482, "[%{ptr}] Stored assisted device: %@", *(a1 + 40), value);
          }

LABEL_20:
          v18 = browser_dispatchEvent(*(a1 + 40), 3, v14);
          if (v18)
          {
            __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_3(v18);
          }

          CFRelease(v16);
          goto LABEL_23;
        }

        __APBrowserDiscoverAndInjectDevice_block_invoke_2_cold_5();
      }
    }

    goto LABEL_24;
  }

  if (v7 > 90)
  {
    goto LABEL_24;
  }

  v19 = v5;
  if (v7 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_24;
    }

    v6 = **(a1 + 32);
    v7 = *v6;
  }

  v20 = *(a1 + 40);
  if (v7 > 30)
  {
    v21 = 1;
  }

  else
  {
    v21 = v7 == -1 && _LogCategory_Initialize() == 0;
  }

  LogPrintF(v6, "OSStatus APBrowserDiscoverAndInjectDevice(APBrowserRef, CFDictionaryRef)_block_invoke_2", 33554522, "[%{ptr}] Failed to discover assisted device. error: %#m%?{end} info: %@", v20, v19, v21, *(a1 + 48));
LABEL_24:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

uint64_t APBrowserRemoveInjectedDevice(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APBrowserRemoveInjectedDevice_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a1;
    dispatch_sync(v5, block);
    return 0;
  }

  else
  {
    APBrowserRemoveInjectedDevice_cold_1();
    return 4294960591;
  }
}

uint64_t __APBrowserRemoveInjectedDevice_block_invoke(uint64_t a1)
{
  result = CFDictionaryContainsKey(*(*(a1 + 32) + 216), *(a1 + 40));
  if (result)
  {
    CFDictionaryRemoveValue(*(*(a1 + 32) + 216), *(a1 + 40));
    result = **(a1 + 32);
    if (*result <= 50)
    {
      if (*result != -1)
      {
        return LogPrintF(result, "OSStatus APBrowserRemoveInjectedDevice(APBrowserRef, CFNumberRef)_block_invoke", 33554482, "[%{ptr}] Removed injected device: %@", *(a1 + 48), *(a1 + 40));
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        result = **(a1 + 32);
        return LogPrintF(result, "OSStatus APBrowserRemoveInjectedDevice(APBrowserRef, CFNumberRef)_block_invoke", 33554482, "[%{ptr}] Removed injected device: %@", *(a1 + 48), *(a1 + 40));
      }
    }
  }

  return result;
}

void sub_23D319BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t browser_Invalidate(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = APSDispatchSyncTask();
  v2 = v1;
  if (v1)
  {
    browser_Invalidate_cold_1(v1);
  }

  return v2;
}

void browser_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }

  v3 = *(DerivedStorage + 88);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 88) = 0;
  }

  *(DerivedStorage + 224) = 0;
  v4 = *(DerivedStorage + 384);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 384) = 0;
  }

  v5 = *(DerivedStorage + 96);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 96) = 0;
  }

  v6 = *(DerivedStorage + 104);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 104) = 0;
  }

  v7 = *(DerivedStorage + 112);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 112) = 0;
  }

  v8 = *(DerivedStorage + 144);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 144) = 0;
  }

  v9 = *(DerivedStorage + 152);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 152) = 0;
  }

  v10 = *(DerivedStorage + 160);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 160) = 0;
  }

  v11 = *(DerivedStorage + 168);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 168) = 0;
  }

  v12 = *(DerivedStorage + 176);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 176) = 0;
  }

  v13 = *(DerivedStorage + 344);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 344) = 0;
  }

  v14 = *(DerivedStorage + 360);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 360) = 0;
  }

  v15 = *(DerivedStorage + 184);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 184) = 0;
  }

  v16 = *(DerivedStorage + 32);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 32) = 0;
  }

  *(DerivedStorage + 200) = 0;
  v17 = *(DerivedStorage + 208);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 208) = 0;
  }

  v18 = *(DerivedStorage + 216);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 216) = 0;
  }

  v19 = *(DerivedStorage + 232);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 232) = 0;
  }

  v20 = *(DerivedStorage + 56);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 56) = 0;
  }

  v21 = *(DerivedStorage + 8);
  if (v21)
  {
    dispatch_release(v21);
    *(DerivedStorage + 8) = 0;
  }

  v22 = *(DerivedStorage + 16);
  if (v22)
  {
    dispatch_release(v22);
    *(DerivedStorage + 16) = 0;
  }

  v23 = *(DerivedStorage + 368);
  if (v23)
  {

    *(DerivedStorage + 368) = 0;
  }
}

CFTypeRef browser_CopyDescription(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (!APSDispatchSyncTask())
  {
    return 0;
  }

  APSLogErrorAt();
  return CFRetain(@"Description not available");
}

uint64_t browser_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v4 = FigDispatchSyncCopyPropertyImplementation();
  v5 = v4;
  if (v4)
  {
    browser_CopyProperty_cold_1(v4);
  }

  return v5;
}

uint64_t browser_copyDescription(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = CFGetAllocator(*a1);

  return browser_copyDescriptionInternal(v1, v4, v2, v3);
}

uint64_t browser_copyDescriptionInternal(uint64_t a1, const __CFAllocator *a2, int a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v26 = 0;
  v27 = 0;
  Mutable = CFStringCreateMutable(a2, 0);
  v29[3] = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"+-+ APBrowser state +-+\n");
    CFStringAppend(v29[3], @"\n");
    v10 = v29[3];
    StringForMode = browser_getStringForMode(*(DerivedStorage + 24), *DerivedStorage);
    CFStringAppendFormat(v10, 0, @"mode=%s", StringForMode);
    if (*(DerivedStorage + 32))
    {
      CFStringAppendFormat(v29[3], 0, @" (%@)", *(DerivedStorage + 32));
    }

    if (*(DerivedStorage + 130))
    {
      if (*(DerivedStorage + 129))
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }
    }

    else
    {
      v12 = "<not queried, assuming no>";
    }

    if (*(DerivedStorage + 192))
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (*(DerivedStorage + 193))
    {
      v14 = "yes";
    }

    else
    {
      v14 = "no";
    }

    if (*(DerivedStorage + 198))
    {
      v15 = "yes";
    }

    else
    {
      v15 = "no";
    }

    if (*(DerivedStorage + 244))
    {
      v16 = "yes";
    }

    else
    {
      v16 = "no";
    }

    CFStringAppendFormat(v29[3], 0, @" soloSupported=%s wifiSystemReady=%s awdlSystemReady=%s wifiPowered=%s avDevicePresent=%s", v12, v13, v14, v15, v16);
    if (*(DerivedStorage + 245))
    {
      v17 = "yes";
    }

    else
    {
      v17 = "no";
    }

    CFStringAppendFormat(v29[3], 0, @" invalidated=%s\n", v17);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __browser_copyDescriptionInternal_block_invoke;
    v25[3] = &unk_278BCA128;
    v25[4] = &v28;
    browser_dumpLifetimeMetrics(a1, v25);
    if (CFDictionaryGetCount(*(DerivedStorage + 216)))
    {
      context[0] = v29 + 3;
      context[1] = a1;
      context[2] = a2;
      v23 = a3;
      v24 = FigCFEqual();
      CFStringAppend(v29[3], @"\n");
      CFStringAppend(v29[3], @"Nearby devices:\n");
      CFDictionaryApplyFunction(*(DerivedStorage + 216), browser_copyDescriptionForDevice, context);
    }

    if (CFDictionaryGetCount(*(DerivedStorage + 112)))
    {
      CFStringAppend(v29[3], @"\n");
      CFStringAppend(v29[3], @"BTLE devices:\n");
      CFDictionaryApplyBlock();
    }

    v18 = APBrowserBTLEManagerCopyShowInfo(*(DerivedStorage + 96), a3, &v27);
    if (v18)
    {
      goto LABEL_41;
    }

    CFStringAppend(v29[3], @"\n");
    CFStringAppendFormat(v29[3], 0, @"%@", v27);
    if (CFDictionaryGetCount(*(DerivedStorage + 152)))
    {
      CFStringAppend(v29[3], @"\n");
      CFStringAppend(v29[3], @"Rapport devices:\n");
      CFDictionaryApplyBlock();
    }

    v18 = APBrowserRapportManagerCopyShowInfo(*(DerivedStorage + 144), a3, &v26);
    if (v18)
    {
LABEL_41:
      APSLogErrorAt();
    }

    else
    {
      CFStringAppend(v29[3], @"\n");
      CFStringAppendFormat(v29[3], 0, @"%@", v26);
      v18 = 0;
      v19 = v29;
      *a4 = v29[3];
      v19[3] = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v18 = 4294960568;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v20 = v29[3];
  if (v20)
  {
    CFRelease(v20);
  }

  _Block_object_dispose(&v28, 8);
  return v18;
}

uint64_t __browser_copyDescriptionInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = CFStringAppendV();
  v10 = v9;
  if (v9)
  {
    __browser_copyDescriptionInternal_block_invoke_cold_1(v9);
  }

  return v10;
}

void browser_copyDescriptionForDevice(const void *a1, const __CFDictionary *a2, CFMutableStringRef **a3)
{
  v63 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  v44 = 0;
  v45 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *buffer = 0u;
  v48 = 0u;
  v6 = *a3;
  v7 = *(a3 + 6);
  CFStringAppendF(**a3, "    DeviceID:%-15@ transports:", a1);
  if (*(a3 + 28))
  {
    Value = CFDictionaryGetValue(a2, @"SidePlayBonjourInfo");
    Transports = APBrowserGetTransports(Value, 0, &v45);
    v9 = "W";
    if ((v45 & 2) == 0)
    {
      v9 = "w";
    }

    if (v45)
    {
      v10 = "E";
    }

    else
    {
      v10 = "e";
    }

    CFStringAppendFormat(*v6, 0, @" _sideplay=%s%s", v9, v10);
  }

  else
  {
    v43 = v7;
    v45 = 0;
    v11 = CFDictionaryGetValue(a2, @"AirPlayBonjourInfo");
    v12 = v11;
    if (v11)
    {
      v42 = CFDictionaryGetValue(v11, @"cached");
    }

    else
    {
      v42 = *MEMORY[0x277CBED10];
    }

    APBrowserGetTransports(v12, 0, &v45);
    v44 = 0;
    v13 = CFDictionaryGetValue(a2, @"AirPlayNANFullBonjourInfo");
    APBrowserGetTransports(v13, 0, &v44);
    v14 = "w";
    if ((v45 & 2) != 0)
    {
      v14 = "W";
    }

    v15 = "a";
    if ((v45 & 4) != 0)
    {
      v15 = "A";
    }

    if ((v44 & 0x80) != 0)
    {
      v16 = "N";
    }

    else
    {
      v16 = "n";
    }

    v17 = "u";
    if ((v45 & 8) != 0)
    {
      v17 = "U";
    }

    v18 = "E";
    if ((v45 & 1) == 0)
    {
      v18 = "e";
    }

    if ((v45 & 0x10) != 0)
    {
      v19 = "D";
    }

    else
    {
      v19 = "d";
    }

    CFStringAppendFormat(*v6, 0, @" _airplay=%s%s%s%s%s%s", v14, v15, v16, v17, v18, v19);
    if ((v45 & 0x20) != 0)
    {
      v20 = "B";
    }

    else
    {
      v20 = "b";
    }

    CFStringAppendFormat(*v6, 0, @"%s", v20);
    DeviceRelationship = browser_getDeviceRelationship(a3[1], a1, 0);
    CFStringAppendFormat(*v6, 0, @"%s", off_278BCA3D8[DeviceRelationship]);
    v45 = 0;
    v22 = CFDictionaryGetValue(a2, @"RAOPBonjourInfo");
    APBrowserGetTransports(v22, 0, &v45);
    v23 = "w";
    if ((v45 & 2) != 0)
    {
      v23 = "W";
    }

    if ((v45 & 4) != 0)
    {
      v24 = "A";
    }

    else
    {
      v24 = "a";
    }

    v25 = "u";
    if ((v45 & 8) != 0)
    {
      v25 = "U";
    }

    v26 = "E";
    if ((v45 & 1) == 0)
    {
      v26 = "e";
    }

    if ((v45 & 0x10) != 0)
    {
      v27 = "D";
    }

    else
    {
      v27 = "d";
    }

    CFStringAppendFormat(*v6, 0, @" _raop=%s%s%s%s%s", v23, v24, v25, v26, v27);
    if ((v45 & 0x20) != 0)
    {
      v28 = "B";
    }

    else
    {
      v28 = "b";
    }

    CFStringAppendFormat(*v6, 0, @"%s", v28);
    v45 = 0;
    v29 = CFDictionaryGetValue(a2, @"AirPlayP2PBonjourInfo");
    APBrowserGetTransports(v29, 0, &v45);
    v44 = 0;
    v30 = CFDictionaryGetValue(a2, @"AirPlayNANPartialBonjourInfo");
    Transports = APBrowserGetTransports(v30, 0, &v44);
    if ((v45 & 4) != 0)
    {
      v31 = "A";
    }

    else
    {
      v31 = "a";
    }

    v32 = "n";
    if ((v44 & 0x80) != 0)
    {
      v32 = "N";
    }

    if ((v45 & 0x80) != 0)
    {
      v33 = "S";
    }

    else
    {
      v33 = "s";
    }

    CFStringAppendFormat(*v6, 0, @" _airplay-p2p=%s%s%s", v31, v32, v33);
    if (v42 == *MEMORY[0x277CBED28])
    {
      v34 = "Y";
    }

    else
    {
      v34 = "N";
    }

    CFStringAppendFormat(*v6, 0, @" cached=%s", v34);
    v7 = v43;
  }

  FigCFDictionaryGetValue();
  v35 = FigCFDictionaryGetValue();
  v36 = "yes";
  if (!v35)
  {
    v36 = "no";
  }

  CFStringAppendFormat(*v6, 0, @"    AdvertiserInfo:%-3s", v36);
  v37 = *v6;
  v38 = CFDictionaryGetValue(a2, @"DispatchTimeStamp");
  CFStringAppendF(v37, " eventDispatched:%-31@", v38);
  if (v35)
  {
    v39 = APAdvertiserInfoCopyProperty(v35, 0, @"deviceName", 0, &Transports);
    if (!Transports)
    {
      v40 = v39;
      CFStringGetCString(v39, buffer, 256, 0x8000100u);
      if (v40)
      {
        CFRelease(v40);
      }
    }
  }

  v41 = buffer;
  if (!buffer[0])
  {
    v41 = "N/A";
  }

  CFStringAppendF(*v6, "    Name:%-15s", v41);
  CFStringAppend(*v6, @"\n");
  if (v7)
  {
    CFStringAppendFormat(*v6, 0, @"        AdvertiserInfo=%@\n", v35);
  }
}

void __browser_copyDescriptionInternal_block_invoke_2(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *buffer = 0u;
  v16 = 0u;
  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"    DeviceID:%@", a2);
  Value = CFDictionaryGetValue(a3, @"IPAddress");
  CFStringGetCString(Value, buffer, 256, 0x8000100u);
  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @" IP=%-45s", buffer);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = CFDictionaryGetValue(a3, @"port");
  v8 = CFDictionaryGetValue(a3, @"supportsSolo");
  CFStringAppendFormat(v6, 0, @" port=%-5@ supportsSolo=%@", v7, v8);
  v9 = CFDictionaryGetValue(a3, @"deviceName");
  buffer[0] = 0;
  if (v9)
  {
    v10 = buffer;
    CFStringGetCString(v9, buffer, 256, 0x8000100u);
  }

  else
  {
    v10 = "N/A";
  }

  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @" name: %-15s", v10);
  v11 = CFDictionaryGetValue(a3, @"bonjourDeviceID");
  v12 = @"N/A";
  if (v11)
  {
    v12 = v11;
  }

  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @" bonjourID: %@", v12);
  if (!v11)
  {
    v13 = CFDictionaryGetValue(a3, @"connectionError");
    v14 = @"Pending";
    if (v13)
    {
      v14 = v13;
    }

    CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @" (%@)", v14);
  }

  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"\n");
}

void __browser_copyDescriptionInternal_block_invoke_3(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"rapportBonjourCorrelationID");
  Int64 = CFDictionaryGetInt64();
  v7 = "SystemPairingID";
  if (Int64 == 1)
  {
    v7 = "BonjourDeviceID";
  }

  CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"    RapportDeviceID:%@ %s: %@\n", a2, v7, Value);
}

uint64_t browser_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    browser_copyPropertyInternal_cold_4();
    return 4294960591;
  }

  if (!CFEqual(a2, @"showInfo"))
  {
    v10 = 0;
    v12 = 4294954512;
    goto LABEL_10;
  }

  CMBaseObjectGetDerivedStorage();
  value = 0;
  v8 = browser_copyDescriptionInternal(a1, a3, 0, &value);
  if (v8)
  {
    v12 = v8;
    browser_copyPropertyInternal_cold_1(v8);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a3, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = value;
      CFDictionaryAddValue(Mutable, @"detailedDescription", value);
      v12 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    browser_copyPropertyInternal_cold_2();
    v12 = 4294960568;
  }

  v10 = 0;
  v11 = value;
  if (value)
  {
LABEL_6:
    CFRelease(v11);
  }

LABEL_7:
  if (!v12)
  {
LABEL_10:
    *a4 = v10;
    return v12;
  }

  browser_copyPropertyInternal_cold_3(v12);
  return v12;
}

uint64_t browser_GetMode(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v2 = APSDispatchSyncTask();
  v3 = v2;
  if (v2)
  {
    browser_GetMode_cold_1(v2);
  }

  return v3;
}

uint64_t browser_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v3 = APSDispatchSyncTask();
  v4 = v3;
  if (v3)
  {
    browser_SetEventHandler_cold_1(v3);
  }

  return v4;
}

uint64_t browser_StartTrackingDevice(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  CMBaseObjectGetDerivedStorage();
  v3 = APSDispatchSyncTask();
  v4 = v3;
  if (v3)
  {
    browser_StartTrackingDevice_cold_1(v3);
  }

  return v4;
}

uint64_t browser_StopTrackingDevice(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v2 = APSDispatchSyncTask();
  v3 = v2;
  if (v2)
  {
    browser_StopTrackingDevice_cold_1(v2);
  }

  return v3;
}

uint64_t browser_ReconfirmDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v3 = APSDispatchSyncTask();
  v4 = v3;
  if (v3)
  {
    browser_ReconfirmDevice_cold_1(v3);
  }

  return v4;
}

uint64_t browser_TriggerWoLCachingIfNeeded(const void *a1, uint64_t a2, const void *a3)
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

uint64_t browser_CopyNANEndpointForDeviceID(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __browser_CopyNANEndpointForDeviceID_block_invoke;
  block[3] = &unk_278BCA288;
  block[4] = &v16;
  block[5] = a1;
  v14 = a3;
  v15 = a4;
  block[6] = a2;
  block[7] = a5;
  dispatch_sync(v10, block);
  v11 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v11;
}

void sub_23D31B238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void browser_ResolveAddress(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *(CMBaseObjectGetDerivedStorage() + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __browser_ResolveAddress_block_invoke;
  v13[3] = &unk_278BCA2B0;
  v13[6] = a2;
  v13[7] = a3;
  v14 = a4;
  v13[8] = a5;
  v13[4] = a6;
  v13[5] = a1;
  dispatch_sync(v12, v13);
}

uint64_t browser_CopyBrokerInfoForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __browser_CopyBrokerInfoForDeviceID_block_invoke;
  block[3] = &unk_278BCA300;
  block[4] = &v16;
  block[5] = a1;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  block[9] = a5;
  block[10] = a6;
  dispatch_sync(v12, block);
  v13 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_23D31B3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __browser_updateDetailedDiscoveryThresholdTimer_block_invoke_2(uint64_t a1)
{
  v2 = **(a1 + 32);
  if (*v2 <= 30)
  {
    if (*v2 != -1)
    {
LABEL_3:
      LogPrintF(v2, "void browser_updateDetailedDiscoveryThresholdTimer(APBrowserRef, APBrowserMode)_block_invoke_2", 33554462, "Cancelling the Discovery Timer Handler.\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v2 = **(a1 + 32);
      goto LABEL_3;
    }
  }

LABEL_5:
  v3 = *(a1 + 40);

  CFRelease(v3);
}

void browser_ensureDetailedForeverTimerStopped(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 376);
  if (v2)
  {
    v3 = DerivedStorage;
    dispatch_source_cancel(*(DerivedStorage + 376));
    dispatch_release(v2);
    *(v3 + 376) = 0;
  }
}

void browser_batchAndSendDiscoveredDeviceRTCMetrics(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 111);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  Count = CFDictionaryGetCount(DerivedStorage[27]);
  if (!Count)
  {
    goto LABEL_22;
  }

  EventTimeRecursive = APSEventRecorderGetEventTimeRecursive();
  v6 = *DerivedStorage;
  v7 = **DerivedStorage;
  if (EventTimeRecursive)
  {
    if (v7 > 50)
    {
      goto LABEL_22;
    }

    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v6 = *DerivedStorage;
    }

    LogPrintF(v6, "OSStatus browser_batchAndSendDiscoveredDeviceRTCMetrics(APBrowserRef)", 33554482, "Ignoring request to send device metrics after session threshold");
    goto LABEL_22;
  }

  if (v7 <= 50)
  {
    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v6 = *DerivedStorage;
    }

    LogPrintF(v6, "OSStatus browser_batchAndSendDiscoveredDeviceRTCMetrics(APBrowserRef)", 33554482, "[%{ptr}] Preparing to send discovered device RTC metrics for %ld devices", a1, Count);
  }

LABEL_7:
  if (!APSRTCReportingAgentCreate() && (v8 = *MEMORY[0x277CBECE8], Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v21[3] = Mutable) != 0) && (v10 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v17[3] = v10) != 0))
  {
    CFDictionaryApplyBlock();
    FigCFDictionaryApplyBlock();
    APSVersionUtilsGetShortVersionLength();
    CFDictionarySetCString();
    CFDictionarySetInt64();
    if (v3)
    {
      CFDictionarySetValue(v17[3], @"userActivationSeen", *MEMORY[0x277CBED28]);
    }

    if ((v3 & 2) != 0)
    {
      CFDictionarySetValue(v17[3], @"backgroundActivationSeen", *MEMORY[0x277CBED28]);
    }

    APSRTCReportingAgentSendEvent();
    v11 = *DerivedStorage;
    v12 = **DerivedStorage;
    if (v12 <= 50)
    {
      if (v12 != -1 || (v13 = _LogCategory_Initialize(), v11 = *DerivedStorage, v13))
      {
        LogPrintF(v11, "OSStatus browser_batchAndSendDiscoveredDeviceRTCMetrics(APBrowserRef)", 33554482, "[%{ptr}] Sent discovered device RTC metrics", a1);
        v11 = *DerivedStorage;
      }

      if (*v11 <= 15 && (*v11 != -1 || _LogCategory_Initialize()))
      {
        CFDictionaryApplyBlock();
      }
    }
  }

  else
  {
    APSLogErrorAt();
  }

LABEL_22:
  v14 = v21[3];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = v17[3];
  if (v15)
  {
    CFRelease(v15);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void sub_23D31B92C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void browser_ensureDiscoverySessionThresholdTimerStopped(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  v3 = **DerivedStorage;
  if (v3 > 50)
  {
    goto LABEL_5;
  }

  if (v3 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize())
  {
    v2 = *DerivedStorage;
LABEL_3:
    LogPrintF(v2, "OSStatus browser_ensureDiscoverySessionThresholdTimerStopped(APBrowserRef)", 33554482, "Stopping Discovery session threshold timer");
  }

LABEL_5:
  v4 = *(DerivedStorage + 448);
  if (v4)
  {
    dispatch_source_cancel(*(DerivedStorage + 448));
    dispatch_release(v4);
    *(DerivedStorage + 448) = 0;
  }
}

void __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v25 = 0;
  if (!browser_copyDeviceEventRecorder(a3, a2, &v25))
  {
    Value = CFDictionaryGetValue(a3, @"LastEventInfo");
    if (Value && (v6 = CFDictionaryGetValue(Value, @"deviceInfo")) != 0)
    {
      v7 = APAdvertiserInfoCopyProperty(v6, 0, @"deviceModel", 0, 0);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0;
    v22 = 0;
    v9 = v25;
    while (1)
    {
      v24 = 0;
      APBrowserGetStartEventForBrowserDeviceEvent(*(a1 + 48), v9, v8 + 268374016);
      if (v8 >= 0x13)
      {
        goto LABEL_28;
      }

      v10 = *(&off_278BCA340 + v8);
      if (!APSEventRecorderGetEventTimeRecursive())
      {
        goto LABEL_28;
      }

      TimeBetweenEventsInMilliSecondRecursive = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx();
      v24 = TimeBetweenEventsInMilliSecondRecursive;
      if (TimeBetweenEventsInMilliSecondRecursive)
      {
        if (!v22)
        {
          v20 = TimeBetweenEventsInMilliSecondRecursive;
          v21 = **(a1 + 56);
          if (*v21 <= 90)
          {
            if (*v21 != -1)
            {
              goto LABEL_37;
            }

            if (_LogCategory_Initialize())
            {
              v21 = **(a1 + 56);
              v20 = v24;
LABEL_37:
              LogPrintF(v21, "OSStatus browser_batchAndSendDiscoveredDeviceRTCMetrics(APBrowserRef)_block_invoke", 33554522, "%@: Failed to process %@ event: %#m", a2, v10, v20);
            }
          }
        }

        v22 = 1;
        goto LABEL_28;
      }

      if (!browser_ensureAndGetMutableArrayFromCFDictionary(*(*(*(a1 + 32) + 8) + 24), v10, &v24))
      {
        __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_5();
        goto LABEL_28;
      }

      FigCFArrayAppendInt64();
      v12 = **(a1 + 56);
      if (*v12 <= 15)
      {
        if (*v12 != -1)
        {
          goto LABEL_13;
        }

        if (_LogCategory_Initialize())
        {
          break;
        }
      }

LABEL_15:
      if (!v8)
      {
        if (!v7)
        {
          goto LABEL_25;
        }

        v13 = *(*(*(a1 + 32) + 8) + 24);
        v26 = 0;
        if (v13)
        {
          GestaltProductTypeStringToDeviceClass();
          v14 = CUGestaltDeviceClassToString();
          if ([(__CFString *)v14 isEqualToString:@"?"])
          {
            v14 = @"AirPort";
            if (!CFStringHasPrefix(v7, @"AirPort"))
            {
              v14 = @"3rdParty";
            }
          }

          CFStringReplacingSuffix = browser_createCFStringReplacingSuffix(v10, [(__CFString *)v14 stringByAppendingString:@"Ms"]);
          if (!CFStringReplacingSuffix)
          {
            APSLogErrorAt();
            v24 = 0;
LABEL_25:
            if (*(*(*(a1 + 40) + 8) + 24))
            {
              v18 = browser_createCFStringReplacingSuffix(v10, @"Bucket1");
              if (v18)
              {
                v19 = v18;
                CFDictionaryGetInt64();
                FigCFDictionarySetInt64();
                CFRelease(v19);
              }

              else
              {
                __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_3();
              }
            }

            else
            {
              __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_4();
            }

            goto LABEL_28;
          }

          v16 = CFStringReplacingSuffix;
          if (browser_ensureAndGetMutableArrayFromCFDictionary(v13, CFStringReplacingSuffix, &v26))
          {
            CFArrayAppendInt64();
          }

          else
          {
            __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_1();
          }

          CFRelease(v16);
          v17 = v26;
          v24 = v26;
          if (!v26)
          {
            goto LABEL_25;
          }
        }

        else
        {
          APSLogErrorAt();
          v17 = 4294960591;
          v24 = -6705;
        }

        __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_2(v17);
      }

LABEL_28:
      if (++v8 == 19)
      {
        goto LABEL_46;
      }
    }

    v12 = **(a1 + 56);
LABEL_13:
    LogPrintF(v12, "OSStatus browser_batchAndSendDiscoveredDeviceRTCMetrics(APBrowserRef)_block_invoke", 33554447, "[%{ptr}] %@: Processed event %lu -> %@: %llu", *(a1 + 64), a2, v8 + 268374016, v10, 0);
    goto LABEL_15;
  }

  APSLogErrorAt();
  v7 = 0;
  v9 = v25;
LABEL_46:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

CFMutableArrayRef browser_ensureAndGetMutableArrayFromCFDictionary(const __CFDictionary *a1, const void *a2, int *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v7 = Value;
    v8 = 0;
    Mutable = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    CFDictionaryAddValue(a1, a2, Mutable);
    v8 = 0;
    v7 = Mutable;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  browser_ensureAndGetMutableArrayFromCFDictionary_cold_1();
  v7 = 0;
  v8 = -6728;
  if (a3)
  {
LABEL_6:
    *a3 = v8;
  }

LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

void __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2(uint64_t a1, const __CFString *a2, CFArrayRef theArray)
{
  if (a2)
  {
    if (theArray)
    {
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          v13.length = Count;
          v13.location = 0;
          CFArraySortValues(theArray, v13, MEMORY[0x277CBE548], 0);
          CFStringReplacingSuffix = browser_createCFStringReplacingSuffix(a2, @"P95Ms");
          if (CFStringReplacingSuffix)
          {
            v7 = CFStringReplacingSuffix;
            v8 = browser_createCFStringReplacingSuffix(a2, @"MedianMs");
            if (v8)
            {
              v9 = v8;
              v10 = CFArrayGetCount(theArray);
              if (v10)
              {
                v11 = (v10 - 1) * 0.95;
                if (vcvtps_s32_f32(v11) != vcvtms_s32_f32(v11))
                {
                  FigCFArrayGetInt64AtIndex();
                }

                FigCFArrayGetInt64AtIndex();
              }

              else
              {
                __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_1();
              }

              v12 = CFArrayGetCount(theArray);
              if (v12)
              {
                if ((v12 & 1) == 0)
                {
                  FigCFArrayGetInt64AtIndex();
                }

                FigCFArrayGetInt64AtIndex();
              }

              else
              {
                __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_2();
              }

              FigCFDictionarySetInt64();
              FigCFDictionarySetInt64();
              CFRelease(v9);
            }

            else
            {
              __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_3();
            }

            CFRelease(v7);
          }

          else
          {
            __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_4();
          }
        }

        else
        {
          __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_5();
        }
      }

      else
      {
        __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_6();
      }
    }

    else
    {
      __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_7();
    }
  }

  else
  {
    __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_2_cold_8();
  }
}

int *__browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = **(a1 + 32);
  if (*result <= 15)
  {
    if (*result != -1)
    {
      return LogPrintF(result, "OSStatus browser_batchAndSendDiscoveredDeviceRTCMetrics(APBrowserRef)_block_invoke_3", 33554447, "[%{ptr}] RTC field | %@ : %@", *(a1 + 40), a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = **(a1 + 32);
      return LogPrintF(result, "OSStatus browser_batchAndSendDiscoveredDeviceRTCMetrics(APBrowserRef)_block_invoke_3", 33554447, "[%{ptr}] RTC field | %@ : %@", *(a1 + 40), a2, a3);
    }
  }

  return result;
}

__CFString *browser_createCFStringReplacingSuffix(const __CFString *a1, const __CFString *a2)
{
  if (!CFStringHasSuffix(a1, @"Ms"))
  {
    browser_createCFStringReplacingSuffix_cold_3();
    return 0;
  }

  Length = CFStringGetLength(a1);
  v5 = Length - CFStringGetLength(@"Ms");
  v6 = CFStringGetLength(@"Ms");
  if (v5 < 0)
  {
    browser_createCFStringReplacingSuffix_cold_2();
    return 0;
  }

  v7 = v6;
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
  v9 = MutableCopy;
  if (MutableCopy)
  {
    v11.location = v5;
    v11.length = v7;
    CFStringReplace(MutableCopy, v11, a2);
  }

  else
  {
    browser_createCFStringReplacingSuffix_cold_1();
  }

  return v9;
}

void __browser_removeP2PServicesForNearbyDevices_block_invoke(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 48), a2);
  *(*(*(a1 + 32) + 8) + 24) = Value;
  if (!Value)
  {
    return;
  }

  *(*(*(a1 + 40) + 8) + 24) = CFDictionaryGetValue(*(*(*(a1 + 32) + 8) + 24), @"name");
  v5 = **(a1 + 56);
  if (*v5 <= 40)
  {
    if (*v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v5 = **(a1 + 56);
    }

    LogPrintF(v5, "OSStatus browser_removeP2PServicesForNearbyDevices(APBrowserRef)_block_invoke", 33554472, "[%{ptr}] Removed %@ for device with id: %@ name: %@.\n", *(a1 + 64), a2, *(a1 + 72), *(*(*(a1 + 40) + 8) + 24));
  }

LABEL_7:
  v6 = *(a1 + 48);

  CFDictionaryRemoveValue(v6, a2);
}

uint64_t browser_updateDevice(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  v12 = 0;
  v11 = 0;
  if (a2)
  {
    if (!a3)
    {
      browser_updateDevice_cold_4();
      return 4294960591;
    }

    CFRetain(a3);
    v6 = browser_queryServiceAvailabilityForDevice(a1, a2, &v12 + 1, &v12, &v11);
    if (v6)
    {
      v8 = v6;
      browser_updateDevice_cold_1(v6);
    }

    else if (v12 || v11)
    {
      updated = browser_updateEventInfoForDevice(a1, a2);
      v8 = updated;
      if (updated)
      {
        browser_updateDevice_cold_3(updated);
      }
    }

    else
    {
      v10 = browser_removeNearbyDevice(a1, a2);
      v8 = v10;
      if (v10)
      {
        browser_updateDevice_cold_2(v10);
      }
    }
  }

  else
  {
    v8 = 4294960591;
    if (browser_updateDevice_cold_5(a3))
    {
      return v8;
    }
  }

  CFRelease(a3);
  return v8;
}

uint64_t browser_handleConnectivityHelperEventInternal(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *DerivedStorage;
  v8 = **DerivedStorage;
  if (v8 <= 40)
  {
    if (v8 != -1)
    {
LABEL_3:
      EventString = APConnectivityHelperGetEventString(a2);
      LogPrintF(v7, "OSStatus browser_handleConnectivityHelperEventInternal(APBrowserRef, APConnectivityHelperEventType, CFDictionaryRef)", 33554472, "%s.\n", EventString);
      goto LABEL_5;
    }

    v10 = DerivedStorage;
    if (_LogCategory_Initialize())
    {
      v7 = *v10;
      goto LABEL_3;
    }
  }

LABEL_5:
  v11 = 0;
  if (a2 > 6)
  {
    if (a2 != 7)
    {
      if (a2 != 8)
      {
        return v11;
      }

      v58 = 0;
      v15 = CMBaseObjectGetDerivedStorage();
      if (!*(v15 + 131))
      {
LABEL_61:
        v46 = CMBaseObjectGetDerivedStorage();
        if (!*(v46 + 131))
        {
          goto LABEL_71;
        }

        if (!APSIsVirtualMachine())
        {
          v49 = APConnectivityHelperDeregisterForEvent(*(v46 + 184), a1, 8);
          if (v49)
          {
            browser_handleConnectivityHelperEventInternal_cold_5(v49);
          }

LABEL_71:
          *(v46 + 131) = 0;
          v11 = v58;
          if (!v58)
          {
            return v11;
          }

          goto LABEL_92;
        }

        v47 = *v46;
        v48 = **v46;
        if (v48 <= 40)
        {
          if (v48 != -1)
          {
LABEL_65:
            LogPrintF(v47, "OSStatus browser_ensureAWDLSoloSupportedListeningStopped(APBrowserRef)", 33554472, "Simulating AWDL Solo Supported listener stop on VirtualMachine\n");
            goto LABEL_69;
          }

          if (_LogCategory_Initialize())
          {
            v47 = *v46;
            goto LABEL_65;
          }
        }

LABEL_69:
        v50 = browser_handleConnectivityHelperEventInternal(a1, 108, 0);
        if (v50)
        {
          browser_handleConnectivityHelperEventInternal_cold_4(v50);
        }

        goto LABEL_71;
      }

      if (!a3)
      {
        browser_handleConnectivityHelperEventInternal_cold_3();
        goto LABEL_61;
      }

      v16 = v15;
      v17 = CFDictionaryGetInt64() != 0;
      *(v16 + 129) = v17;
      *(v16 + 130) = 1;
      v18 = *v16;
      v19 = **v16;
      if (v19 <= 40)
      {
        if (v19 != -1)
        {
LABEL_17:
          v20 = "supports";
          if (!v17)
          {
            v20 = "does NOT support";
          }

          LogPrintF(v18, "OSStatus browser_handleAWDLSoloSupportedEvent(APBrowserRef, CFDictionaryRef)", 33554472, "Solo Support query was successful. The device %s AWDL Solo.\n", v20);
          LOBYTE(v17) = *(v16 + 129);
          goto LABEL_59;
        }

        v44 = _LogCategory_Initialize();
        v17 = *(v16 + 129);
        if (v44)
        {
          v18 = *v16;
          goto LABEL_17;
        }
      }

LABEL_59:
      v45 = APBrowserBTLEManagerSetLocalDeviceSupportsSolo(*(v16 + 96), v17);
      v58 = v45;
      if (v45)
      {
        browser_handleConnectivityHelperEventInternal_cold_2(v45);
      }

      goto LABEL_61;
    }

    v24 = CMBaseObjectGetDerivedStorage();
    v25 = *v24;
    v26 = **v24;
    if (v26 <= 40)
    {
      if (v26 != -1)
      {
LABEL_25:
        LogPrintF(v25, "OSStatus browser_handleAWDLAvailableEvent(APBrowserRef)", 33554472, "AWDL Available event.\n");
        goto LABEL_48;
      }

      if (_LogCategory_Initialize())
      {
        v25 = *v24;
        goto LABEL_25;
      }
    }

LABEL_48:
    *(v24 + 193) = 1;
    v38 = CMBaseObjectGetDerivedStorage();
    if (*(v38 + 195))
    {
      if (APSIsVirtualMachine())
      {
        v39 = *v38;
        v40 = **v38;
        if (v40 <= 40)
        {
          if (v40 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_74;
            }

            v39 = *v38;
          }

          LogPrintF(v39, "OSStatus browser_ensureAWDLAvailableListeningStopped(APBrowserRef)", 33554472, "Simulating AWDL listener stop on VirtualMachine\n");
        }

LABEL_74:
        v51 = browser_handleConnectivityHelperEventInternal(a1, 107, 0);
        if (!v51)
        {
          goto LABEL_75;
        }

        v11 = v51;
        browser_handleConnectivityHelperEventInternal_cold_8(v51);
LABEL_89:
        *(v38 + 195) = 0;
        APSLogErrorAt();
        goto LABEL_92;
      }

      v41 = APConnectivityHelperDeregisterForEvent(*(v38 + 184), a1, 7);
      if (v41)
      {
        v11 = v41;
        browser_handleConnectivityHelperEventInternal_cold_9(v41);
        goto LABEL_89;
      }
    }

LABEL_75:
    *(v38 + 195) = 0;
    v52 = APBonjourBrowserSetAWDLSystemReady(*(v24 + 88));
    v11 = v52;
    if (!v52)
    {
      return v11;
    }

    browser_handleConnectivityHelperEventInternal_cold_10(v52);
    goto LABEL_92;
  }

  if (a2 == 1)
  {
    v21 = CMBaseObjectGetDerivedStorage();
    v22 = *v21;
    v23 = **v21;
    if (v23 > 40)
    {
      goto LABEL_39;
    }

    if (v23 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_39:
        *(v21 + 192) = 1;
        if (*(v21 + 197))
        {
          started = browser_startWiFiPowerChangedListener(a1);
          if (started)
          {
            v11 = started;
            browser_handleConnectivityHelperEventInternal_cold_11(started);
            goto LABEL_92;
          }

          *(v21 + 197) = 0;
        }

        v34 = CMBaseObjectGetDerivedStorage();
        if (!*(v34 + 194))
        {
          goto LABEL_79;
        }

        if (!APSIsVirtualMachine())
        {
          v37 = APConnectivityHelperDeregisterForEvent(*(v34 + 184), a1, 1);
          if (!v37)
          {
LABEL_79:
            *(v34 + 194) = 0;
            v54 = APBonjourBrowserSetWiFiSystemReady(*(v21 + 88));
            v11 = v54;
            if (!v54)
            {
              return v11;
            }

            browser_handleConnectivityHelperEventInternal_cold_14(v54);
            goto LABEL_92;
          }

          v11 = v37;
          browser_handleConnectivityHelperEventInternal_cold_13(v37);
LABEL_91:
          *(v34 + 194) = 0;
          APSLogErrorAt();
          goto LABEL_92;
        }

        v35 = *v34;
        v36 = **v34;
        if (v36 <= 40)
        {
          if (v36 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_78;
            }

            v35 = *v34;
          }

          LogPrintF(v35, "OSStatus browser_ensureWiFiAvailableListeningStopped(APBrowserRef)", 33554472, "Simulating WiFi listener stop on VirtualMachine\n");
        }

LABEL_78:
        v53 = browser_handleConnectivityHelperEventInternal(a1, 101, 0);
        if (!v53)
        {
          goto LABEL_79;
        }

        v11 = v53;
        browser_handleConnectivityHelperEventInternal_cold_12(v53);
        goto LABEL_91;
      }

      v22 = *v21;
    }

    LogPrintF(v22, "OSStatus browser_handleWiFiAvailableEvent(APBrowserRef)", 33554472, "WiFi Available event.\n");
    goto LABEL_39;
  }

  if (a2 == 2)
  {
    v12 = CMBaseObjectGetDerivedStorage();
    v57 = 0;
    v13 = *v12;
    v14 = **v12;
    if (v14 > 40)
    {
      goto LABEL_27;
    }

    if (v14 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_27:
        WiFiPower = APConnectivityHelperQueryWiFiPower(v12[23], &v57);
        if (WiFiPower)
        {
          browser_handleConnectivityHelperEventInternal_cold_6(v12, WiFiPower, &v59);
          v11 = v59;
          goto LABEL_92;
        }

        v28 = v57;
        v29 = *(v12 + 198);
        if (v57 == v29)
        {
          return 0;
        }

        v30 = *v12;
        v31 = **v12;
        if (v31 > 40)
        {
          goto LABEL_56;
        }

        if (v31 == -1)
        {
          v42 = _LogCategory_Initialize();
          v28 = v57;
          if (!v42)
          {
LABEL_56:
            *(v12 + 198) = v28;
            updated = browser_updateAVDevicePresent(a1);
            if (!updated)
            {
              return 0;
            }

            v11 = updated;
            browser_handleConnectivityHelperEventInternal_cold_7(updated);
LABEL_92:
            APSLogErrorAt();
            return v11;
          }

          v30 = *v12;
          v29 = *(v12 + 198);
        }

        if (v29)
        {
          v32 = "on";
        }

        else
        {
          v32 = "off";
        }

        if (v28)
        {
          v33 = "on";
        }

        else
        {
          v33 = "off";
        }

        LogPrintF(v30, "OSStatus browser_handleWiFiPowerChangedEvent(APBrowserRef)", 33554472, "WiFi power changed %s -> %s.", v32, v33);
        LOBYTE(v28) = v57;
        goto LABEL_56;
      }

      v13 = *v12;
    }

    LogPrintF(v13, "OSStatus browser_handleWiFiPowerChangedEvent(APBrowserRef)", 33554472, "WiFi power changed event.\n");
    goto LABEL_27;
  }

  return v11;
}

uint64_t browser_cacheP2PDNSAddresses(const void *a1, uint64_t a2, const __CFDictionary *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(cStr, 0x400uLL);
  bzero(__s1, 0x400uLL);
  if (!a2)
  {
    browser_cacheP2PDNSAddresses_cold_4();
    return 4294960591;
  }

  v7 = CFGetInt64();
  if (!v7)
  {
    browser_cacheP2PDNSAddresses_cold_3();
    return 4294960534;
  }

  v8 = v7;
  DNSForDeviceIDInternal = browser_getDNSForDeviceIDInternal(a1, v7, 1, 1, 0, 1, cStr, 0x400uLL, 0);
  if (DNSForDeviceIDInternal != -6727 && (v10 = DNSForDeviceIDInternal, DNSForDeviceIDInternal) || (v11 = browser_getDNSForDeviceIDInternal(a1, v8, 1, 0, 0, 1, __s1, 0x400uLL, 0), v11 != -6727) && (v10 = v11, v11))
  {
    APSLogErrorAt();
    return v10;
  }

  if (!cStr[0])
  {
    Value = CFDictionaryGetValue(a3, @"CachedAirPlayP2PDNS");
    if (!Value)
    {
      goto LABEL_21;
    }

    v17 = *DerivedStorage;
    v18 = **DerivedStorage;
    if (v18 <= 40)
    {
      if (v18 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v17 = *DerivedStorage;
      }

      LogPrintF(v17, "OSStatus browser_cacheP2PDNSAddresses(APBrowserRef, CFNumberRef, CFMutableDictionaryRef)", 33554472, "Removed cached AirPlay p2p DNS: %@\n", Value);
    }

LABEL_20:
    CFDictionaryRemoveValue(a3, @"CachedAirPlayP2PDNS");
    Value = 0;
    goto LABEL_21;
  }

  v12 = CFGetAllocator(a1);
  v13 = CFStringCreateWithCString(v12, cStr, 0x8000100u);
  if (!v13)
  {
    browser_cacheP2PDNSAddresses_cold_1();
    return 4294960568;
  }

  Value = v13;
  CFDictionarySetValue(a3, @"CachedAirPlayP2PDNS", v13);
  v15 = *DerivedStorage;
  v16 = **DerivedStorage;
  if (v16 <= 40)
  {
    if (v16 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v15 = *DerivedStorage;
    }

    LogPrintF(v15, "OSStatus browser_cacheP2PDNSAddresses(APBrowserRef, CFNumberRef, CFMutableDictionaryRef)", 33554472, "Cached AirPlay p2p DNS: %@\n", Value);
  }

LABEL_21:
  if (!__s1[0] || !strncmp(__s1, cStr, 0x400uLL))
  {
    v20 = CFDictionaryGetValue(a3, @"CachedRAOPP2PDNS");
    if (!v20)
    {
      goto LABEL_32;
    }

    v23 = *DerivedStorage;
    v24 = **DerivedStorage;
    if (v24 <= 40)
    {
      if (v24 != -1)
      {
LABEL_30:
        LogPrintF(v23, "OSStatus browser_cacheP2PDNSAddresses(APBrowserRef, CFNumberRef, CFMutableDictionaryRef)", 33554472, "Removed cached RAOP p2p DNS: %@\n", v20);
        goto LABEL_35;
      }

      if (_LogCategory_Initialize())
      {
        v23 = *DerivedStorage;
        goto LABEL_30;
      }
    }

LABEL_35:
    CFDictionaryRemoveValue(a3, @"CachedRAOPP2PDNS");
    v10 = 0;
    v20 = 0;
    if (!Value)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v19 = CFGetAllocator(a1);
  v20 = CFStringCreateWithCString(v19, __s1, 0x8000100u);
  if (v20)
  {
    CFDictionarySetValue(a3, @"CachedRAOPP2PDNS", v20);
    v21 = *DerivedStorage;
    v22 = **DerivedStorage;
    if (v22 > 40)
    {
      goto LABEL_32;
    }

    if (v22 != -1)
    {
      goto LABEL_26;
    }

    if (_LogCategory_Initialize())
    {
      v21 = *DerivedStorage;
LABEL_26:
      LogPrintF(v21, "OSStatus browser_cacheP2PDNSAddresses(APBrowserRef, CFNumberRef, CFMutableDictionaryRef)", 33554472, "Cached RAOP p2p DNS: %@\n", v20);
    }

LABEL_32:
    v10 = 0;
    if (!Value)
    {
      goto LABEL_37;
    }

LABEL_36:
    CFRelease(Value);
    goto LABEL_37;
  }

  browser_cacheP2PDNSAddresses_cold_2();
  v10 = 4294960568;
  if (Value)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v20)
  {
    CFRelease(v20);
  }

  return v10;
}

uint64_t browser_getDNSForDeviceIDInternal(const void *a1, uint64_t a2, int a3, int a4, int a5, int a6, char *a7, size_t a8, _BYTE *a9)
{
  v63 = *MEMORY[0x277D85DE8];
  valuePtr = a2;
  v59 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(buffer, 0x400uLL);
  if (*(DerivedStorage + 245))
  {
    return -6723;
  }

  v17 = CFGetAllocator(a1);
  v18 = CFNumberCreate(v17, kCFNumberSInt64Type, &valuePtr);
  if (!v18)
  {
    browser_getDNSForDeviceIDInternal_cold_9();
    return v59;
  }

  v19 = v18;
  if (IsAppleInternalBuild())
  {
    v20 = *(CMBaseObjectGetDerivedStorage() + 232);
    if (v20)
    {
      Value = CFDictionaryGetValue(v20, v19);
      if (Value)
      {
        if (CFStringGetCString(Value, a7, a8, 0x8000100u))
        {
          v59 = 0;
        }

        else
        {
          browser_getDNSForDeviceIDInternal_cold_1(&v59);
        }

        goto LABEL_8;
      }
    }

    v59 = 0;
  }

  v23 = CFDictionaryGetValue(DerivedStorage[27], v19);
  if (!v23)
  {
    v59 = -6727;
LABEL_8:
    v22 = v19;
LABEL_76:
    CFRelease(v22);
    return v59;
  }

  v24 = v23;
  v58 = a3;
  if (a5)
  {
    v25 = CFDictionaryGetValue(v23, DerivedStorage[8]);
    v26 = v25;
    if (v25)
    {
      v27 = CFDictionaryGetValue(v25, @"services");
      if (v27)
      {
        v28 = v27;
        Count = CFArrayGetCount(v27);
        if (Count >= 1)
        {
          v30 = Count;
          v31 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(v28, v31);
            CFStringGetTypeID();
            TypedValue = CFDictionaryGetTypedValue();
            if (TypedValue == @"broker0" || TypedValue && CFEqual(TypedValue, @"broker0"))
            {
              break;
            }

            if (v30 == ++v31)
            {
              goto LABEL_44;
            }
          }

          CFDictionaryGetCString();
        }
      }
    }

    goto LABEL_44;
  }

  if (a4 || (v36 = CFDictionaryGetValue(v23, @"RAOPBonjourInfo")) == 0)
  {
    v33 = 0;
  }

  else
  {
    v26 = v36;
    DNSName = BonjourDevice_GetDNSName();
    v59 = DNSName;
    v33 = -6727;
    if (DNSName != -6727)
    {
      goto LABEL_31;
    }
  }

  v34 = CFDictionaryGetValue(v24, DerivedStorage[8]);
  if (v34)
  {
    v26 = v34;
    DNSName = BonjourDevice_GetDNSName();
    v59 = DNSName;
    v33 = -6727;
    if (DNSName != -6727)
    {
LABEL_31:
      v33 = DNSName;
      if (a6)
      {
        goto LABEL_44;
      }

      goto LABEL_32;
    }
  }

  v26 = CFDictionaryGetValue(v24, @"AirPlayP2PBonjourInfo");
  if (v26)
  {
    v33 = BonjourDevice_GetDNSName();
    v59 = v33;
  }

  if (a6)
  {
    goto LABEL_44;
  }

LABEL_32:
  if (buffer[0])
  {
    v37 = v33 == -6727;
  }

  else
  {
    v37 = 1;
  }

  v38 = !v37;
  if (!v58 || (v38 & 1) != 0)
  {
    goto LABEL_44;
  }

  if (a4 || (v39 = CFDictionaryGetValue(v24, @"CachedRAOPP2PDNS")) == 0)
  {
    v39 = CFDictionaryGetValue(v24, @"CachedAirPlayP2PDNS");
    if (!v39)
    {
      goto LABEL_44;
    }
  }

  v54 = v39;
  if (!CFStringGetCString(v39, buffer, 1024, 0x8000100u))
  {
    browser_getDNSForDeviceIDInternal_cold_2(&v59);
    goto LABEL_8;
  }

  v59 = 0;
  v55 = *DerivedStorage;
  v56 = **DerivedStorage;
  if (v56 > 40)
  {
    goto LABEL_44;
  }

  if (v56 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_44;
    }

    v55 = *DerivedStorage;
  }

  v57 = "yes";
  if (!a4)
  {
    v57 = "no";
  }

  LogPrintF(v55, "OSStatus browser_getDNSForDeviceIDInternal(APBrowserRef, uint64_t, Boolean, Boolean, Boolean, Boolean, char *, size_t, Boolean *)", 33554472, "Cached %sDNS (forceModern=%s) is available: %@\n", "P2P ", v57, v54);
LABEL_44:
  if (a9)
  {
    *a9 = 0;
  }

  v40 = APSSettingsCopyValue();
  v41 = v40;
  if (v40 && CFStringGetLength(v40) >= 1)
  {
    buffer[0] = 0;
    v61 = 0;
    if (v26)
    {
      v42 = BonjourDevice_CopyConnectionInfo();
      if (v61)
      {
        browser_getDNSForDeviceIDInternal_cold_3(v61);
      }

      else if (CFArrayGetCount(v42))
      {
        CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (TypedValueAtIndex)
        {
          v44 = CFDictionaryGetValue(TypedValueAtIndex, @"dnsName");
          if (v44)
          {
            if (!CFStringGetCString(v44, buffer, 1024, 0x8000100u))
            {
              browser_getDNSForDeviceIDInternal_cold_4(&v61);
            }
          }

          else
          {
            browser_getDNSForDeviceIDInternal_cold_5(&v61);
          }
        }

        else
        {
          browser_getDNSForDeviceIDInternal_cold_6(&v61);
        }
      }

      else
      {
        browser_getDNSForDeviceIDInternal_cold_7(&v61);
      }

      if (v42)
      {
        CFRelease(v42);
      }
    }

    else
    {
      browser_getDNSForDeviceIDInternal_cold_8();
    }

    v59 = v61;
    v45 = *DerivedStorage;
    v46 = **DerivedStorage;
    if (v46 <= 50)
    {
      if (v46 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_63;
        }

        v45 = *DerivedStorage;
      }

      v47 = buffer;
      if (!buffer[0])
      {
        v47 = "<unavailable>";
      }

      LogPrintF(v45, "OSStatus browser_getDNSForDeviceIDInternal(APBrowserRef, uint64_t, Boolean, Boolean, Boolean, Boolean, char *, size_t, Boolean *)", 33554482, "DNS Name %s: for the forced network interface %@.\n", v47, v41);
    }
  }

LABEL_63:
  v48 = *DerivedStorage;
  v49 = **DerivedStorage;
  if (v49 > 40)
  {
    goto LABEL_74;
  }

  if (v49 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_74;
    }

    v48 = *DerivedStorage;
  }

  v50 = "P2P ";
  v51 = "yes";
  if (!v58)
  {
    v50 = "";
  }

  if (a4)
  {
    v52 = "yes";
  }

  else
  {
    v52 = "no";
  }

  if (!a5)
  {
    v51 = "no";
  }

  LogPrintF(v48, "OSStatus browser_getDNSForDeviceIDInternal(APBrowserRef, uint64_t, Boolean, Boolean, Boolean, Boolean, char *, size_t, Boolean *)", 33554472, "%sDNS (forceModern=%s forceBroker=%s) for deviceID %llu: %s.\n", v50, v52, v51, valuePtr, buffer);
LABEL_74:
  strncpy(a7, buffer, a8);
  CFRelease(v19);
  if (v41)
  {
    v22 = v41;
    goto LABEL_76;
  }

  return v59;
}

uint64_t __browser_ensureConnectivityCheckTimerStarted_block_invoke(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 112))
  {
    mach_absolute_time();
    return CFDictionaryApplyBlock();
  }

  return result;
}

int *__browser_handleConnectivityCheckTimerFired_block_invoke(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  v10 = 0;
  if (!a2)
  {
    __browser_handleConnectivityCheckTimerFired_block_invoke_cold_4();
LABEL_14:
    v9 = 4294960591;
    goto LABEL_15;
  }

  if (!a3)
  {
    __browser_handleConnectivityCheckTimerFired_block_invoke_cold_3();
    goto LABEL_14;
  }

  CFDictionaryGetInt64();
  result = UpTicksToSeconds();
  if (result < 0x3D)
  {
    return result;
  }

  Value = CFDictionaryGetValue(a3, @"IPAddress");
  result = browser_shouldQueryIPAddress(Value, &v10);
  if (result)
  {
    v9 = result;
    __browser_handleConnectivityCheckTimerFired_block_invoke_cold_1(result);
    goto LABEL_15;
  }

  if (!v10)
  {
    return result;
  }

  v8 = **(a1 + 40);
  if (*v8 <= 20)
  {
    if (*v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v8 = **(a1 + 40);
    }

    LogPrintF(v8, "OSStatus browser_handleConnectivityCheckTimerFired(APBrowserRef)_block_invoke", 33554452, "Start connectivity check for UUID: %@ IP %@\n", a2, Value);
  }

LABEL_10:
  result = browser_startBTLEDeviceQuery(*(a1 + 48), a2);
  if (!result)
  {
    return result;
  }

  v9 = result;
  __browser_handleConnectivityCheckTimerFired_block_invoke_cold_2(result);
LABEL_15:
  result = **(a1 + 40);
  if (*result <= 60)
  {
    if (*result != -1)
    {
      return LogPrintF(result, "OSStatus browser_handleConnectivityCheckTimerFired(APBrowserRef)_block_invoke", 33554492, "Unable to query device %@ due to error %#m.\n", a2, v9);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = **(a1 + 40);
      return LogPrintF(result, "OSStatus browser_handleConnectivityCheckTimerFired(APBrowserRef)_block_invoke", 33554492, "Unable to query device %@ due to error %#m.\n", a2, v9);
    }
  }

  return result;
}

void browser_handleIPv4EventInternal(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = *DerivedStorage;
  v6 = **DerivedStorage;
  if (v6 <= 20)
  {
    if (v6 != -1)
    {
LABEL_3:
      LogPrintF(v5, "void browser_handleIPv4EventInternal(SCDynamicStoreRef, CFArrayRef, void *)", 33554452, "SystemConfiguration IPv4 event fired.\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *DerivedStorage;
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = socket(2, 2, 0);
  if (v7 < 0)
  {
    if (*__error())
    {
      v8 = *__error();
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = 4294960596;
    }

    browser_handleIPv4EventInternal_cold_1(v8);
    return;
  }

LABEL_8:
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v10 = Count;
    for (i = 0; i != v10; ++i)
    {
      CFArrayGetValueAtIndex(a2, i);
      v12 = CFCopyCString();
      if (v12)
      {
        v13 = v12;
        LOBYTE(v15) = 0;
        v14 = SNScanF(v12, -1, "State:/Network/Interface/%.[^/]", 17, &v15);
        free(v13);
        if (v14 == 1)
        {
          SocketGetInterfaceInfo();
        }
      }
    }
  }

  if ((v7 & 0x80000000) == 0 && close(v7))
  {
    if (*__error())
    {
      __error();
    }
  }
}

int *__browser_requeryBTLEDevices_block_invoke(uint64_t a1, const void *a2)
{
  if (a2)
  {
    result = browser_startBTLEDeviceQuery(*(a1 + 32), a2);
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    __browser_requeryBTLEDevices_block_invoke_cold_1();
    v5 = 4294960591;
  }

  result = **(a1 + 40);
  if (*result <= 60)
  {
    if (*result != -1)
    {
      return LogPrintF(result, "OSStatus browser_requeryBTLEDevices(APBrowserRef)_block_invoke", 33554492, "Unable to query device %@ due to error %#m.\n", a2, v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = **(a1 + 40);
      return LogPrintF(result, "OSStatus browser_requeryBTLEDevices(APBrowserRef)_block_invoke", 33554492, "Unable to query device %@ due to error %#m.\n", a2, v5);
    }
  }

  return result;
}

void __browser_flushAllBrokerResults_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v5 = **(a1 + 32);
  v6 = *v5;
  if (*v5 > 40)
  {
    goto LABEL_11;
  }

  if (v6 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_11;
    }

    v5 = **(a1 + 32);
    v6 = *v5;
  }

  v7 = *(a1 + 40);
  if (v6 > 30)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == -1 && _LogCategory_Initialize() == 0;
  }

  DeviceID = APBrokeredReceiverGetDeviceID(a3);
  LogPrintF(v5, "OSStatus browser_flushAllBrokerResults(APBrowserRef)_block_invoke", 33554472, "[%{ptr}] Flushing brokeredReceiver [%{ptr}]%?{end} deviceID=%@\n", v7, a3, v8, DeviceID);
LABEL_11:
  APBrokeredReceiverCopyBonjourInfo(a3, 1, &cf);
  if (cf)
  {
    browser_removeService(*(a1 + 40), @"AirPlay", cf);
  }

  else
  {
    __browser_flushAllBrokerResults_block_invoke_cold_1();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

int *browser_handleBrokerGroupAddOrUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *DerivedStorage;
  v6 = **DerivedStorage;
  if (v6 <= 50)
  {
    if (v6 != -1)
    {
      return LogPrintF(result, "void browser_handleBrokerGroupAddOrUpdate(APBrokerManagerRef, APBrokerGroupRef, CFTypeRef)", 33554482, "[%{ptr}] Broker group add or update event\n", a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = *DerivedStorage;
      return LogPrintF(result, "void browser_handleBrokerGroupAddOrUpdate(APBrokerManagerRef, APBrokerGroupRef, CFTypeRef)", 33554482, "[%{ptr}] Broker group add or update event\n", a3);
    }
  }

  return result;
}

int *browser_handleBrokerGroupRemove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *DerivedStorage;
  v6 = **DerivedStorage;
  if (v6 <= 50)
  {
    if (v6 != -1)
    {
      return LogPrintF(result, "void browser_handleBrokerGroupRemove(APBrokerManagerRef, APBrokerGroupRef, CFTypeRef)", 33554482, "[%{ptr}] Broker group remove event\n", a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = *DerivedStorage;
      return LogPrintF(result, "void browser_handleBrokerGroupRemove(APBrokerManagerRef, APBrokerGroupRef, CFTypeRef)", 33554482, "[%{ptr}] Broker group remove event\n", a3);
    }
  }

  return result;
}

void browser_handleBrokeredReceiverAddOrUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v6 = *DerivedStorage;
  v7 = **DerivedStorage;
  if (v7 <= 50)
  {
    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v6 = *DerivedStorage;
      v7 = **DerivedStorage;
    }

    if (v7 > 30)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == -1 && _LogCategory_Initialize() == 0;
    }

    DeviceID = APBrokeredReceiverGetDeviceID(a2);
    LogPrintF(v6, "void browser_handleBrokeredReceiverAddOrUpdate(APBrokerManagerRef, APBrokeredReceiverRef, CFTypeRef)", 33554482, "[%{ptr}] Brokered receiver [%{ptr}] add or update event%?{end} deviceID=%@\n", a3, a2, v8, DeviceID);
  }

LABEL_11:
  v10 = APBrokeredReceiverCopyBonjourInfo(a2, 0, &v14);
  v15 = v10;
  if (v10)
  {
    browser_handleBrokeredReceiverAddOrUpdate_cold_1(v10);
  }

  else
  {
    BonjourDevice_GetDeviceID();
    if (v15)
    {
      browser_handleBrokeredReceiverAddOrUpdate_cold_2(v15);
    }

    else
    {
      Int64 = CFNumberCreateInt64();
      v12 = *(DerivedStorage + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __browser_handleBrokeredReceiverAddOrUpdate_block_invoke;
      block[3] = &__block_descriptor_72_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = Int64;
      block[6] = a2;
      block[7] = a3;
      block[8] = v14;
      dispatch_sync(v12, block);
      if (Int64)
      {
        CFRelease(Int64);
      }
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void browser_handleBrokeredReceiverRemoved(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v6 = *DerivedStorage;
  v7 = **DerivedStorage;
  if (v7 <= 50)
  {
    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v6 = *DerivedStorage;
      v7 = **DerivedStorage;
    }

    if (v7 > 30)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == -1 && _LogCategory_Initialize() == 0;
    }

    DeviceID = APBrokeredReceiverGetDeviceID(a2);
    LogPrintF(v6, "void browser_handleBrokeredReceiverRemoved(APBrokerManagerRef, APBrokeredReceiverRef, CFTypeRef)", 33554482, "[%{ptr}] Brokered receiver [%{ptr}] remove event%?{end} deviceID=%@\n", a3, a2, v8, DeviceID);
  }

LABEL_11:
  v10 = APBrokeredReceiverCopyBonjourInfo(a2, 1, &v14);
  v15 = v10;
  if (v10)
  {
    browser_handleBrokeredReceiverRemoved_cold_1(v10);
  }

  else
  {
    BonjourDevice_GetDeviceID();
    if (v15)
    {
      browser_handleBrokeredReceiverRemoved_cold_2(v15);
    }

    else
    {
      Int64 = CFNumberCreateInt64();
      v12 = *(DerivedStorage + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __browser_handleBrokeredReceiverRemoved_block_invoke;
      block[3] = &__block_descriptor_64_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = Int64;
      block[6] = a3;
      block[7] = v14;
      dispatch_sync(v12, block);
      if (Int64)
      {
        CFRelease(Int64);
      }
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t __browser_handleBrokeredReceiverAddOrUpdate_block_invoke(uint64_t a1)
{
  CFDictionarySetValue(*(*(a1 + 32) + 360), *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);

  return browser_handleBonjourAddOrUpdate(v2, @"AirPlay", v3);
}

uint64_t __browser_handleBrokeredReceiverRemoved_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(*(a1 + 32) + 360), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return browser_handleBonjourRemove(v2, @"AirPlay", v3);
}

uint64_t browser_cleanupNI(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 272))
  {
    v3 = *DerivedStorage;
    v4 = **v2;
    if (v4 <= 50)
    {
      if (v4 != -1)
      {
LABEL_4:
        LogPrintF(v3, "void browser_cleanupNI(APBrowserRef)", 33554482, "NISession cleanup\n");
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        v3 = *v2;
        goto LABEL_4;
      }
    }
  }

LABEL_6:

  *(v2 + 280) = 0;
  [*(v2 + 272) invalidate];

  *(v2 + 272) = 0;

  return MEMORY[0x28213C8D8](v2 + 288);
}

Class __getNISessionClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary_0();
  result = objc_getClass("NISession");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNISessionClass_block_invoke_cold_1();
  }

  getNISessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t NearbyInteractionLibrary_0()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!NearbyInteractionLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __NearbyInteractionLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278BCA268;
    v4 = 0;
    NearbyInteractionLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = NearbyInteractionLibraryCore_frameworkLibrary_0;
  if (!NearbyInteractionLibraryCore_frameworkLibrary_0)
  {
    NearbyInteractionLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __NearbyInteractionLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  NearbyInteractionLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getNISpatialBrowsingConfigurationClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary_0();
  result = objc_getClass("NISpatialBrowsingConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNISpatialBrowsingConfigurationClass_block_invoke_cold_1();
  }

  getNISpatialBrowsingConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t browser_stopNI(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v4 = **DerivedStorage;
  if (v4 <= 50)
  {
    if (v4 != -1)
    {
LABEL_3:
      LogPrintF(v3, "void browser_stopNI(APBrowserRef)", 33554482, "NISession run stop\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *DerivedStorage;
      goto LABEL_3;
    }
  }

LABEL_5:

  return browser_cleanupNI(a1);
}

uint64_t browser_copyNANEndpointForOneDeviceID(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, CFTypeRef *a6)
{
  valuePtr = a2;
  v37 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = a1;
  if (*(DerivedStorage + 245))
  {
    v17 = 0;
    v14 = 0;
    v23 = 0;
    v28 = -6723;
    goto LABEL_33;
  }

  v12 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v12, 2, MEMORY[0x277CBF128]);
  v14 = Mutable;
  if (!Mutable)
  {
    browser_copyNANEndpointForOneDeviceID_cold_4();
    v17 = 0;
LABEL_50:
    v23 = 0;
    goto LABEL_34;
  }

  if (a4)
  {
    v15 = @"AirPlayP2PBonjourInfo";
  }

  else
  {
    CFArrayAppendValue(Mutable, @"AirPlayNANFullBonjourInfo");
    v15 = @"AirPlayNANPartialBonjourInfo";
  }

  CFArrayAppendValue(v14, v15);
  v16 = CFGetAllocator(a1);
  v17 = CFNumberCreate(v16, kCFNumberSInt64Type, &valuePtr);
  if (!v17)
  {
    browser_copyNANEndpointForOneDeviceID_cold_3();
    goto LABEL_50;
  }

  CFDictionaryGetTypeID();
  CFDictionaryGetTypedValue();
  v35 = a6;
  v36 = DerivedStorage;
  if (CFArrayGetCount(v14) < 1)
  {
LABEL_18:
    DerivedStorage = v36;
    if (!a5)
    {
      goto LABEL_32;
    }

    v41 = 0;
    v40 = 0;
    v39 = 0;
    CFDictionaryGetTypeID();
    CFDictionaryGetTypedValue();
    if (v41)
    {
      if (v41 == -6727)
      {
        goto LABEL_57;
      }
    }

    else
    {
      CFDataGetTypeID();
      CFDictionaryGetTypedValue();
      if (!v41)
      {
        v24 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
        v41 = v24;
        if (!v24)
        {
          FigCFStringGetCStringPtrAndBufferToFree();
          CFStringGetLength(v40);
          v25 = TextToHardwareAddressScalar();
          if (v39)
          {
            free(v39);
          }

          goto LABEL_24;
        }

        if (v24 != -6727)
        {
          goto LABEL_56;
        }

LABEL_57:
        v25 = 0;
LABEL_24:
        if (v40)
        {
          CFRelease(v40);
        }

        *a5 = v25;
        if (!v25)
        {
          goto LABEL_32;
        }

        v26 = *v36;
        v27 = **v36;
        if (v27 > 30)
        {
          goto LABEL_32;
        }

        if (v27 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_32;
          }

          v26 = *v36;
          v25 = *a5;
        }

        LogPrintF(v26, "OSStatus browser_copyNANEndpointForOneDeviceID(APBrowserRef, uint64_t, APSNANServiceType, Boolean, uint64_t *, APTNANEndpointRef *)", 33554462, "[%{ptr}] Found correlationID %llu for deviceID %llu", v34, v25, valuePtr);
LABEL_32:
        APSLogErrorAt();
        v23 = 0;
        v28 = -72065;
LABEL_33:
        v37 = v28;
        goto LABEL_34;
      }

      if (v41 == -6727)
      {
        goto LABEL_57;
      }
    }

LABEL_56:
    APSLogErrorAt();
    goto LABEL_57;
  }

  v18 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v14, v18);
    CFDictionaryGetTypeID();
    CFDictionaryGetTypedValue();
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (CFArrayGetCount(TypedValue) >= 1)
    {
      break;
    }

LABEL_10:
    if (++v18 >= CFArrayGetCount(v14))
    {
      goto LABEL_18;
    }
  }

  v20 = 0;
  while (1)
  {
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    Value = CFDictionaryGetValue(TypedValueAtIndex, @"nanEP");
    if (Value)
    {
      v23 = Value;
      if (APTNANEndpointSupportsServiceType(Value, a3))
      {
        break;
      }
    }

    if (++v20 >= CFArrayGetCount(TypedValue))
    {
      goto LABEL_10;
    }
  }

  *v35 = CFRetain(v23);
  DerivedStorage = v36;
LABEL_34:
  v29 = *DerivedStorage;
  v30 = **DerivedStorage;
  if (v30 > 50)
  {
    goto LABEL_42;
  }

  if (v30 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_42;
    }

    v29 = *DerivedStorage;
  }

  v31 = "Found";
  if (!v23)
  {
    v31 = "Failed to find";
  }

  v32 = "yes";
  if (!a4)
  {
    v32 = "no";
  }

  LogPrintF(v29, "OSStatus browser_copyNANEndpointForOneDeviceID(APBrowserRef, uint64_t, APSNANServiceType, Boolean, uint64_t *, APTNANEndpointRef *)", 33554482, "[%{ptr}] %s NAN endpoint [%{ptr}] deviceID=%lu isSecure=%s", v34, v31, v23, valuePtr, v32);
LABEL_42:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v37;
}

void __browser_resolveBrokerAddress_block_invoke(void *a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5)
{
  if (a1[5])
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v10)
    {
      __browser_resolveBrokerAddress_block_invoke_cold_1();
      v11 = cf;
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = a1[6];
  v13 = *v12;
  if (!a2)
  {
    if (v13 > 50)
    {
      goto LABEL_10;
    }

    if (v13 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_10:
        v11 = CFStringCreateByCombiningStrings(*MEMORY[0x277CBECE8], a3, @"\x1E");
        if (!v11)
        {
          __browser_resolveBrokerAddress_block_invoke_cold_2();
        }

        goto LABEL_12;
      }

      v12 = a1[6];
    }

    LogPrintF(v12, "void browser_resolveBrokerAddress(APBrowserRef, uint64_t, CFStringRef, CFTypeRef, APBrowserResolvedAddressHandler)_block_invoke", 33554482, "[%{ptr}] Got address from broker manager: %@, ifIndex %u port %d.\n", a1[7], a3, a4, a5);
    goto LABEL_10;
  }

  if (v13 <= 90)
  {
    if (v13 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v12 = a1[6];
    }

    LogPrintF(v12, "void browser_resolveBrokerAddress(APBrowserRef, uint64_t, CFStringRef, CFTypeRef, APBrowserResolvedAddressHandler)_block_invoke", 33554522, "### [%{ptr}] Getting address from broker manager failed with error %#m.\n", a1[7], a2);
  }

LABEL_25:
  v11 = 0;
LABEL_12:
  (*(a1[4] + 16))();
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_14:
  v14 = a1[5];
  if (v14)
  {
    CFRelease(v14);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v15 = a1[4];

  _Block_release(v15);
}

void __browser_handleConnectivityHelperEventExternal_block_invoke(uint64_t a1)
{
  browser_handleConnectivityHelperEventInternal(*(a1 + 32), *(a1 + 48), *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void *__getNINearbyObjectDistanceNotAvailableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NearbyInteractionLibrary_0();
  result = dlsym(v2, "NINearbyObjectDistanceNotAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNINearbyObjectDistanceNotAvailableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t *a1)
{

  return CMBaseObjectGetDerivedStorage();
}

void APBrowserBTLEManagerCreate_cold_2(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

const void *session_introspectReportNetworkStatus(const void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (result)
  {
    if (a3 <= 1)
    {
      APSLogErrorAt();

      return FPrintF(a2, "No network status provided\n");
    }

    else
    {
      v4 = result;
      v5 = strtol(*(a4 + 8), 0, 10);

      return session_reportNetworkStatus(v4, v5);
    }
  }

  return result;
}

uint64_t session_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = APSDispatchSyncTask();
  v5 = v3;
  if (v2[22])
  {
    SharedTransport = APTransportGetSharedTransport(v3, v4);
    APTransportUnregisterSession(SharedTransport, v2[22]);
  }

  else
  {
    v8 = v2[24];
    if (v8)
    {
      v9 = v2[23];
      if (v9)
      {
        APTransportServiceUnregisterSession(v9, v8);
        v10 = v2[23];
        if (v10)
        {
          CFRelease(v10);
        }
      }

      else
      {
        APSLogErrorAt();
      }
    }
  }

  return v5;
}

uint64_t session_invalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportSession)))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APTransportSession, "OSStatus session_invalidateInternal(void *)", v3, "[%{ptr}] APTransportSession with name %@ invalidating.\n");
    }

    *v4 = 1;
    APSIntrospectorSetCommandContext();
    if (*(v4 + 24) == 1)
    {
      session_performWifiManagerRegistration(v4, 0);
    }

    v5 = *(v4 + 240);
    if (v5)
    {
      APConnectivityHelperRemoveAllRegistrations(v5, a1);
    }

    session_suspendKeepAliveInternal(a1);
    v7 = *(v4 + 72);
    if (v7)
    {
      if (gLogCategory_APTransportSession <= 50)
      {
        if (gLogCategory_APTransportSession != -1 || (v22 = OUTLINED_FUNCTION_8(&gLogCategory_APTransportSession), v7 = *(v4 + 72), v22))
        {
          OUTLINED_FUNCTION_9(&gLogCategory_APTransportSession, "OSStatus session_invalidateInternal(void *)", v6, "[%{ptr}] release NANDS [%{ptr}] (RT)\n");
          v7 = *(v4 + 72);
        }
      }

      session_updateNANDSNotificationRegistry(a1, v7, 0);
      APTNANDataSessionReleaseActivation(*(v4 + 72));
    }

    v8 = *(v4 + 80);
    if (v8)
    {
      if (gLogCategory_APTransportSession <= 50)
      {
        if (gLogCategory_APTransportSession != -1 || (v23 = OUTLINED_FUNCTION_8(&gLogCategory_APTransportSession), v8 = *(v4 + 80), v23))
        {
          OUTLINED_FUNCTION_9(&gLogCategory_APTransportSession, "OSStatus session_invalidateInternal(void *)", v6, "[%{ptr}] release NANDS [%{ptr}] (LL)\n");
          v8 = *(v4 + 80);
        }
      }

      session_updateNANDSNotificationRegistry(a1, v8, 0);
      APTNANDataSessionReleaseActivation(*(v4 + 80));
    }

    v9 = *(v4 + 48);
    if (v9)
    {
      CFRelease(v9);
      *(v4 + 48) = 0;
    }

    v10 = *(v4 + 56);
    if (v10)
    {
      CFRelease(v10);
      *(v4 + 56) = 0;
    }

    v11 = *(v4 + 80);
    if (v11)
    {
      CFRelease(v11);
      *(v4 + 80) = 0;
    }

    v12 = *(v4 + 72);
    if (v12)
    {
      CFRelease(v12);
      *(v4 + 72) = 0;
    }

    v13 = *(v4 + 64);
    if (v13)
    {
      CFRelease(v13);
      *(v4 + 64) = 0;
    }

    v14 = *(v4 + 128);
    if (v14)
    {
      CFRelease(v14);
      *(v4 + 128) = 0;
    }

    v15 = *(v4 + 224);
    if (v15)
    {
      CFRelease(v15);
      *(v4 + 224) = 0;
    }

    v16 = *(v4 + 280);
    if (v16)
    {
      CFRelease(v16);
      *(v4 + 280) = 0;
    }

    v17 = *(v4 + 232);
    if (v17)
    {
      CFRelease(v17);
      *(v4 + 232) = 0;
    }

    v18 = *(v4 + 88);
    if (v18)
    {
      CFRelease(v18);
      *(v4 + 88) = 0;
    }

    v19 = *(v4 + 96);
    if (v19)
    {
      CFRelease(v19);
      *(v4 + 96) = 0;
    }

    v20 = *(v4 + 104);
    if (v20)
    {
      CFRelease(v20);
      *(v4 + 104) = 0;
    }
  }

  return 0;
}

uint64_t session_updateNANDSNotificationRegistry(uint64_t result, uint64_t a2, int a3)
{
  if (result && a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    if (a3)
    {
      OUTLINED_FUNCTION_3_3();

      return FigNotificationCenterAddWeakListener();
    }

    else
    {
      OUTLINED_FUNCTION_3_3();

      return FigNotificationCenterRemoveWeakListener();
    }
  }

  return result;
}

void session_reportNetworkStatusInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v3 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v14 = 0;
  if (*(v3 + 280))
  {
    v5 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  v5 = FigCFWeakReferenceTableCopyValue();
  if (!v5)
  {
    APSLogErrorAt();
    v15 = -16600;
    goto LABEL_14;
  }

  APTransportConnectionGetCMBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v15 = -12782;
    goto LABEL_13;
  }

  v15 = v8(v7, @"LocalInterfaceName", 0, &v14);
  if (v15)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  APTransportConnectionGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v15 = -12782;
    goto LABEL_13;
  }

  v15 = v11(v10, @"RemoteNetworkIPAddress", 0, &cf);
  if (v15)
  {
    goto LABEL_13;
  }

  v12 = APSGetFBOPropertyInt64();
  if (v15)
  {
    goto LABEL_13;
  }

  v15 = APTSessionHealthReporterCreate(0, v14, *(v4 + 32), cf, v12, (v4 + 280));
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v15 || APTSessionHealthReporterReportNetworkStatus(*(DerivedStorage + 280), *(a1 + 2)))
  {
    APSLogErrorAt();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  OUTLINED_FUNCTION_13_0();
}

void session_handleNANDataSessionDisconnected(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFMutableDictionaryRef a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || *(DerivedStorage + 72) != a4 && *(DerivedStorage + 80) != a4)
  {
    goto LABEL_20;
  }

  if (a5)
  {
    v9 = CFGetTypeID(a5);
    if (v9 == CFDictionaryGetTypeID() && CFDictionaryContainsKey(a5, @"APTNANDataSessionNotificationKey_DisconnectedReason"))
    {
      Int64 = CFDictionaryGetInt64();
      if (Int64 == -72400 || Int64 == -72401 || (Int64 + 72101) <= 1)
      {
        a5 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (a5)
        {
          CFDictionarySetInt64();
        }

        else
        {
          APSSignalErrorAt();
        }
      }

      else
      {
        a5 = 0;
      }
    }

    else
    {
      a5 = 0;
    }
  }

  if (gLogCategory_APTransportSession <= 90 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportSession)))
  {
    OUTLINED_FUNCTION_15(&gLogCategory_APTransportSession, "void session_handleNANDataSessionDisconnected(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v8, "### APTransportSession %{ptr} received disconnect from data session type = %s err = %#m\n");
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (a5)
  {
    OUTLINED_FUNCTION_13_0();

    CFRelease(v11);
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_13_0();
  }
}

uint64_t session_getSessionTransportType(uint64_t a1, int *a2)
{
  CMBaseObjectGetDerivedStorage();
  number = 0;
  valuePtr = 0;
  v3 = FigCFWeakReferenceTableCopyValue();
  if (!v3)
  {
    goto LABEL_27;
  }

  APTransportConnectionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v9 = 4294954514;
    goto LABEL_13;
  }

  v7 = v6(v5, @"NetTransportType", *MEMORY[0x277CBECE8], &number);
  if (v7)
  {
    v9 = v7;
    if (v7 == -72320)
    {
LABEL_27:
      v9 = 4294950688;
      goto LABEL_21;
    }

LABEL_13:
    APSLogErrorAt();
    goto LABEL_21;
  }

  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  v8 = valuePtr;
  if ((valuePtr - 1) >= 2)
  {
    switch(valuePtr)
    {
      case 128:
        v8 = 8;
        break;
      case 8:
        v8 = 4;
        break;
      case 16:
        v8 = 5;
        break;
      case 32:
        v8 = 6;
        break;
      case 64:
        v8 = 7;
        break;
      case 4:
        v8 = 3;
        break;
      default:
        v8 = 0;
        break;
    }
  }

  v9 = 0;
  *a2 = v8;
LABEL_21:
  if (number)
  {
    CFRelease(number);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v9;
}

uint64_t session_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = (*(a5 + 16))(a5, a3, "TransportSession:[%{ptr}] %''@ Parent:[%{ptr}]\n", a1, *(DerivedStorage + 32), a2);
  if (v10)
  {
    v22 = v10;
    APSLogErrorAt();
  }

  else
  {
    v11 = FigCFWeakReferenceTableCopyValues();
    if (!v11)
    {
      v12 = FigCFDictionaryCopyArrayOfValues();
      v13 = v12;
      if (!v12 || (Count = CFArrayGetCount(v12), Count < 1))
      {
LABEL_20:
        v22 = 0;
        goto LABEL_21;
      }

      v15 = Count;
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
        APSHierarchyReporterProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (!ProtocolVTable)
        {
          break;
        }

        v19 = *(ProtocolVTable + 16);
        if (!v19)
        {
          break;
        }

        v20 = *(v19 + 8);
        if (!v20)
        {
          v22 = 4294954514;
          goto LABEL_15;
        }

        v21 = v20(ValueAtIndex, a1, a3 + 1, 0, a5);
        v22 = v21;
        if (v21 == -12782 || v21 == -12788)
        {
          goto LABEL_15;
        }

LABEL_16:
        if (v22)
        {
          APSLogErrorAt();
          goto LABEL_21;
        }

        if (v15 == ++v16)
        {
          goto LABEL_20;
        }
      }

      v22 = 4294954508;
LABEL_15:
      v22 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", ValueAtIndex, 0, " ", 0, 0, v22, a1);
      goto LABEL_16;
    }

    v22 = v11;
  }

  v13 = 0;
LABEL_21:
  if (v13)
  {
    CFRelease(v13);
  }

  return v22;
}

uint64_t session_initBufferedAudioTransportQueuePool(void *a1)
{
  result = APSSettingsGetIntWithDefault();
  if (result)
  {
    if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportSession)))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APTransportSession, "void session_initBufferedAudioTransportQueuePool(void *)", v3, "Using BufferedAudio TransportQueuePool\n");
    }

    result = APSPriorityDispatchQueuePoolCreate();
    if (result)
    {
      result = APSLogErrorAt();
    }
  }

  *a1 = 0;
  return result;
}

void session_handleConnectionDroppedInternal(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || DerivedStorage[120])
  {
    OUTLINED_FUNCTION_13_0();
  }

  else
  {
    DerivedStorage[120] = 1;
    if (a2)
    {
      APSGetFBOPropertyInt64();
      if (gLogCategory_APTransportSession <= 90 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportSession)))
      {
        OUTLINED_FUNCTION_15(&gLogCategory_APTransportSession, "void session_handleConnectionDroppedInternal(FigTransportSessionRef, FigTransportStreamRef, OSStatus)", v6, "### [%{ptr}] stream %{ptr} disconnected with reason %#m.\n");
      }
    }

    else if (gLogCategory_APTransportSession <= 90 && (gLogCategory_APTransportSession != -1 || OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportSession)))
    {
      OUTLINED_FUNCTION_15(&gLogCategory_APTransportSession, "void session_handleConnectionDroppedInternal(FigTransportSessionRef, FigTransportStreamRef, OSStatus)", v5, "### session %{ptr} disconnected with reason %#m.\n");
    }

    if (CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
    {
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      OUTLINED_FUNCTION_13_0();

      CFRelease(v7);
    }

    else
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_13_0();

      APSSignalErrorAt();
    }
  }
}

uint64_t APTransportSessionCreate_cold_4(uint64_t a1, CMTime *a2)
{
  time = *a2;
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_11(&gLogCategory_APTransportSession, "OSStatus APTransportSessionCreate(CFAllocatorRef, APTransportSessionType, CFStringRef, APTransportDeviceRef, CFDictionaryRef, FigTransportSessionRef *)", v2, "APTransportSession %{ptr} set initial connect timeout to %f seconds.\n");
}

uint64_t APTransportSessionHandleStreamEvent_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  *a1 = -16600;
  return OUTLINED_FUNCTION_10_0(v2, "Invalid event data type");
}

uint64_t session_getKeepAliveController_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_10_0(v2, "outController is NULL");
  *a1 = result;
  return result;
}

uint64_t session_handleKeepAliveStallStateChanged_cold_3()
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportSession <= 90)
  {
    if (gLogCategory_APTransportSession != -1)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportSession, "void session_handleKeepAliveStallStateChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v1, "[%{ptr}] [%{ptr}] Keep alive stall state changed: Invalid payload type\n");
    }

    result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportSession);
    if (result)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportSession, "void session_handleKeepAliveStallStateChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v1, "[%{ptr}] [%{ptr}] Keep alive stall state changed: Invalid payload type\n");
    }
  }

  return result;
}

uint64_t session_handleKeepAliveFailed_cold_2()
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportSession <= 90)
  {
    if (gLogCategory_APTransportSession != -1)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportSession, "void session_handleKeepAliveFailed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v1, "[%{ptr}] [%{ptr}] Keep alive failed: Invalid payload type\n");
    }

    result = OUTLINED_FUNCTION_9_0(&gLogCategory_APTransportSession);
    if (result)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportSession, "void session_handleKeepAliveFailed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", v1, "[%{ptr}] [%{ptr}] Keep alive failed: Invalid payload type\n");
    }
  }

  return result;
}

uint64_t session_setPropertyInternal_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12785;
  return result;
}

uint64_t session_setPropertyInternal_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_setPropertyInternal_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_10_0(v2, "Invalid CFNumber type");
  *a1 = result;
  return result;
}

uint64_t session_setPropertyInternal_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_setPropertyInternal_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16600;
  return result;
}

uint64_t session_ResumeKeepAlive_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_SuspendKeepAlive_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void session_resumeInternal_cold_5(uint64_t a1, _BYTE *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = 0;
  v7 = *(DerivedStorage + 152);
  if (v7 == 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if ((v7 - 1) <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(DerivedStorage + 64);
  if (v11)
  {
    if (APTransportDeviceGetAddress(*(DerivedStorage + 64), v10, 0, a2, 1024, 0, 0))
    {
      APSLogErrorAt();
    }

    else
    {
      LODWORD(v11) = 0;
      if (*a2)
      {
        goto LABEL_20;
      }
    }
  }

  else if (*(DerivedStorage + 128))
  {
    goto LABEL_20;
  }

  if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11(&gLogCategory_APTransportSession, "Boolean session_canResumeWithRequestedInterface(FigTransportSessionRef)", v6, "[%{ptr}] Requested interface %'s unavailable, error %#m\n");
  }

  LODWORD(v11) = -16603;
LABEL_20:
  *a3 = v11;
  OUTLINED_FUNCTION_13_0();
}

uint64_t session_createStreamWithIDInternal_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12785;
  return result;
}

uint64_t session_createStreamWithIDInternal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_createStreamWithIDInternal_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6719;
  return result;
}

void session_createStreamName_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t session_createConnectionForStream_cold_22(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16602;
  return result;
}

uint64_t session_createConnectionForStream_cold_33(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16600;
  return result;
}

uint64_t session_createConnectionForStream_cold_56(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_10_0(v2, "No stream type specified for shared connection stream");
  *a1 = result;
  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void session_handleConnectivityHelperEventsInternal_cold_2(uint64_t a1, int *a2)
{
  SessionTransportType = session_getSessionTransportType(a1, a2);
  if (SessionTransportType)
  {
    if (SessionTransportType != -16608)
    {

      APSLogErrorAt();
    }
  }

  else if ((*a2 & 0xFFFFFFFE) == 4)
  {

    session_handleConnectionDroppedInternal(a1, 0, -16603);
  }
}

void session_handleConnectivityHelperEventsInternal_cold_5(uint64_t a1, int *a2, uint64_t a3, _BYTE *a4)
{
  CMBaseObjectGetDerivedStorage();
  *a2 = 0;
  SessionTransportType = session_getSessionTransportType(a1, a2);
  if (SessionTransportType)
  {
    if (SessionTransportType == -16608)
    {
      return;
    }

    APSLogErrorAt();

    goto LABEL_20;
  }

  v10 = (*a2 < 8) & (0x8Cu >> *a2);
  if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    v11 = "IS NOT";
    if (v10)
    {
      v11 = "IS";
    }

    v12 = a1;
    v13 = v11;
    OUTLINED_FUNCTION_11(&gLogCategory_APTransportSession, "OSStatus session_isConnectedOnWiFi(FigTransportSessionRef, APTSessionWiFiCheckOption, Boolean *)", v9, "Session %{ptr} %s connected on WiFi\n");
  }

  if (v10)
  {
    if (!APConnectivityHelperQueryWiFiPower(*(a3 + 240), a4))
    {
      if (!*a4)
      {
        if (gLogCategory_APTransportSession <= 60 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportSession, "void session_handleWiFiPowerChangedEvent(FigTransportSessionRef)", 33554492, "WiFi is turned off during a session!\n", v12, v13);
        }

        session_handleConnectionDroppedInternal(a1, 0, -16603);
      }

      return;
    }

LABEL_20:
    APSLogErrorAt();
  }
}

void _APBrokerManagerDiscoveryDelegateStop(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 56))
  {
    v2 = _APBrokerManagerCopyReferencedObjectIfNecessary(*(a1 + 72), &v3);
    if (v3)
    {
      APSLogErrorAt();
      if (!v2)
      {
        return;
      }
    }

    else
    {
      (*(a1 + 56))(v2, *(a1 + 80));
      if (!v2)
      {
        return;
      }
    }

    CFRelease(v2);
  }
}

uint64_t _APBrokerManagerRequestBrokerDiscovery(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsLockedOnThisThread();
  ++*(v1 + 132);
  if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerManager)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerManager, "void _APBrokerManagerRequestBrokerDiscovery(APBrokerManagerRef)", v2, "[%{ptr}] Broker Discovery request count: %u\n");
  }

  return _APBrokerManagerUpdateBrowsing(v1);
}

void _APBrokerManagerCallAuthenticationCallback(int a1, int a2, const void *a3, void *aBlock)
{
  if (aBlock)
  {
    v6 = _Block_copy(aBlock);
    if (a3)
    {
      CFRetain(a3);
    }

    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    v9 = ___APBrokerManagerCallAuthenticationCallback_block_invoke;
    v10 = &unk_278BC7160;
    v13 = a2;
    v11 = v6;
    v12 = a3;
    dispatch_async(v7, block);
  }
}

void _APBrokerManagerCallGetInfoCallback(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      FigCFDictionarySetValue();
      v7 = _Block_copy(a4);
      CFRetain(Mutable);
    }

    else
    {
      APSLogErrorAt();
      v7 = _Block_copy(a4);
      a2 = -6728;
    }

    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    v10 = ___APBrokerManagerCallGetInfoCallback_block_invoke;
    v11 = &unk_278BC7160;
    v14 = a2;
    v12 = v7;
    v13 = Mutable;
    dispatch_async(v8, block);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void _APBrokerManagerFireBrokeredReceiverEvent(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1);
  if (v2)
  {
    v4 = v3[24];
    if (v4)
    {
      CFRetain(v4);
    }

    CFRetain(v3);
    CFRetain(v1);
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_11_1(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, ___APBrokerManagerFireBrokeredReceiverEvent_block_invoke, &__block_descriptor_68_e5_v8__0l, v16, v17, v18, v19, v20);
  }
}

void _APBrokerManagerFireBrokerGroupEvent(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1);
  if (v2)
  {
    v4 = v3[24];
    if (v4)
    {
      CFRetain(v4);
    }

    CFRetain(v3);
    CFRetain(v1);
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_11_1(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, ___APBrokerManagerFireBrokerGroupEvent_block_invoke, &__block_descriptor_68_e5_v8__0l, v16, v17, v18, v19, v20);
  }
}

void _APBrokerManagerCleanupBrokerGroup(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(a1 + 137))
  {
    APBrokerGroupStopReceiverPolling(a2);
  }

  GroupID = APBrokerGroupGetGroupID(a2);
  _APBrokerManagerUpdateBrokerGroupReceiversWithList(a1, GroupID, 0);
  APBrokerGroupInvalidate(a2);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerManager)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerManager, "void _APBrokerManagerFireBrokerGroupRemoved(APBrokerManagerRef, APBrokerGroupRef)", v5, "[%{ptr}] BrokerGroup [%{ptr}] removed\n");
  }

  _APBrokerManagerFireBrokerGroupEvent(a1);
}

uint64_t _APBrokerManagerRemoveAllBrokerGroups(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (CFDictionaryGetCount(*(v1 + 112)) >= 1)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v1 + 112));
    CFDictionaryRemoveAllValues(*(v1 + 112));
    if (!Copy)
    {
      APSLogErrorAt();
      return 4294960568;
    }

    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    CFDictionaryApplyBlock();
    CFRelease(Copy);
  }

  return 0;
}

uint64_t APBrokerManagerAuthenticateBrokerGroup_cold_1(__CFString *a1, __CFString *a2, uint64_t a3)
{
  v5 = a1;
  if (a1 && !IsAppleInternalBuild())
  {
    v5 = @"#Redacted#";
  }

  if (IsAppleInternalBuild())
  {
    v6 = a2;
  }

  else
  {
    v6 = @"#Redacted#";
  }

  v12 = v6;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v7, v8, v9, v10, a3, v5, v12);
}

uint64_t _APBrokerManagerReleaseBrokerDiscovery_cold_1(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerManager, "void _APBrokerManagerReleaseBrokerDiscovery(APBrokerManagerRef)", a3, "[%{ptr}] Broker Discovery request count: %u\n");
  }

  result = OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerManager);
  if (result)
  {
    return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerManager, "void _APBrokerManagerReleaseBrokerDiscovery(APBrokerManagerRef)", a3, "[%{ptr}] Broker Discovery request count: %u\n");
  }

  return result;
}

uint64_t APBrokerManagerGetInfoFromBrokerGroup_cold_1(__CFString *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0;
  if (a1 && !IsAppleInternalBuild())
  {
    v3 = @"#Redacted#";
  }

  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v5, v6, v7, v8, a2, v4, v3);
}

void APBrokerManagerGetInfoFromBrokerGroup_cold_2(uint64_t a1, uint64_t a2, void *a3, int a4, const void *a5)
{
  APSLogErrorAt();
  _APBrokerManagerClearGetInfoCallbackState(a2);
  FigSimpleMutexUnlock();

  _APBrokerManagerCallGetInfoCallback(a2, a4, 0, a5);
}

void BonjourDiscoveryDelegateSetup_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    BonjourBrowser_Stop();
    CFRelease(*a2);
  }

  free(a2);
}

void APTSessionHealthReporterCreate_cold_2(uint64_t a1, uint64_t a2, const void *a3, _DWORD *a4)
{
  APSLogErrorAt();
  *a4 = APSSignalErrorAt();

  CFRelease(a3);
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  v2 = OUTLINED_FUNCTION_4(0xE616u, "Failed to create symptom reporter");
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_4(v2, "Setting sessionID qualifier failed");
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_4(v2, "Setting interfaceIndex qualifier failed");
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_4(v2, "Setting remote address qualifier failed");
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_8(uint64_t a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTSessionHealthReporter <= 60)
  {
    if (gLogCategory_APTSessionHealthReporter != -1)
    {
      return LogPrintF(&gLogCategory_APTSessionHealthReporter, "OSStatus healthReporter_setRemoteMACAddressSymptomQualifier(APTSessionHealthReporterRef, symptom_t)", 33554492, "Peer's MAC address is not available.\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APTSessionHealthReporter, "OSStatus healthReporter_setRemoteMACAddressSymptomQualifier(APTSessionHealthReporterRef, symptom_t)", 33554492, "Peer's MAC address is not available.\n");
    }
  }

  return result;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE614u, "Sending symptom failed");
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterReportNetworkStatus_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE616u, "Failed to create symptom");
  *a1 = result;
  return result;
}

uint64_t healthReporter_setStringSymptomQualifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_4(v2, "Setting string qualifier failed");
  *a1 = result;
  return result;
}

uint64_t healthReporter_setStringSymptomQualifier_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4(0xE615u, "Failed to create C String");
  *a1 = result;
  return result;
}

void *__bonjourCacheHomeKit_introspector_cmd_purgeCache_block_invoke_cold_1(void *a1, void *a2)
{
  APSLogErrorAt();
  result = [MEMORY[0x277CCA9B8] errorWithDomain:@"nil cache directory url" code:0 userInfo:0];
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t APBrokerKeychainUtilsCopyAuthToken(__CFString *a1, __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  v36 = 0;
  if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerKeychainUtils)))
  {
    OUTLINED_FUNCTION_1();
    LogPrintF(v6, v7, v8, v9, a1, a2);
  }

  if (!a1)
  {
    APSLogErrorAt();
    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA590];
    v29 = -6705;
LABEL_25:
    v31 = [v27 errorWithDomain:v28 code:v29 userInfo:0];
    v11 = 0;
LABEL_27:
    v13 = 0;
LABEL_29:
    v14 = 0;
    v36 = v31;
    goto LABEL_15;
  }

  KeychainItemID = APBrokerKeychainUtilsCreateKeychainItemID(a1, a2, &cf);
  if (KeychainItemID)
  {
    v30 = KeychainItemID;
    APSLogErrorAt();
    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA590];
    v29 = v30;
    goto LABEL_25;
  }

  v11 = objc_opt_new();
  if (!v11)
  {
    APSLogErrorAt();
    v31 = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v32, *MEMORY[0x277CCA590]);
    goto LABEL_27;
  }

  v12 = objc_opt_new();
  v13 = v12;
  if (!v12)
  {
    APSLogErrorAt();
    v31 = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v33, *MEMORY[0x277CCA590]);
    goto LABEL_29;
  }

  [v12 setAccessGroup:@"com.apple.airplay"];
  [v13 setIdentifier:cf];
  [v13 setType:@"APBroker"];
  v14 = [v11 copyItemMatchingItem:v13 flags:0 error:&v36];
  if (!NSErrorToOSStatus())
  {
    v15 = [objc_msgSend(v14 "metadata")];
    if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerKeychainUtils)))
    {
      OUTLINED_FUNCTION_1();
      LogPrintF(v16, v17, v18, v19, v15, a1, a2);
    }

    *a3 = CFRetain(v15);
  }

LABEL_15:

  if (cf)
  {
    CFRelease(cf);
  }

  v20 = v36;
  if (v36)
  {
    if (gLogCategory_APBrokerKeychainUtils <= 30)
    {
      if (gLogCategory_APBrokerKeychainUtils != -1 || (v25 = OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerKeychainUtils), v20 = v36, v25))
      {
        v34 = v20;
        OUTLINED_FUNCTION_1();
        LogPrintF(v21, v22, v23, v24, a1, a2, v34);
      }
    }
  }

  return NSErrorToOSStatus();
}

uint64_t APBrokerKeychainUtilsCopyAllAuthTokens(CFTypeRef a1, CFMutableArrayRef *a2)
{
  v58[17] = *MEMORY[0x277D85DE8];
  v58[0] = 0;
  if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerKeychainUtils)))
  {
    OUTLINED_FUNCTION_1();
    LogPrintF(v4, v5, v6, v7, a1);
  }

  if (!a1 || !a2)
  {
    APSLogErrorAt();
    v49 = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v48, *MEMORY[0x277CCA590]);
    Mutable = 0;
LABEL_39:
    v12 = 0;
    v9 = 0;
LABEL_41:
    v58[0] = v49;
    goto LABEL_29;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v49 = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v50, *MEMORY[0x277CCA590]);
    goto LABEL_39;
  }

  v9 = objc_opt_new();
  if (!v9)
  {
    APSLogErrorAt();
    v49 = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v51, *MEMORY[0x277CCA590]);
    v12 = 0;
    goto LABEL_41;
  }

  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v11 = v10;
  v12 = _CopyAllAuthTokenKeychainItems(v9, v58);
  v13 = NSErrorToOSStatus();
  if (!v13)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v21 = OUTLINED_FUNCTION_6_3(v13, v14, v15, v16, v17, v18, v19, v20);
    if (v21)
    {
      v22 = v21;
      v23 = *v55;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v55 != v23)
          {
            objc_enumerationMutation(v12);
          }

          v25 = *(*(&v54 + 1) + 8 * i);
          [objc_msgSend(objc_msgSend(v25 "metadata")];
          v27 = v26;
          v28 = [objc_msgSend(v25 "dateModified")];
          cf2 = 0;
          if (v11 - v36 < v27)
          {
            APBrokerKeychainUtilsCopyInfoFromKeychainItemID([v25 identifier], &cf2, 0);
            v29 = cf2;
            if (cf2 == a1)
            {
              goto LABEL_19;
            }

            if (!cf2)
            {
              continue;
            }

            if (CFEqual(a1, cf2))
            {
LABEL_19:
              CFArrayAppendValue(Mutable, [objc_msgSend(v25 "metadata")]);
            }

            v28 = cf2;
            if (cf2)
            {
              CFRelease(cf2);
            }
          }
        }

        v22 = OUTLINED_FUNCTION_6_3(v28, v29, v30, v31, v32, v33, v34, v35);
      }

      while (v22);
    }

    if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerKeychainUtils)))
    {
      OUTLINED_FUNCTION_1();
      LogPrintF(v37, v38, v39, v40, a1, Mutable);
    }

    *a2 = Mutable;
    Mutable = 0;
  }

LABEL_29:

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v41 = v58[0];
  if (v58[0])
  {
    if (gLogCategory_APBrokerKeychainUtils <= 30)
    {
      if (gLogCategory_APBrokerKeychainUtils != -1 || (v46 = OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerKeychainUtils), v41 = v58[0], v46))
      {
        v52 = v41;
        OUTLINED_FUNCTION_1();
        LogPrintF(v42, v43, v44, v45, a1, v52);
      }
    }
  }

  return NSErrorToOSStatus();
}

void APBrokerKeychainUtilsCopyInfoFromKeychainItemID(CFStringRef theString, void *a2, void *a3)
{
  if (theString)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], theString, @"\x1C");
    v6 = ArrayBySeparatingStrings;
    if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) == 2 && (v7 = CFArrayGetValueAtIndex(v6, 0), _IsValidKeychainItemIDComponent(v7)) && (v8 = CFArrayGetValueAtIndex(v6, 1), _IsValidKeychainItemIDComponent(v8)))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      v10 = CFArrayGetValueAtIndex(v6, 1);
    }

    else
    {
      APSLogErrorAt();
      ValueAtIndex = 0;
      v10 = 0;
    }
  }

  else
  {
    ValueAtIndex = 0;
    v10 = 0;
    v6 = 0;
  }

  if (a2)
  {
    if (ValueAtIndex)
    {
      v11 = CFRetain(ValueAtIndex);
    }

    else
    {
      v11 = 0;
    }

    *a2 = v11;
  }

  if (a3)
  {
    if (v10)
    {
      v12 = CFRetain(v10);
    }

    else
    {
      v12 = 0;
    }

    *a3 = v12;
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void *APBrokerKeychainUtilsStoreAuthToken_cold_1(uint64_t a1, void *a2)
{
  v3 = a1;
  APSLogErrorAt();
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:0];
  *a2 = result;
  return result;
}

void *APBrokerKeychainUtilsStoreAuthToken_cold_3(void *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

void *APBrokerKeychainUtilsStoreAuthToken_cold_4(void *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

void *APBrokerKeychainUtilsStoreAuthToken_cold_5(void *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

void *APBrokerKeychainUtilsStoreAuthToken_cold_6(void *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

void *APBrokerKeychainUtilsStoreAuthToken_cold_7(void *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

void *APBrokerKeychainUtilsStoreAuthToken_cold_8(void *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_4(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

void APBrokerKeychainUtilsCreateKeychainItemID_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t APBrokerKeychainUtilsCreateKeychainItemID_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t APBrokerKeychainUtilsCreateKeychainItemID_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t httpconnection_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = 1;
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_Invalidate(CMBaseObjectRef)", v3, "[%{ptr}] APTransportConnectionHTTP with name %@ invalidating");
    }

    dispatch_sync_f(v4[1], context, httpconnection_deferInvalidate);
  }

  return 0;
}

void httpconnection_invalidateInternal(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP)))
  {
    OUTLINED_FUNCTION_3_1();
    LogPrintF(v5, v6, v7, v8, a1);
  }

  *DerivedStorage = 1;
  *(DerivedStorage + 108) = 0;
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = v9;
  v11 = (v9 + 240);
  if (*(v9 + 224))
  {
    v12 = *(v9 + 248);
    if ((v12 & 0x80000000) == 0)
    {
      if (close(v12) && *__error())
      {
        __error();
      }

      *(v10 + 248) = -1;
    }

    if (*v11)
    {
      APTConnectionListenerInvalidate(*v11);
      v13 = *v11;
      if (*v11)
      {
LABEL_13:
        CFRelease(v13);
        *v11 = 0;
      }
    }
  }

  else
  {
    if (*v11)
    {
      AsyncConnection_Release();
      *v11 = 0;
    }

    v11 = (v10 + 248);
    v13 = *(v10 + 248);
    if (v13)
    {
      goto LABEL_13;
    }
  }

  v14 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if ((*(v14 + 48) & 3) != 0)
  {
    v16 = "Traffic Registration";
  }

  else
  {
    v16 = "Infra Transaction";
  }

  if (!*(v14 + 72))
  {
    goto LABEL_32;
  }

  v17 = v14;
  APTransportGetSharedTransport(v14, v15);
  CMBaseObject = FigTransportGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    v25 = 4294954514;
LABEL_24:
    APSLogErrorAt();
    goto LABEL_33;
  }

  v20 = v19(CMBaseObject, @"TrafficRegistrar", *MEMORY[0x277CBECE8], &cf);
  if (v20)
  {
    v25 = v20;
    goto LABEL_24;
  }

  if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP)))
  {
    v39 = *(v17 + 72);
    OUTLINED_FUNCTION_3_1();
    LogPrintF(v21, v22, v23, v24, a1, v16, v39);
  }

  v26 = *(v17 + 72);
  if (v26)
  {
    CFRelease(v26);
    v25 = 0;
    *(v17 + 72) = 0;
    goto LABEL_33;
  }

LABEL_32:
  v25 = 0;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25 && gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_clearResumedState(APTransportConnectionRef)", 33554522, "[%{ptr}] Deregister traffic failed with error %#m", a1, v25);
  }

  v27 = *(v10 + 264);
  if (*(v10 + 256))
  {
    if (v27)
    {
      HTTPConnectionStopAsync();
      v28 = *(v10 + 264);
      if (v28)
      {
        CFRelease(v28);
        *(v10 + 264) = 0;
      }
    }

    FigSimpleMutexLock();
    v29 = *(v10 + 280);
    if (v29)
    {
      dispatch_release(v29);
      *(v10 + 280) = 0;
    }

    v30 = *(v10 + 288);
    if (v30)
    {
      CFRelease(v30);
      *(v10 + 288) = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    if (v27)
    {
      HTTPClientInvalidate();
      CFRelease(*(v10 + 264));
      *(v10 + 264) = 0;
    }

    v31 = *(v10 + 280);
    if (v31)
    {
      CFRelease(v31);
      *(v10 + 280) = 0;
    }
  }

  if (a2)
  {
    dispatch_sync_f(*(DerivedStorage + 80), a1, httpconnection_clearCallbackState);
  }

  else
  {
    httpconnection_clearCallbackState(a1);
  }

  v32 = *(DerivedStorage + 128);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 128) = 0;
  }

  v33 = *(DerivedStorage + 352);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 352) = 0;
  }

  v34 = *(DerivedStorage + 360);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 360) = 0;
  }

  v35 = *(DerivedStorage + 32);
  if (v35)
  {
    free(v35);
    *(DerivedStorage + 32) = 0;
  }

  v36 = *(DerivedStorage + 112);
  if (v36)
  {
    CFRelease(v36);
    *(DerivedStorage + 112) = 0;
  }

  v37 = *(DerivedStorage + 120);
  if (v37)
  {
    CFRelease(v37);
    *(DerivedStorage + 120) = 0;
  }

  v38 = *(DerivedStorage + 424);
  if (v38)
  {
    dispatch_source_cancel(*(DerivedStorage + 424));
    dispatch_release(v38);
    *(DerivedStorage + 424) = 0;
  }
}

void httpconnection_handleConnectionFailure(const void *a1, int a2)
{
  valuePtr = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage && a2)
  {
    *(DerivedStorage + 108) = 4;
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    httpconnection_callEventCallbacks(a1, 4u, v5, 0, 1u, 0);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t httpconnection_connect(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = 0;
  v40 = 0;
  bzero(&v24, 0xA0uLL);
  if (!a3)
  {
    a3 = *(DerivedStorage + 196);
  }

  if (*DerivedStorage)
  {
    return 0;
  }

  if (!a2 || !*a2)
  {
    APSLogErrorAt();
    v19 = APSSignalErrorAt();
    if (!v19)
    {
      return v19;
    }

    goto LABEL_39;
  }

  time = *(DerivedStorage + 440);
  Seconds = CMTimeGetSeconds(&time);
  v11 = *(DerivedStorage + 48);
  if ((v11 & 0x1B) != 0)
  {
    v12 = 9;
  }

  else
  {
    v12 = 8;
  }

  if (*(DerivedStorage + 48) & 4 | a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = (*(DerivedStorage + 48) & 0x1B) != 0;
  }

  if ((v11 & 0x20) != 0)
  {
    if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_connect(APTransportConnectionRef, const char *, uint32_t, int, Boolean)", v9, "[%{ptr}] Prohibiting cellular interfaces");
    }

    v13 |= 0x10u;
  }

  if (a5 && (v13 |= 0x8Cu, gLogCategory_APTransportConnectionHTTP <= 60))
  {
    v14 = a1;
    if (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_connect(APTransportConnectionRef, const char *, uint32_t, int, Boolean)", 33554492, "[%{ptr}] Forcing iPv4 addressing mode", a1);
    }
  }

  else
  {
    v14 = a1;
  }

  if (*(DerivedStorage + 340))
  {
    v15 = v13 | 0x1000;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 | 0x400;
  if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_connect(APTransportConnectionRef, const char *, uint32_t, int, Boolean)", 33554482, "[%{ptr}] Async connecting to '%s' port %d ifIndex: %u", v14, a2, a4, a3);
  }

  SNPrintF(&v40, 9, "[%{ptr}]", v14);
  v17 = CFRetain(*(DerivedStorage + 216));
  v18 = *(DerivedStorage + 8);
  v38[1] = 0u;
  v39 = 0u;
  v35 = 0;
  v38[0] = 0u;
  v36 = 160;
  v37 = &v40;
  v24 = a2;
  LODWORD(v39) = a3;
  v25 = a4;
  v26 = v16;
  v27 = 1000000000 * Seconds;
  v28 = -1;
  v29 = httpconnection_asyncConnectionProgressed;
  v30 = v17;
  v31 = httpconnection_asyncConnectionCompleted;
  v32 = v17;
  v33 = v18;
  v34 = &gLogCategory_AsyncCnxAirPlayHTTP;
  *(v38 + 12) = 0x10000007D0;
  v19 = AsyncConnection_ConnectEx();
  if (v19)
  {
    APSLogErrorAt();
    if (v17)
    {
      CFRelease(v17);
    }

LABEL_39:
    if (gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_connect(APTransportConnectionRef, const char *, uint32_t, int, Boolean)", 33554522, "[%{ptr}] Connecting failed with error %#m", a1, v19);
    }

    if (*(DerivedStorage + 240))
    {
      AsyncConnection_Release();
      *(DerivedStorage + 240) = 0;
    }
  }

  return v19;
}

void httpconnection_asyncConnectionProgressed(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = MEMORY[0x277CBECE8];
  switch(a1)
  {
    case 1:
      if (gLogCategory_APTransportConnectionHTTP <= 40)
      {
        OUTLINED_FUNCTION_13_2();
        if (!v10 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_asyncConnectionProgressed(int, const void *, void *)", (v3 - 10), "[%{ptr}] Querying SRV: %s", v7, a2);
        }
      }

      goto LABEL_31;
    case 2:
      if (gLogCategory_APTransportConnectionHTTP <= 40)
      {
        OUTLINED_FUNCTION_13_2();
        if (!v10 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_asyncConnectionProgressed(int, const void *, void *)", (v3 - 10), "[%{ptr}] Resolving DNS: %s", v7, a2);
        }
      }

LABEL_31:
      v33 = CFStringCreateWithCString(*v9, a2, 0x8000100u);
      goto LABEL_32;
    case 3:
      v11 = DerivedStorage;
      OUTLINED_FUNCTION_11_3();
      if (v13 ^ v14 | v10 && (v12 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP)))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v15, v16, v17, v18, v7, a2);
      }

      v24 = CMBaseObjectGetDerivedStorage();
      v26 = *(v24 + 48);
      v84 = 0;
      v83 = 0;
      v82 = 0;
      if (!*(v24 + 56))
      {
        if (gLogCategory_APTransportConnectionHTTP <= 30)
        {
          if (gLogCategory_APTransportConnectionHTTP != -1 || (OUTLINED_FUNCTION_6_4(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_4();
            LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_addInitialTrafficRegistration(APTransportConnectionRef, sockaddr_ip *)", (v69 - 20), "[%{ptr}] Skipping Traffic Registration", v7, v74);
          }
        }

        goto LABEL_78;
      }

      v27 = v24;
      v28 = (v24 + 72);
      if (*(v24 + 72))
      {
        goto LABEL_78;
      }

      v29 = v26 & 3;
      if (*a2)
      {
        v80 = v26;
        v81 = v26 & 3;
        if ((v26 & 3) == 0)
        {
          v31 = v9;
          v32 = *v9;
LABEL_53:
          APTransportGetSharedTransport(v24, v25);
          CMBaseObject = FigTransportGetCMBaseObject();
          v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v51)
          {
            v52 = v51(CMBaseObject, @"TrafficRegistrar", v32, &v82);
            if (!v52)
            {
              v9 = v31;
              v29 = v81;
              if (v81)
              {
                v53 = APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx(v82, &v83, 1, v80 & 2, v28);
                if (v53)
                {
                  v54 = v53;
LABEL_103:
                  APSLogErrorAt();
                  goto LABEL_60;
                }
              }

              else
              {
                v56 = APTransportTrafficRegistrarInfraTransactionCreate(v82, v28);
                if (v56)
                {
                  v54 = v56;
                  goto LABEL_103;
                }
              }

              OUTLINED_FUNCTION_11_3();
              if (v13 ^ v14 | v10 && (v57 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP)))
              {
                v58 = "Traffic Registration";
                if (v81)
                {
                  v60 = *(v27 + 57) == 0;
                }

                else
                {
                  v58 = "Infra Transaction";
                  v60 = 1;
                }

                v78 = v60;
                v79 = *(v27 + 64);
                v76 = v58;
                v77 = *v28;
                OUTLINED_FUNCTION_3_1();
                LogPrintF(v61, v62, v63, v64, v7, v76, v77, v78, v79);
              }

LABEL_78:
              v54 = 0;
              goto LABEL_79;
            }

            v54 = v52;
          }

          else
          {
            v54 = 4294954514;
          }

          APSLogErrorAt();
          v9 = v31;
          v29 = v81;
LABEL_60:
          if (gLogCategory_APTransportConnectionHTTP <= 90)
          {
            if (gLogCategory_APTransportConnectionHTTP != -1 || (OUTLINED_FUNCTION_6_4(), _LogCategory_Initialize()))
            {
              v55 = "Traffic Registration";
              if (v29)
              {
                v59 = *(v27 + 57) != 0;
              }

              else
              {
                v55 = "Infra Transaction";
                v59 = 0;
              }

              LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_addInitialTrafficRegistration(APTransportConnectionRef, sockaddr_ip *)", 33554522, "[%{ptr}] Failed to add %s%?s%?@ err=%#m", v7, v55, v59, " for group: ", v59, *(v27 + 64), v54);
            }
          }

          goto LABEL_79;
        }

        if (gLogCategory_APTransportConnectionHTTP <= 30)
        {
          if (gLogCategory_APTransportConnectionHTTP != -1 || (OUTLINED_FUNCTION_6_4(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_4();
            LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_addInitialTrafficRegistration(APTransportConnectionRef, sockaddr_ip *)", (v30 - 20), "[%{ptr}] Querying peer MAC address from NDP table", v7);
          }
        }

        PeerMACAddress = GetPeerMACAddress();
        if (!PeerMACAddress)
        {
          OUTLINED_FUNCTION_11_3();
          if (v13 ^ v14 | v10)
          {
            if (v38 != -1 || (v36 = OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP), v36))
            {
              OUTLINED_FUNCTION_3_1();
              v36 = LogPrintF(v39, v40, v41, v42, v7, &v83, a2);
            }
          }

          v85 = 0;
          cf = 0;
          APTransportGetSharedTransport(v36, v37);
          v31 = v9;
          v32 = *v9;
          v43 = FigTransportGetCMBaseObject();
          v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v44 || v44(v43, @"WifiManagerClient", v32, &cf) || APTransportWifiManagerClientGetPeerRSSI(cf, &v83, &v85))
          {
            APSLogErrorAt();
          }

          else
          {
            OUTLINED_FUNCTION_11_3();
            if (v13 ^ v14 | v10 && (v45 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP)))
            {
              v75 = v85;
              OUTLINED_FUNCTION_3_1();
              LogPrintF(v46, v47, v48, v49, &v83, v75);
            }
          }

          v24 = cf;
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_53;
        }

        v54 = PeerMACAddress;
        APSLogErrorAt();
        if (gLogCategory_APTransportConnectionHTTP <= 90)
        {
          if (gLogCategory_APTransportConnectionHTTP != -1 || (OUTLINED_FUNCTION_6_4(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_4();
            LogPrintF(v71, v72, (v70 + 40), v73, v7);
          }

          goto LABEL_60;
        }
      }

      else
      {
        APSLogErrorAt();
        v54 = APSSignalErrorAt();
        if (v54)
        {
          goto LABEL_60;
        }
      }

LABEL_79:
      if (v82)
      {
        CFRelease(v82);
      }

      if (v54)
      {
        if (gLogCategory_APTransportConnectionHTTP <= 90)
        {
          if (gLogCategory_APTransportConnectionHTTP != -1 || (OUTLINED_FUNCTION_6_4(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_4();
            LogPrintF(v66, v67, (v65 + 40), v68, v7, v54);
          }
        }

        *(v11 + 496) = v54;
        if (*(v11 + 240))
        {
          AsyncConnection_Release();
          *(v11 + 240) = 0;
        }
      }

      else
      {
        v33 = CFDataCreate(*v9, a2, 28);
LABEL_32:
        v34 = v33;
        if (v33)
        {
          OUTLINED_FUNCTION_9_2(v7, a1);
          CFRelease(v34);
        }
      }

LABEL_34:
      CFRelease(v7);
      return;
    case 4:
      OUTLINED_FUNCTION_11_3();
      if (v13 ^ v14 | v10 && (v19 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP)))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v20, v21, v22, v23, v7, a2);
      }

      goto LABEL_34;
    default:
      goto LABEL_34;
  }
}

void httpconnection_asyncConnectionCompleted(uint64_t a1, uint64_t a2, const void *a3)
{
  *&v19.sa_len = 0;
  *&v19.sa_data[6] = 0;
  v21 = 0;
  v20 = 0;
  v18 = 0;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6)
  {
    v10 = 0;
    if ((a1 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  if (!a2 || (v9 = *(DerivedStorage + 496), !v9))
  {
    v9 = a2;
  }

  if (*DerivedStorage)
  {
    goto LABEL_45;
  }

  if (v9)
  {
    APSLogErrorAt();
LABEL_45:
    v10 = 0;
    goto LABEL_13;
  }

  v18 = 28;
  if (getpeername(a1, &v19, &v18))
  {
    v10 = 0;
  }

  else
  {
    v10 = CFDataCreate(*MEMORY[0x277CBECE8], &v19.sa_len, 28);
  }

  v9 = httpconnection_handleConnectionEstablished(v6, a1);
  if (v9)
  {
    APSLogErrorAt();
  }

  else
  {
    *(v8 + 108) = 5;
    OUTLINED_FUNCTION_9_2(v6, 5);
  }

  LODWORD(a1) = -1;
LABEL_13:
  if (*(v8 + 240))
  {
    AsyncConnection_Release();
    *(v8 + 240) = 0;
  }

  a2 = v9;
  if ((a1 & 0x80000000) == 0)
  {
LABEL_16:
    if (close(a1) && *__error())
    {
      __error();
    }
  }

LABEL_19:
  if (a2)
  {
    if (gLogCategory_APTransportConnectionHTTP <= 90)
    {
      OUTLINED_FUNCTION_13_2();
      if (!v11 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_asyncConnectionCompleted(SocketRef, OSStatus, void *)", (a1 + 40), "[%{ptr}] Failed with error %#m", v6, a2);
      }
    }

    if (v6)
    {
      if (a2 == 97)
      {
        v16 = -71882;
      }

      else
      {
        v16 = a2;
      }

      if (a2 == 13)
      {
        v17 = -71880;
      }

      else
      {
        v17 = v16;
      }

      httpconnection_handleConnectionFailure(v6, v17);
    }
  }

  else if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP)))
  {
    OUTLINED_FUNCTION_3_1();
    LogPrintF(v12, v13, v14, v15, v6);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(a3);
}

void httpconnection_handleConnectionClosed(uint64_t a1)
{
  v2 = *(a1 + 384);
  valuePtr = -72320;
  if (v2)
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v3)
    {
      v4 = v3;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!*DerivedStorage)
      {
        v7 = DerivedStorage;
        if (*(DerivedStorage + 108) == 5)
        {
          if (gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_handleConnectionClosed(HTTPConnectionRef, void *)", v6, "[%{ptr}] Connection [%{ptr}] closed to %##a (from %##a)");
          }

          *(v7 + 108) = 6;
          v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
          OUTLINED_FUNCTION_9_2(v4, 6);
          if (v8)
          {
            CFRelease(v8);
          }
        }
      }

      CFRelease(v4);
    }
  }

  else
  {
    APSLogErrorAt();
  }

  v9 = *(a1 + 384);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 384) = 0;
  }
}

uint64_t APTransportConnectionHTTPCreate_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72322;
  if (gLogCategory_APTransportConnectionHTTP <= 90)
  {
    if (gLogCategory_APTransportConnectionHTTP != -1)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionHTTP, "OSStatus APTransportConnectionHTTPCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", v3, "[%{ptr}] Invalid traffic PeerGroupIdentifier for connections to multiple peers");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionHTTP, "OSStatus APTransportConnectionHTTPCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", v3, "[%{ptr}] Invalid traffic PeerGroupIdentifier for connections to multiple peers");
    }
  }

  return result;
}

uint64_t APTransportConnectionHTTPCreate_cold_3(uint64_t *a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = "enabled";
  }

  else
  {
    v2 = "disabled";
  }

  v8 = *a1;
  v9 = v2;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v3, v4, v5, v6, v8, v9);
}

uint64_t APTransportConnectionHTTPCreate_cold_5(uint64_t *a1, CMTime *a2)
{
  v2 = *a1;
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  return LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus APTransportConnectionHTTPCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554472, "[%{ptr}] Set connect timeout to %f seconds", v2, *&Seconds);
}

uint64_t APTransportConnectionHTTPCreate_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to allocate server state mutex");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionHTTPCreate_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "weak reference holder allocation failed");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionHTTPCreate_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "Failed to allocate notification queue");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionHTTPCreate_cold_10()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  return OUTLINED_FUNCTION_5_4(v0, "callback state queue allocation failed");
}

uint64_t APTransportConnectionHTTPCreate_cold_11()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  return OUTLINED_FUNCTION_5_4(v0, "event queue allocation failed");
}

uint64_t APTransportConnectionHTTPCreate_cold_12()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  return OUTLINED_FUNCTION_5_4(v0, "state queue allocation failed");
}

uint64_t APTransportConnectionHTTPCreate_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

uint64_t httpconnection_resumeInternal_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTransportConnectionHTTP <= 30)
  {
    if (gLogCategory_APTransportConnectionHTTP != -1)
    {
      return OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_resumeInternal(void *)", a3, "[%{ptr}] Connection already resumed");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_resumeInternal(void *)", a3, "[%{ptr}] Connection already resumed");
    }
  }

  return result;
}

uint64_t httpconnection_resumeInternal_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void __httpconnection_startConnecting_block_invoke_2_cold_1(uint64_t a1, const void **a2)
{
  v3 = a1;
  APSLogErrorAt();
  httpconnection_handleConnectionFailure(*a2, v3);
}

uint64_t httpconnection_deferCallEventCallbackForGroupID_cold_1(uint64_t *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t httpconnection_handleListenerConnected_cold_4()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t httpconnection_handleListenerConnected_cold_5(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != -1)
  {
    return OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_handleListenerConnected(APTConnectionListenerRef, void *, SocketRef, APSNetworkAddressRef)", a3, "[%{ptr}] Failed to handle incoming connection. Error: %#m");
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return OUTLINED_FUNCTION_15(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_handleListenerConnected(APTConnectionListenerRef, void *, SocketRef, APSNetworkAddressRef)", a3, "[%{ptr}] Failed to handle incoming connection. Error: %#m");
  }

  return result;
}

uint64_t httpconnection_addEventCallbackInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t httpconnection_addEventCallbackInternal_cold_3()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t httpconnection_sendPackageInternal_cold_1(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v4)
  {
    v4(v2);
  }

  return OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_sendPackageInternal(void *)", v3, "[%{ptr}] Sending package [%{ptr}] groupID %d httpMessage [%{ptr}]");
}

_BYTE *httpconnection_sendPackageInternal_cold_7(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v3)
  {
    v4 = v3(v2);
  }

  else
  {
    v4 = 0;
  }

  return httpconnection_callEventCallbacks(v1, 8u, v2, 0, 0, v4);
}

void tcpconnection_invalidateInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    APTTrafficMetricsConnectionClosed(*(DerivedStorage + 240));
    if (gLogCategory_APTransportConnectionTCP <= 30 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionTCP, "void tcpconnection_invalidateInternal(void *)", v4, "[%{ptr}] APTransportConnectionTCP with name %@ invalidating.\n");
    }

    *v3 = 1;
    tcpconnection_cleanUp(*a1);
    if (*(a1 + 8))
    {
      v5 = *(v3 + 24);
      v6 = *a1;

      dispatch_sync_f(v5, v6, tcpconnection_clearCallbackState);
    }

    else
    {
      v7 = *a1;

      tcpconnection_clearCallbackState(v7);
    }
  }
}

_BYTE *tcpconnection_callEventCallback(const void *a1, unsigned int a2, const void *a3)
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

void tcpconnection_receivedData(uint64_t *a1)
{
  v1 = *a1;
  valuePtr = 0;
  targetBBuf = 0;
  v17 = 0;
  theBuffer = 0;
  dataPointerOut = 0;
  cf = 0;
  if (v1)
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v2)
    {
      goto LABEL_18;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v4 = DerivedStorage;
      if (*(DerivedStorage + 176) == 5)
      {
        v5 = *MEMORY[0x277CBECE8];
        HIDWORD(valuePtr) = OUTLINED_FUNCTION_6_5(*(DerivedStorage + 200), &theBuffer, v11);
        if (HIDWORD(valuePtr))
        {
          goto LABEL_33;
        }

        HIDWORD(valuePtr) = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
        if (HIDWORD(valuePtr))
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_9_3();
        v7 = v6();
        HIDWORD(valuePtr) = v7;
        if (v7)
        {
          if (v7 != -6723)
          {
            APSLogErrorAt();
          }

          v9 = CMBaseObjectGetDerivedStorage();
          if (!*v9)
          {
            APTTrafficMetricsConnectionClosed(*(v9 + 240));
            tcpconnection_cleanUp(v2);
          }

          v10 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr + 4);
          tcpconnection_callEventCallback(v2, 6u, v10);
          if (v10)
          {
            CFRelease(v10);
          }

          goto LABEL_16;
        }

        if ((HIDWORD(valuePtr) = (*(v4 + 208))(theBuffer, &valuePtr)) != 0 || valuePtr && ((HIDWORD(valuePtr) = OUTLINED_FUNCTION_6_5(valuePtr, &targetBBuf, v12)) != 0 || (HIDWORD(valuePtr) = CMBlockBufferGetDataPointer(targetBBuf, 0, 0, 0, &v17)) != 0 || (OUTLINED_FUNCTION_9_3(), (HIDWORD(valuePtr) = v8()) != 0) || (HIDWORD(valuePtr) = CMBlockBufferAppendBufferReference(theBuffer, targetBBuf, 0, 0, 0)) != 0) || (HIDWORD(valuePtr) = (*(v4 + 216))(v5, theBuffer, &cf)) != 0)
        {
LABEL_33:
          APSLogErrorAt();
        }

        else
        {
          tcpconnection_callEventCallback(v2, 7u, cf);
        }
      }

      else
      {
        HIDWORD(valuePtr) = -72320;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    HIDWORD(valuePtr) = -72322;
    OUTLINED_FUNCTION_5_5(0xE57Eu);
    APSSignalErrorAt();
    v2 = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_18:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (targetBBuf)
  {
    CFRelease(targetBBuf);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t APTransportConnectionTCPCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4(v2, "weak reference holder allocation failed");
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionTCPCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  *a1 = -72323;
  return OUTLINED_FUNCTION_5_4(v2, "callback state queue allocation failed");
}

uint64_t APTransportConnectionTCPCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  v2 = APSLogErrorAt();
  *a1 = -72323;
  return OUTLINED_FUNCTION_5_4(v2, "dispatch queue allocation failed");
}

uint64_t APTransportConnectionTCPCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_5();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t tcpconnection_copyPropertyInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_copyPropertyInternal_cold_2()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE580u);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_copyPropertyInternal_cold_4()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE580u);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_resumeInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

void tcpconnection_resumeInternal_cold_4(CFTypeRef cf, CFTypeRef *a2, uint64_t a3)
{
  v3 = a3;
  if (*a2)
  {
    CFRelease(*a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    APSLogErrorAt();
  }
}

uint64_t tcpconnection_handleListenerConnected_cold_4()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_setupDataSocketReadSource_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE57Du);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_setupDataSocketReadSource_cold_2()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE57Du);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_setupDataSocketReadSource_cold_3()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE57Cu);

  return APSSignalErrorAt();
}

uint64_t tcpconnection_acquirePackageInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_acquirePackageWithMessageSizeInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_sendPackageInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t tcpconnection_sendPackageInternal_cold_5(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v2)
  {
    v3 = v2(v1);
  }

  else
  {
    v3 = 0;
  }

  return LogPrintF(&gLogCategory_APTransportConnectionTCP, "void tcpconnection_sendPackageInternal(void *)", 33554442, "Sent frame with messageType = %d\n", v3);
}

uint64_t tcpconnection_sendPackageInternal_cold_6()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_5_5(0xE57Du);

  return APSSignalErrorAt();
}

uint64_t APAdvertiserInfoCreateAirPlayServiceName(uint64_t a1, void *a2)
{
  if (!a2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (!a1)
  {
    return 4294960591;
  }

  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), @"deviceName");
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  pthread_mutex_unlock((a1 + 16));
  result = 0;
  *a2 = v5;
  return result;
}

void APAdvertiserInfoCreate_cold_2(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo), result))
    {
      result = OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddRAOPData(APAdvertiserInfoRef, CFDataRef)", v3, "RAOP TXT record: CompressionTypes missing.\n");
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_2()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo), result))
    {
      result = OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddRAOPData(APAdvertiserInfoRef, CFDataRef)", v3, "RAOP TXT record: EncryptionTypes missing.\n");
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_4()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo), result))
    {
      result = OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddRAOPData(APAdvertiserInfoRef, CFDataRef)", v3, "RAOP TXT record: TransportTypes missing.\n");
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName_cold_5()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo), result))
    {
      result = OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddRAOPData(APAdvertiserInfoRef, CFDataRef)", v3, "RAOP TXT record: ProtocolVersion missing.\n");
    }
  }

  *v0 = v1;
  return result;
}

uint64_t _APAdvertiserInfoAddAirPlayData_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo), result))
    {
      result = OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddAirPlayData(APAdvertiserInfoRef, CFDataRef)", v3, "AirPlay TXT record: DeviceID missing.\n");
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCreateWithSidePlayDataAndDeviceName_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo), result))
    {
      result = OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus _APAdvertiserInfoAddSidePlayData(APAdvertiserInfoRef, CFDataRef)", v3, "SidePlay TXT record: DeviceID missing (%s).");
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_4(uint64_t a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1)
    {
      return OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyAirPlayDataWithNANServiceType(APAdvertiserInfoRef, APSNANServiceType, CFDataRef *)", v2, "Failed to add DeviceID, which is required. Can't create AirPlay data.\n");
    }

    result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo);
    if (result)
    {
      return OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyAirPlayDataWithNANServiceType(APAdvertiserInfoRef, APSNANServiceType, CFDataRef *)", v2, "Failed to add DeviceID, which is required. Can't create AirPlay data.\n");
    }
  }

  return result;
}

uint64_t APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = "yes";
  if (!a1)
  {
    v2 = "no";
  }

  return LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(APAdvertiserInfoRef, APAdvertiserInfoDeviceIDType, APSNANServiceType, CFDataRef *)", 33554462, "[%{ptr}] CorrelationID requested. Available: %s\n", a2, v2);
}

uint64_t APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_3()
{
  OUTLINED_FUNCTION_2_5();
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1 || (result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo), result))
    {
      result = OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(APAdvertiserInfoRef, APAdvertiserInfoDeviceIDType, APSNANServiceType, CFDataRef *)", v3, "Failed to add DeviceID, which is required. Can't create AirPlay data.\n");
    }
  }

  *v0 = v1;
  return result;
}

uint64_t APAdvertiserInfoCopyRAOPData_cold_10(uint64_t a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1)
    {
      return OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyRAOPData(APAdvertiserInfoRef, CFDataRef *)", v2, "Failed to add TransportTypes, which is required. Can't create RAOP data.\n");
    }

    result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo);
    if (result)
    {
      return OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyRAOPData(APAdvertiserInfoRef, CFDataRef *)", v2, "Failed to add TransportTypes, which is required. Can't create RAOP data.\n");
    }
  }

  return result;
}

uint64_t APAdvertiserInfoCopyRAOPData_cold_11(uint64_t a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40)
  {
    if (gLogCategory_APAdvertiserInfo != -1)
    {
      return OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyRAOPData(APAdvertiserInfoRef, CFDataRef *)", v2, "Failed to add AirTunesProtocolVersion, which is required. Can't create RAOP data.\n");
    }

    result = OUTLINED_FUNCTION_7(&gLogCategory_APAdvertiserInfo);
    if (result)
    {
      return OUTLINED_FUNCTION_11(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCopyRAOPData(APAdvertiserInfoRef, CFDataRef *)", v2, "Failed to add AirTunesProtocolVersion, which is required. Can't create RAOP data.\n");
    }
  }

  return result;
}

void APAdvertiserInfoCreateRAOPServiceName_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

void APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx_cold_3(uint64_t a1, const void *a2)
{
  APSLogErrorAt();
  if (a2)
  {
    CFRelease(a2);
  }
}

void _APBonjourBrowserHandleAirPlayPartialEvent(int a1, uint64_t a2, _WORD *a3)
{
  if (a3)
  {
    v5 = a2;
    switch(a1)
    {
      case 1:
        if (a3[20])
        {
          v6 = OUTLINED_FUNCTION_18();
          if (_APBonjourBrowserHandleDeviceEvent(v6, v7, v8, v9))
          {
            goto LABEL_28;
          }
        }

        break;
      case 2:
        if (a3[20])
        {
          v11 = OUTLINED_FUNCTION_19();
          if (_APBonjourBrowserHandleDeviceEvent(v11, v12, v13, v14))
          {
            goto LABEL_28;
          }
        }

        break;
      case 3:
        if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser)))
        {
          OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayPartialEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", v5, "AirPlayP2P BonjourBrowser stopped.\n");
        }

        if (_APBonjourBrowserHandleStopEvent(a3))
        {
          goto LABEL_28;
        }

        CFRelease(a3);
        break;
      case 4:
        if (gLogCategory_APBonjourBrowser <= 60)
        {
          OUTLINED_FUNCTION_5_6();
          if (!v10 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayPartialEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", (a1 + 20), "AirPlayP2P BonjourBrowser restarted.\n");
          }
        }

        if (_APBonjourBrowserHandleRestartedEvent(a3, @"AirPlayPartial"))
        {
          goto LABEL_28;
        }

        break;
      default:
        if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayPartialEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", 33554522, "Unrecognized AirPlay event %d\n", a1);
        }

        break;
    }
  }

  else
  {
LABEL_28:

    APSLogErrorAt();
  }
}

void _APBonjourBrowserHandleAirPlayNANEvent(uint64_t a1, const __CFDictionary *a2, _WORD *a3)
{
  if (!a3)
  {
LABEL_32:

    APSLogErrorAt();
    return;
  }

  if ((a1 - 1) < 2)
  {
    if (a3[20])
    {
      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      CFArrayGetTypeID();
      v9 = CFDictionaryGetTypedValue();
      if (TypedValue)
      {
        Count = CFArrayGetCount(TypedValue);
        if (Count >= 1)
        {
          v11 = Count;
          for (i = 0; i != v11; ++i)
          {
            CFArrayGetValueAtIndex(TypedValue, i);
            v13 = OUTLINED_FUNCTION_18();
            _APBonjourBrowserHandleDeviceEventForAirPlayNANService(v13, v14, a2, v15);
          }
        }
      }

      if (v9)
      {
        v16 = CFArrayGetCount(v9);
        if (v16 >= 1)
        {
          v17 = v16;
          for (j = 0; j != v17; ++j)
          {
            CFArrayGetValueAtIndex(v9, j);
            v19 = OUTLINED_FUNCTION_19();
            _APBonjourBrowserHandleDeviceEventForAirPlayNANService(v19, v20, a2, v21);
          }
        }
      }
    }
  }

  else if (a1 == 3)
  {
    if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser)))
    {
      OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayNANEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", a3, "[%{ptr}] AirPlayNAN BonjourBrowser stopped.\n");
    }

    v22 = _APBonjourBrowserHandleStopEvent(a3);
    CFRelease(a3);
    if (v22)
    {
      goto LABEL_32;
    }
  }

  else if (a1 == 4)
  {
    if (gLogCategory_APBonjourBrowser <= 60)
    {
      OUTLINED_FUNCTION_5_6();
      if (!v6 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayNANEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", (v3 + 20), "[%{ptr}] AirPlayNAN BonjourBrowser restarted.\n", a3);
      }
    }

    if (_APBonjourBrowserHandleRestartedEvent(a3, @"AirPlayNAN"))
    {
      goto LABEL_32;
    }
  }

  else if (gLogCategory_APBonjourBrowser <= 90)
  {
    OUTLINED_FUNCTION_5_6();
    if (!v6 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayNANEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", (v3 + 50), "[%{ptr}] Unrecognized AirPlayNAN event %d\n", a3, a1);
    }
  }
}

void _APBonjourBrowserInvalidate(_DWORD *a1)
{
  v2 = *a1;
  if (*(*a1 + 32))
  {
    do
    {
      OUTLINED_FUNCTION_14_1();
    }

    while (v3);
    if (!*(v2 + 211))
    {
      OUTLINED_FUNCTION_16();
      if (!v5)
      {
        goto LABEL_8;
      }
    }

LABEL_4:
    v4 = 0;
    goto LABEL_10;
  }

  if (*(v2 + 211))
  {
    goto LABEL_4;
  }

LABEL_8:
  v6 = OUTLINED_FUNCTION_1_7();
  v7 = v6;
  if (!v6)
  {
    APSLogErrorAt();
    v4 = -72210;
    goto LABEL_11;
  }

  *v6 = 2;
  v4 = _APBonjourBrowserEnqueueOperation(v2, v6);
  if (v4)
  {
    APSLogErrorAt();
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  _APBonjourBrowserOperationDisposeNullSafe(v7);
  a1[2] = v4;
}

uint64_t *_APBonjourBrowserGetMode(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 32);
  if (v2)
  {
    v3 = *(*result + 32);
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    if (!*(v1 + 211) && *v4 != 2)
    {
      *(result + 4) = *(v1 + 40);
      do
      {
        if (!*v2)
        {
          *(result + 4) = *(v2 + 8);
        }

        v2 = *(v2 + 24);
      }

      while (v2);
    }
  }

  else if (!*(v1 + 211))
  {
    *(result + 4) = *(v1 + 40);
  }

  *(result + 3) = 0;
  return result;
}

void __APBonjourBrowserSetWiFiSystemReady_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    if (*(v2 + 211) || *v4 == 2)
    {
      goto LABEL_14;
    }
  }

  else if (*(v2 + 211))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (!*(v2 + 216))
  {
    APSLogErrorAt();
    v7 = 0;
    OUTLINED_FUNCTION_3_6();
LABEL_20:
    *(v11 + 24) = v12;
    goto LABEL_15;
  }

  v5 = OUTLINED_FUNCTION_1_7();
  v7 = v5;
  if (!v5)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_3_6();
    v12 = v13 + 1;
    goto LABEL_20;
  }

  *v5 = 3;
  if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "OSStatus APBonjourBrowserSetWiFiSystemReady(APBonjourBrowserRef)_block_invoke", v6, "[%{ptr}] Enqueueing WiFi system ready event\n");
  }

  _APBonjourBrowserEnqueueOperation(*(a1 + 40), v7);
  OUTLINED_FUNCTION_8_1();
  *(v9 + 24) = v8;
  OUTLINED_FUNCTION_8_1();
  if (!*(v10 + 24))
  {
    goto LABEL_14;
  }

  APSLogErrorAt();
LABEL_15:

  _APBonjourBrowserOperationDisposeNullSafe(v7);
}

void __APBonjourBrowserSetAWDLSystemReady_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    if (*(v2 + 211) || *v4 == 2)
    {
      goto LABEL_14;
    }
  }

  else if (*(v2 + 211))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (!*(v2 + 216))
  {
    APSLogErrorAt();
    v7 = 0;
    OUTLINED_FUNCTION_3_6();
LABEL_20:
    *(v11 + 24) = v12;
    goto LABEL_15;
  }

  v5 = OUTLINED_FUNCTION_1_7();
  v7 = v5;
  if (!v5)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_3_6();
    v12 = v13 + 1;
    goto LABEL_20;
  }

  *v5 = 4;
  if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "OSStatus APBonjourBrowserSetAWDLSystemReady(APBonjourBrowserRef)_block_invoke", v6, "[%{ptr}] Enqueueing AWDL system ready event\n");
  }

  _APBonjourBrowserEnqueueOperation(*(a1 + 40), v7);
  OUTLINED_FUNCTION_8_1();
  *(v9 + 24) = v8;
  OUTLINED_FUNCTION_8_1();
  if (!*(v10 + 24))
  {
    goto LABEL_14;
  }

  APSLogErrorAt();
LABEL_15:

  _APBonjourBrowserOperationDisposeNullSafe(v7);
}

uint64_t *_APBonjourBrowserSetEventHandler(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  v3 = *(result + 1);
  v4 = *(*result + 32);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 24);
    }

    while (v4);
    if (!*(v2 + 211) && *v5 != 2)
    {
      goto LABEL_8;
    }

LABEL_4:
    v6 = 0;
    goto LABEL_14;
  }

  if (*(v2 + 211))
  {
    goto LABEL_4;
  }

LABEL_8:
  v7 = *(v2 + 216);
  if (v7)
  {
    v8 = v7 == v3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v6 = 0;
    *(v2 + 216) = v3;
  }

  else
  {
    result = APSLogErrorAt();
    v6 = -72211;
  }

LABEL_14:
  *(v1 + 24) = v6;
  return result;
}

void _APBonjourBrowserReconfirmDevice(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (*(*a1 + 32))
  {
    do
    {
      OUTLINED_FUNCTION_14_1();
    }

    while (v6);
    if (*(v4 + 211))
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_16();
    if (v7)
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 211))
  {
    goto LABEL_37;
  }

  if (!v3 || !v5)
  {
    goto LABEL_39;
  }

  if (!*(v4 + 40))
  {
    APSLogErrorAt();
    v1 = -72213;
    goto LABEL_38;
  }

  Value = CFDictionaryGetValue(v3, @"name");
  if (!Value)
  {
    APSLogErrorAt();
    v1 = -72212;
    goto LABEL_38;
  }

  v1 = Value;
  if (CFEqual(v5, *(v4 + 80)))
  {
    BonjourBrowser_ReconfirmDeviceEx();
    if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser)))
    {
      OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserReconfirmDevice(void *)", v9, "[%{ptr}] Reconfirming airplay services for device with name %@\n");
    }

    if (!*(v4 + 104))
    {
      goto LABEL_37;
    }

    BonjourBrowser_ReconfirmDeviceEx();
    if (gLogCategory_APBonjourBrowser > 40 || gLogCategory_APBonjourBrowser == -1 && !OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser))
    {
      goto LABEL_37;
    }

    v11 = "[%{ptr}] Reconfirming alt airplay services for device with name %@\n";
LABEL_31:
    OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserReconfirmDevice(void *)", v10, v11);
    goto LABEL_37;
  }

  if (CFStringHasPrefix(v5, @"AirPlayNAN"))
  {
    if (*(v4 + 176))
    {
      BonjourBrowser_ReconfirmDeviceEx();
      if (gLogCategory_APBonjourBrowser > 40 || gLogCategory_APBonjourBrowser == -1 && !OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser))
      {
        goto LABEL_37;
      }

      v11 = "[%{ptr}] Reconfirming AirPlayNAN service for device with name %@\n";
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (CFEqual(v5, @"RAOP"))
  {
    if (*(v4 + 114))
    {
      BonjourBrowser_ReconfirmDeviceEx();
      if (gLogCategory_APBonjourBrowser > 40 || gLogCategory_APBonjourBrowser == -1 && !OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser))
      {
        goto LABEL_37;
      }

      v11 = "[%{ptr}] Reconfirming RAOP service for device with name %@\n";
      goto LABEL_31;
    }

LABEL_39:
    OUTLINED_FUNCTION_13_3();
    APSLogErrorAt();
    goto LABEL_38;
  }

LABEL_37:
  v1 = 0;
LABEL_38:
  *(a1 + 8) = v1;
}

void _APBonjourBrowserTickleDetailedMode(_DWORD *a1, uint64_t a2)
{
  v3 = *a1;
  if (!*(*a1 + 32))
  {
    if (!*(v3 + 211))
    {
      goto LABEL_8;
    }

LABEL_4:
    v5 = 0;
    goto LABEL_37;
  }

  do
  {
    OUTLINED_FUNCTION_14_1();
  }

  while (v4);
  if (*(v3 + 211))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_16();
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_8:
  if (*(v3 + 40) != 2)
  {
    APSLogErrorAt();
    v5 = -72213;
    goto LABEL_37;
  }

  if (APSIsAPMSpeaker() || !*(v3 + 57))
  {
    goto LABEL_4;
  }

  *&v14.sa_len = 0;
  *&v14.sa_data[6] = 0;
  v16 = 0;
  v15 = 0;
  v7 = socket(30, 2, 0);
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  if (!*__error())
  {
    v5 = -6700;
    goto LABEL_28;
  }

  v5 = *__error();
  if (v5)
  {
LABEL_28:
    APSLogErrorAt();
LABEL_29:
    APSLogErrorAt();
    goto LABEL_37;
  }

LABEL_14:
  v17 = if_nametoindex("awdl0");
  if (!v17)
  {
    APSLogErrorAt();
    v5 = -72214;
    goto LABEL_32;
  }

  v8 = StringToSockAddr("[ff02::1%awdl0]:1", v13);
  if (v8)
  {
    v5 = v8;
LABEL_45:
    APSLogErrorAt();
    goto LABEL_32;
  }

  v9 = setsockopt(v7, 41, 125, &v17, 4u);
  if (v9)
  {
    v5 = v9;
    goto LABEL_45;
  }

  SocketSetP2P();
  v10 = SocketSetNonBlocking();
  if (v10)
  {
    v5 = v10;
    goto LABEL_45;
  }

  if (sendto(v7, "dummy", 6uLL, 0, &v14, 0x1Cu) == 6 || *__error() && !*__error())
  {
    if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser)))
    {
      OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserTickleAWDLSolo(APBonjourBrowserRef)", v11, "Sent a dummy packet to make sure AWDL is not stuck in QUIET\n");
    }

    v5 = 0;
  }

  else
  {
    v5 = -72215;
    APSLogErrorAt();
    if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
    {
      v12 = __error();
      LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserTickleAWDLSolo(APBonjourBrowserRef)", 33554522, "Failed to tickle AWDL [errno = %d]", *v12);
    }
  }

LABEL_32:
  if ((v7 & 0x80000000) == 0 && close(v7) && *__error())
  {
    __error();
  }

  if (v5)
  {
    goto LABEL_29;
  }

LABEL_37:
  a1[2] = v5;
}

CFStringRef _APBonjourBrowserCopyInterfaceName(CFStringRef result)
{
  v1 = result;
  isa = result->isa;
  v3 = *(result->isa + 4);
  if (v3)
  {
    v4 = *(result->isa + 4);
    do
    {
      v5 = v4;
      v4 = *(v4 + 24);
    }

    while (v4);
    if (!*(isa + 211) && *v5 != 2)
    {
      v6 = *(isa + 6);
      do
      {
        if (*v3 == 1)
        {
          v6 = *(v3 + 8);
        }

        v3 = *(v3 + 24);
      }

      while (v3);
      if (v6)
      {
LABEL_11:
        result = CFStringCreateCopy(*MEMORY[0x277CBECE8], v6);
        *v1->info = result;
        if (!*v1->info)
        {
          result = APSLogErrorAt();
          v7 = -72210;
          goto LABEL_16;
        }

        goto LABEL_12;
      }

LABEL_15:
      v7 = 0;
      *result->info = 0;
      goto LABEL_16;
    }
  }

  else if (!*(isa + 211))
  {
    v6 = *(isa + 6);
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = 0;
LABEL_16:
  LODWORD(v1->data) = v7;
  return result;
}

void _APBonjourBrowserSetInterfaceName(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*(v3 + 32))
  {
    do
    {
      OUTLINED_FUNCTION_14_1();
    }

    while (v4);
    if (!*(v3 + 211))
    {
      OUTLINED_FUNCTION_16();
      if (!v7)
      {
        goto LABEL_8;
      }
    }

LABEL_4:
    v5 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  if (*(v3 + 211))
  {
    goto LABEL_4;
  }

LABEL_8:
  if (v2)
  {
    if (!CFStringGetLength(v2))
    {
      APSLogErrorAt();
      v5 = 0;
      v6 = -72211;
      goto LABEL_16;
    }

    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 8));
    if (!Copy)
    {
      v6 = -72210;
      APSLogErrorAt();
LABEL_15:
      v5 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    Copy = 0;
  }

  v9 = OUTLINED_FUNCTION_1_7();
  v5 = v9;
  if (v9)
  {
    *v9 = 1;
    v9[1] = Copy;
    v6 = _APBonjourBrowserEnqueueOperation(v3, v9);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = -72210;
  }

  APSLogErrorAt();
  if (Copy)
  {
    CFRetain(Copy);
  }

LABEL_16:
  _APBonjourBrowserOperationDisposeNullSafe(v5);
  *(a1 + 16) = v6;
}

void _APBonjourBrowserHandleDeviceEventForAirPlayNANService(_BYTE *a1, unsigned int a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v58 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_5();
  if (v11 ^ v12 | v10 && (v9 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
  {
    v13 = "remove";
    if (!a2)
    {
      v13 = "add";
    }

    v53 = v13;
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleDeviceEventForAirPlayNANService(APBonjourBrowserRef, APBonjourBrowserEventType, CFDictionaryRef, CFDictionaryRef)", v8, "[%{ptr}] AirPlayNAN conversion beginning for %s");
  }

  v14 = IsAppleInternalBuild();
  v15 = MEMORY[0x277CBECE8];
  if (!v14)
  {
    goto LABEL_31;
  }

  v55 = 0;
  bzero(v57, 0x400uLL);
  bzero(bytes, 0x200uLL);
  length = 0;
  if (!IsAppleInternalBuild() || (DeviceID = BonjourDevice_GetDeviceID()) == 0)
  {
LABEL_101:
    APSLogErrorAt();
    goto LABEL_31;
  }

  if (DeviceID != APSSettingsGetInt64() || !APSSettingsGetCString())
  {
LABEL_31:
    Value = CFDictionaryGetValue(a4, @"nanEP");
    if (!Value)
    {
      return;
    }

    v26 = [Value customData];
    if (!v26)
    {
      return;
    }

    v22 = CFRetain(v26);
    if (!v22)
    {
      return;
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_4_5();
  if (v11 ^ v12 | v10 && (v18 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "CFDataRef _APBonjourBrowserCreateBinaryTXTRecordFromPrefs(CFDictionaryRef)", v17, "Hex data text: %s\n");
  }

  v55 = HexToData();
  if (v55)
  {
    v55 = -6705;
    if (gLogCategory_APBonjourBrowser <= 90)
    {
      if (gLogCategory_APBonjourBrowser == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_31;
        }

        v52 = v55;
      }

      else
      {
        v52 = 4294960591;
      }

      LogPrintF(&gLogCategory_APBonjourBrowser, "CFDataRef _APBonjourBrowserCreateBinaryTXTRecordFromPrefs(CFDictionaryRef)", 33554522, "Error converting hex: %#m\n", v52, v53);
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_4_5();
  if (v11 ^ v12 | v10 && (v20 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "CFDataRef _APBonjourBrowserCreateBinaryTXTRecordFromPrefs(CFDictionaryRef)", v19, "Hex data: %d bytes: %H\n");
  }

  v21 = CFDataCreate(*v15, bytes, length);
  if (!v21)
  {
    goto LABEL_101;
  }

  v22 = v21;
  OUTLINED_FUNCTION_4_5();
  if (v11 ^ v12 | v10 && (v24 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "CFDataRef _APBonjourBrowserCreateBinaryTXTRecordFromPrefs(CFDictionaryRef)", v23, "Hex data as data: %@\n");
  }

  OUTLINED_FUNCTION_4_5();
  if (v11 ^ v12 | v10)
  {
    if (v30 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "CFDataRef _APBonjourBrowserCopyServiceBinaryTXTRecord(CFDictionaryRef, CFDictionaryRef)", v29, "NAN _airplay found binary TXT record data in prefs");
    }

LABEL_34:
    OUTLINED_FUNCTION_4_5();
    if (v11 ^ v12 | v10 && (v28 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleDeviceEventForAirPlayNANService(APBonjourBrowserRef, APBonjourBrowserEventType, CFDictionaryRef, CFDictionaryRef)", v27, "[%{ptr}] AirPlayNAN conversion found binary TXT record");
    }
  }

  TXTRecordFromBinaryTXTRecord = CreateTXTRecordFromBinaryTXTRecord();
  OUTLINED_FUNCTION_4_5();
  if (v11 ^ v12 | v10 && (v33 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleDeviceEventForAirPlayNANService(APBonjourBrowserRef, APBonjourBrowserEventType, CFDictionaryRef, CFDictionaryRef)", v32, "[%{ptr}] AirPlayNAN conversion converted binary TXT record");
  }

  *bytes = a4;
  LOBYTE(length) = 0;
  bzero(v57, 0x100uLL);
  v34 = *v15;
  MutableCopy = CFDictionaryCreateMutableCopy(*v15, 0, a3);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    goto LABEL_75;
  }

  v36 = CFArrayCreate(v34, bytes, 1, MEMORY[0x277CBF128]);
  if (!v36)
  {
    APSLogErrorAt();
LABEL_94:
    CFRelease(MutableCopy);
    MutableCopy = 0;
    goto LABEL_75;
  }

  v37 = v36;
  if (a2)
  {
    v38 = @"removedServices";
  }

  else
  {
    v38 = @"services";
  }

  if (a2)
  {
    v39 = @"services";
  }

  else
  {
    v39 = @"removedServices";
  }

  CFDictionarySetValue(MutableCopy, v38, v36);
  CFDictionaryRemoveValue(MutableCopy, v39);
  CFDictionaryGetCString();
  v40 = CFDataGetLength(TXTRecordFromBinaryTXTRecord);
  BytePtr = CFDataGetBytePtr(TXTRecordFromBinaryTXTRecord);
  if (!TXTRecordGetValuePtr(v40, BytePtr, "deviceid", &length))
  {
    APSLogErrorAt();
    CFRelease(v37);
    goto LABEL_94;
  }

  if (strncmpx())
  {
    OUTLINED_FUNCTION_4_5();
    if (v11 ^ v12 | v10 && (v43 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "CFDictionaryRef _APBonjourBrowserCreateDeviceInfoWithAirPlayNANInfo(APBonjourBrowserRef, APBonjourBrowserEventType, CFDictionaryRef, CFDictionaryRef, CFDataRef)", v42, "[%{ptr}] Device ID mismatch: Bonjour (%s) vs TXTRecord (%.*s). Will use TXTRecord deviceID.\n");
    }

    CFDictionarySetCString();
  }

  v44 = CFDataGetLength(TXTRecordFromBinaryTXTRecord);
  v45 = CFDataGetBytePtr(TXTRecordFromBinaryTXTRecord);
  if (TXTRecordContainsKey(v44, v45, "model"))
  {
    v46 = @"AirPlayNANFull";
  }

  else
  {
    v46 = @"AirPlayNANFull";
    if (!TXTRecordContainsKey(v44, v45, "serialNumber") && !TXTRecordContainsKey(v44, v45, "psi"))
    {
      v46 = @"AirPlayNANPartial";
    }
  }

  CFDictionarySetValue(MutableCopy, @"serviceType", v46);
  CFDictionarySetValue(MutableCopy, @"txt", TXTRecordFromBinaryTXTRecord);
  OUTLINED_FUNCTION_4_5();
  if (v11 ^ v12 | v10 && (v48 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "CFDictionaryRef _APBonjourBrowserCreateDeviceInfoWithAirPlayNANInfo(APBonjourBrowserRef, APBonjourBrowserEventType, CFDictionaryRef, CFDictionaryRef, CFDataRef)", v47, "[%{ptr}] Injecting bonjourInfo: %@\n");
  }

  CFRelease(v37);
LABEL_75:
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  OUTLINED_FUNCTION_4_5();
  if (v11 ^ v12 | v10 && (v51 != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
  {
    OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleDeviceEventForAirPlayNANService(APBonjourBrowserRef, APBonjourBrowserEventType, CFDictionaryRef, CFDictionaryRef)", v50, "[%{ptr}] AirPlayNAN (%@) conversion successful");
  }

  if (_APBonjourBrowserHandleDeviceEvent(a1, a2, MutableCopy, TypedValue))
  {
    APSLogErrorAt();
    if (!MutableCopy)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  if (MutableCopy)
  {
LABEL_82:
    CFRelease(MutableCopy);
  }

LABEL_83:
  if (TXTRecordFromBinaryTXTRecord)
  {
    CFRelease(TXTRecordFromBinaryTXTRecord);
  }

  CFRelease(v22);
}

uint64_t _APBonjourBrowserProcessOperationQueue_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_22(a1);
  OUTLINED_FUNCTION_6_7();
  return OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserProcessOperationQueue(APBonjourBrowserRef)", v1, "[%{ptr}] Status before mode change: %s %s %s\n");
}

uint64_t _APBonjourBrowserProcessOperationQueue_cold_3(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_22(a1);
  OUTLINED_FUNCTION_6_7();
  return OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserProcessOperationQueue(APBonjourBrowserRef)", v1, "[%{ptr}] New Status: %s %s %s\n");
}

uint64_t _APBonjourBrowserProcessOperationQueue_cold_4()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t _APBonjourBrowserHandleDeviceEvent_cold_2(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  return LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserHandleDeviceEvent(APBonjourBrowserRef, APBonjourBrowserEventType, CFDictionaryRef, CFStringRef)", 33554442, "TXT Record:\n%{txt}\n", BytePtr, Length);
}

uint64_t _APBonjourBrowserHandleDeviceEvent_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72212;
  return result;
}

void udpconnection_offlineContextFinalizer(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      nw_release(v3);
    }

    free(a1);
  }
}

uint64_t udpconnection_SendBatch(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || !a2)
  {
    OUTLINED_FUNCTION_18_0();
    APSLogErrorAt();
    return a1;
  }

  v5 = DerivedStorage;
  if (*DerivedStorage)
  {
    APSLogErrorAt();
    return 4294894970;
  }

  if (CFArrayGetCount(a2) < 1)
  {
    return 0;
  }

  v6 = *(v5 + 48);
  v7 = CMBaseObjectGetDerivedStorage();
  if (v6 == 3)
  {
    if (*(v7 + 144) == 5)
    {
      v8 = *(v7 + 72);
      *(v8 + 72) = mach_absolute_time();
      APSWrapperGetValue();
      if (FigSimpleMutexTryLock())
      {
        udpconnection_sendBatchInternal(a1, a2);
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

  return a1;
}