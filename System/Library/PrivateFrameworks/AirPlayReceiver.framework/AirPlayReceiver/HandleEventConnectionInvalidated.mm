@interface HandleEventConnectionInvalidated
@end

@implementation HandleEventConnectionInvalidated

void ___HandleEventConnectionInvalidated_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[456])
  {
    if (gLogCategory_AirPlayReceiverCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverCore != -1 || (v3 = _LogCategory_Initialize(), v2 = *(a1 + 32), v3))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _HandleEventConnectionInvalidated(OSStatus, void *)_block_invoke", 33554482, "### [%{ptr}] Event connection got invalidated unexpectedly: %#m\n", v2, *(a1 + 40));
        v2 = *(a1 + 32);
      }
    }

    _AirPlayReceiverSession_Terminate(v2);
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

@end