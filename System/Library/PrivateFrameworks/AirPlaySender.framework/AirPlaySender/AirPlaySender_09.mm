uint64_t sharedMemSink_GetInputFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  v5 = *(DerivedStorage + 24);
  *a2 = *(DerivedStorage + 8);
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  return 0;
}

uint64_t sharedMemSink_SetInputFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage + 48;
  if (a2)
  {
    v4 = a2;
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *(DerivedStorage + 8) = *v4;
  *(DerivedStorage + 24) = v6;
  *(DerivedStorage + 40) = v5;
  return 0;
}

uint64_t sharedMemSink_AcquireBuffer(uint64_t a1, uint64_t *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104))
  {
    sharedMemSink_AcquireBuffer_cold_1();
    return 4294960568;
  }

  v6 = DerivedStorage;
  if (!APSSharedRingBuffer_IsSpaceAvailable())
  {
    sharedMemSink_AcquireBuffer_cold_3();
    return 4294960568;
  }

  v7 = APSSharedRingBuffer_GetWritePointer();
  if (v7)
  {
    v8 = v7;
    result = 0;
    v8 += 4;
    *a2 = v8;
    *a3 = 1440;
    *(v6 + 104) = v8;
  }

  else
  {
    sharedMemSink_AcquireBuffer_cold_2();
    return 4294960587;
  }

  return result;
}

uint64_t sharedMemSink_CommitBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 104);
  if (!v5)
  {
    sharedMemSink_CommitBuffer_cold_4();
    return 4294960591;
  }

  if (v5 != a2)
  {
    sharedMemSink_CommitBuffer_cold_1();
    return 4294960591;
  }

  v6 = DerivedStorage;
  v7 = APSSharedRingBuffer_WriteData();
  if (v7)
  {
    v9 = v7;
    sharedMemSink_CommitBuffer_cold_2(v7);
  }

  else
  {
    v8 = APSSharedRingBuffer_UpdateWriteState();
    v9 = v8;
    if (v8)
    {
      sharedMemSink_CommitBuffer_cold_3(v8);
    }

    else
    {
      *(v6 + 104) = 0;
    }
  }

  return v9;
}

void APDemoManagerStart()
{
  if (_MergedGlobals_6 != -1)
  {
    APDemoManagerStart_cold_1();
  }

  if (qword_280FB1A80)
  {
    v0 = *qword_280FB1A80;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APDemoManagerStart_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = qword_280FB1A80;
    dispatch_async(v0, block);
  }
}

void __APDemoManagerStart_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  sleep(1u);
  CFStringGetTypeID();
  v2 = APSSettingsCopyValueEx();
  *(*(a1 + 32) + 32) = v2;
  v5 = *(a1 + 32);
  memset(&context, 0, sizeof(context));
  v17 = 0;
  if (gLogCategory_APDemoManager <= 50)
  {
    if (gLogCategory_APDemoManager != -1 || (v2 = _LogCategory_Initialize(), v2))
    {
      __APDemoManagerStart_block_invoke_cold_1(v2, v3, v4);
    }
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = *MEMORY[0x277CE1648];
  v8 = *MEMORY[0x277CE1690];
  values = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], @"en[0-9]+", *MEMORY[0x277CE1690]);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v6, v7, @"bridge[0-9]+", v8);
  v9 = CFArrayCreate(v6, &values, 2, MEMORY[0x277CBF128]);
  context.info = v5;
  v10 = SCDynamicStoreCreate(v6, @"APDemoManager", callback_ipAddressChanged, &context);
  v5[5] = v10;
  if (v10)
  {
    if (SCDynamicStoreSetNotificationKeys(v10, 0, v9))
    {
      if (SCDynamicStoreSetDispatchQueue(v5[5], *v5))
      {
        v11 = *v5;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __demoManagerStartLinkDiscovery_block_invoke;
        block[3] = &__block_descriptor_tmp_72;
        block[4] = v5;
        dispatch_async(v11, block);
        goto LABEL_8;
      }

      v12 = 431;
    }

    else
    {
      v12 = 427;
    }
  }

  else
  {
    v12 = 424;
  }

  __APDemoManagerStart_block_invoke_cold_2(v12);
LABEL_8:
  if (values)
  {
    CFRelease(values);
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void APDemoManagerStartWithClientPid(uint64_t a1)
{
  v1 = a1;
  if (IsAppleInternalBuild())
  {
    APDemoManagerStart();
    if (v1)
    {
      if (_MergedGlobals_6 != -1)
      {
        APDemoManagerStart_cold_1();
      }

      if (qword_280FB1A80)
      {
        *(qword_280FB1A80 + 52) = v1;
      }
    }
  }
}

CFTypeRef APDemoManagerCopyDeviceInfo(uint64_t a1)
{
  if (APDemoManagerCopyDeviceInfo_once != -1)
  {
    APDemoManagerCopyDeviceInfo_cold_1();
  }

  result = APDemoManagerCopyDeviceInfo_deviceInfo;
  if (APDemoManagerCopyDeviceInfo_deviceInfo)
  {

    return CFRetain(result);
  }

  return result;
}

void __APDemoManagerCopyDeviceInfo_block_invoke()
{
  if (_MergedGlobals_6 != -1)
  {
    APDemoManagerStart_cold_1();
  }

  if (qword_280FB1A80)
  {
    APDemoManagerCopyDeviceInfo_deviceInfo = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v0 = MGCopyAnswer();
    if (v0)
    {
      v1 = v0;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceUniqueID", v0);
      CFRelease(v1);
    }

    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceColor", v2);
      CFRelease(v3);
    }

    v4 = MGCopyAnswer();
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceEnclosureColor", v4);
      CFRelease(v5);
    }

    v6 = MGCopyAnswer();
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceClass", v6);
      CFRelease(v7);
    }

    v8 = MGCopyAnswer();
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"iOS Build", v8);
      CFRelease(v9);
    }

    if (demoManagerGetModelSpecificName_once != -1)
    {
      __APDemoManagerCopyDeviceInfo_block_invoke_cold_2();
    }

    if (demoManagerGetModelSpecificName_sModelNameStr)
    {
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceModel", demoManagerGetModelSpecificName_sModelNameStr);
    }

    v10 = MGCopyAnswer();
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceCornerRadius", v10);
      CFRelease(v11);
    }

    v12 = MGCopyAnswer();
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceScreenScale", v12);
      CFRelease(v13);
    }

    v14 = MGCopyAnswer();
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceScreenWidth", v14);
      CFRelease(v15);
    }

    v16 = MGCopyAnswer();
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceScreenHeight", v16);
      CFRelease(v17);
    }

    v18 = MGCopyAnswer();
    if (v18)
    {
      v21 = v18;
      CFDictionarySetValue(APDemoManagerCopyDeviceInfo_deviceInfo, @"DeviceMainScreenOrientation", v18);
      CFRelease(v21);
    }

    if (gLogCategory_APDemoManager <= 50)
    {
      if (gLogCategory_APDemoManager != -1 || (v18 = _LogCategory_Initialize(), v18))
      {
        __APDemoManagerCopyDeviceInfo_block_invoke_cold_3(v18, v19, v20);
      }
    }
  }
}

dispatch_queue_t __demoManagerGetShared_block_invoke()
{
  result = APSIsDemoModeEnabled();
  if (result)
  {
    qword_280FB1A80 = malloc_type_calloc(1uLL, 0x38uLL, 0x10600402978B691uLL);
    result = dispatch_queue_create("com.apple.airplay.demomanager", 0);
    v3 = qword_280FB1A80;
    *qword_280FB1A80 = result;
    *(v3 + 52) = 0;
    if (gLogCategory_APDemoManager <= 50)
    {
      if (gLogCategory_APDemoManager != -1)
      {
        return __demoManagerGetShared_block_invoke_cold_1(result, v1, v2);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __demoManagerGetShared_block_invoke_cold_1(result, v1, v2);
      }
    }
  }

  return result;
}

void callback_ipAddressChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APDemoManager <= 50)
  {
    if (gLogCategory_APDemoManager != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      callback_ipAddressChanged_cold_1(a1, a2, a3);
    }
  }

  demoManagerDiscoverLink(a3, a2, a3);
}

void demoManagerDiscoverLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v33 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APDemoManager <= 50)
  {
    if (gLogCategory_APDemoManager != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      demoManagerDiscoverLink_cold_1(a1, a2, a3);
    }
  }

  v31 = 0;
  if (getifaddrs(&v31) < 0)
  {
    v23 = __error();
    if (gLogCategory_APDemoManager > 90)
    {
LABEL_50:
      demoManagerStopEndpointDiscovery(v3, v10, v11);
      v25 = *(v3 + 8);
      if (v25)
      {
        CFRelease(v25);
        *(v3 + 8) = 0;
      }

      return;
    }

    v24 = *v23;
    if (gLogCategory_APDemoManager != -1 || (v9 = _LogCategory_Initialize(), v9))
    {
      v9 = demoManagerDiscoverLink_cold_9(v24);
    }

LABEL_47:
    if (gLogCategory_APDemoManager <= 50)
    {
      if (gLogCategory_APDemoManager != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        demoManagerDiscoverLink_cold_10(v9, v10, v11);
      }
    }

    goto LABEL_50;
  }

  v4 = v31;
  if (!v31)
  {
    v9 = MEMORY[0x223DB2BC0](0);
    goto LABEL_47;
  }

  v5 = *MEMORY[0x277CBECE8];
  do
  {
    ifa_addr = v4->ifa_addr;
    if (ifa_addr)
    {
      if (*(ifa_addr + 1) == 30 && (v4->ifa_flags & 9) == 1 && ((ifa_name = v4->ifa_name, *ifa_name == 101) && ifa_name[1] == 110 || !strncmp(v4->ifa_name, "bridge", 6uLL)))
      {
        v8 = CFStringCreateWithCString(v5, ifa_name, 0x8000100u);
        if (APSIsDirectLinkInterface())
        {
          if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
          {
            demoManagerDiscoverLink_cold_2(&v4->ifa_name, ifa_addr, v32);
          }

          LODWORD(ifa_addr) = 1;
          if (v8)
          {
LABEL_24:
            CFRelease(v8);
          }
        }

        else
        {
          LODWORD(ifa_addr) = 0;
          if (v8)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        LODWORD(ifa_addr) = 0;
      }
    }

    if (ifa_addr)
    {
      break;
    }

    v4 = v4->ifa_next;
  }

  while (v4);
  v9 = MEMORY[0x223DB2BC0](v31);
  if (!ifa_addr)
  {
    goto LABEL_47;
  }

  v12 = v3 + 24;
  if (*(v3 + 24))
  {
    goto LABEL_30;
  }

  v13 = FigRoutingContextCopySystemMirroringContext();
  if (v13)
  {
    v17 = v13;
    demoManagerDiscoverLink_cold_3(v13);
    goto LABEL_61;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v9 = CMNotificationCenterAddListener();
LABEL_30:
  v14 = (v3 + 16);
  if (!*(v3 + 16))
  {
    if (gLogCategory_APDemoManager <= 50)
    {
      if (gLogCategory_APDemoManager != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        demoManagerDiscoverLink_cold_4(v9, v10, v12);
      }
    }

    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    FigCFDictionarySetInt32();
    v16 = FigRouteDiscovererCreate();
    v17 = v16;
    if (v16)
    {
      demoManagerDiscoverLink_cold_5(v16);
      if (Mutable)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v18 = *v14;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v19)
      {
        v19(v18, *MEMORY[0x277D27030], @"APDemoManager");
      }

      if (Mutable)
      {
LABEL_38:
        CFRelease(Mutable);
      }
    }

    if (v17)
    {
      demoManagerDiscoverLink_cold_6(v17);
LABEL_61:
      if (gLogCategory_APDemoManager <= 90 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
      {
        demoManagerDiscoverLink_cold_8(v17, v29, v30);
      }

      demoManagerStopEndpointDiscovery(v3, v29, v30);
      return;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  v20 = CMNotificationCenterAddListener();
  if (*(v3 + 48))
  {
    goto LABEL_41;
  }

  if (gLogCategory_APDemoManager <= 50)
  {
    if (gLogCategory_APDemoManager != -1 || (v20 = _LogCategory_Initialize(), v20))
    {
      demoManagerDiscoverLink_cold_7(v20, v21, v22);
    }
  }

  v26 = *v14;
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v27)
  {
    v17 = 4294954514;
LABEL_60:
    APSLogErrorAt();
    goto LABEL_61;
  }

  v28 = v27(v26, *MEMORY[0x277D27038], *MEMORY[0x277D27008]);
  if (v28)
  {
    v17 = v28;
    goto LABEL_60;
  }

LABEL_41:
  *(v3 + 48) = 1;
  demoManagerActivateEndpointIfNeeded(v3, v21, v22);
}

uint64_t demoManagerStopEndpointDiscovery(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (*(a1 + 16) && *(a1 + 48))
  {
    if (gLogCategory_APDemoManager <= 50)
    {
      if (gLogCategory_APDemoManager != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        demoManagerStopEndpointDiscovery_cold_1(a1, a2, a3);
      }
    }

    v4 = *(v3 + 16);
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(v4, *MEMORY[0x277D27038], *MEMORY[0x277D27018]);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  result = CMNotificationCenterRemoveListener();
  *(v3 + 48) = 0;
  return result;
}

void callback_currentRouteChanged(uint64_t a1, NSObject **a2, uint64_t a3)
{
  if (gLogCategory_APDemoManager <= 50)
  {
    if (gLogCategory_APDemoManager != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      callback_currentRouteChanged_cold_1(a1, a2, a3);
    }
  }

  v4 = *a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __callback_currentRouteChanged_block_invoke;
  block[3] = &__block_descriptor_tmp_84;
  block[4] = a2;
  dispatch_async(v4, block);
}

void callback_availableEndpointsChanged(uint64_t a1, NSObject **a2, uint64_t a3)
{
  if (gLogCategory_APDemoManager <= 50)
  {
    if (gLogCategory_APDemoManager != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      callback_availableEndpointsChanged_cold_1(a1, a2, a3);
    }
  }

  v4 = *a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __callback_availableEndpointsChanged_block_invoke;
  block[3] = &__block_descriptor_tmp_92_0;
  block[4] = a2;
  dispatch_async(v4, block);
}

void demoManagerActivateEndpointIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  theArray = 0;
  v32 = 0;
  cf = 0;
  if (!*(a1 + 16))
  {
    demoManagerActivateEndpointIfNeeded_cold_10();
    goto LABEL_48;
  }

  v3 = a1;
  if (gLogCategory_APDemoManager <= 50)
  {
    if (gLogCategory_APDemoManager != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      demoManagerActivateEndpointIfNeeded_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 16);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v7 = 4294954514;
    goto LABEL_47;
  }

  v6 = *MEMORY[0x277CBECE8];
  v7 = v5(v4, *MEMORY[0x277D27028], *MEMORY[0x277CBECE8], &theArray);
  if (v7)
  {
LABEL_47:
    demoManagerActivateEndpointIfNeeded_cold_9(v7);
    goto LABEL_48;
  }

  if (!theArray)
  {
LABEL_48:
    demoManagerActivateEndpointIfNeeded_cold_12(&v33, v8, v9);
LABEL_49:
    Mutable = v33;
    goto LABEL_55;
  }

  Count = CFArrayGetCount(theArray);
  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    demoManagerActivateEndpointIfNeeded_cold_2(Count, v10, v11);
  }

  if (Count < 1)
  {
    goto LABEL_45;
  }

  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
    if (APSGetFBOPropertyInt64())
    {
      break;
    }

    if (Count == ++v13)
    {
      goto LABEL_45;
    }
  }

  if (!ValueAtIndex)
  {
LABEL_45:
    demoManagerActivateEndpointIfNeeded_cold_11(v3);
    goto LABEL_48;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17)
  {
    v17(CMBaseObject, *MEMORY[0x277CC1450], v6, &v32);
  }

  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    demoManagerActivateEndpointIfNeeded_cold_3(&v32, ValueAtIndex, v16);
  }

  v18 = FigEndpointGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v21)
  {
    v21(v18, *MEMORY[0x277CC1370], v6, &cf);
  }

  if (cf == *MEMORY[0x277CBED28])
  {
    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerActivateEndpointIfNeeded_cold_8(ValueAtIndex, v19, v20);
    }

    demoManagerStopEndpointDiscovery(v3, v19, v20);
    goto LABEL_44;
  }

  if (ValueAtIndex == *(v3 + 8))
  {
    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerActivateEndpointIfNeeded_cold_7(ValueAtIndex, v19, v20);
    }

LABEL_44:
    Mutable = 0;
    goto LABEL_53;
  }

  if (*(v3 + 32))
  {
    if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
    {
      demoManagerActivateEndpointIfNeeded_cold_4(ValueAtIndex, v19, v20);
    }

    v22 = *(v3 + 32);
    v23 = FigEndpointGetCMBaseObject();
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v24)
    {
      v24(v23, *MEMORY[0x277CC1488], v22);
    }
  }

  if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
  {
    demoManagerActivateEndpointIfNeeded_cold_5(ValueAtIndex, v19, v20);
  }

  if (*(v3 + 52))
  {
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    FigCFDictionarySetInt();
  }

  else
  {
    Mutable = 0;
  }

  v26 = *(v3 + 24);
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v27)
  {
    v28 = 4294954514;
    goto LABEL_65;
  }

  v28 = v27(v26, ValueAtIndex, Mutable);
  if (v28)
  {
LABEL_65:
    demoManagerActivateEndpointIfNeeded_cold_6(v28, Mutable, &v33);
    goto LABEL_49;
  }

LABEL_53:
  v29 = *(v3 + 8);
  *(v3 + 8) = ValueAtIndex;
  CFRetain(ValueAtIndex);
  if (v29)
  {
    CFRelease(v29);
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __callback_currentRouteChanged_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v19 = 0;
  v2 = v1[3];
  if (!v2)
  {
    __callback_currentRouteChanged_block_invoke_cold_3();
    goto LABEL_27;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v3)
  {
    v4 = 4294954514;
    goto LABEL_23;
  }

  v4 = v3(v2, &v19);
  if (v4)
  {
LABEL_23:
    __callback_currentRouteChanged_block_invoke_cold_2(v4);
    goto LABEL_27;
  }

  if (v19)
  {
    v7 = APSGetFBOPropertyInt64();
    v8 = v19;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v19 == 0;
    }

    if (!v9)
    {
      CFRelease(v19);
      v8 = 0;
      v19 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v1 + 1;
  v11 = v1[1];
  if (!v11)
  {
    if (v8)
    {
      *v10 = v8;
      CFRetain(v8);
      if (gLogCategory_APDemoManager <= 50 && (gLogCategory_APDemoManager != -1 || _LogCategory_Initialize()))
      {
        __callback_currentRouteChanged_block_invoke_cold_1((v1 + 1), v5, v6);
      }

      goto LABEL_30;
    }

LABEL_27:
    demoManagerStopEndpointDiscovery(v1, v5, v6);
    v14 = v1[1];
    if (v14)
    {
      CFRelease(v14);
      v1[1] = 0;
    }

    v15 = *v1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __demoManagerCheckCurrentRoute_block_invoke;
    block[3] = &__block_descriptor_tmp_89;
    block[4] = v1;
    dispatch_async(v15, block);
    goto LABEL_35;
  }

  if (gLogCategory_APDemoManager > 50)
  {
    goto LABEL_25;
  }

  v12 = v1[1];
  if (gLogCategory_APDemoManager == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_25;
    }

    v12 = *v10;
  }

  v13 = "de";
  if (v8 == v11)
  {
    v13 = "";
  }

  LogPrintF(&gLogCategory_APDemoManager, "void demoManagerCheckCurrentRoute(APDemoManager *)", 33554482, "Demo endpoint %{ptr} %sactivated\n", v12, v13);
LABEL_25:
  if (v8 != v11)
  {
    usleep(0x186A0u);
    goto LABEL_27;
  }

LABEL_30:
  demoManagerStopEndpointDiscovery(v1, v5, v6);
  v16 = v19;
  if (!v19 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v16 = 0;
  }

  v17 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v17)
  {
    v17(v16, @"CreateAPDemoHIDChannel", 0, 0, 0);
  }

LABEL_35:
  if (v19)
  {
    CFRelease(v19);
  }
}

uint64_t __demoManagerGetModelSpecificName_block_invoke()
{
  result = CelestialGetModelSpecificName();
  demoManagerGetModelSpecificName_sModelNameStr = result;
  return result;
}

uint64_t APEndpointRemoteControlSessionCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, CFDictionaryRef theDict, uint64_t a5, CFTypeRef *a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  *label = 0u;
  v43 = 0u;
  if (!a2)
  {
    APEndpointRemoteControlSessionCreate_cold_13();
    return 4294949866;
  }

  if (!a3)
  {
    APEndpointRemoteControlSessionCreate_cold_12();
    return 4294949866;
  }

  if (!theDict)
  {
    APEndpointRemoteControlSessionCreate_cold_11();
    return 4294949866;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CC1618]);
  if (!Value)
  {
    APEndpointRemoteControlSessionCreate_cold_10();
    return 4294949866;
  }

  v13 = Value;
  v40 = a5;
  v14 = CFDictionaryGetValue(theDict, *MEMORY[0x277CC1620]);
  v15 = CFDictionaryGetValue(theDict, *MEMORY[0x277CC0B30]);
  Int64 = CFDictionaryGetInt64();
  FigEndpointRemoteControlSessionGetClassID();
  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    v37 = v17;
    APEndpointRemoteControlSessionCreate_cold_1(v17);
  }

  else
  {
    v39 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    add = atomic_fetch_add(APEndpointRemoteControlSessionCreate_sSessionCounter, 1u);
    if (v15)
    {
      v20 = CFRetain(v15);
      *DerivedStorage = v20;
      if (!v20)
      {
        APEndpointRemoteControlSessionCreate_cold_2();
        return 4294949865;
      }
    }

    else
    {
      v21 = CFStringCreateWithFormat(a1, 0, @"%@-RCS-%d", a3, add + 1);
      *DerivedStorage = v21;
      if (!v21)
      {
        APEndpointRemoteControlSessionCreate_cold_9();
        return 4294949865;
      }
    }

    *(DerivedStorage + 8) = CFDictionaryGetInt64() != 0;
    *(DerivedStorage + 9) = CFDictionaryGetInt64() != 0;
    *(DerivedStorage + 10) = CFDictionaryGetInt64() != 0;
    v22 = CFDictionaryGetInt64() != 0;
    *(DerivedStorage + 104) = 50;
    *(DerivedStorage + 11) = v22;
    FigCFDictionaryGetInt32IfPresent();
    v23 = FigSimpleMutexCreate();
    *(DerivedStorage + 112) = v23;
    if (!v23)
    {
      APEndpointRemoteControlSessionCreate_cold_8();
      return 4294949865;
    }

    SNPrintF(v41, 64, "APEndpointRemoteControlSession.%{ptr}", 0);
    *(DerivedStorage + 80) = os_transaction_create();
    SNPrintF(label, 64, "APEndpointRemoteControlSession.%{ptr}.network", 0);
    v24 = dispatch_queue_create(label, 0);
    *(DerivedStorage + 160) = v24;
    if (!v24)
    {
      APEndpointRemoteControlSessionCreate_cold_7();
      return 4294949865;
    }

    SNPrintF(label, 64, "APEndpointRemoteControlSession.%{ptr}.notification", 0);
    v25 = dispatch_queue_create(label, 0);
    *(DerivedStorage + 24) = v25;
    if (!v25)
    {
      APEndpointRemoteControlSessionCreate_cold_6();
      return 4294949865;
    }

    SNPrintF(label, 64, "APEndpointRemoteControlSession.%{ptr}.teardownQueue", 0);
    v26 = dispatch_queue_create(label, 0);
    *(DerivedStorage + 32) = v26;
    if (!v26)
    {
      APEndpointRemoteControlSessionCreate_cold_5();
      return 4294949865;
    }

    *(DerivedStorage + 40) = CFRetain(v13);
    if (v14)
    {
      *(DerivedStorage + 48) = CFRetain(v14);
    }

    else
    {
      v27 = *MEMORY[0x277CBECE8];
      v28 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
      if (v28)
      {
        v29 = v28;
        *(DerivedStorage + 48) = CFUUIDCreateString(v27, v28);
        CFRelease(v29);
      }
    }

    if (!*(DerivedStorage + 48))
    {
      APEndpointRemoteControlSessionCreate_cold_4();
      return 4294949865;
    }

    *(DerivedStorage + 56) = v40;
    *(DerivedStorage + 16) = CFRetain(a2);
    *(DerivedStorage + 120) = 0;
    if (Int64 && (*(DerivedStorage + 168) = Int64, v30 = apEndpointRemoteControlSession_ensureAndCopyTransportStreams(0, 0), v30))
    {
      v37 = v30;
      APEndpointRemoteControlSessionCreate_cold_3(v30);
    }

    else
    {
      *(DerivedStorage + 64) = 0;
      FigCFDictionaryGetInt64IfPresent();
      *(DerivedStorage + 72) = 0;
      FigCFDictionaryGetInt32IfPresent();
      if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        v31 = *DerivedStorage;
        v32 = *(DerivedStorage + 8);
        v33 = *(DerivedStorage + 9);
        v34 = *(DerivedStorage + 10);
        v35 = *(DerivedStorage + 48);
        if (IsAppleInternalBuild())
        {
          v36 = *(DerivedStorage + 40);
        }

        else
        {
          v36 = @"(-)";
        }

        LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus APEndpointRemoteControlSessionCreate(CFAllocatorRef, APSenderSessionRef, CFStringRef, CFDictionaryRef, FigEndpointCommChannelCreationOptionControlType, FigEndpointRemoteControlSessionRef *)", 33554482, "[%{ptr}] RCS %@ created (wds=%d, sendMessageWithoutReply=%d, sendMessageAsIs=%d, clientUUID=%@, clientTypeUUID=%@, streamQoS=%d, streamThreadPriority=%u, messagingLogLevel=%d).\n", 0, v31, v32, v33, v34, v35, v36, *(DerivedStorage + 64), *(DerivedStorage + 72), *(DerivedStorage + 104));
      }

      v37 = 0;
      *v39 = 0;
    }
  }

  return v37;
}

