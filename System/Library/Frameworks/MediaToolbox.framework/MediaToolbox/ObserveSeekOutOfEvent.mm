@interface ObserveSeekOutOfEvent
@end

@implementation ObserveSeekOutOfEvent

void __fpic_ObserveSeekOutOfEvent_block_invoke(uint64_t a1)
{
  CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent(*(a1 + 48));
  if (CurrentlyPlayingEvent || *(CMBaseObjectGetDerivedStorage() + 1144))
  {
    fpic_clearIntentionToSeekIntoEventState(*(a1 + 48));
    fpic_clearIntendedCurrentItemMoment(*(a1 + 48));
    fpic_UngatePrimaryBuffering(*(a1 + 48));
    *(*(a1 + 56) + 900) = *(a1 + 72);
    if (CurrentlyPlayingEvent)
    {
      v4 = fpic_UnwrapEvent();
      v5 = FigPlayerInterstitialEventCopyIdentifier(v4);
      v13 = v5;
      if (dword_1EAF178D0)
      {
        v14 = OUTLINED_FUNCTION_18_43(v5, v6, v7, v8, v9, v10, v11, v12, v66, v69, v72, v75, SBYTE2(v75), SBYTE3(v75), SHIDWORD(v75));
        v22 = OUTLINED_FUNCTION_19_4(v14, v15, v16, v17, v18, v19, v20, v21, v67, v70, v73, v76, v78, v80, v82);
        if (OUTLINED_FUNCTION_115_1(v22))
        {
          OUTLINED_FUNCTION_217_1();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448(v40, v41, v42, v43, v44, v45, v46, v47);
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v48, v49, v50, v51, v52);
      }

      OUTLINED_FUNCTION_196_2();
      fpic_StopInterstitialPlayerAtCurrentItem();
    }

    else
    {
      if (dword_1EAF178D0)
      {
        OUTLINED_FUNCTION_147();
        v23 = OUTLINED_FUNCTION_105_5();
        v31 = OUTLINED_FUNCTION_126(v23, v24, v25, v26, v27, v28, v29, v30, v66, v69, v72, v75, SBYTE2(v75), SBYTE3(v75), SBYTE4(v75));
        v39 = OUTLINED_FUNCTION_116_0(v31, v32, v33, v34, v35, v36, v37, v38, v68, v71, v74, v77, v79, v81, v83);
        if (OUTLINED_FUNCTION_109_0(v39))
        {
          OUTLINED_FUNCTION_217_1();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl(v53, v54, v55, v56, v57, v58, v1, v59);
          OUTLINED_FUNCTION_329_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524(v60, v61, v62, v63, v64);
      }

      v13 = 0;
    }

    fpic_removeAllCurrentEventsAfterEvent(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), 0, CurrentlyPlayingEvent != 0, 1);
    OUTLINED_FUNCTION_2_4();
    *(v65 + 24) = 0;
    if (v13)
    {
      CFRelease(v13);
    }
  }
}

@end