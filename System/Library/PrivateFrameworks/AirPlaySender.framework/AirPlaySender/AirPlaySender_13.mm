Float64 OUTLINED_FUNCTION_110()
{
  *(v1 - 256) = *v0;
  *(v1 - 240) = *(v0 + 16);

  return CMTimeGetSeconds((v1 - 256));
}

uint64_t OUTLINED_FUNCTION_111(uint64_t a1)
{

  return CMBaseObjectGetProtocolVTable();
}

void *OUTLINED_FUNCTION_112()
{
  v2 = *v0;
  v3 = v0[1];

  return bufferedAudioEngine_getHoseDecriptorFromHose(v2, v3);
}

__n128 OUTLINED_FUNCTION_113()
{
  result = *(v0 - 240);
  *(v0 - 160) = result;
  *(v0 - 144) = *(v0 - 224);
  return result;
}

__n128 OUTLINED_FUNCTION_116()
{
  result = *&STACK[0x250];
  *&STACK[0x280] = *&STACK[0x250];
  STACK[0x290] = STACK[0x260];
  return result;
}

__n128 OUTLINED_FUNCTION_118()
{
  result = *v0;
  *(v1 + 200) = *v0;
  *(v2 - 224) = *(v2 - 144);
  return result;
}

__n128 OUTLINED_FUNCTION_119()
{
  result = *v0;
  *(v1 + 232) = *v0;
  *(v2 - 192) = *(v2 - 144);
  return result;
}

__n128 OUTLINED_FUNCTION_120@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 + 200) = *a1;
  *(v2 - 224) = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_121@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 224) = *a1;
  *(v1 - 208) = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_122()
{
  result = *(v0 - 224);
  *&STACK[0x330] = result;
  STACK[0x340] = *(v0 - 208);
  return result;
}

__n128 OUTLINED_FUNCTION_124()
{
  result = *v0;
  *(v1 - 192) = *v0;
  *(v1 - 176) = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_125()
{
  result = *v0;
  *(v1 - 160) = *v0;
  *(v1 - 144) = v0[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_140(void *a1, int a2, int a3, os_signpost_id_t a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _os_signpost_emit_with_name_impl(a1, v20, OS_SIGNPOST_INTERVAL_END, a4, a5, a6, va, 2u);
}

uint64_t OUTLINED_FUNCTION_142(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return CMBaseObjectGetDerivedStorage();
}

BOOL OUTLINED_FUNCTION_143()
{

  return os_signpost_enabled(v0);
}

uint64_t hidClient_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APHIDClientCreate(const __CFAllocator *a1, const __CFArray *a2, uint64_t *a3)
{
  if (a2)
  {
    if (_MergedGlobals_13 != -1)
    {
      APHIDClientCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      Instance[2] = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      Instance[2] = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
      v8 = MEMORY[0x277CBF138];
      v9 = MEMORY[0x277CBF150];
      *(v7 + 24) = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v7 + 32) = CFDictionaryCreateMutable(a1, 0, v8, v9);
      CFArrayGetCount(a2);
      CFArrayApplyBlock();
      if (gLogCategory_APHIDClient <= 30 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
      {
        APHIDClientCreate_cold_2(v7);
      }

      v10 = 0;
      *a3 = v7;
    }

    else
    {
      APHIDClientCreate_cold_3();
      return 4294895256;
    }
  }

  else
  {
    v10 = 4294895253;
    APHIDClientCreate_cold_4();
  }

  return v10;
}

void __APHIDClientCreate_block_invoke(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 32);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    CFDictionarySetValue(Mutable, @"Category", @"Automotive");
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      CFDictionarySetValue(v5, @"CountryCode", TypedValue);
    }

    CFDataGetTypeID();
    v7 = CFDictionaryGetTypedValue();
    CFDictionarySetValue(v5, @"ReportDescriptor", v7);
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    CFDictionarySetValue(v5, @"SerialNumber", v8);
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      CFDictionarySetValue(v5, @"Product", v9);
    }

    CFNumberGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      CFDictionarySetValue(v5, @"ProductID", v10);
    }

    CFDictionarySetValue(v5, @"Transport", @"AirPlay");
    CFNumberGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    if (v11)
    {
      CFDictionarySetValue(v5, @"VendorID", v11);
    }

    CFDictionarySetInt64();
    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    if (v12)
    {
      CFDictionarySetValue(v5, @"displayUUID", v12);
    }

    v13 = IOHIDUserDeviceCreate();
    if (v13)
    {
      v14 = v13;
      CFDictionarySetValue(v3[3], v8, v13);
      CFNumberGetTypeID();
      v15 = CFDictionaryGetTypedValue();
      if (v15)
      {
        CFDictionarySetValue(v3[4], v8, v15);
      }

      else
      {
        CFDictionarySetInt64();
      }

      CFArrayAppendValue(v3[2], a2);
      if (gLogCategory_APHIDClient <= 40 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
      {
        __APHIDClientCreate_block_invoke_cold_3(a2, v3, v8);
      }

      CFRelease(v14);
    }

    else
    {
      __APHIDClientCreate_block_invoke_cold_4();
    }

    CFRelease(v5);
  }

  else
  {
    __APHIDClientCreate_block_invoke_cold_5();
    v16 = 4294895256;
    if (gLogCategory_APHIDClient <= 60)
    {
      if (gLogCategory_APHIDClient == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        v16 = 0;
      }

      LogPrintF(&gLogCategory_APHIDClient, "void hidClient_addDevice(APHIDClientRef, CFDictionaryRef)", 33554492, "### Create virtual HID device for %{ptr} failed: %#m\n%@\n", v3, v16, a2);
    }
  }
}

uint64_t APHIDClientCopyHIDs(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a3 = v4;
  return 0;
}

uint64_t APHIDClientCopyInputModeForUUID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  CFNumberGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    *a3 = CFRetain(TypedValue);
  }

  else
  {
    APHIDClientCopyInputModeForUUID_cold_2();
  }

  return 0;
}

uint64_t APHIDClientSetInputModeForUUID(uint64_t a1, const void *a2, const void *a3)
{
  if (CFDictionaryContainsKey(*(a1 + 32), a2))
  {
    CFDictionarySetValue(*(a1 + 32), a2, a3);
    return 0;
  }

  else
  {
    APHIDClientSetInputModeForUUID_cold_1();
    return 4294895254;
  }
}

void hidClient_Finalize(void *a1)
{
  if (gLogCategory_APHIDClient <= 30 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
  {
    hidClient_Finalize_cold_1(a1);
  }

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
}

uint64_t APCarPlayBTPairingInfoHelperGetTypeID(uint64_t a1, uint64_t a2)
{
  if (APCarPlayBTPairingInfoHelperGetTypeID_initOnce != -1)
  {
    APCarPlayBTPairingInfoHelperGetTypeID_cold_1();
  }

  return APCarPlayBTPairingInfoHelperGetTypeID_typeID;
}

uint64_t __APCarPlayBTPairingInfoHelperGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APCarPlayBTPairingInfoHelperGetTypeID_typeID = result;
  return result;
}

void _APCarPlayBTPairingInfoHelperFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }
}

dispatch_queue_t *APCarPlayBTPairingInfoHelperCreate(uint64_t a1, uint64_t a2)
{
  if (APCarPlayBTPairingInfoHelperGetTypeID_initOnce != -1)
  {
    APCarPlayBTPairingInfoHelperGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (!Instance)
  {
    APCarPlayBTPairingInfoHelperCreate_cold_5();
    goto LABEL_10;
  }

  Instance[2] = 0;
  Instance[3] = 0;
  v4 = Instance + 2;
  Instance[4] = 0;
  v5 = dispatch_queue_create("APCarPlayBTPairingInfoHelper", 0);
  *v4 = v5;
  if (!v5)
  {
    APCarPlayBTPairingInfoHelperCreate_cold_4();
LABEL_18:
    CFRelease(v3);
    v3 = 0;
    goto LABEL_10;
  }

  v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v6)
  {
    APCarPlayBTPairingInfoHelperCreate_cold_3();
    goto LABEL_18;
  }

  v7 = v6;
  v8 = *v4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v9 = getBTSessionAttachWithQueueSymbolLoc_ptr;
  v18 = getBTSessionAttachWithQueueSymbolLoc_ptr;
  if (!getBTSessionAttachWithQueueSymbolLoc_ptr)
  {
    v10 = MobileBluetoothLibrary();
    v16[3] = dlsym(v10, "BTSessionAttachWithQueue");
    getBTSessionAttachWithQueueSymbolLoc_ptr = v16[3];
    v9 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v9)
  {
    apsession_appendControlSetupRequest_cold_9();
    return APCarPlayBTPairingInfoHelperIsPaired(v12, v13, v14);
  }

  v9("APCarPlayBTPairingInfoHelper", &callbacks, v7, v8);
LABEL_10:
  if (gLogCategory_APCarPlayBTPairingInfoHelper <= 30 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
  {
    APCarPlayBTPairingInfoHelperCreate_cold_6(v3);
  }

  return v3;
}

uint64_t APCarPlayBTPairingInfoHelperIsPaired(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (!a1)
  {
    APCarPlayBTPairingInfoHelperIsPaired_cold_3();
LABEL_10:
    v6 = 4294960591;
    goto LABEL_6;
  }

  if (!a2)
  {
    APCarPlayBTPairingInfoHelperIsPaired_cold_2();
    goto LABEL_10;
  }

  if (!a3)
  {
    APCarPlayBTPairingInfoHelperIsPaired_cold_1();
    goto LABEL_10;
  }

  v4 = *(a1 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __APCarPlayBTPairingInfoHelperIsPaired_block_invoke;
  v8[3] = &unk_27849DB30;
  v8[6] = a1;
  v8[7] = a2;
  v8[4] = &v9;
  v8[5] = &v13;
  dispatch_sync(v4, v8);
  v5 = v14;
  v6 = *(v14 + 6);
  if (!v6)
  {
    *a3 = *(v10 + 24);
    v6 = *(v5 + 6);
  }

LABEL_6:
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void __APCarPlayBTPairingInfoHelperIsPaired_block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 48) + 32))
  {
    return;
  }

  v48 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  memset(v37, 0, sizeof(v37));
  v36 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  memset(v33, 0, sizeof(v33));
  v32 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  v2 = *(*(MEMORY[0x28223BE20]() + 48) + 32);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v3 = getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr;
  v52 = getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr;
  if (!getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr)
  {
    *&v58 = MEMORY[0x277D85DD0];
    *(&v58 + 1) = 0x40000000;
    *&v59 = __getBTLocalDeviceGetPairedDevicesSymbolLoc_block_invoke;
    *(&v59 + 1) = &unk_27849DBE0;
    *&v60 = &v49;
    v4 = MobileBluetoothLibrary();
    v5 = dlsym(v4, "BTLocalDeviceGetPairedDevices");
    *(*(v60 + 8) + 24) = v5;
    getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr = *(*(v60 + 8) + 24);
    v3 = *(v50 + 24);
  }

  _Block_object_dispose(&v49, 8);
  if (v3)
  {
    v6 = v3(v2, v23, &v48, 256);
    v45[1] = v45;
    if (!v6)
    {
      v7 = *(a1 + 56);
      if (!v7)
      {
        return;
      }

      Count = CFArrayGetCount(v7);
      if (Count < 1)
      {
        return;
      }

      v8 = 0;
      v47 = &v51;
      v9 = *MEMORY[0x277CBECE8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v8);
        if (ValueAtIndex && v48 != 0)
        {
          break;
        }

        v12 = *(a1 + 32);
LABEL_32:
        ++v8;
        if (*(*(v12 + 8) + 24))
        {
          v21 = 1;
        }

        else
        {
          v21 = v8 == Count;
        }

        if (v21)
        {
          return;
        }
      }

      v13 = ValueAtIndex;
      v14 = 0;
      while (1)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v15 = *(v23 + v14);
        v58 = 0u;
        v59 = 0u;
        v54 = 0;
        v55 = &v54;
        v56 = 0x2000000000;
        v16 = getBTDeviceGetAddressStringSymbolLoc_ptr;
        v57 = getBTDeviceGetAddressStringSymbolLoc_ptr;
        if (!getBTDeviceGetAddressStringSymbolLoc_ptr)
        {
          v49 = MEMORY[0x277D85DD0];
          v50 = 0x40000000;
          v51 = __getBTDeviceGetAddressStringSymbolLoc_block_invoke;
          v52 = &unk_27849DC08;
          v53 = &v54;
          v17 = MobileBluetoothLibrary();
          v18 = dlsym(v17, "BTDeviceGetAddressString");
          *(v53[1] + 24) = v18;
          getBTDeviceGetAddressStringSymbolLoc_ptr = *(v53[1] + 24);
          v16 = v55[3];
        }

        _Block_object_dispose(&v54, 8);
        if (!v16)
        {
          break;
        }

        v19 = v16(v15, &v58, 256);
        if (v19)
        {
          goto LABEL_39;
        }

        v20 = CFStringCreateWithCString(v9, &v58, 0x8000100u);
        if (gLogCategory_APCarPlayBTPairingInfoHelper <= 50 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APCarPlayBTPairingInfoHelper, "OSStatus APCarPlayBTPairingInfoHelperIsPaired(APCarPlayBTPairingInfoHelperRef, CFArrayRef, Boolean *)_block_invoke", 33554482, "[%{ptr}] Found paired local Bluetooth MAC address: %s.\n", *(a1 + 48), &v58, v23[0], *&v23[1], *(&v23[1] + 8), *(&v23[2] + 1), v24, *&v25[0], *(v25 + 8), *(&v25[1] + 1), v26, *&v27[0], *(v27 + 8), *(&v27[1] + 1), v28, *&v29[0], *(v29 + 8), *(&v29[1] + 1), v30, *&v31[0], *(v31 + 8), *(&v31[1] + 1), v32, *&v33[0], *(v33 + 8), *(&v33[1] + 1), v34, *&v35[0], *(v35 + 8), *(&v35[1] + 1), v36, *&v37[0], *(v37 + 8), *(&v37[1] + 1), v38, *&v39[0], *(v39 + 8), *(&v39[1] + 1), v40, v41);
        }

        if (CFStringCompare(v13, v20, 1uLL) == kCFCompareEqualTo)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          if (gLogCategory_APCarPlayBTPairingInfoHelper <= 50 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APCarPlayBTPairingInfoHelper, "OSStatus APCarPlayBTPairingInfoHelperIsPaired(APCarPlayBTPairingInfoHelperRef, CFArrayRef, Boolean *)_block_invoke", 33554482, "[%{ptr}] Bluetooth CarPlay head unit currently paired, MAC address: %'@\n", *(a1 + 48), v20);
          }
        }

        if (v20)
        {
          CFRelease(v20);
        }

        v12 = *(a1 + 32);
        if (!*(*(v12 + 8) + 24) && ++v14 < v48)
        {
          continue;
        }

        goto LABEL_32;
      }

      apsession_appendControlSetupRequest_cold_9();
LABEL_39:
      v22 = v19;
      __APCarPlayBTPairingInfoHelperIsPaired_block_invoke_cold_2();
      goto LABEL_40;
    }
  }

  else
  {
    apsession_appendControlSetupRequest_cold_9();
  }

  v22 = v6;
  __APCarPlayBTPairingInfoHelperIsPaired_block_invoke_cold_1();
LABEL_40:
  *(*(*(a1 + 40) + 8) + 24) = v22;
  if (gLogCategory_APCarPlayBTPairingInfoHelper <= 90 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APCarPlayBTPairingInfoHelper, "OSStatus APCarPlayBTPairingInfoHelperIsPaired(APCarPlayBTPairingInfoHelperRef, CFArrayRef, Boolean *)_block_invoke", 33554522, "[%{ptr}] BTLocalDevice internal error: %#m\n", *(a1 + 48), v22, v23[0], *&v23[1], *(&v23[1] + 8), *(&v23[2] + 1), v24, *&v25[0], *(v25 + 8), *(&v25[1] + 1), v26, *&v27[0], *(v27 + 8), *(&v27[1] + 1), v28, *&v29[0], *(v29 + 8), *(&v29[1] + 1), v30, *&v31[0], *(v31 + 8), *(&v31[1] + 1), v32, *&v33[0], *(v33 + 8), *(&v33[1] + 1), v34, *&v35[0], *(v35 + 8), *(&v35[1] + 1), v36, *&v37[0], *(v37 + 8), *(&v37[1] + 1), v38, *&v39[0], *(v39 + 8), *(&v39[1] + 1), v40, v41);
  }
}

uint64_t APCarPlayBTPairingInfoHelperDissociate(uint64_t a1)
{
  if (!a1)
  {
    APCarPlayBTPairingInfoHelperDissociate_cold_2();
    return 4294960591;
  }

  v1 = (a1 + 24);
  if (*(a1 + 24))
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v2 = getBTSessionDetachWithQueueSymbolLoc_ptr;
    v9 = getBTSessionDetachWithQueueSymbolLoc_ptr;
    if (!getBTSessionDetachWithQueueSymbolLoc_ptr)
    {
      v3 = MobileBluetoothLibrary();
      v7[3] = dlsym(v3, "BTSessionDetachWithQueue");
      getBTSessionDetachWithQueueSymbolLoc_ptr = v7[3];
      v2 = v7[3];
    }

    _Block_object_dispose(&v6, 8);
    if (!v2)
    {
      apsession_appendControlSetupRequest_cold_9();
      return __getBTSessionAttachWithQueueSymbolLoc_block_invoke(v5);
    }

    v2(v1);
  }

  result = 0;
  *v1 = 0;
  return result;
}

void *__getBTSessionAttachWithQueueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTSessionAttachWithQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTSessionAttachWithQueueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileBluetoothLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MobileBluetoothLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 0x40000000;
    v3[3] = __MobileBluetoothLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_tmp_11;
    v3[5] = v3;
    v4 = xmmword_27849DB78;
    v5 = 0;
    MobileBluetoothLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileBluetoothLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!MobileBluetoothLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MobileBluetoothLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileBluetoothLibraryCore_frameworkLibrary = result;
  return result;
}

void BluetoothSessionEvent(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = v8;
    if ((a2 - 1) >= 3)
    {
      if (a2)
      {
LABEL_22:
        CFRelease(v9);
        return;
      }

      if (!a3)
      {
        if (*(v8 + 24) != a1)
        {
          *(v8 + 24) = a1;
          v15 = 0;
          v16 = &v15;
          v17 = 0x2000000000;
          v10 = getBTLocalDeviceGetDefaultSymbolLoc_ptr;
          v18 = getBTLocalDeviceGetDefaultSymbolLoc_ptr;
          if (!getBTLocalDeviceGetDefaultSymbolLoc_ptr)
          {
            v11 = MobileBluetoothLibrary();
            v16[3] = dlsym(v11, "BTLocalDeviceGetDefault");
            getBTLocalDeviceGetDefaultSymbolLoc_ptr = v16[3];
            v10 = v16[3];
          }

          _Block_object_dispose(&v15, 8);
          if (!v10)
          {
            apsession_appendControlSetupRequest_cold_9();
            __getBTLocalDeviceGetDefaultSymbolLoc_block_invoke(v14);
            return;
          }

          v12 = v10(a1, v9 + 32);
          if (v12)
          {
            if (gLogCategory_APCarPlayBTPairingInfoHelper <= 90)
            {
              v13 = v12;
              if (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize())
              {
                LogPrintF(&gLogCategory_APCarPlayBTPairingInfoHelper, "void BluetoothSessionEvent(BTSession, BTSessionEvent, BTResult, void *)", 33554522, "[%{ptr}] BTLocalDevice creation error: %#m\n", v9, v13);
              }
            }
          }
        }

        goto LABEL_22;
      }

      if (gLogCategory_APCarPlayBTPairingInfoHelper <= 90 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APCarPlayBTPairingInfoHelper, "void BluetoothSessionEvent(BTSession, BTSessionEvent, BTResult, void *)", 33554522, "[%{ptr}] BTSession creation error: %#m\n", v9, a3);
      }
    }

    else
    {
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
    }

    if (a4)
    {
      CFRelease(a4);
    }

    goto LABEL_22;
  }
}

void *__getBTLocalDeviceGetDefaultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTLocalDeviceGetDefault");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTLocalDeviceGetDefaultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBTLocalDeviceGetPairedDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTLocalDeviceGetPairedDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBTDeviceGetAddressStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTDeviceGetAddressString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTDeviceGetAddressStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBTSessionDetachWithQueueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTSessionDetachWithQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTSessionDetachWithQueueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APEndpointPlaybackSessionAirPlayCreate(__CFString *a1, const void *a2, const void *a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  cf = 0;
  v29 = 0u;
  v30 = 0u;
  *label = 0u;
  v28 = 0u;
  if (!a2)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_11();
LABEL_28:
    v24 = 4294950556;
    goto LABEL_37;
  }

  if (!a3)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_10();
    goto LABEL_28;
  }

  FigEndpointPlaybackSessionGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v24 = v10;
    APEndpointPlaybackSessionAirPlayCreate_cold_1(v10);
    goto LABEL_37;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = FigSimpleMutexCreate();
  *(DerivedStorage + 48) = v12;
  if (!v12)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_9();
LABEL_36:
    v24 = 4294950555;
    goto LABEL_37;
  }

  *(DerivedStorage + 57) = 0;
  v13 = FigSimpleMutexCreate();
  *(DerivedStorage + 168) = v13;
  if (!v13)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_8();
    goto LABEL_36;
  }

  *(DerivedStorage + 152) = 1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 160) = Mutable;
  if (!Mutable)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_7();
    goto LABEL_36;
  }

  SNPrintF(label, 64, "APEndpointPlaybackSessionAirPlay.%{ptr}.event", cf);
  v15 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 120) = v15;
  if (!v15)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_6();
    goto LABEL_36;
  }

  SNPrintF(label, 64, "APEndpointPlaybackSessionAirPlay.%{ptr}.network", cf);
  v16 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 176) = v16;
  if (!v16)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_5();
    goto LABEL_36;
  }

  SNPrintF(label, 64, "APEndpointPlaybackSessionAirPlay.%{ptr}.notification", cf);
  v17 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 40) = v17;
  if (!v17)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_4();
    goto LABEL_36;
  }

  if (a1)
  {
    v18 = a1;
  }

  else
  {
    v18 = @"unnamed APEndpointPlaybackSessionAirPlay";
  }

  *DerivedStorage = v18;
  CFRetain(v18);
  if (CFDictionaryContainsKey(a4, @"VolumeDB"))
  {
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    apPlayback_setPropertyInternal(cf, @"VolumeDB", TypedValue);
  }

  *(DerivedStorage + 16) = CFRetain(a2);
  *(DerivedStorage + 32) = CFRetain(a3);
  if (CFDictionaryContainsKey(a4, @"MetadataSource"))
  {
    Value = CFDictionaryGetValue(a4, @"MetadataSource");
    *(DerivedStorage + 96) = CFRetain(Value);
  }

  if (CFDictionaryContainsKey(a4, @"NetworkClock"))
  {
    v21 = CFDictionaryGetValue(a4, @"NetworkClock");
    *(DerivedStorage + 24) = CFRetain(v21);
  }

  v22 = APEndpointPlaybackSessionStatsCreate(@"AP", a1, a4, (DerivedStorage + 224));
  if (!v22)
  {
    if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      APEndpointPlaybackSessionAirPlayCreate_cold_3(&cf, DerivedStorage, v23);
    }

    v24 = 0;
    *a5 = cf;
    return v24;
  }

  v24 = v22;
  APEndpointPlaybackSessionAirPlayCreate_cold_2(v22);
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

