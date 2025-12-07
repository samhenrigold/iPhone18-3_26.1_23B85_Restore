@interface DeactivateWithCompletionCallback
@end

@implementation DeactivateWithCompletionCallback

void __epp_DeactivateWithCompletionCallback_block_invoke(uint64_t a1)
{
  v2 = epp_copyInner(*(a1 + 32));
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_DeactivateWithCompletionCallback(FigEndpointRef _Nonnull, CFDictionaryRef _Nullable, FigEndpointActivationCompletionCallback _Nullable, void * _Nullable)_block_invoke", 33554472, "[%{ptr}] Deactivate with inner [%{ptr}] context %@", *(a1 + 32), v2, **(a1 + 40));
  }

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      if (!v5(v2, v4, epp_activationCallback, v3) || (__epp_DeactivateWithCompletionCallback_block_invoke_cold_1() & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      __epp_DeactivateWithCompletionCallback_block_invoke_cold_2();
    }

    __epp_DeactivateWithCompletionCallback_block_invoke_cold_3((a1 + 40), v2);
LABEL_8:
    CFRelease(v2);
    goto LABEL_9;
  }

  __epp_DeactivateWithCompletionCallback_block_invoke_cold_4(a1);
LABEL_9:
  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 32);

  CFRelease(v7);
}

uint64_t __epp_DeactivateWithCompletionCallback_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  APSLogErrorAt();
  return v0;
}

@end