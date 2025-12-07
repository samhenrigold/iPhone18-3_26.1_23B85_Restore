@interface APConnectivityHelperHandleCWFEventExternal
@end

@implementation APConnectivityHelperHandleCWFEventExternal

void ___APConnectivityHelperHandleCWFEventExternal_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [(__CFDictionary *)v3 type];
  if (v2[232])
  {
    goto LABEL_42;
  }

  switch(v4)
  {
    case 1:
      if (v2[85])
      {
        if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
        {
          OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperHandleWiFiPowerEventInternal(APConnectivityHelperRef)", v6, "[%{ptr}] WiFi power event.\n");
        }

        if (_APConnectivityHelperDispatchEvent(v2, 2, 0))
        {
          APSLogErrorAt();
          if (gLogCategory_APConnectivityHelper <= 90)
          {
            OUTLINED_FUNCTION_2_9();
            if (!v9 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperHandleCWFEvent(APConnectivityHelperRef, CWFEvent *)", &gLogCategory_AsyncCnxAirPlayHTTP + 50, "[%{ptr}] Failed to handle Power Change event.\n", v2, v13);
            }
          }
        }
      }

      break;
    case 6:
      if (v2[81])
      {
        v7 = [(__CFDictionary *)v3 info];
        if (_APConnectivityHelperHandleWiFiLinkChangedInternal(v2, v7, v8))
        {
          if (gLogCategory_APConnectivityHelper <= 90)
          {
            OUTLINED_FUNCTION_2_9();
            if (!v9 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperHandleCWFEvent(APConnectivityHelperRef, CWFEvent *)", (v3 + 50), "[%{ptr}] Failed to handle Link Changed event.\n", v2, v13);
            }
          }
        }
      }

      break;
    case 29:
      if (!v2[83])
      {
        break;
      }

      v13 = v2;
      if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
      {
        OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperHandleLinkDownDebounceFailedInternal(APConnectivityHelperRef)", v6, "[%{ptr}] Wifi Link Debounce Failed");
      }

      v10 = CFGetAllocator(v2);
      Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v15 = 0;
        _APConnectivityHelperPopulateCurrentWiFiNetworkInfo(&v13);
        if (v15)
        {
          APSLogErrorAt();
          v11 = 1;
          v3 = Mutable;
        }

        else
        {
          v3 = Mutable;
          if (_APConnectivityHelperDispatchEvent(v2, 9, Mutable))
          {
            APSLogErrorAt();
            v11 = 0;
          }

          else
          {
            v11 = 1;
          }
        }

        if (v3)
        {
          CFRelease(v3);
        }

        if (v11)
        {
          break;
        }
      }

      else
      {
        APSLogErrorAt();
      }

      if (gLogCategory_APConnectivityHelper <= 90)
      {
        OUTLINED_FUNCTION_2_9();
        if (!v9 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperHandleCWFEvent(APConnectivityHelperRef, CWFEvent *)", (v3 + 50), "[%{ptr}] Failed to handle LinkDown Debounce Failed event.\n", v2, v13);
        }
      }

      break;
    default:
      if (v4 == 10 && (v2[88] || v2[209]))
      {
        if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
        {
          OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperHandleWiFiManagerDeviceAttachmentInternal(APConnectivityHelperRef)", v6, "[%{ptr}] Device attachment event.\n");
        }

        if (v2[88])
        {
          _APConnectivityHelperTrySettingWiFiDevice(v2, v5, v6);
        }

        if (v2[209])
        {
          _APConnectivityHelperTrySettingAWDLDevice(v2, v5, v6);
        }
      }

      break;
  }

LABEL_42:

  v12 = *(a1 + 40);

  CFRelease(v12);
}

@end