void apPlayback_setPropertyInternal(void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"VolumeDB"))
  {
    CFGetDouble();
    v8 = v7;
    v9 = CMBaseObjectGetDerivedStorage();
    if (*(v9 + 88) != v8)
    {
      v10 = v9;
      *(v9 + 88) = v8;
      *(v9 + 92) = 1;
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_setVolumeDBInternal(FigEndpointPlaybackSessionRef, float)", 33554462, "[%{ptr}] %###s called volumeDB=%.2f.\n", a1, "OSStatus apPlayback_setVolumeDBInternal(FigEndpointPlaybackSessionRef, float)", v8);
      }

      if (*(v10 + 72))
      {
        CFRetain(a1);
        v15 = *(v10 + 176);

        dispatch_async_f(v15, a1, apPlayback_processPendingAudioVolumeChanges);
      }
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC10B8]))
  {
    v11 = *(DerivedStorage + 80);
    *(DerivedStorage + 80) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (FigCFEqual())
    {
      v12 = @"moviePlayback";
    }

    else
    {
      v12 = @"default";
    }

    apPlayback_SetProxiedProperty(a1, @"audioMode", 0, v12);
  }

  else if (CFEqual(a2, *MEMORY[0x277CC10D0]))
  {
    Value = CFBooleanGetValue(a3);
    v14 = *(DerivedStorage + 224);

    APEndpointPlaybackSessionSetIsParticipatingInCoordinatedPlayback(v14, Value);
  }

  else if (CFEqual(a2, *MEMORY[0x277CC1108]))
  {
    memset(&v20, 0, sizeof(v20));
    CMTimeMakeFromDictionary(&v20, a3);
    v18 = *(DerivedStorage + 224);
    v19 = v20;
    APEndpointPlaybackSessionSetVideoSyncTime(v18, &v19);
  }

  else if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_setPropertyInternal_cold_1(a2, v16, v17);
  }
}

uint64_t apPlayback_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (!*(DerivedStorage + 57))
  {
    *(DerivedStorage + 57) = 1;
    APEndpointPlaybackSessionStatsUpdateAtInvalidate(*(DerivedStorage + 224));
    apPlayback_unsubscribeMetadataEvents(a1);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  v4 = *(v3 + 8);
  if (v4)
  {

    *(v3 + 8) = 0;
  }

  return 0;
}

void apPlayback_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_Finalize_cold_1(a1, v2, v3);
  }

  *(DerivedStorage + 72) = 0;
  *(DerivedStorage + 92) = 0;
  v5 = *(DerivedStorage + 80);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 80) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 96) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 112);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 112) = 0;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_Finalize_cold_2(a1, v9, v10);
  }

  if (v11[23])
  {
    v12 = v11[25];
    if (v12)
    {
      CFRetain(v12);
    }

    v13 = v11[2];
    if (v13)
    {
      CFRetain(v13);
    }

    v11[23] = 0;
    APSDispatchAsyncFHelper();
  }

  if (v11[24])
  {
    v11[24] = 0;
    v11[26] = 0;
    APSDispatchAsyncFHelper();
  }

  v14 = *(DerivedStorage + 216);
  if (v14)
  {
    APLocalPlaybackServerDestroy(v14);
    *(DerivedStorage + 216) = 0;
  }

  *(DerivedStorage + 128) = 0;
  *(DerivedStorage + 136) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v15 = *(DerivedStorage + 16);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 16) = 0;
  }

  v16 = *(DerivedStorage + 24);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 24) = 0;
  }

  v17 = *(DerivedStorage + 32);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 32) = 0;
  }

  v18 = *(DerivedStorage + 200);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 200) = 0;
  }

  v19 = *(DerivedStorage + 144);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 144) = 0;
  }

  v20 = *(DerivedStorage + 120);
  if (v20)
  {
    dispatch_release(v20);
    *(DerivedStorage + 120) = 0;
  }

  FigSimpleMutexDestroy();
  v21 = *(DerivedStorage + 160);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 160) = 0;
  }

  v22 = *(DerivedStorage + 176);
  if (v22)
  {
    dispatch_release(v22);
    *(DerivedStorage + 176) = 0;
  }

  v23 = *(DerivedStorage + 40);
  if (v23)
  {
    dispatch_release(v23);
    *(DerivedStorage + 40) = 0;
  }

  FigSimpleMutexDestroy();
  APEndpointPlaybackSessionStatsDestroy((DerivedStorage + 224));
}

uint64_t apPlayback_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDictionaryRef *a4)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"RTCStats"))
  {
    if (*(DerivedStorage + 57))
    {
      apPlayback_CopyProperty_cold_2(&v11);
      return v11;
    }

    if (CFEqual(a2, *MEMORY[0x277CC10E0]))
    {
      goto LABEL_6;
    }

    if (!CFEqual(a2, *MEMORY[0x277CC1100]) && !CFEqual(a2, *MEMORY[0x277CC10F8]))
    {
      if (CFEqual(a2, *MEMORY[0x277CC10E8]))
      {
        if (!*(DerivedStorage + 32) || !APSGetFBOPropertyInt64())
        {
LABEL_6:
          v7 = MEMORY[0x277CBED10];
LABEL_10:
          *a4 = CFRetain(*v7);
          return v11;
        }
      }

      else if (!CFEqual(a2, *MEMORY[0x277CC10F0]))
      {
        if (!CFEqual(a2, *MEMORY[0x277CC10D8]))
        {
          if (CFEqual(a2, @"Activated"))
          {
            v7 = MEMORY[0x277CBED28];
            v10 = *(DerivedStorage + 56);
          }

          else if (CFEqual(a2, @"IsPlaying"))
          {
            v7 = MEMORY[0x277CBED28];
            v10 = *(DerivedStorage + 58);
          }

          else
          {
            if (!CFEqual(a2, *MEMORY[0x277CC10C0]))
            {
              return -12787;
            }

            v7 = MEMORY[0x277CBED28];
            v10 = *(DerivedStorage + 72);
          }

          if (!v10)
          {
            v7 = MEMORY[0x277CBED10];
          }

          goto LABEL_10;
        }

        if (*(DerivedStorage + 32))
        {
          v9 = APSGetFBOPropertyInt64() > 2413299 && v11 == 0;
          v7 = MEMORY[0x277CBED28];
          if (!v9)
          {
            v7 = MEMORY[0x277CBED10];
          }

          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }

    v7 = MEMORY[0x277CBED28];
    goto LABEL_10;
  }

  APEndpointPlaybackSessionCopyRTCStats(*(DerivedStorage + 224), a4);
  if (!*a4)
  {
    apPlayback_CopyProperty_cold_1(&v11);
  }

  return v11;
}

uint64_t apPlayback_SetProperty(void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] SetProperty %'@ to value %'@.\n", a1, a2, a3);
  }

  FigSimpleMutexLock();
  apPlayback_setPropertyInternal(a1, a2, a3);
  FigSimpleMutexUnlock();
  return 0;
}

double apPlayback_unsubscribeMetadataEvents(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 96) && *(DerivedStorage + 104))
  {
    if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apPlayback_unsubscribeMetadataEvents_cold_1(a1, v3, v4);
    }

    APMetadataSourceRemoveEventCallback(*(DerivedStorage + 96), *(DerivedStorage + 104));
    *(DerivedStorage + 104) = 0;
  }

  FigSimpleMutexUnlock();
  return result;
}

void apPlayback_teardownTransportStream(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v3)
  {
    v3(v2, 1937010544, 0, 0);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v6)
    {
      v6(v4, 120, v5);
    }
  }

  CMBaseObject = FigTransportStreamGetCMBaseObject();
  if (CMBaseObject)
  {
    v8 = CMBaseObject;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v9)
    {
      v9(v8);
    }
  }

  CFRelease(*(a1 + 16));
  v10 = *(a1 + 8);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *a1;
  if (*a1)
  {

    CFRelease(v11);
  }
}

void apPlayback_invalidateTransportEventStream(const void **a1)
{
  v2 = *a1;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v3)
  {
    v3(v2, 0, 0, 0);
  }

  CMBaseObject = FigTransportStreamGetCMBaseObject();
  if (CMBaseObject)
  {
    v5 = CMBaseObject;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v5);
    }
  }

  v7 = a1[1];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *a1;

  CFRelease(v8);
}

uint64_t apPlayback_AuthorizeItem(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_AuthorizeItem(FigEndpointPlaybackSessionRef, CFDataRef, CFStringRef, FigEndpointPlaybackSessionAuthorizeItemCompletion, void *)", 33554462, "[%{ptr}] authorizeItem PIC request: %{ptr} itemUUID: %'@\n", a1, a2, a3, a1, a2, a3, a4, a5);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_Play(const void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_Play_cold_1(a2);
  }

  if (!*(DerivedStorage + 8))
  {
    SNPrintF(v9, 64, "APEndpointPlaybackSessionAirPlay.%{ptr}", a1);
    *(DerivedStorage + 8) = os_transaction_create();
  }

  APEndpointPlaybackSessionStatsUpdateAtPlay(*(DerivedStorage + 224), a2);
  CFRetain(a1);
  APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(a2, &v8);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_InsertPlayQueueItem(const void *a1, const __CFDictionary *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_InsertPlayQueueItem_cold_1(a2, a3);
  }

  APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(a2, &v9);
  if (a1)
  {
    CFRetain(a1);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_RemovePlayQueueItem(const void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay > 50 || gLogCategory_APEndpointPlaybackSessionAirPlay == -1 && !_LogCategory_Initialize())
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  apPlayback_RemovePlayQueueItem_cold_1(a2);
  if (a1)
  {
LABEL_5:
    CFRetain(a1);
  }

LABEL_6:
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_Stop(const void *a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_Stop_cold_1(a1, v4, v5);
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_GetPlaybackInfo(const void *a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_GetPlaybackInfo_cold_1(a1, v4, v5);
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SeekToTime(const void *a1, CMTime *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_SeekToTime_cold_1(a2);
  }

  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SeekToDate(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_SeekToDate(FigEndpointPlaybackSessionRef, CFDateRef, CFDictionaryRef, FigEndpointPlaybackSessionSeekCompletion, void *)", 33554462, "[%{ptr}] Seek to date %@\n", a1, a2);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SetRate(const void *a1, const void *a2, uint64_t a3, uint64_t a4, float a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_SetRate(FigEndpointPlaybackSessionRef, float, CFDictionaryRef, FigEndpointPlaybackSessionStandardCompletion, void *)", 33554482, "[%{ptr}] Set rate %.0f\n", a1, a5);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_GetProxiedProperty(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_GetProxiedProperty(FigEndpointPlaybackSessionRef, CFStringRef, CFDictionaryRef, FigEndpointPlaybackSessionGetProxiedPropertyCompletion, void *)", 33554462, "[%{ptr}] Get proxied property %'@\n", a1, a2);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SetProxiedProperty(const void *a1, const void *a2, const void *a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_SetProxiedProperty(FigEndpointPlaybackSessionRef, CFStringRef, CFDictionaryRef, CFTypeRef)", 33554462, "[%{ptr}] Set proxied property %'@\n", a1, a2);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_PerformRemoteAction(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_PerformRemoteAction(FigEndpointPlaybackSessionRef, CFStringRef, CFTypeRef, FigEndpointPlaybackSessionRemoteActionCompletion, void *)", 33554462, "[%{ptr}] Perform remote action %@\n", a1, a2);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SetEventHandler(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_BroadcastCoordinatedPlaybackState(uint64_t a1)
{
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 90 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_BroadcastCoordinatedPlaybackState_cold_1(a1);
  }

  return 4294954514;
}

void apPlayback_authorizeItemInternal(uint64_t *a1)
{
  CMBaseObjectGetDerivedStorage();
  __s = 0;
  v26 = 0;
  theBuffer = 0;
  v2 = apPlayback_ensureTransportStreamsCreated(*a1);
  if (v2)
  {
    v19 = v2;
    apPlayback_authorizeItemInternal_cold_1(v2);
LABEL_37:
    v17 = 0;
    v13 = 0;
    v4 = 0;
    v8 = 0;
    goto LABEL_18;
  }

  CFDataGetBytePtr(a1[1]);
  CFDataGetLength(a1[1]);
  v3 = Base64EncodeCopyEx();
  if (v3)
  {
    v19 = v3;
    apPlayback_authorizeItemInternal_cold_2(v3);
    goto LABEL_37;
  }

  ASPrintF(&__s, "PIC-Request: %s\n", v26);
  v4 = __s;
  if (!__s)
  {
    apPlayback_authorizeItemInternal_cold_13();
LABEL_40:
    v17 = 0;
    v13 = 0;
    v8 = 0;
LABEL_42:
    v19 = 4294950555;
    goto LABEL_18;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = strlen(__s);
  v4 = CFDataCreate(*MEMORY[0x277CBECE8], __s, v6);
  if (!v4)
  {
    apPlayback_authorizeItemInternal_cold_12();
    goto LABEL_40;
  }

  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = Mutable;
  if (!Mutable)
  {
    apPlayback_authorizeItemInternal_cold_11();
    v17 = 0;
    v13 = 0;
    goto LABEL_42;
  }

  CFDictionarySetValue(Mutable, @"X-Apple-UUID", a1[2]);
  v9 = apPlayback_sendSpecialMessageCreatingReply(*a1, 1885435252, v8, v4, &theBuffer);
  if (!v9)
  {
    totalLengthOut = 0;
    lengthAtOffsetOut = 0;
    v30 = 0;
    dataPointerOut = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      v19 = DataPointer;
      apPlayback_authorizeItemInternal_cold_4(DataPointer);
    }

    else
    {
      if (lengthAtOffsetOut != totalLengthOut)
      {
        apPlayback_authorizeItemInternal_cold_5();
        v23 = 0;
        v19 = 4294950556;
LABEL_53:
        free(v23);
        APSLogErrorAt();
        goto LABEL_54;
      }

      v11 = HTTPGetHeaderField();
      if (!v11)
      {
        v12 = CFStringCreateWithBytes(v5, v30, v29, 0x8000100u, 0);
        if (v12)
        {
          v13 = v12;
          v14 = HTTPGetHeaderField();
          if (v14)
          {
            v19 = v14;
            apPlayback_authorizeItemInternal_cold_7(v14);
          }

          else
          {
            if (!v29)
            {
              v18 = 0;
              v17 = 0;
              goto LABEL_17;
            }

            v15 = Base64DecodeCopy();
            if (v15)
            {
              v19 = v15;
              apPlayback_authorizeItemInternal_cold_8(v15);
            }

            else
            {
              v16 = CFDataCreate(v5, v28, v27);
              if (v16)
              {
                v17 = v16;
                v18 = v28;
LABEL_17:
                free(v18);
                v19 = 0;
                goto LABEL_18;
              }

              apPlayback_authorizeItemInternal_cold_9();
              v19 = 4294950555;
            }
          }

          CFRelease(v13);
          v23 = v28;
        }

        else
        {
          apPlayback_authorizeItemInternal_cold_10();
          v23 = 0;
          v19 = 4294950555;
        }

        goto LABEL_53;
      }

      v19 = v11;
      apPlayback_authorizeItemInternal_cold_6(v11);
    }

    v23 = 0;
    goto LABEL_53;
  }

  v19 = v9;
  apPlayback_authorizeItemInternal_cold_3(v9);
LABEL_54:
  v17 = 0;
  v13 = 0;
LABEL_18:
  v20 = a1[3];
  if (v20)
  {
    v20(v17, v13, v19, a1[4]);
  }

  free(v26);
  free(__s);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(*a1);
  v21 = a1[1];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = a1[2];
  if (v22)
  {
    CFRelease(v22);
  }
}

uint64_t apPlayback_sendSpecialMessageCreatingReply(uint64_t a1, uint64_t a2, __CFDictionary *a3, const void *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    apPlayback_sendSpecialMessageCreatingReply_cold_3();
    return 4294950556;
  }

  v10 = DerivedStorage;
  if (a4)
  {
    CFDictionarySetValue(a3, *MEMORY[0x277CEA360], a4);
  }

  Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], a3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    apPlayback_sendSpecialMessageCreatingReply_cold_2();
    return 4294950555;
  }

  v12 = Data;
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    v16 = BlockBufferWithCFDataNoCopy;
    apPlayback_sendSpecialMessageCreatingReply_cold_1(BlockBufferWithCFDataNoCopy);
    goto LABEL_11;
  }

  v14 = *(v10 + 184);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v15)
  {
    v16 = 4294954514;
LABEL_10:
    APSLogErrorAt();
    goto LABEL_11;
  }

  v16 = v15(v14, a2, 0, a5);
  if (v16)
  {
    goto LABEL_10;
  }

LABEL_11:
  CFRelease(v12);
  return v16;
}

uint64_t apPlayback_handleMessageCreatingReply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  data = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    goto LABEL_15;
  }

  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_handleMessageCreatingReply(FigTransportStreamRef, OSType, CMBlockBufferRef, void *, CMBlockBufferRef *)", 33554482, "[%{ptr}] %###s %'C \n", v7, "OSStatus apPlayback_handleMessageCreatingReply(FigTransportStreamRef, OSType, CMBlockBufferRef, void *, CMBlockBufferRef *)", a2);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 1702260340)
  {
    goto LABEL_18;
  }

  v9 = DerivedStorage;
  v10 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  *(v21 + 6) = CFDataWithBlockBufferNoCopy;
  if (CFDataWithBlockBufferNoCopy)
  {
    APSLogErrorAt();
    v13 = 0;
    goto LABEL_11;
  }

  v12 = CFPropertyListCreateWithData(v10, data, 0, 0, 0);
  v13 = v12;
  if (!v12)
  {
LABEL_18:
    APSLogErrorAt();
    v13 = 0;
LABEL_20:
    *(v21 + 6) = -16740;
    goto LABEL_11;
  }

  v14 = CFGetTypeID(v12);
  if (v14 != CFDictionaryGetTypeID())
  {
    APSLogErrorAt();
    goto LABEL_20;
  }

  v15 = *(v9 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __apPlayback_handleMessageCreatingReply_block_invoke;
  block[3] = &unk_27849DD00;
  block[4] = &v20;
  block[5] = v7;
  block[6] = v13;
  block[7] = v9;
  dispatch_sync(v15, block);
  *a5 = 0;
LABEL_11:
  CFRelease(v7);
  if (data)
  {
    CFRelease(data);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_15:
  v16 = *(v21 + 6);
  _Block_object_dispose(&v20, 8);
  return v16;
}

void __apPlayback_handleMessageCreatingReply_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v5 = &unk_27CFF1000;
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_processEventAndCreateEventInfoInCMTime(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "[%{ptr}] Event received %@\n", v3, v2);
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    FigSimpleMutexLock();
    apPlayback_handlePlaybackStateChanged(v3, TypedValue);
    FigSimpleMutexUnlock();
  }

  v7 = CFDictionaryContainsKey(v2, @"messageID");
  v8 = MEMORY[0x277CBECE8];
  if (v7)
  {
    LODWORD(v46[0]) = 0;
    v44 = DerivedStorage;
    if (!v2)
    {
      __apPlayback_handleMessageCreatingReply_block_invoke_cold_8();
      goto LABEL_49;
    }

    v9 = CFDictionaryGetValue(v2, @"messageID");
    if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_handleEventWithMessageID(FigEndpointPlaybackSessionRef, CFDictionaryRef)", 33554482, "[%{ptr}] %###s messageID=%@\n", v3, "OSStatus apPlayback_handleEventWithMessageID(FigEndpointPlaybackSessionRef, CFDictionaryRef)", v9);
    }

    if (!v9)
    {
      goto LABEL_49;
    }

    if (!CFDictionaryGetValue(v2, @"type"))
    {
      __apPlayback_handleMessageCreatingReply_block_invoke_cold_7();
      goto LABEL_49;
    }

    if (!FigCFEqual())
    {
LABEL_49:
      DerivedStorage = v44;
      goto LABEL_50;
    }

    if (CFDictionaryGetValue(v2, @"error"))
    {
      FigCFDictionaryGetInt32IfPresent();
      v10 = LODWORD(v46[0]);
    }

    else
    {
      v10 = 0;
    }

    v11 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_handleSeekToTimeResult(FigEndpointPlaybackSessionRef, CFNumberRef, OSStatus, CFDictionaryRef)", 33554462, "[%{ptr}] %###s inMessageID=%@ inResult=%d\n", v3, "void apPlayback_handleSeekToTimeResult(FigEndpointPlaybackSessionRef, CFNumberRef, OSStatus, CFDictionaryRef)", v9, v10);
    }

    v43 = v10;
    v12 = *v8;
    Mutable = CFArrayCreateMutable(*v8, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      __apPlayback_handleMessageCreatingReply_block_invoke_cold_6();
      goto LABEL_49;
    }

    v14 = Mutable;
    v15 = (v11 + 168);
    FigSimpleMutexLock();
    if (CFDictionaryContainsKey(*(v11 + 160), v9))
    {
      v16 = CFDictionaryGetValue(*(v11 + 160), v9);
      CFArrayAppendValue(v14, v16);
      CFDictionaryRemoveValue(*(v11 + 160), v9);
    }

    if (CFDictionaryGetCount(*(v11 + 160)) < 1)
    {
      FigSimpleMutexUnlock();
      v5 = &unk_27CFF1000;
      if (apPlayback_sendResultsSeekToTimeRequests(v14, v43, v2))
      {
        v18 = 0;
        goto LABEL_99;
      }

LABEL_36:
      v26 = v14;
LABEL_48:
      CFRelease(v26);
      goto LABEL_49;
    }

    v41 = v14;
    v42 = v3;
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
    if (v18)
    {
      Count = CFDictionaryGetCount(*(v17 + 160));
      v20 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
      if (!v20)
      {
        __apPlayback_handleMessageCreatingReply_block_invoke_cold_1(v18, v15);
        v25 = 4294950555;
        v3 = v42;
LABEL_97:
        __apPlayback_handleMessageCreatingReply_block_invoke_cold_5(v25);
        v5 = &unk_27CFF1000;
        v14 = v41;
        goto LABEL_36;
      }

      v21 = v20;
      CFDictionaryGetKeysAndValues(*(v17 + 160), v20, 0);
      if (Count < 1)
      {
        v25 = 0;
      }

      else
      {
        for (i = 0; i != Count; ++i)
        {
          v23 = v21[i];
          if (CFNumberCompare(v23, v9, 0) == kCFCompareLessThan)
          {
            v24 = CFDictionaryGetValue(*(v17 + 160), v23);
            CFArrayAppendValue(v18, v24);
            CFDictionaryRemoveValue(*(v17 + 160), v23);
          }
        }

        v25 = 0;
        v8 = MEMORY[0x277CBECE8];
      }
    }

    else
    {
      __apPlayback_handleMessageCreatingReply_block_invoke_cold_2();
      v21 = 0;
      v25 = 4294950555;
    }

    free(v21);
    FigSimpleMutexUnlock();
    v3 = v42;
    if (v18)
    {
      v14 = v41;
      v5 = &unk_27CFF1000;
      if (!apPlayback_sendResultsSeekToTimeRequests(v41, v43, v2))
      {
        if (CFArrayGetCount(v18) >= 1)
        {
          if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
          {
            __apPlayback_handleMessageCreatingReply_block_invoke_cold_3(v18);
          }

          v27 = apPlayback_sendResultsSeekToTimeRequests(v18, 4294960574, v2);
          if (v27)
          {
            __apPlayback_handleMessageCreatingReply_block_invoke_cold_4(v27);
          }
        }

        CFRelease(v41);
LABEL_47:
        v26 = v18;
        goto LABEL_48;
      }

LABEL_99:
      APSLogErrorAt();
      CFRelease(v14);
      if (!v18)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    goto LABEL_97;
  }

LABEL_50:
  CFDictionaryGetValue(v2, *MEMORY[0x277CC0E50]);
  if (FigCFDictionaryGetInt32IfPresent())
  {
    APEndpointPlaybackSessionStatsSetLastError(*(DerivedStorage + 224), 0);
  }

  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  if (FigCFEqual())
  {
    v28 = v5[44];
    if (v28 > 30)
    {
      v29 = 5;
    }

    else
    {
      if (v28 == -1)
      {
        v29 = 5;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_67;
        }
      }

      else
      {
        v29 = 5;
      }

      LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_processEventAndCreateEventInfoInCMTime(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "[%{ptr}] Posting MediaRemote previous track.\n", v3);
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      goto LABEL_71;
    }

    v30 = v5[44];
    if (v30 > 30)
    {
      v29 = 4;
    }

    else
    {
      if (v30 == -1)
      {
        v29 = 4;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_67;
        }
      }

      else
      {
        v29 = 4;
      }

      LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_processEventAndCreateEventInfoInCMTime(FigEndpointPlaybackSessionRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "[%{ptr}] Posting MediaRemote next track.\n", v3);
    }
  }

