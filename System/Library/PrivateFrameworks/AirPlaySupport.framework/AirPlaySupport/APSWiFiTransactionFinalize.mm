@interface APSWiFiTransactionFinalize
@end

@implementation APSWiFiTransactionFinalize

int *___APSWiFiTransactionFinalize_block_invoke(void *a1, uint64_t a2)
{
  v3 = a2 == 0;
  if (a2)
  {
    v4 = 90;
  }

  else
  {
    v4 = 50;
  }

  result = a1[4];
  if (v4 >= *result)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = a1[4];
    }

    v7 = "Failed to end";
    if (!a2)
    {
      v7 = "Ended";
    }

    v8 = "AirPlayOverInfrastructure";
    v9 = "?";
    v10 = a1[6];
    if (v10 == 19)
    {
      v9 = "MediaPlaying";
    }

    if (v10 != 17)
    {
      v8 = v9;
    }

    if (v10 == 9)
    {
      v8 = "AirPlaySoloMode";
    }

    if (v10 == 5)
    {
      v8 = "AirPlaySinkMode";
    }

    return LogPrintF(result, "void _APSWiFiTransactionFinalize(CFTypeRef)_block_invoke", v4 | 0x2000000u, "[%{ptr}] %s %s Transaction [%{ptr}]%?{end} error: %ld", a1[5], v7, v8, a1[7], v3, a2);
  }

  return result;
}

@end