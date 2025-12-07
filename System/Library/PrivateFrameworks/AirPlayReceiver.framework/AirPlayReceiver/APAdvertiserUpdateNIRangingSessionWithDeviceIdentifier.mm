@interface APAdvertiserUpdateNIRangingSessionWithDeviceIdentifier
@end

@implementation APAdvertiserUpdateNIRangingSessionWithDeviceIdentifier

intptr_t ___APAdvertiserUpdateNIRangingSessionWithDeviceIdentifier_block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    if (gLogCategory_APAdvertiser <= 50 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserUpdateNIRangingSessionWithDeviceIdentifier(APAdvertiserRef, CFStringRef)_block_invoke", 33554482, "Updated NI ranging session [%{ptr}] device identifier\n", *(*(a1 + 40) + 248));
    }
  }

  else if (gLogCategory_APAdvertiser <= 90 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserUpdateNIRangingSessionWithDeviceIdentifier(APAdvertiserRef, CFStringRef)_block_invoke", 33554522, "Failed to update NI ranging session [%{ptr}] device identifier due to %@\n", *(*(a1 + 40) + 248), [a3 localizedFailureReason]);
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

@end