LABEL_67:
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v31 = getMRMediaRemoteSendCommandSymbolLoc_ptr;
  v50 = getMRMediaRemoteSendCommandSymbolLoc_ptr;
  if (!getMRMediaRemoteSendCommandSymbolLoc_ptr)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __getMRMediaRemoteSendCommandSymbolLoc_block_invoke;
    v46[3] = &unk_27849ACC8;
    v46[4] = &v47;
    __getMRMediaRemoteSendCommandSymbolLoc_block_invoke(v46);
    v31 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v31)
  {
    __apPlayback_handleMessageCreatingReply_block_invoke_cold_9();
  }

  v31(v29, 0);
LABEL_71:
  if (!FigCFEqual())
  {
    v33 = CFRetain(v2);
    goto LABEL_77;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*v8, 0, v2);
  v33 = MutableCopy;
  if (!MutableCopy)
  {
    __apPlayback_handleMessageCreatingReply_block_invoke_cold_11();
    v37 = -16741;
    goto LABEL_78;
  }

  v34 = *MEMORY[0x277CC0DD0];
  v35 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC0DD0]);
  if (!v35)
  {
LABEL_77:
    v37 = 0;
    goto LABEL_78;
  }

  PlayPlaybackInfoTimesInCMTime = APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(v35, &value);
  v37 = PlayPlaybackInfoTimesInCMTime;
  if (PlayPlaybackInfoTimesInCMTime)
  {
    __apPlayback_handleMessageCreatingReply_block_invoke_cold_10(PlayPlaybackInfoTimesInCMTime, v33);
    v33 = 0;
  }

  else
  {
    CFDictionarySetValue(v33, v34, value);
  }

LABEL_78:
  if (value)
  {
    CFRelease(value);
  }

  *(*(a1[4] + 8) + 24) = v37;
  v38 = *(*(a1[4] + 8) + 24);
  if (v38)
  {
    __apPlayback_handleMessageCreatingReply_block_invoke_cold_12(v38);
    if (v33)
    {
LABEL_84:
      CFRelease(v33);
    }
  }

  else
  {
    v39 = a1[7];
    v40 = v39[16];
    if (v40)
    {
      v40(a1[5], v33, v39[17], v39[18]);
    }

    if (v33)
    {
      goto LABEL_84;
    }
  }
}

void apPlayback_handlePlaybackStateChanged(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFEqual(a2, *MEMORY[0x277CC11B8]);
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = *(v6 + 112);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    if (gLogCategory_APEndpointPlaybackSessionAirPlay > 30)
    {
LABEL_18:
      CFRelease(v7);
      *(v6 + 112) = 0;
      goto LABEL_19;
    }

    if (gLogCategory_APEndpointPlaybackSessionAirPlay == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_17:
        v7 = *(v6 + 112);
        if (!v7)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v7 = *(v6 + 112);
    }

    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_ensureIdleSleepPreventorDestroyed(FigEndpointPlaybackSessionRef)", 33554462, "[%{ptr}] Destroying idle sleep preventor %{ptr}.\n", a1, v7);
    goto LABEL_17;
  }

  if (v7)
  {
    if (gLogCategory_APEndpointPlaybackSessionAirPlay > 30)
    {
      goto LABEL_19;
    }

    if (gLogCategory_APEndpointPlaybackSessionAirPlay != -1)
    {
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v7 = *(v6 + 112);
LABEL_5:
      LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_ensureIdleSleepPreventorCreated(FigEndpointPlaybackSessionRef)", 33554462, "[%{ptr}] Idle sleep preventor %{ptr} already exists.\n", a1, v7);
    }
  }

  else
  {
    v8 = APSPowerAssertionCreate();
    *(v6 + 112) = v8;
    if (v8)
    {
      APSPowerAssertionRaiseTemporary();
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "void apPlayback_ensureIdleSleepPreventorCreated(FigEndpointPlaybackSessionRef)", 33554462, "[%{ptr}] Created idle sleep preventor %{ptr}.\n", a1, *(v6 + 112));
      }
    }

    else
    {
      apPlayback_handlePlaybackStateChanged_cold_1();
    }
  }

LABEL_19:
  if (CFEqual(a2, *MEMORY[0x277CC11B0]))
  {
    v9 = 1;
  }

  else
  {
    v9 = CFEqual(a2, *MEMORY[0x277CC11C0]) != 0;
  }

  if (*(DerivedStorage + 58) != v9)
  {
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    v12 = MEMORY[0x277CBED10];
    if (v9)
    {
      v12 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"Playing", *v12);
    *(DerivedStorage + 58) = v9;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v11);
  }
}

uint64_t apPlayback_sendResultsSeekToTimeRequests(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (CFArrayGetCount(a1) < 1)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      if (!BytePtr)
      {
        v10 = 2934;
        goto LABEL_10;
      }

      if (!*BytePtr)
      {
        break;
      }

      (*BytePtr)(a3, a2, *(BytePtr + 1));
      if (++v6 >= CFArrayGetCount(a1))
      {
        return 0;
      }
    }

    v10 = 2935;
  }

  else
  {
    v10 = 2929;
  }

LABEL_10:
  apPlayback_sendResultsSeekToTimeRequests_cold_1(v10);
  return 4294950556;
}

void *__getMRMediaRemoteSendCommandSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaRemoteLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27849DD20;
    v6 = 0;
    MediaRemoteLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = MediaRemoteLibraryCore_frameworkLibrary_0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_0)
  {
    MediaRemoteLibrary_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MRMediaRemoteSendCommand");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSendCommandSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaRemoteLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void apPlayback_appendCommonPlayParamsToMessage(uint64_t a1, int a2, unsigned int a3, const void *a4, __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    APSVolumeConvertDBToClampedSliderValue();
  }

  CFDictionarySetDouble();
  GetDeviceModelString();
  CFDictionarySetCString();
  GetSystemBuildVersionString();
  CFDictionarySetCString();
  CFDictionarySetInt64();
  if (a4)
  {
    CFDictionarySetValue(a5, @"audioMode", a4);
  }
}

uint64_t apPlayback_sendPlistMessageCreatingReply(uint64_t a1, uint64_t a2, CFDataRef a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  cf = 0;
  if (a3)
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], a3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      apPlayback_sendPlistMessageCreatingReply_cold_2();
      v14 = 0;
      v13 = 4294950555;
      goto LABEL_19;
    }

    a3 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v13 = BlockBufferWithCFDataNoCopy;
      apPlayback_sendPlistMessageCreatingReply_cold_1(BlockBufferWithCFDataNoCopy);
      v14 = 0;
      goto LABEL_18;
    }

    v10 = cf;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(DerivedStorage + 184);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_15;
  }

  v13 = v12(v11, a2, v10, &v20);
  if (v13)
  {
LABEL_15:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v14 = 0;
  if (!a4 || !v20)
  {
LABEL_17:
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    v13 = CFDataWithBlockBufferNoCopy;
    apPlayback_sendPlistMessageCreatingReply_cold_3(CFDataWithBlockBufferNoCopy);
    goto LABEL_16;
  }

  v17 = CFPropertyListCreateWithData(v15, 0, 0, 0, 0);
  v14 = v17;
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 == CFDictionaryGetTypeID())
    {
      v13 = 0;
      *a4 = v14;
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

    apPlayback_sendPlistMessageCreatingReply_cold_4();
  }

  else
  {
    apPlayback_sendPlistMessageCreatingReply_cold_5();
  }

  v13 = 4294950556;
  if (a3)
  {
LABEL_18:
    CFRelease(a3);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v13;
}

void apPlayback_handleMetadataEvent(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  if (!a4)
  {
    apPlayback_handleMetadataEvent_cold_2();
    return;
  }

  if (a3 > 1836217186)
  {
    if (a3 > 1886547814)
    {
      if (a3 == 1886547815)
      {
        return;
      }

      v5 = 1952807028;
    }

    else
    {
      if (a3 == 1836217187)
      {
        return;
      }

      v5 = 1852860704;
    }

    goto LABEL_11;
  }

  if (a3 != 1634629920)
  {
    if (a3 == 1634890784)
    {
      return;
    }

    v5 = 1836216435;
LABEL_11:
    if (a3 != v5 && gLogCategory_APEndpointPlaybackSessionAirPlay <= 90 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apPlayback_handleMetadataEvent_cold_1(a3);
    }

    return;
  }

  apPlayback_SetProxiedProperty(a2, @"metaData", 0, a4);
}

void apPlayback_seekToTimeInternal(void *a1)
{
  v25 = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 184))
  {
    MutableCopy = 0;
    v18 = 0;
    Mutable = 0;
    v12 = 0;
    goto LABEL_26;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    apPlayback_seekToTimeInternal_cold_7();
LABEL_42:
    MutableCopy = 0;
    goto LABEL_50;
  }

  time = *(a1 + 1);
  Seconds = CMTimeGetSeconds(&time);
  ASPrintF(&v25, "/scrub?position=%f", Seconds);
  if (!v25)
  {
    apPlayback_seekToTimeInternal_cold_6();
    goto LABEL_42;
  }

  CFDictionarySetCString();
  v5 = a1[4];
  if (v5)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v5);
    if (!MutableCopy)
    {
      apPlayback_seekToTimeInternal_cold_1();
LABEL_50:
      v12 = 0;
      v18 = 4294950555;
      goto LABEL_26;
    }
  }

  else
  {
    MutableCopy = 0;
  }

  if (!APSGetFBOPropertyInt64())
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (!MutableCopy)
  {
    MutableCopy = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!MutableCopy)
    {
      apPlayback_seekToTimeInternal_cold_5();
      goto LABEL_50;
    }
  }

  v7 = *a1;
  v23 = *(a1 + 5);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_seekToTimeInternal_cold_2(v7, v8, v9);
  }

  UInt64 = FigCFNumberCreateUInt64();
  if (!UInt64)
  {
    apPlayback_seekToTimeInternal_cold_4();
LABEL_49:
    apPlayback_seekToTimeInternal_cold_9();
    goto LABEL_50;
  }

  v12 = UInt64;
  ++*(DerivedStorage + 152);
  *&time.value = v23;
  v13 = CFDataCreate(v2, &time, 16);
  if (!v13)
  {
    apPlayback_seekToTimeInternal_cold_3(v12);
    goto LABEL_49;
  }

  v14 = v13;
  FigSimpleMutexLock();
  CFDictionarySetValue(*(DerivedStorage + 160), v12, v14);
  Count = CFDictionaryGetCount(*(DerivedStorage + 160));
  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlaybackSessionAirPlay, "OSStatus apPlayback_addPendingSeekToTimeRequest(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionSeekCompletion, void *, CFNumberRef *)", 33554482, "[%{ptr}] %###s outMessageID=%@ callback [%{ptr}], context [%{ptr}] pendingRequests=%d\n", v7, "OSStatus apPlayback_addPendingSeekToTimeRequest(FigEndpointPlaybackSessionRef, FigEndpointPlaybackSessionSeekCompletion, void *, CFNumberRef *)", v12, time.value, *&time.timescale, Count);
  }

  CFRelease(v14);
  CFDictionarySetValue(MutableCopy, @"messageID", v12);
LABEL_22:
  v16 = apPlayback_sendSpecialPlistMessageCreatingReply(*a1, 1936024939, Mutable, MutableCopy, 0);
  if (!v16)
  {
    if (v12)
    {
      free(v25);
      v17 = 0;
LABEL_30:
      CFRelease(Mutable);
      goto LABEL_31;
    }

    v18 = 0;
    goto LABEL_26;
  }

  v18 = v16;
  APSLogErrorAt();
  if (!v12)
  {
LABEL_26:
    v17 = 1;
    goto LABEL_27;
  }

  v21 = *a1;
  v22 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30)
  {
    apPlayback_seekToTimeInternal_cold_8(gLogCategory_APEndpointPlaybackSessionAirPlay, v21, v12);
  }

  FigSimpleMutexLock();
  CFDictionaryRemoveValue(*(v22 + 160), v12);
  FigSimpleMutexUnlock();
  v17 = 0;
LABEL_27:
  v19 = a1[5];
  if (v19)
  {
    v19(0, v18, a1[6]);
  }

  free(v25);
  if (Mutable)
  {
    goto LABEL_30;
  }

LABEL_31:
  CFRelease(*a1);
  v20 = a1[4];
  if (v20)
  {
    CFRelease(v20);
  }

  if ((v17 & 1) == 0)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

uint64_t apPlayback_sendSpecialPlistMessageCreatingReply(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFDataRef a4, void *a5)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a3)
  {
    v10 = MEMORY[0x277CBECE8];
    if (a4 && (a4 = CFPropertyListCreateData(*MEMORY[0x277CBECE8], a4, kCFPropertyListBinaryFormat_v1_0, 0, 0)) == 0)
    {
      apPlayback_sendSpecialPlistMessageCreatingReply_cold_1();
      v13 = 0;
      v12 = 4294950555;
    }

    else
    {
      v11 = apPlayback_sendSpecialMessageCreatingReply(a1, a2, a3, a4, &cf);
      v12 = v11;
      if (v11)
      {
        apPlayback_sendSpecialPlistMessageCreatingReply_cold_2(v11);
        goto LABEL_11;
      }

      v13 = 0;
      if (!a5 || !cf)
      {
LABEL_12:
        if (!a4)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v14 = *v10;
      CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
      if (CFDataWithBlockBufferNoCopy)
      {
        v12 = CFDataWithBlockBufferNoCopy;
        apPlayback_sendSpecialPlistMessageCreatingReply_cold_3(CFDataWithBlockBufferNoCopy);
        goto LABEL_11;
      }

      v16 = CFPropertyListCreateWithData(v14, 0, 0, 0, 0);
      v13 = v16;
      if (v16)
      {
        v17 = CFGetTypeID(v16);
        if (v17 == CFDictionaryGetTypeID())
        {
          v12 = 0;
          *a5 = v13;
LABEL_11:
          v13 = 0;
          goto LABEL_12;
        }

        apPlayback_sendSpecialPlistMessageCreatingReply_cold_4();
      }

      else
      {
        apPlayback_sendSpecialPlistMessageCreatingReply_cold_5();
      }

      v12 = 4294950556;
      if (a4)
      {
LABEL_13:
        CFRelease(a4);
      }
    }
  }

  else
  {
    apPlayback_sendSpecialPlistMessageCreatingReply_cold_6();
    v13 = 0;
    v12 = 4294950556;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v12;
}

void apPlayback_SetEventHandlerInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 128) = *(a1 + 8);
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(DerivedStorage + 144);
    *(DerivedStorage + 144) = v3;
    CFRetain(v3);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = *(a1 + 24);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t __APSRTPPacketHandlerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_280FB1B18 = result;
  return result;
}

unsigned int *APSRTPPacketHandlerReadExtendedHeader(unsigned int *result, _DWORD *a2, unsigned int **a3)
{
  if (!a2)
  {
    return APSRTPPacketHandlerReadExtendedHeader_cold_1();
  }

  v3 = *result;
  v4 = *result;
  *a2 = v4;
  if (v3 < 0)
  {
    v5 = bswap32(*result);
    v4 |= (v5 >> 2) & 0x3FFF00 | (v5 << 22);
    *a2 = v4;
  }

  if (a3)
  {
    v6 = (v4 & 0x80) == 0;
    v7 = result + 1;
    if (v6)
    {
      v7 = (result + 1);
    }

    *a3 = v7;
  }

  return result;
}

uint64_t APSRTPPacketHandlerGetSeqNumOfPacket(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    return (a2 - *(a1 + 1656) + (bswap32(*(v2 + 2)) >> 16) + 1);
  }

  else
  {
    APSRTPPacketHandlerGetSeqNumOfPacket_cold_1();
    LOWORD(v3) = 0;
  }

  return v3;
}

unsigned int *APSRTPPacketHandlerGetExtendedHeaderOfPacket(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = *(a1 + 168);
  if (!v4)
  {
    return APSRTPPacketHandlerGetExtendedHeaderOfPacket_cold_1();
  }

  return APSRTPPacketHandlerReadExtendedHeader((v4 + 4 * a2 + 12), a3, 0);
}

uint64_t APAuthenticationClientFairPlayCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    APAuthenticationClientGetClassID(a1, a2);
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v6 = v5;
      APSLogErrorAt();
    }

    else
    {
      *(CMBaseObjectGetDerivedStorage() + 8) = a2;
      CFRetain(a2);
      if (gLogCategory_APAuthenticationClientFairPlay <= 30 && (gLogCategory_APAuthenticationClientFairPlay != -1 || _LogCategory_Initialize()))
      {
        APAuthenticationClientFairPlayCreate_cold_1(&cf);
      }

      v6 = 0;
      *a3 = cf;
    }
  }

  else
  {
    APAuthenticationClientFairPlayCreate_cold_2();
    return 4294895495;
  }

  return v6;
}

void fpAuthentication_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientFairPlay <= 30 && (gLogCategory_APAuthenticationClientFairPlay != -1 || _LogCategory_Initialize()))
  {
    fpAuthentication_Finalize_cold_1(a1);
  }

  if (*DerivedStorage)
  {
    IPaI1oem5iL();
    *DerivedStorage = 0;
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }
}

__CFString *fpAuthentication_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientFairPlay %p>", a1);
  return Mutable;
}

uint64_t fpAuthentication_AuthenticateEndpoint(uint64_t a1)
{
  dataPointerOut[4] = *MEMORY[0x277D85DE8];
  lengthAtOffsetOut = 0;
  dataPointerOut[0] = 0;
  v15 = 0;
  v14 = -1;
  v12 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  if (gLogCategory_APAuthenticationClientFairPlay <= 40 && (gLogCategory_APAuthenticationClientFairPlay != -1 || _LogCategory_Initialize()))
  {
    fpAuthentication_AuthenticateEndpoint_cold_1();
  }

  memset(&dataPointerOut[1], 0, 24);
  v2 = APCUGetFairPlayHWInfoEx();
  if (v2)
  {
    v5 = v2;
    fpAuthentication_AuthenticateEndpoint_cold_2(v2);
  }

  else
  {
    if (*DerivedStorage)
    {
      IPaI1oem5iL();
      *DerivedStorage = 0;
    }

    cp2g1b9ro();
    if (v3)
    {
      v5 = v3;
      fpAuthentication_AuthenticateEndpoint_cold_3(v3);
    }

    else
    {
      lengthAtOffsetOut = 0;
      dataPointerOut[0] = 0;
      Mib5yocT();
      if (v4)
      {
LABEL_21:
        v5 = v4;
LABEL_23:
        APSLogErrorAt();
      }

      else
      {
        while (1)
        {
          v5 = v14;
          if (!v14)
          {
            break;
          }

          if (v14 != 1)
          {
            APSLogErrorAt();
            v5 = 4294895494;
            break;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v12)
          {
            CFRelease(v12);
            v12 = 0;
          }

          BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
          if (BlockBufferCopyingMemoryBlock)
          {
            v5 = BlockBufferCopyingMemoryBlock;
            fpAuthentication_AuthenticateEndpoint_cold_4(BlockBufferCopyingMemoryBlock);
            break;
          }

          if (v16)
          {
            jEHf8Xzsv8K(v16);
            v16 = 0;
          }

          v7 = DerivedStorage[1];
          v8 = cf;
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v9)
          {
            v5 = 4294954514;
            goto LABEL_23;
          }

          v10 = v9(v7, 1718628917, v8, &v12);
          if (v10)
          {
            v5 = v10;
            goto LABEL_23;
          }

          CMBlockBufferGetDataPointer(v12, 0, &lengthAtOffsetOut, 0, dataPointerOut);
          Mib5yocT();
          if (v4)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v16)
  {
    jEHf8Xzsv8K(v16);
    v16 = 0;
  }

  if (v5)
  {
    if (*DerivedStorage)
    {
      IPaI1oem5iL();
      *DerivedStorage = 0;
    }

    if (gLogCategory_APAuthenticationClientFairPlay <= 60 && (gLogCategory_APAuthenticationClientFairPlay != -1 || _LogCategory_Initialize()))
    {
      fpAuthentication_AuthenticateEndpoint_cold_5(v5);
    }
  }

  return v5;
}

uint64_t fpAuthentication_CreateEncryptedKey(uint64_t a1, const __CFData *a2, const __CFAllocator *a3, CFDataRef *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*CMBaseObjectGetDerivedStorage())
  {
    v14.location = 0;
    v14.length = 16;
    CFDataGetBytes(a2, v14, buffer);
    U4HBs();
    if (v7)
    {
      v9 = v7;
      fpAuthentication_CreateEncryptedKey_cold_1(v7);
    }

    else
    {
      v8 = CFDataCreate(a3, 0, 0);
      if (v8)
      {
        v9 = 0;
        *a4 = v8;
      }

      else
      {
        fpAuthentication_CreateEncryptedKey_cold_2();
        v9 = 4294895496;
      }
    }
  }

  else
  {
    v9 = 4294895493;
    fpAuthentication_CreateEncryptedKey_cold_3();
  }

  jEHf8Xzsv8K(0);
  for (i = 0; i != 16; ++i)
  {
    buffer[i] = 0;
  }

  return v9;
}

uint64_t APEndpointStreamAggregateAudioCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, const void *a12, CFTypeRef *a13)
{
  v53 = *MEMORY[0x277D85DE8];
  v49 = 0;
  if (!a2)
  {
    APEndpointStreamAggregateAudioCreate_cold_22();
LABEL_46:
    v43 = 4294950536;
    goto LABEL_34;
  }

  if (!a5)
  {
    APEndpointStreamAggregateAudioCreate_cold_21();
    goto LABEL_46;
  }

  FigEndpointStreamAirPlayGetClassID();
  v19 = CMDerivedObjectCreate();
  if (v19)
  {
    v43 = v19;
    APEndpointStreamAggregateAudioCreate_cold_1(v19);
    goto LABEL_34;
  }

  v46 = a7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 192) = CFRetain(a2);
  *(DerivedStorage + 200) = a8;
  *(DerivedStorage + 201) = a9;
  *(DerivedStorage + 202) = a10;
  *(DerivedStorage + 203) = a11;
  if (a12)
  {
    v21 = CFRetain(a12);
  }

  else
  {
    v21 = 0;
  }

  *(DerivedStorage + 216) = v21;
  v22 = FigSimpleMutexCreate();
  *DerivedStorage = v22;
  if (!v22)
  {
    APEndpointStreamAggregateAudioCreate_cold_20();
LABEL_59:
    v43 = 4294950535;
    goto LABEL_34;
  }

  if (!a4)
  {
    APEndpointStreamAggregateAudioCreate_cold_19();
    goto LABEL_46;
  }

  *(DerivedStorage + 176) = CFRetain(a4);
  *(DerivedStorage + 184) = CFRetain(a5);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v24 = CFStringCreateWithFormat(a1, 0, @"%@-%llu-%@", a3, UpTimeNanoseconds, a2);
  *(DerivedStorage + 24) = v24;
  if (!v24)
  {
    APEndpointStreamAggregateAudioCreate_cold_18();
    goto LABEL_59;
  }

  v25 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 32) = Mutable;
  if (!Mutable)
  {
    APEndpointStreamAggregateAudioCreate_cold_17();
    goto LABEL_59;
  }

  v27 = CFArrayCreateMutable(v25, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 40) = v27;
  if (!v27)
  {
    APEndpointStreamAggregateAudioCreate_cold_16();
    goto LABEL_59;
  }

  v28 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 112) = v28;
  if (!v28)
  {
    APEndpointStreamAggregateAudioCreate_cold_15();
    goto LABEL_59;
  }

  v29 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 120) = v29;
  if (!v29)
  {
    APEndpointStreamAggregateAudioCreate_cold_14();
    goto LABEL_59;
  }

  *(DerivedStorage + 48) = 0;
  v30 = CMSimpleQueueCreate(v25, 32, (DerivedStorage + 88));
  if (v30)
  {
    v43 = v30;
    APEndpointStreamAggregateAudioCreate_cold_2(v30);
    goto LABEL_34;
  }

  SNPrintF(label, 64, "APEndpointStreamAggregateAudio.%s", v52);
  v31 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 208) = v31;
  if (!v31)
  {
    APEndpointStreamAggregateAudioCreate_cold_13();
    goto LABEL_59;
  }

  SNPrintF(label, 64, "APEndpointStreamAggregateAudio.%{ptr}.audioResumptionSuspension", v49);
  v32 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 96) = v32;
  if (!v32)
  {
    APEndpointStreamAggregateAudioCreate_cold_12();
    goto LABEL_59;
  }

  v33 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 104) = v33;
  if (!v33)
  {
    APEndpointStreamAggregateAudioCreate_cold_11();
    goto LABEL_59;
  }

  *(DerivedStorage + 144) = 1065353216;
  *(DerivedStorage + 148) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 153) = 0;
  if (*(DerivedStorage + 203))
  {
    *(DerivedStorage + 153) = APSSettingsIsFeatureEnabled();
  }

  v34 = APSAudioFormatDescriptionListCreate();
  if (v34)
  {
    v43 = v34;
    APEndpointStreamAggregateAudioCreate_cold_3(v34);
    goto LABEL_34;
  }

  *(DerivedStorage + 18) = FigCFEqual();
  *(DerivedStorage + 19) = FigCFEqual();
  *(DerivedStorage + 20) = FigCFEqual();
  *(DerivedStorage + 152) = FigCFEqual();
  if (a6)
  {
    FigSimpleMutexLock();
    streamAggregateAudio_addSubStreamFromEndpoint(v49, a2, a6);
    FigSimpleMutexUnlock();
  }

  else
  {
    if (!*(DerivedStorage + 202))
    {
      APEndpointStreamAggregateAudioCreate_cold_10(handler);
      goto LABEL_61;
    }

    v45 = streamAggregateAudio_enableLocalPlayback(v49, v46);
    if (v45)
    {
      v43 = v45;
      APEndpointStreamAggregateAudioCreate_cold_4(v45);
      goto LABEL_34;
    }
  }

  if (!FigCFDictionaryGetCount())
  {
    APEndpointStreamAggregateAudioCreate_cold_9(handler);
LABEL_61:
    v43 = LODWORD(handler[0]);
    goto LABEL_34;
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    APEndpointStreamAggregateAudioCreate_cold_5(&v49, DerivedStorage, a6);
  }

  SNPrintF(label, 64, "APEndpointStreamAggregateAudio.%{ptr}.darwinNotification", v49);
  v35 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 160) = v35;
  if (!v35)
  {
    APEndpointStreamAggregateAudioCreate_cold_8();
    goto LABEL_59;
  }

  v36 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v36)
  {
    APEndpointStreamAggregateAudioCreate_cold_7(handler);
    goto LABEL_61;
  }

  v37 = v36;
  v38 = *(DerivedStorage + 160);
  v39 = CFRetain(v36);
  dispatch_set_context(v38, v39);
  dispatch_set_finalizer_f(*(DerivedStorage + 160), streamAggregateAudio_darwinQueueFinalizer);
  *(DerivedStorage + 168) = -1;
  v40 = CMBaseObjectGetDerivedStorage();
  if ((APSIsAPMSpeaker() || IsAppleTV()) && (v41 = *(v40 + 160), handler[0] = MEMORY[0x277D85DD0], handler[1] = 0x40000000, handler[2] = __streamAggregateAudio_registerForAirPlayPrefsChangedNotification_block_invoke, handler[3] = &__block_descriptor_tmp_121, handler[4] = v41, v42 = notify_register_dispatch("com.apple.airplay.prefsChanged", (v40 + 168), v41, handler), v42))
  {
    v43 = v42;
    APEndpointStreamAggregateAudioCreate_cold_6(v42);
  }

  else
  {
    v43 = 0;
    *a13 = v49;
    v49 = 0;
  }

  CFRelease(v37);
