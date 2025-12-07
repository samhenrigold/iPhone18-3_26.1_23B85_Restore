@interface ActivateForFeaturesWithCompletionCallback
@end

@implementation ActivateForFeaturesWithCompletionCallback

void __epp_ActivateForFeaturesWithCompletionCallback_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v25 = a1[5];
  v26 = a1[8];
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_activateInternal(FigEndpointRef _Nonnull, FigEndpointFeatures, CFDictionaryRef _Nullable, FigEndpointActivationCompletionCallback _Nullable, struct ProxyContext *)", 33554472, "[%{ptr}] Activate endpoint with context %@", v2, *v26);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 24);
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    v7 = CFRetain(v6);
    if (v7)
    {
      v8 = v7;
      FigSimpleMutexUnlock();
      v9 = 0;
      v10 = 0;
      goto LABEL_20;
    }
  }

  v11 = dispatch_semaphore_create(0);
  v9 = v11;
  if (v11)
  {
    *(DerivedStorage + 64) = v11;
    dispatch_retain(v11);
    FigSimpleMutexUnlock();
    v12 = epp_toggleInnerEndpointDiscovery(v2, 1);
    if (!v12)
    {
      v13 = dispatch_time(0, 1000000 * v5);
      dispatch_semaphore_wait(v9, v13);
      v10 = 1;
      goto LABEL_11;
    }

    __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_1(v12);
  }

  else
  {
    __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_2((DerivedStorage + 32));
  }

  v10 = 0;
LABEL_11:
  FigSimpleMutexLock();
  v14 = *(DerivedStorage + 64);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 64) = 0;
  }

  v15 = *(DerivedStorage + 40);
  if (v15)
  {
    v8 = CFRetain(v15);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_3(v8, v2, v16);
    if (v8)
    {
LABEL_20:
      v17 = CFRetain(v8);
      v18 = 0;
      v19 = 1;
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if (v8)
  {
    goto LABEL_20;
  }

  if (gLogCategory_APEndpointPlus <= 90 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_4(v2);
  }

  epp_postNotificationAsync(v2, @"WantsCacheEviction", &unk_283584390);
  v17 = 0;
  v8 = 0;
  v19 = 0;
  v18 = 4294949690;
  if (v9)
  {
LABEL_21:
    dispatch_release(v9);
  }

LABEL_22:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v19)
  {
    if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_activateInternal(FigEndpointRef _Nonnull, FigEndpointFeatures, CFDictionaryRef _Nullable, FigEndpointActivationCompletionCallback _Nullable, struct ProxyContext *)", 33554482, "[%{ptr}] Activating with real endpoint [%{ptr}] with features %#ll{flags} and options %@", v2, v17, v25, &unk_222298168, v3);
    }

    v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v20)
    {
      v21 = v20(v17, v25, v3, epp_activationCallback, v26);
      v22 = v21 == -12782;
      if (!v21)
      {
        v18 = 0;
        if (!v10)
        {
          goto LABEL_36;
        }

LABEL_35:
        epp_toggleInnerEndpointDiscovery(v2, 0);
        goto LABEL_36;
      }

      v18 = v21;
    }

    else
    {
      v18 = 4294954514;
      v22 = 1;
    }

    APSLogErrorAt();
    if (!v10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_5(v18);
  v22 = 1;
  if (v10)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (!v22)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  epp_activationCallback(v17, 0, 0, v18, v26);
  if (v17)
  {
LABEL_38:
    CFRelease(v17);
  }

LABEL_39:
  v23 = a1[6];
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = a1[4];
  if (v24)
  {

    CFRelease(v24);
  }
}

double __epp_ActivateForFeaturesWithCompletionCallback_block_invoke_cold_2(uint64_t *a1)
{
  APSLogErrorAt();

  FigSimpleMutexUnlock();
  return result;
}

@end