uint64_t apEndpointRemoteControlSession_ensureAndCopyTransportStreams(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    FigSimpleMutexUnlock();
    return 4294949864;
  }

  v6 = *(DerivedStorage + 144);
  if (v6)
  {
    v7 = CFRetain(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(DerivedStorage + 152);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  FigSimpleMutexUnlock();
  if (v7)
  {
    goto LABEL_158;
  }

  v87 = 0;
  v10 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v86 = 0;
  v11 = *(v10 + 168);
  v83 = 0;
  v84 = 0;
  if (apEndpointRemoteControlSession_isInvalidated(a1))
  {
    v7 = 0;
    v26 = 0;
    v43 = 0;
    v35 = 0;
    v17 = 0;
    v87 = -17432;
    goto LABEL_135;
  }

  if (*(v10 + 168))
  {
    v82 = 0;
    v14 = 0;
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_1(a1, v12, v13);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v26 = Mutable;
  if (!Mutable)
  {
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_14(&v87);
    goto LABEL_98;
  }

  CFDictionarySetValue(Mutable, @"clientTypeUUID", *(v10 + 40));
  CFDictionarySetValue(v26, @"clientUUID", *(v10 + 48));
  CFDictionarySetValue(v26, @"channelID", *v10);
  CFDictionarySetInt64();
  v27 = MEMORY[0x277CBED28];
  if (*(v10 + 8))
  {
    CFDictionarySetValue(v26, @"wantsDedicatedSocket", *MEMORY[0x277CBED28]);
    v28 = RandomBytes();
    v87 = v28;
    if (v28)
    {
      apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_2(v28);
      goto LABEL_98;
    }

    CFDictionarySetInt64();
  }

  if (*(v10 + 10))
  {
    CFDictionarySetValue(v26, @"sendMessageAsIs", *v27);
  }

  v29 = *(v10 + 16);
  v30 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v30)
  {
    v31 = 4294954514;
    v87 = -12782;
LABEL_44:
    if (gLogCategory_APEndpointRemoteControlSession <= 90)
    {
      if (gLogCategory_APEndpointRemoteControlSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_98;
        }

        v31 = v87;
      }

      LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_createTransportStreams(FigEndpointRemoteControlSessionRef, FigTransportStreamRef *, FigTransportStreamRef *)", 33554522, "[%{ptr}] Setup stream failed with error: %#m", a1, v31);
    }

LABEL_98:
    v7 = 0;
    v43 = 0;
    v35 = 0;
    v17 = 0;
    goto LABEL_135;
  }

  v31 = v30(v29, 130, v26, &v86, 0, 0);
  v87 = v31;
  if (v31)
  {
    goto LABEL_44;
  }

  *(v10 + 168) = CFDictionaryGetInt64();
  v32 = v87;
  if (v87)
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 90)
    {
      if (gLogCategory_APEndpointRemoteControlSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_98;
        }

        v32 = v87;
      }

      LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_createTransportStreams(FigEndpointRemoteControlSessionRef, FigTransportStreamRef *, FigTransportStreamRef *)", 33554522, "[%{ptr}] Failed to obtain transport token from SETUP response: %#m", a1, v32);
    }

    goto LABEL_98;
  }

  Int64 = CFDictionaryGetInt64();
  v14 = Int64;
  v82 = v26;
  if (!*(v10 + 8) || !(Int64 << 32))
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_createTransportStreams(FigEndpointRemoteControlSessionRef, FigTransportStreamRef *, FigTransportStreamRef *)", 33554482, "[%{ptr}] Use shared connection with transport token: %lld\n", a1, *(v10 + 168));
    }

    goto LABEL_13;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_createTransportStreams(FigEndpointRemoteControlSessionRef, FigTransportStreamRef *, FigTransportStreamRef *)", 33554482, "[%{ptr}] Use dedicated socket with remote port: %d, transport token: %lld\n", a1, v14, *(v10 + 168));
  }

  v15 = 1;
LABEL_14:
  v16 = *MEMORY[0x277CBECE8];
  v17 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v17)
  {
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_13(&v87);
    goto LABEL_101;
  }

  FigCFDictionarySetInt64();
  FigCFDictionarySetInt32();
  v81 = v14;
  if (v15)
  {
    FigCFDictionarySetInt32();
    v18 = *(v10 + 16);
    v19 = APTransportStreamIDMakeWithPort();
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v20)
    {
      v21 = v20(v18, v19, v17, &cf);
      v87 = v21;
      if (!v21)
      {
        if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_createTransportStreams(FigEndpointRemoteControlSessionRef, FigTransportStreamRef *, FigTransportStreamRef *)", 33554482, "[%{ptr}] Created transport control stream [%{ptr}]\n", a1, cf);
        }

        v34 = CFRetain(cf);
        v84 = v34;
        if (gLogCategory_APEndpointRemoteControlSession > 50)
        {
          goto LABEL_62;
        }

        if (gLogCategory_APEndpointRemoteControlSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_62;
          }

          v34 = v84;
        }

        LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_createTransportStreams(FigEndpointRemoteControlSessionRef, FigTransportStreamRef *, FigTransportStreamRef *)", 33554482, "[%{ptr}] Retained transport event stream [%{ptr}]\n", a1, v34);
LABEL_62:
        APSenderSessionGetCMBaseObject();
        v40 = v39;
        v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v41)
        {
          v80 = v11;
          v42 = v41(v40, @"KeyHolder", v16, &v83);
          v87 = v42;
          if (!v42)
          {
            v43 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(v16, 0);
            if (v43)
            {
              v44 = cf;
              v45 = v83;
              v46 = *(*(CMBaseObjectGetVTable() + 16) + 80);
              if (v46)
              {
                v47 = v46(v44, v45, v43);
                v87 = v47;
                if (!v47)
                {
                  v35 = 0;
                  goto LABEL_70;
                }
              }

              else
              {
                v47 = 4294954514;
                v87 = -12782;
              }

              apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_9(v47);
            }

            else
            {
              apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_10(&v87);
            }

            v7 = 0;
LABEL_108:
            v35 = 0;
            goto LABEL_109;
          }
        }

        else
        {
          v42 = 4294954514;
          v87 = -12782;
        }

        apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_11(v42);
LABEL_101:
        v7 = 0;
        v43 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      v21 = 4294954514;
      v87 = -12782;
    }

    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_12(v21);
    goto LABEL_101;
  }

  v80 = v11;
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v22 = *(v10 + 16);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v23)
  {
    v24 = 4294954514;
    v87 = -12782;
    goto LABEL_96;
  }

  v24 = v23(v22, v17, &cf);
  v87 = v24;
  if (v24)
  {
LABEL_96:
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_5(v24);
    goto LABEL_101;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_createTransportStreams(FigEndpointRemoteControlSessionRef, FigTransportStreamRef *, FigTransportStreamRef *)", 33554482, "[%{ptr}] Created transport control stream [%{ptr}]\n", a1, cf);
  }

  v35 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v35)
  {
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_4(&v87);
    goto LABEL_104;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v36 = *(v10 + 16);
  v37 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v37)
  {
    v38 = 4294954514;
    v87 = -12782;
    goto LABEL_103;
  }

  v38 = v37(v36, v35, &v84);
  v87 = v38;
  if (v38)
  {
LABEL_103:
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_3(v38);
LABEL_104:
    v7 = 0;
    v43 = 0;
    goto LABEL_109;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_createTransportStreams(FigEndpointRemoteControlSessionRef, FigTransportStreamRef *, FigTransportStreamRef *)", 33554482, "[%{ptr}] Created transport event stream [%{ptr}]\n", a1, v84);
  }

  v43 = 0;
LABEL_70:
  FigSimpleMutexLock();
  if (*(v10 + 120))
  {
    FigSimpleMutexUnlock();
    v7 = 0;
    v87 = -17432;
LABEL_109:
    v26 = v82;
    goto LABEL_135;
  }

  v48 = *(v10 + 144);
  v49 = cf;
  *(v10 + 144) = cf;
  if (v49)
  {
    CFRetain(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  v50 = *(v10 + 152);
  v51 = v84;
  *(v10 + 152) = v84;
  if (v51)
  {
    CFRetain(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  FigSimpleMutexUnlock();
  v52 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v10 + 176) = v52;
  if (!v52)
  {
LABEL_112:
    v7 = 0;
    goto LABEL_109;
  }

  v53 = v52;
  v54 = v84;
  v55 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v55)
  {
    v56 = 4294954514;
    v87 = -12782;
    goto LABEL_111;
  }

  v56 = v55(v54, apEndpointRemoteControlSession_handleMessage, apEndpointRemoteControlSession_handleMessageCreatingReply, v53);
  v87 = v56;
  if (v56)
  {
LABEL_111:
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_8(v56);
    goto LABEL_112;
  }

  v57 = CMBaseObjectGetDerivedStorage();
  if (!*(v57 + 11))
  {
    v26 = v82;
    if (IsAppleInternalBuild() && gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_7(a1, v61, v62);
    }

    goto LABEL_123;
  }

  v58 = v57;
  v59 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v59)
  {
    apEndpointRemoteControlSession_ensureAndCopyTransportStreams_cold_6();
    v26 = v82;
    goto LABEL_123;
  }

  v60 = v59;
  CFDictionarySetInt64();
  CFDictionarySetValue(v60, @"localSendsWithReadKey", *MEMORY[0x277CBED10]);
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_sendDiagnosticDataForTransportStreamIfNeeded(FigEndpointRemoteControlSessionRef, FigTransportStreamRef, int64_t, CFStringRef)", 33554482, "[%{ptr}] APSenderSessionBroadcastKeysForDiagnosticsData() with RemotePort = %d, LocalSendsWithReadKey = %d", a1, v81, 0);
  }

  v63 = *(v58 + 16);
  v64 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  v26 = v82;
  if (!v64)
  {
    v65 = 4294954514;
    goto LABEL_118;
  }

  v65 = v64(v63, v43, v60);
  if (v65)
  {
LABEL_118:
    if (gLogCategory_APEndpointRemoteControlSession <= 90 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_sendDiagnosticDataForTransportStreamIfNeeded(FigEndpointRemoteControlSessionRef, FigTransportStreamRef, int64_t, CFStringRef)", 33554522, "[%{ptr}] APSenderSessionBroadcastKeysForDiagnosticsData() failed: %m (encryptionContext = %@, remoteDataPort = %d)", a1, v65, v43, v81);
    }
  }

  CFRelease(v60);
LABEL_123:
  v66 = cf;
  v67 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v67)
  {
    v67(v66);
  }

  v68 = v84;
  v69 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v69)
  {
    v69(v68);
  }

  v70 = cf;
  v71 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v71)
  {
    v71(v70);
  }

  if (v80)
  {
    v72 = 1;
  }

  else
  {
    v72 = v15;
  }

  if ((v72 & 1) == 0)
  {
    FigTransportStreamWaitUntilConnected_0(v84);
  }

  v9 = v84;
  v7 = cf;
  v84 = 0;
  cf = 0;
LABEL_135:
  if (v86)
  {
    CFRelease(v86);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (cf)
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v74 = CMBaseObject;
      v75 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v75)
      {
        v75(v74);
      }
    }

    CFRelease(cf);
    cf = 0;
  }

  if (v84)
  {
    v76 = FigTransportStreamGetCMBaseObject();
    if (v76)
    {
      v77 = v76;
      v78 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v78)
      {
        v78(v77);
      }
    }

    CFRelease(v84);
  }

  v5 = v87;
  if (v87)
  {
    APSLogErrorAt();
LABEL_167:
    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_169;
  }

LABEL_158:
  v5 = 0;
  if (!a2)
  {
    goto LABEL_167;
  }

  *a2 = v7;
LABEL_169:
  if (v9)
  {
    CFRelease(v9);
  }

  return v5;
}

uint64_t apEndpointRemoteControlSession_Invalidate(const void *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_Invalidate_cold_1(a1, a2, a3);
  }

  apEndpointRemoteControlSession_invalidateInternal(a1);
  return 0;
}

uint64_t apEndpointRemoteControlSession_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_Finalize_cold_1(a1, v2, v3);
  }

  *(DerivedStorage + 128) = 0;
  v5 = *(DerivedStorage + 136);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 136) = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 176);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 176) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 16) = 0;
  }

  v9 = *(DerivedStorage + 48);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 48) = 0;
  }

  v10 = *(DerivedStorage + 160);
  if (v10)
  {
    dispatch_release(v10);
    *(DerivedStorage + 160) = 0;
  }

  v11 = *(DerivedStorage + 24);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 24) = 0;
  }

  v12 = *(DerivedStorage + 32);
  if (v12)
  {
    dispatch_release(v12);
    *(DerivedStorage + 32) = 0;
  }

  v13 = *(DerivedStorage + 80);
  if (v13)
  {
    os_release(v13);
    *(DerivedStorage + 80) = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t apEndpointRemoteControlSession_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SessionID"))
  {
    goto LABEL_6;
  }

  if (CFEqual(a2, @"clientUUID"))
  {
    DerivedStorage += 6;
LABEL_6:
    v7 = CFRetain(*DerivedStorage);
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(a2, @"clientTypeUUID"))
  {
    DerivedStorage += 5;
    goto LABEL_6;
  }

  return 4294949862;
}

void apEndpointRemoteControlSession_invalidateInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = 0;
  v32 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {

    FigSimpleMutexUnlock();
    return;
  }

  *(DerivedStorage + 120) = 1;
  v4 = *(DerivedStorage + 128);
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    v5 = CFRetain(v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(DerivedStorage + 144);
  if (v6)
  {
    v7 = CFRetain(v6);
    v8 = *(DerivedStorage + 144);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 144) = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *(DerivedStorage + 152);
  if (v9)
  {
    v10 = CFRetain(v9);
    v11 = *(DerivedStorage + 152);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 152) = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_invalidateInternal_cold_1(a1, v12, v13);
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else if (!v7)
  {
    goto LABEL_25;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v14)
  {
    v14(v7, 0, 0, 0);
  }

  CMBaseObject = FigTransportStreamGetCMBaseObject();
  if (CMBaseObject)
  {
    v16 = CMBaseObject;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v17)
    {
      v17(v16);
    }
  }

LABEL_25:
  if (v10)
  {
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v18)
    {
      v18(v10, 0, 0, 0);
    }

    v19 = FigTransportStreamGetCMBaseObject();
    if (v19)
    {
      v20 = v19;
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v21)
      {
        v21(v20);
      }
    }
  }

  if (!v4)
  {
    goto LABEL_37;
  }

  if (v5)
  {
    v24 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v24)
    {
      if (gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        apEndpointRemoteControlSession_invalidateInternal_cold_2(a1, v22, v23);
      }

LABEL_37:
      v24 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v24 = 0;
  }

  v30 = CFRetain(a1);
  v31 = v4;
  if (v24)
  {
    v25 = CFRetain(v24);
  }

  else
  {
    v25 = 0;
  }

  v32 = v25;
  APSDispatchAsyncFHelper();
LABEL_43:
  CFRetain(a1);
  v26 = *(DerivedStorage + 24);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 0x40000000;
  v29[2] = __apEndpointRemoteControlSession_invalidateInternal_block_invoke;
  v29[3] = &__block_descriptor_tmp_10;
  v29[4] = a1;
  dispatch_async(v26, v29);
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_invalidateInternal_cold_3(a1, v27, v28);
    if (!v5)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v5)
  {
LABEL_47:
    CFRelease(v5);
  }

LABEL_48:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void apEndpointRemoteControlSession_callEventHandlerAboutInvalidation(uint64_t a1)
{
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_callEventHandlerAboutInvalidation_cold_1();
  }

  else if (!a1)
  {
    apEndpointRemoteControlSession_callEventHandlerAboutInvalidation_cold_3();
    v3 = 0;
    v2 = 4294949866;
    goto LABEL_7;
  }

  if (*(a1 + 16))
  {
    (*(a1 + 8))(*a1, *MEMORY[0x277CC1658], 0);
    v2 = 0;
    v3 = 1;
  }

  else
  {
    apEndpointRemoteControlSession_callEventHandlerAboutInvalidation_cold_2();
    v3 = 0;
    v2 = 4294949863;
  }

LABEL_7:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  if ((v3 & 1) == 0 && gLogCategory_APEndpointRemoteControlSession <= 90 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_callEventHandlerAboutInvalidation_cold_4(v2);
  }
}

void __apEndpointRemoteControlSession_invalidateInternal_block_invoke(uint64_t a1)
{
  apEndpointRemoteControlSession_postNotification(*(a1 + 32), @"closed");
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v5[3] = 0;
  v3 = DerivedStorage[20];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __apEndpointRemoteControlSession_logSummaryAndResetCounters_block_invoke;
  block[3] = &unk_27849C160;
  block[5] = v5;
  block[6] = DerivedStorage;
  block[4] = v6;
  dispatch_sync(v3, block);
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    __apEndpointRemoteControlSession_invalidateInternal_block_invoke_cold_1(DerivedStorage);
  }

  DerivedStorage[11] = 0;
  DerivedStorage[12] = 0;
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v6, 8);
  CFRelease(*(a1 + 32));
}

uint64_t apEndpointRemoteControlSession_postNotification(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = CMNotificationCenterPostNotification();
    if (!result)
    {
      return result;
    }

    v5 = result;
    result = apEndpointRemoteControlSession_postNotification_cold_1(result);
  }

  else
  {
    result = apEndpointRemoteControlSession_postNotification_cold_2();
    v5 = 4294950576;
  }

  if (gLogCategory_APEndpointRemoteControlSession <= 90)
  {
    if (gLogCategory_APEndpointRemoteControlSession != -1)
    {
      return LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_postNotification(FigEndpointRemoteControlSessionRef, CFStringRef)", 33554522, "[%{ptr}] Failed to post %@ notification: %#m\n", a1, a2, v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_postNotification(FigEndpointRemoteControlSessionRef, CFStringRef)", 33554522, "[%{ptr}] Failed to post %@ notification: %#m\n", a1, a2, v5);
    }
  }

  return result;
}

void *__apEndpointRemoteControlSession_logSummaryAndResetCounters_block_invoke(void *result)
{
  v1 = result[6];
  *(*(result[4] + 8) + 24) = *(v1 + 184);
  *(*(result[5] + 8) + 24) = *(v1 + 192);
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  return result;
}

uint64_t apEndpointRemoteControlSession_SendMessage(const void *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (!a2)
  {
    v4 = 0;
    v11 = 0;
LABEL_9:
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    goto LABEL_10;
  }

  if (*(DerivedStorage + 10))
  {
    v4 = 0;
    v11 = 0;
    v12 = &v18 + 1;
    v13 = a2;
LABEL_8:
    *v12 = CFRetain(v13);
    goto LABEL_9;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, @"data", a2);
    v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v15)
    {
      v13 = v15;
      v12 = &v18;
      CFDictionarySetValue(v15, @"params", v4);
      v11 = v13;
      goto LABEL_8;
    }
  }

  else
  {
    CUFatalErrorF(&gLogCategory_APEndpointRemoteControlSession, "[%{ptr}] Failed to allocate messageParams\n", a1);
  }

  apEndpointRemoteControlSession_SendMessage_cold_1();
  v11 = 0;
LABEL_10:
  CFRetain(a1);
  *(&v19 + 1) = a3;
  *&v20 = a4;
  BYTE8(v20) = *(v10 + 9);
  if (a2)
  {
    Length = CFDataGetLength(a2);
  }

  else
  {
    Length = 0;
  }

  *&v19 = Length;
  APSDispatchAsyncFHelper();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

