@interface HandleExternalPlaybackInitiatedCancelInterstitialEvent
@end

@implementation HandleExternalPlaybackInitiatedCancelInterstitialEvent

void __fpic_HandleExternalPlaybackInitiatedCancelInterstitialEvent_block_invoke(uint64_t a1)
{
  fpic_GetCurrentlyPlayingEvent(*(a1 + 40));
  v2 = fpic_UnwrapEvent();
  v3 = FigPlayerInterstitialEventCopyIdentifier(v2);
  FigCFEqual();
  OUTLINED_FUNCTION_81_5();
  *(v5 + 24) = v4;
  if (dword_1EAF178D0)
  {
    OUTLINED_FUNCTION_147();
    v6 = OUTLINED_FUNCTION_105_5();
    v14 = OUTLINED_FUNCTION_126(v6, v7, v8, v9, v10, v11, v12, v13, v35, v37, v39, *v41, v41[2], v41[3], v41[4]);
    v22 = OUTLINED_FUNCTION_116_0(v14, v15, v16, v17, v18, v19, v20, v21, v36, v38, v40, v42, v43, v44, v45);
    if (OUTLINED_FUNCTION_109_0(v22))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v23, v24, v25, v26, v27, v28, v1, v29);
      OUTLINED_FUNCTION_329_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v30, v31, v32, v33, v34);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

@end