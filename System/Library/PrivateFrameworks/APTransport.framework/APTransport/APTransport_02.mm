void stream_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStreamUnbuffered <= 50 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
  {
    stream_Finalize_cold_1(DerivedStorage, a1);
  }

  if (*(DerivedStorage + 24))
  {
    v3 = *(DerivedStorage + 56);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 56) = 0;
    }

    v4 = *(DerivedStorage + 8);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 8) = 0;
    }

    v5 = *(DerivedStorage + 32);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 32) = 0;
    }

    v6 = *(DerivedStorage + 64);
    if (v6)
    {
      dispatch_release(v6);
      *(DerivedStorage + 64) = 0;
    }

    v7 = *(DerivedStorage + 104);
    if (v7)
    {
      dispatch_release(v7);
      *(DerivedStorage + 104) = 0;
    }

    v8 = *(DerivedStorage + 16);
    if (v8)
    {
      dispatch_release(v8);
      *(DerivedStorage + 16) = 0;
    }
  }

  else
  {
    if (gLogCategory_APTransportStreamUnbuffered <= 100 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
    {
      stream_Finalize_cold_2(a1);
    }

    __break(1u);
  }
}

void stream_Finalize_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
  {
    stream_Finalize_cold_1_0(DerivedStorage, a1, v2);
  }

  if (*(DerivedStorage + 72))
  {
    if (*(DerivedStorage + 48) == *(DerivedStorage + 56))
    {
      *(DerivedStorage + 56) = 0;
    }

    stream_forgetConnectionState((DerivedStorage + 48));
    stream_forgetConnectionState((DerivedStorage + 56));
    v4 = *(DerivedStorage + 136);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 136) = 0;
    }

    v5 = *(DerivedStorage + 144);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 144) = 0;
    }

    v6 = *(DerivedStorage + 88);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 88) = 0;
    }

    v7 = *(DerivedStorage + 80);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 80) = 0;
    }

    v8 = *(DerivedStorage + 168);
    if (v8)
    {
      dispatch_release(v8);
      *(DerivedStorage + 168) = 0;
    }

    v9 = *(DerivedStorage + 32);
    if (v9)
    {
      dispatch_release(v9);
      *(DerivedStorage + 32) = 0;
    }

    v10 = *(DerivedStorage + 184);
    if (v10)
    {
      dispatch_release(v10);
      *(DerivedStorage + 184) = 0;
    }

    v11 = *(DerivedStorage + 64);
    if (v11)
    {
      dispatch_release(v11);
      *(DerivedStorage + 64) = 0;
    }
  }

  else
  {
    if (gLogCategory_APTransportStream <= 100 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
    {
      stream_Finalize_cold_2_0(a1);
    }

    __break(1u);
  }
}

void session_unregisterStreamInternal(const void **a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    session_unregisterStreamInternal_cold_1();
  }

  else
  {
    APTransportStreamIDGetToken(a1[1]);
    FigCFWeakReferenceTableRemoveValue();
  }

  v2 = *a1;
  if (*a1)
  {

    CFRelease(v2);
  }
}

uint64_t __stream_invalidateInternal_block_invoke(uint64_t result)
{
  *(*(result + 32) + 112) = 0;
  *(*(result + 32) + 120) = 0;
  return result;
}

uint64_t __stream_invalidateInternal_block_invoke_0(uint64_t result)
{
  *(*(result + 32) + 200) = 0;
  *(*(result + 32) + 208) = 0;
  *(*(result + 32) + 192) = 0;
  return result;
}

void __stream_readyToSendCallback_block_invoke_cold_2(uint64_t a1)
{
  v2 = **(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
    **(a1 + 56) = 0;
  }
}

uint64_t browser_createBonjourInfoForBTLEDevice(uint64_t a1, int a2, __CFDictionary **a3, __CFDictionary **a4)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  value = 0;
  cf = 0;
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (!CFDictionaryGetInt64Ranged())
  {
    browser_createBonjourInfoForBTLEDevice_cold_14(&v34 + 1);
    goto LABEL_22;
  }

  v9 = browser_cfstringToSockAddr(v8, v33);
  HIDWORD(v34) = v9;
  if (v9)
  {
    browser_createBonjourInfoForBTLEDevice_cold_4(v9);
    goto LABEL_22;
  }

  SockAddrSetPort();
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (HIDWORD(v34))
  {
    browser_createBonjourInfoForBTLEDevice_cold_5(HIDWORD(v34));
    goto LABEL_22;
  }

  v11 = CFStringCreateF(&v34 + 4, "%##a", v33);
  if (!v11)
  {
    browser_createBonjourInfoForBTLEDevice_cold_13();
    goto LABEL_22;
  }

  v12 = v11;
  BTLEBonjourServiceArray = browser_createBTLEBonjourServiceArray(v11, &value);
  HIDWORD(v34) = BTLEBonjourServiceArray;
  if (BTLEBonjourServiceArray)
  {
    browser_createBonjourInfoForBTLEDevice_cold_6(BTLEBonjourServiceArray);
LABEL_33:
    v29 = v12;
    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    browser_createBonjourInfoForBTLEDevice_cold_12();
    goto LABEL_33;
  }

  v15 = Mutable;
  CFDictionarySetValue(Mutable, @"deviceID", TypedValue);
  CFDictionarySetValue(v15, @"dnsName", v12);
  if (a2)
  {
    CFDictionarySetValue(v15, @"removedServices", value);
    v16 = @"serviceType";
    v17 = @"_airplay._tcp.";
    v18 = v15;
    goto LABEL_11;
  }

  CFDictionarySetValue(v15, @"services", value);
  CFDictionarySetValue(v15, @"serviceType", @"_airplay._tcp.");
  CFDataGetTypeID();
  v19 = CFDictionaryGetTypedValue();
  if (!HIDWORD(v34))
  {
    CFDictionarySetValue(v15, @"name", v10);
    v16 = @"txt";
    v18 = v15;
    v17 = v19;
LABEL_11:
    CFDictionarySetValue(v18, v16, v17);
    v20 = CFStringCreateF(&v34 + 4, "%##a", v33);
    v21 = v20;
    if (v20)
    {
      v22 = browser_createBTLEBonjourServiceArray(v20, &cf);
      HIDWORD(v34) = v22;
      if (v22)
      {
        browser_createBonjourInfoForBTLEDevice_cold_8(v22);
      }

      else
      {
        v23 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v23)
        {
          v24 = v23;
          CFDictionarySetValue(v23, @"deviceID", TypedValue);
          CFDictionarySetValue(v24, @"dnsName", v21);
          if (a2)
          {
            CFDictionarySetValue(v24, @"removedServices", cf);
            v25 = @"serviceType";
            v26 = @"_raop._tcp.";
            v27 = v24;
          }

          else
          {
            CFDictionarySetValue(v24, @"services", cf);
            CFDictionarySetValue(v24, @"serviceType", @"_raop._tcp.");
            CFDataGetTypeID();
            v28 = CFDictionaryGetTypedValue();
            if (HIDWORD(v34))
            {
              browser_createBonjourInfoForBTLEDevice_cold_9(HIDWORD(v34), v15, v24);
              goto LABEL_19;
            }

            CFDictionarySetValue(v24, @"name", v10);
            v25 = @"txt";
            v27 = v24;
            v26 = v28;
          }

          CFDictionarySetValue(v27, v25, v26);
          *a3 = v15;
          *a4 = v24;
LABEL_19:
          CFRelease(v12);
LABEL_20:
          v29 = v21;
LABEL_21:
          CFRelease(v29);
          goto LABEL_22;
        }

        browser_createBonjourInfoForBTLEDevice_cold_10();
      }
    }

    else
    {
      browser_createBonjourInfoForBTLEDevice_cold_11();
    }

    goto LABEL_38;
  }

  browser_createBonjourInfoForBTLEDevice_cold_7(HIDWORD(v34));
  v21 = 0;
LABEL_38:
  CFRelease(v15);
  CFRelease(v12);
  if (v21)
  {
    goto LABEL_20;
  }

LABEL_22:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return HIDWORD(v34);
}

uint64_t browser_cfstringToSockAddr(const __CFString *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  if (CFStringGetCString(a1, v6, 128, 0x600u))
  {
    v3 = StringToSockAddr(v6, a2, 28, 0);
    v4 = v3;
    if (v3)
    {
      browser_cfstringToSockAddr_cold_1(v3);
    }
  }

  else
  {
    browser_cfstringToSockAddr_cold_2();
    return 4294960591;
  }

  return v4;
}

uint64_t APBrowserCreateAdvertiserInfoForDevice(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, CFDictionaryRef theDict, CFTypeRef *a5)
{
  cf = 0;
  if (!a2 && !a3 && !theDict)
  {
    APBrowserCreateAdvertiserInfoForDevice_cold_7();
    return 4294960591;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"txt");
    if (!Value)
    {
      APBrowserCreateAdvertiserInfoForDevice_cold_2();
      return 4294960534;
    }

    v11 = Value;
    v12 = CFDictionaryGetValue(theDict, @"name");
    if (!v12)
    {
      APBrowserCreateAdvertiserInfoForDevice_cold_1();
      return 4294960534;
    }

    v13 = v12;
    if (a3)
    {
LABEL_8:
      v14 = CFDictionaryGetValue(a3, @"txt");
      if (!v14)
      {
        APBrowserCreateAdvertiserInfoForDevice_cold_4();
        return 4294960534;
      }

      v15 = v14;
      v16 = CFDictionaryGetValue(a3, @"name");
      if (!v16)
      {
        APBrowserCreateAdvertiserInfoForDevice_cold_3();
        return 4294960534;
      }

      v13 = v16;
      if (a2)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  v15 = 0;
  if (a2)
  {
LABEL_11:
    v17 = CFDictionaryGetValue(a2, @"txt");
    if (v17)
    {
      v18 = v17;
      v19 = CFDictionaryGetValue(a2, @"name");
      if (v19)
      {
        v13 = v19;
        goto LABEL_17;
      }

      APBrowserCreateAdvertiserInfoForDevice_cold_5();
    }

    else
    {
      APBrowserCreateAdvertiserInfoForDevice_cold_6();
    }

    return 4294960534;
  }

LABEL_16:
  v18 = 0;
LABEL_17:
  v20 = APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName(a1, v11, v18, v15, v13, &cf);
  if (v20)
  {
    APSLogErrorAt();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a5 = cf;
  }

  return v20;
}

uint64_t browser_skipBonjourUpdate(const void *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!APSSettingsGetInt64())
  {
    return 0;
  }

  v4 = CFGetAllocator(a1);
  if (APBrowserCopyDeviceIDFromBonjourInfo(v4, a2, &cf))
  {
    APSLogErrorAt();
  }

  else
  {
    OUTLINED_FUNCTION_10_10();
    if (v8 ^ v9 | v7 && (v6 != -1 || OUTLINED_FUNCTION_8_0(v5)))
    {
      v43 = cf;
      OUTLINED_FUNCTION_1();
      LogPrintF(v10, v11, v12, v13, v43);
    }

    Int64 = APSSettingsGetInt64();
    if (Int64 == FigCFNumberGetUInt64())
    {
      OUTLINED_FUNCTION_10_10();
      if (v8 ^ v9 | v7 && (v16 != -1 || OUTLINED_FUNCTION_8_0(v15)))
      {
        OUTLINED_FUNCTION_1();
        LogPrintF(v17, v18, v19, v20);
      }

      CFStringGetTypeID();
      if (CFDictionaryGetTypedValue() != @"com.apple.airplay")
      {
        CFStringGetTypeID();
        if (!CFDictionaryGetTypedValue() || (CFStringGetTypeID(), TypedValue = CFDictionaryGetTypedValue(), !CFEqual(@"com.apple.airplay", TypedValue)))
        {
LABEL_33:
          OUTLINED_FUNCTION_10_10();
          if (v8 ^ v9 | v7 && (v37 != -1 || OUTLINED_FUNCTION_8_0(v36)))
          {
            v44 = cf;
            OUTLINED_FUNCTION_1();
            LogPrintF(v38, v39, v40, v41, v44);
          }

          v35 = 1;
          goto LABEL_39;
        }
      }

      v22 = 0;
      v23 = 1;
      v24 = @"removedServices";
      v25 = @"services";
      do
      {
        v26 = v23;
        v27 = v24;
        v28 = v25;
        CFArrayGetTypeID();
        v29 = CFDictionaryGetTypedValue();
        v30 = v29;
        v31 = 0;
        if (v22 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v22;
        }

        if (v29)
        {
LABEL_22:
          Count = CFArrayGetCount(v30);
          goto LABEL_24;
        }

        while (1)
        {
          Count = 0;
LABEL_24:
          if (v31 >= Count)
          {
            break;
          }

          CFDictionaryGetTypeID();
          CFArrayGetTypedValueAtIndex();
          CFStringGetTypeID();
          v34 = CFDictionaryGetTypedValue();
          if (v32 == v22 || v34 != @"nan0" && (!v34 || !CFEqual(v34, @"nan0")))
          {
            goto LABEL_33;
          }

          ++v31;
          ++v22;
          if (v30)
          {
            goto LABEL_22;
          }
        }

        v23 = 0;
        v24 = v27;
        v25 = v28;
      }

      while ((v26 & 1) != 0);
    }
  }

  v35 = 0;
LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

  return v35;
}

uint64_t APBrowserCopyDeviceIDFromBonjourInfo(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v9 = 0;
  if (a2)
  {
    DeviceID = BonjourDevice_GetDeviceID();
    v5 = CFGetAllocator(a1);
    v6 = CFNumberCreate(v5, kCFNumberSInt64Type, &DeviceID);
    if (v6)
    {
      *a3 = v6;
    }

    else
    {
      APBrowserCopyDeviceIDFromBonjourInfo_cold_2(&v9);
    }
  }

  else
  {
    APBrowserCopyDeviceIDFromBonjourInfo_cold_3(&v9);
  }

  return v9;
}

uint64_t browser_createBTLEBonjourServiceArray(const void *a1, CFArrayRef *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    CFDictionarySetValue(Mutable, @"domain", @"local.");
    CFDictionarySetValue(v5, @"ifname", @"btle0");
    CFDictionarySetInt64();
    CFDictionarySetValue(v5, @"dnsName", a1);
    v7[0] = v5;
    *a2 = CFArrayCreate(0, v7, 1, MEMORY[0x277CBF128]);
    CFRelease(v5);
    return 0;
  }

  else
  {
    browser_createBTLEBonjourServiceArray_cold_1();
    return 4294960568;
  }
}

uint64_t browser_removeBonjourWithBTLE(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v14 = 0;
  Value = CFDictionaryGetValue(*(DerivedStorage + 112), a2);
  if (Value)
  {
    v6 = CFDictionaryGetValue(Value, @"lastInfo");
    if (v6)
    {
      v7 = browser_createBonjourInfoForBTLEDevice(v6, 1, &v14, &cf);
      if (v7)
      {
        v11 = v7;
        APSLogErrorAt();
        v8 = v14;
      }

      else
      {
        v8 = v14;
        v9 = browser_removeService(a1, @"AirPlay", v14);
        if (v9)
        {
          v11 = v9;
          browser_removeBonjourWithBTLE_cold_1(v9);
        }

        else
        {
          v10 = browser_removeService(a1, @"RAOP", cf);
          v11 = v10;
          if (v10)
          {
            browser_removeBonjourWithBTLE_cold_2(v10);
          }
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    browser_removeBonjourWithBTLE_cold_3(DerivedStorage, a2, &v15);
    v11 = v15;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t browser_removeService(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  Transports = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  key = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_59;
  }

  v7 = DerivedStorage;
  if (browser_skipBonjourUpdate(a1, a3))
  {
    goto LABEL_54;
  }

  CFDictionaryGetValue(a3, @"name");
  if (@"RAOP" == a2 || @"RAOP" && CFEqual(a2, @"RAOP"))
  {
    v8 = @"RAOPBonjourInfo";
    goto LABEL_25;
  }

  v9 = *(v7 + 72);
  if (v9 != a2 && (!v9 || !CFEqual(a2, v9)))
  {
    if (@"AirPlayNANFull" == a2 || @"AirPlayNANFull" && CFEqual(a2, @"AirPlayNANFull"))
    {
      v8 = @"AirPlayNANFullBonjourInfo";
      goto LABEL_25;
    }

    if (@"AirPlayNANPartial" == a2 || @"AirPlayNANPartial" && CFEqual(a2, @"AirPlayNANPartial"))
    {
      v8 = @"AirPlayNANPartialBonjourInfo";
      goto LABEL_25;
    }

    if (@"AirPlayPartial" == a2 || @"AirPlayPartial" && CFEqual(a2, @"AirPlayPartial"))
    {
      v8 = @"AirPlayP2PBonjourInfo";
      goto LABEL_25;
    }

LABEL_59:
    APSLogErrorAt();
    Transports = -6705;
    goto LABEL_54;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    goto LABEL_59;
  }

LABEL_25:
  v10 = CFGetAllocator(a1);
  Transports = APBrowserCopyDeviceIDFromBonjourInfo(v10, a3, &key);
  if (Transports)
  {
    goto LABEL_53;
  }

  v11 = CFDictionaryGetValue(*(v7 + 216), key);
  if (!v11)
  {
    v25 = OUTLINED_FUNCTION_2_21();
    if (!(v18 ^ v19 | v21))
    {
      goto LABEL_83;
    }

    if (v27 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v25))
      {
        goto LABEL_83;
      }

      v25 = *v7;
    }

    v28 = "No device info for %@ - cannot remove service.\n";
LABEL_71:
    OUTLINED_FUNCTION_11(v25, "OSStatus browser_removeService(APBrowserRef, CFStringRef, CFDictionaryRef)", v26, v28);
LABEL_83:
    Transports = 0;
    goto LABEL_54;
  }

  v12 = v11;
  v13 = CFDictionaryGetValue(v11, v8);
  value = v13;
  if (!v13)
  {
    v25 = OUTLINED_FUNCTION_2_21();
    if (!(v18 ^ v19 | v21))
    {
      goto LABEL_83;
    }

    if (v29 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v25))
      {
        goto LABEL_83;
      }

      v25 = *v7;
    }

    v28 = "No bonjour info for %@, service type %@ - cannot remove service.\n";
    goto LABEL_71;
  }

  v14 = v13;
  Transports = APBrowserGetTransports(a3, 1, &v35);
  if (Transports)
  {
    goto LABEL_53;
  }

  v15 = OUTLINED_FUNCTION_2_21();
  if (v18 ^ v19 | v21)
  {
    v20 = __CFADD__(v17, 1);
    v21 = v17 == -1;
    if (v17 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v15))
      {
        goto LABEL_39;
      }

      v15 = *v7;
    }

    if (v21 || !v20)
    {
      switch(v35)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
          break;
        default:
          JUMPOUT(0);
      }
    }

    OUTLINED_FUNCTION_11(v15, "OSStatus browser_removeService(APBrowserRef, CFStringRef, CFDictionaryRef)", v16, "Remove %s for %s device with id: %@ name: %@.\n");
  }

LABEL_39:
  CFRetain(v14);
  CFDictionaryRemoveValue(v12, v8);
  Transports = BonjourDevice_MergeInfo();
  if (Transports)
  {
    goto LABEL_53;
  }

  CFDictionarySetValue(v12, v8, value);
  CFRelease(value);
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (Transports != -6727)
  {
    if (Transports)
    {
      goto LABEL_53;
    }
  }

  Transports = 0;
  if (TypedValue && CFArrayGetCount(TypedValue))
  {
    v23 = 0;
  }

  else
  {
    CFDictionaryRemoveValue(v12, v8);
    Transports = browser_queryServiceAvailabilityForDevice(a1, key, &v34 + 1, &v34, &v33);
    if (Transports)
    {
      goto LABEL_53;
    }

    v23 = ((HIBYTE(v34) | v34) | v33) == 0;
  }

  if (!CFDictionaryGetInt64())
  {
LABEL_51:
    if (!v23)
    {
      Transports = browser_updateEventInfoForDevice(a1, key);
      if (!Transports)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    Transports = browser_removeNearbyDevice(a1, key);
    if (Transports)
    {
LABEL_53:
      APSLogErrorAt();
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (*(v7 + 24) != 1)
  {
    if ((v35 & 4) != 0)
    {
      Transports = browser_cacheP2PDNSAddresses(a1, key, v12);
      if (Transports)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_51;
  }

  v30 = OUTLINED_FUNCTION_2_21();
  if (v18 ^ v19 | v21)
  {
    if (v32 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v30))
      {
        goto LABEL_54;
      }

      v30 = *v7;
    }

    OUTLINED_FUNCTION_11(v30, "OSStatus browser_removeService(APBrowserRef, CFStringRef, CFDictionaryRef)", v31, "Device with id: %@ name: %@ is being tracked in Presence mode. Suppressing remove notification.\n");
  }

LABEL_54:
  if (key)
  {
    CFRelease(key);
  }

  return Transports;
}

void __browser_handleBTLEQueryEventExternal_block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v37 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  cf = 0;
  value = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *cStr = 0u;
  v43 = 0u;
  if (!v3)
  {
    __browser_handleBTLEQueryEventExternal_block_invoke_cold_13();
LABEL_27:
    Mutable = 0;
    goto LABEL_28;
  }

  v7 = DerivedStorage;
  v8 = CFDictionaryGetValue(*(DerivedStorage + 112), v3);
  if (!v8)
  {
    __browser_handleBTLEQueryEventExternal_block_invoke_cold_12(v7, &v37);
    goto LABEL_50;
  }

  v9 = v8;
  if (v4)
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v12 = v11;
      if (v11)
      {
        memset(v40, 0, sizeof(v40));
        v41 = 0;
        memset(v38, 0, sizeof(v38));
        v39 = 0;
        memset(v59, 0, sizeof(v59));
        memset(v58, 0, sizeof(v58));
        CFGetCString();
        v13 = StringToSockAddr(v59, v38, 28, 0);
        if (v13)
        {
          __browser_handleBTLEQueryEventExternal_block_invoke_cold_1(v13);
          goto LABEL_9;
        }

        CFGetCString();
        v14 = StringToSockAddr(v58, v40, 28, 0);
        if (v14)
        {
          __browser_handleBTLEQueryEventExternal_block_invoke_cold_2(v14);
          goto LABEL_9;
        }

        if (SockAddrCompareAddr())
        {
LABEL_9:
          v5 = 4294895232;
          v15 = *v7;
          v16 = **v7;
          if (v16 > 50)
          {
            goto LABEL_22;
          }

          if (v16 != -1)
          {
            goto LABEL_11;
          }

          if (_LogCategory_Initialize())
          {
            v15 = *v7;
LABEL_11:
            LogPrintF(v15, "OSStatus browser_handleBTLEQueryEventInternal(APBrowserRef, CFStringRef, CFDictionaryRef, OSStatus)", 33554482, "NAT present between devices. Ignoring device %@ - localAddress=%@, echoedAddress=%@", v3, TypedValue, v12);
          }

LABEL_22:
          v27 = *v7;
          v28 = **v7;
          if (v28 > 20)
          {
            goto LABEL_26;
          }

          if (v28 == -1)
          {
            if (!_LogCategory_Initialize())
            {
LABEL_26:
              DebugGetErrorString();
              v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
              CFDictionarySetValue(v9, @"connectionError", v3);
              v29 = CFDictionaryGetValue(v9, @"lastInfo");
              if (v29)
              {
                BonjourInfoForBTLEDevice = browser_createBonjourInfoForBTLEDevice(v29, 1, &cf, &v35);
                v37 = BonjourInfoForBTLEDevice;
                if (BonjourInfoForBTLEDevice)
                {
                  __browser_handleBTLEQueryEventExternal_block_invoke_cold_9(BonjourInfoForBTLEDevice);
                }

                else
                {
                  v32 = browser_removeService(v2, @"AirPlay", cf);
                  v37 = v32;
                  if (v32)
                  {
                    __browser_handleBTLEQueryEventExternal_block_invoke_cold_10(v32);
                  }

                  else
                  {
                    v33 = browser_removeService(v2, @"RAOP", v35);
                    v37 = v33;
                    if (v33)
                    {
                      __browser_handleBTLEQueryEventExternal_block_invoke_cold_11(v33);
                    }
                  }
                }
              }

              goto LABEL_27;
            }

            v27 = *v7;
          }

          LogPrintF(v27, "OSStatus browser_handleBTLEQueryEventInternal(APBrowserRef, CFStringRef, CFDictionaryRef, OSStatus)", 33554452, "BTLE query to device %@ failed with error %#m.\n", v3, v5);
          goto LABEL_26;
        }
      }
    }

    if (v5)
    {
      goto LABEL_22;
    }

    CFDictionarySetValue(v9, @"lastInfo", v4);
    v17 = browser_createBonjourInfoForBTLEDevice(v4, 0, &cf, &v35);
    v37 = v17;
    if (v17)
    {
      __browser_handleBTLEQueryEventExternal_block_invoke_cold_3(v17);
    }

    else
    {
      CFStringGetTypeID();
      v18 = CFDictionaryGetTypedValue();
      if (v37)
      {
        __browser_handleBTLEQueryEventExternal_block_invoke_cold_4(v37);
      }

      else
      {
        v19 = CFGetAllocator(v2);
        v20 = cf;
        v21 = APBrowserCopyDeviceIDFromBonjourInfo(v19, cf, &value);
        v37 = v21;
        if (!v21)
        {
          CFDictionarySetValue(v9, @"deviceName", v18);
          CFDictionarySetValue(v9, @"bonjourDeviceID", value);
          CFDictionarySetValue(v9, @"connectionError", @"No Error");
          v22 = CFGetAllocator(v2);
          Mutable = CFDictionaryCreateMutable(v22, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v24 = CFDictionaryGetValue(v9, @"btleRSSI");
            FigCFDictionarySetValueFromKeyInDict();
            CFDictionarySetValue(Mutable, @"btleRSSI", v24);
            updated = browser_addOrUpdateService(v2, @"AirPlay", v20, Mutable);
            v37 = updated;
            if (updated)
            {
              __browser_handleBTLEQueryEventExternal_block_invoke_cold_6(updated);
            }

            else
            {
              v26 = browser_addOrUpdateService(v2, @"RAOP", v35, Mutable);
              v37 = v26;
              if (v26)
              {
                __browser_handleBTLEQueryEventExternal_block_invoke_cold_7(v26);
              }
            }
          }

          else
          {
            __browser_handleBTLEQueryEventExternal_block_invoke_cold_8();
          }

          goto LABEL_20;
        }

        __browser_handleBTLEQueryEventExternal_block_invoke_cold_5(v21);
      }
    }