uint64_t apEndpointRemoteControlSession_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 136);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 136) = 0;
  }

  *(DerivedStorage + 128) = 0;
  if (a2)
  {
    *(DerivedStorage + 128) = a2;
    if (a3)
    {
      *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t apEndpointRemoteControlSession_Start(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    apEndpointRemoteControlSession_Start_cold_1(a1, v2, v3);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    apEndpointRemoteControlSession_Start_cold_2();
    v6 = 4294949863;
  }

  else
  {
    CFRetain(a1);
    v5 = *(DerivedStorage + 160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __apEndpointRemoteControlSession_Start_block_invoke;
    block[3] = &__block_descriptor_tmp_76_0;
    block[4] = a1;
    dispatch_async(v5, block);
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

void apEndpointRemoteControlSession_sendMessageInternal(unsigned int *a1)
{
  v2 = *(a1 + 1);
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  cf = 0;
  if (*a1)
  {
    APSLogErrorAt();
    v5 = *a1;
    goto LABEL_24;
  }

  v4 = apEndpointRemoteControlSession_ensureAndCopyTransportStreams(v2, &cf);
  if (v4 == -17432)
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 30 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      apEndpointRemoteControlSession_sendMessageInternal_cold_2(v2);
    }

    v5 = 4294949864;
    goto LABEL_24;
  }

  v5 = v4;
  if (v4)
  {
    APSLogErrorAt();
    goto LABEL_24;
  }

  if (!cf)
  {
    apEndpointRemoteControlSession_sendMessageInternal_cold_1();
    v5 = 4294949863;
    goto LABEL_24;
  }

  v6 = *(DerivedStorage + 184) + 1;
  *(DerivedStorage + 184) = v6;
  v7 = *(DerivedStorage + 104);
  if (gLogCategory_APEndpointRemoteControlSession <= v7)
  {
    v8 = v7 | 0x2000000u;
    if (gLogCategory_APEndpointRemoteControlSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v6 = *(DerivedStorage + 184);
      v8 = *(DerivedStorage + 104) | 0x2000000u;
    }

    if (*(DerivedStorage + 9))
    {
      v9 = "without reply";
    }

    else
    {
      v9 = "";
    }

    LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_sendMessageInternal(void *)", v8, "[%{ptr}] Sending message #%llu (%d bytes) %s\n", v2, v6, *(a1 + 4), v9);
  }

LABEL_16:
  *(DerivedStorage + 192) += *(a1 + 4);
  if (*(a1 + 56))
  {
    if (*(DerivedStorage + 10))
    {
      v10 = APTransportStreamSendData();
    }

    else
    {
      v10 = APTransportStreamSendPlistMessage();
    }
  }

  else if (*(DerivedStorage + 10))
  {
    v10 = APTransportStreamSendDataCreatingReplyData();
  }

  else
  {
    v10 = APTransportStreamSendPlistMessageCreatingPlistReply();
  }

  v5 = v10;
  if (v10 && gLogCategory_APEndpointRemoteControlSession <= 90 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_sendMessageInternal(void *)", 33554522, "[%{ptr}] Failed to send message #%llu due to error %#m\n", v2, *(DerivedStorage + 184), v5);
  }

LABEL_24:
  v11 = *(a1 + 5);
  if (v11)
  {
    v12 = &v16;
    if (!*(DerivedStorage + 10))
    {
      v12 = &v18;
    }

    v11(v5, *v12, *(a1 + 6));
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v13 = *(a1 + 1);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 2);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 3);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

uint64_t apEndpointRemoteControlSession_isInvalidated(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 120);
  FigSimpleMutexUnlock();
  return v2;
}

void __apEndpointRemoteControlSession_startMessageHandling_block_invoke(uint64_t a1)
{
  apEndpointRemoteControlSession_postNotification(*(a1 + 32), @"failed");
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void apEndpointRemoteControlSession_handleMessageInternal(uint64_t *a1)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1[1])
  {
    apEndpointRemoteControlSession_handleMessageInternal_cold_6(&v17);
LABEL_10:
    v5 = 0;
    v4 = 0;
    goto LABEL_23;
  }

  v3 = DerivedStorage;
  if (apEndpointRemoteControlSession_isInvalidated(*a1))
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      apEndpointRemoteControlSession_handleMessageInternal_cold_1();
    }

    goto LABEL_10;
  }

  if (!a1[2])
  {
    if (gLogCategory_APEndpointRemoteControlSession <= 90 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
    {
      apEndpointRemoteControlSession_handleMessageInternal_cold_5();
    }

    goto LABEL_10;
  }

  CFDataGetLength(a1[1]);
  CFDataGetBytePtr(a1[1]);
  if (*(v3 + 10))
  {
    v4 = 0;
    v5 = 0;
    v6 = a1[1];
    if (!v6)
    {
LABEL_15:
      v9 = *(v3 + 88) + 1;
      *(v3 + 88) = v9;
      v10 = *(v3 + 104);
      if (gLogCategory_APEndpointRemoteControlSession <= v10)
      {
        v11 = v10 | 0x2000000u;
        if (gLogCategory_APEndpointRemoteControlSession != -1)
        {
LABEL_17:
          v12 = *a1;
          Length = CFDataGetLength(v5);
          if (*(a1 + 32))
          {
            v14 = ", no reply requested";
          }

          else
          {
            v14 = "";
          }

          LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_handleMessageInternal(void *)", v11, "[%{ptr}] Received message #%llu (%d bytes)%s\n", v12, v9, Length, v14);
          goto LABEL_22;
        }

        if (_LogCategory_Initialize())
        {
          v9 = *(v3 + 88);
          v11 = *(v3 + 104) | 0x2000000u;
          goto LABEL_17;
        }
      }

LABEL_22:
      *(v3 + 96) += CFDataGetLength(v5);
      (a1[2])(*a1, *MEMORY[0x277CC1650], v5, a1[3]);
      goto LABEL_23;
    }

LABEL_14:
    CFRetain(v6);
    v5 = v6;
    goto LABEL_15;
  }

  CFDictionaryGetTypeID();
  v4 = CFCreateWithPlistBytes();
  Value = CFDictionaryGetValue(v4, @"params");
  if (Value)
  {
    v8 = CFDictionaryGetValue(Value, @"data");
    if (v8)
    {
      v6 = v8;
      goto LABEL_14;
    }

    apEndpointRemoteControlSession_handleMessageInternal_cold_3(&v17);
  }

  else
  {
    apEndpointRemoteControlSession_handleMessageInternal_cold_4(&v17);
  }

  v5 = 0;
LABEL_23:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v15 = a1[1];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[3];
  if (v16)
  {
    CFRelease(v16);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t APVirtualDisplayTestSinkCreate(int a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if ((a1 - 4) <= 0xFFFFFFFC)
  {
    APVirtualDisplayTestSinkCreate_cold_9();
    return 4294954516;
  }

  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v8 = *MEMORY[0x277CBECE8];
        FigVirtualDisplaySinkGetClassID();
        v9 = CMDerivedObjectCreate();
        if (v9)
        {
          value_low = v9;
          APVirtualDisplayTestSinkCreate_cold_1(v9);
          goto LABEL_27;
        }

        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *DerivedStorage = a1;
        *(DerivedStorage + 4) = 0;
        CMTimeMake(&v30, 2, 30);
        *(DerivedStorage + 32) = v30;
        *(DerivedStorage + 8) = CFRetain(a2);
        *(DerivedStorage + 16) = CFRetain(a3);
        *(DerivedStorage + 120) = SecondsToUpTicks();
        *(DerivedStorage + 280) = -1;
        if (*DerivedStorage != 2)
        {
          value_low = 0;
          *a4 = cf;
          return value_low;
        }

        CFStringGetTypeID();
        v11 = CFPrefs_CopyTypedValue();
        if (v11)
        {
          v12 = v11;
          v32 = 0;
          *(DerivedStorage + 160) = CFRetain(v11);
          *(DerivedStorage + 144) = dispatch_queue_create("FigVirtualDisplayTestSinkQueue", 0);
          *(DerivedStorage + 152) = dispatch_semaphore_create(0);
          v13 = CFURLCreateWithFileSystemPath(v8, *(DerivedStorage + 160), kCFURLPOSIXPathStyle, 0);
          if (!v13)
          {
            APVirtualDisplayTestSinkCreate_cold_4();
            value_low = 4294954510;
            goto LABEL_25;
          }

          v14 = v13;
          CFRunLoopGetCurrent();
          v15 = FigAssetReaderCreateWithURLAndFormatReader();
          if (v15)
          {
            value_low = v15;
            APVirtualDisplayTestSinkCreate_cold_2(v15);
          }

          else
          {
            v16 = *(DerivedStorage + 168);
            v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v17)
            {
              v18 = v17(v16, &v32);
              if (!v18)
              {
                if (v32)
                {
                  v19 = MEMORY[0x277CBF138];
                  v20 = MEMORY[0x277CBF150];
                  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6140], *MEMORY[0x277CD6148]);
                  v22 = CFDictionaryCreateMutable(v8, 0, v19, v20);
                  FigCFDictionarySetInt32();
                  FigCFDictionarySetInt32();
                  FigCFDictionarySetInt32();
                  v23 = *(DerivedStorage + 168);
                  v24 = v32;
                  v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                  if (v25)
                  {
                    v25(v23, v24, 0, DerivedStorage + 176);
                  }

                  v26 = MEMORY[0x277CC08F0];
                  *(DerivedStorage + 180) = *MEMORY[0x277CC08F0];
                  *(DerivedStorage + 196) = *(v26 + 16);
                  v27 = MEMORY[0x277CC08B0];
                  *(DerivedStorage + 204) = *MEMORY[0x277CC08B0];
                  *(DerivedStorage + 220) = *(v27 + 16);
                  if (v22)
                  {
                    CFRelease(v22);
                  }

                  if (Mutable)
                  {
                    CFRelease(Mutable);
                  }

                  CFRelease(v14);
                  goto LABEL_20;
                }

                if (APVirtualDisplayTestSinkCreate_cold_3(v14, &v32, &v30))
                {
LABEL_20:
                  value_low = 0;
                  *a4 = cf;
                  cf = 0;
LABEL_26:
                  CFRelease(v12);
                  goto LABEL_27;
                }

                value_low = LODWORD(v30.value);
LABEL_25:
                APSLogErrorAt();
                goto LABEL_26;
              }

              value_low = v18;
            }

            else
            {
              value_low = 4294954514;
            }

            APSLogErrorAt();
          }

          CFRelease(v14);
          goto LABEL_25;
        }

        APVirtualDisplayTestSinkCreate_cold_5();
      }

      else
      {
        APVirtualDisplayTestSinkCreate_cold_6();
      }
    }

    else
    {
      APVirtualDisplayTestSinkCreate_cold_7();
    }
  }

  else
  {
    APVirtualDisplayTestSinkCreate_cold_8();
  }

  value_low = 4294954516;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void vdsink_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  vdsink_networkStop(a1);
  v3 = DerivedStorage[19];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = DerivedStorage[18];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = DerivedStorage[20];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[20] = 0;
  }

  v6 = DerivedStorage[21];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[21] = 0;
  }

  v7 = DerivedStorage[30];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[30] = 0;
  }

  v8 = DerivedStorage[31];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[31] = 0;
  }

  v9 = DerivedStorage[32];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[32] = 0;
  }

  v10 = DerivedStorage[1];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[1] = 0;
  }

  v11 = DerivedStorage[2];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[2] = 0;
  }

  v12 = DerivedStorage[12];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[12] = 0;
  }

  v13 = DerivedStorage[13];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[13] = 0;
  }

  v14 = DerivedStorage[14];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[14] = 0;
  }

  v15 = DerivedStorage[11];
  if (v15)
  {
    _Block_release(v15);
    DerivedStorage[11] = 0;
  }

  v16 = DerivedStorage[3];
  if (v16)
  {
    dispatch_release(v16);
    DerivedStorage[3] = 0;
  }

  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Finalize_cold_1(a1);
  }
}

uint64_t vdsink_networkStop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 272))
  {
    v3 = *(DerivedStorage + 280);
    if ((v3 & 0x80000000) == 0)
    {
      if (close(v3) && *__error())
      {
        __error();
      }

      *(v2 + 280) = -1;
    }

    SendSelfConnectedLoopbackMessage();
    v4 = pthread_join(*(v2 + 264), 0);
    *(v2 + 272) = 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 320);
  if (v5)
  {
    CFRelease(v5);
    *(v2 + 320) = 0;
  }

  v6 = *(v2 + 280);
  if ((v6 & 0x80000000) == 0)
  {
    if (close(v6) && *__error())
    {
      __error();
    }

    *(v2 + 280) = -1;
  }

  result = *(v2 + 284);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    *(v2 + 284) = -1;
  }

  if (v4)
  {
    if (gLogCategory_APVirtualDisplayTestSink <= 60)
    {
      if (gLogCategory_APVirtualDisplayTestSink != -1)
      {
        return vdsink_networkStop_cold_1(v4);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return vdsink_networkStop_cold_1(v4);
      }
    }
  }

  return result;
}

void __vdsink_getVirtualDisplaySizeOverrideFromPrefs_block_invoke()
{
  v0 = CFPreferencesCopyValue(@"mirroring_resolution", @"com.apple.coremedia", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    IntValue = 0.0;
    if (v2 == CFArrayGetTypeID())
    {
      if (gLogCategory_APVirtualDisplayTestSink <= 50 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
      {
        __vdsink_getVirtualDisplaySizeOverrideFromPrefs_block_invoke_cold_1(v1);
      }

      v4 = 0.0;
      if (CFArrayGetCount(v1) >= 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          v7 = CFGetTypeID(ValueAtIndex);
          if (v7 == CFStringGetTypeID())
          {
            IntValue = CFStringGetIntValue(v6);
          }
        }

        v8 = CFArrayGetValueAtIndex(v1, 1);
        if (v8)
        {
          v9 = v8;
          v10 = CFGetTypeID(v8);
          if (v10 == CFStringGetTypeID())
          {
            v4 = CFStringGetIntValue(v9);
          }
        }
      }
    }

    else
    {
      v4 = 0.0;
    }

    CFRelease(v1);
    if (IntValue > 0.0 && v4 > 0.0)
    {
      if (IntValue <= v4)
      {
        *&v11 = v4;
      }

      else
      {
        *&v11 = IntValue;
      }

      vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0 = v11;
      if (IntValue >= v4)
      {
        *&v12 = v4;
      }

      else
      {
        *&v12 = IntValue;
      }

      vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1 = v12;
    }
  }
}

uint64_t vdsink_Start(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Start_cold_1(a1);
  }

  if (*(DerivedStorage + 4))
  {
    vdsink_Start_cold_2();
    v6 = 4294954516;
    if (!a3)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v6 = 0;
  *(DerivedStorage + 4) = 2;
  if (a3)
  {
LABEL_6:
    v7 = *(DerivedStorage + 24);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __vdsink_Start_block_invoke;
    v9[3] = &unk_27849C228;
    v9[4] = a3;
    v10 = v6;
    dispatch_async(v7, v9);
  }

  return v6;
}

uint64_t vdsink_Stop(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Stop_cold_1(a1);
  }

  if (*(DerivedStorage + 4) != 2)
  {
    vdsink_Stop_cold_2();
    v5 = 4294954516;
    if (!a2)
    {
      return v5;
    }

    goto LABEL_11;
  }

  *(DerivedStorage + 4) = 0;
  if (*DerivedStorage == 3)
  {
    vdsink_networkStop(a1);
  }

  else
  {
    v5 = 0;
    if (*DerivedStorage != 2)
    {
      goto LABEL_10;
    }

    dispatch_semaphore_wait(*(DerivedStorage + 152), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = 0;
LABEL_10:
  if (a2)
  {
LABEL_11:
    v6 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Stop_block_invoke;
    block[3] = &unk_27849C250;
    block[4] = a2;
    dispatch_async(v6, block);
  }

  return v5;
}

uint64_t vdsink_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Suspend_cold_1(a1);
  }

  if (DerivedStorage[1] == 2)
  {
    DerivedStorage[1] = 1;
    if (*DerivedStorage == 3)
    {
      vdsink_networkStop(a1);
    }

    return 0;
  }

  else
  {
    vdsink_Suspend_cold_2();
    return 4294954516;
  }
}

uint64_t vdsink_Resume(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Resume_cold_1(a1);
  }

  if (!DerivedStorage[1])
  {
    vdsink_Resume_cold_8();
    return 4294954516;
  }

  if (*DerivedStorage != 3)
  {
    if (*DerivedStorage == 2)
    {
      global_queue = dispatch_get_global_queue(2, 0);
      dispatch_async_f(global_queue, DerivedStorage, vdsink_fileSubmitFrames);
    }

    goto LABEL_35;
  }

  v4 = CMBaseObjectGetDerivedStorage();
  if (*(v4 + 272))
  {
    vdsink_Resume_cold_2();
    v8 = 4294960577;
    goto LABEL_47;
  }

  v5 = v4;
  v6 = *(v4 + 280);
  if ((v6 & 0x80000000) == 0)
  {
    if (close(v6) && *__error())
    {
      __error();
    }

    *(v5 + 280) = -1;
  }

  *&v15.sa_len = 0;
  *&v15.sa_data[6] = 0;
  v17 = 0;
  v16 = 0;
  v7 = socket(2, 1, 6);
  if (v7 < 0)
  {
    if (*__error())
    {
      v8 = *__error();
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 4294960596;
    }

    APSLogErrorAt();
    goto LABEL_46;
  }

LABEL_17:
  v14 = 1;
  setsockopt(v7, 0xFFFF, 4130, &v14, 4u);
  v18 = 1;
  if (setsockopt(v7, 0xFFFF, 4, &v18, 4u))
  {
    if (!*__error())
    {
      v8 = 4294960596;
      goto LABEL_40;
    }

    v8 = *__error();
    if (v8)
    {
      goto LABEL_40;
    }
  }

  *&v15.sa_len = 0x100007F28230210;
  *&v15.sa_data[6] = 0;
  v9 = bind(v7, &v15, 0x10u);
  if (v9)
  {
    v8 = v9;
    vdsink_Resume_cold_3(v9);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_46;
  }

  if (listen(v7, 5))
  {
    if (*__error())
    {
      v8 = *__error();
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v8 = 4294960596;
    }

LABEL_40:
    APSLogErrorAt();
    if ((v7 & 0x80000000) == 0)
    {
LABEL_41:
      if (close(v7) && *__error())
      {
        __error();
      }
    }

LABEL_46:
    APSLogErrorAt();
    goto LABEL_47;
  }

LABEL_24:
  *(v5 + 280) = v7;
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Resume_cold_4();
  }

  v10 = *(v5 + 284);
  if ((v10 & 0x80000000) == 0)
  {
    if (close(v10) && *__error())
    {
      __error();
    }

    *(v5 + 284) = -1;
  }

  v11 = OpenSelfConnectedLoopbackSocket();
  if (v11)
  {
    v8 = v11;
    vdsink_Resume_cold_5(v11);
  }

  else
  {
    v12 = pthread_create((v5 + 264), 0, vdsink_networkThread, a1);
    if (!v12)
    {
      *(v5 + 272) = v5 + 264;
LABEL_35:
      v8 = 0;
      DerivedStorage[1] = 2;
      return v8;
    }

    v8 = v12;
    vdsink_Resume_cold_6(v12);
  }

LABEL_47:
  if (gLogCategory_APVirtualDisplayTestSink <= 60 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Resume_cold_7(v8);
  }

  APSLogErrorAt();
  return v8;
}

uint64_t vdsink_GetPropertyAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(CMBaseObject, a2, *MEMORY[0x277CBECE8], &v14);
    v8 = v14;
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(DerivedStorage + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __vdsink_GetPropertyAsync_block_invoke;
  v12[3] = &unk_27849C2C0;
  v13 = v9;
  v12[4] = a4;
  v12[5] = v8;
  dispatch_async(v10, v12);
  return v9;
}

uint64_t vdsink_Perform(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    vdsink_Perform_cold_4();
LABEL_15:
    v8 = 4294954516;
    goto LABEL_16;
  }

  if (!CFEqual(a2, *MEMORY[0x277CD6628]))
  {
    if (gLogCategory_APVirtualDisplayTestSink <= 50 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
    {
      vdsink_Perform_cold_3(a2);
    }

    goto LABEL_15;
  }

  v14 = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
  sampleTimingArray.duration.epoch = *(MEMORY[0x277CC08F0] + 16);
  sampleTimingArray.presentationTimeStamp = **&MEMORY[0x277CC0898];
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.presentationTimeStamp;
  v7 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v14);
  v8 = v7;
  if (v7)
  {
    vdsink_Perform_cold_1(v7);
    if (!a4)
    {
      return v8;
    }

    goto LABEL_17;
  }

  CMSetAttachment(v14, @"APClearScreen", *MEMORY[0x277CBED28], 0);
  if (*DerivedStorage == 1)
  {
    CMBufferQueueEnqueue(*(DerivedStorage + 16), v14);
  }

  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_Perform_cold_2();
  }

  if (v14)
  {
    CFRelease(v14);
    if (!a4)
    {
      return v8;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (a4)
  {
LABEL_17:
    v9 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __vdsink_Perform_block_invoke;
    block[3] = &unk_27849C2E8;
    block[4] = a4;
    v12 = v8;
    dispatch_async(v9, block);
  }

  return v8;
}

uint64_t vdsink_SetDispatchQueue(uint64_t a1, NSObject *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = MEMORY[0x277D85CD0];
  }

  *(DerivedStorage + 24) = v5;
  dispatch_retain(v5);
  return 0;
}

uint64_t vdsink_SetEventHandler(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    a2 = _Block_copy(a2);
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    _Block_release(v4);
  }

  *(DerivedStorage + 88) = a2;
  return 0;
}

void vdsink_fileSubmitFrames(uint64_t a1)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  sbuf = 0;
  memset(&v21, 0, sizeof(v21));
  memset(&v20, 0, sizeof(v20));
  v2 = *(a1 + 168);
  v31 = *(a1 + 180);
  v19 = *(a1 + 204);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v3)
  {
    v4 = 4294954514;
    *(v28 + 6) = -12782;
    goto LABEL_24;
  }

  rhs = v31;
  lhs = v19;
  v4 = v3(v2, &rhs, &lhs);
  *(v28 + 6) = v4;
  if (v4)
  {
LABEL_24:
    vdsink_fileSubmitFrames_cold_5(v4);
    goto LABEL_25;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v21, HostTimeClock);
  CMTimeMake(&v20, 1, 2);
  if (*(v24 + 24))
  {
LABEL_4:
    if (gLogCategory_APVirtualDisplayTestSink <= 50 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
    {
      vdsink_fileSubmitFrames_cold_3();
    }
  }

  else
  {
    while (1)
    {
      memset(&v19, 0, sizeof(v19));
      if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
      {
        vdsink_fileSubmitFrames_cold_1((a1 + 228));
      }

      v6 = *(a1 + 168);
      v7 = *(a1 + 176);
      v8 = v24;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v9)
      {
        v10 = 4294954514;
        *(v28 + 6) = -12782;
LABEL_29:
        vdsink_fileSubmitFrames_cold_4(v10);
        goto LABEL_25;
      }

      v10 = v9(v6, v7, 1, v8 + 3, &sbuf);
      *(v28 + 6) = v10;
      if (v10)
      {
        goto LABEL_29;
      }

      if (*(v24 + 24))
      {
        goto LABEL_4;
      }

      CMSampleBufferGetPresentationTimeStamp(&rhs, sbuf);
      lhs = v21;
      CMTimeAdd(&v19, &lhs, &rhs);
      v18 = v19;
      while (1)
      {
        v11 = CMClockGetHostTimeClock();
        CMClockGetTime(&lhs, v11);
        v31 = v18;
        CMTimeSubtract(&rhs, &v31, &lhs);
        v12 = (CMTimeGetSeconds(&rhs) * 1000000.0);
        if (v12 < 1)
        {
          break;
        }

        usleep(v12);
      }

      v13 = *(a1 + 144);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = __vdsink_fileSubmitFrames_block_invoke;
      v15[3] = &unk_27849C298;
      v15[6] = a1;
      v15[7] = sbuf;
      v16 = v19;
      v17 = v20;
      v15[4] = &v27;
      v15[5] = &v23;
      dispatch_sync(v13, v15);
      v14 = *(v28 + 6);
      if (v14)
      {
        break;
      }

      if (sbuf)
      {
        CFRelease(sbuf);
        sbuf = 0;
      }

      if (*(v24 + 24))
      {
        goto LABEL_4;
      }
    }

    vdsink_fileSubmitFrames_cold_2(v14);
  }

LABEL_25:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  dispatch_semaphore_signal(*(a1 + 152));
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

