@interface APConnectivityHelperStartAWDLSoloSupportListener
@end

@implementation APConnectivityHelperStartAWDLSoloSupportListener

void ___APConnectivityHelperStartAWDLSoloSupportListener_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___APConnectivityHelperStartAWDLSoloSupportListener_block_invoke_2;
  v4[3] = &unk_278BC72B0;
  v4[4] = a2;
  v4[5] = v2;
  dispatch_sync(v3, v4);
}

void *___APConnectivityHelperStartAWDLSoloSupportListener_block_invoke_2(void *result)
{
  v1 = result[5];
  if (!v1[232])
  {
    result = result[4];
    if (result)
    {
      v1[152] = [result supportsSoloMode];
      v1[153] = 1;
      if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper)))
      {
        OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperHandleAWDLStateUpdated(APConnectivityHelperRef, WiFiP2PAWDLState *)", v3, "[%{ptr}] Solo Support query was successful. The device %s AWDL Solo.\n");
      }

      if (_APConnectivityHelperSendAWDLSoloSupportEvent(v1, v2, v3))
      {
        APSLogErrorAt();
      }

      return _APConnectivityHelperEnsureAWDLSoloSupportListenerStopped(v1, v4, v5);
    }
  }

  return result;
}

@end