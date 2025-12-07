@interface APAdvertiserHandleConnectivityHelperEvent
@end

@implementation APAdvertiserHandleConnectivityHelperEvent

void ___APAdvertiserHandleConnectivityHelperEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 7)
  {
    v4 = *(a1 + 32);
    if (!*(v4 + 49))
    {
      if (gLogCategory_APAdvertiser <= 50)
      {
        if (gLogCategory_APAdvertiser != -1 || (v8 = _LogCategory_Initialize(), v4 = *(a1 + 32), v8))
        {
          LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserHandleConnectivityHelperEvent(APConnectivityHelperRef, APConnectivityHelperEventType, CFDictionaryRef, CFTypeRef)_block_invoke", 33554482, "[%{ptr}] AWDL Available\n", v4);
          v4 = *(a1 + 32);
        }
      }

      *(v4 + 49) = 1;
      _APAdvertiserUpdate(v4);
      if (APConnectivityHelperDeregisterForEvent())
      {
        goto LABEL_24;
      }
    }
  }

  else if (v2 == 1)
  {
    v3 = *(a1 + 32);
    if (!*(v3 + 48))
    {
      if (gLogCategory_APAdvertiser <= 50)
      {
        if (gLogCategory_APAdvertiser != -1 || (v7 = _LogCategory_Initialize(), v3 = *(a1 + 32), v7))
        {
          LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserHandleConnectivityHelperEvent(APConnectivityHelperRef, APConnectivityHelperEventType, CFDictionaryRef, CFTypeRef)_block_invoke", 33554482, "[%{ptr}] WiFi Available\n", v3);
          v3 = *(a1 + 32);
        }
      }

      *(v3 + 48) = 1;
      _APAdvertiserUpdate(v3);
      if (APConnectivityHelperDeregisterForEvent())
      {
LABEL_24:
        APSLogErrorAt();
      }
    }
  }

  else if (gLogCategory_APAdvertiser <= 40 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    v5 = *(a1 + 32);
    EventString = APConnectivityHelperGetEventString();
    LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserHandleConnectivityHelperEvent(APConnectivityHelperRef, APConnectivityHelperEventType, CFDictionaryRef, CFTypeRef)_block_invoke", 33554472, "[%{ptr}] Received unhandled APConnectivityHelper event: %s", v5, EventString);
  }

  CFRelease(*(a1 + 32));
  v9 = *(a1 + 40);

  CFRelease(v9);
}

@end