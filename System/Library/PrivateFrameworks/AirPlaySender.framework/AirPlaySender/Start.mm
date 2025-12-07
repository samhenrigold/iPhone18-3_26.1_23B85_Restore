@interface Start
@end

@implementation Start

void __apEndpointRemoteControlSession_Start_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = apEndpointRemoteControlSession_ensureAndCopyTransportStreams(*(a1 + 32), 0);
  if (v2)
  {
    __apEndpointRemoteControlSession_Start_block_invoke_cold_1(gLogCategory_APEndpointRemoteControlSession, v1, v2);
  }

  else if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    __apEndpointRemoteControlSession_Start_block_invoke_cold_2();
  }

  v3 = *v1;

  CFRelease(v3);
}

void __hdpd_Start_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProviderDefaults, "OSStatus hdpd_Start(SPHubbedDevicesProviderRef)_block_invoke", 33554462, "[%{ptr}] SPHubbedDevicesProviderDefaults notify with token %d.", *(a1 + 32), a2);
  }

  hdpd_handlePreferencesChanged(*(a1 + 32));
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProviderDefaults, "OSStatus hdpd_Start(SPHubbedDevicesProviderRef)_block_invoke", 33554462, "[%{ptr}] SPHubbedDevicesProviderDefaults notify with token %d complete.", *(a1 + 32), a2);
  }
}

uint64_t __apEndpointRemoteControlSession_Start_block_invoke_cold_1(uint64_t result, void *a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_Start(FigEndpointRemoteControlSessionRef)_block_invoke", 33554522, "[%{ptr}] Could not start RCS. error: %#m\n", *a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "OSStatus apEndpointRemoteControlSession_Start(FigEndpointRemoteControlSessionRef)_block_invoke", 33554522, "[%{ptr}] Could not start RCS. error: %#m\n", *a2, a3);
    }
  }

  return result;
}

@end