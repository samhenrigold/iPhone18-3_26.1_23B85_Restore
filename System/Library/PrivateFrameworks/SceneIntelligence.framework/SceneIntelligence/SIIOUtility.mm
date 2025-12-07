@interface SIIOUtility
@end

@implementation SIIOUtility

uint64_t __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) BOOLValue])
  {
    return 1;
  }

  if ([*(a1 + 40) BOOLValue])
  {
    if ([*(a1 + 48) BOOLValue])
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v3 = [*(a1 + 56) BOOLValue];
    if (v3)
    {
      return 1;
    }

    if (*(a1 + 64) != 1)
    {
      __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke_cold_1(v3);
    }

    return *(a1 + 72) / *(a1 + 80);
  }
}

void __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke_cold_1(uint64_t a1)
{
  v1 = __SceneIntelligenceLogSharedInstance(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v8 = 136380931;
    *&v8[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    *&v8[12] = 1025;
    *&v8[14] = 1354;
    OUTLINED_FUNCTION_0(&dword_21DE0D000, v2, v3, " %{private}s:%{private}d *** Pixel format not supported by SIRawImageInfo ***", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
  }

  abort();
}

@end