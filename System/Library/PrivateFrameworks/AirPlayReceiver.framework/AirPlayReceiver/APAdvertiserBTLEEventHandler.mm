@interface APAdvertiserBTLEEventHandler
@end

@implementation APAdvertiserBTLEEventHandler

void ___APAdvertiserBTLEEventHandler_block_invoke(uint64_t result)
{
  v2 = *(result + 40);
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = *(result + 32);
      v4 = 1;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = *(result + 32);
      v4 = 0;
LABEL_12:

      _APAdvertiserHandleSourceDeviceNearbyEvent(v3, v4);
      return;
    }

LABEL_8:
    if (gLogCategory_APAdvertiser > 60)
    {
      return;
    }

    if (gLogCategory_APAdvertiser == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(result + 40);
    }

    LogPrintF(&gLogCategory_APAdvertiser, "void _APAdvertiserBTLEEventHandler(APAdvertiserBTLEManagerRef, APAdvertiserBTLEEventType, void *)_block_invoke", 33554492, "Unrecognized BTLE event %d.", v2);
    return;
  }

  if (v2 == 2)
  {
    v5 = *(result + 32);
    v6 = 1;
  }

  else
  {
    if (v2 != 3)
    {
      goto LABEL_8;
    }

    v5 = *(result + 32);
    v6 = 0;
  }

  _APAdvertiserSetNeedsNIRangingSession(v5, v6);
}

@end