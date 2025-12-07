@interface APBrowserRapportManager
@end

@implementation APBrowserRapportManager

void __APBrowserRapportManager_ensureScanningStarted_block_invoke_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  v3 = __APBrowserRapportManager_ensureScanningStarted_block_invoke_6;
  v4 = &unk_278BC8108;
  v5 = v0;
  APBrowserRapportManager_runOnQueue(v1, v2);
}

uint64_t __APBrowserRapportManager_runOnQueue_block_invoke(uint64_t result)
{
  if (!*(*(result + 40) + 51))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __APBrowserRapportManager_ensureScanningStarted_block_invoke_6(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (gLogCategory_APBrowserRapportManager <= 90)
    {
      if (gLogCategory_APBrowserRapportManager != -1)
      {
        return __APBrowserRapportManager_ensureScanningStarted_block_invoke_6_cold_1(v1);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __APBrowserRapportManager_ensureScanningStarted_block_invoke_6_cold_1(v1);
      }
    }
  }

  return result;
}

void __APBrowserRapportManager_ensureScanningStarted_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 32) idsDeviceIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = [v2 effectiveIdentifier];
      v7 = [v2 model];
      v8 = [v2 mediaRouteIdentifier];
      if (([v7 containsString:@"Mac"] & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"RealityDevice") & 1) == 0 && (!APSCanSendToAltReceiver() || (objc_msgSend(v7, "hasPrefix:", @"iPhone") & 1) == 0 && !objc_msgSend(v7, "hasPrefix:", @"iPad")))
      {
        OUTLINED_FUNCTION_5_10();
        return;
      }

      v9 = [v2 statusFlags];
      v10 = [v2 serviceTypes];
      if (v10)
      {
        v52 = [objc_msgSend(v2 "serviceTypes")];
      }

      else
      {
        v52 = 1;
      }

      v51 = a2;
      CFDictionaryGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      v12 = TypedValue;
      if (TypedValue)
      {
        CFRetain(TypedValue);
      }

      v13 = (v9 >> 19) & 1;
      if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
      {
        v14 = v6;
        if (v12)
        {
          v15 = "Updating";
        }

        else
        {
          v15 = "Adding";
        }

        v16 = [v2 name];
        v17 = [v2 model];
        v18 = "yes";
        if (!v52)
        {
          v18 = "no";
        }

        if (!v10)
        {
          v18 = "?";
        }

        v48 = v15;
        v6 = v14;
        LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_addOrUpdateDevice(APBrowserRapportManagerRef, RPCompanionLinkDevice *, Boolean)", 33554472, "[%@:%@] %s device - name: %'@ model: %@ flags: %llx relationship: %d systemPairingID: %@ serviceAvailable: %s\n", v5, v14, v48, v16, v17, v9, (v9 >> 19) & 1, v8, v18);
      }

      v19 = MEMORY[0x277CBED28];
      if (v12)
      {
        CFSetGetTypeID();
        v20 = CFDictionaryGetTypedValue();
        if (v20)
        {
          v21 = v6;
          v49 = v20;
          v50 = v5;
          CFRetain(v20);
          Int64 = CFDictionaryGetInt64();
          v23 = CFDictionaryGetInt64();
          v24 = CFDictionaryGetInt64() != 0;
          CFStringGetTypeID();
          v25 = CFDictionaryGetTypedValue();
          if (v13 == Int64)
          {
            v26 = 0;
          }

          else
          {
            CFDictionarySetInt64();
            v26 = 1;
          }

          v36 = v51;
          if (v8 && v8 != v25 && (!v25 || !CFEqual(v8, v25)))
          {
            FigCFDictionarySetValue();
            v26 = 1;
          }

          if (v10)
          {
            v6 = v21;
            if (!v23)
            {
              CFDictionarySetValue(v12, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
              v26 = 1;
            }

            v34 = v52;
            v29 = v49;
            if (v52 == v24)
            {
              v5 = v50;
            }

            else
            {
              v38 = MEMORY[0x277CBED10];
              if (v52)
              {
                v38 = MEMORY[0x277CBED28];
              }

              CFDictionarySetValue(v12, @"isServiceAvailable", *v38);
              v5 = v50;
              if (v52)
              {
                CFSetRemoveAllValues(v49);
                v34 = 1;
              }

              v26 = 1;
            }
          }

          else
          {
            v34 = v24;
            v6 = v21;
            v29 = v49;
            v5 = v50;
          }

          CFStringGetTypeID();
          v37 = CFDictionaryGetTypedValue();
          if (!v26)
          {
            goto LABEL_59;
          }

          goto LABEL_55;
        }

        goto LABEL_89;
      }

      v27 = *MEMORY[0x277CBECE8];
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
      if (Mutable)
      {
        v29 = Mutable;
        v30 = CFDictionaryCreateMutable(v27, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v30)
        {
          v12 = v30;
          CFDictionarySetValue(v30, @"rapportDeviceID", v5);
          CFDictionarySetInt64();
          v31 = *v19;
          v32 = *MEMORY[0x277CBED10];
          if (v10)
          {
            v33 = v31;
          }

          else
          {
            v33 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(v12, @"isServiceAvailabilityKnown", v33);
          v34 = v52;
          if (v52)
          {
            v35 = v31;
          }

          else
          {
            v35 = v32;
          }

          CFDictionarySetValue(v12, @"isServiceAvailable", v35);
          CFDictionarySetValue(v12, @"effectiveIDsAttempted", v29);
          FigCFDictionarySetValue();
          v36 = v51;
          CFDictionarySetValue(*(v51 + 80), v5, v12);
          v37 = 0;
LABEL_55:
          if (v37 | v8)
          {
            v39 = APBrowserRapportManager_sendDeviceEvent(v36, v12);
            if (v39)
            {
              v43 = v39;
              APSLogErrorAt();
              if (gLogCategory_APBrowserRapportManager <= 90 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_addOrUpdateDevice(APBrowserRapportManagerRef, RPCompanionLinkDevice *, Boolean)", 33554522, "[%@:%@] Error sending device event: %#m\n", v5, v6, v43);
              }

              goto LABEL_65;
            }
          }

          else
          {
            v37 = 0;
          }

LABEL_59:
          if (v37 | v8)
          {
            if (gLogCategory_APBrowserRapportManager > 30 || gLogCategory_APBrowserRapportManager == -1 && !OUTLINED_FUNCTION_8_0(&gLogCategory_APBrowserRapportManager))
            {
              goto LABEL_65;
            }

            v45 = v5;
            v46 = v6;
            v42 = "[%@:%@] Bonjour correlation ID already known\n";
          }

          else if (CFDictionaryGetValue(v12, @"directClient"))
          {
            if (gLogCategory_APBrowserRapportManager > 30 || gLogCategory_APBrowserRapportManager == -1 && !OUTLINED_FUNCTION_8_0(&gLogCategory_APBrowserRapportManager))
            {
              goto LABEL_65;
            }

            v45 = v5;
            v46 = v6;
            v42 = "[%@:%@] Already has a pending request\n";
          }

          else
          {
            if (CFSetContainsValue(v29, v6))
            {
              goto LABEL_65;
            }

            if (v34)
            {
              if (APBrowserRapportManager_sendGetInfo(v36, v2, v5, v6))
              {
                APSLogErrorAt();
              }

              goto LABEL_65;
            }

            if (gLogCategory_APBrowserRapportManager > 30 || gLogCategory_APBrowserRapportManager == -1 && !OUTLINED_FUNCTION_8_0(&gLogCategory_APBrowserRapportManager))
            {
LABEL_65:
              CFRelease(v29);
LABEL_66:
              OUTLINED_FUNCTION_5_10();

              CFRelease(v40);
              return;
            }

            v45 = v5;
            v46 = v6;
            v42 = "[%@:%@] Service not supported\n";
          }

          LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_addOrUpdateDevice(APBrowserRapportManagerRef, RPCompanionLinkDevice *, Boolean)", 33554462, v42, v45, v46, v47);
          goto LABEL_65;
        }

LABEL_89:
        APSLogErrorAt();
        goto LABEL_66;
      }
    }
  }

  OUTLINED_FUNCTION_5_10();

  APSLogErrorAt();
}