void __vdsink_fileSubmitFrames_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 4) == 2)
  {
    v3 = *(a1 + 56);
    lhs = *(a1 + 64);
    v7 = *(a1 + 88);
    CMTimeAdd(&v9, &lhs, &v7);
    if (!*(v2 + 232))
    {
      LODWORD(lhs.value) = 1;
      FormatDescription = CMSampleBufferGetFormatDescription(v3);
      width = CMVideoFormatDescriptionGetDimensions(FormatDescription).width;
      height = CMVideoFormatDescriptionGetDimensions(FormatDescription).height;
      v10.origin.x = 0.0;
      v10.origin.y = 0.0;
      v10.size.width = width;
      v10.size.height = height;
      *(v2 + 240) = CGRectCreateDictionaryRepresentation(v10);
      v11.origin.x = 0.0;
      v11.origin.y = 0.0;
      v11.size.width = width;
      v11.size.height = height;
      *(v2 + 248) = CGRectCreateDictionaryRepresentation(v11);
      *(v2 + 256) = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &lhs);
      *(v2 + 232) = 1;
    }

    CMSetAttachment(v3, *MEMORY[0x277CC1AB8], *(v2 + 240), 0);
    CMSetAttachment(v3, *MEMORY[0x277CC1A98], *(v2 + 248), 0);
    CMSetAttachment(v3, *MEMORY[0x277CC1AC0], *(v2 + 256), 0);
    if (*(v2 + 4) == 2)
    {
      CMBufferQueueEnqueue(*(v2 + 16), v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      ++*(*(a1 + 48) + 228);
    }
  }

  else
  {
    if (gLogCategory_APVirtualDisplayTestSink <= 50 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
    {
      __vdsink_fileSubmitFrames_block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t vdsink_networkThread(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 284);
  v53 = -1;
  v52 = 0;
  v4 = &unk_27CFF0000;
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    vdsink_networkThread_cold_1();
  }

  memset(&v51, 0, sizeof(v51));
  pthread_setname_np("APVirtualDisplayTestSink");
  v5 = SocketAccept();
  if (v5)
  {
    vdsink_networkThread_cold_2(v5);
    goto LABEL_81;
  }

  v6 = *(DerivedStorage + 280);
  if ((v6 & 0x80000000) == 0)
  {
    if (close(v6) && *__error())
    {
      __error();
    }

    *(DerivedStorage + 280) = -1;
  }

  v7 = NetSocket_CreateWithNative();
  if (v7)
  {
    vdsink_networkThread_cold_3(v7);
    goto LABEL_81;
  }

  v8 = v53;
  if (v53 <= v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = v53;
  }

  if (v9 < 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9;
  }

  memset(&v51, 0, sizeof(v51));
  v11 = 1 << v3;
  v12 = v3 >> 5;
  v50 = (DerivedStorage + 288);
  allocator = *MEMORY[0x277CBECE8];
  blockAllocator = *MEMORY[0x277CBECF0];
  key = *MEMORY[0x277CC1AB8];
  v46 = *MEMORY[0x277CC1A98];
  v45 = *MEMORY[0x277CC1AC0];
  while (1)
  {
    if (__darwin_check_fd_set_overflow(v8, &v51, 0))
    {
      *(v51.fds_bits + ((v8 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v8;
    }

    if (__darwin_check_fd_set_overflow(v3, &v51, 0))
    {
      v51.fds_bits[v12] |= v11;
    }

    v13 = select(v10 + 1, &v51, 0, 0, 0);
    if (v13 > 0)
    {
      goto LABEL_26;
    }

    if (!v13)
    {
      v14 = 4294960574;
LABEL_80:
      vdsink_networkThread_cold_4(v14);
      goto LABEL_81;
    }

    if (!*__error())
    {
      v14 = 4294960596;
      goto LABEL_80;
    }

    v14 = *__error();
    if (v14)
    {
      goto LABEL_80;
    }

LABEL_26:
    v15 = v53;
    if (!__darwin_check_fd_set_overflow(v53, &v51, 0) || ((*(v51.fds_bits + ((v15 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v15) & 1) == 0)
    {
      goto LABEL_62;
    }

    if ((*(v52 + 24))(v52, 32, 32, v50, 0, 0, 0xFFFFFFFFLL))
    {
      goto LABEL_81;
    }

    v16 = *v50;
    if (!v16)
    {
      v44 = v10;
      v18 = 0;
      goto LABEL_34;
    }

    v17 = malloc_type_malloc(*v50, 0x100004077774924uLL);
    if (!v17)
    {
      goto LABEL_64;
    }

    v18 = v17;
    v44 = v10;
    v19 = (*(v52 + 24))(v52, v16, v16, v17, 0, 0, 0xFFFFFFFFLL);
    if (v19)
    {
      break;
    }

LABEL_34:
    v20 = v4[360];
    if (v20 <= 30 && (v20 != -1 || _LogCategory_Initialize()))
    {
      vdsink_networkThread_cold_5(v16);
    }

    v21 = CMBaseObjectGetDerivedStorage();
    sampleBufferOut = 0;
    blockBufferOut = 0;
    memset(&v55, 0, sizeof(v55));
    v22 = *v50;
    sampleSizeArray = v22;
    v43 = a1;
    if (!v22)
    {
      vdsink_networkThread_cold_8();
LABEL_74:
      v27 = v18;
LABEL_66:
      v10 = v44;
      if (v27)
      {
        goto LABEL_67;
      }

      goto LABEL_58;
    }

    v23 = v21;
    v24 = *(DerivedStorage + 292);
    if (!*(DerivedStorage + 292))
    {
      v27 = v18;
      goto LABEL_53;
    }

    if (v24 != 1)
    {
      vdsink_networkThread_cold_9(v24, (DerivedStorage + 292), v18, &v59);
      v27 = v59;
      goto LABEL_66;
    }

    v25 = *(DerivedStorage + 294) + 8 * *(DerivedStorage + 293);
    v59 = 0;
    v26 = v4[360];
    if (v26 <= 40 && (v26 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APVirtualDisplayTestSink, "OSStatus vdsink_networkProcessSample(FigVirtualDisplaySinkRef, VirtualDisplaySinkPacketHeader *, uint8_t *)", 33554472, "Decoder config %d bytes. wxh %d x %d\n", v25, *(DerivedStorage + 304), *(DerivedStorage + 306));
    }

    if (FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom())
    {
      APSLogErrorAt();
      goto LABEL_74;
    }

    v33 = *(v23 + 320);
    v34 = v59;
    *(v23 + 320) = v59;
    if (v34)
    {
      CFRetain(v34);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    v22 -= v25;
    sampleSizeArray = v22;
    LOWORD(v28) = *(DerivedStorage + 308);
    v60.origin.x = v28;
    LOWORD(v29) = *(DerivedStorage + 310);
    v60.origin.y = v29;
    LOWORD(v30) = *(DerivedStorage + 312);
    v60.size.width = v30;
    LOWORD(v31) = *(DerivedStorage + 314);
    v60.size.height = v31;
    LOWORD(v32) = *(DerivedStorage + 304);
    v35 = v32;
    LOWORD(v32) = *(DerivedStorage + 306);
    v36 = v32;
    valuePtr = 1;
    *(v23 + 240) = CGRectCreateDictionaryRepresentation(v60);
    v61.origin.x = 0.0;
    v61.origin.y = 0.0;
    v61.size.width = v35;
    v61.size.height = v36;
    *(v23 + 248) = CGRectCreateDictionaryRepresentation(v61);
    v37 = *(v23 + 256);
    if (v37)
    {
      CFRelease(v37);
    }

    v27 = &v18[v25];
    *(v23 + 256) = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    *(v23 + 232) = 1;
    v4 = &unk_27CFF0000;
LABEL_53:
    if (!v22)
    {
      goto LABEL_66;
    }

    v38 = CMBlockBufferCreateWithMemoryBlock(allocator, v18, *v50, blockAllocator, 0, v27 - v18, v22, 0, &blockBufferOut);
    if (!v38)
    {
      *&v55.duration.value = *MEMORY[0x277CC0898];
      v55.duration.epoch = *(MEMORY[0x277CC0898] + 16);
      v55.decodeTimeStamp = v55.duration;
      CMClockMakeHostTimeFromSystemUnits(&v55.presentationTimeStamp, *(DerivedStorage + 296));
      v39 = CMSampleBufferCreate(allocator, blockBufferOut, 1u, 0, 0, *(v23 + 320), 1, 1, &v55, 1, &sampleSizeArray, &sampleBufferOut);
      v10 = v44;
      if (v39)
      {
        vdsink_networkThread_cold_7(v39);
      }

      else
      {
        CMSetAttachment(sampleBufferOut, key, *(v23 + 240), 0);
        CMSetAttachment(sampleBufferOut, v46, *(v23 + 248), 0);
        CMSetAttachment(sampleBufferOut, v45, *(v23 + 256), 0);
        if (*(v23 + 4) == 2)
        {
          CMBufferQueueEnqueue(*(v23 + 16), sampleBufferOut);
        }
      }

      goto LABEL_58;
    }

    vdsink_networkThread_cold_6(v38);
    v10 = v44;
    if (v27)
    {
LABEL_67:
      free(v18);
    }

LABEL_58:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    a1 = v43;
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

LABEL_62:
    if (__darwin_check_fd_set_overflow(v3, &v51, 0) && (v51.fds_bits[v12] & v11) != 0)
    {
      goto LABEL_81;
    }

LABEL_64:
    v8 = v53;
  }

  v40 = v19;
  free(v18);
  if (v40 != -6753)
  {
    APSLogErrorAt();
  }

LABEL_81:
  if (v52)
  {
    NetSocket_Delete();
    v52 = 0;
  }

  else if ((v53 & 0x80000000) == 0)
  {
    if (close(v53) && *__error())
    {
      __error();
    }

    v53 = -1;
  }

  v41 = v4[360];
  if (v41 <= 30 && (v41 != -1 || _LogCategory_Initialize()))
  {
    vdsink_networkThread_cold_10();
  }

  return 0;
}

uint64_t APEndpointStreamBufferedAudioCreate(const __CFAllocator *a1, CFTypeRef cf, const void *a3, const __CFDictionary *a4, const void *a5, const void *a6, const void *a7, CFTypeRef *a8)
{
  v60 = *MEMORY[0x277D85DE8];
  v57 = 0;
  BOOLean = 0;
  cfa = 0;
  v54 = 0;
  if (cf && (v16 = CFGetTypeID(cf), v16 == CFStringGetTypeID()))
  {
    if (a4 && (v17 = CFGetTypeID(a4), v17 != CFDictionaryGetTypeID()))
    {
      APEndpointStreamBufferedAudioCreate_cold_1();
    }

    else if (a5 && (v18 = CFGetTypeID(a5), v18 == APSenderSessionGetTypeID(v18, v19)))
    {
      if (a7 && (v20 = CFGetTypeID(a7), v20 == APEndpointDescriptionGetTypeID(v20, v21)))
      {
        if (a8)
        {
          if (a6)
          {
            FigEndpointStreamAirPlayGetClassID();
            v22 = CMDerivedObjectCreate();
            v57 = v22;
            if (v22)
            {
              APEndpointStreamBufferedAudioCreate_cold_2(v22);
            }

            else
            {
              DerivedStorage = CMBaseObjectGetDerivedStorage();
              *(DerivedStorage + 32) = CFRetain(cf);
              SNPrintF(v58, 64, "APEndpointStreamBufferedAudio.%{ptr}", cfa);
              *(DerivedStorage + 24) = os_transaction_create();
              *(DerivedStorage + 88) = CFRetain(a5);
              *(DerivedStorage + 80) = CFRetain(a7);
              *(DerivedStorage + 72) = CFRetain(a6);
              v24 = FigSimpleMutexCreate();
              *(DerivedStorage + 168) = v24;
              if (v24)
              {
                SNPrintF(label, 64, "APEndpointStreamBufferedAudio.%{ptr}.network", cfa);
                v25 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
                v26 = dispatch_queue_create(label, v25);
                *(DerivedStorage + 384) = v26;
                if (v26)
                {
                  SNPrintF(label, 64, "APEndpointStreamBufferedAudio.%{ptr}.dataProcessing", cfa);
                  v27 = FigDispatchQueueCreateWithPriority();
                  *(DerivedStorage + 392) = v27;
                  if (v27)
                  {
                    SNPrintF(label, 64, "APEndpointStreamBufferedAudio.%{ptr}.notification", cfa);
                    v28 = dispatch_queue_create(label, 0);
                    *(DerivedStorage + 8) = v28;
                    if (v28)
                    {
                      SNPrintF(label, 64, "APEndpointStreamBufferedAudio.%{ptr}.criticality", cfa);
                      v29 = FigDispatchQueueCreateWithPriority();
                      *(DerivedStorage + 16) = v29;
                      if (v29)
                      {
                        if (a4)
                        {
                          Value = CFDictionaryGetValue(a4, @"ClusterInfo");
                          if (Value)
                          {
                            Value = CFRetain(Value);
                          }

                          *(DerivedStorage + 56) = Value;
                          SupportedAudioFormatList = audioStream_createSupportedAudioFormatList(cfa, (DerivedStorage + 184));
                          v57 = SupportedAudioFormatList;
                          if (SupportedAudioFormatList)
                          {
                            APEndpointStreamBufferedAudioCreate_cold_3(SupportedAudioFormatList);
                          }

                          else
                          {
                            v32 = *MEMORY[0x277CBECE8];
                            APEndpointDescriptionGetCMBaseObject();
                            v34 = v33;
                            v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                            if (v35)
                            {
                              v35(v34, @"SupportsBufferedAPAP", v32, &BOOLean);
                            }

                            APEndpointDescriptionGetCMBaseObject();
                            v37 = v36;
                            v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                            if (v38)
                            {
                              v38(v37, @"SupportsBufferedAPAT", v32, &v54);
                            }

                            v39 = BOOLean;
                            if (BOOLean)
                            {
                              v39 = CFBooleanGetValue(BOOLean);
                            }

                            *(DerivedStorage + 96) = v39;
                            v40 = v54;
                            if (v54)
                            {
                              v40 = CFBooleanGetValue(v54);
                            }

                            *(DerivedStorage + 97) = v40;
                            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
                            *(DerivedStorage + 40) = CFStringCreateWithFormat(a1, 0, @"%@-%llu-airplay", a3, UpTimeNanoseconds);
                            v42 = CMBaseObjectGetDerivedStorage();
                            CFDictionaryGetValue(a4, @"EventRecorder");
                            v43 = *(v42 + 160);
                            if (v43)
                            {
                              CFRelease(v43);
                              *(v42 + 160) = 0;
                            }

                            v44 = APSEventRecorderCreate();
                            if (v44)
                            {
                              APEndpointStreamBufferedAudioCreate_cold_4(v44, &v57);
                            }

                            else
                            {
                              v57 = 0;
                              if (a3)
                              {
                                v45 = CFRetain(a3);
                              }

                              else
                              {
                                v45 = 0;
                              }

                              *(DerivedStorage + 48) = v45;
                              *(DerivedStorage + 104) = CFRetain(*MEMORY[0x277CC17B8]);
                              *(DerivedStorage + 112) = APSGetFBOPropertyInt64() != 0;
                              if (v57)
                              {
                                APEndpointStreamBufferedAudioCreate_cold_5(v57);
                              }

                              else
                              {
                                *(DerivedStorage + 113) = APSGetFBOPropertyInt64() != 0;
                                if (v57)
                                {
                                  APEndpointStreamBufferedAudioCreate_cold_6(v57);
                                }

                                else
                                {
                                  CFDictionaryGetInt64();
                                  *(DerivedStorage + 115) = APSSettingsGetIntWithDefault();
                                  *(DerivedStorage + 116) = APSSettingsIsFeatureEnabled();
                                  *(DerivedStorage + 120) = 0u;
                                  *(DerivedStorage + 136) = 0u;
                                  *(DerivedStorage + 152) = 0;
                                  *(DerivedStorage + 336) = 0;
                                  *(DerivedStorage + 344) = 0;
                                  v46 = MEMORY[0x277CC0898];
                                  *(DerivedStorage + 360) = *MEMORY[0x277CC0898];
                                  *(DerivedStorage + 376) = *(v46 + 16);
                                  if (APSIsEndpointClusteringEnabled() && APSGetFBOPropertyInt64())
                                  {
                                    APSIsFBOPropertyNonNull();
                                  }

                                  IntWithDefault = APSSettingsGetIntWithDefault();
                                  v50 = gLogCategory_APEndpointStreamBufferedAudio;
                                  if (IntWithDefault)
                                  {
                                    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
                                    {
                                      APEndpointStreamBufferedAudioCreate_cold_7(&cfa, v48, v49);
                                    }

                                    *(DerivedStorage + 114) = 1;
                                    v50 = gLogCategory_APEndpointStreamBufferedAudio;
                                  }

                                  v53 = 0;
                                  if (v50 <= 50 && (v50 != -1 || _LogCategory_Initialize()))
                                  {
                                    APEndpointStreamBufferedAudioCreate_cold_8((DerivedStorage + 184), &v53);
                                  }

                                  if (APSSettingsIsFeatureEnabled())
                                  {
                                    CMNotificationCenterGetDefaultLocalCenter();
                                    FigNotificationCenterAddWeakListener();
                                  }

                                  v51 = APCarPlayAnalyticsCreate(a1, (DerivedStorage + 408));
                                  v57 = v51;
                                  if (v51)
                                  {
                                    APEndpointStreamBufferedAudioCreate_cold_9(v51);
                                  }

                                  else
                                  {
                                    *a8 = cfa;
                                    cfa = 0;
                                  }
                                }
                              }
                            }
                          }
                        }

                        else
                        {
                          APEndpointStreamBufferedAudioCreate_cold_10();
                        }
                      }

                      else
                      {
                        APEndpointStreamBufferedAudioCreate_cold_11();
                      }
                    }

                    else
                    {
                      APEndpointStreamBufferedAudioCreate_cold_12();
                    }
                  }

                  else
                  {
                    APEndpointStreamBufferedAudioCreate_cold_13();
                  }
                }

                else
                {
                  APEndpointStreamBufferedAudioCreate_cold_14();
                }
              }

              else
              {
                APEndpointStreamBufferedAudioCreate_cold_15();
              }
            }
          }

          else
          {
            APEndpointStreamBufferedAudioCreate_cold_16();
          }
        }

        else
        {
          APEndpointStreamBufferedAudioCreate_cold_17();
        }
      }

      else
      {
        APEndpointStreamBufferedAudioCreate_cold_18();
      }
    }

    else
    {
      APEndpointStreamBufferedAudioCreate_cold_19();
    }
  }

  else
  {
    APEndpointStreamBufferedAudioCreate_cold_20();
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return v57;
}

uint64_t audioStream_createSupportedAudioFormatList(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  APEndpointDescriptionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v14 = 4294954514;
    goto LABEL_14;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = v6(v5, @"SupportedAudioFormatsExtended", *MEMORY[0x277CBECE8], &cf);
  if (v8 != -12784 && v8 != 0)
  {
    v14 = v8;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  if (cf)
  {
    if (FigCFDictionaryGetValue())
    {
      v12 = APSAudioFormatDescriptionListCreateWithAdvertisementArray();
      if (v12)
      {
        v14 = v12;
        audioStream_createSupportedAudioFormatList_cold_1(v12);
        goto LABEL_15;
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_createSupportedAudioFormatList_cold_2(a1, v9, v10);
  }

  APEndpointDescriptionGetCMBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    v14 = 4294954514;
    goto LABEL_14;
  }

  v18 = v17(v16, @"SupportedAudioFormats", v7, &cf);
  if (v18)
  {
    v14 = v18;
    goto LABEL_14;
  }

  FigCFDictionaryGetValue();
  FigCFNumberGetUInt64();
  v19 = APSAudioFormatDescriptionListCreateWithLegacyAudioFormatMask();
  if (v19)
  {
    v14 = v19;
    audioStream_createSupportedAudioFormatList_cold_3(v19);
  }

  else
  {
    v14 = 0;
    *a2 = 0;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t audioStream_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_Finalize_cold_1(a1, v2, v3);
  }

  if (APSSettingsIsFeatureEnabled())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v5 = DerivedStorage[1];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[1] = 0;
  }

  if (DerivedStorage[15])
  {
    FigPKDStopAirPlaySenderSession();
  }

  v6 = DerivedStorage[16];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[16] = 0;
  }

  v7 = DerivedStorage[17];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[17] = 0;
  }

  v8 = DerivedStorage[18];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[18] = 0;
  }

  v9 = DerivedStorage[19];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[19] = 0;
  }

  audioStream_dissociateInternal(a1);
  v10 = DerivedStorage[20];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[20] = 0;
  }

  v11 = DerivedStorage[50];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[50] = 0;
  }

  v12 = DerivedStorage[51];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[51] = 0;
  }

  v13 = DerivedStorage[11];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[11] = 0;
  }

  v14 = DerivedStorage[10];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[10] = 0;
  }

  v15 = DerivedStorage[23];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[23] = 0;
  }

  v16 = DerivedStorage[13];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[13] = 0;
  }

  v17 = DerivedStorage[9];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[9] = 0;
  }

  v18 = DerivedStorage[4];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[4] = 0;
  }

  v19 = DerivedStorage[5];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[5] = 0;
  }

  v20 = DerivedStorage[6];
  if (v20)
  {
    CFRelease(v20);
    DerivedStorage[6] = 0;
  }

  v21 = DerivedStorage[7];
  if (v21)
  {
    CFRelease(v21);
    DerivedStorage[7] = 0;
  }

  v22 = DerivedStorage[3];
  if (v22)
  {
    os_release(v22);
    DerivedStorage[3] = 0;
  }

  v23 = DerivedStorage[2];
  if (v23)
  {
    dispatch_release(v23);
    DerivedStorage[2] = 0;
  }

  v24 = DerivedStorage[48];
  if (v24)
  {
    dispatch_release(v24);
    DerivedStorage[48] = 0;
  }

  v25 = DerivedStorage[49];
  if (v25)
  {
    dispatch_release(v25);
    DerivedStorage[49] = 0;
  }

  v26 = DerivedStorage[42];
  if (v26)
  {
    CFRelease(v26);
    DerivedStorage[42] = 0;
  }

  v27 = DerivedStorage[27];
  if (v27)
  {
    CFRelease(v27);
    DerivedStorage[27] = 0;
  }

  v28 = DerivedStorage[34];
  if (v28)
  {
    CFRelease(v28);
    DerivedStorage[34] = 0;
  }

  v29 = DerivedStorage[36];
  if (v29)
  {
    CFRelease(v29);
    DerivedStorage[36] = 0;
  }

  v30 = DerivedStorage[44];
  if (v30)
  {
    CFRelease(v30);
    DerivedStorage[44] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *audioStream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamBufferedAudio %p '%@'>", a1, *(DerivedStorage + 32));
  return Mutable;
}

uint64_t audioStream_SetProperty(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus audioStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  if (*DerivedStorage)
  {
    audioStream_SetProperty_cold_1();
    return 4294950534;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFBooleanGetTypeID())
      {
        FigSimpleMutexLock();
        if (*(DerivedStorage + 208))
        {
          Value = CFBooleanGetValue(a3);
          if (*(DerivedStorage + 224) != Value)
          {
            *(DerivedStorage + 224) = Value;
            if (Value)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
            }
          }

          v9 = 0;
        }

        else
        {
          v9 = APSSignalErrorAt();
        }

        goto LABEL_17;
      }
    }

    audioStream_SetProperty_cold_2();
    return 4294950536;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v11 = CFGetTypeID(a3), v11 != CFStringGetTypeID()))
    {
      audioStream_SetProperty_cold_3();
      return 4294950536;
    }

    CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a3);
    APSDispatchAsyncFHelper();
    return 0;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v12 = *(DerivedStorage + 320);
    *(DerivedStorage + 320) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v12)
    {
      CFRelease(v12);
    }

LABEL_30:
    FigSimpleMutexUnlock();
    return 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 0;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v13 = CFGetTypeID(a3), v13 != CFStringGetTypeID()))
    {
      audioStream_SetProperty_cold_4();
      return 4294950536;
    }

    FigSimpleMutexLock();
    audioStream_updateBadgingFormatInfoAndPostNotification(a1, a3);
    goto LABEL_30;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v20 = CFGetTypeID(a3), v20 != CFBooleanGetTypeID()))
    {
      audioStream_SetProperty_cold_5();
      return 4294950536;
    }

    v21 = CFBooleanGetValue(a3);
    audioStream_setIsCritical(a1, v21);
    return 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (!a3 || (v14 = CFGetTypeID(a3), v14 != CFBooleanGetTypeID()))
    {
      audioStream_SetProperty_cold_6();
      return 4294950536;
    }

    v15 = CFBooleanGetValue(a3);
    audioStream_setEchoCancellationIsEnabled(a1, v15);
    return 0;
  }

  if (FigCFEqual())
  {
    if (a3)
    {
      v16 = CFGetTypeID(a3);
      if (v16 != APSDataPacerGetTypeID())
      {
        audioStream_SetProperty_cold_7();
        return 4294950536;
      }
    }

    FigSimpleMutexLock();
    v17 = *(DerivedStorage + 352);
    *(DerivedStorage + 352) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v18 = *(DerivedStorage + 192);
    if (v18)
    {
      v19 = FigTransportStreamSetProperty(v18, *MEMORY[0x277CE5000], *(DerivedStorage + 352));
      if (v19)
      {
        v9 = v19;
        if (v19 != -16617)
        {
          APSLogErrorAt();
LABEL_17:
          FigSimpleMutexUnlock();
          return v9;
        }
      }
    }

    goto LABEL_30;
  }

  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s %@ unsupported\n", a1, "OSStatus audioStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  return 4294954512;
}

void audioStream_invalidateTransportMDCStream(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 200);
  if (v2)
  {
    v3 = CFRetain(v2);
    FigSimpleMutexUnlock();
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v4)
      {
        v4(v3, 0, 0, 0);
      }

      CMBaseObject = FigTransportStreamGetCMBaseObject();
      if (CMBaseObject)
      {
        v6 = CMBaseObject;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }

      CFRelease(v3);
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

uint64_t audioStream_suspendAndDissociateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  audioStream_suspendInternal(a1, 0);
  *DerivedStorage = 1;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_suspendAndDissociateInternal_cold_1(a1, v3, v4);
  }

  return 0;
}