LABEL_50:
    Mutable = 0;
LABEL_20:
    v3 = 0;
    goto LABEL_28;
  }

  if (v5)
  {
    goto LABEL_22;
  }

  APSLogErrorAt();
  Mutable = 0;
  v3 = 0;
  v37 = -6705;
LABEL_28:
  CFRelease(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  v30 = *(a1 + 48);
  if (v30)
  {
    CFRelease(v30);
  }
}

uint64_t browser_queryServiceAvailabilityForDevice(uint64_t a1, const void *a2, BOOL *a3, BOOL *a4, BOOL *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v10 = DerivedStorage;
    Value = CFDictionaryGetValue(*(DerivedStorage + 216), a2);
    if (Value)
    {
      v12 = Value;
      v13 = CFDictionaryGetValue(Value, *(v10 + 64));
      v14 = (v13 | CFDictionaryGetValue(v12, @"AirPlayNANFullBonjourInfo")) != 0;
      v15 = CFDictionaryGetValue(v12, @"RAOPBonjourInfo") != 0;
      v16 = CFDictionaryGetValue(v12, @"AirPlayP2PBonjourInfo");
      v17 = (v16 | CFDictionaryGetValue(v12, @"AirPlayNANPartialBonjourInfo")) != 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v17 = 0;
    }

    *a3 = v14;
    *a4 = v15;
    result = 0;
    if (a5)
    {
      *a5 = v17;
    }
  }

  else
  {
    browser_queryServiceAvailabilityForDevice_cold_1();
    return 4294960591;
  }

  return result;
}

uint64_t APBrowserGetTransportsRequiringBroker(const __CFDictionary *a1, _DWORD *a2)
{
  if (a1 && (v3 = CFDictionaryGetValue(a1, @"services")) != 0 && (v4 = v3, Count = CFArrayGetCount(v3), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
      if (CFDictionaryGetValue(ValueAtIndex, @"ifname") == @"broker0" || CFDictionaryGetValue(ValueAtIndex, @"ifname") && (Value = CFDictionaryGetValue(ValueAtIndex, @"ifname"), CFEqual(@"broker0", Value)))
      {
        v8 |= CFDictionaryGetInt64();
      }

      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return 0;
}

void _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(const __CFString *a1, __CFString **a2)
{
  if (a1)
  {
    if (CFStringHasSuffix(a1, @"")))
    {
      result.location = 0;
      result.length = 0;
      Length = CFStringGetLength(a1);
      v18.location = 0;
      v18.length = Length;
      if (CFStringFindWithOptions(a1, @" ("), v18, 4uLL, &result)
      {
        v5 = Length - result.location;
        result.length = Length - result.location;
        if (result.location)
        {
          if (v5 >= 4)
          {
            v19.length = v5 - 3;
            v6 = *MEMORY[0x277CBECE8];
            v19.location = result.location + 2;
            v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v19);
            v16.location = 0;
            v16.length = CFStringGetLength(v7);
            v8 = CFNumberFormatterCreate(v6, 0, kCFNumberFormatterNoStyle);
            if (v8)
            {
              v9 = CFNumberFormatterCreateNumberFromString(v6, v8, v7, &v16, 1uLL);
              if (v9)
              {
                v10 = v16.length;
                if (v10 == CFStringGetLength(v7))
                {
                  v11 = CFStringCreateWithSubstring(v6, a1, result);
                  if (v11)
                  {
                    v12 = v11;
                    v13 = CFStringGetLength(a1);
                    MutableCopy = CFStringCreateMutableCopy(v6, v13, a1);
                    if (MutableCopy)
                    {
                      v15 = MutableCopy;
                      CFStringTrim(MutableCopy, v12);
                      *a2 = v15;
                    }

                    else
                    {
                      APSLogErrorAt();
                    }

                    CFRelease(v12);
                  }

                  else
                  {
                    APSLogErrorAt();
                  }
                }
              }
            }

            else
            {
              APSLogErrorAt();
              v9 = 0;
            }

            if (v7)
            {
              CFRelease(v7);
            }

            if (v8)
            {
              CFRelease(v8);
            }

            if (v9)
            {
              CFRelease(v9);
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_1(0, "_APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix", 2575);
  }
}

uint64_t APAdvertiserInfoGetBitListValueFromTXTRecord(const __CFString *a1, CFDataRef theData, _DWORD *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = theData;
    v10 = 0;
    valueLen = 0;
    BytePtr = CFDataGetBytePtr(theData);
    LOWORD(v4) = CFDataGetLength(v4);
    buffer[0] = 0;
    CFStringGetCString(a1, buffer, 256, 0x8000100u);
    if (TXTRecordGetValuePtr(v4, BytePtr, buffer, &valueLen))
    {
      v7 = BitListString_Parse();
      if (v7)
      {
        APSLogErrorAt();
      }

      else
      {
        *a3 = v10;
      }
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

  return v7;
}

uint64_t APAdvertiserInfoCreate(uint64_t a1, uint64_t *a2)
{
  if (_MergedGlobals_1 != -1)
  {
    APAdvertiserInfoGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    *(Instance + 16) = 0u;
    v5 = (Instance + 16);
    *(Instance + 80) = 0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 80) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = pthread_mutex_init(v5, 0);
    v7 = v6;
    if (v6)
    {
      APAdvertiserInfoCreate_cold_2(v6, v4);
    }

    else
    {
      *a2 = v4;
    }
  }

  else
  {
    APAdvertiserInfoCreate_cold_3();
    return 4294960568;
  }

  return v7;
}

uint64_t _APAdvertiserInfoSetLegacyFeatures(const __CFDictionary *a1, uint64_t a2)
{
  CFDictionarySetInt64();
  if (CFDictionaryGetValue(a1, @"featuresEx"))
  {
    MutableCopy = APSFeaturesCreateMutableCopy();
  }

  else
  {
    MutableCopy = APSFeaturesCreateMutable();
  }

  v4 = MutableCopy;
  if (MutableCopy)
  {
    APSFeaturesSetLegacyFlags();
    CFDictionarySetValue(a1, @"featuresEx", v4);
    CFRelease(v4);
    return 0;
  }

  else
  {
    _APAdvertiserInfoSetLegacyFeatures_cold_1();
    return 4294960568;
  }
}

uint64_t transportDevice_Finalize(void *a1)
{
  if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
  {
    transportDevice_Finalize_cold_1(a1);
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

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
    a1[10] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
    a1[11] = 0;
  }

  result = a1[7];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    a1[7] = 0;
  }

  return result;
}

void __queryManagerGetInfo_queryDeviceInternal_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 9648) && (*(a2 + 8456) - 200) <= 0x63)
  {
    SelfAddress = HTTPClientGetSelfAddress();
    if (SelfAddress)
    {
      if (gLogCategory_APBrowserDeviceQueryManagerGetInfo <= 60)
      {
        v5 = SelfAddress;
        if (gLogCategory_APBrowserDeviceQueryManagerGetInfo != -1 || _LogCategory_Initialize())
        {
          __queryManagerGetInfo_queryDeviceInternal_block_invoke_cold_1(v5);
        }
      }
    }

    else
    {
      SockAddrToString();
    }
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APBrowserDeviceQueryManagerGetInfo <= 40 && (gLogCategory_APBrowserDeviceQueryManagerGetInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrowserDeviceQueryManagerGetInfo, "OSStatus queryManagerGetInfo_handleQueryResponse(APBrowserDeviceQueryManagerRef, HTTPMessageRef, CFStringRef, CFStringRef, CFNumberRef, char *, APBrowserDeviceQueryManagerCompletionHandler, void *)", 33554472, "GET info queried device IP %@:%@ - %#m, %#m\n", v9, v8, *(a2 + 9648), *(a2 + 8456));
  }

  v12 = *(a2 + 9648);
  if (v12)
  {
    v13 = 0;
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = *(a2 + 8456);
  if ((v14 - 200) > 0x63)
  {
    v13 = 0;
    v12 = (v14 + 200000);
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  CFDictionaryGetTypeID();
  v13 = CFCreateWithPlistBytes();
  CFDictionarySetValue(v13, @"address", v9);
  CFDictionarySetValue(v13, @"controlPort", v8);
  v12 = 0;
  if (v11)
  {
LABEL_20:
    v11(v6, v7, v13, v10, v12);
  }

LABEL_21:
  if (v13)
  {
    CFRelease(v13);
  }

  CFDictionaryRemoveValue(*(*(a1 + 88) + 24), *(a1 + 48));
  HTTPClientInvalidate();
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 64));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

void browser_handleBTLEQueryEventExternal(uint64_t a1, const void *a2, const void *a3, const void *a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  v10 = *(DerivedStorage + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __browser_handleBTLEQueryEventExternal_block_invoke;
  v11[3] = &__block_descriptor_60_e5_v8__0l;
  v11[4] = a4;
  v11[5] = a2;
  v11[6] = a3;
  v12 = a5;
  dispatch_async(v10, v11);
}

uint64_t browser_setEventInfoForDevice(const void *a1, const void *a2, const void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 216), a2);
  if (!Value)
  {
    APSLogErrorAt();
    return -6762;
  }

  v8 = Value;
  v9 = CFDictionaryGetValue(Value, @"LastEventInfo");
  Int64 = CFDictionaryGetInt64();
  v16 = 0;
  if (v9 != a3)
  {
    v11 = Int64;
    if (!a3 || !v9 || !CFEqual(a3, v9))
    {
      CFDictionarySetValue(v8, @"LastEventInfo", a3);
      if (CFDictionaryContainsKey(a3, @"deviceInfo"))
      {
        if (*(DerivedStorage + 24))
        {
          if (v11)
          {
            v12 = 4;
          }

          else
          {
            v12 = 3;
          }

          v16 = browser_dispatchEvent(a1, v12, a3);
          if (!v16)
          {
            v13 = APSGetCurrentLocalTimeString();
            v14 = CFStringCreateF(&v16, "%s", v13);
            if (v16)
            {
              APSLogErrorAt();
            }

            else
            {
              CFDictionarySetValue(v8, @"DispatchTimeStamp", v14);
            }

            CFDictionarySetValue(v8, @"WasLastEventInfoDispatched", *MEMORY[0x277CBED28]);
            if (v14)
            {
              CFRelease(v14);
            }

            return v16;
          }

          APSLogErrorAt();
        }

        CFDictionarySetValue(v8, @"WasLastEventInfoDispatched", *MEMORY[0x277CBED10]);
      }
    }
  }

  return v16;
}

uint64_t browser_dispatchEvent(const void *a1, uint64_t a2, const void *a3)
{
  v4 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 248))
  {
    return 4294960587;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 245))
  {
    return 4294960587;
  }

  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
    Value = CFDictionaryGetValue(a3, @"deviceID");
  }

  else
  {
    Value = 0;
  }

  v10 = *v7;
  v11 = **v7;
  if (v11 <= 20)
  {
    if (v11 != -1)
    {
LABEL_9:
      EventString = APBrowserGetEventString(v4);
      v13 = **v7;
      if (v13 > 10)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13 != -1 || _LogCategory_Initialize() != 0;
      }

      LogPrintF(v10, "OSStatus browser_dispatchEvent(APBrowserRef, APBrowserEventType, CFDictionaryRef)", 33554452, "Dispatching %s event for device: %@ %?@\n", EventString, Value, v14, a3);
      goto LABEL_17;
    }

    if (_LogCategory_Initialize())
    {
      v10 = *v7;
      goto LABEL_9;
    }
  }

LABEL_17:
  APSDispatchAsyncFHelper();
  return 0;
}

const char *APBrowserGetEventString(int a1)
{
  if ((a1 - 1) > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_278BC79F8[a1 - 1];
  }
}

uint64_t APTransportDeviceCreate(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  if (!a2)
  {
    APTransportDeviceCreate_cold_4();
    return 4294954516;
  }

  if (!a3)
  {
    APTransportDeviceCreate_cold_3();
    return 4294954516;
  }

  v7 = transportDevice_create(a1);
  if (v7)
  {
    v8 = v7;
    *(v7 + 2) = CFRetain(a2);
    v8[3] = CFRetain(a3);
    v9 = FigSimpleMutexCreate();
    v8[7] = v9;
    if (v9)
    {
      if (gLogCategory_APTransportDevice <= 30 && (gLogCategory_APTransportDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportDevice, "OSStatus APTransportDeviceCreate(CFAllocatorRef, APBrowserRef, CFDictionaryRef, APTransportDeviceRef *)", 33554462, "APTransportDevice %{ptr} created with browser %{ptr} and deviceInfo %@\n", v8, a2, a3);
      }

      result = 0;
      *a4 = v8;
    }

    else
    {
      APTransportDeviceCreate_cold_1(v8);
      return 4294960568;
    }
  }

  else
  {
    APTransportDeviceCreate_cold_2();
    return 4294954510;
  }

  return result;
}

_OWORD *transportDevice_create(uint64_t a1)
{
  if (_MergedGlobals_11 != -1)
  {
    APTransportDeviceGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
  }

  else
  {
    transportDevice_create_cold_2();
  }

  return v2;
}

CFHashCode transportDevice_Hash(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 24), @"deviceID");

  return CFHash(Value);
}

BOOL transportDevice_Equal(uint64_t a1, uint64_t a2)
{
  Int64 = CFDictionaryGetInt64();
  v5 = CFDictionaryGetInt64();
  return *(a1 + 16) == *(a2 + 16) && Int64 == v5;
}

uint64_t APTransportDeviceCopyInfo(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    APTransportDeviceCopyInfo_cold_3();
    return 4294960591;
  }

  Value = CFDictionaryGetValue(*(a1 + 24), @"deviceID");
  if (!Value)
  {
    APTransportDeviceCopyInfo_cold_2();
    return 4294960587;
  }

  v7 = Value;
  v8 = *(a1 + 16);
  if (!v8)
  {
    APTransportDeviceCopyInfo_cold_1();
    return 4294960587;
  }

  return APBrowserCopyAirPlayBonjourInfo(v8, v7, a2, a3);
}

uint64_t APBrowserCopyAirPlayBonjourInfo(uint64_t a1, void *a2, void *a3, void *a4)
{
  values[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (a2 && a3)
  {
    v8 = DerivedStorage;
    v9 = *MEMORY[0x277CBECE8];
    values[0] = a2;
    values[1] = @"AirPlayBonjourInfo";
    v10 = CFArrayCreate(v9, values, 2, 0);
    v11 = *(v8 + 8);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __APBrowserCopyAirPlayBonjourInfo_block_invoke;
    v18[3] = &unk_278BCA100;
    v18[4] = &v27;
    v18[5] = &v23;
    v18[8] = v10;
    v18[9] = a4;
    v18[6] = &v19;
    v18[7] = v8;
    v18[10] = a2;
    dispatch_sync(v11, v18);
    if (!*(v28 + 6))
    {
      v12 = v24;
      *a3 = v24[3];
      v12[3] = 0;
      if (a4)
      {
        v13 = v20;
        *a4 = v20[3];
        v13[3] = 0;
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v30 = -6705;
    APSLogErrorAt();
  }

  v14 = v20[3];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = v24[3];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(v28 + 6);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  return v16;
}

void sub_23D2CE1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 104), 8);
  _Unwind_Resume(a1);
}

void __APBrowserCopyAirPlayBonjourInfo_block_invoke(void *a1)
{
  APBrowserDeepCopyPlistAtKeyPath(*(a1[7] + 216), a1[8], (*(a1[5] + 8) + 24));
  OUTLINED_FUNCTION_8_1();
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_8_1();
  if (*(v4 + 24))
  {
    return;
  }

  v5 = *(*(a1[5] + 8) + 24);
  if (!v5)
  {
LABEL_11:
    *(v4 + 24) = -6727;
    return;
  }

  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_11;
  }

  if (a1[9])
  {
    v7 = *MEMORY[0x277CBECE8];
    *(*(a1[6] + 8) + 24) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      Copy = CFStringCreateCopy(v7, Value);
      FigCFDictionarySetValue();
      if (Copy)
      {

        CFRelease(Copy);
      }
    }
  }
}

uint64_t APBrowserDeepCopyPlistAtKeyPath(const void *a1, const void *a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  Value = a1;
  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v7 = CFGetTypeID(a2);
  if (v7 != CFArrayGetTypeID() || !a3)
  {
    goto LABEL_17;
  }

  if (CFArrayGetCount(a2) < 1)
  {
LABEL_12:
    if (CFPropertyListIsValid(Value, kCFPropertyListBinaryFormat_v1_0))
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], Value, 0);
      if (DeepCopy)
      {
        Value = 0;
        *a3 = DeepCopy;
        return Value;
      }

      Value = 4294960568;
LABEL_20:
      APSLogErrorAt();
      return Value;
    }

LABEL_17:
    OUTLINED_FUNCTION_1_22();
    goto LABEL_20;
  }

  v8 = 0;
  while (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 != CFDictionaryGetTypeID())
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
    Value = CFDictionaryGetValue(Value, ValueAtIndex);
    if (++v8 >= CFArrayGetCount(a2))
    {
      if (Value)
      {
        goto LABEL_12;
      }

      return 4294960569;
    }
  }

  return 4294960569;
}

void browser_callEventHandler(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  (*(a1 + 24))(*a1, *(a1 + 8), v2, *(a1 + 32));
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(v1);
}

uint64_t browser_startBTLEDeviceQuery(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (!a2)
  {
    browser_startBTLEDeviceQuery_cold_4();
    return 4294960591;
  }

  v5 = DerivedStorage;
  Value = CFDictionaryGetValue(*(DerivedStorage + 112), a2);
  if (!Value)
  {
    browser_startBTLEDeviceQuery_cold_3();
    return 4294960534;
  }

  v7 = Value;
  v8 = CFDictionaryGetValue(Value, @"IPAddress");
  shouldQueryIPAddress = browser_shouldQueryIPAddress(v8, &v18);
  if (shouldQueryIPAddress)
  {
    v16 = shouldQueryIPAddress;
    browser_startBTLEDeviceQuery_cold_1(shouldQueryIPAddress);
    return v16;
  }

  if (v18)
  {
    v10 = CFDictionaryGetValue(v7, @"port");
    v11 = *(v5 + 104);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v12)
    {
      v13 = v12(v11, a2, v8, v10, @"BT", browser_handleBTLEQueryEventExternal, a1);
      if (!v13)
      {
        CFRetain(a1);
        mach_absolute_time();
        Int64 = CFNumberCreateInt64();
        if (!Int64)
        {
          browser_startBTLEDeviceQuery_cold_2();
          return 4294960568;
        }

        v15 = Int64;
        CFDictionarySetValue(v7, @"lastQueryTicks", Int64);
        CFRelease(v15);
        return 0;
      }

      v16 = v13;
    }

    else
    {
      v16 = 4294954514;
    }

    APSLogErrorAt();
    return v16;
  }

  if (!v18)
  {
    browser_removeBonjourWithBTLE(a1, a2);
  }

  return 0;
}

uint64_t browser_shouldQueryIPAddress(const __CFString *a1, BOOL *a2)
{
  v7 = 0;
  v8 = 0uLL;
  v9 = 0;
  v3 = browser_cfstringToSockAddr(a1, &v7);
  v4 = v3;
  if (v3)
  {
    browser_shouldQueryIPAddress_cold_1(v3);
  }

  else
  {
    if (BYTE1(v7) == 30)
    {
      v5 = (vmaxv_u16(vmovn_s32(vtstq_s32(v8, v8))) & 1) != 0 && (v8.i16[0] & 0xC0FF) != 33022;
    }

    else if (BYTE1(v7) != 2 || (v5 = 0, HIDWORD(v7)) && WORD2(v7) != 65193)
    {
      v5 = 1;
    }

    *a2 = v5;
  }

  return v4;
}

uint64_t queryManagerGetInfo_QueryDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = *(CMBaseObjectGetDerivedStorage() + 8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __queryManagerGetInfo_QueryDevice_block_invoke;
  v17[3] = &unk_278BC7418;
  v17[4] = &v18;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a6;
  v17[11] = a7;
  dispatch_sync(v14, v17);
  v15 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v15;
}

uint64_t browser_updateAVDevicePresent(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryGetCount(*(DerivedStorage + 112)) < 1)
  {
    v3 = 0;
    v4 = 2;
  }

  else
  {
    v3 = *(DerivedStorage + 198) != 0;
    if (*(DerivedStorage + 198))
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  if (*(DerivedStorage + 244) != v3)
  {
    v6 = browser_dispatchEvent(a1, v4, 0);
    if (v6)
    {
      v5 = v6;
      browser_updateAVDevicePresent_cold_1(v6);
      return v5;
    }

    v7 = *DerivedStorage;
    v8 = **DerivedStorage;
    if (v8 > 50)
    {
      goto LABEL_13;
    }

    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v7 = *DerivedStorage;
    }

    EventString = APBrowserGetEventString(v4);
    LogPrintF(v7, "OSStatus browser_updateAVDevicePresent(APBrowserRef)", 33554482, "Dispatching %s event\n", EventString);
LABEL_13:
    v5 = 0;
    *(DerivedStorage + 244) = v3;
    return v5;
  }

  return 0;
}

uint64_t APConnectivityHelperQueryWiFiPower(uint64_t a1, uint64_t a2)
{
  context[1] = a2;
  v4 = 0;
  context[0] = a1;
  dispatch_sync_f(*(a1 + 16), context, _APConnectivityHelperQueryWiFiPower);
  return v4;
}