void __APBrowserRapportManager_dispatchEvent_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __APBrowserRapportManager_ensureScanningStarted_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __APBrowserRapportManager_ensureScanningStarted_block_invoke_2;
  v3[3] = &unk_278BC8108;
  v3[4] = a2;
  APBrowserRapportManager_runOnQueue(v2, v3);
}

uint64_t ___APBrowserRapportManager_getActiveManagers_block_invoke()
{
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    v1 = result;
    if (gLogCategory_APBrowserRapportManager <= 100)
    {
      if (gLogCategory_APBrowserRapportManager != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = ___APBrowserRapportManager_getActiveManagers_block_invoke_cold_1(v1);
      }
    }

    __break(1u);
  }

  return result;
}

void __APBrowserRapportManager_sendGetInfo_block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    v6 = @"Success";
    if (v5)
    {
      v6 = v5;
    }

    LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_handleDirectClientActivation(APBrowserRapportManagerRef, CFStringRef, CFStringRef, CFErrorRef)", 33554472, "[%@:%@] Direct client activation callback: %@\n", v3, v4, v6);
  }

  if (!v3)
  {
    __APBrowserRapportManager_sendGetInfo_block_invoke_2_cold_3();
LABEL_30:

    APBrowserRapportManager_tryNextEffectiveID(a2, v3);
    return;
  }

  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    __APBrowserRapportManager_sendGetInfo_block_invoke_2_cold_2();
    goto LABEL_30;
  }

  v8 = TypedValue;
  if (!*(a2 + 48))
  {
LABEL_29:
    CFDictionaryRemoveValue(v8, @"directClient");
    goto LABEL_30;
  }

  if (v5)
  {
    if (CFErrorGetCode(v5) == -71165)
    {
      CFDictionarySetValue(v8, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
      CFDictionarySetValue(v8, @"isServiceAvailable", *MEMORY[0x277CBED10]);

      CFDictionaryRemoveValue(v8, @"directClient");
      return;
    }

    goto LABEL_29;
  }

  v9 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(TypedValue, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v8, @"isServiceAvailable", v9);
  if (!CFDictionaryGetValue(v8, @"directClient"))
  {
    v15 = 784;
LABEL_28:
    __APBrowserRapportManager_sendGetInfo_block_invoke_2_cold_1(v15);
    goto LABEL_29;
  }

  Value = APSWrapperGetValue();
  if (!Value)
  {
    v15 = 787;
    goto LABEL_28;
  }

  v11 = Value;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v15 = 790;
    goto LABEL_28;
  }

  v13 = Mutable;
  if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_handleDirectClientActivation(APBrowserRapportManagerRef, CFStringRef, CFStringRef, CFErrorRef)", 33554472, "[%@:%@] Sending getinfo request\n", v3, v4);
  }

  v14 = *(a2 + 40);
  CFRetain(v3);
  CFRetain(v4);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __APBrowserRapportManager_handleDirectClientActivation_block_invoke;
  v16[3] = &__block_descriptor_56_e51_v32__0__NSDictionary_8__NSDictionary_16__NSError_24l;
  v16[4] = v14;
  v16[5] = v3;
  v16[6] = v4;
  [v11 sendRequestID:@"com.apple.airplay.discovery.getinfo" request:v13 options:0 responseHandler:v16];
  CFRelease(v13);
}

