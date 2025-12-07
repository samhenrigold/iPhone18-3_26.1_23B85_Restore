@interface UpdateFeaturesWithCompletionCallback
@end

@implementation UpdateFeaturesWithCompletionCallback

void __epp_UpdateFeaturesWithCompletionCallback_block_invoke(uint64_t a1)
{
  v2 = epp_copyInner(*(a1 + 32));
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_UpdateFeaturesWithCompletionCallback(FigEndpointRef _Nonnull, FigEndpointFeatures, CFDictionaryRef _Nullable, FigEndpointActivationCompletionCallback _Nonnull, void * _Nullable)_block_invoke", 33554472, "[%{ptr}] Update features with inner [%{ptr}] context %@", *(a1 + 32), v2, **(a1 + 40));
  }

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v6)
    {
      if (!v6(v2, v4, v5, epp_activationCallback, v3) || (__epp_UpdateFeaturesWithCompletionCallback_block_invoke_cold_1() & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      __epp_UpdateFeaturesWithCompletionCallback_block_invoke_cold_2();
    }

    __epp_DeactivateWithCompletionCallback_block_invoke_cold_3((a1 + 40), v2);
LABEL_8:
    CFRelease(v2);
    goto LABEL_9;
  }

  __epp_DeactivateWithCompletionCallback_block_invoke_cold_4(a1);
LABEL_9:
  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 32);

  CFRelease(v8);
}

uint64_t __epp_UpdateFeaturesWithCompletionCallback_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  APSLogErrorAt();
  return v0;
}

@end