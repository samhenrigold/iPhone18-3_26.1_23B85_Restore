@interface SignalDataAvailable
@end

@implementation SignalDataAvailable

void __stream_SignalDataAvailable_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 24))
  {
    __stream_SignalDataAvailable_block_invoke_cold_1();
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v4)
    {
      v5 = v4(v3);
    }

    else
    {
      v5 = -12782;
    }

    *(*(*(a1 + 32) + 8) + 24) = v5;
    v6 = *(*(*(a1 + 32) + 8) + 24);
    if (v6)
    {
      __stream_SignalDataAvailable_block_invoke_cold_2(v6);
    }
  }
}

void __unbufnw_SignalDataAvailable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!*(v4 + 416))
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 30)
    {
      if (gLogCategory_APTransportConnectionUnbufferedNW != -1 || (v5 = OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportConnectionUnbufferedNW), v4 = *(a1 + 32), v5))
      {
        OUTLINED_FUNCTION_7_0(&gLogCategory_APTransportConnectionUnbufferedNW, "OSStatus unbufnw_SignalDataAvailable(APTransportConnectionRef)_block_invoke", a3, "[%{ptr}] isDataAvailable=1");
        v4 = *(a1 + 32);
      }
    }

    APTTrafficMetricsDataAvailable(*(v4 + 448));
    v6 = *(a1 + 32);
    *(v6 + 416) = 1;
    unbufnwGuts_connectionSendPackages(v6);
    v4 = *(a1 + 32);
  }

  CFRelease(v4);
}

@end