uint64_t browser_removeNearbyDevice(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (APSRotatingKeyMapperIsInitialized() && APSRotatingKeyMapperRemoveID())
  {
    APSLogErrorAt();
  }

  v5 = CFGetAllocator(a1);
  DetailedModeEventInfoDictionary = APBrowserCreateDetailedModeEventInfoDictionary(v5, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &cf);
  if (DetailedModeEventInfoDictionary)
  {
    v19 = DetailedModeEventInfoDictionary;
LABEL_22:
    APSLogErrorAt();
    goto LABEL_16;
  }

  if (*(DerivedStorage + 24))
  {
    v7 = browser_dispatchEvent(a1, 5, cf);
    if (v7)
    {
      v19 = v7;
      goto LABEL_22;
    }
  }

  v8 = OUTLINED_FUNCTION_14_4();
  if (CFDictionaryGetValue(v8, v9))
  {
    if (CFDictionaryGetInt64())
    {
      v10 = CMBaseObjectGetDerivedStorage();
      --*(v10 + 240);
    }

    v11 = OUTLINED_FUNCTION_14_4();
    CFDictionaryRemoveValue(v11, v12);
    v13 = OUTLINED_FUNCTION_1_29();
    if (!(v17 ^ v18 | v16))
    {
      goto LABEL_15;
    }

    if (v15 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v13))
      {
        goto LABEL_15;
      }

      v13 = *DerivedStorage;
    }

    OUTLINED_FUNCTION_11(v13, "OSStatus browser_removeNearbyDevice(APBrowserRef, CFNumberRef)", v14, "Removed device with id: %@\n");
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  APSLogErrorAt();
  v19 = 4294960569;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x282158188](a1, 0, 0, 0xFFFFFFFFLL, a5, 0);
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return FigSimpleMutexUnlock();
}

uint64_t OUTLINED_FUNCTION_13_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{

  return CFDictionaryGetTypedValue();
}

uint64_t OUTLINED_FUNCTION_13_6()
{
  v4 = *(v2 + 80);

  return APTransportSessionHandleStreamEvent(v4, v0, 0, v1);
}

void _APConnectivityHelperQueryWiFiPower(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (*(v4 + 232))
  {
    APSLogErrorAt();
    v6 = -72203;
  }

  else
  {
    v6 = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v4, a2, a3);
    if (v6)
    {
      APSLogErrorAt();
    }

    else
    {
      block = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = ___APConnectivityHelperQueryWiFiPower_block_invoke;
      v12 = &unk_278BC7668;
      v13 = &v15;
      v14 = v4;
      qos_class = dispatch_queue_get_qos_class(*(v4 + 24), 0);
      if (qos_class_self() >= qos_class)
      {
        v11(&block);
      }

      else
      {
        dispatch_async_and_wait(*(v4 + 24), &block);
      }

      if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        if (*(v16 + 24))
        {
          v8 = "ON";
        }

        else
        {
          v8 = "OFF";
        }

        LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperQueryWiFiPower(void *)", 33554472, "[%{ptr}] WiFi is powered %s.\n", v4, v8, block, v10);
      }

      v6 = 0;
      *v5 = *(v16 + 24);
    }
  }

  *(a1 + 4) = v6;
  _Block_object_dispose(&v15, 8);
}

void sub_23D2CF284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _APConnectivityHelperStopWiFiDeviceAttachmentListener(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped_cold_1(v3);
  }

  return v4;
}

void _APConnectivityHelperTrySettingWiFiDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  if (*(a1 + 56))
  {
    goto LABEL_2;
  }

  block = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = ___APConnectivityHelperTrySettingWiFiDevice_block_invoke;
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
  if (v5)
  {
    v6 = v5;
    *(a1 + 56) = v6;
    if (gLogCategory_APConnectivityHelper > 40)
    {
      goto LABEL_13;
    }

    if (gLogCategory_APConnectivityHelper == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_2;
      }

      v6 = *(a1 + 56);
    }

    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperTrySettingWiFiDevice(APConnectivityHelperRef)", 33554472, "[%{ptr}] WiFi device successfully set up on interface %@.\n", a1, v6, block, v9);
LABEL_2:
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperHandleWiFiDeviceIsAvailable(APConnectivityHelperRef)", 33554462, "[%{ptr}] WiFi device is available\n", a1);
    }

LABEL_13:
    if (*(a1 + 87))
    {
      started = _APConnectivityHelperDispatchEvent(a1, 1, 0);
      if (started)
      {
        goto LABEL_34;
      }

      *(a1 + 87) = 0;
    }

    if (*(a1 + 86))
    {
      started = _APConnectivityHelperStartWiFiPowerListener(a1);
      if (started)
      {
        goto LABEL_34;
      }

      *(a1 + 86) = 0;
    }

    if (*(a1 + 82))
    {
      started = _APConnectivityHelperStartWiFiNetworkListener(a1);
      if (started)
      {
        goto LABEL_34;
      }

      *(a1 + 82) = 0;
    }

    if (*(a1 + 84))
    {
      started = _APConnectivityHelperStartLinkDebounceFailedListener(a1);
      if (started)
      {
        goto LABEL_34;
      }

      *(a1 + 84) = 0;
    }

    if (!*(a1 + 210))
    {
      started = 0;
      goto LABEL_29;
    }

    started = _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted(a1, a2, a3);
    if (!started)
    {
      *(a1 + 210) = 0;
      goto LABEL_29;
    }

LABEL_34:
    APSLogErrorAt();
LABEL_29:
    _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(a1, a2, a3);
    if (started)
    {
      APSLogErrorAt();
    }
  }

  _Block_object_dispose(&v14, 8);
}

void sub_23D2CF5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 88) && !*(a1 + 56))
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_1(a1, a2, a3);
    }

    *(a1 + 88) = 1;
    updated = _APConnectivityHelperUpdateInterfaceAddedListener(a1, a2, a3);
    if (updated)
    {
      v7 = updated;
      _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_2(updated, a1);
      return v7;
    }

    if (!_APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_4())
    {
      CFGetAllocator(a1);
      v5 = WiFiManagerClientCreate();
      if (v5)
      {
        v6 = v5;
        WiFiManagerClientSetProperty();
        CFRelease(v6);
      }

      else if (gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_3(a1);
      }
    }
  }

  _APConnectivityHelperTrySettingWiFiDevice(a1, a2, a3);
  return 0;
}

uint64_t _APConnectivityHelperStopWiFiDeviceAttachmentListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 88))
  {
    return 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
  {
    OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperStopWiFiDeviceAttachmentListener(APConnectivityHelperRef)", a3, "[%{ptr}] Stopping WiFi device attachment listener.\n");
  }

  *(a1 + 88) = 0;
  _APConnectivityHelperUpdateInterfaceAddedListener(a1, a2, a3);
  if (!*(a1 + 216))
  {
    return 0;
  }

  v4 = _APConnectivityHelperDispatchEvent(a1, 0x65, 0);
  if (v4)
  {
    APSLogErrorAt();
  }

  return v4;
}

uint64_t browser_getDeviceRelationship(uint64_t a1, const void *a2, uint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetTypeID();
  if (!CFDictionaryGetTypedValue())
  {
    if (!a3)
    {
      return 0;
    }

    v7 = APAdvertiserInfoCopyProperty(a3, 0, @"publicCUSystemPairingIdentity", 0, 0);
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      CFDictionarySetValue(v6[20], a2, TypedValue);
      CFDictionaryRemoveValue(v6[21], v7);
      CFStringGetTypeID();
      v14[0] = @"rapportBonjourCorrelationType";
      v14[1] = @"rapportBonjourCorrelationID";
      v15[0] = &unk_284F652D8;
      v15[1] = a2;
      v9 = CFDictionaryGetTypedValue();
      CFDictionarySetValue(v6[19], v9, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2]);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (!TypedValue)
    {
      return 0;
    }
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged >= 3)
  {
    v11 = *DerivedStorage;
    v12 = **DerivedStorage;
    if (v12 <= 90)
    {
      if (v12 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 0;
        }

        v11 = *DerivedStorage;
      }

      LogPrintF(v11, "APBrowserDeviceRelationship browser_getDeviceRelationship(APBrowserRef, CFNumberRef, APAdvertiserInfoRef)", 33554522, "Invalid device relationship for device ID %@: %u\n", a2, Int64Ranged);
    }

    return 0;
  }

  return Int64Ranged;
}

uint64_t APBrowserCreateDetailedModeEventInfoDictionary(const __CFAllocator *a1, const void *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned int a9, unsigned int a10, char a11, uint64_t a12, __CFDictionary **a13)
{
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(a1, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v19 = Mutable;
      CFDictionarySetValue(Mutable, @"deviceID", a2);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v20 = *MEMORY[0x277CBED28];
      v21 = *MEMORY[0x277CBED10];
      if (a5)
      {
        v22 = *MEMORY[0x277CBED28];
      }

      else
      {
        v22 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v19, @"isLegacyPresent", v22);
      if (a11)
      {
        v23 = v20;
      }

      else
      {
        v23 = v21;
      }

      CFDictionarySetValue(v19, @"isLocallyAdvertised", v23);
      if (a6)
      {
        v24 = v20;
      }

      else
      {
        v24 = v21;
      }

      CFDictionarySetValue(v19, @"isModernPresent", v24);
      if (a7)
      {
        v25 = v20;
      }

      else
      {
        v25 = v21;
      }

      CFDictionarySetValue(v19, @"isModernPresentOnInfra", v25);
      if (a8)
      {
        v26 = v20;
      }

      else
      {
        v26 = v21;
      }

      CFDictionarySetValue(v19, @"isPresentOnInfra", v26);
      CFDictionarySetInt64();
      FigCFDictionarySetValue();
      if (a9)
      {
        CFDictionarySetInt64();
      }

      result = 0;
      *a13 = v19;
    }

    else
    {
      APBrowserCreateDetailedModeEventInfoDictionary_cold_1();
      return 4294960568;
    }
  }

  else
  {
    APBrowserCreateDetailedModeEventInfoDictionary_cold_2();
    return 4294960591;
  }

  return result;
}

uint64_t browser_copyDeviceEventRecorder(const __CFDictionary *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    browser_copyDeviceEventRecorder_cold_2();
    return 4294960591;
  }

  if (!a2)
  {
    browser_copyDeviceEventRecorder_cold_1();
    return 4294960591;
  }

  Value = CFDictionaryGetValue(a1, @"eventRecorder");
  if (Value)
  {
    v7 = Value;
    CFRetain(Value);
    v8 = 0;
LABEL_7:
    v10 = 0;
    *a3 = v7;
    goto LABEL_8;
  }

  v8 = CFStringCreateWithFormat(0, 0, @"APBrowser-%@", a2);
  v9 = APSEventRecorderCreate();
  if (!v9)
  {
    CFDictionarySetValue(a1, @"eventRecorder", 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = v9;
  APSLogErrorAt();
LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

uint64_t APAdvertiserInfoFinalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t _APAdvertiserInfoAddStringToTXTRecord(const __CFString *a1, TXTRecordRef *a2, const char *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    _APAdvertiserInfoAddStringToTXTRecord_cold_4();
    return 4294960591;
  }

  if (!CFStringGetLength(a1))
  {
    _APAdvertiserInfoAddStringToTXTRecord_cold_3();
    return 4294960591;
  }

  buffer[0] = 0;
  if (CFStringGetCString(a1, buffer, 256, 0x8000100u))
  {
    v6 = strlen(buffer);
    v7 = TXTRecordSetValue(a2, a3, v6, buffer);
    v8 = v7;
    if (v7)
    {
      _APAdvertiserInfoAddStringToTXTRecord_cold_1(v7);
    }
  }

  else
  {
    _APAdvertiserInfoAddStringToTXTRecord_cold_2();
    return 4294960559;
  }

  return v8;
}

uint64_t APTransportDeviceCopyCUDNSNames(uint64_t a1)
{
  v7 = 0;
  v1 = *(a1 + 16);
  if (v1)
  {
    Int64 = CFDictionaryGetInt64();
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v3 || ((v4 = v3(v1, Int64, &v7), v4 != -6727) ? (v5 = v4 == 0) : (v5 = 1), !v5))
    {
      APSLogErrorAt();
    }
  }

  return v7;
}

