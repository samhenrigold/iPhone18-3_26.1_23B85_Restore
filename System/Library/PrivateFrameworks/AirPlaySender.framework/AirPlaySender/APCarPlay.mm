@interface APCarPlay
@end

@implementation APCarPlay

void __APCarPlay_AddAnalyticsValues_block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    *(*(a1[4] + 8) + 24) = [a2 code];
    if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_AddAnalyticsValues_block_invoke_cold_1((a1 + 4), a1, v3);
    }
  }

  else if (IsAppleInternalBuild())
  {
    *(*(a1[5] + 8) + 24) = mach_absolute_time();
    if (gLogCategory_APCarPlayCarServicesInterface <= 50 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_AddAnalyticsValues_block_invoke_cold_2();
    }
  }

  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    v4 = [*(*(a1[6] + 8) + 40) invalidate];
  }

  if (gLogCategory_APCarPlayCarServicesInterface <= 30)
  {
    if (gLogCategory_APCarPlayCarServicesInterface != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      __APCarPlay_AddAnalyticsValues_block_invoke_cold_3(v4, v5, v6);
    }
  }

  *(*(a1[6] + 8) + 40) = 0;
  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[8];
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t __APCarPlay_AddAnalyticsValues_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_11();
  UpTicksToMilliseconds();
  return OUTLINED_FUNCTION_2(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_AddAnalyticsValues(CFDictionaryRef, CFStringRef)_block_invoke", v0, "addAnalyticsValues completion handler successful, took %lu ms (inAnalyticsEventName: %@, inAnalyticsValues:\n%@)\n");
}