LABEL_34:
  if (v49)
  {
    CFRelease(v49);
  }

  return v43;
}

void streamAggregateAudio_addSubStreamFromEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  StreamOfType = FigEndpointCopyFirstStreamOfType();
  if (StreamOfType)
  {
    streamAggregateAudio_addSubStreamFromEndpoint_cold_1(StreamOfType);
  }
}

void streamAggregateAudio_darwinQueueFinalizer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t streamAggregateAudio_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 208);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 208) = 0;
  }

  FigSimpleMutexDestroy();
  v3 = *(DerivedStorage + 176);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 176) = 0;
  }

  v4 = *(DerivedStorage + 184);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 184) = 0;
  }

  v5 = *(DerivedStorage + 216);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 216) = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 24) = 0;
  }

  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 32) = 0;
  }

  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 40) = 0;
  }

  v9 = *(DerivedStorage + 56);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 56) = 0;
  }

  v10 = *(DerivedStorage + 112);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 112) = 0;
  }

  v11 = *(DerivedStorage + 120);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 120) = 0;
  }

  v12 = *(DerivedStorage + 128);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 128) = 0;
  }

  v13 = *(DerivedStorage + 136);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 136) = 0;
  }

  v14 = *(DerivedStorage + 80);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 80) = 0;
  }

  v15 = *(DerivedStorage + 8);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 8) = 0;
  }

  v17 = (DerivedStorage + 88);
  v16 = *(DerivedStorage + 88);
  if (v16)
  {
    v18 = CMSimpleQueueDequeue(v16);
    if (v18)
    {
      v21 = v18;
      do
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_Finalize_cold_1(DerivedStorage + 88, v19, v20);
        }

        free(v21);
        v21 = CMSimpleQueueDequeue(*v17);
      }

      while (v21);
    }

    if (*v17)
    {
      CFRelease(*v17);
      *v17 = 0;
    }

    v22 = *(DerivedStorage + 104);
    if (v22)
    {
      CFRelease(v22);
      *(DerivedStorage + 104) = 0;
    }
  }

  v23 = *(DerivedStorage + 96);
  if (v23)
  {
    dispatch_release(v23);
    *(DerivedStorage + 96) = 0;
  }

  v24 = *(DerivedStorage + 160);
  if (v24)
  {
    dispatch_release(v24);
    *(DerivedStorage + 160) = 0;
  }

  result = *(DerivedStorage + 168);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(DerivedStorage + 168) = -1;
  }

  return result;
}

uint64_t streamAggregateAudio_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  v32 = 0;
  cf = 0;
  v30 = 0;
  v31 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 10 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_CopyProperty_cold_1(a2);
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v9 = *(DerivedStorage + 192);
    if (!v9)
    {
      streamAggregateAudio_CopyProperty_cold_2();
      v10 = 4294954516;
      goto LABEL_42;
    }

LABEL_17:
    UInt32 = CFRetain(v9);
    if (UInt32)
    {
LABEL_18:
      v10 = 0;
      *a4 = UInt32;
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]))
  {
    v11 = *(DerivedStorage + 48);
    if (v11 == 4 || v11 == 2)
    {
      v12 = MEMORY[0x277CBED28];
    }

    else
    {
      v12 = MEMORY[0x277CBED10];
    }

LABEL_16:
    v9 = *v12;
    goto LABEL_17;
  }

  if (CFEqual(a2, @"IsInUse"))
  {
    v13 = streamAggregateAudio_isInUse(*(DerivedStorage + 48));
    v12 = MEMORY[0x277CBED28];
    if (!v13)
    {
      v12 = MEMORY[0x277CBED10];
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v9 = *(DerivedStorage + 24);
    goto LABEL_17;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18C8]))
  {
    ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM();
    v10 = ASRDArrayPCM;
    if (ASRDArrayPCM)
    {
      streamAggregateAudio_CopyProperty_cold_3(ASRDArrayPCM);
    }

    else
    {
      *a4 = cf;
      cf = 0;
    }

    goto LABEL_42;
  }

  if (FigCFEqual())
  {
    APSAudioFormatDescriptionListGetMaxChannelCount();
LABEL_27:
    UInt32 = FigCFNumberCreateUInt32();
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    v16 = streamAggregateAudio_copySupportedAudioFormats(a1, &v31);
    if (v16)
    {
      v10 = v16;
      streamAggregateAudio_CopyProperty_cold_4(v16);
    }

    else
    {
      FigEndpointStreamAudioFormatDescriptionArray = APSAudioFormatDescriptionListCreateFigEndpointStreamAudioFormatDescriptionArray();
      v10 = FigEndpointStreamAudioFormatDescriptionArray;
      if (FigEndpointStreamAudioFormatDescriptionArray)
      {
        streamAggregateAudio_CopyProperty_cold_5(FigEndpointStreamAudioFormatDescriptionArray);
      }

      else
      {
        *a4 = v32;
        v32 = 0;
      }
    }

    goto LABEL_42;
  }

  if (FigCFEqual())
  {
    v18 = streamAggregateAudio_copySupportedAudioFormats(a1, &v31);
    if (v18)
    {
      v10 = v18;
      streamAggregateAudio_CopyProperty_cold_6(v18);
    }

    else
    {
      v19 = APSAudioFormatDescriptionListCopyRichestFormatAsFigEndpointStreamAudioFormatDescription();
      v10 = v19;
      if (v19)
      {
        streamAggregateAudio_CopyProperty_cold_7(v19);
      }

      else
      {
        *a4 = v30;
        v30 = 0;
      }
    }

    goto LABEL_42;
  }

  if (FigCFEqual())
  {
    UInt32 = *(DerivedStorage + 8);
    if (!UInt32)
    {
      goto LABEL_18;
    }

LABEL_38:
    UInt32 = CFRetain(UInt32);
    goto LABEL_18;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v25 = streamAggregateAudio_copySupportedAudioCapabilities(a1, a4);
      v10 = v25;
      if (v25)
      {
        streamAggregateAudio_CopyProperty_cold_9(v25);
      }

      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1840]))
    {
      v22 = APAudioEngineVendorVend(*(DerivedStorage + 176), a4);
      v10 = v22;
      if (v22)
      {
        streamAggregateAudio_CopyProperty_cold_10(v22);
      }

      goto LABEL_42;
    }

    if (CFEqual(a2, @"HoseRegistrar"))
    {
      UInt32 = *(DerivedStorage + 80);
      if (!UInt32)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1870]))
    {
      IsCluster = streamAggregateAudio_subStreamHasRemoteStreamOrIsCluster(a1);
      v24 = MEMORY[0x277CBED10];
      if (IsCluster)
      {
        v24 = MEMORY[0x277CBED28];
      }

      goto LABEL_61;
    }

    if (CFEqual(a2, @"SupportsAPAP"))
    {
      v26 = MEMORY[0x277CBED28];
      v27 = *(DerivedStorage + 18);
      goto LABEL_73;
    }

    if (CFEqual(a2, @"SupportsAPAT"))
    {
      v26 = MEMORY[0x277CBED28];
      v27 = *(DerivedStorage + 19);
      goto LABEL_73;
    }

    if (CFEqual(a2, *MEMORY[0x277CC18E0]))
    {
      v26 = MEMORY[0x277CBED28];
      v27 = *(DerivedStorage + 20);
      goto LABEL_73;
    }

    if (CFEqual(a2, @"EndpointIDs"))
    {
      v28 = streamAggregateAudio_copyNonLocalEndpointIDs(a1, a4);
      v10 = v28;
      if (v28)
      {
        streamAggregateAudio_CopyProperty_cold_11(v28);
      }

      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC18D8]))
    {
      if (APSSettingsIsFeatureEnabled())
      {
        v26 = MEMORY[0x277CBED28];
        v27 = *(DerivedStorage + 152);
LABEL_73:
        if (!v27)
        {
          v26 = MEMORY[0x277CBED10];
        }

        UInt32 = *v26;
        if (!*v26)
        {
          goto LABEL_18;
        }

        goto LABEL_38;
      }
    }

    else if (!CFEqual(a2, @"IsSidePlayStream"))
    {
      if (CFEqual(a2, @"NumberOfSubStreams"))
      {
        streamAggregateAudio_getTotalNumberOfAudioStreams(a1);
        goto LABEL_27;
      }

      if (!CFEqual(a2, *MEMORY[0x277CC1838]))
      {
        v10 = 4294954512;
        goto LABEL_42;
      }

      if (!*(DerivedStorage + 153) || streamAggregateAudio_getTotalNumberOfAudioStreams(a1) < 3)
      {
        v24 = MEMORY[0x277CBED28];
        goto LABEL_61;
      }
    }

    v24 = MEMORY[0x277CBED10];
LABEL_61:
    UInt32 = *v24;
    goto LABEL_38;
  }

  valuePtr = APSAudioFormatDescriptionListGetLegacyFormatMask();
  v20 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
  *a4 = v20;
  if (v20)
  {
LABEL_41:
    v10 = 0;
    goto LABEL_42;
  }

  streamAggregateAudio_CopyProperty_cold_8();
  v10 = 4294950535;
LABEL_42:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v10;
}

uint64_t streamAggregateAudio_isInUse(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 5)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 90 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_isInUse_cold_1(v1);
    }

    LOBYTE(v2) = 0;
  }

  else
  {
    return (0x101010000uLL >> (8 * a1));
  }

  return v2;
}

uint64_t streamAggregateAudio_copySupportedAudioFormats(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    streamAggregateAudio_copySupportedAudioFormats_cold_4();
    return 4294950536;
  }

  if (CFEqual(*(DerivedStorage + 192), *MEMORY[0x277CC1968]))
  {
    v5 = streamAggregateAudio_copySupportedAudioFormatForBufferAudio(a1, &cf);
    if (!v5)
    {
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        streamAggregateAudio_copySupportedAudioFormats_cold_2(&cf);
      }

      goto LABEL_9;
    }

    v7 = v5;
    streamAggregateAudio_copySupportedAudioFormats_cold_1(v5);
  }

  else
  {
    Copy = APSAudioFormatDescriptionListCreateCopy();
    if (!Copy)
    {
LABEL_9:
      v7 = 0;
      *a2 = cf;
      return v7;
    }

    v7 = Copy;
    streamAggregateAudio_copySupportedAudioFormats_cold_3(Copy);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t streamAggregateAudio_subStreamHasRemoteStreamOrIsCluster(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 200))
  {
    return 1;
  }

  v2 = FigCFDictionaryCopyArrayOfValues();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_8:
    v1 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v3, v6);
      if (APSGetFBOPropertyInt64())
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    v1 = 1;
  }

  CFRelease(v3);
  return v1;
}

uint64_t streamAggregateAudio_copyNonLocalEndpointIDs(uint64_t a1, CFTypeRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!a2)
  {
    streamAggregateAudio_copyNonLocalEndpointIDs_cold_2();
    return 4294950536;
  }

  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    streamAggregateAudio_copyNonLocalEndpointIDs_cold_1();
    return 4294950535;
  }

  v5 = Mutable;
  v6 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v6) < 1)
  {
LABEL_11:
    v12 = 0;
    *a2 = CFRetain(v5);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v6, v7);
    if (!APSGetFBOPropertyInt64())
    {
      break;
    }

LABEL_10:
    if (++v7 >= CFArrayGetCount(v6))
    {
      goto LABEL_11;
    }
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v12 = 4294954514;
    goto LABEL_17;
  }

  v10 = v9(CMBaseObject, @"EndpointIDs", v3, &theArray);
  if (!v10)
  {
    v11 = theArray;
    v15.length = CFArrayGetCount(theArray);
    v15.location = 0;
    CFArrayAppendArray(v5, v11, v15);
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    goto LABEL_10;
  }

  v12 = v10;
LABEL_17:
  APSLogErrorAt();
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

LABEL_13:
  CFRelease(v5);
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v12;
}

uint64_t streamAggregateAudio_getTotalNumberOfAudioStreams(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFDictionaryCopyArrayOfValues();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      CFArrayGetValueAtIndex(v2, i);
      if (APSGetFBOPropertyInt64())
      {
        v5 = (v5 + 1);
      }

      else if (APSGetFBOPropertyInt64())
      {
        v7 = APSGetFBOPropertyInt64();
        v5 = (v5 + v7);
      }
    }
  }

  CFRelease(v2);
  return v5;
}

uint64_t streamAggregateAudio_copySupportedAudioFormatForBufferAudio(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  CMBaseObjectGetDerivedStorage();
  FigGetCFPreferenceNumberWithDefault();
  CFDictionaryApplyBlock();
  v3 = *(v11 + 6);
  if (v3)
  {
    streamAggregateAudio_copySupportedAudioFormatForBufferAudio_cold_1(v3);
  }

  else if (a2)
  {
    APSAudioFormatDescriptionListCopyFilterFormatsForCurrentBufferedSenderWithEndpointStreamsInfo();
  }

  v4 = *(v11 + 6);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t streamAggregateAudio_setPropertyForAllSubStreamsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionarySetValue();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_setPropertyForAllSubStreamsInternal_cold_1(a2, v6, v7);
  }

  context[1] = a3;
  v10 = 0;
  context[0] = a2;
  CFDictionaryApplyFunction(*(DerivedStorage + 32), streamAggregateAudio_setPropertyForSubStreamsIterator, context);
  return v10;
}

uint64_t streamAggregateAudio_removeSubStreamNotificationListeners(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

void streamAggregateAudio_updateDynamicProperties(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v4 = FigCFEqual();
  v5 = FigCFEqual();
  v6 = FigCFEqual();
  v7 = FigCFEqual();
  v43 = (DerivedStorage + 192);
  v8 = FigCFEqual();
  if (*(DerivedStorage + 52))
  {
    streamAggregateAudio_updateDynamicProperties_cold_1();
    v41 = 0;
    v10 = 0;
    goto LABEL_168;
  }

  v9 = v8;
  v10 = FigCFDictionaryCopyArrayOfValues();
  Count = CFArrayGetCount(v10);
  v14 = "F";
  if (Count < 1)
  {
    cf = 0;
    goto LABEL_60;
  }

  v44 = v9;
  v45 = DerivedStorage;
  v46 = a2;
  v15 = v10;
  cf = 0;
  v16 = 0;
  v17 = 0;
  v47 = 0;
  v49 = *MEMORY[0x277CBECE8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if ((!v20 || v20(CMBaseObject, @"SupportedAudioFormatList", v49, &v52)) && gLogCategory_APEndpointStreamAggregateAudio <= 30 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_updateDynamicProperties(FigEndpointStreamRef, Boolean *)", 33554462, "[%{ptr}] SubEndpointStream(%{ptr}) does not support kAPEndpointStreamProperty_SupportedAudioFormatList", a1, ValueAtIndex);
    }

    v11 = v52;
    if (v52)
    {
      goto LABEL_16;
    }

    v21 = FigEndpointStreamGetCMBaseObject();
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v22(v21, @"SupportedAPAudioFormats", v49, &v54);
    }

    if (v54)
    {
      CFNumberGetValue(v54, kCFNumberSInt64Type, &valuePtr);
      APSAudioFormatDescriptionListCreateWithLegacyAudioFormatMask();
    }

    v11 = v52;
    if (v52)
    {
LABEL_16:
      if (!v17)
      {
        cf = CFRetain(v11);
LABEL_29:
        v17 = 1;
        goto LABEL_30;
      }

      if (APSAudioFormatDescriptionListCreateIntersectionList())
      {
        goto LABEL_29;
      }

      if (APSAudioFormatDescriptionListGetFormatCount() >= 1)
      {
        v57[0] = 0;
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_updateDynamicProperties_cold_2(&v51);
        }

        v47 = 1;
      }

      v23 = v51;
      if (v51)
      {
        CFRetain(v51);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v17 = 1;
      cf = v23;
    }

    else if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_updateDynamicProperties(FigEndpointStreamRef, Boolean *)", 33554482, "[%{ptr}] No supported audio formats found for substream [%{ptr}]", a1, ValueAtIndex);
    }

LABEL_30:
    if (v4)
    {
      v4 = APSGetFBOPropertyInt64() != 0;
    }

    else
    {
      v4 = 0;
    }

    if (v5)
    {
      v5 = APSGetFBOPropertyInt64() != 0;
    }

    else
    {
      v5 = 0;
    }

    if (v6)
    {
      v6 = APSGetFBOPropertyInt64() != 0;
    }

    else
    {
      v6 = 0;
    }

    if (v7)
    {
      v7 = APSGetFBOPropertyInt64() != 0;
    }

    else
    {
      v7 = 0;
    }

    if (v52)
    {
      CFRelease(v52);
      v52 = 0;
    }

    if (v51)
    {
      CFRelease(v51);
      v51 = 0;
    }

    if (v54)
    {
      CFRelease(v54);
      v54 = 0;
    }

    ++v16;
  }

  while (Count != v16);
  v14 = "F";
  if (v47)
  {
    v14 = "T";
  }

  v10 = v15;
  DerivedStorage = v45;
  a2 = v46;
  v9 = v44;