void audioStream_invalidateTransportAudioDataStream(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 192);
  if (v2)
  {
    v3 = CFRetain(v2);
    FigSimpleMutexUnlock();
    if (!v3)
    {
      return;
    }

    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {
      v4(v3, 0, 0, 0);
    }

    IsFeatureEnabled = APSSettingsIsFeatureEnabled();
    v6 = *(CMBaseObjectGetVTable() + 16);
    if (IsFeatureEnabled)
    {
      v7 = *(v6 + 104);
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = *(v6 + 64);
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    v7(v3, 0, 0);
LABEL_14:
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v9 = CMBaseObject;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v10)
      {
        v10(v9);
      }
    }

    CFRelease(v3);
    return;
  }

  FigSimpleMutexUnlock();
}

uint64_t audioStream_handleFeedbackReceivedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = APCarPlayAnalyticsCollectFromFeedbackResponse(*(DerivedStorage + 408), a5, 0);
  if (result)
  {
    if (gLogCategory_APEndpointStreamBufferedAudio <= 60)
    {
      v9 = result;
      if (gLogCategory_APEndpointStreamBufferedAudio != -1)
      {
        return LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_handleFeedbackReceivedNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554492, "BES [%{ptr}] Failed to process Feedback Response for CarPlay Analytics with err: %d\n", a2, v9);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_handleFeedbackReceivedNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554492, "BES [%{ptr}] Failed to process Feedback Response for CarPlay Analytics with err: %d\n", a2, v9);
      }
    }
  }

  return result;
}

void audioStream_updateIsPlayingAndPostNotification(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 209) != v2)
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

    CFDictionarySetValue(Mutable, @"IsPlaying", *v7);
    *(v4 + 209) = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v6);
  }
}

uint64_t FigTransportStreamSetReadyToSendBatchCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTransportStreamSetReadyToSendCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t audioStream_createSupportedPCMFormatArray(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM();
  FigSimpleMutexUnlock();
  if (ASRDArrayPCM)
  {
    audioStream_createSupportedPCMFormatArray_cold_1(ASRDArrayPCM);
  }

  else if (a3)
  {
    *a3 = 0;
  }

  return ASRDArrayPCM;
}

__CFDictionary *audioStream_copyShowInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = MEMORY[0x277CBED28];
  if (!*(DerivedStorage + 208))
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"Resumed", *v4);
  CFDictionarySetValue(v3, @"Type", *MEMORY[0x277CC1968]);
  CFDictionarySetValue(v3, @"Name", *(DerivedStorage + 32));
  return v3;
}

uint64_t audioStream_copySupportedAudioCapabilities(uint64_t a1, CFDictionaryRef *a2)
{
  keys[1] = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FilteredListWithTranscodeFormats = APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats();
  FigSimpleMutexUnlock();
  if (FilteredListWithTranscodeFormats)
  {
    audioStream_copySupportedAudioCapabilities_cold_1(FilteredListWithTranscodeFormats);
  }

  else
  {
    v5 = APSAudioFormatDescriptionListCopyChannelLayoutTagsDataArray();
    if (v5)
    {
      FilteredListWithTranscodeFormats = v5;
      audioStream_copySupportedAudioCapabilities_cold_2(v5);
    }

    else
    {
      v6 = *MEMORY[0x277CBECE8];
      v7 = *MEMORY[0x277CC1958];
      values = 0;
      keys[0] = v7;
      v8 = CFDictionaryCreate(v6, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v8)
      {
        v9 = v8;
        if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_copySupportedAudioCapabilities(FigEndpointStreamRef, CFDictionaryRef *)", 33554482, "[%{ptr}] SupportedAudioCapabilities: %@", a1, v9);
        }

        FilteredListWithTranscodeFormats = 0;
        *a2 = v9;
      }

      else
      {
        audioStream_copySupportedAudioCapabilities_cold_3();
        return 4294951816;
      }
    }
  }

  return FilteredListWithTranscodeFormats;
}

void audioStream_updateBadgingFormatInfoAndPostNotification(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if (!FigCFEqual())
    {
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_updateBadgingFormatInfoAndPostNotification(FigEndpointStreamRef, CFStringRef)", 33554482, "[%{ptr}] BadgeType changed from %@ to %@\n", a1, *(v5 + 336), a2);
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        CFDictionarySetValue(Mutable, @"ActiveBadgingFormatInfo", a2);
        v8 = *(v5 + 336);
        *(v5 + 336) = a2;
        CFRetain(a2);
        if (v8)
        {
          CFRelease(v8);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();

        CFRelease(v7);
      }

      else
      {
        audioStream_updateBadgingFormatInfoAndPostNotification_cold_1();
      }
    }
  }

  else
  {
    audioStream_updateBadgingFormatInfoAndPostNotification_cold_2();
  }
}

uint64_t audioStream_setEchoCancellationIsEnabled(const void *a1, unsigned __int8 a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return FigSimpleMutexUnlock();
}

uint64_t FigTransportStreamSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

CFMutableDictionaryRef audioStream_createRequestDictionary(CFMutableDictionaryRef a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    a1 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (a1)
    {
      if (*(v3 + 115))
      {
        CFDictionarySetInt64();
      }
    }

    else
    {
      audioStream_createRequestDictionary_cold_1();
    }
  }

  else
  {
    audioStream_createRequestDictionary_cold_2();
  }

  return a1;
}

void audioStream_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __audioStream_releaseAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_12;
    block[4] = a1;
    dispatch_async(global_queue, block);
  }
}

void audioStream_setIsCriticalInternal(uint64_t a1)
{
  if (*a1)
  {
    APSSetFBOPropertyInt64();
  }

  APSSetFBOPropertyInt64();
  v2 = *(a1 + 8);
  if (v2)
  {

    CFRelease(v2);
  }
}

void audioStream_setEchoCancellationIsEnabledInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_1(a1, v2, v3);
  }

  if (*DerivedStorage)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_2();
    goto LABEL_26;
  }

  if (!*(DerivedStorage + 113))
  {
    APSenderSessionGetCMBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = v8(v7, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 4294954514;
    }

    audioStream_setEchoCancellationIsEnabledInternal_cold_5(v9);
LABEL_26:
    audioStream_releaseAsync(*a1);
    goto LABEL_19;
  }

  v5 = *(DerivedStorage + 200);
  if (!v5)
  {
    cf = 0;
LABEL_25:
    audioStream_setEchoCancellationIsEnabledInternal_cold_3();
    goto LABEL_26;
  }

  cf = CFRetain(v5);
  if (!cf)
  {
    goto LABEL_25;
  }

LABEL_11:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (!RequestDictionary)
  {
    audioStream_setEchoCancellationIsEnabledInternal_cold_4();
    goto LABEL_26;
  }

  v11 = RequestDictionary;
  v12 = MEMORY[0x277CBED28];
  if (!*(a1 + 8))
  {
    v12 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(RequestDictionary, @"MuteForStream", *v12);
  mach_absolute_time();
  v13 = APTransportStreamSendPlistMessageCreatingPlistReply();
  mach_absolute_time();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    v14 = *a1;
    v15 = UpTicksToMilliseconds();
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_setEchoCancellationIsEnabledInternal(void *)", 33554482, "WHAPRO [%{ptr}] SetMuteForStream response err = %d (time to complete = %lu ms)\n", v14, v13, v15);
  }

  audioStream_releaseAsync(*a1);
  CFRelease(v11);
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }
}

__CFString *audioStream_audioHoseBufferedProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamBufferedAudio <APEndpointStreamBufferedHoseStreamingProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioStream_audioHoseFlush(const void *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseFlushWithinSampleRange(const void *a1, int a2, _OWORD *a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseNotifyAudioAvailable(const void *a1)
{
  v1 = audioStream_audioHoseNotifyAudioAvailableInternal(a1);
  v2 = v1;
  if (v1)
  {
    audioStream_audioHoseNotifyAudioAvailable_cold_1(v1);
  }

  return v2;
}

uint64_t audioStream_audioHoseSetRateAndAnchorTime(const void *a1, int a2, _OWORD *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  CMBaseObjectGetDerivedStorage();
  CUObfuscatedPtr();
  kdebug_trace();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseApplyVolumeFade(const void *a1, int a2, CMTime *a3)
{
  CMBaseObjectGetDerivedStorage();
  *&v13[4] = 0;
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    v6 = 4294894965;
    audioStream_audioHoseApplyVolumeFade_cold_2();
  }

  else
  {
    time1 = *a3;
    v8 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &v8) <= 0)
    {
      v6 = 4294894965;
      audioStream_audioHoseApplyVolumeFade_cold_1();
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = *&a3->value;
      *v13 = a3->epoch;
      if (a1)
      {
        CFRetain(a1);
      }

      APSDispatchAsyncFHelper();
      return 0;
    }
  }

  return v6;
}

uint64_t audioStream_audioHoseSetRate(const void *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  FigSimpleMutexLock();
  if (a2 == 1)
  {
    ++*(DerivedStorage + 344);
  }

  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioStream_audioHoseGetAnchor(const void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseSetCryptor(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseSetMagicCookie(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseEnableLoudnessNormalization(const void *a1, unsigned __int8 a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_audioHoseEnableMATAtmosPlayback(const void *a1, unsigned __int8 a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

void audioStream_audioHoseFlushInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19[0] = *(a1 + 12);
  *(v19 + 12) = *(a1 + 3);
  v3 = APSAudioTransportTimeCopyDebugDesc();
  cf = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseFlushInternal(void *)", 33554482, "[%{ptr}] Flush: %u/%@: %@\n", *a1, *(a1 + 2), v3, *(DerivedStorage + 32));
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseFlushInternal_cold_1();
    RequestDictionary = 0;
    v7 = 4294950534;
    goto LABEL_24;
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 232);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 232) = 0;
  }

  audioStream_updateIsPlayingAndPostNotification(*a1, 0);
  *(DerivedStorage + 312) = 0;
  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 113))
  {
    v5 = *(DerivedStorage + 200);
    if (v5)
    {
      cf = CFRetain(v5);
      if (cf)
      {
        goto LABEL_11;
      }
    }

    else
    {
      cf = 0;
    }

    audioStream_audioHoseFlushInternal_cold_2();
    RequestDictionary = 0;
    v7 = 4294960578;
    goto LABEL_24;
  }

  APSenderSessionGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v7 = 4294954514;
    goto LABEL_19;
  }

  v13 = v12(v11, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
  if (v13)
  {
    v7 = v13;
LABEL_19:
    APSLogErrorAt();
    RequestDictionary = 0;
    goto LABEL_24;
  }

LABEL_11:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    v19[0] = *(a1 + 12);
    *(v19 + 12) = *(a1 + 3);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    mach_absolute_time();
    v7 = APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      v8 = *a1;
      v9 = UpTicksToMilliseconds();
      LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseFlushInternal(void *)", 33554482, "WHAPRO [%{ptr}] Flush response err = %d (time to complete = %lu ms)\n", v8, v7, v9);
    }
  }

  else
  {
    audioStream_audioHoseFlushInternal_cold_3();
    v7 = 4294950535;
  }

LABEL_24:
  v14 = a1[5];
  if (v14)
  {
    v15 = *a1;
    v16 = *(a1 + 2);
    v17 = a1[6];
    v19[0] = *(a1 + 12);
    *(v19 + 12) = *(a1 + 3);
    v14(v15, v16, v19, v7, v17);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseFlushWithinSampleRangeInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v20[0] = *(a1 + 12);
  *(v20 + 12) = *(a1 + 3);
  v3 = APSAudioTransportTimeCopyDebugDesc();
  v20[0] = *(a1 + 44);
  *(v20 + 12) = *(a1 + 7);
  v4 = APSAudioTransportTimeCopyDebugDesc();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseFlushWithinSampleRangeInternal(void *)", 33554482, "[%{ptr}] Flush within range: %u/%@ to %u/%@: %@\n", *a1, *(a1 + 2), v3, *(a1 + 10), v4, *(DerivedStorage + 32));
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseFlushWithinSampleRangeInternal_cold_1();
    RequestDictionary = 0;
    v7 = 4294950534;
    goto LABEL_22;
  }

  if (*(a1 + 3) != *(a1 + 11))
  {
    audioStream_audioHoseFlushWithinSampleRangeInternal_cold_2();
    RequestDictionary = 0;
    v7 = 4294960591;
    goto LABEL_22;
  }

  if (*(DerivedStorage + 113))
  {
    v5 = *(DerivedStorage + 200);
    if (v5)
    {
      v21 = CFRetain(v5);
      if (v21)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v21 = 0;
    }

    audioStream_audioHoseFlushWithinSampleRangeInternal_cold_3();
    RequestDictionary = 0;
    v7 = 4294960578;
    goto LABEL_22;
  }

  APSenderSessionGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v7 = 4294954514;
    goto LABEL_18;
  }

  v13 = v12(v11, @"TransportControlStream", *MEMORY[0x277CBECE8], &v21);
  if (v13)
  {
    v7 = v13;
LABEL_18:
    APSLogErrorAt();
    RequestDictionary = 0;
    goto LABEL_22;
  }

LABEL_10:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    v20[0] = *(a1 + 12);
    *(v20 + 12) = *(a1 + 3);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    CFDictionarySetInt64();
    v20[0] = *(a1 + 44);
    *(v20 + 12) = *(a1 + 7);
    APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    mach_absolute_time();
    v7 = APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      v8 = *a1;
      v9 = UpTicksToMilliseconds();
      LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseFlushWithinSampleRangeInternal(void *)", 33554482, "WHAPRO [%{ptr}] Flush within range response err = %d (time to complete = %lu ms)\n", v8, v7, v9);
    }

    if (v7)
    {
      audioStream_audioHoseFlushWithinSampleRangeInternal_cold_4(v7);
    }
  }

  else
  {
    audioStream_audioHoseFlushWithinSampleRangeInternal_cold_5();
    v7 = 4294950535;
  }

LABEL_22:
  v14 = a1[9];
  if (v14)
  {
    v15 = *a1;
    v16 = *(a1 + 2);
    v17 = *(a1 + 10);
    v18 = a1[10];
    v20[0] = *(a1 + 12);
    *(v20 + 12) = *(a1 + 3);
    v19[0] = *(a1 + 44);
    *(v19 + 12) = *(a1 + 7);
    v14(v15, v16, v20, v17, v19, v7, v18);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  audioStream_releaseAsync(*a1);
}

uint64_t audioStream_audioHoseNotifyAudioAvailableInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 114))
  {
    v4 = *(DerivedStorage + 392);
    v5 = CFRetain(a1);
    dispatch_async_f(v4, v5, audioStream_audioDataDrain);
    return 0;
  }

  FigSimpleMutexLock();
  v8 = *(v3 + 192);
  if (!v8)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v9 = CFRetain(v8);
  FigSimpleMutexUnlock();
  if (v9)
  {
    CUObfuscatedPtr();
    kdebug_trace();
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v10)
    {
      v6 = v10(v9);
      if (!v6)
      {
LABEL_13:
        CFRelease(v9);
        return v6;
      }
    }

    else
    {
      v6 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_13;
  }

  return 0;
}

void audioStream_audioDataDrain(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = audioStream_audioDataBatchCallback(a1, 0, &cf);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) < 1)
    {
      CFRelease(a1);
    }

    else
    {
      dispatch_async_f(*(DerivedStorage + 392), a1, audioStream_audioDataDrain);
    }

    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  CFRelease(v5);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef audioStream_audioDataBatchCallback(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  v33 = 0;
  v32 = 0;
  if (_MergedGlobals_7 == -1)
  {
    if (!a2)
    {
      goto LABEL_3;
    }

LABEL_49:
    v31 = APSSignalErrorAt();
    v8 = 0;
    goto LABEL_65;
  }

  audioStream_audioDataBatchCallback_cold_1();
  if (a2)
  {
    goto LABEL_49;
  }

LABEL_3:
  if (a3)
  {
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 248);
    if (v7)
    {
      v8 = CFRetain(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(DerivedStorage + 329);
    if (*(DerivedStorage + 330))
    {
      v11 = *(DerivedStorage + 264);
      v10 = *(DerivedStorage + 272);
      if (v10)
      {
        v12 = CFRetain(v10);
      }

      else
      {
        v12 = 0;
      }

      v20 = *(DerivedStorage + 280);
      v19 = *(DerivedStorage + 288);
      if (v19)
      {
        v18 = CFRetain(v19);
      }

      else
      {
        v18 = 0;
      }

      FigSimpleMutexUnlock();
      if (v8)
      {
        if (!v11 || !v20)
        {
          if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
          {
            audioStream_audioDataBatchCallback_cold_4(a1, v21, v22);
          }

          v29 = 0;
          goto LABEL_36;
        }

        v23 = (*v11)(v12, a1, &theArray, &v32);
        if (v23)
        {
          v31 = v23;
          audioStream_audioDataBatchCallback_cold_2(v23);
        }

        else
        {
          v24 = (*v20)(v18, a1, &v33);
          if (!v24)
          {
            cf = FigCFArrayCreateConcatenationOfTwoArrays();
            v17 = theArray;
            if (!theArray)
            {
              v25 = 0;
              goto LABEL_28;
            }

LABEL_25:
            v25 = CFArrayGetCount(v17) > 0;
LABEL_28:
            FigSimpleMutexLock();
            *(DerivedStorage + 240) = v32;
            if (v25)
            {
              *(DerivedStorage + 312) = 1;
            }

            FigSimpleMutexUnlock();
            v26 = &unk_280FB1A90;
            v27 = &unk_280FB1A98;
            if (v9)
            {
              v27 = &unk_280FB1AA8;
              v26 = &unk_280FB1AA0;
            }

            if (v32)
            {
              v28 = v27;
            }

            else
            {
              v28 = v26;
            }

            *a3 = CFRetain(*v28);
            v29 = cf;
            cf = 0;
            goto LABEL_36;
          }

          v31 = v24;
          audioStream_audioDataBatchCallback_cold_3(v24);
        }

LABEL_66:
        if (v31 == -72095 || !v31)
        {
          goto LABEL_74;
        }

        goto LABEL_68;
      }

      goto LABEL_58;
    }

    v13 = *(DerivedStorage + 256);
    FigSimpleMutexUnlock();
    if (!v8)
    {
      v18 = 0;
      v12 = 0;
LABEL_58:
      v31 = 4294950531;
      goto LABEL_59;
    }

    if (!v13)
    {
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioDataBatchCallback_cold_6(a1, v14, v15);
      }

      v29 = 0;
      v12 = 0;
      v18 = 0;
      goto LABEL_36;
    }

    v16 = (*(v13 + 8))(v8, a1, &cf, &v32);
    if (!v16)
    {
      v12 = 0;
      v17 = cf;
      if (!cf)
      {
        v25 = 0;
        v18 = 0;
        goto LABEL_28;
      }

      v18 = 0;
      goto LABEL_25;
    }

    v31 = v16;
    audioStream_audioDataBatchCallback_cold_5(v16);
LABEL_65:
    v12 = 0;
    v18 = 0;
    goto LABEL_66;
  }

  v18 = 0;
  v12 = 0;
  v31 = 4294950536;
LABEL_59:
  APSLogErrorAt();
  v8 = 0;
LABEL_68:
  if (gLogCategory_APEndpointStreamBufferedAudio <= 90 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "CFArrayRef audioStream_audioDataBatchCallback(void *, OSStatus, CFArrayRef *)", 33554522, "### stream %{ptr}: audio data buffer processing failed, error: %d\n", a1, v31);
  }

  if (a2)
  {
    audioStream_handleFatalError(a1, a2);
  }

LABEL_74:
  v29 = 0;
  if (v8)
  {
LABEL_36:
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v29;
}

void audioStream_batchMessageTypesInit(CFMutableArrayRef *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  if (!Mutable || (v4 = Mutable, FigCFArrayAppendInt32()) || (*a1 = v4, (v5 = CFArrayCreateMutable(v2, 3, MEMORY[0x277CBF128])) == 0) || (v6 = v5, FigCFArrayAppendInt32()) || FigCFArrayAppendInt32() || FigCFArrayAppendInt32() || (a1[1] = v6, (v7 = CFArrayCreateMutable(v2, 1, MEMORY[0x277CBF128])) == 0) || (v8 = v7, FigCFArrayAppendInt32()) || (a1[2] = v8, (v9 = CFArrayCreateMutable(v2, 3, MEMORY[0x277CBF128])) == 0) || (v10 = v9, FigCFArrayAppendInt32()) || FigCFArrayAppendInt32() || FigCFArrayAppendInt32())
  {
    APSLogErrorAt();
    v11 = CUFatalErrorF(&gLogCategory_APEndpointStreamBufferedAudio, "Failed to initialize BatchMessageTypes");
    audioStream_handleFatalError(v11, v12);
  }

  else
  {
    a1[3] = v10;
  }
}

void audioStream_handleFatalError(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v3, *MEMORY[0x277CC17E0], @"audio data buffer processing failed");
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v3);
  }

  else
  {
    audioStream_handleFatalError_cold_1();
  }
}

void audioStream_audioHoseSetRateAndAnchorTimeInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  v27[0] = 0;
  v25[0] = *MEMORY[0x277CEA038];
  *(v25 + 12) = *(MEMORY[0x277CEA038] + 12);
  v24[0] = *(a1 + 12);
  *(v24 + 12) = *(a1 + 3);
  v3 = APSAudioTransportTimeCopyDebugDesc();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseSetRateAndAnchorTimeInternal_cold_1(a1, DerivedStorage, v3);
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseSetRateAndAnchorTimeInternal_cold_2();
    RequestDictionary = 0;
    v11 = 0;
    v10 = 4294950534;
    goto LABEL_22;
  }

  FigSimpleMutexLock();
  audioStream_updateIsPlayingAndPostNotification(*a1, *(a1 + 2) != 0);
  FigSimpleMutexUnlock();
  v4 = *(DerivedStorage + 200);
  if (v4)
  {
    v27[0] = CFRetain(v4);
    if (v27[0])
    {
      goto LABEL_11;
    }
  }

  else
  {
    v27[0] = 0;
  }

  APSenderSessionGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v10 = 4294954514;
LABEL_16:
    APSLogErrorAt();
    RequestDictionary = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v8 = v7(v6, @"TransportControlStream", *MEMORY[0x277CBECE8], v27);
  if (v8)
  {
    v10 = v8;
    goto LABEL_16;
  }

LABEL_11:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    if (*(a1 + 2) == 1)
    {
      v24[0] = *(a1 + 12);
      *(v24 + 12) = *(a1 + 3);
      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
      v24[0] = *(a1 + 4);
      *(v24 + 12) = *(a1 + 76);
      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
    }

    mach_absolute_time();
    v10 = APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    v24[0] = v25[0];
    *(v24 + 12) = *(v25 + 12);
    v11 = APSAudioTransportTimeCopyDebugDesc();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      v12 = *a1;
      v13 = UpTicksToMilliseconds();
      LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseSetRateAndAnchorTimeInternal(void *)", 33554482, "WHAPRO [%{ptr}] Send SetRateAndAnchorTime response err = %d (time to complete = %lu ms) (rate: %u; firstAvailableTime: %@)\n", v12, v10, v13, *(a1 + 2), v11);
    }
  }

  else
  {
    audioStream_audioHoseSetRateAndAnchorTimeInternal_cold_3();
    v11 = 0;
    v10 = 4294950535;
  }

