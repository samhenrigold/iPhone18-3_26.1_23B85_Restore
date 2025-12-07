@interface RemoveConnectionForSession
@end

@implementation RemoveConnectionForSession

uint64_t ___RemoveConnectionForSession_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = *(a1 + 40);
  result = _FindHTTPConnectionForSession(*(a1 + 32), v2, &v5);
  if (result)
  {
    v4 = result;
    if (gLogCategory_AirPlayReceiverServer <= 50)
    {
      if (gLogCategory_AirPlayReceiverServer == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return _DestroyHTTPConnection(v5, v4);
        }

        v2 = *(a1 + 40);
      }

      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _RemoveConnectionForSession(AirPlayReceiverServerRef, APReceiverRequestProcessorRef)_block_invoke", 33554482, "Stopping connection %##a for session %{ptr}\n", v4 + 256, v2);
    }

    return _DestroyHTTPConnection(v5, v4);
  }

  return result;
}

@end