LABEL_60:
  v57[0] = 0;
  if (gLogCategory_APEndpointStreamAggregateAudio < 51)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize())
    {
      APSAudioFormatDescriptionListCopyDebugString();
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_updateDynamicProperties(FigEndpointStreamRef, Boolean *)", 33554482, "[%{ptr}] type=%@, supportedFormatsFound=%s, subStreamCount=%d supportedAudioFormats=%@", a1, *v43, v14, Count, v57[0]);
      }

      if (v57[0])
      {
        CFRelease(v57[0]);
      }
    }

    v57[0] = 0;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_updateDynamicProperties_cold_3(DerivedStorage, v57);
    }
  }

  if (v4 == *(DerivedStorage + 18) || (*(DerivedStorage + 18) = v4, (*(DerivedStorage + 48) - 2) > 2))
  {
    v26 = 0;
  }

  else
  {
    if (v4)
    {
      v24 = 1;
    }

    else
    {
      v24 = *(DerivedStorage + 16) == 0;
    }

    v25 = !v24;
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        streamAggregateAudio_updateDynamicProperties_cold_4(a1, v11, v12);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      v26 = 1;
    }

    if (CFDictionaryGetInt64() && !*(DerivedStorage + 16))
    {
      v42 = *(DerivedStorage + 18) ? v25 : 1;
      if ((v42 & 1) == 0)
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_updateDynamicProperties_cold_5(a1, v11, v12);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        v26 = 1;
      }
    }
  }

  if (v5 != *(DerivedStorage + 19))
  {
    *(DerivedStorage + 19) = v5;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_updateDynamicProperties_cold_6();
    }

    if ((*(DerivedStorage + 48) - 2) <= 2)
    {
      if (*(DerivedStorage + 17) && !(*(DerivedStorage + 19) | v26))
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_updateDynamicProperties_cold_7(a1, v11, v12);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        v26 = 1;
      }

      if (CFDictionaryGetInt64() && !*(DerivedStorage + 17) && !v26 && *(DerivedStorage + 19))
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_updateDynamicProperties_cold_8(a1, v11, v12);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        v26 = 1;
      }
    }
  }

  if (v6 != *(DerivedStorage + 20))
  {
    *(DerivedStorage + 20) = v6;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_updateDynamicProperties_cold_9();
    }

    v27 = *(DerivedStorage + 48);
    if ((v27 & 0xFFFFFFFE) == 2)
    {
      if (!v26)
      {
        goto LABEL_115;
      }

LABEL_119:
      v26 = 1;
    }

    else if (!v26 && v27 == 4)
    {
LABEL_115:
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        streamAggregateAudio_updateDynamicProperties_cold_10(a1, v11, v12);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      goto LABEL_119;
    }
  }

  if (v7 != *(DerivedStorage + 152))
  {
    *(DerivedStorage + 152) = v7;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_updateDynamicProperties_cold_11();
    }

    v28 = *(DerivedStorage + 48);
    if ((v28 & 0xFFFFFFFE) == 2)
    {
      if (!v26)
      {
        goto LABEL_129;
      }

LABEL_133:
      LOBYTE(v26) = 1;
    }

    else if (!v26 && v28 == 4)
    {
LABEL_129:
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        streamAggregateAudio_updateDynamicProperties_cold_10(a1, v11, v12);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      goto LABEL_133;
    }
  }

  v29 = (DerivedStorage + 8);
  if (!FigCFEqual())
  {
    v56 = 0;
    v57[0] = 0;
    v55 = 0;
    FilteredListWithTranscodeFormats = APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats();
    if (FilteredListWithTranscodeFormats)
    {
      streamAggregateAudio_updateDynamicProperties_cold_13(FilteredListWithTranscodeFormats);
    }

    else
    {
      v31 = APSAudioFormatDescriptionListCopyChannelLayoutTags();
      if (v31)
      {
        streamAggregateAudio_updateDynamicProperties_cold_14(v31);
      }

      else
      {
        if (v57[0])
        {
          CFRelease(v57[0]);
          v57[0] = 0;
        }

        v32 = APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats();
        if (v32)
        {
          streamAggregateAudio_updateDynamicProperties_cold_15(v32);
        }

        else
        {
          v33 = APSAudioFormatDescriptionListCopyChannelLayoutTags();
          if (!v33)
          {
            v36 = FigCFEqual() != 0;
            goto LABEL_142;
          }

          streamAggregateAudio_updateDynamicProperties_cold_16(v33);
        }
      }
    }

    v36 = 1;
LABEL_142:
    if (v57[0])
    {
      CFRelease(v57[0]);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    v37 = v55;
    if (v55)
    {
      CFRelease(v55);
    }

    if (!v36)
    {
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50)
      {
        if (gLogCategory_APEndpointStreamAggregateAudio != -1 || (v37 = _LogCategory_Initialize(), v37))
        {
          streamAggregateAudio_updateDynamicProperties_cold_17(v37, v34, v35);
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    v38 = *v29;
    *v29 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    v57[0] = 0;
    if (gLogCategory_APEndpointStreamAggregateAudio < 51)
    {
      if (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize())
      {
        streamAggregateAudio_updateDynamicProperties_cold_18((DerivedStorage + 8), v57);
      }

      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        streamAggregateAudio_updateDynamicProperties_cold_19(a1, v39, v40);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    LOBYTE(v26) = 1;
  }

  if (a2 && v9)
  {
    *a2 = v26;
  }

  v41 = cf;
LABEL_168:
  if (v54)
  {
    CFRelease(v54);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

double streamAggregateAudio_supportedAudioFormatsChangedNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_supportedAudioFormatsChangedNotificationListener(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] substream [%{ptr}] formats changed\n", a2, a4);
  }

  FigSimpleMutexLock();
  streamAggregateAudio_updateDynamicProperties(a2, 0);

  FigSimpleMutexUnlock();
  return result;
}

double streamAggregateAudio_activeConfigurationDidBecomeInvalidNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_activeConfigurationDidBecomeInvalidNotificationListener(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] substream [%{ptr}] ActiveConfigurationDidBecomeInvalid\n", a2, a4);
  }

  FigSimpleMutexLock();
  streamAggregateAudio_updateDynamicProperties(a2, 0);

  FigSimpleMutexUnlock();
  return result;
}

uint64_t streamAggregateAudio_subStreamNotificationForwarder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t streamAggregateAudio_setPropertyForSubStreamsIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigEndpointStreamSetProperty(a2, *a3, *(a3 + 8));
  if (result)
  {
    *(a3 + 16) = result;
  }

  return result;
}

__CFString *streamAggregateAudio_subEndpointAddRemoveObservingProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamAggregateAudio <APSubEndpointAddRemoveObservingProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t streamAggregateAudio_NotifySubEndpointAdded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  streamAggregateAudio_addSubStreamFromEndpoint(a1, *(DerivedStorage + 192), a2);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t streamAggregateAudio_NotifySubEndpointRemoved(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), a2);
  if (Value)
  {
    v6 = *(DerivedStorage + 40);
    v15.length = CFArrayGetCount(v6);
    v15.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v15, Value);
    if (FirstIndexOfValue != -1)
    {
      v8 = FirstIndexOfValue;
      FigEndpointStreamSuspend();
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 40), v8);
      if (gLogCategory_APEndpointStreamAggregateAudio > 50)
      {
        goto LABEL_11;
      }

      if (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_NotifySubEndpointRemoved(CMBaseObjectRef, FigEndpointRef)", 33554482, "[%{ptr}] SubStream [%{ptr}] was resumed on endpoint removal. Suspending it.\n", a1, Value);
      }
    }
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_NotifySubEndpointRemoved(CMBaseObjectRef, FigEndpointRef)", 33554482, "[%{ptr}] Removing stream [%{ptr}] because endpoint [%{ptr}] was removed from aggregate. \n", a1, Value, a2);
  }

LABEL_11:
  CFDictionaryRemoveValue(*(DerivedStorage + 32), a2);
  streamAggregateAudio_removeSubStreamNotificationListeners(a1);
  if (CFDictionaryGetCount(*(DerivedStorage + 32)) >= 1)
  {
    streamAggregateAudio_updateDynamicProperties(a1, 0);
  }

  v9 = *(DerivedStorage + 128);
  if (Value == v9 && v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 128) = 0;
  }

  if (!*(DerivedStorage + 153) || streamAggregateAudio_getTotalNumberOfAudioStreams(a1) > 2)
  {
    goto LABEL_25;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    streamAggregateAudio_NotifySubEndpointRemoved_cold_2();
LABEL_25:
    FigSimpleMutexUnlock();
    return 0;
  }

  v11 = Mutable;
  FigCFDictionarySetBoolean();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_NotifySubEndpointRemoved_cold_1(a1, v12, v13);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  FigSimpleMutexUnlock();
  CFRelease(v11);
  return 0;
}

uint64_t streamAggregateAudio_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040B3C43913uLL);
  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040EDCEB4C7uLL);
  cf = 0;
  FigSimpleMutexLock();
  *v9 = CFRetain(a1);
  if (a2)
  {
    v11 = CFRetain(a2);
  }

  else
  {
    v11 = 0;
  }

  v9[1] = v11;
  *(v9 + 14) = 0;
  v9[8] = a4;
  v9[9] = a3;
  v12 = APSWrapperCreate();
  v13 = v12;
  if (v12)
  {
    streamAggregateAudio_Suspend_cold_1(v12, &cf);
  }

  else
  {
    v14 = cf;
    if (cf)
    {
      v14 = CFRetain(cf);
    }

    v10[1] = v14;
    *(v10 + 4) = 1;
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      CFDictionarySetInt64();
    }

    else
    {
      Int64Ranged = 0;
    }

    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_Suspend(FigEndpointStreamRef, CFDictionaryRef, FigEndpointStreamCompletionCallback, void *)", 33554482, "[%{ptr}] Enqueueing Suspend for item %{ptr} context %{ptr}, current pending suspend count %d for registrar %{ptr}\n", a1, v10, v9, Int64Ranged, Value);
    }

    CMSimpleQueueEnqueue(*(DerivedStorage + 88), v10);
    streamAggregateAudio_triggerSuspendOrResumeIfNecessary(*v9);
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t streamAggregateAudio_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040B3C43913uLL);
  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040EDCEB4C7uLL);
  cf = 0;
  FigSimpleMutexLock();
  *v9 = CFRetain(a1);
  if (a2)
  {
    v11 = CFRetain(a2);
  }

  else
  {
    v11 = 0;
  }

  *(v9 + 1) = v11;
  *(v9 + 4) = 1;
  *(v9 + 41) = 0;
  *(v9 + 14) = 0;
  *(v9 + 8) = a4;
  *(v9 + 9) = a3;
  v12 = APSWrapperCreate();
  if (v12)
  {
    v20 = v12;
    streamAggregateAudio_Resume_cold_1(v12, &cf);
LABEL_20:
    FigSimpleMutexUnlock();
    goto LABEL_15;
  }

  v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v13)
  {
    streamAggregateAudio_Resume_cold_2();
    v20 = 4294950535;
    goto LABEL_20;
  }

  v14 = v13;
  if (*(DerivedStorage + 148))
  {
    v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(DerivedStorage + 96));
    *(v9 + 6) = v15;
    v16 = CFRetain(v14);
    dispatch_set_context(v15, v16);
    dispatch_source_set_event_handler_f(*(v9 + 6), streamAggregateAudio_resumeTimerCallback);
    dispatch_source_set_cancel_handler_f(*(v9 + 6), streamAggregateAudio_resumerTimerCancelled);
    v17 = *(v9 + 6);
    v18 = dispatch_time(0, 1000000 * *(DerivedStorage + 148));
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v9 + 6));
  }

  v19 = cf;
  if (cf)
  {
    v19 = CFRetain(cf);
  }

  v10[1] = v19;
  *(v10 + 4) = 2;
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_Resume(FigEndpointStreamRef, CFDictionaryRef, FigEndpointStreamCompletionCallback, void *)", 33554482, "[%{ptr}] Enqueueing Resume for item %{ptr} context %{ptr}\n", a1, v10, v9);
  }

  CMSimpleQueueEnqueue(*(DerivedStorage + 88), v10);
  streamAggregateAudio_triggerSuspendOrResumeIfNecessary(*v9);
  FigSimpleMutexUnlock();
  CFRelease(v14);
  v20 = 0;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t streamAggregateAudio_Dissociate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_Dissociate_cold_1(a1, v3, v4);
  }

  v5 = *(DerivedStorage + 40);
  if (v5 && CFArrayGetCount(v5) >= 1 && gLogCategory_APEndpointStreamAggregateAudio <= 90 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_Dissociate_cold_2(a1);
  }

  v6 = *(DerivedStorage + 64);
  if (v6)
  {
    APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(v6);
    v7 = *(DerivedStorage + 64);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 64) = 0;
    }
  }

  *(DerivedStorage + 52) = 1;
  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 208))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  return 0;
}

uint64_t streamAggregateAudio_Control(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_Control(FigEndpointStreamRef, CFStringRef, CFDictionaryRef)", 33554482, "[%{ptr}] Control message received '%@'. \n", a1, a2);
    }

    context[0] = a2;
    context[1] = a3;
    CFDictionaryApplyFunction(*(DerivedStorage + 32), streamAggregateAudio_genericCoreCaptureIterator, context);
    return 0;
  }

  else
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 90 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_Control(FigEndpointStreamRef, CFStringRef, CFDictionaryRef)", 33554522, "### [%{ptr}]: Invalid control command '%@'\n", a1, a2);
    }

    return 4294950536;
  }
}

void streamAggregateAudio_finalizeSharedContextWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_release(v5);
  }

  free(a1);
}

CMSimpleQueueRef *streamAggregateAudio_triggerSuspendOrResumeIfNecessary(const void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if ((*(result + 12) | 2) == 2)
  {
    result = CMSimpleQueueGetHead(result[11]);
    if (result)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      return APSDispatchAsyncFHelper();
    }
  }

  return result;
}

void streamAggregateAudio_triggerSuspendOrResume(CFTypeRef *a1)
{
  v69 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if ((*(DerivedStorage + 48) | 2) != 2)
  {
    goto LABEL_94;
  }

  v3 = CMSimpleQueueDequeue(*(DerivedStorage + 88));
  if (!v3)
  {
    goto LABEL_94;
  }

  v4 = v3;
  v5 = *a1;
  CMBaseObjectGetDerivedStorage();
  Value = APSWrapperGetValue();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50)
  {
    v7 = Value;
    if (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_triggerSuspendOrResumeInternal(FigEndpointStreamRef, AggregateStreamAudioResumptionItem *)", 33554482, "[%{ptr}] Triggering Suspend or resume for item %{ptr} context %{ptr}\n", v5, v4, v7);
    }
  }

  v8 = *(v4 + 16);
  if (v8 == 1)
  {
    v15 = *(v4 + 8);
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = APSWrapperGetValue();
    *bytes = 0;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_suspendInternal(FigEndpointStreamRef, APSWrapperRef)", 33554482, "[%{ptr}] Suspending for context %{ptr}\n", v5, v17);
    }

    *(v17 + 24) = FigCFDictionaryGetCount();
    v18 = *(v16 + 48);
    if (v18)
    {
      v19 = *MEMORY[0x277CBECE8];
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v21 = MutableCopy;
        contexta = v15;
        v22 = CFDictionaryGetValue(MutableCopy, @"HoseRegistrar");
        CFDictionaryGetInt64();
        v23 = *(v16 + 80);
        if (v23 && v22 && !CFEqual(v23, v22))
        {
          streamAggregateAudio_triggerSuspendOrResume_cold_2(v5, &v67, v24);
          v57 = v67;
        }

        else
        {
          streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(v5, 1);
          if (*(v16 + 52))
          {
            streamAggregateAudio_triggerSuspendOrResume_cold_1();
            v57 = -16762;
          }

          else
          {
            v25 = *(v16 + 64);
            if (v25)
            {
              v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v26)
              {
                v26(v25, @"PrimaryPacketDropCount", v19, bytes);
              }

              CFGetInt64();
              APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(*(v16 + 64));
              v27 = *(v16 + 64);
              if (v27)
              {
                CFRelease(v27);
                *(v16 + 64) = 0;
              }
            }

            CFDictionarySetInt64();
            v28 = *(v17 + 8);
            *(v17 + 8) = v21;
            CFRetain(v21);
            if (v28)
            {
              CFRelease(v28);
            }

            *(v16 + 16) = 0;
            if (*(v17 + 24) >= 1)
            {
              CFDictionaryApplyFunction(*(v16 + 32), streamAggregateAudio_suspendSubStreamIterator, contexta);
              goto LABEL_39;
            }

            v57 = 0;
          }
        }

        *(v17 + 56) = v57;
        streamAggregateAudio_suspendCompletion(contexta);
LABEL_39:
        CFRelease(v21);
        v29 = *bytes;
        if (!*bytes)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      streamAggregateAudio_triggerSuspendOrResume_cold_3();
      v18 = -16761;
    }

    *(v17 + 56) = v18;
    streamAggregateAudio_suspendCompletion(v15);
    goto LABEL_91;
  }

  if (v8 != 2)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 90 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_triggerSuspendOrResume_cold_12(v4);
    }

    streamAggregateAudio_triggerSuspendOrResumeIfNecessary(v5);
    goto LABEL_91;
  }

  v9 = *(v4 + 8);
  v10 = CMBaseObjectGetDerivedStorage();
  v11 = APSWrapperGetValue();
  context = v11;
  cf = 0;
  if (*(v10 + 48) == 2)
  {
    v52 = 0;
    Mutable = 0;
    v13 = 0;
LABEL_118:
    v56 = 0;
    goto LABEL_128;
  }

  v12 = v11;
  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(v5, 3);
  allocator = *MEMORY[0x277CBECE8];
  v13 = FigCFDictionaryCreateMutableCopy();
  key = @"HoseRegistrar";
  v59 = CFDictionaryGetValue(v13, @"HoseRegistrar");
  if (v59)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
  }

  else
  {
    Int64Ranged = 0;
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_resumeInternal(FigEndpointStreamRef, APSWrapperRef)", 33554482, "[%{ptr}] Resuming for context %{ptr} with pending suspend count of %d for registrar %{ptr}\n", v5, v12, Int64Ranged, v59, @"HoseRegistrar");
  }

  Int64 = CFDictionaryGetInt64();
  if (Int64 && !*(v10 + 18))
  {
    streamAggregateAudio_triggerSuspendOrResume_cold_11(v5, v31, v32);
LABEL_127:
    v52 = 0;
    Mutable = 0;
    v56 = -6735;
LABEL_128:
    context[14] = v56;
    streamAggregateAudio_resumeCallClientCallback(v9);
    streamAggregateAudio_resumeCompletion(v9);
    if (!v13)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  *(v10 + 16) = Int64 != 0;
  v33 = CFDictionaryGetInt64();
  if (v33 && !*(v10 + 19))
  {
    streamAggregateAudio_triggerSuspendOrResume_cold_10(v5, v34, v35);
    goto LABEL_127;
  }

  *(v10 + 17) = v33 != 0;
  if (Int64Ranged)
  {
    v52 = 0;
    Mutable = 0;
    goto LABEL_118;
  }

  *(v12 + 24) = FigCFDictionaryGetCount();
  *(v12 + 32) = 1;
  if (*(v10 + 52))
  {
    streamAggregateAudio_triggerSuspendOrResume_cold_4();
    v52 = 0;
    Mutable = 0;
    v56 = -16762;
    goto LABEL_128;
  }

  v67 = 0;
  RandomBytes();
  v36 = CFDataCreate(allocator, bytes, 32);
  v37 = APSCryptorChaCha20Poly1305Create();
  if (v37)
  {
    v56 = v37;
    streamAggregateAudio_triggerSuspendOrResume_cold_5(v37, v36, &v67);
    v52 = 0;
    Mutable = 0;
    goto LABEL_128;
  }

  v62 = v36;
  theDict = v13;
  v61 = v9;
  if (gLogCategory_APEndpointStreamAggregateAudio <= 40 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_triggerSuspendOrResume_cold_6();
  }

  v38 = CMBaseObjectGetDerivedStorage();
  v39 = *MEMORY[0x277CC1960];
  v40 = FigCFEqual();
  v41 = *MEMORY[0x277CC1968];
  v42 = FigCFEqual();
  v43 = FigCFEqual();
  if (*(v38 + 200) && *(v38 + 201) && (v40 || v42 && !v43) && gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_synchronizeHijackIDIfNeeded(FigEndpointStreamRef)", 33554482, "[%{ptr}] Sync hijackID = %@\n", v5, *(v38 + 216));
  }

  v44 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(*(v44 + 192), v39) || CFEqual(*(v44 + 192), v41))
  {
    Mutable = 0;
    v13 = theDict;
    v9 = v61;
LABEL_64:
    v46 = context;
    goto LABEL_65;
  }

  v46 = context;
  if (CFEqual(*(v44 + 192), *MEMORY[0x277CC1970]) && *(v44 + 203) && APSSettingsGetIntWithDefault() && APSSettingsGetIntWithDefault() && !APSGetAllowPersistentGroupsOnInfra() && !APSIsVirtualMachine())
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "Boolean streamAggregateAudio_shouldUseAggregateHose(FigEndpointStreamRef)", 33554482, "[%{ptr}] Using Aggregate Hose for type %@\n", v5, *(v44 + 192));
    }

    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      streamAggregateAudio_triggerSuspendOrResume_cold_9();
      v56 = -16761;
      v13 = theDict;
      v9 = v61;
      goto LABEL_124;
    }

    v13 = theDict;
    CFDictionaryGetValue(theDict, @"BBufBackingProvider");
    FigCFDictionarySetValue();
    v54 = APEndpointStreamAudioHoseAggregateCreate(allocator, v59, Mutable, &cf);
    v9 = v61;
    if (v54)
    {
      v56 = v54;
      streamAggregateAudio_triggerSuspendOrResume_cold_7(v54);
      goto LABEL_124;
    }

    v55 = APEndpointStreamAudioHoseAggregateRegisterWithParentRegistrar(cf);
    if (v55)
    {
      v56 = v55;
      streamAggregateAudio_triggerSuspendOrResume_cold_8(v55);
      goto LABEL_124;
    }

    CFDictionarySetValue(theDict, @"IsAudioDataAggregated", *MEMORY[0x277CBED28]);
    CFDictionarySetValue(theDict, key, cf);
    *(v10 + 64) = cf;
    cf = 0;
    goto LABEL_64;
  }

  Mutable = 0;
  v13 = theDict;
  v9 = v61;
LABEL_65:
  v47 = *(v10 + 56);
  *(v10 + 56) = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  v48 = v46[1];
  v46[1] = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  v49 = v46[2];
  v50 = *(v10 + 136);
  v46[2] = v50;
  if (v50)
  {
    CFRetain(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  v51 = *(v10 + 72);
  *(v10 + 72) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v46[3] < 1)
  {
    v56 = 0;
LABEL_124:
    v52 = v62;
    goto LABEL_128;
  }

  CFDictionaryApplyFunction(*(v10 + 32), streamAggregateAudio_resumeSubStreamIterator, v9);
  v52 = v62;
  if (v13)
  {
LABEL_83:
    CFRelease(v13);
  }

LABEL_84:
  if (v52)
  {
    CFRelease(v52);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!Mutable)
  {
    goto LABEL_91;
  }

  v29 = Mutable;
LABEL_90:
  CFRelease(v29);
LABEL_91:
  v53 = *(v4 + 8);
  if (v53)
  {
    CFRelease(v53);
  }

  free(v4);
LABEL_94:
  FigSimpleMutexUnlock();
  if (*a1)
  {
    CFRelease(*a1);
  }
}

void streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = streamAggregateAudio_isInUse(a2);
  v6 = streamAggregateAudio_isInUse(*(DerivedStorage + 48));
  if (*(DerivedStorage + 48) == 3 && (a2 == 4 || a2 == 2))
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 30 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_setResumptionStageAndNotifyIfNeeded_cold_1(a1);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (v6 == v5)
  {
    goto LABEL_19;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = MEMORY[0x277CBED10];
    if (v5)
    {
      v9 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsInUse", *v9);
    if (gLogCategory_APEndpointStreamAggregateAudio <= 30 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      v10 = "yes";
      if (!v5)
      {
        v10 = "no";
      }

      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(FigEndpointStreamRef, APEndpointStreamAggregateAudioResumptionStage)", 33554462, "[%{ptr}] Posting kAPEndpointStreamNotification_IsInUseDidChange: %s\n", a1, v10);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v8);
LABEL_19:
    *(DerivedStorage + 48) = a2;
    return;
  }

  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded_cold_2();
}

uint64_t streamAggregateAudio_resumeSubStreamIterator(uint64_t a1, uint64_t a2, CFTypeRef a3)
{
  Value = APSWrapperGetValue();
  v6 = *(Value + 16);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v8(CMBaseObject, *MEMORY[0x277CC1868], v6);
  }

  v9 = *(Value + 8);
  if (a3)
  {
    a3 = CFRetain(a3);
  }

  VTable = CMBaseObjectGetVTable();
  v12 = *(VTable + 16);
  result = VTable + 16;
  v13 = *(v12 + 16);
  if (v13)
  {

    return v13(a2, v9, streamAggregateAudio_resumeSubStreamCallback, a3);
  }

  return result;
}

void streamAggregateAudio_resumeCallClientCallback(uint64_t a1)
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_resumeCallClientCallback_cold_1(Value, v2, v3);
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    v6 = *(DerivedStorage + 80);
    v7 = CFDictionaryGetValue(v5, @"HoseRegistrar");
    *(DerivedStorage + 80) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  CFRetain(*Value);
  APSDispatchAsyncFHelper();
  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(*Value, 4);
}

void streamAggregateAudio_resumeCompletion(uint64_t a1)
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(Value + 56);
  if (v5)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50)
    {
      if (gLogCategory_APEndpointStreamAggregateAudio == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        v5 = *(Value + 56);
      }

      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_resumeCompletion(APSWrapperRef)", 33554482, "[%{ptr}] Resume failed for context %{ptr} with error:%d\n", *Value, Value, v5);
    }

LABEL_10:
    v7 = *(DerivedStorage + 64);
    if (v7 && (APEndpointStreamAudioHoseAggregateDeregisterWithParentRegistrar(v7), (v8 = *(DerivedStorage + 64)) != 0))
    {
      CFRelease(v8);
      v6 = 0;
      *(DerivedStorage + 64) = 0;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_14;
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_resumeCompletion_cold_1(Value, v2, v3);
  }

  v6 = 2;