void __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[4];
  v6 = a1[6];
  if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
  {
    v7 = @"Success";
    if (v6)
    {
      v7 = v6;
    }

    LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_handleGetInfoResponse(APBrowserRapportManagerRef, CFStringRef, CFStringRef, CFDictionaryRef, CFDictionaryRef, CFErrorRef)", 33554472, "[%@:%@] Received getinfo response: %@\n", v3, v4, v7);
  }

  if (v3)
  {
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v9 = TypedValue;
      if (*(a2 + 48))
      {
        if (v6)
        {
          if (CFErrorGetCode(v6) == -71165)
          {
            CFDictionarySetValue(v9, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
            CFDictionarySetValue(v9, @"isServiceAvailable", *MEMORY[0x277CBED10]);
            v10 = 0;
            v11 = 1;
LABEL_33:
            CFDictionaryRemoveValue(v9, @"directClient");
            goto LABEL_34;
          }
        }

        else
        {
          v12 = *MEMORY[0x277CBED28];
          CFDictionarySetValue(TypedValue, @"isServiceAvailabilityKnown", *MEMORY[0x277CBED28]);
          CFDictionarySetValue(v9, @"isServiceAvailable", v12);
          if (v5)
          {
            if (CFDictionaryContainsKey(v9, @"bonjourDeviceID"))
            {
              if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_handleGetInfoResponse(APBrowserRapportManagerRef, CFStringRef, CFStringRef, CFDictionaryRef, CFDictionaryRef, CFErrorRef)", 33554472, "[%@:%@] Bonjour device ID already known", v3, v4);
              }
            }

            else
            {
              CFStringGetTypeID();
              v13 = CFDictionaryGetTypedValue();
              if (v13)
              {
                v14 = v13;
                if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_handleGetInfoResponse(APBrowserRapportManagerRef, CFStringRef, CFStringRef, CFDictionaryRef, CFDictionaryRef, CFErrorRef)", 33554472, "[%@:%@] Received bonjour device ID %@\n", v3, v4, v14);
                }

                CFDictionarySetValue(v9, @"bonjourDeviceID", v14);
                v15 = APBrowserRapportManager_sendDeviceEvent(a2, v9);
                if (v15)
                {
                  __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_1(v15);
                }

                v11 = 0;
                goto LABEL_32;
              }

              __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_2();
            }
          }

          else
          {
            __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_3();
          }
        }
      }

      v11 = 1;
