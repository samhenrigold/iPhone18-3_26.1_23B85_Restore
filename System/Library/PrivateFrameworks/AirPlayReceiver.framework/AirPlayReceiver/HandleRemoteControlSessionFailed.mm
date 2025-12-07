@interface HandleRemoteControlSessionFailed
@end

@implementation HandleRemoteControlSessionFailed

void ___HandleRemoteControlSessionFailed_block_invoke(uint64_t a1)
{
  if (CFDictionaryContainsValue(*(*(a1 + 32) + 696), *(a1 + 40)))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleRemoteControlSessionFailed(CFTypeRef, APReceiverRemoteControlSessionRef, OSStatus)_block_invoke", 33554482, "[%{ptr}] RCS [%{ptr}] failed with error: %#m. Terminating the session.", *(a1 + 32), *(a1 + 40), *(a1 + 48));
    }

    _AirPlayReceiverSession_Terminate(*(a1 + 32));
  }

  else if (gLogCategory_AirPlayReceiverCore <= 40 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleRemoteControlSessionFailed(CFTypeRef, APReceiverRemoteControlSessionRef, OSStatus)_block_invoke", 33554472, "[%{ptr}] Ignore failed event from already removed RCS [%{ptr}] (error: %#m)", *(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end