@interface HandleSeekDidFinishNotification
@end

@implementation HandleSeekDidFinishNotification

void __fpic_HandleSeekDidFinishNotification_block_invoke(void *result)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(result + 16);
  v3 = result[5];
  if (v2 == *(v3 + 888))
  {
    if ((result[10] & 0x1D) == 1)
    {
      lhs = *(result + 68);
      v10 = *(v3 + 320);
      *v27 = *(v3 + 304);
      *&v27[16] = v10;
      v28 = *(v3 + 336);
      fpic_MakeMomentFromTime(&lhs, v27, time1);
      v11 = *&time1[16];
      *(v3 + 304) = *time1;
      *(v3 + 320) = v11;
      *(v3 + 336) = v26;
      v3 = result[5];
    }

    v12 = *(v3 + 160);
    if (v12)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v13)
      {
        v13(v12, v3 + 556);
      }

      fpic_updateCurrentResumptionTimeIfPlayingPostroll();
      fpic_EnsureCurrentEventsHaveResolvedProperties(result[6]);
      v3 = result[5];
    }

    *(v3 + 888) = 0;
    *(*(result[4] + 8) + 24) = 1;
    fpic_clearIntendedCurrentItemMoment(result[6]);
    v14 = result[6];
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    LastCurrentItem = fpic_GetLastCurrentItem();
    if (LastCurrentItem)
    {
      v17 = LastCurrentItem;
      memset(v27, 0, 24);
      fpic_GetItemEndTime();
      v30 = *time1;
      v18 = *&time1[12];
      v31 = *&time1[8];
      if (time1[12])
      {
        v19 = *&time1[16];
        lhs.value = v30;
        lhs.timescale = v31;
        lhs.flags = *&time1[12];
        lhs.epoch = *&time1[16];
        rhs = *gAudioTransitionScheduleAdvance;
        CMTimeSubtract(time1, &lhs, &rhs);
        rhs.value = *time1;
        v20 = *&time1[12];
        rhs.timescale = *&time1[8];
        v21 = *&time1[16];
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v22)
        {
          v22(v17, v27);
        }

        *time1 = rhs.value;
        *&time1[8] = rhs.timescale;
        *&time1[12] = v20;
        *&time1[16] = v21;
        lhs = *v27;
        if (CMTimeCompare(time1, &lhs) < 1)
        {
          *time1 = v30;
          *&time1[8] = v31;
          *&time1[12] = v18;
          *&time1[16] = v19;
          fpic_scheduleInterstitialAudioTransition(v14, time1, 0);
        }

        else
        {
          StopAndReleaseTimer((DerivedStorage + 832));
          *time1 = rhs.value;
          *&time1[24] = 0;
          *&time1[8] = rhs.timescale;
          *&time1[12] = v20;
          *&time1[16] = v21;
          v26 = v20 & 1;
          fpic_CreateAndPrimeItemTimer();
        }
      }
    }

    v2 = *(result + 16);
    v3 = result[5];
  }

  if (v2 == *(v3 + 1216))
  {
    fpic_recordSeekIDAndShowInterstitialLayer(result[6], result[7], -1, *(result + 92) == 0, *(result + 92));
    v2 = *(result + 16);
    v3 = result[5];
  }

  if (v2 == *(v3 + 896))
  {
    fpic_FinishInitiatedSeek();
    v2 = *(result + 16);
    v3 = result[5];
  }

  if (v2 == *(v3 + 900))
  {
    if (dword_1EAF178D0)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(rhs.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = lhs.value;
      value_low = LOBYTE(rhs.value);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs.value))
      {
        v7 = value;
      }

      else
      {
        v7 = value & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = result[6];
        v9 = *(result[5] + 900);
        *v27 = 136315650;
        *&v27[4] = "fpic_HandleSeekDidFinishNotification_block_invoke";
        *&v27[12] = 2048;
        *&v27[14] = v8;
        *&v27[22] = 1024;
        *&v27[24] = v9;
        LODWORD(v23) = 28;
        _os_log_send_and_compose_impl(v7, 0, time1, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< FigPlayerInterstitial >>>> %s: %p: external primary seek ID %d finished, continue evaluating events", v27, v23, LODWORD(lhs.value));
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(CMBaseObjectGetDerivedStorage() + 900) = 0;
  }
}

@end