uint64_t browser_CopyCUDNSNamesForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __browser_CopyCUDNSNamesForDeviceID_block_invoke;
  v9[3] = &unk_278BC80E0;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_23D2D0094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAdvertiserInfoCopyAirPlayDataWithNANServiceType(uint64_t a1, uint64_t a2, CFDataRef *a3)
{
  v4 = a2;
  v119 = *MEMORY[0x277D85DE8];
  v115 = 0;
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (a3)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged)
    {
      v7 = snprintf(__str, 0x100uLL, "%u", Int64Ranged);
      v8 = TXTRecordSetValue(&txtRecord, "act", v7, __str);
      v115 = v8;
      if (v8)
      {
        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_1(v8);
        goto LABEL_94;
      }
    }

    v9 = CFDictionaryGetInt64Ranged();
    v10 = snprintf(__str, 0x100uLL, "%u", v9);
    v11 = TXTRecordSetValue(&txtRecord, "acl", v10, __str);
    v115 = v11;
    if (v11)
    {
      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_2(v11);
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1 + 80), @"bluetoothAddress");
      cf = Value;
      if (Value)
      {
        if (CFStringGetLength(Value))
        {
          v13 = _APAdvertiserInfoAddStringToTXTRecord(cf, &txtRecord, "btaddr");
          v115 = v13;
          if (v13)
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_3(v13);
            goto LABEL_94;
          }
        }
      }

      v14 = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
      v15 = _APAdvertiserInfoAddStringToTXTRecord(v14, &txtRecord, "deviceid");
      v115 = v15;
      if (v15)
      {
        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_4(v15);
      }

      else if (!v4 && (CFStringGetTypeID(), v92 = CFDictionaryGetTypedValue(), (cft = v92) != 0) && CFStringGetLength(v92) && (v93 = _APAdvertiserInfoAddStringToTXTRecord(cft, &txtRecord, "cid"), (v115 = v93) != 0))
      {
        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_5(v93);
      }

      else
      {
        CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        cfa = TypedValue;
        if (TypedValue)
        {
          if (CFStringGetLength(TypedValue))
          {
            v17 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "c");
            v115 = v17;
            if (v17)
            {
              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_6(v17);
              goto LABEL_94;
            }
          }
        }

        if (CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
        {
          v18 = APSFeaturesCopyStringRepresentation();
          v115 = v18;
          if (v18)
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_7(v18);
            goto LABEL_94;
          }

          v115 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "fex");
          CFRelease(cfa);
          if (v115)
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_8(v115);
            goto LABEL_94;
          }

          LegacyFlags = APSFeaturesGetLegacyFlags();
          TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, __str);
          v21 = TXTRecordSetValue(&txtRecord, "features", TXTRecordNumberCString, __str);
          v115 = v21;
          if (v21)
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_9(v21);
            goto LABEL_94;
          }
        }

        Int64 = CFDictionaryGetInt64();
        if (Int64 && (v23 = _APAdvertiserInfoGetTXTRecordNumberCString(Int64, __str), v24 = TXTRecordSetValue(&txtRecord, "rsf", v23, __str), (v115 = v24) != 0))
        {
          APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_10(v24);
        }

        else
        {
          v25 = CFDictionaryGetValue(*(a1 + 80), @"firmwareVersion");
          cfb = v25;
          if (v25)
          {
            if (CFStringGetLength(v25))
            {
              v26 = _APAdvertiserInfoAddStringToTXTRecord(cfb, &txtRecord, "fv");
              v115 = v26;
              if (v26)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_11(v26);
                goto LABEL_94;
              }
            }
          }

          v27 = CFDictionaryGetInt64Ranged();
          if (v27 && (v28 = snprintf(__str, 0x100uLL, "0x%x", v27), v29 = TXTRecordSetValue(&txtRecord, "flags", v28, __str), (v115 = v29) != 0))
          {
            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_12(v29);
          }

          else
          {
            v30 = CFDictionaryGetValue(*(a1 + 80), @"groupID");
            cfc = v30;
            if (v30 && CFStringGetLength(v30))
            {
              v31 = _APAdvertiserInfoAddStringToTXTRecord(cfc, &txtRecord, "gid");
              v115 = v31;
              if (v31)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_13(v31);
                goto LABEL_94;
              }

              v32 = CFDictionaryGetInt64();
              v33 = snprintf(__str, 0x100uLL, "%u", v32 != 0);
              v34 = TXTRecordSetValue(&txtRecord, "igl", v33, __str);
              v115 = v34;
              if (v34)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_14(v34);
                goto LABEL_94;
              }

              v35 = CFDictionaryGetInt64();
              v36 = snprintf(__str, 0x100uLL, "%u", v35 != 0);
              v37 = TXTRecordSetValue(&txtRecord, "gcgl", v36, __str);
              v115 = v37;
              if (v37)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_15(v37);
                goto LABEL_94;
              }

              v38 = CFDictionaryGetValue(*(a1 + 80), @"groupPublicName");
              cfd = v38;
              if (v38)
              {
                if (CFStringGetLength(v38))
                {
                  v39 = _APAdvertiserInfoAddStringToTXTRecord(cfd, &txtRecord, "gpn");
                  v115 = v39;
                  if (v39)
                  {
                    APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_16(v39);
                    goto LABEL_94;
                  }
                }
              }
            }

            if (v4 >= 2)
            {
              TXTString = APSNANServiceTypeGetTXTString();
              if (!TXTString)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_40();
                goto LABEL_94;
              }

              v41 = _APAdvertiserInfoAddStringToTXTRecord(TXTString, &txtRecord, "nanST");
              v115 = v41;
              if (v41)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_17(v41);
                goto LABEL_94;
              }
            }

            v42 = CFDictionaryGetInt64Ranged();
            if (!v115)
            {
              v43 = snprintf(__str, 0x100uLL, "%u", v42);
              v44 = TXTRecordSetValue(&txtRecord, "psgsz", v43, __str);
              v115 = v44;
              if (v44)
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_18(v44);
                goto LABEL_94;
              }
            }

            v45 = CFDictionaryGetInt64Ranged();
            v46 = snprintf(__str, 0x100uLL, "%u", v45);
            v47 = TXTRecordSetValue(&txtRecord, "psgtp", v46, __str);
            v115 = v47;
            if (v47)
            {
              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_19(v47);
              goto LABEL_94;
            }

            v115 = 0;
            v48 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupUUID");
            cfe = v48;
            if (v48 && CFStringGetLength(v48) && (v49 = _APAdvertiserInfoAddStringToTXTRecord(cfe, &txtRecord, "psgid"), (v115 = v49) != 0))
            {
              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_20(v49);
            }

            else
            {
              v50 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupModel");
              cff = v50;
              if (v50 && CFStringGetLength(v50) && (v51 = _APAdvertiserInfoAddStringToTXTRecord(cff, &txtRecord, "pgm"), (v115 = v51) != 0))
              {
                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_21(v51);
              }

              else
              {
                v52 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupMemberID");
                cfg = v52;
                if (v52 && CFStringGetLength(v52) && (v53 = _APAdvertiserInfoAddStringToTXTRecord(cfg, &txtRecord, "pgmid"), (v115 = v53) != 0))
                {
                  APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_22(v53);
                }

                else
                {
                  v54 = CFDictionaryGetValue(*(a1 + 80), @"parentGroupID");
                  cfh = v54;
                  if (v54 && CFStringGetLength(v54))
                  {
                    v55 = _APAdvertiserInfoAddStringToTXTRecord(cfh, &txtRecord, "pgid");
                    v115 = v55;
                    if (v55)
                    {
                      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_23(v55);
                      goto LABEL_94;
                    }

                    v56 = CFDictionaryGetInt64();
                    v57 = snprintf(__str, 0x100uLL, "%u", v56 != 0);
                    v58 = TXTRecordSetValue(&txtRecord, "pgcgl", v57, __str);
                    v115 = v58;
                    if (v58)
                    {
                      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_24(v58);
                      goto LABEL_94;
                    }
                  }

                  v59 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncUUID");
                  cfi = v59;
                  if (v59 && CFStringGetLength(v59) && (v60 = _APAdvertiserInfoAddStringToTXTRecord(cfi, &txtRecord, "tsid"), (v115 = v60) != 0))
                  {
                    APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_25(v60);
                  }

                  else
                  {
                    v61 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncGroupModel");
                    cfj = v61;
                    if (v61 && CFStringGetLength(v61) && (v62 = _APAdvertiserInfoAddStringToTXTRecord(cfj, &txtRecord, "tsm"), (v115 = v62) != 0))
                    {
                      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_26(v62);
                    }

                    else
                    {
                      v63 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel");
                      cfk = v63;
                      if (v63 && CFStringGetLength(v63) && (v64 = _APAdvertiserInfoAddStringToTXTRecord(cfk, &txtRecord, "model"), (v115 = v64) != 0))
                      {
                        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_27(v64);
                      }

                      else
                      {
                        v65 = CFDictionaryGetValue(*(a1 + 80), @"manufacturer");
                        cfl = v65;
                        if (v65 && CFStringGetLength(v65) && (v66 = _APAdvertiserInfoAddStringToTXTRecord(cfl, &txtRecord, "manufacturer"), (v115 = v66) != 0))
                        {
                          APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_28(v66);
                        }

                        else
                        {
                          v67 = CFDictionaryGetValue(*(a1 + 80), @"serialNumber");
                          cfm = v67;
                          if (v67 && CFStringGetLength(v67) && (v68 = _APAdvertiserInfoAddStringToTXTRecord(cfm, &txtRecord, "serialNumber"), (v115 = v68) != 0))
                          {
                            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_29(v68);
                          }

                          else
                          {
                            v69 = CFDictionaryGetInt64Ranged();
                            if (!v115 && (v70 = snprintf(__str, 0x100uLL, "%u", v69), v71 = TXTRecordSetValue(&txtRecord, "at", v70, __str), (v115 = v71) != 0))
                            {
                              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_30(v71);
                            }

                            else
                            {
                              v115 = 0;
                              if (CFDictionaryGetInt64() && (v72 = TXTRecordSetValue(&txtRecord, "pw", 1u, "1"), (v115 = v72) != 0))
                              {
                                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_31(v72);
                              }

                              else
                              {
                                v73 = CFDictionaryGetValue(*(a1 + 80), @"protocolVersion");
                                cfn = v73;
                                if (v73 && CFStringGetLength(v73) && (v74 = _APAdvertiserInfoAddStringToTXTRecord(cfn, &txtRecord, "protovers"), (v115 = v74) != 0))
                                {
                                  APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_32(v74);
                                }

                                else
                                {
                                  v75 = CFDictionaryGetValue(*(a1 + 80), @"publicCUAirPlayPairingIdentity");
                                  cfo = v75;
                                  if (v75 && CFStringGetLength(v75) && (v76 = _APAdvertiserInfoAddStringToTXTRecord(cfo, &txtRecord, "pi"), (v115 = v76) != 0))
                                  {
                                    APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_33(v76);
                                  }

                                  else
                                  {
                                    v77 = CFDictionaryGetValue(*(a1 + 80), @"publicCUSystemPairingIdentity");
                                    cfp = v77;
                                    if (v77 && CFStringGetLength(v77) && (v78 = _APAdvertiserInfoAddStringToTXTRecord(cfp, &txtRecord, "psi"), (v115 = v78) != 0))
                                    {
                                      APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_34(v78);
                                    }

                                    else
                                    {
                                      v79 = CFDictionaryGetValue(*(a1 + 80), @"publicKey");
                                      cfq = v79;
                                      if (v79 && CFStringGetLength(v79) && (v80 = _APAdvertiserInfoAddStringToTXTRecord(cfq, &txtRecord, "pk"), (v115 = v80) != 0))
                                      {
                                        APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_35(v80);
                                      }

                                      else
                                      {
                                        v81 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
                                        cfr = v81;
                                        if (v81 && CFStringGetLength(v81) && (v82 = _APAdvertiserInfoAddStringToTXTRecord(cfr, &txtRecord, "srcvers"), (v115 = v82) != 0))
                                        {
                                          APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_36(v82);
                                        }

                                        else
                                        {
                                          v83 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
                                          cfs = v83;
                                          if (v83 && CFStringGetLength(v83) && (v84 = _APAdvertiserInfoAddStringToTXTRecord(cfs, &txtRecord, "osvers"), (v115 = v84) != 0))
                                          {
                                            APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_37(v84);
                                          }

                                          else
                                          {
                                            v85 = CFDictionaryGetInt64Ranged();
                                            if (v85 && (v86 = snprintf(__str, 0x100uLL, "%u", v85), v87 = TXTRecordSetValue(&txtRecord, "vv", v86, __str), (v115 = v87) != 0))
                                            {
                                              APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_38(v87);
                                            }

                                            else
                                            {
                                              BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
                                              Length = TXTRecordGetLength(&txtRecord);
                                              v90 = CFDataCreate(0, BytesPtr, Length);
                                              if (v90)
                                              {
                                                *a3 = v90;
                                              }

                                              else
                                              {
                                                APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_39();
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
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
    APAdvertiserInfoCopyAirPlayDataWithNANServiceType_cold_41();
  }

LABEL_94:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v115;
}

uint64_t _APAdvertiserInfoGetTXTRecordNumberCString(unint64_t a1, char *__str)
{
  if (HIDWORD(a1))
  {
    return snprintf(__str, 0x100uLL, "0x%X,0x%X");
  }

  else
  {
    return snprintf(__str, 0x100uLL, "0x%X");
  }
}

uint64_t _APAdvertiserInfoAddAirPlayData(uint64_t a1, uint64_t a2)
{
  value = 0;
  v47 = 0;
  cf[0] = 0;
  cf[1] = 0;
  Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (Int64FromTXTRecord != -6727)
  {
    v5 = Int64FromTXTRecord;
    if (Int64FromTXTRecord)
    {
      goto LABEL_178;
    }

    CFDictionarySetInt64();
  }

  v6 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v6 != -6727)
  {
    v5 = v6;
    if (v6)
    {
      goto LABEL_178;
    }

    CFDictionarySetInt64();
  }

  v7 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v7 != -6727)
  {
    v5 = v7;
    if (v7)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"bluetoothAddress", value);
  }

  if (APSTXTRecordUtilsCopyCFStringFromTXTRecord())
  {
    _APAdvertiserInfoAddAirPlayData_cold_1();
    v5 = v49;
    goto LABEL_179;
  }

  CFDictionarySetValue(*(a1 + 80), @"deviceID", value);
  v8 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v8 != -6727)
  {
    v5 = v8;
    if (v8)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"correlationID", value);
  }

  APSFeaturesFromTXTRecord = APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(a2, @"fex", @"features", cf);
  if (APSFeaturesFromTXTRecord != -6727)
  {
    v5 = APSFeaturesFromTXTRecord;
    if (APSFeaturesFromTXTRecord)
    {
      goto LABEL_178;
    }

    v10 = cf[0];
    _APAdvertiserInfoSetFeaturesEx(*(a1 + 80), cf[0]);
    if (v10)
    {
      CFRelease(v10);
      cf[0] = 0;
    }
  }

  v11 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v11 != -6727)
  {
    v5 = v11;
    if (v11)
    {
      goto LABEL_178;
    }

    CFDictionarySetInt64();
  }

  v12 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v12 != -6727)
  {
    v5 = v12;
    if (v12)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"firmwareVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v13 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v13 != -6727)
  {
    v5 = v13;
    if (v13)
    {
      goto LABEL_178;
    }

    CFDictionarySetInt64();
  }

  BooleanFromTXTRecord = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (BooleanFromTXTRecord != -6727)
  {
    v5 = BooleanFromTXTRecord;
    if (BooleanFromTXTRecord)
    {
      goto LABEL_178;
    }

    v15 = MEMORY[0x277CBED28];
    if (!v47)
    {
      v15 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 80), @"groupContainsDiscoverableLeader", *v15);
  }

  v16 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v16 != -6727)
  {
    v5 = v16;
    if (v16)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"groupID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v17 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v17 != -6727)
  {
    v5 = v17;
    if (v17)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"groupPublicName", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v18 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (v18 != -6727)
  {
    v5 = v18;
    if (v18)
    {
      goto LABEL_178;
    }

    v19 = MEMORY[0x277CBED28];
    if (!v47)
    {
      v19 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 80), @"isGroupLeader", *v19);
  }

  v20 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v20 != -6727)
  {
    v5 = v20;
    if (v20)
    {
      goto LABEL_178;
    }

    CFDictionarySetInt64();
  }

  v21 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v21 != -6727)
  {
    v5 = v21;
    if (v21)
    {
      goto LABEL_178;
    }

    CFDictionarySetInt64();
  }

  v22 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v22 != -6727)
  {
    v5 = v22;
    if (v22)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"persistentGroupUUID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v23 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v23 != -6727)
  {
    v5 = v23;
    if (v23)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"persistentGroupModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v24 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v24 != -6727)
  {
    v5 = v24;
    if (v24)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"persistentGroupMemberID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v25 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (v25 != -6727)
  {
    v5 = v25;
    if (v25)
    {
      goto LABEL_178;
    }

    v26 = MEMORY[0x277CBED28];
    if (!v47)
    {
      v26 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 80), @"parentGroupContainsDiscoverableLeader", *v26);
  }

  v27 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v27 != -6727)
  {
    v5 = v27;
    if (v27)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"parentGroupID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v28 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v28 != -6727)
  {
    v5 = v28;
    if (v28)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"tightSyncUUID", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v29 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v29 != -6727)
  {
    v5 = v29;
    if (v29)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"tightSyncGroupModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v30 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v30 != -6727)
  {
    v5 = v30;
    if (v30)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"deviceModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v31 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v31 != -6727)
  {
    v5 = v31;
    if (v31)
    {
      goto LABEL_178;
    }

    if (APSIsValidDeviceEnclosureColorString())
    {
      CFDictionarySetValue(*(a1 + 80), @"deviceEnclosureColor", value);
    }

    else if (gLogCategory_APAdvertiserInfo <= 60 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
    {
      _APAdvertiserInfoAddAirPlayData_cold_2(&value);
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v32 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v32 != -6727)
  {
    v5 = v32;
    if (v32)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"manufacturer", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v33 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v33 != -6727)
  {
    v5 = v33;
    if (v33)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"company", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v34 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v34 != -6727)
  {
    v5 = v34;
    if (v34)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"serialNumber", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v35 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v35 != -6727)
  {
    v5 = v35;
    if (v35)
    {
      goto LABEL_178;
    }

    CFDictionarySetInt64();
  }

  v36 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (v36 != -6727)
  {
    v5 = v36;
    if (v36)
    {
      goto LABEL_178;
    }

    v37 = MEMORY[0x277CBED28];
    if (!v47)
    {
      v37 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 80), @"password", *v37);
  }

  v38 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v38 != -6727)
  {
    v5 = v38;
    if (v38)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"protocolVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v39 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v39 != -6727)
  {
    v5 = v39;
    if (v39)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"publicCUAirPlayPairingIdentity", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v40 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v40 != -6727)
  {
    v5 = v40;
    if (v40)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"publicCUSystemPairingIdentity", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v41 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v41 != -6727)
  {
    v5 = v41;
    if (v41)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"publicKey", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v42 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v42 != -6727)
  {
    v5 = v42;
    if (v42)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"airPlayVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v43 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v43 != -6727)
  {
    v5 = v43;
    if (v43)
    {
      goto LABEL_178;
    }

    CFDictionarySetValue(*(a1 + 80), @"OSVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v44 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v44 == -6727)
  {
    v5 = 0;
    goto LABEL_179;
  }

  v5 = v44;
  if (!v44)
  {
    CFDictionarySetInt64();
    goto LABEL_179;
  }

LABEL_178:
  APSLogErrorAt();
LABEL_179:
  if (value)
  {
    CFRelease(value);
  }

  return v5;
}

uint64_t APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  v10 = v6;
  if (v6 != -6727)
  {
    if (v6)
    {
      APSLogErrorAt();
      return v10;
    }

    v7 = APSFeaturesCreateFromStringRepresentation();
    goto LABEL_7;
  }

  if (a3)
  {
    Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
    v10 = Int64FromTXTRecord;
    if (Int64FromTXTRecord)
    {
      APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx_cold_1(Int64FromTXTRecord);
      return v10;
    }

    v7 = APSFeaturesCreateFromLegacyFlags();
    if (!v7)
    {
      APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx_cold_2();
      return v10;
    }

LABEL_7:
    *a4 = v7;
  }

  return v10;
}

uint64_t _APAdvertiserInfoSetFeaturesEx(CFMutableDictionaryRef theDict, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDataGetTypeID())
    {
      _APAdvertiserInfoSetFeaturesEx_cold_1();
      return 0;
    }

    CFDictionarySetValue(theDict, @"featuresEx", cf);
    APSFeaturesGetLegacyFlags();
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"featuresEx");
  }

  CFDictionarySetInt64();
  return 0;
}

uint64_t _APAdvertiserInfoCompare(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    if (a1 && a2)
    {
      v2 = *(a1 + 80);
      v3 = *(a2 + 80);

      return CFEqual(v2, v3);
    }

    else
    {
      _APAdvertiserInfoCompare_cold_2();
      return 0;
    }
  }

  else
  {
    _APAdvertiserInfoCompare_cold_1();
    return 1;
  }
}

uint64_t APBrowserRapportManager_sendDeviceEvent(void *a1, uint64_t a2)
{
  v2 = 4294895013;
  if (!a2)
  {
    v2 = 4294895015;
    v12 = 1266;
LABEL_13:
    APBrowserRapportManager_sendDeviceEvent_cold_1(v12, v2);
    return v2;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    v12 = 1269;
    goto LABEL_13;
  }

  v5 = TypedValue;
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  if (!(v6 | CFDictionaryGetTypedValue()))
  {
    v12 = 1273;
    goto LABEL_13;
  }

  CFNumberGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (!v7)
  {
    v12 = 1276;
    goto LABEL_13;
  }

  v8 = v7;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v2 = 4294895016;
    v12 = 1279;
    goto LABEL_13;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, @"rapportDeviceID", v5);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CFDictionarySetValue(v10, @"deviceRelationship", v8);
  APBrowserRapportManager_dispatchEvent(a1, 0, v10);
  CFRelease(v10);
  return 0;
}

void APBrowserRapportManager_dispatchEvent(void *cf, int a2, const void *a3)
{
  v3 = cf[7];
  if (v3 && !*(cf + 51))
  {
    v7 = cf[8];
    CFRetain(cf);
    if (a3)
    {
      CFRetain(a3);
    }

    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_0();
    v10 = __APBrowserRapportManager_dispatchEvent_block_invoke;
    v11 = &__block_descriptor_68_e5_v8__0l;
    v12 = v3;
    v13 = cf;
    v16 = a2;
    v14 = a3;
    v15 = v7;
    dispatch_async(v8, block);
  }
}

void browser_handleRapportEventExternal(uint64_t a1, int a2, const void *a3, const void *a4)
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
  block[2] = __browser_handleRapportEventExternal_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v10 = a2;
  block[4] = a4;
  block[5] = a3;
  dispatch_async(v8, block);
}

void __browser_handleRapportEventExternal_block_invoke(uint64_t a1)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v20 = *DerivedStorage;
      v21 = **v6;
      if (v21 > 40)
      {
        goto LABEL_53;
      }

      if (v21 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_53;
        }

        v20 = *v6;
      }

      LogPrintF(v20, "OSStatus browser_handleRapportEventInternal(APBrowserRef, APBrowserRapportEventType, CFDictionaryRef)", 33554472, "Rapport manager stopped browsing.\n");
      goto LABEL_53;
    }

    if (v2 != 4)
    {
      goto LABEL_22;
    }

    v14 = *DerivedStorage;
    v15 = **v6;
    if (v15 <= 40)
    {
      if (v15 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_36;
        }

        v14 = *v6;
      }

      LogPrintF(v14, "OSStatus browser_handleRapportEventInternal(APBrowserRef, APBrowserRapportEventType, CFDictionaryRef)", 33554472, "Rapport manager object is invalidated.\n");
    }

LABEL_36:
    CFRelease(v3);
    goto LABEL_53;
  }

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      LODWORD(v41[0]) = 0;
      v17 = CMBaseObjectGetDerivedStorage();
      v18 = *v17;
      v19 = **v17;
      if (v19 <= 20)
      {
        if (v19 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_40;
          }

          v18 = *v17;
        }

        LogPrintF(v18, "OSStatus browser_handleRapportRemoveEvent(APBrowserRef, CFStringRef)", 33554452, "Lost Rapport device %@.\n", TypedValue);
      }

LABEL_40:
      if (!TypedValue || (CFDictionaryGetTypeID(), v27 = CFDictionaryGetTypedValue(), Int64 = CFDictionaryGetInt64(), (Value = CFDictionaryGetValue(v27, @"rapportBonjourCorrelationID")) == 0))
      {
        APSLogErrorAt();
LABEL_66:
        APSLogErrorAt();
        goto LABEL_53;
      }

      v30 = Value;
      if (Int64 == 1)
      {
        v32 = CFRetain(Value);
        v33 = 160;
      }

      else
      {
        if (Int64)
        {
          LODWORD(v41[0]) = -6736;
          APSLogErrorAt();
          goto LABEL_52;
        }

        CFNumberGetTypeID();
        v31 = CFDictionaryGetTypedValue();
        if (v31)
        {
          v32 = CFRetain(v31);
        }

        else
        {
          v32 = 0;
        }

        CFDictionaryRemoveValue(*(v17 + 176), v30);
        v33 = 168;
      }

      CFDictionaryRemoveValue(*(v17 + v33), v30);
      CFDictionaryRemoveValue(*(v17 + 152), TypedValue);
      if (v32)
      {
        browser_updateEventInfoForDevice(v3, v32);
        CFRelease(v32);
      }

LABEL_52:
      if (!LODWORD(v41[0]))
      {
        goto LABEL_53;
      }

      goto LABEL_66;
    }

LABEL_22:
    v22 = *DerivedStorage;
    v23 = **v6;
    if (v23 > 60)
    {
      goto LABEL_53;
    }

    if (v23 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_53;
      }

      v22 = *v6;
    }

    LogPrintF(v22, "OSStatus browser_handleRapportEventInternal(APBrowserRef, APBrowserRapportEventType, CFDictionaryRef)", 33554492, "Unrecognized Rapport manager event %d.\n");
    goto LABEL_53;
  }

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  v8 = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (!v7)
  {
    __browser_handleRapportEventExternal_block_invoke_cold_7();
LABEL_59:
    v26 = 4294960591;
    goto LABEL_60;
  }

  if (!v4)
  {
    __browser_handleRapportEventExternal_block_invoke_cold_6();
    goto LABEL_59;
  }

  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!(v9 | v10))
  {
    __browser_handleRapportEventExternal_block_invoke_cold_5();
    goto LABEL_59;
  }

  if (v9)
  {
    CFNumberGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    if (!v11 || (v12 = CFRetain(v11), (key = v12) == 0))
    {
      v40[0] = @"rapportBonjourCorrelationType";
      v40[1] = @"rapportBonjourCorrelationID";
      v41[0] = &unk_284F652F0;
      v41[1] = v9;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      CFDictionarySetValue(*(v8 + 168), v9, v4);
      CFDictionarySetValue(*(v8 + 152), v7, v13);
      goto LABEL_53;
    }

LABEL_28:
    v38[0] = @"rapportBonjourCorrelationType";
    v38[1] = @"rapportBonjourCorrelationID";
    v39[0] = &unk_284F652D8;
    v39[1] = v12;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    CFDictionarySetValue(*(v8 + 160), key, v4);
    CFDictionarySetValue(*(v8 + 152), v7, v25);
    browser_updateEventInfoForDevice(v3, key);
    v26 = 0;
    goto LABEL_29;
  }

  if (!v10)
  {
    goto LABEL_53;
  }

  DeviceIDFromString = APBrowserCreateDeviceIDFromString(v10, &key);
  if (!DeviceIDFromString)
  {
    v12 = key;
    if (!key)
    {
      goto LABEL_53;
    }

    goto LABEL_28;
  }

  v26 = DeviceIDFromString;
  __browser_handleRapportEventExternal_block_invoke_cold_4(DeviceIDFromString);
LABEL_60:
  CFDictionaryRemoveValue(*(v8 + 152), v7);
  if (key)
  {
    CFDictionaryRemoveValue(*(v8 + 160), key);
  }

  else
  {
    v35 = *v8;
    v36 = **v8;
    if (v36 <= 90)
    {
      if (v36 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_29;
        }

        v35 = *v8;
      }

      LogPrintF(v35, "OSStatus browser_handleRapportAddOrUpdateEvent(APBrowserRef, CFStringRef, CFDictionaryRef)", 33554522, "Not able to remove rapport device info for %@\n", v7);
    }
  }

LABEL_29:
  if (key)
  {
    CFRelease(key);
  }

  if (v26)
  {
    __browser_handleRapportEventExternal_block_invoke_cold_8(v26);
  }

LABEL_53:
  CFRelease(*(a1 + 32));
  v34 = *(a1 + 40);
  if (v34)
  {
    CFRelease(v34);
  }
}

void _APBonjourBrowserHandleRAOPEvent(int a1, uint64_t a2, _WORD *a3)
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
          OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleRAOPEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", v5, "RAOP BonjourBrowser stopped.\n");
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
            LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleRAOPEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", (a1 + 20), "RAOP BonjourBrowser restarted.\n");
          }
        }

        if (_APBonjourBrowserHandleRestartedEvent(a3, @"RAOP"))
        {
          goto LABEL_28;
        }

        break;
      default:
        if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleRAOPEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", 33554522, "Unrecognized RAOP event %d\n", a1);
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

uint64_t browser_handleBonjourAddOrUpdate(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  v8 = 0;
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a2)
    {
      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      v8 = 0;
      if (TypedValue && CFArrayGetCount(TypedValue))
      {
        browser_handleBonjourAddOrUpdate_cold_1(a1, a2, a3, &v8);
      }

      else
      {
        browser_handleBonjourAddOrUpdate_cold_2(a1, a2, a3, &v8);
      }
    }

    else
    {
      browser_handleBonjourAddOrUpdate_cold_3();
    }
  }

  else
  {
    browser_handleBonjourAddOrUpdate_cold_4();
  }

  return v8;
}

uint64_t browser_handleBonjourAddOrUpdate_cold_2(const void *a1, __CFString *a2, const __CFDictionary *a3, _DWORD *a4)
{
  result = browser_addOrUpdateService(a1, a2, a3, 0);
  *a4 = result;
  if (result)
  {
    return APSLogErrorAt();
  }

  return result;
}

uint64_t _APBonjourBrowserHandleDeviceEvent(const void *a1, unsigned int a2, const __CFDictionary *a3, const void *a4)
{
  EventInfoDictionary = 0;
  v19 = 0;
  DeviceID = BonjourDevice_GetDeviceID();
  Value = CFDictionaryGetValue(a3, @"name");
  if (!Value)
  {
    _APBonjourBrowserHandleDeviceEvent_cold_3(&EventInfoDictionary);
    return EventInfoDictionary;
  }

  v10 = gLogCategory_APBonjourBrowser;
  if (gLogCategory_APBonjourBrowser <= 20)
  {
    v11 = Value;
    if (gLogCategory_APBonjourBrowser != -1)
    {
LABEL_4:
      if (a2 == 1)
      {
        v12 = @"Remove";
      }

      else
      {
        v12 = @"Add/update";
      }

      if (v10 > 10)
      {
        v13 = 0;
      }

      else
      {
        v13 = v10 != -1 || _LogCategory_Initialize() != 0;
      }

      LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserHandleDeviceEvent(APBonjourBrowserRef, APBonjourBrowserEventType, CFDictionaryRef, CFStringRef)", 33554452, "[%{ptr}] %@ %@ event for device id: %llu name: %@ serviceType: %@ %?@\n", a1, v12, a4, DeviceID, v11, a4, v13, a3);
      goto LABEL_15;
    }

    if (_LogCategory_Initialize())
    {
      v10 = gLogCategory_APBonjourBrowser;
      goto LABEL_4;
    }
  }

LABEL_15:
  v14 = CFDictionaryGetValue(a3, @"txt");
  if (gLogCategory_APBonjourBrowser <= 10)
  {
    v15 = v14;
    if (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize())
    {
      _APBonjourBrowserHandleDeviceEvent_cold_2(v15);
    }
  }

  v16 = CFGetAllocator(a1);
  EventInfoDictionary = _APBonjourBrowserCreateEventInfoDictionary(v16, a3, a4, &v19);
  if (EventInfoDictionary)
  {
    APSLogErrorAt();
    v17 = v19;
    if (!v19)
    {
      return EventInfoDictionary;
    }

    goto LABEL_20;
  }

  v17 = v19;
  _APBonjourBrowserDispatchEvent(a1, a2, v19);
  EventInfoDictionary = 0;
  if (v17)
  {
LABEL_20:
    CFRelease(v17);
  }

  return EventInfoDictionary;
}

uint64_t _APBonjourBrowserDispatchEvent(uint64_t cf, unsigned int a2, const void *a3)
{
  if (*(cf + 216) && !*(cf + 211))
  {
    CFRetain(cf);
    if (a3)
    {
      CFRetain(a3);
    }

    return APSDispatchAsyncFHelper();
  }

  return cf;
}

void _APBonjourBrowserHandleAirPlayEvent(void *MutableCopy, CFDictionaryRef theDict, uint64_t a3)
{
  if (a3)
  {
    if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser)))
    {
      if ((MutableCopy - 1) >= 3)
      {
        v6 = "UNKNOWN";
        if (MutableCopy == 4)
        {
          v6 = "Restarted";
        }
      }

      else
      {
        v6 = off_278BC76D8[MutableCopy - 1];
      }

      v17 = v6;
      v18 = MutableCopy;
      OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", a3, "[%{ptr}] Got event %s (%d)");
    }

    switch(MutableCopy)
    {
      case 1:
        if (!*(a3 + 40))
        {
          return;
        }

        if (theDict && *(a3 + 232))
        {
          v7 = CFDictionaryCreateMutableCopy(0, 0, theDict);
          if (v7)
          {
            [*(a3 + 232) deviceFound:v7];
            theDict = v7;
          }
        }

        else
        {
          v7 = 0;
        }

        v13 = OUTLINED_FUNCTION_18();
        if (_APBonjourBrowserHandleDeviceEvent(v13, v14, theDict, v15))
        {
          APSLogErrorAt();
          if (v7)
          {
            goto LABEL_35;
          }
        }

        else if (v7)
        {
LABEL_35:
          v16 = v7;
          goto LABEL_39;
        }

        break;
      case 2:
        if (*(a3 + 40))
        {
          if (!theDict || (v9 = *(a3 + 232)) == 0 || ([v9 deviceLost:theDict] & 1) == 0)
          {
            v10 = OUTLINED_FUNCTION_19();
            if (_APBonjourBrowserHandleDeviceEvent(v10, v11, theDict, v12))
            {
              goto LABEL_47;
            }
          }
        }

        return;
      case 3:
        if (gLogCategory_APBonjourBrowser <= 40)
        {
          OUTLINED_FUNCTION_15_0();
          if (!v8 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", (theDict + 10), "%@ BonjourBrowser stopped.\n", *(a3 + 80), v17, v18);
          }
        }

        if (_APBonjourBrowserHandleStopEvent(a3))
        {
          goto LABEL_47;
        }

        v16 = a3;
LABEL_39:

        CFRelease(v16);
        return;
      case 4:
        if (gLogCategory_APBonjourBrowser <= 60)
        {
          OUTLINED_FUNCTION_15_0();
          if (!v8 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", (theDict + 30), "%@ BonjourBrowser restarted.\n", *(a3 + 80), v17, v18);
          }
        }

        if (_APBonjourBrowserHandleRestartedEvent(a3, *(a3 + 80)))
        {
          goto LABEL_47;
        }

        return;
      default:
        if (gLogCategory_APBonjourBrowser <= 90)
        {
          OUTLINED_FUNCTION_15_0();
          if (!v8 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserHandleAirPlayEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", (theDict + 60), "Unrecognized %@ event %d\n", *(a3 + 80), MutableCopy, v18);
          }
        }

        return;
    }
  }

  else
  {
LABEL_47:

    APSLogErrorAt();
  }
}

