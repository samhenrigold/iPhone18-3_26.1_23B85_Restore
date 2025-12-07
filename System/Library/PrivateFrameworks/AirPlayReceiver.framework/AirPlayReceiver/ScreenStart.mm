@interface ScreenStart
@end

@implementation ScreenStart

uint64_t ___ScreenStart_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = APSDisplayUtilsGetAggregatedDisplayProtectionBits();
  v3 = *(v1 + 640);
  if ((v3 & ~result) == 0)
  {
    return result;
  }

  if (gLogCategory_AirPlayReceiverCore <= 110)
  {
    v4 = result;
    if (gLogCategory_AirPlayReceiverCore == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v3 = *(v1 + 640);
    }

    LogPrintF(&gLogCategory_AirPlayReceiverCore, "void _AirPlayReceiverSessionDisplayProtectionMonitor(AirPlayReceiverSessionRef)", 33554542, "Display protection change detected to lower level, from 0x%x --> 0x%x. Terminating the session [%{ptr}]", v3, v4, v1);
  }

LABEL_6:

  return _AirPlayReceiverSession_Terminate(v1);
}

@end