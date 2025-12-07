@interface APConnectivityHelperStartInterfaceAddedRetryTimer
@end

@implementation APConnectivityHelperStartInterfaceAddedRetryTimer

void ___APConnectivityHelperStartInterfaceAddedRetryTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperHandleInterfaceAddedRetryTimerFired(APConnectivityHelperRef)", 33554462, "[%{ptr}] InterfaceAddedRetryTimer fired.\n", v1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v6 = ___APConnectivityHelperHandleInterfaceAddedRetryTimerFired_block_invoke;
  v7 = &unk_278BC82F0;
  v9 = &v11;
  v10 = v1;
  v8 = &v17;
  qos_class = dispatch_queue_get_qos_class(*(v1 + 24), 0);
  if (qos_class_self() >= qos_class)
  {
    v6(block);
  }

  else
  {
    dispatch_async_and_wait(*(v1 + 24), block);
  }

  if ((v18[3] & 1) == 0 && gLogCategory_APConnectivityHelper <= 90 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperHandleInterfaceAddedRetryTimerFired(APConnectivityHelperRef)", 33554522, "[%{ptr}] Monitoring failed %@\n", v1, v12[5]);
  }

  if (*(v1 + 88))
  {
    _APConnectivityHelperTrySettingWiFiDevice(v1);
  }

  if (*(v1 + 209))
  {
    _APConnectivityHelperTrySettingAWDLDevice(v1, v3, v4);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
}

@end