uint64_t _APBonjourBrowserCreateEventInfoDictionary(const __CFAllocator *a1, const void *a2, const void *a3, __CFDictionary **a4)
{
  Mutable = CFDictionaryCreateMutable(a1, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"deviceInfo", a2);
    }

    CFDictionarySetValue(v8, @"serviceType", a3);
    result = 0;
    *a4 = v8;
  }

  else
  {
    _APBonjourBrowserCreateEventInfoDictionary_cold_1();
    return 4294895086;
  }

  return result;
}

void _APBonjourBrowserDispatchEventCallback(uint64_t a1)
{
  (*(a1 + 24))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *a1;

  CFRelease(v3);
}

void browser_handleBonjourEvent(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        v8 = *DerivedStorage;
        v9 = **v5;
        if (v9 > 60)
        {
          goto LABEL_29;
        }

        if (v9 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_29;
          }

          v8 = *v5;
        }

        LogPrintF(v8, "void browser_handleBonjourEvent(void *)", 33554492, "Bonjour browser event is not handled yet.\n");
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    v10 = *DerivedStorage;
    v11 = **v5;
    if (v11 <= 40)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }

        v10 = *v5;
      }

      LogPrintF(v10, "void browser_handleBonjourEvent(void *)", 33554472, "Bonjour browser invalidated.\n");
    }

LABEL_28:
    CFRelease(v1);
    goto LABEL_29;
  }

  if (!v2)
  {
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"serviceType");
      if (Value)
      {
        v13 = Value;
        v14 = CFDictionaryGetValue(v3, @"deviceInfo");
        if (v14)
        {
          v15 = browser_handleBonjourAddOrUpdate(v1, v13, v14);
          if (v15)
          {
            browser_handleBonjourEvent_cold_4(v15);
          }
        }

        else
        {
          browser_handleBonjourEvent_cold_5();
        }
      }

      else
      {
        browser_handleBonjourEvent_cold_6();
      }

      goto LABEL_20;
    }

    v21 = 3638;
LABEL_42:
    browser_handleBonjourEvent_cold_7(v21, v1);
    return;
  }

  if (v2 == 2)
  {
    v6 = *DerivedStorage;
    v7 = **v5;
    if (v7 > 40)
    {
      goto LABEL_29;
    }

    if (v7 != -1)
    {
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *v5;
LABEL_6:
      LogPrintF(v6, "void browser_handleBonjourEvent(void *)", 33554472, "Bonjour browser stopped browsing.\n");
    }

LABEL_29:
    CFRelease(v1);
    if (!v3)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v2 != 1)
  {
LABEL_22:
    v16 = *DerivedStorage;
    v17 = **v5;
    if (v17 > 60)
    {
      goto LABEL_29;
    }

    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      v16 = *v5;
    }

    LogPrintF(v16, "void browser_handleBonjourEvent(void *)", 33554492, "Unrecognized bonjour browser event %d.\n");
    goto LABEL_29;
  }

  if (!v3)
  {
    v21 = 3650;
    goto LABEL_42;
  }

  v18 = CFDictionaryGetValue(v3, @"serviceType");
  if (v18)
  {
    v19 = v18;
    v20 = CFDictionaryGetValue(v3, @"deviceInfo");
    if (v20)
    {
      browser_handleBonjourEvent_cold_1(v1, v19, v20);
    }

    else
    {
      browser_handleBonjourEvent_cold_2();
    }
  }

  else
  {
    browser_handleBonjourEvent_cold_3();
  }

LABEL_20:
  CFRelease(v1);
LABEL_30:

  CFRelease(v3);
}

uint64_t browser_handleBonjourEventExternal(uint64_t a1, unsigned int a2, const void *a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  if (a3)
  {
    CFRetain(a3);
  }

  return APSDispatchAsyncFHelper();
}

uint64_t APAdvertiserInfoCopyClusterCompatibleAirPlayData(uint64_t a1, int a2, CFDataRef *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v79 = 0;
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a3)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_30();
    goto LABEL_66;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v7 = snprintf(__str, 0x100uLL, "%u", Int64Ranged);
  v8 = TXTRecordSetValue(&txtRecord, "acl", v7, __str);
  v79 = v8;
  if (v8)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_1(v8);
    goto LABEL_66;
  }

  if (CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
  {
    MutableCopy = APSFeaturesCreateMutableCopy();
    if (!MutableCopy)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_5();
      goto LABEL_66;
    }

    v10 = MutableCopy;
    if (a2 == 2)
    {
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
    }

    v11 = APSFeaturesCopyStringRepresentation();
    v79 = v11;
    if (v11)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_2(v11);
      goto LABEL_65;
    }

    v79 = _APAdvertiserInfoAddStringToTXTRecord(0, &txtRecord, "fex");
    CFRelease(0);
    if (v79)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_3(v79);
      goto LABEL_65;
    }

    LegacyFlags = APSFeaturesGetLegacyFlags();
    TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, __str);
    v14 = TXTRecordSetValue(&txtRecord, "features", TXTRecordNumberCString, __str);
    v79 = v14;
    if (v14)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_4(v14);
LABEL_65:
      CFRelease(v10);
      goto LABEL_66;
    }
  }

  else
  {
    v10 = 0;
  }

  Int64 = CFDictionaryGetInt64();
  if (Int64)
  {
    v16 = _APAdvertiserInfoGetTXTRecordNumberCString(Int64, __str);
    v17 = TXTRecordSetValue(&txtRecord, "rsf", v16, __str);
    v79 = v17;
    if (v17)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_6(v17);
      goto LABEL_64;
    }
  }

  v18 = CFDictionaryGetInt64Ranged();
  if (CFDictionaryGetValue(*(a1 + 80), @"tightSyncUUID") && !CFDictionaryGetValue(*(a1 + 80), @"persistentGroupUUID"))
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = -8969;
  }

  v20 = v19 & v18;
  if (v20)
  {
    v21 = snprintf(__str, 0x100uLL, "0x%x", v20);
    v22 = TXTRecordSetValue(&txtRecord, "flags", v21, __str);
    v79 = v22;
    if (v22)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_7(v22);
      goto LABEL_64;
    }
  }

  v23 = *(a1 + 80);
  if (a2 == 1)
  {
    Value = CFDictionaryGetValue(v23, @"tightSyncUUID");
    cf = Value;
    if (!Value || !CFStringGetLength(Value))
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_29();
      goto LABEL_64;
    }

    v25 = _APAdvertiserInfoAddStringToTXTRecord(cf, &txtRecord, "tsid");
    v79 = v25;
    if (v25)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_15(v25);
      goto LABEL_64;
    }

    v26 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncGroupModel");
    cfa = v26;
    if (v26)
    {
      if (CFStringGetLength(v26))
      {
        v27 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "tsm");
        v79 = v27;
        if (v27)
        {
          APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_16(v27);
          goto LABEL_64;
        }
      }
    }
  }

  else
  {
    v28 = CFDictionaryGetValue(v23, @"persistentGroupUUID");
    cfb = v28;
    if (!v28 || !CFStringGetLength(v28))
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_14();
      goto LABEL_64;
    }

    v29 = _APAdvertiserInfoAddStringToTXTRecord(cfb, &txtRecord, "psgid");
    v79 = v29;
    if (v29)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_8(v29);
      goto LABEL_64;
    }

    v30 = CFDictionaryGetInt64Ranged();
    v31 = snprintf(__str, 0x100uLL, "%u", v30);
    v32 = TXTRecordSetValue(&txtRecord, "psgsz", v31, __str);
    v79 = v32;
    if (v32)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_10(v32);
      goto LABEL_64;
    }

    v33 = CFDictionaryGetInt64Ranged();
    v34 = snprintf(__str, 0x100uLL, "%u", v33);
    v35 = TXTRecordSetValue(&txtRecord, "psgtp", v34, __str);
    v79 = v35;
    if (v35)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_12(v35);
      goto LABEL_64;
    }

    v36 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupModel");
    cfc = v36;
    if (v36)
    {
      if (CFStringGetLength(v36))
      {
        v37 = _APAdvertiserInfoAddStringToTXTRecord(cfc, &txtRecord, "pgm");
        v79 = v37;
        if (v37)
        {
          APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_13(v37);
          goto LABEL_64;
        }
      }
    }
  }

  v38 = CFDictionaryGetValue(*(a1 + 80), @"groupID");
  cfd = v38;
  if (!v38 || !CFStringGetLength(v38))
  {
    goto LABEL_44;
  }

  v39 = _APAdvertiserInfoAddStringToTXTRecord(cfd, &txtRecord, "gid");
  v79 = v39;
  if (v39)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_17(v39);
    goto LABEL_64;
  }

  v40 = CFDictionaryGetInt64();
  v41 = snprintf(__str, 0x100uLL, "%u", v40 != 0);
  v42 = TXTRecordSetValue(&txtRecord, "igl", v41, __str);
  v79 = v42;
  if (v42)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_18(v42);
    goto LABEL_64;
  }

  v43 = CFDictionaryGetInt64();
  v44 = snprintf(__str, 0x100uLL, "%u", v43 != 0);
  v45 = TXTRecordSetValue(&txtRecord, "gcgl", v44, __str);
  v79 = v45;
  if (v45)
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_19(v45);
    goto LABEL_64;
  }

  v46 = CFDictionaryGetValue(*(a1 + 80), @"groupPublicName");
  cfe = v46;
  if (v46 && CFStringGetLength(v46) && (v47 = _APAdvertiserInfoAddStringToTXTRecord(cfe, &txtRecord, "gpn"), (v79 = v47) != 0))
  {
    APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_20(v47);
  }

  else
  {
LABEL_44:
    v48 = CFDictionaryGetValue(*(a1 + 80), @"parentGroupID");
    cff = v48;
    if (!v48 || !CFStringGetLength(v48))
    {
      goto LABEL_48;
    }

    v49 = _APAdvertiserInfoAddStringToTXTRecord(cff, &txtRecord, "pgid");
    v79 = v49;
    if (v49)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_21(v49);
      goto LABEL_64;
    }

    v50 = CFDictionaryGetInt64();
    v51 = snprintf(__str, 0x100uLL, "%u", v50 != 0);
    v52 = TXTRecordSetValue(&txtRecord, "pgcgl", v51, __str);
    v79 = v52;
    if (v52)
    {
      APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_22(v52);
    }

    else
    {
LABEL_48:
      v53 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel");
      cfg = v53;
      if (v53 && CFStringGetLength(v53) && (v54 = _APAdvertiserInfoAddStringToTXTRecord(cfg, &txtRecord, "model"), (v79 = v54) != 0))
      {
        APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_23(v54);
      }

      else
      {
        v55 = CFDictionaryGetValue(*(a1 + 80), @"protocolVersion");
        cfh = v55;
        if (v55 && CFStringGetLength(v55) && (v56 = _APAdvertiserInfoAddStringToTXTRecord(cfh, &txtRecord, "protovers"), (v79 = v56) != 0))
        {
          APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_24(v56);
        }

        else
        {
          v57 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
          cfi = v57;
          if (v57 && CFStringGetLength(v57) && (v58 = _APAdvertiserInfoAddStringToTXTRecord(cfi, &txtRecord, "srcvers"), (v79 = v58) != 0))
          {
            APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_25(v58);
          }

          else
          {
            v59 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
            cfj = v59;
            if (v59 && CFStringGetLength(v59) && (v60 = _APAdvertiserInfoAddStringToTXTRecord(cfj, &txtRecord, "osvers"), (v79 = v60) != 0))
            {
              APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_26(v60);
            }

            else
            {
              v61 = CFDictionaryGetInt64Ranged();
              if (v61 && (v62 = snprintf(__str, 0x100uLL, "%u", v61), v63 = TXTRecordSetValue(&txtRecord, "vv", v62, __str), (v79 = v63) != 0))
              {
                APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_27(v63);
              }

              else
              {
                BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
                Length = TXTRecordGetLength(&txtRecord);
                v66 = CFDataCreate(0, BytesPtr, Length);
                if (v66)
                {
                  *a3 = v66;
                }

                else
                {
                  APAdvertiserInfoCopyClusterCompatibleAirPlayData_cold_28();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_64:
  if (v10)
  {
    goto LABEL_65;
  }

LABEL_66:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v79;
}

uint64_t APTPackageRTPBufferedCreateWithBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  memset(dataLength, 0, sizeof(dataLength));
  blockBufferOut = 0;
  APTransportPackageGetClassID(a1, a2);
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v13 = v6;
    APTPackageRTPBufferedCreateWithBBuf_cold_1(v6);
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = APTransportParcelMake(3uLL, 0, DerivedStorage);
  if (v8)
  {
    v13 = v8;
    APTPackageRTPBufferedCreateWithBBuf_cold_2(v8);
    goto LABEL_17;
  }

  if (a2)
  {
    v9 = CMBlockBufferGetDataLength(a2);
    if (v9 <= 2)
    {
      v13 = 4294894936;
      APTPackageRTPBufferedCreateWithBBuf_cold_8();
      goto LABEL_17;
    }

    v10 = v9;
    PayloadSize = APTPackageRTPBufferedGetPayloadSize(a2, dataLength);
    if (PayloadSize)
    {
      v13 = PayloadSize;
      APTPackageRTPBufferedCreateWithBBuf_cold_3(PayloadSize);
      goto LABEL_17;
    }

    if (v10 != dataLength[0] + 3)
    {
      v13 = 4294894936;
      APTPackageRTPBufferedCreateWithBBuf_cold_4();
      goto LABEL_17;
    }

    if (dataLength[0])
    {
      v12 = CMBlockBufferCreateWithBufferReference(a1, a2, 3uLL, dataLength[0], 0, &blockBufferOut);
      if (v12)
      {
        v13 = v12;
        APTPackageRTPBufferedCreateWithBBuf_cold_5(v12);
        goto LABEL_17;
      }
    }

    else
    {
      v14 = CMBlockBufferCreateEmpty(a1, 0, 0, &blockBufferOut);
      if (v14)
      {
        v13 = v14;
        APTPackageRTPBufferedCreateWithBBuf_cold_6(v14);
        goto LABEL_17;
      }
    }

    v15 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
    if (v15)
    {
      v13 = v15;
      APTPackageRTPBufferedCreateWithBBuf_cold_7(v15);
      goto LABEL_17;
    }

    APTransportParcelSetMessageType(*DerivedStorage, 1651861089);
  }

  if (gLogCategory_APTPackageRTPBuffered <= 30 && (gLogCategory_APTPackageRTPBuffered != -1 || _LogCategory_Initialize()))
  {
    APTPackageRTPBufferedCreateWithBBuf_cold_9(&dataLength[1]);
  }

  v13 = 0;
  *a3 = *&dataLength[1];
  *&dataLength[1] = 0;
LABEL_17:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (*&dataLength[1])
  {
    CFRelease(*&dataLength[1]);
  }

  return v13;
}

uint64_t APTPackageRTPBufferedGetPayloadSize(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  v9 = 0;
  destination = 0;
  if (a1)
  {
    if (a2)
    {
      if (CMBlockBufferGetDataLength(a1) <= 2)
      {
        v6 = 4294894936;
        APTPackageRTPBufferedGetPayloadSize_cold_4();
      }

      else
      {
        v4 = CMBlockBufferCopyDataBytes(a1, 0, 3uLL, &destination);
        if (v4)
        {
          v6 = v4;
          APTPackageRTPBufferedGetPayloadSize_cold_1(v4);
        }

        else if (v9 == 128)
        {
          v5 = bswap32(destination) >> 16;
          if (v5 <= 2)
          {
            v6 = 4294894936;
            APTPackageRTPBufferedGetPayloadSize_cold_3();
          }

          else
          {
            v6 = 0;
            *a2 = v5 - 3;
          }
        }

        else
        {
          v6 = 4294894936;
          APTPackageRTPBufferedGetPayloadSize_cold_2();
        }
      }
    }

    else
    {
      v6 = 4294894936;
      APTPackageRTPBufferedGetPayloadSize_cold_5();
    }
  }

  else
  {
    v6 = 4294894936;
    APTPackageRTPBufferedGetPayloadSize_cold_6();
  }

  return v6;
}

uint64_t APTPackageRTPBufferedGetHeaderSize(_DWORD *a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *a1 = 3;
  }

  else
  {
    APTPackageRTPBufferedGetHeaderSize_cold_1();
    return 4294894936;
  }

  return result;
}

uint64_t APTPackageRTPBufferedGetMaxPayloadSize(void *a1, uint64_t a2)
{
  if (a1)
  {
    *a1 = 65534;
  }

  else
  {
    APTPackageRTPBufferedGetMaxPayloadSize_cold_1();
  }

  return 0;
}

void rtpbufpackage_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTPackageRTPBuffered <= 30 && (gLogCategory_APTPackageRTPBuffered != -1 || _LogCategory_Initialize()))
  {
    rtpbufpackage_Finalize_cold_1(a1);
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

__CFString *rtpbufpackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTPackageRTPBuffered %p>", a1);
  return Mutable;
}

const void *rtpbufpackage_CopyMessageData(uint64_t a1)
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

uint64_t rtpbufpackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t rtpbufpackage_GetMessageType(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v1);
}

uint64_t rtpbufpackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

CMBlockBufferRef rtpbufpackage_CreateBBufRepresentation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  v5 = bswap32(CMBlockBufferGetDataLength(MessageData) + 3) >> 16;
  v6 = 0x80;
  APTransportParcelCreateBBufRepresentation(*DerivedStorage, *MEMORY[0x277CBECE8], &v5, &v4);
  return v4;
}

uint64_t APBrowserBTLEManagerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPBrowserBTLEManagerInitOnce != -1)
  {
    APBrowserBTLEManagerGetTypeID_cold_1();
  }

  return gAPBrowserBTLEManagerTypeID;
}

uint64_t __APBrowserBTLEManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPBrowserBTLEManagerTypeID = result;
  return result;
}

uint64_t APBrowserBTLEManagerCreate(uint64_t a1, id **a2)
{
  if (gAPBrowserBTLEManagerInitOnce != -1)
  {
    APBrowserBTLEManagerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 16) = 0;
    v6 = [[APBrowserBTLEManager alloc] initWithEventContext:Instance];
    v5[2] = v6;
    if (v6)
    {
      if (a1)
      {
        [v5[2] setBrowseForAltReceiver:CFDictionaryGetInt64() != 0];
      }

      v7 = 0;
      *a2 = v5;
    }

    else
    {
      v7 = 4294895076;
      APBrowserBTLEManagerCreate_cold_2(v5);
    }
  }

  else
  {
    v7 = 4294895076;
    APBrowserBTLEManagerCreate_cold_3();
  }

  return v7;
}

