@interface ApplyVolumeFade
@end

@implementation ApplyVolumeFade

uint64_t __audioHoseManagerBuffered_ApplyVolumeFade_block_invoke(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  if (*(a3 + 8))
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1)
      {
        return __audioHoseManagerBuffered_ApplyVolumeFade_block_invoke_cold_1();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __audioHoseManagerBuffered_ApplyVolumeFade_block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      __audioHoseManagerBuffered_ApplyVolumeFade_block_invoke_cold_2(v4, a3);
    }

    v5 = *a3;
    v6 = *(v4 + 40);
    v10 = *(v4 + 44);
    v11 = *(v4 + 60);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    result = CMBaseObjectGetProtocolVTable();
    if (result)
    {
      v8 = *(result + 16);
      result += 16;
      v7 = v8;
      if (v8)
      {
        v9 = *(v7 + 72);
        if (v9)
        {
          v12 = v10;
          v13 = v11;
          return v9(v5, v6, &v12);
        }
      }
    }
  }

  return result;
}

uint64_t __audioHoseManagerBuffered_ApplyVolumeFade_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_12();
  if (*(v0 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t __audioHoseManagerBuffered_ApplyVolumeFade_block_invoke_cold_2(void *a1, uint64_t *a2)
{
  v4 = a1[4];
  if (v4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v6 = APSGetVolumeFadeTypeName();
  v7 = OUTLINED_FUNCTION_25_4(*(a1 + 60), v13, v14, v15, v16, v18, v20, *(a1 + 44), *(a1 + 52), v21);
  v19 = *a2;
  v17 = v7;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v8, v9, v10, v11, v4, DerivedStorage, v6, *&v17, v19);
}

@end