LABEL_22:
  v14 = a1[12];
  if (v14)
  {
    v15 = *a1;
    v16 = *(a1 + 2);
    v17 = a1[13];
    v24[0] = *(a1 + 12);
    *(v24 + 12) = *(a1 + 3);
    v22 = *(a1 + 5);
    v23 = a1[7];
    v21[0] = v25[0];
    *(v21 + 12) = *(v25 + 12);
    v18[0] = 0;
    v18[1] = 0;
    v19 = 0;
    v20 = 0;
    v14(v15, v16, v24, &v22, v21, v18, v10, v17);
  }

  if (v10)
  {
    FigSimpleMutexLock();
    audioStream_updateIsPlayingAndPostNotification(*a1, 0);
    FigSimpleMutexUnlock();
  }

  CUObfuscatedPtr();
  kdebug_trace();
  if (v3)
  {
    CFRelease(v3);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v27[0])
  {
    CFRelease(v27[0]);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseApplyVolumeFadeInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    audioStream_audioHoseApplyVolumeFadeInternal_cold_1();
  }

  else
  {
    v3 = DerivedStorage;
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      audioStream_audioHoseApplyVolumeFadeInternal_cold_2(a1);
    }

    v4 = *(v3 + 25);
    if (v4 && (v5 = CFRetain(v4)) != 0)
    {
      v6 = v5;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v8 = Mutable;
        CFDictionarySetInt64();
        v10 = *(a1 + 12);
        CMTimeGetSeconds(&v10);
        CFDictionarySetDouble();
        v9 = APTransportStreamSendPlistMessage();
        if (v9)
        {
          audioStream_audioHoseApplyVolumeFadeInternal_cold_3(v9);
        }

        CFRelease(v6);
        CFRelease(v8);
      }

      else
      {
        audioStream_audioHoseApplyVolumeFadeInternal_cold_4(v6);
      }
    }

    else
    {
      audioStream_audioHoseApplyVolumeFadeInternal_cold_5();
    }
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseSetRateInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31[0] = 0;
  v29[0] = *MEMORY[0x277CEA038];
  *(v29 + 12) = *(MEMORY[0x277CEA038] + 12);
  v28[0] = *(a1 + 12);
  *(v28 + 12) = *(a1 + 3);
  cf = APSAudioTransportTimeCopyDebugDesc();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseSetRateInternal(void *)", 33554482, "[%{ptr}] Set Rate Rate: %d TransportTime: %@ %@ \n", *a1, *(a1 + 2), cf, *(DerivedStorage + 32));
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseSetRateInternal_cold_1();
    v15 = 0;
    v14 = 0;
    Int64 = 0;
    v16 = 0;
    RequestDictionary = 0;
    v18 = 0;
    v12 = 4294950534;
    goto LABEL_35;
  }

  FigSimpleMutexLock();
  v3 = *(a1 + 2);
  if (v3 == 1)
  {
    v4 = *(DerivedStorage + 344) - 1;
    *(DerivedStorage + 344) = v4;
    if (v4)
    {
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50)
      {
        if (gLogCategory_APEndpointStreamBufferedAudio == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_33;
          }

          v5 = *(a1 + 2);
        }

        else
        {
          v5 = 1;
        }

        LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseSetRateInternal(void *)", 33554482, "[%{ptr}] Skip SetRate request err = %d (rate: %d; inTransportTime = %@)\n", *a1, 4294949716, v5, cf);
      }

LABEL_33:
      FigSimpleMutexUnlock();
      v12 = 4294949716;
      goto LABEL_34;
    }
  }

  audioStream_updateIsPlayingAndPostNotification(*a1, v3 != 0);
  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 200);
  if (!v6)
  {
    v31[0] = 0;
LABEL_16:
    APSenderSessionGetCMBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      v12 = 4294954514;
LABEL_34:
      APSLogErrorAt();
      v15 = 0;
      v14 = 0;
      Int64 = 0;
      v16 = 0;
      RequestDictionary = 0;
      v18 = 0;
      goto LABEL_35;
    }

    v10 = v9(v8, @"TransportControlStream", *MEMORY[0x277CBECE8], v31);
    if (v10)
    {
      v12 = v10;
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  v31[0] = CFRetain(v6);
  if (!v31[0])
  {
    goto LABEL_16;
  }

LABEL_18:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    if (*(a1 + 2) == 1)
    {
      v28[0] = *(a1 + 12);
      *(v28 + 12) = *(a1 + 3);
      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
    }

    mach_absolute_time();
    v12 = APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    if (v30)
    {
      APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
      Int64 = CFDictionaryGetInt64();
      v14 = CFDictionaryGetInt64();
      v15 = CFDictionaryGetInt64();
      v16 = CFDictionaryGetInt64();
      v17 = CFDictionaryGetInt64();
      if (v17)
      {
        v12 = v17;
      }

      else
      {
        v12 = v12;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
      Int64 = 0;
      v16 = 0;
    }

    v28[0] = v29[0];
    *(v28 + 12) = *(v29 + 12);
    v18 = APSAudioTransportTimeCopyDebugDesc();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      v19 = *a1;
      v20 = UpTicksToMilliseconds();
      LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseSetRateInternal(void *)", 33554482, "WHAPRO [%{ptr}] Send SetRate response err = %d (time to complete = %lu ms) (rate: %u; anchorTransportTime = %@ net = %1.3f(id=%lu)\n", v19, v12, v20, *(a1 + 2), v18, Int64 + v14 * 5.42101086e-20, v15);
    }
  }

  else
  {
    audioStream_audioHoseSetRateInternal_cold_2();
    v15 = 0;
    v14 = 0;
    Int64 = 0;
    v16 = 0;
    v18 = 0;
    v12 = 4294950535;
  }

LABEL_35:
  v21 = a1[5];
  if (v21)
  {
    v22 = *a1;
    v23 = a1[6];
    v28[0] = v29[0];
    *(v28 + 12) = *(v29 + 12);
    v25[0] = v15;
    v25[1] = v14;
    v26 = Int64;
    v27 = v16;
    v21(v22, v28, v25, v12, v23);
  }

  if (v12 != -17580 && v12)
  {
    FigSimpleMutexLock();
    audioStream_updateIsPlayingAndPostNotification(*a1, 0);
    FigSimpleMutexUnlock();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v31[0])
  {
    CFRelease(v31[0]);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseGetAnchorInternal(__CFDictionary **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v22[0] = 0;
  v20[0] = *MEMORY[0x277CEA038];
  *(v20 + 12) = *(MEMORY[0x277CEA038] + 12);
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseGetAnchorInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseGetAnchorInternal_cold_2();
    RequestDictionary = 0;
    v9 = 0;
    v10 = 4294950534;
    goto LABEL_19;
  }

  v3 = *(DerivedStorage + 200);
  if (v3)
  {
    v22[0] = CFRetain(v3);
    if (v22[0])
    {
      goto LABEL_11;
    }
  }

  else
  {
    v22[0] = 0;
  }

  APSenderSessionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v10 = 4294954514;
LABEL_14:
    APSLogErrorAt();
    RequestDictionary = 0;
    v9 = 0;
    goto LABEL_19;
  }

  v7 = v6(v5, @"TransportControlStream", *MEMORY[0x277CBECE8], v22);
  if (v7)
  {
    v10 = v7;
    goto LABEL_14;
  }

LABEL_11:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    CFDictionarySetInt64();
    mach_absolute_time();
    APTransportStreamSendPlistMessageCreatingPlistReply();
    mach_absolute_time();
    v10 = 4294894965;
    v19[0] = v20[0];
    *(v19 + 12) = *(v20 + 12);
    v9 = APSAudioTransportTimeCopyDebugDesc();
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      v11 = *a1;
      v12 = UpTicksToMilliseconds();
      LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseGetAnchorInternal(void *)", 33554482, "WHAPRO [%{ptr}] Send GetAnchor response err = %d (time to complete = %lu ms) (rate: %u; anchorTransportTime = %@ net = %1.3f(id=%lu)\n", v11, 4294894965, v12, *(a1 + 2), v9, 0 + 0 * 5.42101086e-20, 0);
    }
  }

  else
  {
    audioStream_audioHoseGetAnchorInternal_cold_3();
    v9 = 0;
    v10 = 4294950535;
  }

LABEL_19:
  v13 = a1[2];
  if (v13)
  {
    v14 = *a1;
    v15 = a1[3];
    v19[0] = v20[0];
    *(v19 + 12) = *(v20 + 12);
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    v18 = 0;
    (v13)(v14, v19, v16, v10, v15);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v22[0])
  {
    CFRelease(v22[0]);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseSetCryptorInternal(__CFDictionary **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v44 = 0;
  v45 = 0;
  cf = 0;
  v43 = 0;
  v41 = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseSetCryptorInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseSetCryptorInternal_cold_2();
    v18 = 0;
    RequestDictionary = 0;
    Int64 = 4294950534;
    goto LABEL_27;
  }

  if (!*(DerivedStorage + 208))
  {
    audioStream_audioHoseSetCryptorInternal_cold_12();
    v18 = 0;
    RequestDictionary = 0;
    Int64 = 4294950533;
    goto LABEL_27;
  }

  if (!*(DerivedStorage + 120))
  {
    audioStream_audioHoseSetCryptorInternal_cold_11();
    v18 = 0;
LABEL_91:
    RequestDictionary = 0;
    Int64 = 4294950536;
    goto LABEL_27;
  }

  v3 = *(DerivedStorage + 200);
  v4 = MEMORY[0x277CBECE8];
  if (v3)
  {
    v45 = CFRetain(v3);
    if (v45)
    {
      v5 = *v4;
      goto LABEL_13;
    }
  }

  else
  {
    v45 = 0;
  }

  APSenderSessionGetCMBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    Int64 = 4294954514;
    goto LABEL_25;
  }

  v5 = *v4;
  v9 = v8(v7, @"TransportControlStream", v5, &v45);
  if (v9)
  {
    Int64 = v9;
    goto LABEL_25;
  }

LABEL_13:
  v10 = a1[2];
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    Int64 = 4294954514;
LABEL_25:
    APSLogErrorAt();
    v18 = 0;
LABEL_26:
    RequestDictionary = 0;
    goto LABEL_27;
  }

  v12 = v11(v10, *MEMORY[0x277CC0970], v5, &cf);
  if (v12)
  {
    Int64 = v12;
    goto LABEL_25;
  }

  v13 = a1[2];
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    Int64 = 4294954514;
    goto LABEL_25;
  }

  v15 = v14(v13, *MEMORY[0x277CC0978], v5, &v41);
  if (v15)
  {
    Int64 = v15;
    goto LABEL_25;
  }

  if (!*(DerivedStorage + 136))
  {
    if (FigCFEqual())
    {
      if (FigCFEqual())
      {
        v18 = 0;
        goto LABEL_69;
      }

      APSLogErrorAt();
      if (gLogCategory_APEndpointStreamBufferedAudio <= 90 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioHoseSetCryptorInternal_cold_9(a1, v39, v40);
      }
    }

    else
    {
      APSLogErrorAt();
      if (gLogCategory_APEndpointStreamBufferedAudio <= 90 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioHoseSetCryptorInternal_cold_10(a1, v37, v38);
      }
    }

    v18 = 0;
    RequestDictionary = 0;
LABEL_104:
    Int64 = 4294950535;
    goto LABEL_27;
  }

  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (!RequestDictionary)
  {
    audioStream_audioHoseSetCryptorInternal_cold_4();
    v18 = 0;
    goto LABEL_104;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  mach_absolute_time();
  APTransportStreamSendPlistMessageCreatingPlistReply();
  mach_absolute_time();
  if (v44)
  {
    Int64 = CFDictionaryGetInt64();
    if (Int64)
    {
      v18 = 0;
    }

    else
    {
      v21 = *(DerivedStorage + 136);
      if (v21)
      {
        v18 = CFRetain(v21);
      }

      else
      {
        v18 = 0;
      }

      v22 = *(DerivedStorage + 144);
      v23 = cf;
      *(DerivedStorage + 144) = cf;
      if (v23)
      {
        CFRetain(v23);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      Int64 = *(DerivedStorage + 152);
      v24 = v41;
      *(DerivedStorage + 152) = v41;
      if (v24)
      {
        CFRetain(v24);
      }

      if (Int64)
      {
        CFRelease(Int64);
        Int64 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
    Int64 = 4294894965;
  }

  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    v25 = *a1;
    v26 = UpTicksToMilliseconds();
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseSetCryptorInternal(void *)", 33554482, "[%{ptr}] SetCryptor got UpdatePKDProtector response err = %d (time to complete = %lu ms) (cryptorID: 0x%llx; sessionID = 0x%llx)\n", v25, Int64, v26, a1[1], *(DerivedStorage + 120));
  }

  if (Int64)
  {
    audioStream_audioHoseSetCryptorInternal_cold_3(Int64);
    goto LABEL_27;
  }

  CFRelease(RequestDictionary);
  if (v44)
  {
    CFRelease(v44);
    v44 = 0;
  }

LABEL_69:
  v27 = a1[2];
  v28 = *(DerivedStorage + 120);
  v29 = *(CMBaseObjectGetVTable() + 16);
  if (*v29 < 8uLL || (v30 = v29[27]) == 0)
  {
    Int64 = 4294954514;
LABEL_81:
    APSLogErrorAt();
    goto LABEL_26;
  }

  v31 = v30(v27, v28, v18, &v43);
  if (v31)
  {
    Int64 = v31;
    goto LABEL_81;
  }

  if (!v43)
  {
    audioStream_audioHoseSetCryptorInternal_cold_8();
    goto LABEL_91;
  }

  v32 = *(DerivedStorage + 136);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 136) = 0;
  }

  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (!RequestDictionary)
  {
    audioStream_audioHoseSetCryptorInternal_cold_7();
    goto LABEL_104;
  }

  v33 = CFDictionarySetInt64();
  if (v33)
  {
    Int64 = v33;
    audioStream_audioHoseSetCryptorInternal_cold_5(v33);
  }

  else
  {
    CFDataGetBytePtr(v43);
    CFDataGetLength(v43);
    v34 = CFDictionarySetData();
    if (v34)
    {
      Int64 = v34;
      audioStream_audioHoseSetCryptorInternal_cold_6(v34);
    }

    else
    {
      mach_absolute_time();
      APTransportStreamSendPlistMessageCreatingPlistReply();
      mach_absolute_time();
      if (v44)
      {
        Int64 = CFDictionaryGetInt64();
      }

      else
      {
        Int64 = 4294894965;
      }

      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        v35 = *a1;
        v36 = UpTicksToMilliseconds();
        LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseSetCryptorInternal(void *)", 33554482, "[%{ptr}] SetCryptor got UpdatePKDCryptorEncryptionKey response err = %d (time to complete = %lu ms) (cryptorID: 0x%llx; sessionID = 0x%llx)\n", v35, Int64, v36, a1[1], *(DerivedStorage + 120));
      }
    }
  }

LABEL_27:
  v19 = a1[3];
  if (v19)
  {
    (v19)(*a1, a1[1], Int64, a1[4]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  v20 = a1[2];
  if (v20)
  {
    CFRelease(v20);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseSetMagicCookieInternal(__CFDictionary **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseSetMagicCookieInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    audioStream_audioHoseSetMagicCookieInternal_cold_2();
    RequestDictionary = 0;
    v11 = 4294950534;
    goto LABEL_21;
  }

  if (!*(DerivedStorage + 208))
  {
    audioStream_audioHoseSetMagicCookieInternal_cold_6();
    RequestDictionary = 0;
    v11 = 4294950533;
    goto LABEL_21;
  }

  v3 = *(DerivedStorage + 200);
  if (v3)
  {
    cf = CFRetain(v3);
    if (cf)
    {
      goto LABEL_12;
    }
  }

  else
  {
    cf = 0;
  }

  APSenderSessionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v11 = 4294954514;
LABEL_19:
    APSLogErrorAt();
    RequestDictionary = 0;
    goto LABEL_21;
  }

  v7 = v6(v5, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
  if (v7)
  {
    v11 = v7;
    goto LABEL_19;
  }

LABEL_12:
  RequestDictionary = audioStream_createRequestDictionary(*a1);
  if (RequestDictionary)
  {
    v9 = CFDictionarySetInt64();
    if (v9)
    {
      v11 = v9;
      audioStream_audioHoseSetMagicCookieInternal_cold_3(v9);
    }

    else
    {
      CFDataGetBytePtr(a1[2]);
      CFDataGetLength(a1[2]);
      v10 = CFDictionarySetData();
      if (v10)
      {
        v11 = v10;
        audioStream_audioHoseSetMagicCookieInternal_cold_4(v10);
      }

      else
      {
        mach_absolute_time();
        v11 = APTransportStreamSendPlistMessageCreatingPlistReply();
        mach_absolute_time();
        if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
        {
          v12 = *a1;
          v13 = UpTicksToMilliseconds();
          LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_audioHoseSetMagicCookieInternal(void *)", 33554482, "[%{ptr}] SetMagicCookie response err = %d (time to complete = %lu ms) (magicCookieID: 0x%llx)\n", v12, v11, v13, a1[1]);
        }
      }
    }
  }

  else
  {
    audioStream_audioHoseSetMagicCookieInternal_cold_5();
    v11 = 4294950535;
  }

LABEL_21:
  v14 = a1[3];
  if (v14)
  {
    (v14)(*a1, a1[1], v11, a1[4]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (RequestDictionary)
  {
    CFRelease(RequestDictionary);
  }

  v15 = a1[2];
  if (v15)
  {
    CFRelease(v15);
  }

  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseEnableLoudnessNormalizationInternal(void *a1)
{
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_1();
    goto LABEL_16;
  }

  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_2(a1, v2, v3);
  }

  APSenderSessionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(v5, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
    if (!v7)
    {
      RequestDictionary = audioStream_createRequestDictionary(*a1);
      v9 = RequestDictionary;
      if (RequestDictionary)
      {
        v10 = MEMORY[0x277CBED28];
        if (!*(a1 + 8))
        {
          v10 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(RequestDictionary, @"loudnessNormalizationEnabled", *v10);
        v11 = APTransportStreamSendPlistMessage();
        if (v11)
        {
          audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_3(v11);
        }
      }

      else
      {
        audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_4();
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  audioStream_audioHoseEnableLoudnessNormalizationInternal_cold_5(v7);
  v9 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

LABEL_16:
  audioStream_releaseAsync(*a1);
}

void audioStream_audioHoseEnableMATAtmosPlaybackInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_1();
  }

  else
  {
    v5 = DerivedStorage;
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_2(a1, v3, v4);
    }

    v6 = *(v5 + 25);
    if (v6 && (v7 = CFRetain(v6)) != 0)
    {
      v8 = v7;
      RequestDictionary = audioStream_createRequestDictionary(*a1);
      if (RequestDictionary)
      {
        v10 = RequestDictionary;
        v11 = MEMORY[0x277CBED28];
        if (!*(a1 + 8))
        {
          v11 = MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(RequestDictionary, @"matAtmosPlaybackEnabled", *v11);
        v12 = APTransportStreamSendPlistMessage();
        if (v12)
        {
          audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_3(v12);
        }

        CFRelease(v8);
        CFRelease(v10);
      }

      else
      {
        audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_4(v8);
      }
    }

    else
    {
      audioStream_audioHoseEnableMATAtmosPlaybackInternal_cold_5();
    }
  }

  v13 = *a1;

  audioStream_releaseAsync(v13);
}

__CFString *audioStream_protocolDriverHoseControlProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamBuffered <APSAudioProtocolDriverHoseControlProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioStream_protocolDriverHoseLegacyFlush(const void *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v6[0] = *a3;
  *(v6 + 12) = *(a3 + 12);
  audioStream_audioHoseFlush(a1, a2, v6, a4, a5);
  return 0;
}

uint64_t audioStream_protocolDriverHoseLegacyFlushWithinSampleRange(const void *a1, int a2, _OWORD *a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v9[0] = *a3;
  *(v9 + 12) = *(a3 + 12);
  v8[0] = *a5;
  *(v8 + 12) = *(a5 + 12);
  audioStream_audioHoseFlushWithinSampleRange(a1, a2, v9, a4, v8, a6, a7);
  return 0;
}

uint64_t audioStream_protocolDriverHoseSetRateAndAnchorTime(const void *a1, int a2, _OWORD *a3, __int128 *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v11[0] = *a3;
  *(v11 + 12) = *(a3 + 12);
  v9 = *a4;
  v10 = *(a4 + 2);
  v8[0] = *a5;
  *(v8 + 12) = *(a5 + 12);
  audioStream_audioHoseSetRateAndAnchorTime(a1, a2, v11, &v9, v8, a6, a7);
  return 0;
}

uint64_t audioStream_protocolDriverHoseSetRate(const void *a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v6[0] = *a3;
  *(v6 + 12) = *(a3 + 12);
  audioStream_audioHoseSetRate(a1, a2, v6, a4, a5);
  return 0;
}

__CFString *audioStream_protocolDriverHoseDataBaseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamBufferedAudio <APSAudioProtocolDriverHoseDataBaseProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioStream_dataHoseSetLastSentMediaTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(a2 + 16);
  *(DerivedStorage + 360) = *a2;
  *(DerivedStorage + 376) = v4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioStream_dataHoseGetLastSentMediaTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 360);
    *(a2 + 16) = *(v4 + 376);
    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    audioStream_dataHoseGetLastSentMediaTime_cold_1();
    return 4294894965;
  }
}

__CFString *audioStream_protocolDriverHoseDataAPATProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamBufferedAudio <APSAudioProtocolDriverHoseDataAPATProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioStream_dataHoseAPATSetRTPCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 272);
  *(DerivedStorage + 264) = a2;
  *(DerivedStorage + 272) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioStream_dataHoseAPATSignalRTPDataAvailable(const void *a1)
{
  v1 = audioStream_audioHoseNotifyAudioAvailableInternal(a1);
  v2 = v1;
  if (v1)
  {
    audioStream_dataHoseAPATSignalRTPDataAvailable_cold_1(v1);
  }

  return v2;
}

uint64_t audioStream_dataHoseAPATSetRTCPCallbacks(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 288);
  *(DerivedStorage + 280) = a2;
  *(DerivedStorage + 288) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioStream_dataHoseAPATSignalRTCPDataAvailable(const void *a1)
{
  v1 = audioStream_audioHoseNotifyAudioAvailableInternal(a1);
  v2 = v1;
  if (v1)
  {
    audioStream_dataHoseAPATSignalRTCPDataAvailable_cold_1(v1);
  }

  return v2;
}

uint64_t audioStream_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t audioStream_Control(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "OSStatus audioStream_Control(FigEndpointStreamRef, CFStringRef, CFDictionaryRef)", 33554482, "[%{ptr}] Control Command '%@'", a1, a2);
  }

  if (FigCFEqual())
  {
    if (*(DerivedStorage + 115))
    {
      goto LABEL_10;
    }

    audioStream_Control_cold_1();
  }

  else if (FigCFEqual())
  {
    if (*(DerivedStorage + 115))
    {
LABEL_10:
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      return 0;
    }

    audioStream_Control_cold_2();
  }

  return 4294950536;
}

void audioStream_suspendOrResumeCompletionCallback(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24));
  v2 = *a1;

  CFRelease(v2);
}