uint64_t APBrowserBTLEManagerInvalidate(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *(a1 + 16);
  v2 = [v1 queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __APBrowserBTLEManagerInvalidate_block_invoke;
  v5[3] = &unk_278BC6D48;
  v5[4] = v1;
  v5[5] = &v6;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_23D2D4EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__APBrowserBTLEManagerInvalidate_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerGetMode(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = *(a1 + 16);
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserBTLEManagerGetMode_block_invoke;
  block[3] = &unk_278BC6D98;
  block[4] = v3;
  block[5] = &v8;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_23D2D4FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__APBrowserBTLEManagerGetMode_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getBTLEMode:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerSetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = *(a1 + 16);
  v7 = [v6 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserBTLEManagerSetEventHandler_block_invoke;
  block[3] = &unk_278BC6DC0;
  block[4] = v6;
  block[5] = &v11;
  block[6] = a2;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_23D2D50D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__APBrowserBTLEManagerSetEventHandler_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setEventHandler:*(a1 + 48) context:*(a1 + 56) managerRef:*(a1 + 64)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerCopyShowInfo(uint64_t a1, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = *(a1 + 16);
  v6 = [v5 queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __APBrowserBTLEManagerCopyShowInfo_block_invoke;
  v9[3] = &unk_278BC6DE8;
  v9[4] = v5;
  v9[5] = &v11;
  v9[6] = a3;
  v10 = a2;
  dispatch_sync(v6, v9);
  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_23D2D51F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__APBrowserBTLEManagerCopyShowInfo_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) copyShowInfo:*(a1 + 48) verbose:*(a1 + 56) != 0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerUpdatePreferences(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *(a1 + 16);
  v2 = [v1 queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __APBrowserBTLEManagerUpdatePreferences_block_invoke;
  v5[3] = &unk_278BC6D48;
  v5[4] = v1;
  v5[5] = &v6;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_23D2D5300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__APBrowserBTLEManagerUpdatePreferences_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ensurePreferencesUpdatedWithShouldForce:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APBrowserBTLEManagerSetLocalDeviceSupportsSolo(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *(a1 + 16);
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserBTLEManagerSetLocalDeviceSupportsSolo_block_invoke;
  block[3] = &unk_278BC6E10;
  block[4] = v3;
  block[5] = &v9;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_23D2D5410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__APBrowserBTLEManagerSetLocalDeviceSupportsSolo_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setSupportsSolo:*(a1 + 48) != 0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t APTransportSessionCreate(const __CFAllocator *a1, int a2, const void *a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v48 = *MEMORY[0x277D85DE8];
  cf = 0;
  FigTransportSessionGetClassID();
  v12 = CMDerivedObjectCreate();
  v45 = v12;
  if (v12)
  {
    APTransportSessionCreate_cold_1(v12);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 32) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    UUIDGet();
    *&v49.byte0 = 0;
    *&v49.byte8 = 0;
    v14 = CFUUIDCreateFromUUIDBytes(a1, v49);
    *(DerivedStorage + 40) = v14;
    if (v14)
    {
      SNPrintF(label, 64, "APTransportSession.%{ptr}", cf);
      v15 = dispatch_queue_create(label, 0);
      *(DerivedStorage + 8) = v15;
      if (v15)
      {
        v16 = dispatch_queue_create("APTransportSession.notifications", 0);
        *(DerivedStorage + 16) = v16;
        if (v16)
        {
          *(DerivedStorage + 24) = a2;
          v17 = FigCFWeakReferenceTableCreate();
          v45 = v17;
          if (v17)
          {
            APTransportSessionCreate_cold_2(v17);
          }

          else
          {
            v18 = FigCFWeakReferenceTableCreate();
            v45 = v18;
            if (!v18)
            {
              *(DerivedStorage + 152) = 0;
              v19 = MEMORY[0x277CC0898];
              *(DerivedStorage + 124) = -1;
              *(DerivedStorage + 248) = *v19;
              *(DerivedStorage + 264) = *(v19 + 16);
              if (!a5)
              {
                goto LABEL_52;
              }

              Value = CFDictionaryGetValue(a5, @"OwningService");
              if (Value)
              {
                Value = CFRetain(Value);
              }

              *(DerivedStorage + 184) = Value;
              *(DerivedStorage + 124) = CFDictionaryGetInt64();
              if (v45)
              {
                *(DerivedStorage + 124) = -1;
                v45 = 0;
              }

              v21 = CFDictionaryGetValue(a5, @"TransportTester_RemoteNetworkAddress");
              if (v21)
              {
                v21 = CFRetain(v21);
              }

              *(DerivedStorage + 128) = v21;
              Int64 = CFDictionaryGetInt64();
              *(DerivedStorage + 152) = Int64;
              if (v45)
              {
                Int64 = 0;
                *(DerivedStorage + 152) = 0;
                v45 = 0;
              }

              if (gLogCategory_APTransportSession <= 40)
              {
                if (gLogCategory_APTransportSession != -1)
                {
LABEL_20:
                  LogPrintF(&gLogCategory_APTransportSession, "OSStatus APTransportSessionCreate(CFAllocatorRef, APTransportSessionType, CFStringRef, APTransportDeviceRef, CFDictionaryRef, FigTransportSessionRef *)", 33554472, "APTransportSession %{ptr} set interface type option %d.\n", cf, Int64);
                  goto LABEL_22;
                }

                if (_LogCategory_Initialize())
                {
                  Int64 = *(DerivedStorage + 152);
                  goto LABEL_20;
                }
              }

LABEL_22:
              v23 = CFDictionaryGetInt64();
              *(DerivedStorage + 156) = v23;
              if (v45)
              {
                v23 = 0;
                *(DerivedStorage + 156) = 0;
                v45 = 0;
              }

              if (gLogCategory_APTransportSession > 40)
              {
                goto LABEL_28;
              }

              if (gLogCategory_APTransportSession == -1)
              {
                if (!_LogCategory_Initialize())
                {
LABEL_28:
                  if (FigCFDictionaryGetCMTimeIfPresent() && gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
                  {
                    APTransportSessionCreate_cold_4(&cf, (DerivedStorage + 248));
                  }

                  *(DerivedStorage + 161) = CFDictionaryGetInt64() != 0;
                  *(DerivedStorage + 160) = CFDictionaryGetInt64() != 0;
                  v24 = CFDictionaryGetValue(a5, @"HandleNANAuthorizationRequestBlock");
                  if (v24)
                  {
                    v24 = CFRetain(v24);
                  }

                  *(DerivedStorage + 88) = v24;
                  v25 = CFDictionaryGetValue(a5, @"SetNANAuthorizationStringBlock");
                  if (v25)
                  {
                    v25 = CFRetain(v25);
                  }

                  *(DerivedStorage + 96) = v25;
                  v26 = CFDictionaryGetValue(a5, @"NANAuthorizationType");
                  if (v26)
                  {
                    v26 = CFRetain(v26);
                  }

                  *(DerivedStorage + 104) = v26;
                  v27 = CFDictionaryGetValue(a5, @"NANAuthorizationLogContext");
                  if (v27)
                  {
                    v27 = CFRetain(v27);
                  }

                  *(DerivedStorage + 112) = v27;
                  v28 = cf;
                  v29 = CMBaseObjectGetDerivedStorage();
                  if (CFDictionaryGetValue(a5, @"EventRecorder"))
                  {
                    v30 = *(v29 + 272);
                    if (v30)
                    {
                      CFRelease(v30);
                      *(v29 + 272) = 0;
                    }

                    APSEventRecorderCopyChildEventRecorderOfType();
                    if (!*(v29 + 272))
                    {
                      SNPrintF(cStr, 100, "APTransportSession(%{ptr}).%@", v28, a3);
                      v31 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
                      v32 = APSEventRecorderCreate();
                      if (v32)
                      {
                        if (gLogCategory_APTransportSession <= 60)
                        {
                          v33 = v32;
                          if (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize())
                          {
                            LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_setupEventRecorder(FigTransportSessionRef, CFDictionaryRef, CFStringRef)", 33554492, "APTransportSession %{ptr} failed to create event recorder with error %#m\n", v28, v33);
                          }
                        }
                      }

                      APSEventRecorderAddSignPostForEvent();
                      if (v31)
                      {
                        CFRelease(v31);
                      }
                    }
                  }

                  v45 = 0;
LABEL_52:
                  *(DerivedStorage + 216) = 0;
                  if (a4)
                  {
                    v34 = CFRetain(a4);
                  }

                  else
                  {
                    v34 = 0;
                  }

                  *(DerivedStorage + 64) = v34;
                  v35 = cf;
                  v36 = CMBaseObjectGetDerivedStorage();
                  if (!*(v36 + 240))
                  {
                    v37 = v36;
                    SharedHelper = APConnectivityHelperGetSharedHelper();
                    if (SharedHelper)
                    {
                      v39 = CFRetain(SharedHelper);
                      *(v37 + 240) = v39;
                      if (v39)
                      {
                        v40 = APConnectivityHelperRegisterEventHandler(v39, v35, session_handleConnectivityHelperEvents);
                        if (v40)
                        {
                          APTransportSessionCreate_cold_5(v40);
                        }

                        else
                        {
                          v41 = APConnectivityHelperRegisterForEvent(*(v37 + 240), v35, 1);
                          if (v41)
                          {
                            APTransportSessionCreate_cold_6(v41);
                          }

                          else if (*(v37 + 161))
                          {
                            v42 = APConnectivityHelperRegisterForEvent(*(v37 + 240), v35, 4);
                            if (v42)
                            {
                              APTransportSessionCreate_cold_7(v42);
                            }
                          }
                        }

                        goto LABEL_63;
                      }
                    }

                    else
                    {
                      *(v37 + 240) = 0;
                    }

                    APTransportSessionCreate_cold_8();
                  }

LABEL_63:
                  if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APTransportSession, "OSStatus APTransportSessionCreate(CFAllocatorRef, APTransportSessionType, CFStringRef, APTransportDeviceRef, CFDictionaryRef, FigTransportSessionRef *)", 33554472, "APTransportSession %{ptr} with name %@ created.\n", cf, a3);
                  }

                  APSIntrospectorAddCommand();
                  *a6 = cf;
                  return v45;
                }

                v23 = *(DerivedStorage + 156);
              }

              LogPrintF(&gLogCategory_APTransportSession, "OSStatus APTransportSessionCreate(CFAllocatorRef, APTransportSessionType, CFStringRef, APTransportDeviceRef, CFDictionaryRef, FigTransportSessionRef *)", 33554472, "APTransportSession %{ptr} set interface flags option 0x%x.\n", cf, v23);
              goto LABEL_28;
            }

            APTransportSessionCreate_cold_3(v18);
          }
        }

        else
        {
          APTransportSessionCreate_cold_9();
        }
      }

      else
      {
        APTransportSessionCreate_cold_10();
      }
    }

    else
    {
      APTransportSessionCreate_cold_11();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v45;
}

uint64_t APTransportSessionHandleStreamEvent(const void *a1, const void *a2, int a3, const void *a4)
{
  v13 = 0;
  if (a3)
  {
    return APSSignalErrorAt();
  }

  else
  {
    v7 = APSGetFBOPropertyInt64();
    if (v7 == 1702260340 || v7 == 1668575852)
    {
      v12 = 0;
      if (a4)
      {
        v9 = CFGetTypeID(a4);
        if (v9 != CFNumberGetTypeID())
        {
          APTransportSessionHandleStreamEvent_cold_2(&v13);
          return v13;
        }

        CFNumberGetValue(a4, kCFNumberSInt32Type, &v12);
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }

      CMBaseObjectGetDerivedStorage();
      v15 = a2;
      v14 = a1;
      v16 = v10;
      CFRetain(a1);
      CFRetain(a2);
      APSDispatchAsyncFHelper();
    }
  }

  return v13;
}

void session_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  session_invalidateInternal(a1);
  if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportSession, "void session_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] APTransportSession with name %@ finalizing.\n", a1, DerivedStorage[4]);
  }

  v3 = DerivedStorage[34];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[34] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[4] = 0;
  }

  v5 = DerivedStorage[5];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[5] = 0;
  }

  v6 = DerivedStorage[30];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[30] = 0;
  }

  v7 = DerivedStorage[1];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[1] = 0;
  }

  v8 = DerivedStorage[2];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[2] = 0;
  }
}

__CFString *session_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportSession %p '%@'>", a1, *(DerivedStorage + 32));
  return Mutable;
}

uint64_t session_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_SetProperty_cold_1();
    return 4294954511;
  }

  else if (a2)
  {
    v7 = *(DerivedStorage + 8);

    return MEMORY[0x2821127C0](v7, session_setPropertyInternal, a1, a2, a3);
  }

  else
  {
    session_SetProperty_cold_2();
    return 4294950696;
  }
}

void session_performWifiManagerRegistration(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  cf = 0;
  APTransportGetSharedTransport(a1, a2);
  CMBaseObject = FigTransportGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v6 = 4294954514;
    goto LABEL_12;
  }

  v6 = v5(CMBaseObject, @"WifiManagerClient", *MEMORY[0x277CBECE8], &cf);
  if (v6)
  {
LABEL_12:
    session_performWifiManagerRegistration_cold_3(v6);
    goto LABEL_13;
  }

  if (v2)
  {
    if (v2 == 1 && !*(a1 + 168))
    {
      v7 = APTransportWifiManagerClientRegister(cf);
      if (v7)
      {
        session_performWifiManagerRegistration_cold_2(v7);
      }

      else
      {
        *(a1 + 168) = 1;
      }
    }
  }

  else if (*(a1 + 168))
  {
    v8 = APTransportWifiManagerClientUnregister(cf);
    *(a1 + 168) = 0;
    if (v8)
    {
      session_performWifiManagerRegistration_cold_1(v8);
    }
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t session_suspendKeepAliveInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  KeepAliveController = session_getKeepAliveController(a1, &v16);
  v4 = KeepAliveController;
  if (KeepAliveController)
  {
    session_suspendKeepAliveInternal_cold_1(KeepAliveController);
  }

  else
  {
    v5 = v16;
    if (v16)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v6)
      {
        v6(v5);
      }

      *(DerivedStorage + 201) = 0;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      APTransportKeepAliveControllerGetCMBaseObject();
      v8 = v7;
      v9 = *(CMBaseObjectGetVTable() + 8);
      if (*v9 >= 2uLL)
      {
        v10 = v9[8];
        if (v10)
        {
          v10(v8);
        }
      }

      v11 = *(DerivedStorage + 232);
      if (v11)
      {
        CFRelease(v11);
        if (*(DerivedStorage + 232))
        {
          APTransportStreamIDGetToken(1802529910);
          v12 = FigCFWeakReferenceTableCopyValue();
          if (v12)
          {
            CFRelease(v12);
          }
        }
      }

      *(DerivedStorage + 232) = 0;
      v13 = *(DerivedStorage + 224);
      if (v13)
      {
        CFRelease(v13);
        if (*(DerivedStorage + 224))
        {
          APTransportStreamIDGetToken(1668575852);
          v14 = FigCFWeakReferenceTableCopyValue();
          if (v14)
          {
            CFRelease(v14);
          }
        }
      }

      *(DerivedStorage + 224) = 0;
    }
  }

  return v4;
}

uint64_t session_getKeepAliveController(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    session_getKeepAliveController_cold_1(&v8);
    return v8;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 216);
  if ((v5 - 1) < 2)
  {
    result = 0;
    v7 = *(v4 + 224);
LABEL_8:
    *a2 = v7;
    return result;
  }

  if (v5 == 4)
  {
    result = 0;
    v7 = *(v4 + 232);
    goto LABEL_8;
  }

  if (v5)
  {
    return 4294950696;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t session_handleKeepAliveStallStateChanged(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  v24 = **&MEMORY[0x277CC0898];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    return session_handleKeepAliveStallStateChanged_cold_3();
  }

  v9 = CFGetTypeID(a5);
  if (v9 != CFDictionaryGetTypeID())
  {
    return session_handleKeepAliveStallStateChanged_cold_3();
  }

  Value = CFDictionaryGetValue(a5, @"StallDuration");
  CMTimeMakeFromDictionary(&v24, Value);
  if (CFEqual(a3, @"APTransportKeepAliveControllerNotification_Stalled"))
  {
    if (gLogCategory_APTransportSession <= 90 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
    {
      session_handleKeepAliveStallStateChanged_cold_1(DerivedStorage, &v24.value, a2, v11, v12, v13, v14, v15);
    }

    v16 = 1;
    v17 = 1;
  }

  else
  {
    if (!CFEqual(a3, @"APTransportKeepAliveControllerNotification_NotStalled"))
    {
      v17 = 1;
      return session_reportNetworkStatus(a2, v17);
    }

    if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
    {
      session_handleKeepAliveStallStateChanged_cold_2(DerivedStorage, &v24.value, a2, v18, v19, v20, v21, v22);
    }

    v16 = 0;
    v17 = 2;
  }

  *(DerivedStorage + 200) = v16;
  return session_reportNetworkStatus(a2, v17);
}

uint64_t session_handleKeepAliveFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    return session_handleKeepAliveFailed_cold_2();
  }

  v8 = CFGetTypeID(a5);
  if (v8 != CFDictionaryGetTypeID())
  {
    return session_handleKeepAliveFailed_cold_2();
  }

  Int64 = CFDictionaryGetInt64();
  result = 0;
  if (gLogCategory_APTransportSession <= 90)
  {
    if (gLogCategory_APTransportSession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APTransportSession, "void session_handleKeepAliveFailed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554522, "[%{ptr}] [%{ptr}] Keep alives failed with error: %d\n", *(DerivedStorage + 224), a2, Int64);
    }
  }

  if (*(DerivedStorage + 200))
  {
    return session_reportNetworkStatus(a2, 3u);
  }

  return result;
}

uint64_t session_reportNetworkStatus(const void *a1, unsigned int a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  return APSDispatchAsyncFHelper();
}

__CFDictionary *session_copyShowInfo(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = 0;
    cf = 0;
    v3 = FigCFWeakReferenceTableCopyValue();
    if (v3)
    {
      v4 = v3;
      APTransportConnectionGetCMBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v7 || v7(v6, @"RemoteNetworkIPAddress", v1, &cf) || (APTransportConnectionGetCMBaseObject(), v9 = v8, (v10 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v10(v9, @"RemoteNetworkPort", v1, &v13))
      {
        v11 = 0;
      }

      else
      {
        CFGetInt64Ranged();
        APSNetworkAddressSetPort();
        v11 = APSNetworkAddressCopyStringRepresentation() == 0;
      }

      CFRelease(v4);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v11)
      {
        CFDictionarySetValue(Mutable, @"PeerIPPort", 0);
      }
    }
  }

  else
  {
    session_copyShowInfo_cold_1();
  }

  return Mutable;
}

uint64_t session_setPropertyInternal(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    session_setPropertyInternal_cold_1(&v14);
    return v14;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"TransportRegistrationToken"))
  {
    *(v6 + 22) = CFGetInt64();
    if (v14)
    {
      session_setPropertyInternal_cold_2(v14);
    }
  }

  else if (CFEqual(a2, @"ServiceRegistrationToken"))
  {
    *(v6 + 24) = CFGetInt64();
    if (v14)
    {
      session_setPropertyInternal_cold_3(v14);
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC1AF8]))
  {
    valuePtr = 0;
    if (!CFNumberGetValue(a3, kCFNumberIntType, &valuePtr))
    {
      session_setPropertyInternal_cold_6(&v14);
      return v14;
    }

    v7 = valuePtr;
    v8 = CMBaseObjectGetDerivedStorage();
    if (*(v8 + 201))
    {
      session_setPropertyInternal_cold_4(&v15);
      v11 = v15;
    }

    else
    {
      if (v7 <= 4 && v7 != 3)
      {
        *(v8 + 216) = v7;
        return 0;
      }

      v11 = APSSignalErrorAt();
    }

    v14 = v11;
    if (v11)
    {
      session_setPropertyInternal_cold_5(v11);
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC1AF0]))
  {
    if (v6[201])
    {
      session_setPropertyInternal_cold_7(&v14);
    }

    else if (a3 && (v9 = CFGetTypeID(a3), v9 == CFNumberGetTypeID()))
    {
      v10 = *(v6 + 26);
      *(v6 + 26) = a3;
      CFRetain(a3);
      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
      session_setPropertyInternal_cold_8(&v14);
    }
  }

  else
  {
    return -12784;
  }

  return v14;
}

uint64_t session_SetEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[7] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6[0] = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6[1] = DerivedStorage + 136;
  v6[2] = &v5;
  v6[3] = 8;
  v6[4] = DerivedStorage + 144;
  v6[5] = v6;
  v6[6] = 8;
  APSDispatchSyncBatchAssignment();
  return 0;
}

uint64_t session_Resume(uint64_t a1)
{
  v3 = a1;
  v4 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), &v3, session_resumeInternal);
  return v4;
}

uint64_t session_CreateStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_12;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v6 = 1;
  if (Int64Ranged <= 1702260339)
  {
    if (Int64Ranged == 1668575852)
    {
      goto LABEL_13;
    }

LABEL_12:
    v6 = 2;
    goto LABEL_13;
  }

  if (Int64Ranged != 1702260340 && Int64Ranged != 1869570660 && Int64Ranged != 1919120492)
  {
    goto LABEL_12;
  }

LABEL_13:
  v9 = *(DerivedStorage + 164) + 1;
  *(DerivedStorage + 164) = v9;
  APTransportStreamIDMake(0, v6, v9);
  return APSDispatchSyncTask();
}

uint64_t session_ResumeKeepAlive(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    session_ResumeKeepAlive_cold_1(&v2);
    return v2;
  }

  else
  {

    return APSDispatchSyncTask();
  }
}

uint64_t session_SuspendKeepAlive(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    session_SuspendKeepAlive_cold_1(&v2);
    return v2;
  }

  else
  {

    return APSDispatchSyncTask();
  }
}

void session_resumeInternal(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = CMBaseObjectGetDerivedStorage();
      if ((*(v5 + 152) - 5) >= 0xFFFFFFFE)
      {
        v6 = v5;
        if (!*(v5 + 64))
        {
          session_resumeInternal_cold_4();
          v8 = -16600;
          goto LABEL_18;
        }

        if (*(v5 + 72) || *(v5 + 80))
        {
          session_resumeInternal_cold_1();
          v8 = -6709;
          goto LABEL_18;
        }

        IntWithDefault = APSSettingsGetIntWithDefault();
        if (IntWithDefault == 2)
        {
          v8 = -72101;
          goto LABEL_17;
        }

        if (IntWithDefault == 1)
        {
          v8 = -72100;
LABEL_17:
          APSLogErrorAt();
LABEL_18:
          APSLogErrorAt();
          goto LABEL_19;
        }

        if ((*(v6 + 156) & 4) != 0)
        {
          v10 = session_activateNANDS(v2, 2, (v6 + 80));
          if (v10)
          {
            v8 = v10;
            session_resumeInternal_cold_2(v10);
            goto LABEL_18;
          }
        }

        v11 = session_activateNANDS(v2, 1, (v6 + 72));
        if (v11)
        {
          v8 = v11;
          session_resumeInternal_cold_3(v11);
          goto LABEL_18;
        }
      }

      session_resumeInternal_cold_5(v2, v13, &v12);
      v8 = v12;
      goto LABEL_19;
    }
  }

  else
  {
    v9 = DerivedStorage;
    if (*(DerivedStorage + 124) != -1 && *(DerivedStorage + 144))
    {
      if (v2)
      {
        CFRetain(v2);
      }

      dispatch_async_f(*(v9 + 16), v2, session_sendEventRemoteWantsNewStreamCallback);
    }
  }

  v8 = 0;
LABEL_19:
  *(a1 + 8) = v8;
}

void session_sendEventRemoteWantsNewStreamCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 1668575852;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  (*(DerivedStorage + 144))(0, v3, *(DerivedStorage + 136));
  if (v3)
  {
    CFRelease(v3);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t session_activateNANDS(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 152);
  cf = 0;
  v8 = APTransportDeviceCopyNANDataSession(*(DerivedStorage + 64), a2, v7 == 4, &cf);
  if (v8)
  {
    v28 = v8;
    session_activateNANDS_cold_1(v8);
    goto LABEL_34;
  }

  if (gLogCategory_APTransportSession <= 50 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    v9 = "LL";
    if (a2 == 1)
    {
      v9 = "RT";
    }

    v10 = "Open";
    if (v7 == 4)
    {
      v10 = "Secure";
    }

    LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_activateNANDS(FigTransportSessionRef, APSNANServiceType, APTNANDataSessionRef *)", 33554482, "[%{ptr}] APTransportSession holds NANDS [%{ptr}] (%s %s)\n", a1, cf, v9, v10);
  }

  v11 = *(DerivedStorage + 88);
  if (v11)
  {
    v12 = cf;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v13)
    {
      v28 = 4294954514;
      goto LABEL_33;
    }

    v14 = v13(v12, @"APTNANDataSessionProperty_HandleAuthorizationRequestBlock", v11);
    if (v14)
    {
      v28 = v14;
      goto LABEL_33;
    }
  }

  v15 = *(DerivedStorage + 96);
  if (v15)
  {
    v16 = cf;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v17)
    {
      v28 = 4294954514;
      goto LABEL_33;
    }

    v18 = v17(v16, @"APTNANDataSessionProperty_SetAuthorizationStringBlock", v15);
    if (v18)
    {
      v28 = v18;
      goto LABEL_33;
    }
  }

  v19 = *(DerivedStorage + 104);
  if (v19)
  {
    v20 = cf;
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v21)
    {
      v28 = 4294954514;
      goto LABEL_33;
    }

    v22 = v21(v20, @"APTNANDataSessionProperty_AuthorizationType", v19);
    if (v22)
    {
      v28 = v22;
      goto LABEL_33;
    }
  }

  v23 = *(DerivedStorage + 112);
  if (v23)
  {
    v24 = cf;
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v26 = v25(v24, @"APTNANDataSessionProperty_AuthorizationLogContext", v23);
      if (!v26)
      {
        goto LABEL_22;
      }

      v28 = v26;
    }

    else
    {
      v28 = 4294954514;
    }

LABEL_33:
    APSLogErrorAt();
    goto LABEL_34;
  }

LABEL_22:
  session_updateNANDSNotificationRegistry(a1, cf, 1);
  do
  {
    v27 = APTNANDataSessionRetainActivation(cf);
    v28 = v27;
    if (v27 <= -6755)
    {
      if (v27 == -72401)
      {
        v28 = 4294895195;
      }

      else if (v27 == -72400)
      {
        v28 = 4294895196;
      }

      goto LABEL_41;
    }
  }

  while (v27 == -6754);
  if (v27)
  {
LABEL_41:
    APSLogErrorAt();
    session_updateNANDSNotificationRegistry(a1, cf, 0);
    goto LABEL_34;
  }

  v29 = cf;
  if (cf)
  {
    v29 = CFRetain(cf);
  }

  v28 = 0;
  *a3 = v29;
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  return v28;
}

uint64_t session_copyStreamWithIDInternal(void *a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    session_copyStreamWithIDInternal_cold_1();
    return 4294954511;
  }

  else
  {
    APTransportStreamIDGetToken(a1[1]);
    v2 = FigCFWeakReferenceTableCopyValue();
    if (v2)
    {
      v3 = v2;
      if (gLogCategory_APTransportSession <= 30 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_copyStreamWithIDInternal(void *)", 33554462, "[%{ptr}] APTransportSession returning %llu stream %{ptr}\n", *a1, a1[1], v3);
      }

      result = 0;
      *a1[2] = v3;
    }

    else
    {
      session_copyStreamWithIDInternal_cold_2();
      return 4294960578;
    }
  }

  return result;
}

uint64_t session_ensureKeepAliveControllerCreatedAndResumed(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = v3;
  v5 = *(v3 + 216);
  v6 = 4294950696;
  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_24;
    }

    if (v5 != 1)
    {
      goto LABEL_46;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      CFDictionarySetValue(Mutable, @"UseLegacyProtocol", *MEMORY[0x277CBED28]);
      goto LABEL_14;
    }

    session_ensureKeepAliveControllerCreatedAndResumed_cold_6(&v24);