LABEL_32:
      v10 = 1;
      goto LABEL_33;
    }

    __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_4();
  }

  else
  {
    __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2_cold_5();
  }

  v10 = 1;
  v11 = 1;
LABEL_34:
  if (v10 && v11)
  {

    APBrowserRapportManager_tryNextEffectiveID(a2, v3);
  }
}

uint64_t __APBrowserRapportManager_copyShowInfo_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"rapportDeviceID");
  v6 = CFDictionaryGetValue(theDict, @"bonjourDeviceID");
  v7 = CFDictionaryGetValue(theDict, @"systemPairingID");
  v8 = CFDictionaryGetValue(theDict, @"deviceRelationship");
  return CFStringAppendF(*(a1 + 32), "    %@: discovery ID: %-17@ systemPairing ID: %-36@ relationship: %@\n", Value, v6, v7, v8);
}

void __APBrowserRapportManager_ensureScanningStarted_block_invoke_3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  v3 = __APBrowserRapportManager_ensureScanningStarted_block_invoke_4;
  v4 = &unk_278BC8108;
  v5 = v0;
  APBrowserRapportManager_runOnQueue(v1, v2);
}

uint64_t __APBrowserRapportManager_ensureScanningStarted_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (v2 = [*(a1 + 32) idsDeviceIdentifier]) != 0)
  {
    v3 = v2;
    v4 = [v1 effectiveIdentifier];
    TypeID = CFDictionaryGetTypeID();
    result = OUTLINED_FUNCTION_6_8(TypeID);
    if (result)
    {
      if (gLogCategory_APBrowserRapportManager <= 30)
      {
        if (gLogCategory_APBrowserRapportManager != -1)
        {
          return LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_handleDeviceLost(APBrowserRapportManagerRef, RPCompanionLinkDevice *)", 33554462, "[%@:%@] Lost device\n", v3, v4);
        }

        result = OUTLINED_FUNCTION_8_0(&gLogCategory_APBrowserRapportManager);
        if (result)
        {
          return LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_handleDeviceLost(APBrowserRapportManagerRef, RPCompanionLinkDevice *)", 33554462, "[%@:%@] Lost device\n", v3, v4);
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

void __APBrowserRapportManager_sendGetInfo_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  v5 = __APBrowserRapportManager_sendGetInfo_block_invoke_2;
  v6 = &unk_278BC8198;
  v8 = *(a1 + 40);
  v7 = v2;
  APBrowserRapportManager_runOnQueue(v3, v4);
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

void __APBrowserRapportManager_handleDirectClientActivation_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  v7 = __APBrowserRapportManager_handleDirectClientActivation_block_invoke_2;
  v8 = &unk_278BC81E0;
  v12 = *(a1 + 40);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  APBrowserRapportManager_runOnQueue(v5, v6);
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

@end