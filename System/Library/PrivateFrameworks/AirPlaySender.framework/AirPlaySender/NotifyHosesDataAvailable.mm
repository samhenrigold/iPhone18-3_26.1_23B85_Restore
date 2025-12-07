@interface NotifyHosesDataAvailable
@end

@implementation NotifyHosesDataAvailable

uint64_t __audioHoseManagerBuffered_NotifyHosesDataAvailable_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    __audioHoseManagerBuffered_NotifyHosesDataAvailable_block_invoke_cold_1(a1, a3);
  }

  v5 = *a3;
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v8 = *(result + 16);
    result += 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 40);
      if (v9)
      {

        return v9(v5);
      }
    }
  }

  return result;
}

uint64_t __audioHoseManagerBuffered_NotifyHosesDataAvailable_block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v5 = "local";
  if (!*(a2 + 8))
  {
    v5 = "remote";
  }

  v15 = *(a2 + 41) != 0;
  v16 = *(a2 + 5);
  v12 = *a2;
  v13 = v5;
  v11 = DerivedStorage;
  v14 = *(a2 + 40) != 0;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v6, v7, v8, v9, v3, v11, v12, v13, v14, v15, v16);
}

@end