LABEL_14:
  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(*Value, v6);
  v9 = *(DerivedStorage + 72);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 72) = 0;
  }

  streamAggregateAudio_triggerSuspendOrResumeIfNecessary(*Value);
  v10 = *(Value + 48);
  if (v10)
  {
    dispatch_source_cancel(*(Value + 48));
    dispatch_release(v10);
    *(Value + 48) = 0;
  }
}

void streamAggregateAudio_resumeSubStreamCallback(const void *a1, uint64_t a2, const void *a3)
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *(Value + 3) = vaddq_s64(*(Value + 3), v8);
  if (a2)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 90 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_resumeSubStreamCallback(FigEndpointStreamRef, OSStatus, void *)", 33554522, "[%{ptr}] Aggregate stream resumption: substream [%{ptr}] failed resumption with error: %d\n", *Value, a1, a2);
    }
  }

  else
  {
    v9 = *(DerivedStorage + 40);
    v11.length = CFArrayGetCount(v9);
    v11.location = 0;
    if (CFArrayGetFirstIndexOfValue(v9, v11, a1) == -1)
    {
      CFArrayAppendValue(*(DerivedStorage + 40), a1);
    }

    else if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_resumeSubStreamCallback(FigEndpointStreamRef, OSStatus, void *)", 33554482, "[%{ptr}] Aggregate stream resumption: substream [%{ptr}] was already resumed\n", *Value, a1);
    }
  }

  if (*(Value + 41) && Value[4] < 1 || Value[3] <= 0)
  {
    if (!*(Value + 40))
    {
      streamAggregateAudio_resumeCallClientCallback(a3);
      *(Value + 40) = 1;
    }

    if (Value[3] <= 0)
    {
      streamAggregateAudio_resumeCompletion(a3);
    }
  }

  FigSimpleMutexUnlock();
  if (a3)
  {

    CFRelease(a3);
  }
}

void streamAggregateAudio_streamNotificationQueueCallback(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v2(*a1, *(a1 + 8), *(a1 + 16));
  }

  v3 = *a1;

  CFRelease(v3);
}

uint64_t streamAggregateAudio_suspendSubStreamIterator(uint64_t a1, uint64_t a2, CFTypeRef a3)
{
  v5 = *(APSWrapperGetValue() + 8);
  if (a3)
  {
    a3 = CFRetain(a3);
  }

  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 8);
  if (v9)
  {

    return v9(a2, v5, streamAggregateAudio_suspendSubStreamCallback, a3);
  }

  return result;
}

CMSimpleQueueRef *streamAggregateAudio_suspendCompletion(uint64_t a1)
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_suspendCompletion_cold_1(Value, v2, v3);
  }

  if (*(DerivedStorage + 48) == 1)
  {
    streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(*Value, 0);
    v5 = *(DerivedStorage + 56);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 56) = 0;
    }

    v6 = *(DerivedStorage + 80);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 80) = 0;
    }
  }

  CFRetain(*Value);
  APSDispatchAsyncFHelper();
  if (!*(DerivedStorage + 48) && !*(Value + 56))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v7 = FigCFDictionaryGetValue();
  if (v7)
  {
    v8 = v7;
    if (CFDictionaryGetInt64Ranged() > 1)
    {
      CFDictionarySetInt64();
    }

    else
    {
      CFDictionaryRemoveValue(*(DerivedStorage + 104), v8);
    }
  }

  return streamAggregateAudio_triggerSuspendOrResumeIfNecessary(*Value);
}

void streamAggregateAudio_suspendSubStreamCallback(const void *a1, int a2, const void *a3)
{
  Value = APSWrapperGetValue();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  --*(Value + 24);
  v8 = *(DerivedStorage + 40);
  v11.length = CFArrayGetCount(v8);
  v11.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v11, a1);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 40), FirstIndexOfValue);
  }

  if (a2 != -16762)
  {
    *(Value + 56) = a2;
  }

  if (*(Value + 24) <= 0)
  {
    streamAggregateAudio_suspendCompletion(a3);
  }

  FigSimpleMutexUnlock();
  if (a3)
  {

    CFRelease(a3);
  }
}

void streamAggregateAudio_resumerTimerCancelled(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t streamAggregateAudio_genericCoreCaptureIterator(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 40);
  if (v9)
  {

    return v9(a2, v4, v5);
  }

  return result;
}

uint64_t streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStream = FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  cf = 0;
  v15 = 0;
  if (a3)
  {
    FigSimpleMutexLock();
    if (CFEqual(*(DerivedStorage + 192), *MEMORY[0x277CC1968]))
    {
      v6 = streamAggregateAudio_copySupportedAudioFormatForBufferAudio(FigEndpointStream, &cf);
      if (v6)
      {
        v12 = v6;
        streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_1(v6);
      }

      else if (*(DerivedStorage + 153) && streamAggregateAudio_getTotalNumberOfAudioStreams(FigEndpointStream) >= 3)
      {
        v7 = APSAudioFormatDescriptionListCreate();
        if (v7)
        {
          v12 = v7;
          streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_2(v7);
        }

        else
        {
          v8 = APSAudioFormatDescriptionListAddSupportedFormatsForALACToList();
          if (v8)
          {
            v12 = v8;
            streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_3(v8);
          }

          else
          {
            v9 = APSAudioFormatDescriptionListAddSupportedEncryptedALACFormatsForPassthrough();
            if (v9)
            {
              v12 = v9;
              streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_4(v9);
            }

            else
            {
              RelativeComplementList = APSAudioFormatDescriptionListCreateRelativeComplementList();
              if (RelativeComplementList)
              {
                v12 = RelativeComplementList;
                streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_5(RelativeComplementList);
              }

              else
              {
                if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
                {
                  streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_6(&v15);
                }

                v11 = APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription();
                v12 = v11;
                if (v11)
                {
                  streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_7(v11);
                }
              }
            }
          }
        }
      }

      else
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_8(&cf);
        }

        v13 = APSAudioFormatDescriptionListCopyTransportFormatDescriptionForSourceFormatDescription();
        v12 = v13;
        if (v13)
        {
          streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_9(v13);
        }
      }
    }

    else
    {
      streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_10();
      v12 = 4294954514;
    }
  }

  else
  {
    streamAggregateAudio_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_11();
    v12 = 4294950536;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v12;
}

uint64_t streamAggregateAudio_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, char *a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 1;
  FigSimpleMutexLock();
  if (a3)
  {
    v7 = FigCFDictionaryCopyArrayOfValues();
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
        FigEndpointStreamAirPlayGetClassID();
        if (!CMBaseObjectIsMemberOfClass() || !ValueAtIndex)
        {
          break;
        }

        v12 = *(*(CMBaseObjectGetVTable() + 24) + 32);
        if (!v12)
        {
          v14 = 4294954514;
          goto LABEL_16;
        }

        v13 = v12(ValueAtIndex, a2, &v16);
        if (v13)
        {
          v14 = v13;
LABEL_16:
          if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_isPassthroughSupportedForFormatDescription(FigEndpointStreamAirPlayRef, FigEndpointStreamAudioFormatDescriptionRef, Boolean *)", 33554482, "[%{ptr}] bufferAudio aggregate err for substream %{ptr}. err=%d\n", a1, ValueAtIndex, v14);
          }

          v16 = 0;
LABEL_21:
          if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_isPassthroughSupportedForFormatDescription(FigEndpointStreamAirPlayRef, FigEndpointStreamAudioFormatDescriptionRef, Boolean *)", 33554482, "[%{ptr}] Aggregate Passthrough not supported due to substream %{ptr}.\n", a1, ValueAtIndex);
          }

          goto LABEL_28;
        }

        if (!v16)
        {
          goto LABEL_21;
        }

        if (v9 == ++v10)
        {
          goto LABEL_28;
        }
      }

      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "OSStatus streamAggregateAudio_isPassthroughSupportedForFormatDescription(FigEndpointStreamAirPlayRef, FigEndpointStreamAudioFormatDescriptionRef, Boolean *)", 33554482, "[%{ptr}] current substream %{ptr} is not AirPlay type.  Passthrough not supported.\n", a1, ValueAtIndex);
      }

      v16 = 0;
    }

LABEL_28:
    *a3 = v16;
    FigSimpleMutexUnlock();
    if (v7)
    {
      CFRelease(v7);
    }

    return 0;
  }

  else
  {
    streamAggregateAudio_isPassthroughSupportedForFormatDescription_cold_1(DerivedStorage);
    return 4294950536;
  }
}

void __streamAggregateAudio_registerForAirPlayPrefsChangedNotification_block_invoke(uint64_t a1)
{
  dispatch_get_context(*(a1 + 32));
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      __streamAggregateAudio_registerForAirPlayPrefsChangedNotification_block_invoke_cold_1(v2, v3, v4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v2);
  }
}

void streamAggregateAudio_addSubStream(void *a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v23 = 0;
  if (CFDictionaryContainsKey(*(DerivedStorage + 32), a2))
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 30 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_addSubStream_cold_1();
    }

    return;
  }

  if (APSGetFBOPropertyInt64())
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_addSubStream_cold_2(a3, v7, v8);
    }

    v9 = *(DerivedStorage + 128);
    if (!v9 || gLogCategory_APEndpointStreamAggregateAudio > 90)
    {
      goto LABEL_16;
    }

    if (gLogCategory_APEndpointStreamAggregateAudio == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v9 = *(DerivedStorage + 128);
    }

    LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_addSubStream(FigEndpointStreamRef, CFTypeRef, FigEndpointStreamRef)", 33554522, "Overwriting local stream [%{ptr}] with [%{ptr}] for aggregate stream [%{ptr}]. This should never happen!\n", v9, a3, a1);
LABEL_15:
    v9 = *(DerivedStorage + 128);
LABEL_16:
    *(DerivedStorage + 128) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    CFDictionaryApplyFunction(*(DerivedStorage + 120), streamAggregateAudio_setPropertyForLocalSubStreamIterator, a1);
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_addSubStream(FigEndpointStreamRef, CFTypeRef, FigEndpointStreamRef)", 33554482, "Adding stream [%{ptr}] to aggregate stream [%{ptr}] from endpoint [%{ptr}].\n", a3, a1, a2);
  }

  FigCFDictionarySetValue();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  streamAggregateAudio_updateDynamicProperties(a1, &v23);
  CFDictionaryApplyFunction(*(DerivedStorage + 112), streamAggregateAudio_setPropertiesForSubStreamIterator, a3);
  if (*(DerivedStorage + 153) && streamAggregateAudio_getTotalNumberOfAudioStreams(a1) >= 3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      streamAggregateAudio_addSubStream_cold_4();
      goto LABEL_58;
    }

    v11 = Mutable;
    FigCFDictionarySetBoolean();
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_addSubStream_cold_3(a1, v12, v13);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  else
  {
    v11 = 0;
  }

  v14 = *(DerivedStorage + 48);
  if (v14 != 2 || v23)
  {
    if ((v14 - 3) > 1)
    {
      return;
    }

    v18 = *(DerivedStorage + 72);
    if (v18)
    {
      v18 = CFRetain(v18);
    }

    cf = v18;
    Value = APSWrapperGetValue();
    ++Value[3];
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50)
    {
      v20 = Value;
      if (gLogCategory_APEndpointStreamAggregateAudio != -1 || (Value = _LogCategory_Initialize(), Value))
      {
        Value = LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_addSubStream(FigEndpointStreamRef, CFTypeRef, FigEndpointStreamRef)", 33554482, "[%{ptr}] Adding stream [%{ptr}] while resuming for context %{ptr}", a1, a3, v20);
      }
    }

LABEL_54:
    if (cf)
    {
      streamAggregateAudio_resumeSubStreamIterator(Value, a3, cf);
    }

    if (!v11)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v15 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040B3C43913uLL);
  *v15 = CFRetain(a1);
  v16 = *(DerivedStorage + 56);
  if (v16)
  {
    v16 = CFRetain(v16);
  }

  v15[1] = v16;
  v17 = *(DerivedStorage + 136);
  if (v17)
  {
    v17 = CFRetain(v17);
  }

  v15[2] = v17;
  v15[3] = 1;
  *(v15 + 14) = 0;
  v15[8] = 0;
  v15[9] = 0;
  streamAggregateAudio_setResumptionStageAndNotifyIfNeeded(a1, 4);
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAggregateAudio, "void streamAggregateAudio_addSubStream(FigEndpointStreamRef, CFTypeRef, FigEndpointStreamRef)", 33554482, "[%{ptr}] Adding stream [%{ptr}] for context %{ptr}", a1, a3, v15);
  }

  v21 = APSWrapperCreate();
  if (!v21)
  {
    v22 = *(DerivedStorage + 72);
    Value = cf;
    *(DerivedStorage + 72) = cf;
    if (Value)
    {
      Value = CFRetain(Value);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    goto LABEL_54;
  }

  streamAggregateAudio_addSubStream_cold_5(v21, &cf);
  if (v11)
  {
LABEL_57:
    CFRelease(v11);
  }

LABEL_58:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t streamAggregateAudio_setPropertiesForSubStreamIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(CMBaseObject, a1, a2);
  }

  return result;
}

uint64_t APEndpointManagerPlusCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a2)
  {
    APEndpointManagerPlusCreate_cold_4();
    return 4294950586;
  }

  if (!a3)
  {
    APEndpointManagerPlusCreate_cold_3();
    return 4294950586;
  }

  v5 = a1;
  v6 = *MEMORY[0x277CBECE8];
  FigEndpointManagerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v13 = v7;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v5;
    *(DerivedStorage + 8) = CFRetain(a2);
    *(DerivedStorage + 112) = dispatch_get_global_queue(0, 0);
    *(DerivedStorage + 120) = FigSimpleMutexCreate();
    *(DerivedStorage + 24) = FigSimpleMutexCreate();
    v9 = MEMORY[0x277CBF138];
    v10 = MEMORY[0x277CBF150];
    *(DerivedStorage + 56) = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 64) = CFDictionaryCreateMutable(v6, 0, v9, v10);
    *(DerivedStorage + 72) = CFDictionaryCreateMutable(v6, 0, v9, v10);
    *(DerivedStorage + 80) = CFSetCreateMutable(v6, 0, MEMORY[0x277CBF158]);
    *(DerivedStorage + 88) = CFDictionaryCreateMutable(v6, 0, v9, v10);
    if (v5 == 1)
    {
      APEndpointManagerPlusCreate_cold_1(&cf);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v11 = cf;
    APSIntrospectorAddCommand();
    AirPlayDebugIPCEnableForEndpointManager(v11, @"AirPlay Plus");
    if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
    {
      APEndpointManagerPlusCreate_cold_2(&cf, DerivedStorage, v12);
    }

    v13 = 0;
    *a3 = cf;
  }

  return v13;
}

uint64_t emp_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    emp_Invalidate_cold_1();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 32))
  {
    emp_Invalidate_cold_2();
  }

  else
  {
    *(DerivedStorage + 32) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    [*(DerivedStorage + 16) setCachedDeviceFoundHandler:0];
    [*(DerivedStorage + 16) setCachedDeviceLostHandler:0];
    [*(DerivedStorage + 16) invalidate];
    CFDictionaryRemoveAllValues(*(DerivedStorage + 56));
    CFDictionaryRemoveAllValues(*(DerivedStorage + 64));
    CFDictionaryRemoveAllValues(*(DerivedStorage + 72));
    CFSetRemoveAllValues(*(DerivedStorage + 80));
    CFDictionaryRemoveAllValues(*(DerivedStorage + 88));
    v3 = *(DerivedStorage + 128);
    if (v3)
    {
      dispatch_source_cancel(*(DerivedStorage + 128));
      dispatch_release(v3);
      *(DerivedStorage + 128) = 0;
    }

    v4 = *(DerivedStorage + 96);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 96) = 0;
    }

    v5 = *(DerivedStorage + 104);
    if (v5)
    {
      dispatch_source_cancel(*(DerivedStorage + 104));
      dispatch_release(v5);
      *(DerivedStorage + 104) = 0;
    }

    AirPlayDebugIPCDisableForEndpointManager(a1);
  }

  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 8);
  if (!v6)
  {
    return 4294954516;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6);
}

void emp_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    emp_Finalize_cold_1();
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  *(DerivedStorage + 16) = 0;
  FigSimpleMutexDestroy();
  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 40) = 0;
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 56) = 0;
  }

  v6 = *(DerivedStorage + 64);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 64) = 0;
  }

  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 72) = 0;
  }

  v8 = *(DerivedStorage + 80);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 80) = 0;
  }

  v9 = *(DerivedStorage + 88);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 88) = 0;
  }

  v10 = *(DerivedStorage + 96);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 96) = 0;
  }

  v11 = *(DerivedStorage + 104);
  if (v11)
  {
    dispatch_source_cancel(*(DerivedStorage + 104));
    dispatch_release(v11);
    *(DerivedStorage + 104) = 0;
  }

  v12 = *(DerivedStorage + 112);
  if (v12)
  {
    dispatch_release(v12);
    *(DerivedStorage + 112) = 0;
  }

  FigSimpleMutexDestroy();

  *(DerivedStorage + 136) = 0;
}

uint64_t emp_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_280FB1478, "OSStatus emp_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] SetProperty: %@", a1, a2);
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(CMBaseObject, a2, a3);
}

uint64_t FigEndpointManagerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

void *emp_forEachEndpoint(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25[0] = &unk_283584430;
  v25[1] = &unk_283584448;
  v26 = *(DerivedStorage + 56);
  v25[2] = &unk_283584460;
  v27 = *(DerivedStorage + 72);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:v25 count:3];
  result = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  v13 = result;
  if (result)
  {
    v12 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{objc_msgSend(obj, "objectForKeyedSubscript:", v6)}];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v16;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(v7);
              }

              (*(a2 + 16))(a2, [v6 unsignedIntValue], *(*(&v15 + 1) + 8 * i), objc_msgSend(v7, "objectForKeyedSubscript:", *(*(&v15 + 1) + 8 * i)));
            }

            v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v9);
        }

        v5 = v5 + 1;
      }

      while (v5 != v13);
      result = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      v13 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __emp_getAllowCachedEndpointsAlways_block_invoke()
{
  result = APSSettingsGetBooleanIfPresent();
  if (dword_280FB1478 <= 50)
  {
    v3 = result;
    if (dword_280FB1478 != -1)
    {
      return __emp_getAllowCachedEndpointsAlways_block_invoke_cold_1(v3, v1, v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __emp_getAllowCachedEndpointsAlways_block_invoke_cold_1(v3, v1, v2);
    }
  }

  return result;
}

id emp_introspector_copyDescription(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"[0x%04X] APEndpointManagerPlus", CUObfuscatedPtr()];
  if (*(DerivedStorage + 32))
  {
    [v3 appendString:@" INVALIDATED"];
  }

  [v3 appendString:@"\n"];
  if (*DerivedStorage == 1)
  {
    v5 = *MEMORY[0x277CC0C68];
  }

  else
  {
    v5 = 0;
  }

  [v3 appendFormat:@"Type:                %@\n", v5];
  [v3 appendFormat:@"Inner:               [0x%04X]\n", CUObfuscatedPtr()];
  [v3 appendFormat:@"Local ID:            %@\n", *(DerivedStorage + 40)];
  [v3 appendFormat:@"Local Cluster ID:    %@\n", *(DerivedStorage + 48)];
  [v3 appendFormat:@"Discovery Mode:      %@\n", *(DerivedStorage + 96)];
  [v3 appendString:@"\n"];
  [v3 appendString:@"Available Endpoints:\n"];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __emp_introspector_copyDescription_block_invoke;
  v48[3] = &unk_27849DDE8;
  v48[4] = v3;
  emp_forEachEndpoint(a1, v48);
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"Cacheable Device IDs: %lu\n", CFSetGetCount(*(DerivedStorage + 80))];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = *(DerivedStorage + 80);
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v3 appendFormat:@"    %@\n", *(*(&v44 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v8);
  }

  [v3 appendString:@"\n"];
  v31 = DerivedStorage;
  v11 = *(DerivedStorage + 88);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v40 + 1) + 8 * j);
        v17 = [v11 objectForKeyedSubscript:v16];
        v18 = [v4 objectForKeyedSubscript:v17];
        if (!v18)
        {
          v18 = [MEMORY[0x277CBEB18] array];
          [v4 setObject:v18 forKeyedSubscript:v17];
        }

        [v18 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v13);
  }

  [v3 appendFormat:@"Cacheable Cluster IDs: %lu\n", objc_msgSend(v4, "count")];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = [v4 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v4);
        }

        v23 = *(*(&v36 + 1) + 8 * k);
        [v3 appendFormat:@"    %@\n", v23];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v24 = [v4 objectForKeyedSubscript:v23];
        v25 = [v24 countByEnumeratingWithState:&v32 objects:v49 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v33;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v33 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [v3 appendFormat:@"        %@\n", *(*(&v32 + 1) + 8 * m)];
            }

            v26 = [v24 countByEnumeratingWithState:&v32 objects:v49 count:16];
          }

          while (v26);
        }
      }

      v20 = [v4 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v20);
  }

  [v3 appendString:@"\n"];
  v29 = [*(v31 + 16) copyDescription];
  [v3 appendFormat:@"%@\n", v29];

  return v3;
}

uint64_t __emp_introspector_copyDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v22 = 0;
  v20 = 0;
  cf = 0;
  EndpointType = APEndpointPlusUtils_GetEndpointType(a4);
  TypeString = APEndpointPlusUtils_GetTypeString(EndpointType);
  v19 = 0;
  APEndpointPlusCopyInner(a4, &v19);
  v8 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, *MEMORY[0x277CC1368], v8, &v22);
  }

  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x277CC1450], v8, &cf);
  }

  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x277CC1440], v8, &v20);
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = CUObfuscatedPtr();
  v17 = [v15 stringWithFormat:@"[0x%04X]->[0x%04X] %s %@ '%@' %@", v16, CUObfuscatedPtr(), TypeString, v22, cf, v20];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return [v5 appendFormat:@"    %@\n", v17];
}

uint64_t emp_CreateAggregateEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_280FB1478, "OSStatus emp_CreateAggregateEndpoint(FigEndpointManagerRef, FigEndpointAggregateType, FigEndpointRef *)", 33554462, "[%{ptr}] CreateAggregateEndpoint type %u", a1, a2);
  }

  v7 = *(DerivedStorage + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3);
}

uint64_t emp_CopyRemoteControlDepotEndpoint(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    emp_CopyRemoteControlDepotEndpoint_cold_1(a1);
  }

  v5 = *(DerivedStorage + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2);
}

double __emp_restartCachePromotionDeadlineIfNecessary_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 40 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    __emp_restartCachePromotionDeadlineIfNecessary_block_invoke_cold_1(v1, v2, v3);
  }

  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __emp_evictAllCachedEndpoints_block_invoke;
  v5[3] = &__block_descriptor_40_e47_v28__0i8____CFString__12__OpaqueFigEndpoint__20l;
  v5[4] = v1;
  emp_forEachEndpoint(v1, v5);
  FigSimpleMutexUnlock();
  return result;
}

uint64_t __emp_getCachePromotionDeadlineDuration_block_invoke()
{
  result = APSSettingsGetUInt64IfPresent();
  if (dword_280FB1478 <= 50)
  {
    v3 = result;
    if (dword_280FB1478 != -1)
    {
      return __emp_getCachePromotionDeadlineDuration_block_invoke_cold_1(v3, v1, v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __emp_getCachePromotionDeadlineDuration_block_invoke_cold_1(v3, v1, v2);
    }
  }

  return result;
}

void __emp_evictAllCachedEndpoints_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (APSGetFBOPropertyInt64())
  {
    v6 = *(a1 + 32);

    emp_evictCachedEndpoint(v6, a4);
  }
}

