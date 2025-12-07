@interface ProcessRateChange
@end

@implementation ProcessRateChange

uint64_t __audioRendererCentral_ProcessRateChange_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 52);
  v3 = *(a1 + 48);
  CMBaseObjectGetDerivedStorage();
  if (v3 == 0.0)
  {
    if (!v2)
    {
      v9 = audioRendererCentral_maybeSetAudioSessionStateToNotPlaying(v1);
      if (v9)
      {
        return OUTLINED_FUNCTION_12_7(v9);
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 81) == 1)
      {
        v17 = DerivedStorage;
        if (*(DerivedStorage + 64))
        {
          v9 = 0;
          *(v17 + 81) = 0;
          return OUTLINED_FUNCTION_12_7(v9);
        }
      }
    }

    goto LABEL_16;
  }

  if (!v2)
  {
    goto LABEL_16;
  }

  v4 = CMBaseObjectGetDerivedStorage();
  if (!*(v4 + 81))
  {
    v5 = v4;
    v6 = *(v4 + 64);
    if (v6)
    {
      v7 = *(CMBaseObjectGetVTable() + 16);
      if (!v7)
      {
LABEL_17:
        v9 = 4294948075;
        return OUTLINED_FUNCTION_12_7(v9);
      }

      v8 = *(v7 + 80);
      if (!v8)
      {
LABEL_18:
        v9 = 4294948071;
        return OUTLINED_FUNCTION_12_7(v9);
      }

      v9 = v8(v6, 0);
      if (v9)
      {
        return OUTLINED_FUNCTION_12_7(v9);
      }

      *(v5 + 81) = 1;
    }
  }

  v10 = CMBaseObjectGetDerivedStorage();
  if (*(v10 + 80) || (v11 = v10, (v12 = *(v10 + 64)) == 0))
  {
LABEL_16:
    v9 = 0;
    return OUTLINED_FUNCTION_12_7(v9);
  }

  v13 = *(CMBaseObjectGetVTable() + 16);
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = *(v13 + 56);
  if (!v14)
  {
    goto LABEL_18;
  }

  v9 = v14(v12, *MEMORY[0x1E69B00C0], *MEMORY[0x1E695E4D0]);
  if (!v9)
  {
    *(v11 + 80) = 1;
  }

  return OUTLINED_FUNCTION_12_7(v9);
}

@end