LABEL_45:
    v6 = v24;
    if (v24)
    {
      goto LABEL_46;
    }

    goto LABEL_24;
  }

  if (v5 == 2)
  {
    v8 = 0;
LABEL_14:
    if (v4[28])
    {
      v6 = 0;
      v10 = 0;
    }

    else
    {
      APTransportStreamIDGetToken(1668575852);
      v10 = FigCFWeakReferenceTableCopyValue();
      if (v10)
      {
        v13 = APTransportKeepAliveControllerStandardCreate(0, v8, v10, v4 + 28);
        v6 = v13;
        if (v13)
        {
          session_ensureKeepAliveControllerCreatedAndResumed_cold_4(v13);
        }
      }

      else
      {
        session_ensureKeepAliveControllerCreatedAndResumed_cold_5(&v24);
        v6 = v24;
      }
    }

    if (!v8)
    {
LABEL_21:
      if (!v10)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_20:
    CFRelease(v8);
    goto LABEL_21;
  }

  if (v5 != 4)
  {
    goto LABEL_46;
  }

  if (!*(v3 + 232))
  {
    APTransportStreamIDGetToken(1802529910);
    v9 = FigCFWeakReferenceTableCopyValue();
    if (v9)
    {
      v10 = v9;
      v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v11)
      {
        session_ensureKeepAliveControllerCreatedAndResumed_cold_2(&v24);
        v6 = v24;
LABEL_22:
        CFRelease(v10);
LABEL_23:
        if (v6)
        {
          goto LABEL_46;
        }

        goto LABEL_24;
      }

      v8 = v11;
      CFDictionarySetValue(v11, @"SessionUUID", v4[5]);
      v12 = APTKeepAliveControllerLowPowerCreate(*MEMORY[0x277CBECE8], v8, v10, v4 + 29);
      v6 = v12;
      if (v12)
      {
        session_ensureKeepAliveControllerCreatedAndResumed_cold_1(v12);
      }

      goto LABEL_20;
    }

    session_ensureKeepAliveControllerCreatedAndResumed_cold_3(&v24);
    goto LABEL_45;
  }

LABEL_24:
  KeepAliveController = session_getKeepAliveController(a1, &v23);
  if (KeepAliveController)
  {
    v6 = KeepAliveController;
    session_ensureKeepAliveControllerCreatedAndResumed_cold_7(KeepAliveController);
    return v6;
  }

  if (v23)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    v15 = *(DerivedStorage + 208);
    if (!v15)
    {
      goto LABEL_36;
    }

    APTransportKeepAliveControllerGetCMBaseObject();
    v17 = v16;
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v18)
    {
      v19 = v18(v17, @"KeepAliveInterval", v15);
      if (!v19)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v19 = 4294954514;
    }

    if (gLogCategory_APTransportSession <= 60 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportSession, "OSStatus session_ensureKeepAliveControllerCreatedAndResumed(void *)", 33554492, "APTransportKeepAliveControllerSetProperty(KeepAliveInterval) = %@ failed %#m", *(DerivedStorage + 208), v19);
    }

LABEL_36:
    v20 = v23;
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v21)
    {
      v6 = v21(v20);
      if (!v6)
      {
        *(DerivedStorage + 201) = 1;
        return v6;
      }
    }

    else
    {
      v6 = 4294954514;
    }

LABEL_46:
    APSLogErrorAt();
    return v6;
  }

  return 0;
}

void session_dispatchConnectionDroppedInternal(uint64_t a1)
{
  session_handleConnectionDroppedInternal(*a1, *(a1 + 8), *(a1 + 16));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t session_handleConnectivityHelperEvents(uint64_t a1, unsigned int a2, const void *a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  if (a3)
  {
    CFRetain(a3);
  }

  return APSDispatchAsyncFHelper();
}

void session_handleConnectivityHelperEventsInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
  {
    session_handleConnectivityHelperEventsInternal_cold_1(a1);
  }

  v2 = *(a1 + 8);
  switch(v2)
  {
    case 4:
      v18 = *(a1 + 16);
      v17 = *(a1 + 24);
      v26 = 0;
      if (!*(CMBaseObjectGetDerivedStorage() + 120))
      {
        if (v18)
        {
          Value = CFDictionaryGetValue(v18, @"networkInterfaceName");
          Int64 = CFDictionaryGetInt64();
          if (gLogCategory_APTransportSession <= 40 && (gLogCategory_APTransportSession != -1 || _LogCategory_Initialize()))
          {
            v21 = "added";
            if (!Int64)
            {
              v21 = "removed";
            }

            LogPrintF(&gLogCategory_APTransportSession, "void session_handleUSBInterfaceChangedEvent(FigTransportSessionRef, CFDictionaryRef)", 33554472, "[%{ptr}] USB Interface %@ %s\n", v17, Value, v21);
          }

          if (!Int64)
          {
            session_handleConnectivityHelperEventsInternal_cold_2(v17, &v26);
          }
        }

        else
        {
          session_handleConnectivityHelperEventsInternal_cold_3();
        }
      }

      break;
    case 2:
      v12 = *(a1 + 24);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v16 = DerivedStorage;
      v24 = 0;
      if (gLogCategory_APTransportSession <= 40)
      {
        if (gLogCategory_APTransportSession != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
        {
          session_handleConnectivityHelperEventsInternal_cold_4(DerivedStorage, v14, v15);
        }
      }

      if (!*(v16 + 120))
      {
        session_handleConnectivityHelperEventsInternal_cold_5(v12, &v25, v16, &v24);
      }

      break;
    case 1:
      v3 = *(a1 + 24);
      v4 = CMBaseObjectGetDerivedStorage();
      v7 = v4;
      if (gLogCategory_APTransportSession <= 40)
      {
        if (gLogCategory_APTransportSession != -1 || (v4 = _LogCategory_Initialize(), v4))
        {
          session_handleConnectivityHelperEventsInternal_cold_6(v4, v5, v6);
        }
      }

      v8 = APConnectivityHelperRegisterForEvent(*(v7 + 240), v3, 2);
      if (v8)
      {
        session_handleConnectivityHelperEventsInternal_cold_7(v8);
      }

      else
      {
        if (gLogCategory_APTransportSession <= 40)
        {
          if (gLogCategory_APTransportSession != -1 || (v8 = _LogCategory_Initialize(), v8))
          {
            session_handleConnectivityHelperEventsInternal_cold_8(v8, v9, v10);
          }
        }

        v11 = APConnectivityHelperDeregisterForEvent(*(v7 + 240), v3, 1);
        if (v11)
        {
          session_handleConnectivityHelperEventsInternal_cold_9(v11);
        }
      }

      break;
  }

  v22 = *(a1 + 24);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    CFRelease(v23);
  }
}

uint64_t APTDiagnosticMulticastDataToAllHosts(uint64_t a1, int a2, uint64_t a3, const __CFData *a4)
{
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v6 = StringToSockAddr("224.0.0.1", v20, 28, &v19);
  if (v6 || (SockAddrSetPort(), v6 = StringToSockAddr("[ff02::1]", v22, 28, &v18), v6))
  {
    v7 = v6;
    goto LABEL_4;
  }

  SockAddrSetPort();
  if (!getifaddrs(&v17))
  {
    goto LABEL_15;
  }

  if (*__error())
  {
    v7 = *__error();
    if (!v7)
    {
LABEL_15:
      v10 = v17;
      if (!v17)
      {
        return 0;
      }

      v7 = 0;
      if (a2 == 2)
      {
        v11 = v20;
      }

      else
      {
        v11 = v22;
      }

      v8 = -1;
      while (1)
      {
        if (v10->ifa_flags)
        {
          if (v10->ifa_addr)
          {
            if (v10->ifa_name)
            {
              strlen(v10->ifa_name);
              if (!strncmpx() && (v10->ifa_flags & 0x8018) == 0x8000)
              {
                if (if_nametoindex(v10->ifa_name))
                {
                  p_sa_len = &v10->ifa_addr->sa_len;
                  if (p_sa_len[1] == a2 && (a2 != 30 || p_sa_len[8] == 254 && (p_sa_len[9] & 0xC0) == 0x80))
                  {
                    if ((v8 & 0x80000000) == 0 && close(v8) && *__error())
                    {
                      __error();
                    }

                    v8 = socket(a2, 2, 17);
                    if ((v8 & 0x80000000) == 0)
                    {
LABEL_35:
                      v13 = SocketSetMulticastInterface();
                      if (v13)
                      {
                        v7 = v13;
                      }

                      else
                      {
                        BytePtr = CFDataGetBytePtr(a4);
                        Length = CFDataGetLength(a4);
                        v16 = &v18;
                        if (a2 == 2)
                        {
                          v16 = &v19;
                        }

                        sendto(v8, BytePtr, Length, 0, v11, *v16);
                        v7 = 0;
                      }

                      goto LABEL_44;
                    }

                    if (*__error())
                    {
                      v7 = *__error();
                      if (!v7)
                      {
                        goto LABEL_35;
                      }
                    }

                    else
                    {
                      v7 = 4294960596;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_44:
        v10 = v10->ifa_next;
        if (!v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  else
  {
    v7 = 4294960596;
  }

LABEL_4:
  v8 = -1;
LABEL_5:
  if (v17)
  {
    MEMORY[0x23EEDE3C0]();
  }

  if ((v8 & 0x80000000) == 0 && close(v8) && *__error())
  {
    __error();
  }

  return v7;
}

uint64_t APTransportStreamSendPlistMessage(uint64_t a1, uint64_t a2, CFPropertyListRef propertyList)
{
  if (propertyList)
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      APTransportStreamSendPlistMessage_cold_2();
      return 4294950685;
    }

    v6 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v9 = BlockBufferWithCFDataNoCopy;
      APTransportStreamSendPlistMessage_cold_1(BlockBufferWithCFDataNoCopy);
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    v9 = v8(a1, a2, 0);
    if (!v9)
    {
      if (!v6)
      {
        return v9;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  APSLogErrorAt();
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

  return v9;
}

uint64_t APTransportStreamSendPlistMessageCreatingReply(uint64_t a1, uint64_t a2, CFPropertyListRef propertyList, uint64_t a4)
{
  if (propertyList)
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      APTransportStreamSendPlistMessageCreatingReply_cold_2();
      return 4294950685;
    }

    v8 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v11 = BlockBufferWithCFDataNoCopy;
      APTransportStreamSendPlistMessageCreatingReply_cold_1(BlockBufferWithCFDataNoCopy);
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v10)
  {
    v11 = v10(a1, a2, 0, a4);
    if (!v11)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v11 = 4294954514;
  }

  APSLogErrorAt();
  if (v8)
  {
LABEL_12:
    CFRelease(v8);
  }

  return v11;
}

uint64_t APTransportStreamSendData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    v7 = BlockBufferWithCFDataNoCopy;
    APTransportStreamSendData_cold_1(BlockBufferWithCFDataNoCopy);
    return v7;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    return v7;
  }

  v7 = v6(a1, a2, 0);
  if (v7)
  {
    goto LABEL_6;
  }

  return v7;
}

uint64_t APTransportStreamSendDataCreatingReplyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  cf = 0;
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    v9 = BlockBufferWithCFDataNoCopy;
    APTransportStreamSendDataCreatingReplyData_cold_1(BlockBufferWithCFDataNoCopy);
    goto LABEL_10;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8)
  {
    v9 = 4294954514;
    goto LABEL_9;
  }

  v9 = v8(a1, a2, cf, &v12);
  if (v9)
  {
LABEL_9:
    APSLogErrorAt();
    goto LABEL_10;
  }

  if (a4)
  {
    if (v12)
    {
      CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
      v9 = CFDataWithBlockBufferNoCopy;
      if (CFDataWithBlockBufferNoCopy)
      {
        APTransportStreamSendDataCreatingReplyData_cold_2(CFDataWithBlockBufferNoCopy);
      }
    }
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t APBrokerManagerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPBrokerManagerInitOnce != -1)
  {
    APBrokerManagerGetTypeID_cold_1();
  }

  return gAPBrokerManagerTypeID;
}

uint64_t _APBrokerManagerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPBrokerManagerTypeID = result;
  return result;
}

uint64_t APBrokerManagerCreateWithDiscoveryDelegate(__int128 *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  *label = 0u;
  v21 = 0u;
  if (a2)
  {
    if (gAPBrokerManagerInitOnce != -1)
    {
      APBrokerManagerGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Instance[1] = 0u;
      v6 = Instance + 1;
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
      v7 = FigSimpleMutexCreate();
      v6[10] = v7;
      if (!v7)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_11();
        goto LABEL_35;
      }

      SNPrintF(label, 64, "APBrokerManager.notification.%{ptr}", v5);
      v8 = dispatch_queue_create(label, 0);
      *(v5 + 11) = v8;
      if (!v8)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_10();
        goto LABEL_35;
      }

      SNPrintF(label, 64, "APBrokerManager.corewifi.%{ptr}", v5);
      v9 = dispatch_queue_create(label, 0);
      *(v5 + 3) = v9;
      if (!v9)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_9();
        goto LABEL_35;
      }

      *(v5 + 64) = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v5 + 14) = Mutable;
      if (!Mutable)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_8();
        goto LABEL_35;
      }

      v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v5 + 15) = v11;
      if (!v11)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_7();
        goto LABEL_35;
      }

      if (a1)
      {
        v13 = *a1;
        v12 = a1[1];
        *(v5 + 8) = *(a1 + 4);
        v5[2] = v13;
        v5[3] = v12;
        if (*(v5 + 4))
        {
          v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *(v5 + 9) = v14;
          if (!v14)
          {
            APBrokerManagerCreateWithDiscoveryDelegate_cold_2();
LABEL_35:
            v16 = 4294960568;
            goto LABEL_36;
          }
        }
      }

      else
      {
        v5[2] = 0u;
        v5[3] = 0u;
        *(v5 + 5) = BonjourDiscoveryDelegateSetup;
        *(v5 + 6) = BonjourDiscoveryDelegateStart;
        *(v5 + 7) = BonjourDiscoveryDelegateStop;
        *(v5 + 8) = 0;
        *(v5 + 8) = BonjourDiscoveryDelegateCleanup;
      }

      v19 = 0;
      if (*(v5 + 5))
      {
        v15 = _APBrokerManagerCopyReferencedObjectIfNecessary(*(v5 + 9), &v19);
        if (v19)
        {
          APBrokerManagerCreateWithDiscoveryDelegate_cold_3(v19);
        }

        else
        {
          *(v5 + 10) = (*(v5 + 5))(v15, _APBrokerManagerHandleBonjourEvent, v5, &v19);
          if (v19)
          {
            APBrokerManagerCreateWithDiscoveryDelegate_cold_4(v19);
          }
        }

        if (v15)
        {
          CFRelease(v15);
        }

        v16 = v19;
        if (v19)
        {
          APBrokerManagerCreateWithDiscoveryDelegate_cold_5(v19);
LABEL_36:
          CFRelease(v5);
          return v16;
        }
      }

      v17 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:2];
      *v6 = v17;
      if (!v17)
      {
        APBrokerManagerCreateWithDiscoveryDelegate_cold_6();
        goto LABEL_35;
      }

      [v17 activate];
      v16 = 0;
      *a2 = v5;
    }

    else
    {
      APBrokerManagerCreateWithDiscoveryDelegate_cold_12();
      return 4294960568;
    }
  }

  else
  {
    APBrokerManagerCreateWithDiscoveryDelegate_cold_13();
    return 4294960591;
  }

  return v16;
}

uint64_t APBrokerManagerInvalidate(uint64_t a1)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  ++*(a1 + 200);
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  _APBrokerManagerUpdateBrowsing(a1);
  _APBrokerManagerClearAuthCallbackState(a1);
  _APBrokerManagerDiscoveryDelegateStop(a1);
  [*(a1 + 16) invalidate];
  *(a1 + 104) = 1;

  return FigSimpleMutexUnlock();
}

void _APBrokerManagerClearAuthCallbackState(uint64_t a1)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v2 = *(a1 + 208);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 208) = 0;
  }

  *(a1 + 216) = 0;
  v3 = *(a1 + 224);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 224) = 0;
  }

  v4 = *(a1 + 232);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 232) = 0;
  }

  v5 = *(a1 + 240);
  if (v5)
  {
    dispatch_source_cancel(*(a1 + 240));
    dispatch_release(v5);
    *(a1 + 240) = 0;
  }
}

uint64_t APBrokerManagerAuthenticateBrokerGroup(uint64_t a1, __CFString *a2, __CFString *a3, void *a4)
{
  if (!a3)
  {
    APBrokerManagerAuthenticateBrokerGroup_cold_2();
    v14 = 4294960591;
    goto LABEL_19;
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!*(a1 + 104))
  {
    if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
    {
      APBrokerManagerAuthenticateBrokerGroup_cold_1(a2, a3, a1);
    }

    if (*(a1 + 240))
    {
      v14 = 4294960575;
    }

    else
    {
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
      *(a1 + 240) = v8;
      if (v8)
      {
        *(a1 + 208) = _Block_copy(a4);
        _APBrokerManagerRequestBrokerDiscovery(a1);
        CFRetain(a1);
        v9 = *(a1 + 240);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __APBrokerManagerAuthenticateBrokerGroup_block_invoke;
        handler[3] = &__block_descriptor_40_e5_v8__0l;
        handler[4] = a1;
        dispatch_source_set_event_handler(v9, handler);
        v10 = *(a1 + 240);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __APBrokerManagerAuthenticateBrokerGroup_block_invoke_2;
        v16[3] = &__block_descriptor_40_e5_v8__0l;
        v16[4] = a1;
        dispatch_source_set_cancel_handler(v10, v16);
        v11 = *(a1 + 240);
        v12 = dispatch_time(0, 24000000000);
        dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        dispatch_resume(*(a1 + 240));
        *(a1 + 224) = CFRetain(a3);
        if (a2)
        {
          *(a1 + 232) = CFRetain(a2);
          FigSimpleMutexCheckIsLockedOnThisThread();
          Value = CFDictionaryGetValue(*(a1 + 112), a2);
          if (Value)
          {
            _APBrokerManagerAuthenticateBrokerGroup(a1, Value, a3);
          }
        }

        else
        {
          *(a1 + 232) = 0;
          CFDictionaryApplyBlock();
        }

        goto LABEL_13;
      }

      v14 = 4294960568;
    }

    APSLogErrorAt();
    _APBrokerManagerClearAuthCallbackState(a1);
    FigSimpleMutexUnlock();
LABEL_19:
    _APBrokerManagerCallAuthenticationCallback(a1, v14, 0, a4);
    return v14;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t __APBrokerManagerAuthenticateBrokerGroup_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  v2 = *(v1 + 216);
  if (!v2)
  {
    v2 = 4294960574;
    *(v1 + 216) = -6722;
  }

  if (gLogCategory_APBrokerManager <= 90)
  {
    if (gLogCategory_APBrokerManager != -1 || (v3 = _LogCategory_Initialize(), v2 = *(v1 + 216), v3))
    {
      LogPrintF(&gLogCategory_APBrokerManager, "void _APBrokerManagerHandleBrokerAuthenticationTimeout(APBrokerManagerRef)", 33554522, "[%{ptr}] Broker authentication timed out. Calling callback with error %#m\n", v1, v2);
      LODWORD(v2) = *(v1 + 216);
    }
  }

  _APBrokerManagerCallAuthenticationCallback(v1, v2, 0, *(v1 + 208));
  _APBrokerManagerClearAuthCallbackState(v1);

  return FigSimpleMutexUnlock();
}

void __APBrokerManagerAuthenticateBrokerGroup_block_invoke_2(uint64_t a1)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  _APBrokerManagerReleaseBrokerDiscovery(*(a1 + 32));
  FigSimpleMutexUnlock();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t _APBrokerManagerReleaseBrokerDiscovery(uint64_t a1)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v2 = *(a1 + 132);
  if (!v2)
  {
    return _APBrokerManagerReleaseBrokerDiscovery_cold_2();
  }

  v3 = (v2 - 1);
  *(a1 + 132) = v3;
  if (gLogCategory_APBrokerManager <= 30)
  {
    _APBrokerManagerReleaseBrokerDiscovery_cold_1(gLogCategory_APBrokerManager, v3, a1);
  }

  return _APBrokerManagerUpdateBrowsing(a1);
}

void _APBrokerManagerAuthenticateBrokerGroup(const void *a1, uint64_t a2, const void *a3)
{
  CFRetain(a1);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___APBrokerManagerAuthenticateBrokerGroup_block_invoke;
  aBlock[3] = &__block_descriptor_40_e44_v28__0i8____CFString__12____CFDictionary__20l;
  aBlock[4] = a1;
  APBrokerGroupAuthenticate(a2, a3, aBlock);
}

uint64_t APBrokerManagerGetInfoFromBrokerGroup(uint64_t a1, __CFString *a2, const void *a3)
{
  v6 = a1 + 96;
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!*(v6 + 8))
  {
    if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
    {
      APBrokerManagerGetInfoFromBrokerGroup_cold_1(a2, a1);
    }

    if (*(a1 + 272))
    {
      v13 = 4294960575;
      v15 = 1563;
    }

    else
    {
      v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
      *(a1 + 272) = v7;
      if (v7)
      {
        *(a1 + 248) = _Block_copy(a3);
        _APBrokerManagerRequestBrokerDiscovery(a1);
        CFRetain(a1);
        v8 = *(a1 + 272);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __APBrokerManagerGetInfoFromBrokerGroup_block_invoke;
        handler[3] = &__block_descriptor_40_e5_v8__0l;
        handler[4] = a1;
        dispatch_source_set_event_handler(v8, handler);
        v9 = *(a1 + 272);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __APBrokerManagerGetInfoFromBrokerGroup_block_invoke_2;
        v16[3] = &__block_descriptor_40_e5_v8__0l;
        v16[4] = a1;
        dispatch_source_set_cancel_handler(v9, v16);
        v10 = *(a1 + 272);
        v11 = dispatch_time(0, 3000000000);
        dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        dispatch_resume(*(a1 + 272));
        if (a2)
        {
          *(a1 + 256) = CFRetain(a2);
          FigSimpleMutexCheckIsLockedOnThisThread();
          Value = CFDictionaryGetValue(*(a1 + 112), a2);
          if (Value)
          {
            _APBrokerManagerGetInfoFromBrokerGroup(a1, Value);
          }
        }

        else
        {
          *(a1 + 256) = 0;
          CFDictionaryApplyBlock();
        }

        goto LABEL_12;
      }

      v13 = 4294960568;
      v15 = 1567;
    }

    APBrokerManagerGetInfoFromBrokerGroup_cold_2(v15, a1, v6, v13, a3);
    return v13;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t __APBrokerManagerGetInfoFromBrokerGroup_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (*(v1 + 264))
  {
    if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
    {
      __APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_1(v1);
    }

    v2 = 0;
  }

  else
  {
    if (gLogCategory_APBrokerManager <= 60 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
    {
      __APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_2(v1);
    }

    v2 = -6722;
  }

  _APBrokerManagerCallGetInfoCallback(v1, v2, *(v1 + 264), *(v1 + 248));
  _APBrokerManagerClearGetInfoCallbackState(v1);

  return FigSimpleMutexUnlock();
}

void __APBrokerManagerGetInfoFromBrokerGroup_block_invoke_2(uint64_t a1)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  _APBrokerManagerReleaseBrokerDiscovery(*(a1 + 32));
  FigSimpleMutexUnlock();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void _APBrokerManagerGetInfoFromBrokerGroup(const void *a1, uint64_t a2)
{
  CFRetain(a1);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke;
  aBlock[3] = &__block_descriptor_40_e44_v28__0i8____CFString__12____CFDictionary__20l;
  aBlock[4] = a1;
  APBrokerGroupGetInfo(a2, aBlock, v4);
}

void _APBrokerManagerClearGetInfoCallbackState(uint64_t a1)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v2 = *(a1 + 248);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 248) = 0;
  }

  v3 = *(a1 + 264);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 264) = 0;
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    dispatch_source_cancel(*(a1 + 272));
    dispatch_release(v4);
    *(a1 + 272) = 0;
  }
}