void emp_evictCachedEndpoint(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  EndpointType = APEndpointPlusUtils_GetEndpointType(a2);
  v26 = 0;
  cf = 0;
  if (EndpointType == 2)
  {
    v25 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x277CC14E8], *MEMORY[0x277CBECE8], &v25);
      v8 = v25;
    }

    else
    {
      v8 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v8);
          }

          emp_evictCachedEndpoint(a1, *(*(&v21 + 1) + 8 * i));
        }

        v17 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v17);
    }

    v20 = v25;
    if (!v25)
    {
      goto LABEL_24;
    }

LABEL_23:
    CFRelease(v20);
    goto LABEL_24;
  }

  v9 = EndpointType;
  v10 = *MEMORY[0x277CBECE8];
  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x277CC1368], v10, &cf);
  }

  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x277CC1450], v10, &v26);
  }

  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    TypeString = APEndpointPlusUtils_GetTypeString(v9);
    LogPrintF(&dword_280FB1478, "void emp_evictCachedEndpoint(FigEndpointManagerRef, FigEndpointRef)", 33554482, "[%{ptr}] %s %s Plus [%{ptr}] %@ %'@", a1, "EVICT", TypeString, a2, cf, v26);
  }

  [*(DerivedStorage + 16) evictCachedDeviceWithID:cf];
  v20 = cf;
  if (cf)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v26)
  {
    CFRelease(v26);
  }
}

void __emp_setupCache_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
  if (v5)
  {
    v6 = v5;
    CFSetRemoveValue(*(DerivedStorage + 80), v5);
    v7 = APEndpointPlusUtils_CopyClusterIDFromBonjourInfo(a2);
    if (v7)
    {
      emp_removeCachedEndpointWithType(v3, a2, v7, 2);
    }

    Value = CFDictionaryGetValue(*(DerivedStorage + 88), v6);
    if (Value)
    {
      v9 = CFRetain(Value);
      if (v9)
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 88), v6);
        emp_removeCachedEndpointWithType(v3, a2, v9, 2);
      }
    }

    else
    {
      v9 = 0;
    }

    emp_removeCachedEndpointWithType(v3, a2, v6, 1);
    emp_removeCachedEndpointWithType(v3, a2, v6, 3);
    FigSimpleMutexUnlock();
    CFRelease(v6);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }

  else
  {
    __emp_setupCache_block_invoke_2_cold_1((DerivedStorage + 24));
  }
}

uint64_t __emp_setupCache_block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (dword_280FB1478 <= 90)
    {
      v3 = result;
      if (dword_280FB1478 != -1)
      {
        return LogPrintF(&dword_280FB1478, "OSStatus emp_setupCache(FigEndpointManagerRef)_block_invoke_3", 33554522, "[%{ptr}] Failed to activate cache: %@", *(v3 + 32), a2);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&dword_280FB1478, "OSStatus emp_setupCache(FigEndpointManagerRef)_block_invoke_3", 33554522, "[%{ptr}] Failed to activate cache: %@", *(v3 + 32), a2);
      }
    }
  }

  return result;
}

uint64_t emp_removeCachedEndpointWithType(uint64_t a1, const __CFDictionary *a2, const void *a3, int a4)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 56;
  if (a4 == 3)
  {
    v9 = 64;
  }

  if (a4 == 2)
  {
    v9 = 72;
  }

  v10 = *(DerivedStorage + v9);
  v11 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
  if (v11)
  {
    v12 = v11;
    Value = CFDictionaryGetValue(v10, a3);
    if (Value && (v14 = CFRetain(Value)) != 0)
    {
      v15 = v14;
      if (a4 == 2)
      {
        v23 = 0;
        cf = 0;
        v16 = APEndpointPlusCopySubEndpoint(v14, v12, &v23);
        if (v16)
        {
          if (v16 != -6727)
          {
            APSLogErrorAt();
          }
        }

        else if (APSGetFBOPropertyInt64())
        {
          v17 = APEndpointPlusRemoveSubEndpoint(v15, v12);
          if (v17)
          {
            emp_removeCachedEndpointWithType_cold_1(v17);
          }

          else
          {
            CMBaseObject = FigEndpointGetCMBaseObject();
            v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v19)
            {
              v19(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
            }

            if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_280FB1478, "OSStatus emp_removeCachedSubEndpoint(FigEndpointManagerRef, FigEndpointRef, CFStringRef)", 33554482, "[%{ptr}] %s subEndpointPlus [%{ptr}] %@ for clusterPlus [%{ptr}] %@", a1, "REMOVE", v23, v12, v15, cf);
            }
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v23)
        {
          CFRelease(v23);
        }
      }

      if (APSGetFBOPropertyInt64())
      {
        v21 = emp_removeEndpoint(a1, a3, a4);
        v20 = v21;
        if (v21)
        {
          emp_removeCachedEndpointWithType_cold_2(v21);
        }

        else
        {
          emp_postDelayedAvailableEndpointsChanged(a1, &unk_2835843B8);
        }
      }

      else
      {
        v20 = 4294960587;
      }

      CFRelease(v12);
      CFRelease(v15);
    }

    else
    {
      CFRelease(v12);
      return 0;
    }
  }

  else
  {
    emp_removeCachedEndpointWithType_cold_3();
    return 4294960591;
  }

  return v20;
}

void __emp_postDelayedAvailableEndpointsChanged_block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    v8[0] = @"Private";
    v8[1] = @"Reason";
    v9[0] = MEMORY[0x277CBEC38];
    v9[1] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

    *(DerivedStorage + 136) = 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 128);
  if (v5)
  {
    dispatch_source_cancel(*(DerivedStorage + 128));
    dispatch_release(v5);
    *(DerivedStorage + 128) = 0;
  }

  FigSimpleMutexUnlock();
  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v4);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  emp_postNotification(DefaultLocalCenter, *MEMORY[0x277CC0C20], *(a1 + 32), Copy);
  if (Copy)
  {
    CFRelease(Copy);
  }
}

uint64_t __emp_shouldAllowCacheableType_block_invoke()
{
  if (APSSettingsGetBooleanIfPresent())
  {
    emp_shouldAllowCacheableType_allowAirPlay = 0;
  }

  if (APSSettingsGetBooleanIfPresent())
  {
    emp_shouldAllowCacheableType_allowCluster = 0;
  }

  if (IsAppleInternalBuild())
  {
    APSSettingsGetBooleanIfPresent();
  }

  result = APSSettingsGetBooleanIfPresent();
  if (result)
  {
    emp_shouldAllowCacheableType_allowRemoteControl = 0;
  }

  return result;
}

void emp_introspector_showManagerPlus(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = emp_introspector_copyDescription(a1);
  FigSimpleMutexUnlock();
  FPrintF(a2, "%@\n", v4);
}

uint64_t APCarPlayAnalyticsGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPCarPlayAnalyticsInitOnce != -1)
  {
    APCarPlayAnalyticsGetTypeID_cold_1();
  }

  return gAPCarPlayAnalyticsTypeID;
}

uint64_t _APCarPlayAnalyticsGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPCarPlayAnalyticsTypeID = result;
  return result;
}

uint64_t APCarPlayAnalyticsCreate(uint64_t a1, uint64_t *a2)
{
  if (gAPCarPlayAnalyticsInitOnce != -1)
  {
    APCarPlayAnalyticsGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    *(Instance + 400) = 0;
    *(Instance + 368) = 0u;
    *(Instance + 384) = 0u;
    *(Instance + 336) = 0u;
    *(Instance + 352) = 0u;
    *(Instance + 304) = 0u;
    *(Instance + 320) = 0u;
    *(Instance + 272) = 0u;
    *(Instance + 288) = 0u;
    *(Instance + 240) = 0u;
    *(Instance + 256) = 0u;
    *(Instance + 208) = 0u;
    *(Instance + 224) = 0u;
    *(Instance + 176) = 0u;
    *(Instance + 192) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 16) = dispatch_queue_create("com.apple.APCarPlayAnalytics", 0);
    if (gLogCategory_APCarPlayAnalytics <= 40 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
    {
      APCarPlayAnalyticsCreate_cold_2(v4, v5, v6);
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    APCarPlayAnalyticsCreate_cold_3();
    return 4294960568;
  }

  return result;
}

uint64_t APCarPlayAnalyticsInitAudioFormatsCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gLogCategory_APCarPlayAnalytics <= 50 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAnalyticsInitAudioFormatsCollection_cold_1(a1, a2, a3);
  }

  v4 = *(a1 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __APCarPlayAnalyticsInitAudioFormatsCollection_block_invoke;
  v7[3] = &unk_27849DF18;
  v7[4] = &v8;
  v7[5] = a1;
  dispatch_sync(v4, v7);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __APCarPlayAnalyticsInitAudioFormatsCollection_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 28))
  {
    __APCarPlayAnalyticsInitAudioFormatsCollection_block_invoke_cold_1();
    v4 = -6709;
  }

  else
  {
    *(v2 + 392) = 1;
    Mutable = *(v2 + 400);
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
      *(v2 + 400) = Mutable;
    }

    CFSetRemoveAllValues(Mutable);
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

void _APCarPlayAnalyticsFinalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APCarPlayAnalytics <= 40 && (gLogCategory_APCarPlayAnalytics != -1 || _LogCategory_Initialize()))
  {
    _APCarPlayAnalyticsFinalize_cold_1(a1, a2, a3);
  }

  v4 = *(a1 + 400);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 400) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 16) = 0;
  }
}

uint64_t APEndpointStreamInterruptibleWrapperCreate(uint64_t a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    APEndpointStreamInterruptibleWrapperCreate_cold_5();
    return 4294950536;
  }

  if (!a3)
  {
    APEndpointStreamInterruptibleWrapperCreate_cold_4();
    return 4294950536;
  }

  FigEndpointStreamAirPlayGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v11 = v7;
    APEndpointStreamInterruptibleWrapperCreate_cold_1(v7);
    return v11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  SNPrintF(label, 64, "APEndpointStreamInterruptibleWrapper.state.%{ptr}", 0);
  v9 = dispatch_queue_create(label, 0);
  DerivedStorage[2] = v9;
  if (!v9)
  {
    APEndpointStreamInterruptibleWrapperCreate_cold_3();
    return 4294950535;
  }

  SNPrintF(label, 64, "APEndpointStreamInterruptibleWrapper.notification.%{ptr}", 0);
  v10 = dispatch_queue_create(label, 0);
  DerivedStorage[1] = v10;
  if (!v10)
  {
    APEndpointStreamInterruptibleWrapperCreate_cold_2();
    return 4294950535;
  }

  if (*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  DerivedStorage[5] = CFRetain(a3);
  CMNotificationCenterGetDefaultLocalCenter();
  FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
  FigNotificationCenterAddWeakListener();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus APEndpointStreamInterruptibleWrapperCreate(CFAllocatorRef, FigEndpointStreamRef, CFStringRef, FigEndpointStreamRef *)", 33554482, "APEndpointStreamInterruptibleWrapper created: %{ptr}; subStream: %{ptr}; routingContextUUID: [%@]\n", 0, a2, DerivedStorage[5]);
  }

  v11 = 0;
  *a4 = 0;
  return v11;
}

uint64_t APEndpointStreamInterruptibleWrapperBeginInterruption(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = *(CMBaseObjectGetVTable() + 16);
  if (v1 && v1 == &kAPEndpointStreamInterruptibleWrapper_FigEndpointStreamClassWrapper)
  {
    return APSDispatchSyncTask();
  }

  APEndpointStreamInterruptibleWrapperBeginInterruption_cold_1();
  return 4294954514;
}

uint64_t interruptibleStreamWrapper_beginInterruptionSync(uint64_t *a1)
{
  v1 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_beginInterruptionSync_cold_1(v1, v2, v3);
  }

  *(DerivedStorage + 32) = 1;
  v5 = interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary(v1);
  if (v5)
  {
    APSLogErrorAt();
    *(DerivedStorage + 32) = 0;
  }

  return v5;
}

uint64_t APEndpointStreamInterruptibleWrapperEndInterruption(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = *(CMBaseObjectGetVTable() + 16);
  if (v1 && v1 == &kAPEndpointStreamInterruptibleWrapper_FigEndpointStreamClassWrapper)
  {
    return APSDispatchSyncTask();
  }

  APEndpointStreamInterruptibleWrapperEndInterruption_cold_1();
  return 4294954514;
}

uint64_t interruptibleStreamWrapper_endInterruptionSync(uint64_t *a1)
{
  v1 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_endInterruptionSync_cold_1(v1, v2, v3);
  }

  *(DerivedStorage + 32) = 0;
  v5 = interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary(v1);
  if (v5)
  {
    APSLogErrorAt();
    *(DerivedStorage + 32) = 1;
  }

  return v5;
}

CFStringRef interruptibleStreamWrapper_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"<APEndpointStreamInterruptibleWrapper %p; sub: %p>", a1, *DerivedStorage);
}

uint64_t interruptibleStreamWrapper_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus interruptibleStreamWrapper_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "%{ptr} Copying Property: %@", a1, a2);
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v9 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 48))
      {
        v9 = MEMORY[0x277CBED10];
      }

      v10 = CFRetain(*v9);
      result = 0;
      *a4 = v10;
    }

    else
    {
      interruptibleStreamWrapper_CopyProperty_cold_1();
      return 4294950536;
    }
  }

  else
  {
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {

      return v13(CMBaseObject, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t interruptibleStreamWrapper_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus interruptibleStreamWrapper_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554442, "%{ptr} Setting Property: %@: %@", a1, a2, a3);
  }

  if (*(DerivedStorage + 48) && FigCFEqual())
  {

    return APSSignalErrorAt();
  }

  else
  {
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {

      return v9(CMBaseObject, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t interruptibleStreamWrapper_subStreamNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = FigCFEqual();
  if (!result)
  {
    result = FigCFEqual();
    if (!result)
    {
      if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "void interruptibleStreamWrapper_subStreamNotificationCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554442, "%{ptr} Re-posting %@", a2, a3);
      }

      CMNotificationCenterGetDefaultLocalCenter();

      return CMNotificationCenterPostNotification();
    }
  }

  return result;
}

__CFString *interruptibleStreamWrapper_subEndpointAddRemoveObservingProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamInterruptibleWrapper <APSubEndpointAddRemoveObservingProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t interruptibleStreamWrapper_NotifySubEndpointAdded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus interruptibleStreamWrapper_NotifySubEndpointAdded(CMBaseObjectRef, FigEndpointRef)", 33554442, "%{ptr} Notifying subEndpoint Added: %{ptr}", a1, a2);
  }

  v5 = *DerivedStorage;
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2);
}

uint64_t interruptibleStreamWrapper_NotifySubEndpointRemoved(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus interruptibleStreamWrapper_NotifySubEndpointRemoved(CMBaseObjectRef, FigEndpointRef)", 33554442, "%{ptr} Notifying subEndpoint Removed: %{ptr}\n", a1, a2);
  }

  v5 = *DerivedStorage;
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2);
}

uint64_t interruptibleStreamWrapper_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_Suspend_cold_1(a1, v6, v7);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptibleStreamWrapper_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_Resume_cold_1(a1, v6, v7);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptibleStreamWrapper_Dissociate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_Dissociate_cold_1(a1, v2, v3);
  }

  v5 = *DerivedStorage;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5);
}

void interruptibleStreamWrapper_completionCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_completionCallback_cold_1(a1, a2, a3);
  }

  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24));
  v4 = *a1;

  CFRelease(v4);
}

uint64_t interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
  v5 = *(v3 + 40);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    v16 = 4294954514;
LABEL_20:
    interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_3(&v21, v16);
    goto LABEL_21;
  }

  v7 = v6(SharedInstance, v5, &v21);
  if (v7)
  {
    v16 = v7;
    goto LABEL_20;
  }

  v10 = *(v3 + 32);
  v11 = v21;
  if (*(v3 + 32) || v21 > 0 || !*(v3 + 48))
  {
    v13 = 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 1;
  }

  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50)
  {
    if (gLogCategory_APEndpointStreamInterruptibleWrapper != -1)
    {
LABEL_10:
      LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "Boolean interruptibleStreamWrapper_shouldBlockSubstream(FigEndpointStreamRef)", 33554482, "interruptedStateBeingReturned: %d. Wrapper's internal interrupted flag: %d. bufferedClientCount: %ld. substreamIsResumed: %d. ResumedForClient: %d\n", v12, v10, v11, *(v3 + 49), *(v3 + 48));
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      v10 = *(v3 + 32);
      v11 = v21;
      goto LABEL_10;
    }
  }

LABEL_12:
  if ((v13 & 1) == 0)
  {
    if (DerivedStorage[49])
    {
      if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
      {
        interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_1(a1, v8, v9);
      }

      v14 = FigEndpointStreamSuspendSync();
      v15 = v14;
      if (v14)
      {
        interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_2(v14);
      }

      else
      {
        DerivedStorage[49] = 0;
      }

      return v15;
    }

    if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50)
    {
      if (gLogCategory_APEndpointStreamInterruptibleWrapper == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 0;
        }

        v19 = DerivedStorage[49];
      }

      else
      {
        v19 = 0;
      }

      LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary(FigEndpointStreamRef)", 33554482, "%{ptr} substream already suspended. Ignore begin interruption. Internal interrupted flag %d. resumedForClient %d. substreamIsResumed: %d\n", a1, DerivedStorage[32], DerivedStorage[48], v19);
    }

    return 0;
  }

LABEL_21:
  v17 = DerivedStorage[49];
  if (DerivedStorage[49])
  {
    if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50)
    {
      if (gLogCategory_APEndpointStreamInterruptibleWrapper == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 0;
        }

        v17 = DerivedStorage[49];
      }

      LogPrintF(&gLogCategory_APEndpointStreamInterruptibleWrapper, "OSStatus interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary(FigEndpointStreamRef)", 33554482, "%{ptr} substream already resumed. Ignore end interruption. Internal interrupted flag %d. resumedForClient %d. substreamIsResumed %d\n", a1, DerivedStorage[32], DerivedStorage[48], v17);
    }

    return 0;
  }

  if (!DerivedStorage[48])
  {
    return 0;
  }

  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_4(a1, v8, v9);
  }

  v18 = FigEndpointStreamResumeSync();
  v15 = v18;
  if (v18)
  {
    interruptibleStreamWrapper_resumeOrSuspendSubstreamAsNecessary_cold_5(v18);
  }

  else
  {
    DerivedStorage[49] = 1;
  }

  return v15;
}

uint64_t interruptibleStreamWrapper_flushSync(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_flushSync_cold_1(v2, v4, v5);
  }

  v7 = *DerivedStorage;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, v1, v3);
}

uint64_t interruptibleStreamWrapper_FlushAudioDataWithinSampleRange(uint64_t a1, __int128 *a2)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  CMBaseObjectGetDerivedStorage();
  v2 = APSDispatchSyncTask();
  v3 = v2;
  if (v2)
  {
    interruptibleStreamWrapper_FlushAudioDataWithinSampleRange_cold_1(v2);
  }

  return v3;
}

uint64_t interruptibleStreamWrapper_SetRateAndAnchorTimeWithCompletionCallback(const void *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, double a6)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_SetRateAndAnchorTimeWithCompletionCallback_cold_1(a1, v7, v8);
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptibleStreamWrapper_copyTransportFormatDescriptionForSourceContentFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_1(a1, v6, v7);
  }

  v9 = *DerivedStorage;
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v9 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3);
}

uint64_t interruptibleStreamWrapper_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_isPassthroughSupportedForFormatDescription_cold_1(a1, v6, v7);
  }

  v9 = *DerivedStorage;
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v9 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3);
}

uint64_t interruptibleStreamWrapper_flushAudioDataWithinSampleRangeSync(uint64_t *a1)
{
  v1 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 3);
  v10 = *(a1 + 5);
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_flushAudioDataWithinSampleRangeSync_cold_1(v1, v2, v3);
  }

  v5 = *DerivedStorage;
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  v11[0] = v8;
  v11[1] = v9;
  v11[2] = v10;
  return v6(v5, v11);
}

void interruptibleStreamWrapper_setRateAndAnchorTimeWithCompletionCallbackAsync(CFTypeRef *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_setRateAndAnchorTimeWithCompletionCallbackAsync_cold_1(a1, a2, a3);
  }

  v4 = *a1;
  v5 = a1[1];
  v17 = *(a1 + 1);
  v18 = a1[4];
  v14 = *(a1 + 4);
  v15 = *(a1 + 5);
  v16 = a1[7];
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_setRateAndAnchorTimeWithCompletionCallbackAsync_cold_2(v4, v7, v8);
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = CFRetain(v4);
LABEL_12:
  *v9 = v10;
  *(v9 + 8) = v14;
  v11 = *DerivedStorage;
  v12 = *(CMBaseObjectGetVTable() + 24);
  if (v12)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      v21 = v17;
      v22 = v18;
      v19 = v15;
      v20 = v16;
      v13(v11, &v21, &v19, interruptibleStreamWrapper_setRateCompletionCallback, v9, *&v5);
    }
  }

  CFRelease(*a1);
}

void interruptibleStreamWrapper_setRateCompletionCallback(double a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  if (gLogCategory_APEndpointStreamInterruptibleWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptibleWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptibleStreamWrapper_setRateCompletionCallback_cold_1(a6, a3, a4);
  }

  v11 = *a6;
  v12 = *(a6 + 8);
  v13 = *(a6 + 16);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  v12(v11, a3, &v16, &v14, v13, a1);
  CFRelease(*a6);
  free(a6);
}

uint64_t APSenderSessionFactoryGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPSenderSessionFactoryInitOnce != -1)
  {
    APSenderSessionFactoryGetTypeID_cold_1();
  }

  return gAPSenderSessionFactoryTypeID;
}

uint64_t _APSenderSessionFactoryGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSenderSessionFactoryTypeID = result;
  return result;
}

uint64_t APSenderSessionFactoryCreate(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (!a1)
  {
    v12 = 4294960591;
    v13 = 65;
LABEL_17:
    APSenderSessionFactoryCreate_cold_2(v12, v13, &v14);
    return v14;
  }

  if (!a4)
  {
    v12 = 4294960591;
    v13 = 66;
    goto LABEL_17;
  }

  if (gAPSenderSessionFactoryInitOnce != -1)
  {
    APSenderSessionFactoryGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v12 = 4294960568;
    v13 = 68;
    goto LABEL_17;
  }

  v9 = Instance;
  Instance[2] = 0;
  Instance[3] = 0;
  Instance[4] = 0;
  if (gLogCategory_APSenderSessionFactory <= 50 && (gLogCategory_APSenderSessionFactory != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionFactory, "OSStatus APSenderSessionFactoryCreate(CreateAirPlaySenderSessionFunction, CreateLegacySenderSessionFunction, CFTypeRef, APSenderSessionFactoryRef *)", 33554482, "[%{ptr}] APSenderSessionFactory Creating with CreateAirPlay fn [%{ptr}], CreateLegacy fn [%{ptr}]\n", v9, a1, a2);
  }

  v9[2] = a1;
  v9[3] = a2;
  if (a3)
  {
    v10 = CFRetain(a3);
  }

  else
  {
    v10 = 0;
  }

  result = 0;
  v9[4] = v10;
  *a4 = v9;
  return result;
}