void audioStream_receivedAudioDataMessage(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  values = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamBufferedAudio <= 30 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_receivedAudioDataMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", 33554462, "[%{ptr}] AudioData message '%C'\n", a4, a2, values);
  }

  if (a2 != 1684501101)
  {
    if (a2 == 1684628836)
    {
      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_receivedAudioDataMessage_cold_4(a4, v6, v7);
      }

      Empty = CFDictionaryGetEmpty();

      audioStream_Suspend(a4, Empty, 0, 0);
    }

    return;
  }

  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 330);
  if (*(*(DerivedStorage + 280) + 8))
  {
    v11 = *(*(DerivedStorage + 280) + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 288);
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  FigSimpleMutexUnlock();
  if (!v10)
  {
    audioStream_receivedAudioDataMessage_cold_3(a4, &v17);
LABEL_32:
    v15 = v17;
    goto LABEL_23;
  }

  if (!v11)
  {
    audioStream_receivedAudioDataMessage_cold_2();
    v15 = 0;
    goto LABEL_23;
  }

  v14 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
  if (!v14)
  {
    audioStream_receivedAudioDataMessage_cold_1(a4, &v17);
    goto LABEL_32;
  }

  v15 = v14;
  v11(v13, a4, v14);
LABEL_23:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

CFTypeRef audioStream_audioDataCallback(uint64_t a1, uint64_t a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  theArray = 0;
  ConcatenationOfTwoArrays = 0;
  v33 = 0;
  if (a2)
  {
    v29 = APSSignalErrorAt();
    cf = 0;
    MutableCopy = 0;
    v14 = 0;
    v17 = 0;
    goto LABEL_71;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  v8 = *(v7 + 248);
  if (v8)
  {
    cf = CFRetain(v8);
  }

  else
  {
    cf = 0;
  }

  v36 = *(v7 + 240);
  v31 = *(v7 + 329);
  v9 = *(v7 + 330);
  MutableCopy = *(v7 + 232);
  *(v7 + 232) = 0;
  v11 = *(v7 + 256);
  v30 = a3;
  if (v9)
  {
    v13 = *(v7 + 264);
    v12 = *(v7 + 272);
    if (v12)
    {
      v14 = CFRetain(v12);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v7 + 280);
    v16 = *(v7 + 288);
    if (v16)
    {
      v17 = CFRetain(v16);
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v17 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  if (cf)
  {
    if (MutableCopy && CFArrayGetCount(MutableCopy))
    {
      v20 = 1;
LABEL_26:
      if (CFArrayGetCount(MutableCopy))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 0);
        v25 = CFRetain(ValueAtIndex);
        CFArrayRemoveValueAtIndex(MutableCopy, 0);
        if (v36 && !CFArrayGetCount(MutableCopy))
        {
          v26 = 1634754917;
          if (!v31)
          {
            v26 = 1650814818;
          }
        }

        else if (v31)
        {
          v26 = 1634754914;
        }

        else
        {
          v26 = 1651861089;
        }

        *v30 = v26;
        goto LABEL_41;
      }

LABEL_32:
      v25 = 0;
LABEL_41:
      FigSimpleMutexLock();
      *(v7 + 240) = v36;
      if (!v20)
      {
        *(v7 + 312) = 1;
      }

      *(v7 + 232) = MutableCopy;
      FigSimpleMutexUnlock();
      MutableCopy = 0;
      goto LABEL_44;
    }

    if (v9)
    {
      if (v13 && v15)
      {
        v21 = (*v13)(v14, a1, &theArray, &v36);
        if (v21)
        {
          v29 = v21;
          audioStream_audioDataCallback_cold_1(v21);
        }

        else
        {
          v22 = (*v15)(v17, a1, &v33);
          if (!v22)
          {
            ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
            v23 = theArray;
            if (theArray)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v29 = v22;
          audioStream_audioDataCallback_cold_2(v22);
        }

        goto LABEL_71;
      }

      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioDataCallback_cold_3(a1, v18, v19);
      }
    }

    else
    {
      if (v11)
      {
        v27 = (*(v11 + 8))(cf, a1, &ConcatenationOfTwoArrays, &v36);
        if (!v27)
        {
          v23 = ConcatenationOfTwoArrays;
          if (ConcatenationOfTwoArrays)
          {
LABEL_23:
            v20 = CFArrayGetCount(v23) < 1;
            if (!MutableCopy)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

LABEL_36:
          v20 = 1;
          if (!MutableCopy)
          {
LABEL_25:
            MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, ConcatenationOfTwoArrays);
            if (!MutableCopy)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          }

LABEL_24:
          CFRelease(MutableCopy);
          goto LABEL_25;
        }

        v29 = v27;
        audioStream_audioDataCallback_cold_4(v27);
LABEL_71:
        if (v29 == -72095 || !v29)
        {
          goto LABEL_79;
        }

        goto LABEL_73;
      }

      if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
      {
        audioStream_audioDataCallback_cold_5(a1, v18, v19);
      }
    }

    v25 = 0;
LABEL_44:
    CFRelease(cf);
    goto LABEL_45;
  }

  audioStream_audioDataCallback_cold_6();
  cf = 0;
  v29 = 4294950531;
LABEL_73:
  if (gLogCategory_APEndpointStreamBufferedAudio <= 90 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "CMBlockBufferRef audioStream_audioDataCallback(void *, OSStatus, OSType *)", 33554522, "### stream %{ptr}: audio data buffer processing failed, error: %d\n", a1, v29);
  }

  if (a2)
  {
    audioStream_handleFatalError(a1, a2);
  }

LABEL_79:
  v25 = 0;
  if (cf)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (ConcatenationOfTwoArrays)
  {
    CFRelease(ConcatenationOfTwoArrays);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v25;
}

void audioStream_receivedMediaDataEventMessage(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamBufferedAudio, "void audioStream_receivedMediaDataEventMessage(FigTransportStreamRef, OSType, CMBlockBufferRef, void *)", 33554482, "[%{ptr}] MDE request '%C'\n", a4, a2);
  }

  if (a2 == 1684628836)
  {
    if (gLogCategory_APEndpointStreamBufferedAudio <= 50 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
    {
      audioStream_receivedMediaDataEventMessage_cold_1(a4, a2, a3);
    }

    Empty = CFDictionaryGetEmpty();

    audioStream_Suspend(a4, Empty, 0, 0);
  }
}

uint64_t audioStream_copyTransportFormatDescriptionForSourceContentFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  APSAudioFormatDescriptionListGetForBufferedSender();
  IntersectionList = APSAudioFormatDescriptionListCreateIntersectionList();
  FigSimpleMutexUnlock();
  if (IntersectionList)
  {
    audioStream_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_1(IntersectionList);
  }

  else
  {
    v4 = APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription();
    IntersectionList = v4;
    if (v4)
    {
      audioStream_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_2(v4);
    }
  }

  return IntersectionList;
}

uint64_t audioStream_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, BOOL *a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointStreamBufferedAudio <= 10 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_isPassthroughSupportedForFormatDescription_cold_1(a1);
  }

  FigSimpleMutexLock();
  if (a3)
  {
    if (APSSettingsIsFeatureEnabled())
    {
      v6 = APSAudioFormatDescriptionCreateWithFigEndpointStreamAudioFormatDescription();
      if (v6)
      {
        v10 = v6;
        audioStream_isPassthroughSupportedForFormatDescription_cold_2(v6);
      }

      else
      {
        v7 = "F";
        if (APSAudioFormatDescriptionListContainsFormat())
        {
          IsPassthroughFormatForCurrentDeviceAsSender = APSAudioFormatDescriptionIsPassthroughFormatForCurrentDeviceAsSender();
          v9 = IsPassthroughFormatForCurrentDeviceAsSender != 0;
          if (IsPassthroughFormatForCurrentDeviceAsSender)
          {
            v7 = "T";
          }
        }

        else
        {
          v9 = 0;
        }

        v12 = 0;
        if (gLogCategory_APEndpointStreamBufferedAudio <= 10 && (gLogCategory_APEndpointStreamBufferedAudio != -1 || _LogCategory_Initialize()))
        {
          audioStream_isPassthroughSupportedForFormatDescription_cold_3((DerivedStorage + 184), &v12, a1, v7);
        }

        v10 = 0;
        *a3 = v9;
      }
    }

    else
    {
      v10 = 0;
      *a3 = 0;
    }
  }

  else
  {
    audioStream_isPassthroughSupportedForFormatDescription_cold_4();
    v10 = 4294950536;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t APMessageRingBufferedGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_8 != -1)
  {
    APMessageRingBufferedGetTypeID_cold_1();
  }

  return qword_280FB1AB8;
}

uint64_t ring_getTypeID_0(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMessageRingBufferedCreate(uint64_t a1, size_t a2, malloc_zone_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (0x10000 % a2)
  {
    APMessageRingBufferedCreate_cold_1();
    return 4294960591;
  }

  if (!a4)
  {
    APMessageRingBufferedCreate_cold_6();
    return 4294960591;
  }

  if (!a6)
  {
    APMessageRingBufferedCreate_cold_5();
    return 4294960591;
  }

  if (_MergedGlobals_8 != -1)
  {
    APMessageRingBufferedGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APMessageRingBufferedCreate_cold_4();
    return 4294960568;
  }

  v16 = Instance;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  *(Instance + 4) = 0;
  RandomBytes();
  *(v16 + 5) &= 0xFFFFFFu;
  if (!a3)
  {
    a3 = malloc_default_zone();
  }

  *(v16 + 5) = a3;
  v17 = malloc_type_zone_calloc(a3, a2, 0x50uLL, 0x102004088E31008uLL);
  *(v16 + 4) = v17;
  if (!v17)
  {
    APMessageRingBufferedCreate_cold_3(v16);
    return 4294960568;
  }

  *(v16 + 3) = a2;
  *(v16 + 6) = a4;
  *(v16 + 7) = a5;
  *(v16 + 8) = a6;
  *(v16 + 9) = a7;
  if (gLogCategory_APMessageRingBuffered <= 50 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMessageRingBuffered, "OSStatus APMessageRingBufferedCreate(CFAllocatorRef, size_t, malloc_zone_t *, APMessageRingBufferedCreateMessageBackingCallback, void *, APMessageRingBufferedSetMessageSequenceNumberCallback, void *, APMessageRingBufferedRef *)", 33554482, "APMessageRingBuffered %p created with capacity %d first seq number = %u\n", v16, a2, *(v16 + 5));
  }

  result = 0;
  *a8 = v16;
  return result;
}

uint64_t APMessageRingBufferedGetByteCountAtIndex(uint64_t a1, unsigned int a2, int *a3)
{
  if (a3)
  {
    v3 = *(a1 + 16);
    if (v3 == a2)
    {
      result = 0;
      *a3 = 0;
    }

    else
    {
      v5 = *(*(a1 + 32) + 80 * (a2 % *(a1 + 24)) + 72) - *(*(a1 + 32) + 80 * (v3 % *(a1 + 24)) + 72);
      *a3 = v5;
      if (v5 <= 0)
      {
        APMessageRingBufferedGetByteCountAtIndex_cold_1();
        return 4294960584;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    APMessageRingBufferedGetByteCountAtIndex_cold_2();
    return 4294960591;
  }

  return result;
}

uint64_t APMessageRingBufferedGetTotalByteCount(uint64_t a1, int *a2)
{
  if (!a2)
  {
    v3 = 4294960591;
LABEL_7:
    APSLogErrorAt();
    return v3;
  }

  v2 = *(*(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24)) + 72) - *(*(a1 + 32) + 80 * (*(a1 + 16) % *(a1 + 24)) + 72);
  *a2 = v2;
  if (v2 < 0)
  {
    v3 = 4294960584;
    goto LABEL_7;
  }

  return 0;
}

unint64_t APMessageRingBufferedGetFirstValidReadIndex(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 16);
  if (a2)
  {
    *a2 = *(*(a1 + 32) + 80 * (result % *(a1 + 24)) + 64);
  }

  return result;
}

uint64_t APMessageRingBufferedGetLastValidReadIndexAndTimestamp(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(a1 + 18) - 1;
  if (a2)
  {
    *a2 = *(*(a1 + 32) + 80 * ((*(a1 + 18) - 1) % *(a1 + 24)) + 64);
  }

  if (a3)
  {
    v4 = *(a1 + 32) + 80 * (v3 % *(a1 + 24));
    v5 = *(v4 + 16);
    *(a3 + 16) = *(v4 + 32);
    *a3 = v5;
  }

  return v3;
}

uint64_t APMessageRingBufferedPruneMessagesUntilTimestamp(uint64_t a1, void *a2, _WORD *a3)
{
  if (*(a2 + 12))
  {
    if (gLogCategory_APMessageRingBuffered <= 20 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
    {
      APMessageRingBufferedPruneMessagesUntilTimestamp_cold_1();
    }

    v6 = *(a1 + 16);
    if (v6 != *(a1 + 18))
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      do
      {
        v9 = v8 + 80 * (v6 % v7);
        v10 = *(v9 + 16);
        time1.epoch = *(v9 + 32);
        *&time1.value = v10;
        time2 = *a2;
        if (CMTimeCompare(&time1, &time2) != -1)
        {
          break;
        }

        if (gLogCategory_APMessageRingBuffered <= 10 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APMessageRingBuffered, "OSStatus APMessageRingBufferedPruneMessagesUntilTimestamp(APMessageRingBufferedRef, CMTime, uint16_t *)", 33554442, "Prune message ring inTS = %u idx = %d TSatIdx = %u\n", *a2, v6, *(*(a1 + 32) + 80 * (v6 % *(a1 + 24)) + 16));
        }

        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        v11 = v6 % v7;
        v12 = v8 + 80 * v11;
        *(v12 + 64) = -1;
        if (*v12)
        {
          CFRelease(*v12);
          v7 = *(a1 + 24);
          v8 = *(a1 + 32);
          v11 = v6 % v7;
          *(v8 + 80 * v11) = 0;
        }

        v13 = *(v8 + 80 * v11 + 8);
        if (v13)
        {
          CFRelease(v13);
          v7 = *(a1 + 24);
          v8 = *(a1 + 32);
          *(v8 + 80 * (v6 % v7) + 8) = 0;
        }

        ++*(a1 + 16);
        LOWORD(v6) = v6 + 1;
      }

      while (*(a1 + 18) != v6);
    }

    result = 0;
    if (a3)
    {
      *a3 = *(a1 + 16);
    }
  }

  else
  {
    APMessageRingBufferedPruneMessagesUntilTimestamp_cold_2();
    return 4294960591;
  }

  return result;
}

uint64_t APMessageRingBufferedPruneMessagesFromTimestamp(uint64_t a1, CMTime *a2, _WORD *a3, int *a4, int *a5)
{
  if ((a2->flags & 1) == 0)
  {
    APMessageRingBufferedPruneMessagesFromTimestamp_cold_4();
    return 4294960591;
  }

  v10 = *(a1 + 20);
  v11 = *(a1 + 18);
  if (gLogCategory_APMessageRingBuffered > 50)
  {
    goto LABEL_6;
  }

  v12 = *(a1 + 20);
  v13 = *(a1 + 18);
  if (gLogCategory_APMessageRingBuffered == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_6;
    }

    v13 = *(a1 + 18);
    v12 = *(a1 + 20);
  }

  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = v15 + 80 * (*(a1 + 16) % v14);
  v17 = v15 + 80 * ((v13 - 1) % v14);
  LogPrintF(&gLogCategory_APMessageRingBuffered, "OSStatus APMessageRingBufferedPruneMessagesFromTimestamp(APMessageRingBufferedRef, CMTime, uint16_t *, uint32_t *, uint32_t *)", 33554482, "Prune message ring from timestamp start inTS.val = %u inTS.ts = %d ReadIdx = %d ReadSeq# = %d ReadTS.val = %u ReadTS.ts = %d LastMsgSeq# = %d LastMsgTS.val = %u LastMsgTS.ts = %d WriteIdx = %u Next Sequence # = %u\n", a2->value, a2->timescale, *(a1 + 16), *(v16 + 64), *(v16 + 16), *(v16 + 24), *(v17 + 64), *(v17 + 16), *(v17 + 24), v13, v12);
LABEL_6:
  v18 = *(a1 + 16);
  if (v18 == v11)
  {
    goto LABEL_25;
  }

  v19 = 0;
  do
  {
    v20 = *(a1 + 32) + 80 * (v18 % *(a1 + 24));
    v21 = *(v20 + 16);
    time1.epoch = *(v20 + 32);
    *&time1.value = v21;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) != 1)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 24);
    v22 = *(a1 + 32);
    v24 = v18 % v23;
    v25 = v22 + 80 * v24;
    if (v19)
    {
      *(v25 + 64) = -1;
    }

    else
    {
      v10 = *(v25 + 64);
      *(v25 + 64) = -1;
      *(a1 + 18) = v18;
      if ((*(a1 + 16) - v18) >= 1)
      {
        APMessageRingBufferedPruneMessagesFromTimestamp_cold_1();
        return 4294960591;
      }

      if (gLogCategory_APMessageRingBuffered > 50)
      {
        goto LABEL_16;
      }

      if (gLogCategory_APMessageRingBuffered == -1)
      {
        v26 = _LogCategory_Initialize();
        v23 = *(a1 + 24);
        v22 = *(a1 + 32);
        if (!v26)
        {
          goto LABEL_16;
        }

        v24 = v18 % v23;
      }

      LogPrintF(&gLogCategory_APMessageRingBuffered, "OSStatus APMessageRingBufferedPruneMessagesFromTimestamp(APMessageRingBufferedRef, CMTime, uint16_t *, uint32_t *, uint32_t *)", 33554482, "Prune message ring from timestamp inTS = %u idx = %d Seq#atIdx = %u TSatIdx = %u\n", a2->value, v18, v10, *(v22 + 80 * v24 + 16));
      v23 = *(a1 + 24);
      v22 = *(a1 + 32);
    }

LABEL_16:
    v27 = v18 % v23;
    v28 = *(v22 + 80 * v27);
    if (v28)
    {
      CFRelease(v28);
      v22 = *(a1 + 32);
      v27 = v18 % *(a1 + 24);
      *(v22 + 80 * v27) = 0;
    }

    v29 = *(v22 + 80 * v27 + 8);
    if (v29)
    {
      CFRelease(v29);
      *(*(a1 + 32) + 80 * (v18 % *(a1 + 24)) + 8) = 0;
    }

    v19 = 1;
LABEL_21:
    LOWORD(v18) = v18 + 1;
  }

  while (v11 != v18);
  if (v19)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (gLogCategory_APMessageRingBuffered <= 90 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
  {
    APMessageRingBufferedPruneMessagesFromTimestamp_cold_2();
    if (a3)
    {
LABEL_29:
      *a3 = *(a1 + 18);
    }
  }

  else
  {
LABEL_28:
    if (a3)
    {
      goto LABEL_29;
    }
  }

  if (a4)
  {
    *a4 = v10;
    if (gLogCategory_APMessageRingBuffered <= 50 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
    {
      APMessageRingBufferedPruneMessagesFromTimestamp_cold_3(v10);
      if (!a5)
      {
        return 0;
      }

LABEL_35:
      v30 = *(a1 + 20);
      *a5 = v30;
      if (gLogCategory_APMessageRingBuffered > 50)
      {
        return 0;
      }

      if (gLogCategory_APMessageRingBuffered == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          return result;
        }

        v30 = *(a1 + 20);
      }

      LogPrintF(&gLogCategory_APMessageRingBuffered, "OSStatus APMessageRingBufferedPruneMessagesFromTimestamp(APMessageRingBufferedRef, CMTime, uint16_t *, uint32_t *, uint32_t *)", 33554482, "Prune message ring from timestamp: next write seq #: %u\n", v30);
      return 0;
    }
  }

  if (a5)
  {
    goto LABEL_35;
  }

  return 0;
}

uint64_t APMessageRingBufferedGetNextFreeBacking(uint64_t a1, size_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 18);
  if (v2 == (v3 - *(a1 + 16)) + 1)
  {
    return 0;
  }

  v7 = v3 % v2;
  v8 = *(a1 + 32);
  v9 = v8 + 80 * v7;
  v11 = *(v9 + 8);
  v10 = v9 + 8;
  if (!v11)
  {
    v12 = (*(a1 + 48))(*(a1 + 56), a2, v10);
    if (v12)
    {
      APMessageRingBufferedGetNextFreeBacking_cold_1(v12);
      return 0;
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 18) % *(a1 + 24);
  }

  DataLength = CMBlockBufferGetDataLength(*(v8 + 80 * v7 + 8));
  if (a2)
  {
    v14 = DataLength;
    if (DataLength < a2)
    {
      if (gLogCategory_APMessageRingBuffered <= 50 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APMessageRingBuffered, "CMBlockBufferRef APMessageRingBufferedGetNextFreeBacking(APMessageRingBufferedRef, size_t)", 33554482, "MRB [%{ptr}] messageBackingSize(%u) smaller than requested packetSize(%u).  Remake.\n", a1, v14, a2);
      }

      v15 = *(a1 + 32);
      v16 = *(a1 + 18) % *(a1 + 24);
      v17 = *(v15 + 80 * v16 + 8);
      if (v17)
      {
        CFRelease(v17);
        v15 = *(a1 + 32);
        v16 = *(a1 + 18) % *(a1 + 24);
        *(v15 + 80 * v16 + 8) = 0;
      }

      v18 = (*(a1 + 48))(*(a1 + 56), a2, v15 + 80 * v16 + 8);
      if (v18)
      {
        APMessageRingBufferedGetNextFreeBacking_cold_2(v18);
        return 0;
      }
    }
  }

  return *(*(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24)) + 8);
}

uint64_t APMessageRingBufferedEnqueueMessageForSending(uint64_t a1, CMBlockBufferRef theBuffer, void *a3, __int128 *a4)
{
  v28 = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  v8 = (*(a1 + 18) - *(a1 + 16));
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = ((v8 / v9) * 100.0);
  }

  else
  {
    v10 = 0.0;
  }

  if (v9 == v8 + 1)
  {
    APMessageRingBufferedEnqueueMessageForSending_cold_3();
    return 4294960587;
  }

  else
  {
    CMBlockBufferGetDataPointer(theBuffer, 0, 0, &totalLengthOut, &dataPointerOut);
    NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(a1, 0);
    CMBlockBufferGetDataPointer(NextFreeBacking, 0, 0, 0, &v28);
    if (dataPointerOut == v28)
    {
      v12 = (*(a1 + 64))(theBuffer, *(a1 + 20), *(a1 + 72));
      if (v12)
      {
        v15 = v12;
        APMessageRingBufferedEnqueueMessageForSending_cold_2(v12);
      }

      else
      {
        if (gLogCategory_APMessageRingBuffered <= 10 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APMessageRingBuffered, "OSStatus APMessageRingBufferedEnqueueMessageForSending(APMessageRingBufferedRef, CMBlockBufferRef, CMTime, CMTime)", 33554442, "MRB [%{ptr}] Enqueue message Idx %d SeqNum %u Timestamp %u (Buffer fullness count %u Capacity %d Fullness percent %.2f%%)\n", a1, *(a1 + 18), *(a1 + 20), *a3, v8, *(a1 + 24), *&v10);
        }

        if (gLogCategory_APMessageRingBufferedFullness <= 50 && (gLogCategory_APMessageRingBufferedFullness != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APMessageRingBufferedFullness, "OSStatus APMessageRingBufferedEnqueueMessageForSending(APMessageRingBufferedRef, CMBlockBufferRef, CMTime, CMTime)", 33554482, "MRB [%{ptr}] Enqueue message Idx %d SeqNum %u Timestamp %u (Buffer fullness count %u Capacity %d Fullness percent %.2f%%)\n", a1, *(a1 + 18), *(a1 + 20), *a3, v8, *(a1 + 24), *&v10);
        }

        v13 = (*(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24)));
        v14 = *v13;
        if (theBuffer)
        {
          CFRetain(theBuffer);
        }

        *v13 = theBuffer;
        if (v14)
        {
          CFRelease(v14);
        }

        v15 = 0;
        v16 = *(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24));
        v17 = *a3;
        *(v16 + 32) = a3[2];
        *(v16 + 16) = v17;
        v18 = *(a1 + 32) + 80 * (*(a1 + 18) % *(a1 + 24));
        v19 = *a4;
        *(v18 + 56) = *(a4 + 2);
        *(v18 + 40) = v19;
        v20 = *(a1 + 18);
        v21 = *(a1 + 24);
        v22 = *(a1 + 32);
        v23 = v20 % v21;
        LOWORD(v20) = v20 + 1;
        v24 = *(a1 + 20);
        v25 = v22 + 80 * v23;
        *(v25 + 64) = v24;
        *(v22 + 80 * (v20 % v21) + 72) = totalLengthOut + *(v25 + 72);
        *(a1 + 20) = (v24 + 1) & 0xFFFFFF;
        *(a1 + 18) = v20;
      }
    }

    else
    {
      APMessageRingBufferedEnqueueMessageForSending_cold_1();
      return 4294960591;
    }
  }

  return v15;
}

void ring_Finalize_0(uint64_t a1)
{
  if (gLogCategory_APMessageRingBuffered <= 30 && (gLogCategory_APMessageRingBuffered != -1 || _LogCategory_Initialize()))
  {
    ring_Finalize_cold_1_0(a1);
  }

  v2 = *(a1 + 32);
  if (*(a1 + 24))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *&v2[v3];
      if (v5)
      {
        CFRelease(v5);
        v2 = *(a1 + 32);
        *&v2[v3] = 0;
      }

      v6 = *&v2[v3 + 8];
      if (v6)
      {
        CFRelease(v6);
        v2 = *(a1 + 32);
        *&v2[v3 + 8] = 0;
      }

      ++v4;
      v3 += 80;
    }

    while (v4 < *(a1 + 24));
  }

  else if (!v2)
  {
    return;
  }

  malloc_zone_free(*(a1 + 40), v2);
  *(a1 + 32) = 0;
}

uint64_t __APSenderStatsCollectorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APSenderStatsCollectorGetTypeID_typeID = result;
  return result;
}

