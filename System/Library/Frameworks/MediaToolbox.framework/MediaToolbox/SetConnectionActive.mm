@interface SetConnectionActive
@end

@implementation SetConnectionActive

void __playerairplay_SetConnectionActive_block_invoke_2(uint64_t a1)
{
  v3 = 0;
  cf = 0;
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(*(a1 + 32) + 40), &v3, &cf);
  playerairplay_savePlaybackInfoAndStopAPV(*(a1 + 40), v3, cf);
  playerairplay_updateSubPlayerPlayQueue(*(a1 + 40));
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __playerairplay_SetConnectionActive_block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (*(*(a1 + 32) + 216) == 10)
    {
      playerairplay_checkStartAPV(*(a1 + 40));
      if (dword_1EAF172E8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7_22();
        if (v1)
        {
          if (*(a1 + 40))
          {
            CMBaseObjectGetDerivedStorage();
          }

          DerivedStorage = CMBaseObjectGetDerivedStorage();
          pap_getDescriptionForAirPlayState(*(DerivedStorage + 216));
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_4_41(v5, v6, v20, v7, &dword_1962D5000, v8, v9, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s AirPlay state '%{public}s' before SetConnectionActive(true)");
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524(v10, v11, v12, v13, v14);
      }
    }
  }

  playerairplay_copyPlayQueueAirPlayItemFromSubPlayer();
  if (*(CMBaseObjectGetDerivedStorage() + 296) && !*(a1 + 48))
  {
    v15 = *(a1 + 32);
    if (*(v15 + 1))
    {
      v17 = playerairplay_copyPredictedFormatDescriptionForBAO(*(a1 + 40));
      v15 = *(a1 + 32);
      v16 = *(v15 + 1);
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v18 = *(v15 + 296);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v19)
    {
      v19(v18, v16, 1, v17);
    }

    *(*(a1 + 32) + 304) = *(*(a1 + 32) + 1);
    if (v17)
    {
      CFRelease(v17);
    }
  }
}

@end