uint64_t APSenderSessionFactoryCreateAirPlaySession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  if (a1)
  {
    v19 = a2;
    v22 = a17;
    v21 = a18;
    v23 = a16;
    v25 = a14;
    v24 = a15;
    v26 = a13;
    v27 = a12;
    v28 = a11;
    v29 = a10;
    if (gLogCategory_APSenderSessionFactory <= 50)
    {
      if (gLogCategory_APSenderSessionFactory != -1 || (v50 = a8, v30 = a7, v31 = a6, v32 = a5, v33 = a4, v34 = a3, v35 = _LogCategory_Initialize(), v28 = a11, v27 = a12, v26 = a13, v25 = a14, v24 = a15, v23 = a16, a3 = v34, a8 = v50, v19 = a2, v29 = a10, v21 = a18, v22 = a17, a4 = v33, a5 = v32, a6 = v31, a7 = v30, v35))
      {
        v45 = v27;
        v46 = v25;
        v47 = v24;
        v48 = v23;
        v49 = a3;
        v39 = a8;
        v40 = a7;
        v41 = a6;
        v42 = a5;
        v43 = a4;
        APSenderSessionFactoryCreateAirPlaySession_cold_1(a1);
        v28 = a11;
        v27 = v45;
        v26 = a13;
        v25 = v46;
        v24 = v47;
        v23 = v48;
        a3 = v49;
        a4 = v43;
        a5 = v42;
        a6 = v41;
        a7 = v40;
        a8 = v39;
      }
    }

    BYTE2(v44) = v27;
    BYTE1(v44) = v28;
    LOBYTE(v44) = v29;
    v36 = (*(a1 + 16))(*(a1 + 32), v19, a3, a4, a5, a6, a7, a8, a9, v44, v26, v25, v24, v23, v22, v21);
    v37 = v36;
    if (v36)
    {
      APSenderSessionFactoryCreateAirPlaySession_cold_2(v36);
    }
  }

  else
  {
    APSenderSessionFactoryCreateAirPlaySession_cold_3();
    return 4294960591;
  }

  return v37;
}

void _APSenderSessionFactoryFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  if (gLogCategory_APSenderSessionFactory <= 50 && (gLogCategory_APSenderSessionFactory != -1 || _LogCategory_Initialize()))
  {
    _APSenderSessionFactoryFinalize_cold_1(a1);
  }
}

uint64_t APEndpointStreamCarPlayAudioRemote_ServerDied(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 16) = 0;
  return result;
}

uint64_t APEndpointStreamCarPlayAudioRemoteCreate(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  v13 = 0;
  FigEndpointStreamGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v12 = v7;
    APEndpointStreamCarPlayAudioRemoteCreate_cold_1(v7);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = 0;
    *(DerivedStorage + 24) = CFRetain(a3);
    CMBaseObjectGetDerivedStorage();
    xdict = 0;
    v17 = 0;
    cf1 = 0;
    cf = 0;
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v12 = v9;
      APEndpointStreamCarPlayAudioRemoteCreate_cold_2(v9);
    }

    else
    {
      v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v10)
      {
        v12 = v10;
        if (v10 != -6720)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        APEndpointStreamCarPlayAudioRemoteCreate_cold_5();
        v12 = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (cf1)
    {
      CFRelease(cf1);
    }

    if (!v12)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudioRemote <= 50 && (gLogCategory_APEndpointStreamCarPlayAudioRemote != -1 || _LogCategory_Initialize()))
      {
        APEndpointStreamCarPlayAudioRemoteCreate_cold_6(&v13);
      }

      v12 = 0;
      *a4 = v13;
      return v12;
    }

    if (v12 != -6720)
    {
      APSLogErrorAt();
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v12;
}

void carRemoteAudioStream_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamCarPlayAudioRemote <= 30 && (gLogCategory_APEndpointStreamCarPlayAudioRemote != -1 || _LogCategory_Initialize()))
  {
    carRemoteAudioStream_finalize_cold_1(a1);
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[3] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[4] = 0;
  }

  if (*DerivedStorage)
  {
    v5 = CMBaseObjectGetDerivedStorage();
    if (*(v5 + 16))
    {
      v6 = FigXPCCreateBasicMessage();
      if (v6)
      {
        carRemoteAudioStream_finalize_cold_2(v6);
      }

      else
      {
        v7 = FigXPCRemoteClientSendSyncMessage();
        if (!v7)
        {
          goto LABEL_12;
        }

        carRemoteAudioStream_finalize_cold_3(v7);
      }

      *(v5 + 16) = 0;
      APSLogErrorAt();
      return;
    }

LABEL_12:
    FigXPCRemoteClientDisassociateObject();
    *(v5 + 16) = 0;
    *DerivedStorage = 0;
  }
}

CFMutableStringRef carRemoteAudioStream_copyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendF(Mutable, "<RemoteAudioStream %p>:\n", a1);
  if (*(DerivedStorage + 16))
  {
    v4 = "Connected";
  }

  else
  {
    v4 = "Disconnected";
  }

  CFStringAppendF(Mutable, "\t connection state: %s\n", v4);
  CFStringAppendF(Mutable, "\t Remote object id: %lu\n", *DerivedStorage);
  return Mutable;
}

uint64_t carRemoteAudioStream_copyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 16))
    {
      if (CFEqual(@"CarPlayAudioFormats", a2))
      {
        v8 = 0;
        *a4 = CFRetain(*(v7 + 32));
      }

      else
      {
        v9 = FigXPCSendStdCopyPropertyMessage();
        v8 = v9;
        if (v9)
        {
          carRemoteAudioStream_copyProperty_cold_1(v9);
        }
      }
    }

    else
    {
      carRemoteAudioStream_copyProperty_cold_2();
      return 4294960587;
    }
  }

  else
  {
    carRemoteAudioStream_copyProperty_cold_3();
    return 4294960578;
  }

  return v8;
}

uint64_t carRemoteAudioStream_setProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    carRemoteAudioStream_setProperty_cold_12();
    return 4294960578;
  }

  if (!*(DerivedStorage + 16))
  {
    carRemoteAudioStream_setProperty_cold_11();
    return 4294960587;
  }

  if (CFEqual(*MEMORY[0x277CC1858], a2))
  {
    v6 = CMBaseObjectGetDerivedStorage();
    if (*v6)
    {
      if (*(v6 + 16))
      {
        if (a3)
        {
          ObjectID = APAudioSinkSharedMemRemote_GetObjectID(a3);
        }

        else
        {
          ObjectID = 0;
        }

        v14 = FigXPCCreateBasicMessage();
        if (v14)
        {
          v13 = v14;
          carRemoteAudioStream_setProperty_cold_1(v14);
        }

        else
        {
          xpc_dictionary_set_uint64(0, kAPCarPlayAVVCMsgParam_XPCSinkObjectID[0], ObjectID);
          v15 = FigXPCRemoteClientSendSyncMessage();
          v13 = v15;
          if (!v15)
          {
            return v13;
          }

          carRemoteAudioStream_setProperty_cold_2(v15);
        }
      }

      else
      {
        carRemoteAudioStream_setProperty_cold_3();
        v13 = 4294960587;
      }
    }

    else
    {
      carRemoteAudioStream_setProperty_cold_4();
      v13 = 4294960578;
    }

LABEL_32:
    APSLogErrorAt();
    return v13;
  }

  if (CFEqual(@"AudioFormatInfo", a2))
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (!*v8)
    {
      carRemoteAudioStream_setProperty_cold_9();
      v13 = 4294960578;
      goto LABEL_32;
    }

    if (!*(v8 + 16))
    {
      carRemoteAudioStream_setProperty_cold_8();
      v13 = 4294960587;
      goto LABEL_32;
    }

    Description = APCarPlayAudioFormatInfoGetDescription(a3);
    if (!Description)
    {
      carRemoteAudioStream_setProperty_cold_7();
      v13 = 4294960591;
      goto LABEL_32;
    }

    v10 = Description;
    v11 = FigXPCCreateBasicMessage();
    if (v11)
    {
      v13 = v11;
      carRemoteAudioStream_setProperty_cold_5(v11);
      goto LABEL_32;
    }

    xpc_dictionary_set_data(0, kAPCarPlayAVVCMsgParam_Format[0], v10, 0x28uLL);
    v12 = FigXPCRemoteClientSendSyncMessage();
    v13 = v12;
    if (v12)
    {
      carRemoteAudioStream_setProperty_cold_6(v12);
      goto LABEL_32;
    }
  }

  else
  {
    v17 = FigXPCSendStdSetPropertyMessage();
    v13 = v17;
    if (v17)
    {
      carRemoteAudioStream_setProperty_cold_10(v17);
    }
  }

  return v13;
}

uint64_t carRemoteAudioStream_resume(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (*(DerivedStorage + 16))
    {
      v8 = FigXPCCreateBasicMessage();
      if (v8)
      {
        v11 = v8;
        carRemoteAudioStream_resume_cold_1(v8);
      }

      else
      {
        v9 = FigXPCMessageSetCFDictionary();
        if (v9)
        {
          v11 = v9;
          carRemoteAudioStream_resume_cold_2(v9);
        }

        else
        {
          v10 = FigXPCRemoteClientSendSyncMessage();
          if (v10)
          {
            v11 = v10;
            carRemoteAudioStream_resume_cold_3(v10);
          }

          else
          {
            if (a3)
            {
              a3(a1, 0, a4);
            }

            return 0;
          }
        }
      }
    }

    else
    {
      carRemoteAudioStream_resume_cold_4();
      return 4294960587;
    }
  }

  else
  {
    carRemoteAudioStream_resume_cold_5();
    return 4294960578;
  }

  return v11;
}

uint64_t APCarPlayAudioFormatInfoGetTypeID(uint64_t a1, uint64_t a2)
{
  if (APCarPlayAudioFormatInfoGetTypeID_initOnce != -1)
  {
    APCarPlayAudioFormatInfoGetTypeID_cold_1();
  }

  return APCarPlayAudioFormatInfoGetTypeID_typeID;
}

uint64_t __APCarPlayAudioFormatInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APCarPlayAudioFormatInfoGetTypeID_typeID = result;
  return result;
}

void _APCarPlayAudioFormatInfoFinalize(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 112) = 0;
  }
}

uint64_t APCarPlayAudioFormatsCopyFormatsForAudioType(_BYTE *a1, uint64_t a2, const __CFString *a3, unint64_t *a4, CFMutableArrayRef *a5, char *a6)
{
  v6 = a3;
  if (!a2)
  {
    APCarPlayAudioFormatsCopyFormatsForAudioType_cold_10();
LABEL_77:
    v28 = 0;
    Copy = 0;
    goto LABEL_59;
  }

  if (!a3)
  {
    APCarPlayAudioFormatsCopyFormatsForAudioType_cold_9();
    goto LABEL_77;
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APCarPlayAudioFormatsCopyFormatsForAudioType_cold_8();
    goto LABEL_77;
  }

  v35 = a5;
  v12 = v6;
  Count = CFArrayGetCount(TypedValue);
  v34 = a6;
  if (Count < 1)
  {
    Copy = 0;
    Int64 = 0;
    v20 = 0;
    v22 = v35;
    v23 = a4;
    goto LABEL_33;
  }

  v14 = Count;
  v15 = 0;
  Int64 = 0;
  while (1)
  {
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    if (CFDictionaryGetInt64() == a2)
    {
      break;
    }

LABEL_11:
    if (v14 == ++v15)
    {
      v19 = 0;
      v20 = 0;
      Copy = 0;
      v6 = v12;
      v22 = v35;
      goto LABEL_24;
    }
  }

  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  if (v18 && CFStringCompare(v12, v18, 0))
  {
    if (FigCFEqual())
    {
      carPlayAudioFormat_getFormatsKeyForAudioType(a2, @"default");
      Int64 = CFDictionaryGetInt64();
    }

    goto LABEL_11;
  }

  v6 = v12;
  carPlayAudioFormat_getFormatsKeyForAudioType(a2, v12);
  v19 = CFDictionaryGetInt64();
  if (v18)
  {
    v20 = 0;
    v22 = v35;
  }

  else
  {
    v22 = a5;
    if (gLogCategory_APCarPlayAudioFormat <= 30 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
    {
      APCarPlayAudioFormatsCopyFormatsForAudioType_cold_4(a2, v6, v19);
    }

    v20 = 1;
  }

  if (CFDictionaryContainsKey(TypedValueAtIndex, @"audioOutputFormatsExtended"))
  {
    CFArrayGetTypeID();
    v24 = CFDictionaryGetTypedValue();
    v25 = CFGetAllocator(a1);
    Copy = CFArrayCreateCopy(v25, v24);
    if (v19)
    {
LABEL_30:
      Int64 = v19;
LABEL_32:
      v23 = a4;
      goto LABEL_33;
    }
  }

  else
  {
    Copy = 0;
    if (v19)
    {
      goto LABEL_30;
    }
  }

LABEL_24:
  if (!Int64)
  {
    goto LABEL_30;
  }

  CFStringGetTypeID();
  v26 = CFDictionaryGetTypedValue();
  if (!CFStringHasPrefix(v26, @"Apple"))
  {
    Int64 = 0;
    goto LABEL_32;
  }

  v23 = a4;
  if (gLogCategory_APCarPlayAudioFormat <= 30 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAudioFormatsCopyFormatsForAudioType_cold_6(a2, v6, Int64);
  }

  v20 = 1;
LABEL_33:
  if (!a1[28])
  {
    v32 = 0x41F04000C3FFFCLL;
    if (!a1[31])
    {
      v32 = 0x1F0400003FFFCLL;
    }

    v27 = v32 & Int64;
    if (!v27)
    {
      goto LABEL_65;
    }

LABEL_35:
    if (a1[30] && FigCFEqual())
    {
      v27 &= 0x80014000114uLL;
    }

    if (a2 == 103 && APSSettingsGetIntWithDefault())
    {
      v28 = 0;
      if (v23)
      {
        v27 &= ~0x800000uLL;
      }

      if (v22 && Copy)
      {
        v29 = *MEMORY[0x277CBECE8];
        v30 = CFArrayGetCount(Copy);
        MutableCopy = CFArrayCreateMutableCopy(v29, v30, Copy);
        FigCFNumberCreateUInt64();
          ;
        }

        if (MutableCopy)
        {
          CFRetain(MutableCopy);
        }

        CFRelease(Copy);
        v28 = MutableCopy;
        goto LABEL_51;
      }
    }

    else
    {
      v28 = 0;
    }

    MutableCopy = Copy;
LABEL_51:
    if (v23)
    {
      *v23 = v27;
    }

    if (v22 && MutableCopy)
    {
      *v22 = MutableCopy;
      MutableCopy = 0;
    }

    if (v34)
    {
      *v34 = v20;
    }

    Copy = MutableCopy;
    goto LABEL_67;
  }

  v27 = Int64 & 0xF7FE0F8FFFFC0000;
  if (v27)
  {
    goto LABEL_35;
  }

LABEL_65:
  APCarPlayAudioFormatsCopyFormatsForAudioType_cold_7();
  v28 = 0;
LABEL_59:
  if (gLogCategory_APCarPlayAudioFormat <= 50 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APCarPlayAudioFormat, "OSStatus APCarPlayAudioFormatsCopyFormatsForAudioType(APCarPlayAudioFormatsRef, APStreamType, CFStringRef, APAudioFormat *, CFArrayRef *, Boolean *)", 33554482, "Error in creating formats for type %d / %@\n", a2, v6);
  }

LABEL_67:
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return 0;
}

__CFString *carPlayAudioFormat_getFormatsKeyForAudioType(int a1, CFTypeRef cf1)
{
  if (a1 == 107)
  {
    return @"audioInputFormats";
  }

  if (a1 != 100)
  {
    return @"audioOutputFormats";
  }

  if (CFEqual(cf1, @"default"))
  {
    return @"audioInputFormats";
  }

  v3 = @"audioInputFormats";
  if (!CFEqual(cf1, @"telephony") && !CFEqual(cf1, @"speechRecognition"))
  {
    return @"audioOutputFormats";
  }

  return v3;
}

uint64_t APCarPlayAudioFormatsGetTypeID(uint64_t a1, uint64_t a2)
{
  if (APCarPlayAudioFormatsGetTypeID_initOnce != -1)
  {
    APCarPlayAudioFormatsGetTypeID_cold_1();
  }

  return APCarPlayAudioFormatsGetTypeID_typeID;
}

uint64_t __APCarPlayAudioFormatsGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APCarPlayAudioFormatsGetTypeID_typeID = result;
  return result;
}

void _APCarPlayAudioFormatsFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
    a1[9] = 0;
  }
}

CFStringRef _APCarPlayAudioFormatsCopyFormattingDesc(void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  AppendPrintF(&v9, "APCarPlayAudioFormats = <");
  v5 = MEMORY[0x277D85DD0];
  CFDictionaryApplyBlock();
  AppendPrintF((v7 + 3), "\n>", v5, 3221225472, ___APCarPlayAudioFormatsCopyFormattingDesc_block_invoke, &unk_27849BC40, &v6, a1);
  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithCString(v2, v7[3], 0x8000100u);
  free(v7[3]);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_222119A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_OWORD *APCarPlayAudioFormatsCreate(const __CFAllocator *a1, const void *a2, int a3, char a4, char a5, int a6)
{
  v49 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v41 = 0u;
  if (!a2)
  {
    APCarPlayAudioFormatsCreate_cold_14();
LABEL_101:
    v10 = 0;
    goto LABEL_28;
  }

  if (APCarPlayAudioFormatsGetTypeID_initOnce != -1)
  {
    APCarPlayAudioFormatsGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APCarPlayAudioFormatsCreate_cold_13();
    goto LABEL_101;
  }

  v10 = Instance;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  *(Instance + 2) = CFRetain(a2);
  *(v10 + 28) = a3;
  *(v10 + 29) = a4;
  *(v10 + 31) = a5;
  CFDictionaryGetCString();
  *(v10 + 24) = TextToSourceVersion();
  if (!*(v10 + 28))
  {
    Int64 = APSSettingsGetInt64();
    if (Int64)
    {
      if (a6)
      {
        if (gLogCategory_APCarPlayAudioFormat <= 50)
        {
          if (gLogCategory_APCarPlayAudioFormat != -1 || (Int64 = _LogCategory_Initialize(), Int64))
          {
            APCarPlayAudioFormatsCreate_cold_3(Int64, v13, v14);
          }
        }

        *(v10 + 30) = 1;
      }
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v43 = 0;
      v44 = &v43;
      v45 = 0x3052000000;
      v46 = __Block_byref_object_copy__4;
      v27 = getEAAccessoryManagerClass_softClass;
      v47 = __Block_byref_object_dispose__4;
      v48 = getEAAccessoryManagerClass_softClass;
      if (!getEAAccessoryManagerClass_softClass)
      {
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __getEAAccessoryManagerClass_block_invoke;
        v40[3] = &unk_27849ACC8;
        v40[4] = &v43;
        __getEAAccessoryManagerClass_block_invoke(v40);
        v27 = v44[5];
      }

      _Block_object_dispose(&v43, 8);
      v28 = [objc_msgSend(v27 "sharedAccessoryManager")];
      v29 = [v28 countByEnumeratingWithState:&v36 objects:&v43 count:16];
      if (v29)
      {
        v30 = *v37;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v37 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v36 + 1) + 8 * i);
            if ([v32 supportsCarPlay]
              && (![objc_msgSend(v32 "manufacturer")] && !objc_msgSend(objc_msgSend(v32, "modelNumber"), "compare:options:", @"172611123", 1) && (!objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"010600", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"011400", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"2012800", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"2013400", 1))
               || ![objc_msgSend(v32 "manufacturer")] && !objc_msgSend(objc_msgSend(v32, "modelNumber"), "compare:options:", @"172611251", 1) && (!objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"010600", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"011400", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"200700", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"200960", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"201100", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"2012800", 1))
               || ![objc_msgSend(v32 "manufacturer")] && !objc_msgSend(objc_msgSend(v32, "modelNumber"), "compare:options:", @"172611252", 1) && (!objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"2000700", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"2000960", 1))
               || ![objc_msgSend(v32 "manufacturer")] && (!objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"1.0.2", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"1.0.3", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"19.1.18", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"19.4.18", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"19.8.29", 1))
               || ![objc_msgSend(v32 "manufacturer")] && (!objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"M19.18.26.03", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"M19.18.32.01", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"M19.18.42.01", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"M19.19.02.01", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"M19.19.03.00", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"M20.19.20.01", 1) || !objc_msgSend(objc_msgSend(v32, "firmwareRevision"), "compare:options:", @"M20.19.39.00", 1))))
            {
              if (gLogCategory_APCarPlayAudioFormat <= 50 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
              {
                APCarPlayAudioFormatsCreate_cold_4(v32);
              }

              *(v10 + 30) = 1;
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v36 objects:&v43 count:16];
        }

        while (v29);
      }
    }
  }

  if (a3)
  {
    *(v10 + 32) = FigGetCFPreferenceNumberWithDefault();
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    *(v10 + 36) = CFPreferenceNumberWithDefault;
  }

  else
  {
    v15 = FigGetCFPreferenceNumberWithDefault();
    CFPreferenceNumberWithDefault = 0;
    *(v10 + 32) = v15;
  }

  if (gLogCategory_APCarPlayAudioFormat <= 50)
  {
    if (gLogCategory_APCarPlayAudioFormat != -1)
    {
LABEL_16:
      LogPrintF(&gLogCategory_APCarPlayAudioFormat, "APCarPlayAudioFormatsRef APCarPlayAudioFormatsCreate(CFAllocatorRef, CFDictionaryRef, Boolean, Boolean, Boolean, Boolean)", 33554482, "jitter buffer latency %d ms. main high %d ms\n", *(v10 + 32), CFPreferenceNumberWithDefault);
      goto LABEL_18;
    }

    if (_LogCategory_Initialize())
    {
      CFPreferenceNumberWithDefault = *(v10 + 36);
      goto LABEL_16;
    }
  }

LABEL_18:
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v10 + 56) = Mutable;
  if (!Mutable)
  {
    APCarPlayAudioFormatsCreate_cold_12();
LABEL_100:
    CFRelease(v10);
    goto LABEL_101;
  }

  v17 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v10 + 64) = v17;
  if (!v17)
  {
    APCarPlayAudioFormatsCreate_cold_11();
    goto LABEL_100;
  }

  v18 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v10 + 72) = v18;
  if (!v18)
  {
    APCarPlayAudioFormatsCreate_cold_10();
    goto LABEL_100;
  }

  v19 = carPlayAudioFormat_repackageFormatsForStream(v10, 100, &kMainAudioTypes, 5uLL);
  v20 = v19;
  if (v19)
  {
    APCarPlayAudioFormatsCreate_cold_5(v19);
    goto LABEL_99;
  }

  v21 = carPlayAudioFormat_repackageFormatsForStream(v10, 101, &kAltAudioTypes, 1uLL);
  v20 = v21;
  if (v21)
  {
    APCarPlayAudioFormatsCreate_cold_6(v21);
    goto LABEL_99;
  }

  if (*(v10 + 29))
  {
    v22 = carPlayAudioFormat_repackageFormatsForStream(v10, 106, &kAuxAudioTypes, 1uLL);
    v20 = v22;
    if (v22)
    {
      APCarPlayAudioFormatsCreate_cold_7(v22);
      goto LABEL_99;
    }

    v23 = carPlayAudioFormat_repackageFormatsForStream(v10, 107, &kOutOfBandAVVCAudioTypes, 1uLL);
    v20 = v23;
    if (v23)
    {
      APCarPlayAudioFormatsCreate_cold_8(v23);
      goto LABEL_99;
    }
  }

  if (*(v10 + 31))
  {
    v24 = carPlayAudioFormat_repackageFormatsForStream(v10, 103, &kMainBufferedAudioTypes, 1uLL);
    v20 = v24;
    if (v24)
    {
      APCarPlayAudioFormatsCreate_cold_9(v24);
LABEL_99:
      APSLogErrorAt();
      if (!v20)
      {
        goto LABEL_28;
      }

      goto LABEL_100;
    }
  }

LABEL_28:
  if (gLogCategory_APCarPlayAudioFormat <= 30 && (gLogCategory_APCarPlayAudioFormat != -1 || _LogCategory_Initialize()))
  {
    v25 = "wireless";
    if (!a3)
    {
      v25 = "wired";
    }

    LogPrintF(&gLogCategory_APCarPlayAudioFormat, "APCarPlayAudioFormatsRef APCarPlayAudioFormatsCreate(CFAllocatorRef, CFDictionaryRef, Boolean, Boolean, Boolean, Boolean)", 33554462, "Created %s formats: %@\nFor info: %@\n", v25, v10, a2);
  }

  return v10;
}

void sub_22211A438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}