uint64_t __APSenderStatsCollectorGetShared_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  if (APSenderStatsCollectorGetTypeID_once != -1)
  {
    __APSenderStatsCollectorGetShared_block_invoke_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    *(Instance + 112) = 0;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 16) = dispatch_queue_create("APSenderStatsCollectorQueue", 0);
    *(v2 + 24) = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v2 + 32) = NanosecondsToUpTicks();
    *(v2 + 48) = NanosecondsToUpTicks();
    *(v2 + 64) = UpTicksPerSecond();
    *(v2 + 72) = xmmword_222298460;
    *(v2 + 88) = 0;
    *(v2 + 112) = 1;
    result = IsAppleInternalBuild();
    *(v2 + 112) = result;
  }

  else
  {
    result = __APSenderStatsCollectorGetShared_block_invoke_cold_2();
  }

  APSenderStatsCollectorGetShared_collector = v2;
  return result;
}

uint64_t APSenderStatsCollectorCopySystemStats(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7[0] = &v6;
  v7[1] = 0x2000000000;
  v8 = 0;
  if (!a1)
  {
    APSenderStatsCollectorCopySystemStats_cold_2(v7);
LABEL_7:
    v3 = 4294960591;
    goto LABEL_4;
  }

  if (!a2)
  {
    APSenderStatsCollectorCopySystemStats_cold_1(v7);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APSenderStatsCollectorCopySystemStats_block_invoke;
  block[3] = &unk_27849C380;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7[0] + 24);
LABEL_4:
  _Block_object_dispose(&v6, 8);
  return v3;
}

void collector_finalize()
{
  if (gLogCategory_APSenderStatsCollector <= 100 && (gLogCategory_APSenderStatsCollector != -1 || _LogCategory_Initialize()))
  {
    collector_finalize_cold_1();
  }

  MEMORY[0x1C8] = 7;
}

uint64_t APAudioEngineAVCCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a2)
  {
    APAudioEngineAVCCreate_cold_3();
    return 4294951815;
  }

  if (!a3)
  {
    APAudioEngineAVCCreate_cold_2();
    return 4294951815;
  }

  FigEndpointStreamAudioEngineGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v9 = v5;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    DerivedStorage[6] = FigSimpleMutexCreate();
    if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineAVCCreate_cold_1(&cf, v7, v8);
    }

    v9 = 0;
    *a3 = cf;
  }

  return v9;
}

void audioEngineAVC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    audioEngineAVC_Finalize_cold_1(a1, v2, v3);
  }

  FigSimpleMutexLock();
  audioEngineAVC_suspendInternal(a1);
  FigSimpleMutexUnlock();
  FigSimpleMutexDestroy();
  v5 = *DerivedStorage;
  if (*DerivedStorage)
  {

    CFRelease(v5);
  }
}

__CFString *audioEngineAVC_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioEngineAVC>");
  return Mutable;
}

uint64_t audioEngineAVC_CopyProperty(int a1, CFTypeRef cf2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  if (gLogCategory_APAudioEngineAVC > 30 || gLogCategory_APAudioEngineAVC == -1 && !_LogCategory_Initialize())
  {
    if (cf2)
    {
      goto LABEL_5;
    }

LABEL_12:
    audioEngineAVC_CopyProperty_cold_4();
    return 4294951815;
  }

  audioEngineAVC_CopyProperty_cold_1(cf2);
  if (!cf2)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (!a4)
  {
    audioEngineAVC_CopyProperty_cold_3();
    return 4294951815;
  }

  if (!CFEqual(@"outputLatency", cf2))
  {
    return 4294954512;
  }

  v9 = **&MEMORY[0x277CC08F0];
  v7 = CMTimeCopyAsDictionary(&v9, a3);
  *a4 = v7;
  if (v7)
  {
    return 0;
  }

  audioEngineAVC_CopyProperty_cold_2();
  return 4294951816;
}

uint64_t audioEngineAVC_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a2)
  {
    audioEngineAVC_SetProperty_cold_2();
    return 4294951815;
  }

  if (!a3)
  {
    audioEngineAVC_SetProperty_cold_1();
    return 4294951815;
  }

  if (CFEqual(@"audioSourceFirstFrameAnchorTime", a2))
  {
    return 0;
  }

  else
  {
    return 4294954512;
  }
}

uint64_t audioEngineAVC_suspendInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = UpTicksPerSecond();
  FigSimpleMutexCheckIsLockedOnThisThread();
  v4 = mach_absolute_time();
  if (*(DerivedStorage + 9))
  {
    FigHALAudioConduitDeviceHALStopStream();
    *(DerivedStorage + 9) = 0;
  }

  v5 = mach_absolute_time();
  if (*(DerivedStorage + 8))
  {
    FigHALAudioConduitDeviceHALStopIO();
    *(DerivedStorage + 8) = 0;
  }

  v6 = mach_absolute_time();
  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v9 = v8(v7);
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = 4294954514;
    }

    if (gLogCategory_APAudioEngineAVC <= 90 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioEngineAVC, "OSStatus audioEngineAVC_suspendInternal(FigEndpointStreamAudioEngineRef)", 33554522, "[%{ptr}] Suspending audio source [%{ptr}] failed. err=%#m\n", a1, *(DerivedStorage + 16), v9);
    }

LABEL_14:
    v10 = *(DerivedStorage + 16);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v11)
    {
      v7 = v11(v10, 0, 0);
      if (!v7)
      {
LABEL_22:
        v12 = *(DerivedStorage + 16);
        if (v12)
        {
          CFRelease(v12);
          *(DerivedStorage + 16) = 0;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v7 = 4294954514;
    }

    if (gLogCategory_APAudioEngineAVC <= 90 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAudioEngineAVC, "OSStatus audioEngineAVC_suspendInternal(FigEndpointStreamAudioEngineRef)", 33554522, "[%{ptr}] Resetting write handler in audio source [%{ptr}] failed. err=%#m\n", a1, *(DerivedStorage + 16), v7);
    }

    goto LABEL_22;
  }

LABEL_24:
  v13 = *(DerivedStorage + 40);
  if (v13)
  {
    CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v13);
    *(DerivedStorage + 40) = 0;
  }

  v14 = mach_absolute_time();
  if (gLogCategory_APAudioEngineAVC <= 50)
  {
    v15 = v14;
    if (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APAudioEngineAVC, "OSStatus audioEngineAVC_suspendInternal(FigEndpointStreamAudioEngineRef)", 33554482, "[%{ptr}] Suspend internal completed (err=%#m) total=%1.3f ms (conduitStopStream=%1.3f conduitStopIO=%1.3f)\n", a1, v7, (v15 - v4) / v3 * 1000.0, (v5 - v4) / v3 * 1000.0, (v6 - v5) / v3 * 1000.0);
    }
  }

  return v7;
}

uint64_t audioEngineAVC_Resume(uint64_t a1, const __CFDictionary *a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v43 = 0uLL;
  v44 = 0;
  v11 = UpTicksPerSecond();
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    audioEngineAVC_Resume_cold_1(a1, v9, v10);
  }

  v38 = v11;
  v39 = mach_absolute_time();
  if (!a2 || (Value = CFDictionaryGetValue(a2, *MEMORY[0x277CD6280])) == 0)
  {
    audioEngineAVC_Resume_cold_6();
    v35 = 4294951813;
    goto LABEL_30;
  }

  v13 = Value;
  FigSimpleMutexLock();
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineAVC, "void audioEngineAVC_Resume(FigEndpointStreamAudioEngineRef, CFDictionaryRef, FigEndpointStreamAudioEngineResumeCallback, void *)", 33554482, "[%{ptr}] Setting audio source [%{ptr}]. Old audio source [%{ptr}]\n", a1, v13, *(DerivedStorage + 16));
  }

  v14 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = v13;
  CFRetain(v13);
  if (v14)
  {
    CFRelease(v14);
  }

  CFAllocatorGetDefault();
  v15 = FigHALAudioConduitDeviceCopyProperty();
  if (v15)
  {
    v35 = v15;
    audioEngineAVC_Resume_cold_2(v15);
LABEL_29:
    FigSimpleMutexUnlock();
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(0);
  v43 = *BytePtr;
  v17 = *(BytePtr + 5);
  v44 = *(BytePtr + 4);
  v18 = *(BytePtr + 6);
  v40 = *(BytePtr + 28);
  v41 = *(BytePtr + 9);
  CFAllocatorGetDefault();
  v19 = FigHALAudioConduitDeviceCopyProperty();
  if (v19)
  {
    v35 = v19;
    audioEngineAVC_Resume_cold_3(v19);
    goto LABEL_29;
  }

  v20 = v18 * v17 * FigCFNumberGetUInt32();
  *(DerivedStorage + 24) = v20;
  if (v20)
  {
    if (gLogCategory_APAudioEngineAVC <= 50)
    {
      if (gLogCategory_APAudioEngineAVC != -1 || (v21 = _LogCategory_Initialize(), v20 = *(DerivedStorage + 24), v21))
      {
        LogPrintF(&gLogCategory_APAudioEngineAVC, "void audioEngineAVC_Resume(FigEndpointStreamAudioEngineRef, CFDictionaryRef, FigEndpointStreamAudioEngineResumeCallback, void *)", 33554482, "[%{ptr}] Allocating input buffer. Requested bytes=%u", a1, v20);
        LODWORD(v20) = *(DerivedStorage + 24);
      }
    }

    v22 = MEMORY[0x223DAFDB0](*MEMORY[0x277CBECE8], v20, 3876151616, 0);
    *(DerivedStorage + 40) = v22;
    if (v22)
    {
      *(DerivedStorage + 120) = *(DerivedStorage + 24);
      v23 = *DerivedStorage;
      *(DerivedStorage + 104) = v13;
      *(DerivedStorage + 112) = v23;
      v24 = *(DerivedStorage + 48);
      *(DerivedStorage + 128) = v22;
      *(DerivedStorage + 136) = v24;
      *(DerivedStorage + 152) = 0;
      *(DerivedStorage + 64) = v43;
      *(DerivedStorage + 80) = v44;
      *(DerivedStorage + 84) = v17;
      *(DerivedStorage + 88) = v18;
      *(DerivedStorage + 92) = v40;
      *(DerivedStorage + 100) = v41;
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v25)
      {
        v26 = v25(v13, audioEngineAVC_audioSourceWriteDataCallback, DerivedStorage + 56);
        if (v26)
        {
          v35 = v26;
        }

        else
        {
          v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v27)
          {
            v28 = v27(v13);
            if (!v28)
            {
              v29 = mach_absolute_time();
              FigHALAudioConduitDeviceHALStartIO();
              v30 = mach_absolute_time();
              *(DerivedStorage + 8) = 1;
              FigHALAudioConduitDeviceHALStartStream();
              v31 = mach_absolute_time();
              v32 = (v29 - v39);
              *(DerivedStorage + 9) = 1;
              v33 = (v30 - v29);
              v34 = (v31 - v30);
              FigSimpleMutexUnlock();
              v35 = 0;
              if (!a3)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            v35 = v28;
          }

          else
          {
            v35 = 4294954514;
          }
        }
      }

      else
      {
        v35 = 4294954514;
      }

      APSLogErrorAt();
      goto LABEL_29;
    }

    audioEngineAVC_Resume_cold_4(&v42);
  }

  else
  {
    audioEngineAVC_Resume_cold_5(&v42);
  }

  v35 = v42;
  FigSimpleMutexUnlock();
  if (!v35)
  {
    v32 = 0.0;
    goto LABEL_34;
  }

LABEL_30:
  v32 = 0.0;
  if (gLogCategory_APAudioEngineAVC <= 90 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAudioEngineAVC, "void audioEngineAVC_Resume(FigEndpointStreamAudioEngineRef, CFDictionaryRef, FigEndpointStreamAudioEngineResumeCallback, void *)", 33554522, "[%{ptr}] Resuming audio engine failed. err=%#m\n", a1, v35);
  }

LABEL_34:
  v33 = 0.0;
  v34 = 0.0;
  if (a3)
  {
LABEL_35:
    a3(a1, v35, a4);
  }

LABEL_36:
  result = mach_absolute_time();
  if (gLogCategory_APAudioEngineAVC <= 50)
  {
    v37 = result;
    if (gLogCategory_APAudioEngineAVC != -1)
    {
      return LogPrintF(&gLogCategory_APAudioEngineAVC, "void audioEngineAVC_Resume(FigEndpointStreamAudioEngineRef, CFDictionaryRef, FigEndpointStreamAudioEngineResumeCallback, void *)", 33554482, "[%{ptr}] Resume completed (err=%#m) total=%1.3f ms (sourceResume=%1.3f conduitStartIO=%1.3f conduitStartStream=%1.3f)\n", a1, v35, (v37 - v39) / v38 * 1000.0, v32 / v38 * 1000.0, v33 / v38 * 1000.0, v34 / v38 * 1000.0);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APAudioEngineAVC, "void audioEngineAVC_Resume(FigEndpointStreamAudioEngineRef, CFDictionaryRef, FigEndpointStreamAudioEngineResumeCallback, void *)", 33554482, "[%{ptr}] Resume completed (err=%#m) total=%1.3f ms (sourceResume=%1.3f conduitStartIO=%1.3f conduitStartStream=%1.3f)\n", a1, v35, (v37 - v39) / v38 * 1000.0, v32 / v38 * 1000.0, v33 / v38 * 1000.0, v34 / v38 * 1000.0);
    }
  }

  return result;
}

uint64_t audioEngineAVC_Suspend(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    audioEngineAVC_Suspend_cold_1(a1, v7, v8);
  }

  mach_absolute_time();
  FigSimpleMutexLock();
  v9 = audioEngineAVC_suspendInternal(a1);
  result = FigSimpleMutexUnlock();
  if (a3)
  {
    result = a3(a1, v9, a4);
  }

  if (gLogCategory_APAudioEngineAVC <= 50)
  {
    if (gLogCategory_APAudioEngineAVC != -1)
    {
      return audioEngineAVC_Suspend_cold_2();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return audioEngineAVC_Suspend_cold_2();
    }
  }

  return result;
}

uint64_t audioEngineAVC_SetEndpointStream(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  v5 = a3;
  if (gLogCategory_APAudioEngineAVC <= 50)
  {
    if (gLogCategory_APAudioEngineAVC != -1 || (v8 = _LogCategory_Initialize(), v5 = a3, v8))
    {
      LogPrintF(&gLogCategory_APAudioEngineAVC, "void audioEngineAVC_SetEndpointStream(FigEndpointStreamAudioEngineRef, FigEndpointStreamRef, FigEndpointStreamAudioEngineSetEndpointStreamCallback, void *)", 33554482, "[%{ptr}] Set endpoint stream [%{ptr}]\n", a1, a2);
      v5 = a3;
    }
  }

  return v5(a1, 0, a4);
}

uint64_t audioEngineAVC_Flush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APAudioEngineAVC <= 50 && (gLogCategory_APAudioEngineAVC != -1 || _LogCategory_Initialize()))
  {
    audioEngineAVC_Flush_cold_1(a1, a2, a3);
  }

  return 0;
}

uint64_t APEndpointUGLWrapperCreate(uint64_t a1, unint64_t a2, uint64_t a3, const __CFUUID **a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = 0;
  if (!(a1 | a2))
  {
    APEndpointUGLWrapperCreate_cold_7(&v21);
    goto LABEL_28;
  }

  v7 = *MEMORY[0x277CBECE8];
  FigEndpointExtendedGetClassID();
  v8 = CMDerivedObjectCreate();
  v21 = v8;
  if (v8)
  {
    APEndpointUGLWrapperCreate_cold_1(v8);
    goto LABEL_28;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF(label, 64, "APEndpointUGLWrapper.%{ptr}.notification", v20);
  v10 = dispatch_queue_create(label, 0);
  *DerivedStorage = v10;
  if (!v10)
  {
    APEndpointUGLWrapperCreate_cold_6();
    goto LABEL_28;
  }

  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 32) = v11;
  if (!v11)
  {
    APEndpointUGLWrapperCreate_cold_5();
    goto LABEL_28;
  }

  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 144) = Mutable;
  if (!Mutable)
  {
    APEndpointUGLWrapperCreate_cold_4();
    goto LABEL_28;
  }

  v13 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 152) = v13;
  if (!v13)
  {
    APEndpointUGLWrapperCreate_cold_3();
    goto LABEL_28;
  }

  if (a1)
  {
    endpointUGLWrapper_setWrappedEndpoint(v20, a1);
    *(DerivedStorage + 48) = 1;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
LABEL_9:
    *(DerivedStorage + 16) = CFRetain(a2);
    goto LABEL_14;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(CMBaseObject, *MEMORY[0x277CC1340], v7, DerivedStorage + 16);
  }

  if (!*(DerivedStorage + 16))
  {
    APEndpointUGLWrapperCreate_cold_2(&v21);
LABEL_28:
    v16 = v20;
    if (!v20)
    {
      return v21;
    }

    goto LABEL_19;
  }

LABEL_14:
  APSGetDeviceID();
  *(DerivedStorage + 24) = CFDataCreate(v7, bytes, 6);
  v16 = CFUUIDCreate(v7);
  v17 = CFUUIDCreateString(v7, v16);
  *(DerivedStorage + 8) = v17;
  if (gLogCategory_APEndpointUGLWrapper > 50)
  {
    goto LABEL_18;
  }

  if (gLogCategory_APEndpointUGLWrapper != -1)
  {
    goto LABEL_16;
  }

  if (_LogCategory_Initialize())
  {
    v17 = *(DerivedStorage + 8);
LABEL_16:
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapperCreate(FigEndpointRef, CFStringRef, CFDictionaryRef, FigEndpointRef *)", 33554482, "[%{ptr}] Created APEndpointUGLWrapper, wrapping [%{ptr}] with ID %@", v20, a1, v17);
  }

LABEL_18:
  *a4 = v20;
  v20 = 0;
  if (v16)
  {
LABEL_19:
    CFRelease(v16);
  }

  return v21;
}

uint64_t APEndpointUGLWrapperIsEmpty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    v4 = APSGetFBOPropertyInt64() != 0;
  }

  else
  {
    v4 = 0;
  }

  Count = CFDictionaryGetCount(*(DerivedStorage + 144));
  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    v6 = "yes";
    if (v3)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (v4)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    if (((Count == 0) & ~v4) == 0)
    {
      v6 = "no";
    }

    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "Boolean APEndpointUGLWrapperIsEmpty(FigEndpointRef)", 33554482, "[%{ptr}] IsEmpty(wrapped=%s, inUse=%s, shadow count %ld) returns %s", a1, v7, v8, Count, v6);
  }

  return (Count == 0) & ~v4;
}

uint64_t APEndpointUGLWrapperAddShadowEndpoint(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    DiscoveryID = APTransportDeviceGetDiscoveryID();
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void APEndpointUGLWrapperAddShadowEndpoint(FigEndpointRef, APTransportDeviceRef, FigEndpointRef, FigEndpointRef)", 33554482, "[%{ptr}] AddShadowEndpoint(%@ -> [%{ptr}], RC [%{ptr}])", a1, DiscoveryID, a3, a4);
  }

  FigSimpleMutexLock();
  if (a3 && !CFDictionaryContainsKey(*(DerivedStorage + 144), a2))
  {
    CFDictionarySetValue(*(DerivedStorage + 144), a2, a3);
  }

  if (a4)
  {
    if (!CFDictionaryContainsKey(*(DerivedStorage + 152), a2))
    {
      v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      CFDictionarySetValue(*(DerivedStorage + 152), a2, v10);
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void APEndpointUGLWrapperRemoveShadowEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 144), a2);
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    DiscoveryID = APTransportDeviceGetDiscoveryID();
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void APEndpointUGLWrapperRemoveShadowEndpoint(FigEndpointRef, APTransportDeviceRef)", 33554482, "[%{ptr}] RemoveShadowEndpoint(%@ -> [%{ptr}])", a1, DiscoveryID, Value);
  }

  if (Value)
  {
    if (APSGetFBOPropertyInt64())
    {
      if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void APEndpointUGLWrapperRemoveShadowEndpoint(FigEndpointRef, APTransportDeviceRef)", 33554482, "[%{ptr}] Deactivating shadow endpoint [%{ptr}] before dissociating", a1, Value);
      }

      v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v8)
      {
        v8(Value, 0, uglWrapper_deactivateShadowCompletionCallback, a1);
      }
    }

    else
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v7)
      {
        v7(Value);
      }
    }

    CFDictionaryRemoveValue(*(DerivedStorage + 144), a2);
  }

  v9 = CFDictionaryGetValue(*(DerivedStorage + 152), a2);
  if (v9)
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v10 = 0;
  }

  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    v11 = APTransportDeviceGetDiscoveryID();
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void APEndpointUGLWrapperRemoveShadowEndpoint(FigEndpointRef, APTransportDeviceRef)", 33554482, "[%{ptr}] RemoveShadowEndpoint(%@ -> RC [%{ptr}])", a1, v11, v10);
  }

  if (v9)
  {
    CFDictionaryRemoveValue(*(DerivedStorage + 152), a2);
  }

  FigSimpleMutexUnlock();
  if (v10)
  {

    CFRelease(v10);
  }
}

uint64_t uglWrapper_deactivateShadowCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void uglWrapper_deactivateShadowCompletionCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] dissociating shadow endpoint [%{ptr}] after deactivating it (result %#m)", a5, a1, a4);
  }

  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 32);
  if (v11)
  {

    return v11(a1);
  }

  return result;
}

CFTypeRef endpointUGLWrapper_copyShadowEndpoint(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v3 = CFRetain(Value);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t APEndpointUGLWrapperUpdateWithRCEndpoint(void *VTable, CFTypeRef a2)
{
  cf = 0;
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapperUpdateWithRCEndpoint(FigEndpointRef, FigEndpointRef)", 33554482, "[%{ptr}] APEndpointUGLWrapperUpdateWithRCEndpoint([%{ptr}])", VTable, a2);
  }

  if (!VTable || CMBaseObjectGetVTable() != &kAPEndpointUGLWrapperVTable)
  {
    APEndpointUGLWrapperUpdateWithRCEndpoint_cold_5();
    v9 = 0;
    a2 = 0;
LABEL_26:
    v13 = 4294950576;
    goto LABEL_32;
  }

  if (!a2)
  {
    APEndpointUGLWrapperUpdateWithRCEndpoint_cold_4();
    v9 = 0;
    goto LABEL_26;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v13 = 4294954514;
LABEL_17:
    APSLogErrorAt();
    v9 = 0;
LABEL_18:
    a2 = 0;
    goto LABEL_32;
  }

  v6 = v5(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
  if (v6)
  {
    v13 = v6;
    goto LABEL_17;
  }

  v7 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFDictionaryGetValue(*(DerivedStorage + 152), v7))
  {
    FigSimpleMutexUnlock();
LABEL_20:
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      APEndpointUGLWrapperUpdateWithRCEndpoint_cold_3(VTable, v10, v11);
    }

    v9 = 0;
    a2 = 0;
    goto LABEL_24;
  }

  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  FigSimpleMutexUnlock();
  if (!v9)
  {
    goto LABEL_20;
  }

  if (v9 != a2)
  {
    if (gLogCategory_APEndpointUGLWrapper <= 60 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      DiscoveryID = APTransportDeviceGetDiscoveryID();
      LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapperUpdateWithRCEndpoint(FigEndpointRef, FigEndpointRef)", 33554492, "[%{ptr}] <APUGLError> APEndpointUGLWrapperUpdateWithRCEndpoint got different rcEndpoint: [%{ptr}] for discoveryID %@", VTable, v9, DiscoveryID);
    }

    v13 = 0;
    goto LABEL_18;
  }

  a2 = endpointUGLWrapper_copyShadowEndpoint(VTable, cf);
  if (!a2)
  {
    APEndpointUGLWrapperUpdateWithRCEndpoint_cold_2();
LABEL_24:
    v13 = 4294950571;
    goto LABEL_32;
  }

  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapperUpdateWithRCEndpoint_cold_1(VTable, v14, v15);
  }

  v13 = 0;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v13;
}

uint64_t APEndpointUGLWrapper_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_Finalize_cold_1(a1, v2, v3);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 24) = 0;
  }

  v8 = *(DerivedStorage + 96);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 96) = 0;
  }

  v9 = *(DerivedStorage + 136);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 136) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  v11 = *(DerivedStorage + 144);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 144) = 0;
  }

  v12 = *(DerivedStorage + 152);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 152) = 0;
  }

  return FigSimpleMutexDestroy();
}