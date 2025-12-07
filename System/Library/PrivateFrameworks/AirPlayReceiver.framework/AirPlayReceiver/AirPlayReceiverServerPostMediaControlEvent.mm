@interface AirPlayReceiverServerPostMediaControlEvent
@end

@implementation AirPlayReceiverServerPostMediaControlEvent

void ___AirPlayReceiverServerPostMediaControlEvent_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 64))
  {
    v4 = HTTPMessageCreate();
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      MEMORY[0x25F0] = _DoEventTransactionCompletion;
      v5 = *(v3 + 56);
      HTTPHeader_InitRequest();
      if (v5)
      {
        HTTPHeader_SetField(24, "X-Apple-StreamID", "%llu");
      }

      else
      {
        HTTPHeader_SetField(24, "X-Apple-Session-ID", "%#U", v3 + 38);
      }

      CFDataGetLength(v2);
      CFDataGetBytePtr(v2);
      HTTPMessageSetBody();
      v6 = HTTPClientSendMessage();
      if (!v6)
      {
LABEL_7:
        if (!v6)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    APSLogErrorAt();
    goto LABEL_7;
  }

  APSLogErrorAt();
  v6 = 4294960534;
LABEL_8:
  if (gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _AirPlayReceiverServerPostMediaControlEvent(void *)_block_invoke", 33554492, "### Post event failed: %#m\n", v6);
  }

LABEL_12:
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

@end