void APBrokerManagerResolveBrokeredReceiverDNSName(uint64_t a1, CFStringRef theString, void *a3)
{
  v15 = 0;
  v16 = 0;
  if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerManager, "void APBrokerManagerResolveBrokeredReceiverDNSName(APBrokerManagerRef, CFStringRef, APBrokerResolveBrokeredAddressCallbackBlock)", 33554482, "[%{ptr}] Resolving brokered receiver DNS: %@\n", a1, theString);
  }

  if (!theString)
  {
    APBrokerManagerResolveBrokeredReceiverDNSName_cold_5();
    goto LABEL_28;
  }

  if (!a3)
  {
    APBrokerManagerResolveBrokeredReceiverDNSName_cold_4();
    goto LABEL_19;
  }

  APBrokeredReceiverCopyInfoFromDNSName(theString, &v16, &v15);
  v6 = v16;
  if (!v16)
  {
    APBrokerManagerResolveBrokeredReceiverDNSName_cold_3();
    goto LABEL_28;
  }

  v7 = v15;
  if (!v15)
  {
    APBrokerManagerResolveBrokeredReceiverDNSName_cold_2();
LABEL_28:
    v10 = -6705;
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (gLogCategory_APBrokerManager > 50)
  {
    goto LABEL_13;
  }

  if (gLogCategory_APBrokerManager == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  while (1)
  {
    LogPrintF(&gLogCategory_APBrokerManager, "void APBrokerManagerResolveBrokeredReceiverDNSName(APBrokerManagerRef, CFStringRef, APBrokerResolveBrokeredAddressCallbackBlock)", 33554482, "[%{ptr}] Resolving brokered receiver %@ DNS with broker group %@\n", a1, v7, v6);
LABEL_13:
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    v8 = v16;
    FigSimpleMutexCheckIsLockedOnThisThread();
    Value = CFDictionaryGetValue(*(a1 + 112), v8);
    if (Value)
    {
      APBrokerGroupResolveReceiverDNSName(Value, v15, a3);
      v10 = 0;
    }

    else
    {
      APBrokerManagerResolveBrokeredReceiverDNSName_cold_1();
      v10 = -6705;
    }

    FigSimpleMutexUnlock();
LABEL_16:
    if (!v10)
    {
      break;
    }

    v11 = _Block_copy(a3);
    if (v11)
    {
      v12 = *(a1 + 88);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __APBrokerManagerResolveBrokeredReceiverDNSName_block_invoke;
      block[3] = &unk_278BC7098;
      block[4] = v11;
      v14 = v10;
      dispatch_async(v12, block);
      break;
    }

    FatalErrorF("[%{ptr}] Block copy failed after error resolving receiver", a1);
LABEL_32:
    v7 = v15;
    v6 = v16;
  }

LABEL_19:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

void __APBrokerManagerResolveBrokeredReceiverDNSName_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

uint64_t _APBrokerManagerFinalize(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v11 = 0;
    if (!*(a1 + 64))
    {
      goto LABEL_6;
    }

    v1 = _APBrokerManagerCopyReferencedObjectIfNecessary(*(a1 + 72), &v11);
    v3 = v11;
    if (!v11)
    {
      (*(a1 + 64))(v1, *(a1 + 80));
      *(a1 + 80) = 0;
      if (!v1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v3 = FatalErrorF("[%{ptr}] Not invalidated before finalize", a1);
  }

  _APBrokerManagerFinalize_cold_1(v3);
  if (v1)
  {
LABEL_5:
    CFRelease(v1);
  }

LABEL_6:
  v4 = *(a1 + 192);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 192) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 120) = 0;
  }

  *(a1 + 16) = 0;
  v8 = *(a1 + 88);
  if (v8)
  {
    dispatch_release(v8);
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 24) = 0;
  }

  result = *(a1 + 96);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(a1 + 96) = 0;
  }

  return result;
}

void _APBrokerManagerHandleBonjourEvent(uint64_t a1, const void *a2, uint64_t a3)
{
  if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerManager, "void _APBrokerManagerHandleBonjourEvent(BonjourBrowserEventType, CFDictionaryRef, void *)", 33554462, "[%{ptr}] bonjour event %d, %@\n", a3, a1, a2);
  }

  if ((a1 - 3) >= 2)
  {
    if (a1 == 2)
    {
      cf1 = 0;
      FigSimpleMutexCheckIsNotLockedOnThisThread();
      FigSimpleMutexLock();
      if (*(a3 + 136))
      {
        v16 = APBrokerCopyBrokerInfoFromBonjourInfo(a2, 0, &cf1);
        if (v16)
        {
          _APBrokerManagerHandleBonjourEvent_cold_2(v16);
        }

        else
        {
          v17 = cf1;
          FigSimpleMutexCheckIsLockedOnThisThread();
          Value = CFDictionaryGetValue(*(a3 + 112), v17);
          if (Value)
          {
            v19 = Value;
            CFRetain(Value);
            v20 = APBrokerGroupRemoveBroker(v19, a2);
            if (v20)
            {
              _APBrokerManagerHandleBonjourEvent_cold_3(v20);
            }

            else if (APBrokerGroupIsEmpty(v19))
            {
              v22 = *(a3 + 112);
              GroupID = APBrokerGroupGetGroupID(v19);
              CFDictionaryRemoveValue(v22, GroupID);
              _APBrokerManagerCleanupBrokerGroup(a3, v19);
            }

            FigSimpleMutexUnlock();
            v14 = v19;
            goto LABEL_44;
          }
        }
      }

      FigSimpleMutexUnlock();
      goto LABEL_45;
    }

    if (a1 != 1)
    {
      return;
    }

    v25 = 0;
    cf1 = 0;
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    if (*(a3 + 136))
    {
      v6 = APBrokerCopyBrokerInfoFromBonjourInfo(a2, 0, &cf1);
      if (v6)
      {
        _APBrokerManagerHandleBonjourEvent_cold_4(v6);
        goto LABEL_29;
      }

      v7 = cf1;
      FigSimpleMutexCheckIsLockedOnThisThread();
      v8 = CFDictionaryGetValue(*(a3 + 112), v7);
      v25 = v8;
      if (!v8)
      {
        v9 = APBrokerGroupCreate(cf1, &v25);
        if (v9)
        {
          _APBrokerManagerHandleBonjourEvent_cold_5(v9);
          goto LABEL_29;
        }

        v24 = _APBrokerManagerHandleBrokeredReceiversChanged;
        if (!APBrokerGroupSetDelegate(v25, a3, &v24))
        {
          CFDictionarySetValue(*(a3 + 112), cf1, v25);
          v10 = v25;
          FigSimpleMutexCheckIsLockedOnThisThread();
          if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APBrokerManager, "void _APBrokerManagerFireBrokerGroupAdded(APBrokerManagerRef, APBrokerGroupRef)", 33554462, "[%{ptr}] BrokerGroup [%{ptr}] added\n", a3, v10);
          }

          _APBrokerManagerFireBrokerGroupEvent(a3);
          if (!APBrokerGroupAddOrUpdateBroker(v25, a2))
          {
            v11 = *(a3 + 224);
            if (!v11)
            {
              goto LABEL_23;
            }

            v12 = *(a3 + 232);
            if (v12)
            {
              if (!CFEqual(cf1, v12))
              {
                goto LABEL_23;
              }

              v11 = *(a3 + 224);
            }

            _APBrokerManagerAuthenticateBrokerGroup(a3, v25, v11);
LABEL_23:
            if (*(a3 + 272))
            {
              v13 = *(a3 + 256);
              if (!v13 || CFEqual(cf1, v13))
              {
                _APBrokerManagerGetInfoFromBrokerGroup(a3, v25);
              }
            }

            if (*(a3 + 137))
            {
              APBrokerGroupStartReceiverPolling(v25);
            }

            goto LABEL_29;
          }
        }

LABEL_59:
        APSLogErrorAt();
        goto LABEL_29;
      }

      v21 = v8;
      CFRetain(v8);
      FigSimpleMutexCheckIsLockedOnThisThread();
      if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APBrokerManager, "void _APBrokerManagerFireBrokerGroupUpdated(APBrokerManagerRef, APBrokerGroupRef)", 33554462, "[%{ptr}] BrokerGroup [%{ptr}] updated\n", a3, v21);
      }

      _APBrokerManagerFireBrokerGroupEvent(a3);
      if (APBrokerGroupAddOrUpdateBroker(v21, a2))
      {
        goto LABEL_59;
      }
    }

LABEL_29:
    FigSimpleMutexUnlock();
    v14 = v25;
    if (!v25)
    {
LABEL_45:
      if (cf1)
      {
        CFRelease(cf1);
      }

      return;
    }

LABEL_44:
    CFRelease(v14);
    goto LABEL_45;
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (*(a3 + 136))
  {
    v15 = _APBrokerManagerRemoveAllBrokerGroups(a3);
    if (v15)
    {
      _APBrokerManagerHandleBonjourEvent_cold_1(v15);
    }
  }

  FigSimpleMutexUnlock();
}

uint64_t _APBrokerManagerHandleBrokeredReceiversChanged(uint64_t a1, void *a2)
{
  GroupID = APBrokerGroupGetGroupID(a1);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  CFRetain(a2);
  CFRetain(GroupID);
  v4 = a2[11];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a2;
  v6[5] = GroupID;
  dispatch_async(v4, v6);
  return FigSimpleMutexUnlock();
}

void _APBrokerManagerUpdateBrokerGroupReceiversWithList(uint64_t a1, const void *a2, uint64_t a3)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  Value = CFDictionaryGetValue(*(a1 + 120), a2);
  if (Value && (v7 = CFRetain(Value)) != 0)
  {
    v8 = v7;
    v9 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      _APBrokerManagerUpdateBrokerGroupReceiversWithList_cold_2();
      return;
    }

    v8 = Mutable;
    CFDictionarySetValue(*(a1 + 120), a2, Mutable);
  }

  v11 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v11)
  {
    v12 = v11;
    CFDictionaryApplyBlock();
    CFDictionaryApplyBlock();
    if (a3)
    {
      CFDictionaryApplyBlock();
    }

    CFRelease(v12);
  }

  else
  {
    _APBrokerManagerUpdateBrokerGroupReceiversWithList_cold_1();
  }

  CFRelease(v8);
}

CFTypeRef *BonjourDiscoveryDelegateSetup(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v5)
  {
    v6 = BonjourBrowser_CreateEx();
    v7 = v6;
    if (v6)
    {
      BonjourDiscoveryDelegateSetup_cold_1(v6, v5);
      v5 = 0;
    }

    else
    {
      BonjourBrowser_SetEventHandler();
    }
  }

  else
  {
    BonjourDiscoveryDelegateSetup_cold_2();
    v7 = -6728;
  }

  if (a4)
  {
    *a4 = v7;
  }

  return v5;
}

void BonjourDiscoveryDelegateCleanup(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      BonjourBrowser_Stop();
      CFRelease(*a2);
    }

    free(a2);
  }
}

uint64_t healthReporter_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTSessionHealthReporterCreate(const __CFAllocator *a1, const __CFString *a2, const void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v17 = 4294895125;
    APTSessionHealthReporterCreate_cold_4();
    return v17;
  }

  if (_MergedGlobals_0 != -1)
  {
    APTSessionHealthReporterCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APTSessionHealthReporterCreate_cold_3();
    return 4294895126;
  }

  v13 = Instance;
  Instance[1] = 0u;
  v14 = Instance + 1;
  Instance[4] = 0u;
  Instance[5] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  if (gLogCategory_APTSessionHealthReporter <= 30 && (gLogCategory_APTSessionHealthReporter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTSessionHealthReporter, "OSStatus APTSessionHealthReporterCreate(CFAllocatorRef, CFStringRef, CFStringRef, APSNetworkAddressRef, uint16_t, APTSessionHealthReporterRef *)", 33554462, "APTSessionHealthReporter %{ptr} created with name %@\n", v13, a3);
  }

  arc4random_buf(v14, 8uLL);
  if (a2)
  {
    if (CFStringGetCString(a2, v13 + 76, 17, 0x8000100u))
    {
      v15 = if_nametoindex(v13 + 76);
      *(v13 + 18) = v15;
      if (v15)
      {
        goto LABEL_12;
      }

      v19 = "Failed to map interface name to index";
      v20 = 169;
    }

    else
    {
      v19 = "Invalid local interface name";
      v20 = 166;
    }

    APTSessionHealthReporterCreate_cold_2(v20, v19, v13, v21);
    return v21[0];
  }

LABEL_12:
  if (a4)
  {
    APSNetworkAddressGetSocketAddr();
    v16 = *&v21[3];
    *(v13 + 24) = *v21;
    *(v13 + 36) = v16;
    SockAddrToString();
    *(v13 + 7) = CFStringCreateWithFormat(a1, 0, @"rtsp://%s:%d/", v21, a5);
  }

  *(v13 + 8) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v17 = 0;
  *a6 = v13;
  return v17;
}

uint64_t APTSessionHealthReporterReportNetworkStatus(uint64_t a1, int a2)
{
  v3 = 430081;
  if (a2 != 1)
  {
    if (a2 != 2)
    {
      return 0;
    }

    v3 = 430082;
  }

  if (!*(a1 + 56))
  {
    v9 = 4294895122;
    APTSessionHealthReporterReportNetworkStatus_cold_12();
LABEL_40:
    APSLogErrorAt();
    return v9;
  }

  if (!*(a1 + 64))
  {
    v9 = 4294895122;
    APTSessionHealthReporterReportNetworkStatus_cold_11();
    goto LABEL_40;
  }

  if (healthReporter_getSymptomReporter_onceToken != -1)
  {
    APTSessionHealthReporterReportNetworkStatus_cold_1();
  }

  if (!healthReporter_getSymptomReporter_symptomReporter && (APTSessionHealthReporterReportNetworkStatus_cold_2(&v12) & 1) == 0)
  {
    v9 = v12;
    goto LABEL_40;
  }

  v4 = symptom_new();
  if (v4)
  {
    v5 = v4;
    if (symptom_set_qualifier())
    {
      APTSessionHealthReporterReportNetworkStatus_cold_3(&v12);
    }

    else if (symptom_set_qualifier())
    {
      APTSessionHealthReporterReportNetworkStatus_cold_4(&v12);
    }

    else if (symptom_set_additional_qualifier())
    {
      APTSessionHealthReporterReportNetworkStatus_cold_5(&v12);
    }

    else
    {
      v6 = healthReporter_setStringSymptomQualifier(v5, 1, *(a1 + 56));
      if (v6)
      {
        v9 = v6;
        APTSessionHealthReporterReportNetworkStatus_cold_6(v6);
        goto LABEL_40;
      }

      v7 = healthReporter_setStringSymptomQualifier(v5, 2, *(a1 + 64));
      if (v7)
      {
        v9 = v7;
        APTSessionHealthReporterReportNetworkStatus_cold_7(v7);
        goto LABEL_40;
      }

      v13 = 0;
      v12 = 0;
      if (!strcmp((a1 + 76), "awdl0"))
      {
        PeerMACAddress = GetPeerMACAddress();
        if (PeerMACAddress)
        {
          v9 = PeerMACAddress;
          APTSessionHealthReporterReportNetworkStatus_cold_8(PeerMACAddress);
LABEL_39:
          APSLogErrorAt();
          goto LABEL_40;
        }

        if (symptom_set_additional_qualifier())
        {
          APSLogErrorAt();
          v11 = APSSignalErrorAt();
          if (v11)
          {
            v9 = v11;
            goto LABEL_39;
          }
        }
      }

      if (!symptom_send())
      {
        if (gLogCategory_APTSessionHealthReporter <= 50 && (gLogCategory_APTSessionHealthReporter != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTSessionHealthReporter, "OSStatus healthReporter_sendSymptom(APTSessionHealthReporterRef, symptom_ident_t)", 33554482, "APTSessionHealthReporter[%{ptr}] Sent symptom %x: deviceName = %@, sessionID = %llu, interfaceIndex = %d, remoteURL = %@\n", a1, v3, *(a1 + 64), *(a1 + 16), *(a1 + 72), *(a1 + 56));
        }

        return 0;
      }

      APTSessionHealthReporterReportNetworkStatus_cold_9(&v12);
    }
  }

  else
  {
    APTSessionHealthReporterReportNetworkStatus_cold_10(&v12);
  }

  v9 = v12;
  if (v12)
  {
    goto LABEL_40;
  }

  return v9;
}

void healthReporter_Finalize(uint64_t a1)
{
  if (gLogCategory_APTSessionHealthReporter <= 30 && (gLogCategory_APTSessionHealthReporter != -1 || _LogCategory_Initialize()))
  {
    healthReporter_Finalize_cold_1(a1);
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

uint64_t healthReporter_setStringSymptomQualifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    healthReporter_setStringSymptomQualifier_cold_2(&v6);
LABEL_7:
    v4 = v6;
    goto LABEL_4;
  }

  strlen(CStringPtrAndBufferToFree);
  if (symptom_set_additional_qualifier())
  {
    healthReporter_setStringSymptomQualifier_cold_1(&v6);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_4:
  free(0);
  return v4;
}

uint64_t __healthReporter_getSymptomReporter_block_invoke()
{
  result = symptom_framework_init();
  healthReporter_getSymptomReporter_symptomReporter = result;
  return result;
}

void sub_23D2DBD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D2DE148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void bonjourCacheHomeKit_introspector_cmd_showInfo(void *a1, uint64_t a2)
{
  v3 = [a1 copyDescription];
  FPrintF(a2, "%@", v3);
}

void bonjourCacheHomeKit_introspector_cmd_purgeCache(void *a1, uint64_t a2)
{
  v4 = [a1 internalQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __bonjourCacheHomeKit_introspector_cmd_purgeCache_block_invoke;
  v5[3] = &unk_278BC72B0;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void bonjourCacheHomeKit_introspector_cmd_applyEvictions(void *a1, uint64_t a2)
{
  v4 = [a1 internalQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __bonjourCacheHomeKit_introspector_cmd_applyEvictions_block_invoke;
  v5[3] = &unk_278BC72B0;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void bonjourCacheHomeKit_introspector_cmd_injectDevices(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    bonjourCacheHomeKit_introspector_cmd_injectDevices_cold_1(a1);
  }

  if (a3 <= 1)
  {
    v12 = "err: missing file argument\n";
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithCString:*(a4 + 8) encoding:4];
    if ([v8 length])
    {
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
      if (!v9)
      {
        FPrintF(a2, "err: failed to read file: %@\n", v8);
        return;
      }

      v10 = [v9 objectForKeyedSubscript:@"Items"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        FPrintF(a2, "err: invalid value for key: %'@\n", @"Items");
        return;
      }

      if ([v10 count])
      {
        v11 = [a1 internalQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __bonjourCacheHomeKit_introspector_cmd_injectDevices_block_invoke;
        block[3] = &unk_278BC72D8;
        block[5] = v10;
        block[6] = a2;
        block[4] = a1;
        dispatch_sync(v11, block);
        return;
      }

      v12 = "err: no items to add\n";
    }

    else
    {
      v12 = "err: invalid file argument\n";
    }
  }

  FPrintF(a2, v12);
}

void *__bonjourCacheHomeKit_introspector_cmd_purgeCache_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0;
  v3 = [*(a1 + 32) getCacheDirectoryURLWithParentDirectory:@"APBonjourCacheHomeKit" creatingIfNecessary:0];
  if (!v3)
  {
    result = __bonjourCacheHomeKit_introspector_cmd_purgeCache_block_invoke_cold_1(&v7, &v8);
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    return FPrintF(*(a1 + 40), "ERROR: %@\n", v6);
  }

  v4 = v3;
  FPrintF(*(a1 + 40), "Purging directory URL: %@\n", v3);
  if ([v2 fileExistsAtPath:{objc_msgSend(objc_msgSend(v4, "standardizedURL"), "path")}])
  {
    [v2 removeItemAtURL:v4 error:&v7];
  }

  [*(a1 + 32) forceReportCachedDevicesLost];
  [*(a1 + 32) loadCache];
  result = [*(a1 + 32) forceReportCachedDevicesFound];
  v6 = v7;
  if (v7)
  {
    return FPrintF(*(a1 + 40), "ERROR: %@\n", v6);
  }

  return result;
}

uint64_t __bonjourCacheHomeKit_introspector_cmd_applyEvictions_block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "cachedDevices")];
  [*(a1 + 32) checkAndEvictCachedDevicesIfNecessary];
  return FPrintF(*(a1 + 40), "Cache entries evicted: %lu\n", v2 - [objc_msgSend(*(a1 + 32) "cachedDevices")]);
}

void *__bonjourCacheHomeKit_introspector_cmd_injectDevices_block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentNetworkSignature];
  if (v2)
  {
    v3 = v2;
    v21 = @"networkSignature";
    v22[0] = v2;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    FPrintF(*(a1 + 48), "Injecting into cache for network signature: %@\n", v3);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = *(a1 + 40);
    result = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [APBonjourCacheHomeKit prepareDeviceInfo:v10];
            if (v11)
            {
              v12 = v11;
              v13 = [v11 objectForKeyedSubscript:@"name"];
              FPrintF(*(a1 + 48), "Injecting device: %@ %'@\n", v9, v13);
              if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "void bonjourCacheHomeKit_introspector_cmd_injectDevices(const void *, FILE *, int, char **)_block_invoke", 33554482, "[%{ptr}] BonjourCacheHomeKit_InjectDevices: %@ %'@", *(a1 + 32), v9, v13);
              }

              [*(a1 + 32) cacheDevice:{+[APBonjourCacheHomeKitItem itemWithDeviceInfo:userInfo:](APBonjourCacheHomeKitItem, "itemWithDeviceInfo:userInfo:", v12, v4)}];
            }

            else
            {
              FPrintF(*(a1 + 48), "err: failed to prepare info: %@\n", v9);
            }
          }

          else
          {
            FPrintF(*(a1 + 48), "err: item is not a dictionary: %@\n", v9);
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        result = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  else
  {
    v14 = *(a1 + 48);

    return FPrintF(v14, "err: current network signature is unavailable\n");
  }

  return result;
}

uint64_t APBrokerKeychainUtilsStoreAuthToken(__CFString *a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  cf = 0;
  v17 = 0;
  if (!a1)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_8(&v17);
LABEL_27:
    v9 = 0;
LABEL_28:
    v11 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_7(&v17);
    goto LABEL_27;
  }

  if (!a3)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_6(&v17);
    goto LABEL_27;
  }

  if (!a4)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_5(&v17);
    goto LABEL_27;
  }

  if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerKeychainUtils, "OSStatus APBrokerKeychainUtilsStoreAuthToken(CFStringRef, CFStringRef, CFStringRef, CFNumberRef)", 33554462, "Storing authToken=%@ with TTL=%@s for brokerGroupID=%@ receiverGroupUUID=%@\n", a3, a4, a1, a2);
  }

  KeychainItemID = APBrokerKeychainUtilsCreateKeychainItemID(a1, a2, &cf);
  if (KeychainItemID)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_1(KeychainItemID, &v17);
    goto LABEL_27;
  }

  v9 = objc_opt_new();
  if (!v9)
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_4(&v17);
    goto LABEL_28;
  }

  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [v10 setAccessGroup:@"com.apple.airplay"];
    [v11 setAccessibleType:2];
    [v11 setIdentifier:cf];
    v18[0] = @"authToken";
    v18[1] = @"authTokenTTL";
    v19[0] = a3;
    v19[1] = a4;
    [v11 setMetadata:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v19, v18, 2)}];
    [v11 setType:@"APBroker"];
    [v9 addOrUpdateOrReAddItem:v11 flags:0 logCategory:&gLogCategory_APBrokerKeychainUtils logLabel:@"Broker auth token" error:&v17];
    v12 = NSErrorToOSStatus();
    if (v12)
    {
      APBrokerKeychainUtilsStoreAuthToken_cold_2(v12);
    }
  }

  else
  {
    APBrokerKeychainUtilsStoreAuthToken_cold_3(&v17);
  }

LABEL_14:

  if (cf)
  {
    CFRelease(cf);
  }

  v13 = v17;
  if (v17)
  {
    if (gLogCategory_APBrokerKeychainUtils <= 30)
    {
      if (gLogCategory_APBrokerKeychainUtils != -1 || (v14 = _LogCategory_Initialize(), v13 = v17, v14))
      {
        LogPrintF(&gLogCategory_APBrokerKeychainUtils, "OSStatus APBrokerKeychainUtilsStoreAuthToken(CFStringRef, CFStringRef, CFStringRef, CFNumberRef)", 33554462, "Failed to store authToken=%@ for brokerGroupID=%@ receiverGroupUUID=%@. Error=%@\n", a3, a1, a2, v13);
      }
    }
  }

  return NSErrorToOSStatus();
}