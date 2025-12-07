@interface UpdateSkippableEventStateTimerProc
@end

@implementation UpdateSkippableEventStateTimerProc

void __fpic_UpdateSkippableEventStateTimerProc_block_invoke(uint64_t a1)
{
  fpic_GetCurrentlyPlayingEvent(*(a1 + 32));
  v2 = fpic_UnwrapEvent();
  v3 = FigPlayerInterstitialEventCopyIdentifier(v2);
  if (dword_1EAF178D0)
  {
    OUTLINED_FUNCTION_147();
    v4 = OUTLINED_FUNCTION_105_5();
    v12 = OUTLINED_FUNCTION_126(v4, v5, v6, v7, v8, v9, v10, v11, v33, v35, v37, *v39, v39[2], v39[3], v39[4]);
    v20 = OUTLINED_FUNCTION_116_0(v12, v13, v14, v15, v16, v17, v18, v19, v34, v36, v38, v40, v41, v42, v43);
    if (OUTLINED_FUNCTION_109_0(v20))
    {
      OUTLINED_FUNCTION_240_1();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v26, v1, v27);
      OUTLINED_FUNCTION_329_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v28, v29, v30, v31, v32);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

@end