void __APCarPlay_AddSignPostTimeInfoToTimeStore_block_invoke(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = IsAppleInternalBuild();
    if (v4)
    {
      *(*(a1[4] + 8) + 24) = mach_absolute_time();
      if (gLogCategory_APCarPlayCarServicesInterface > 50)
      {
        goto LABEL_14;
      }

      if (gLogCategory_APCarPlayCarServicesInterface != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        v4 = __APCarPlay_AddSignPostTimeInfoToTimeStore_block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (gLogCategory_APCarPlayCarServicesInterface > 90)
    {
      goto LABEL_14;
    }

    if (gLogCategory_APCarPlayCarServicesInterface != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      v4 = LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_AddSignPostTimeInfoToTimeStore(CFStringRef, CFDictionaryRef)_block_invoke", 33554522, "sendConnectionEvent failed for %@, error: %@\n", a1[6], a3);
    }
  }

  if (gLogCategory_APCarPlayCarServicesInterface <= 30)
  {
    if (gLogCategory_APCarPlayCarServicesInterface != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      __APCarPlay_AddSignPostTimeInfoToTimeStore_block_invoke_cold_2(v4, v5, v6);
    }
  }

LABEL_14:

  *(*(a1[5] + 8) + 40) = 0;
  v8 = a1[6];
  if (v8)
  {

    CFRelease(v8);
  }
}

intptr_t __APCarPlay_CRFetchInstrumentClusterURLs_block_invoke(void *a1, const void *a2, void *a3)
{
  if ([a3 code])
  {
    if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_CRFetchInstrumentClusterURLs_block_invoke_cold_1(a3);
    }

    *(*(a1[5] + 8) + 24) = [a3 code];
  }

  else
  {
    if (IsAppleInternalBuild() && (*(*(a1[6] + 8) + 24) = mach_absolute_time(), gLogCategory_APCarPlayCarServicesInterface <= 50) && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_CRFetchInstrumentClusterURLs_block_invoke_cold_2();
      if (!a2)
      {
        goto LABEL_6;
      }
    }

    else if (!a2)
    {
      goto LABEL_6;
    }

    *(*(a1[7] + 8) + 24) = CFRetain(a2);
    if (gLogCategory_APCarPlayCarServicesInterface <= 50 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_CRFetchInstrumentClusterURLs_block_invoke_cold_3();
    }
  }

LABEL_6:
  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

intptr_t __APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke(void *a1, const void *a2, void *a3)
{
  if ([a3 code])
  {
    if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke_cold_1(a3);
    }

    *(*(a1[5] + 8) + 24) = [a3 code];
  }

  else
  {
    if (IsAppleInternalBuild() && (*(*(a1[6] + 8) + 24) = mach_absolute_time(), gLogCategory_APCarPlayCarServicesInterface <= 50) && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke_cold_2();
      if (!a2)
      {
        goto LABEL_6;
      }
    }

    else if (!a2)
    {
      goto LABEL_6;
    }

    *(*(a1[7] + 8) + 24) = CFRetain(a2);
    if (gLogCategory_APCarPlayCarServicesInterface <= 50 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke_cold_3(a2, v8, v9);
    }
  }

LABEL_6:
  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

intptr_t __APCarPlay_FetchUIContextMasterURLList_block_invoke(void *a1, const void *a2, void *a3)
{
  if (a3)
  {
    *(*(a1[5] + 8) + 24) = [a3 code];
    if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_FetchUIContextMasterURLList_block_invoke_cold_1();
    }
  }

  else
  {
    if (IsAppleInternalBuild())
    {
      *(*(a1[6] + 8) + 24) = mach_absolute_time();
      if (gLogCategory_APCarPlayCarServicesInterface <= 50 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        __APCarPlay_FetchUIContextMasterURLList_block_invoke_cold_2();
      }
    }

    *(*(a1[7] + 8) + 24) = CFRetain(a2);
    if (gLogCategory_APCarPlayCarServicesInterface <= 50 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_FetchUIContextMasterURLList_block_invoke_cold_3();
    }
  }

  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t __APCarPlay_FetchSessionFeatureKeysWithIdentifier_block_invoke(void *a1, const void *a2, void *a3)
{
  if (a3)
  {
    *(*(a1[5] + 8) + 24) = [a3 code];
    if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_FetchSessionFeatureKeysWithIdentifier_block_invoke_cold_1();
    }
  }

  else
  {
    if (IsAppleInternalBuild())
    {
      *(*(a1[6] + 8) + 24) = mach_absolute_time();
      if (gLogCategory_APCarPlayCarServicesInterface <= 50 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        __APCarPlay_FetchSessionFeatureKeysWithIdentifier_block_invoke_cold_2();
      }
    }

    *(*(a1[7] + 8) + 24) = CFRetain(a2);
    if (gLogCategory_APCarPlayCarServicesInterface <= 50 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlay_FetchSessionFeatureKeysWithIdentifier_block_invoke_cold_3();
    }
  }

  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

uint64_t __APCarPlay_AddSignPostTimeInfoToTimeStore_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_11();
  UpTicksToMilliseconds();
  return OUTLINED_FUNCTION_2(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_AddSignPostTimeInfoToTimeStore(CFStringRef, CFDictionaryRef)_block_invoke", v0, "sendConnectionEvent completion handler successful, took %lu ms\n");
}

uint64_t __APCarPlay_CRFetchInstrumentClusterURLs_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_11();
  UpTicksToMilliseconds();
  return OUTLINED_FUNCTION_2(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_CRFetchInstrumentClusterURLs(CFArrayRef *)_block_invoke", v0, "CRFetchInstrumentClusterURLs completion handler successful, took %lu ms\n");
}

uint64_t __APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_11();
  UpTicksToMilliseconds();
  return OUTLINED_FUNCTION_2(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber(CFDataRef, CFArrayRef, CFArrayRef *)_block_invoke", v0, "CRFetchScaledDisplaysForCertificateSerialNumber completion handler successful, took %lu ms\n");
}

uint64_t __APCarPlay_FetchUIContextMasterURLList_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_11();
  UpTicksToMilliseconds();
  return OUTLINED_FUNCTION_2(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_FetchUIContextMasterURLList(CFArrayRef *)_block_invoke", v0, "fetchUIContextsWithCompletion completion handler successful, took %lu ms\n");
}

@end