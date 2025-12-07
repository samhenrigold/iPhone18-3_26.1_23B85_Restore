@interface HandleAirPlayVideoActiveDidChange
@end

@implementation HandleAirPlayVideoActiveDidChange

void __fpic_HandleAirPlayVideoActiveDidChange_block_invoke(void *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E4C0];
  v51 = *MEMORY[0x1E695E4C0];
  FigPlayerGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"IsAirPlayVideoActive", *MEMORY[0x1E695E480], &v51);
    v2 = v51;
  }

  *(*(a1[4] + 8) + 24) = v2 == *MEMORY[0x1E695E4D0];
  v6 = *(*(a1[4] + 8) + 24);
  v8 = a1 + 8;
  v7 = a1[8];
  if (v6 != *(v7 + 1256))
  {
    *(v7 + 1256) = v6;
    v9 = *(v7 + 1280);
    if (v9)
    {
      CFRelease(v9);
      *(*v8 + 1280) = 0;
    }

    if (dword_1EAF178D0)
    {
      LODWORD(v55.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v55.value;
      v12 = type[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v13 = value;
      }

      else
      {
        v13 = value & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = a1[9];
        if (*(*(a1[4] + 8) + 24))
        {
          v15 = "active";
        }

        else
        {
          v15 = "not active";
        }

        *v56 = 136315650;
        *&v56[4] = "fpic_HandleAirPlayVideoActiveDidChange_block_invoke";
        *&v56[12] = 2048;
        *&v56[14] = v14;
        *&v56[22] = 2080;
        v57 = *&v15;
        _os_log_send_and_compose_impl(v13, 0, time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v12, "<<<< FigPlayerInterstitial >>>> %s: %p: AirPlay is %s", v56, 32, v50);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CFArrayGetCount(*(*v8 + 656)) >= 1)
    {
      if (*(*(a1[4] + 8) + 24))
      {
        if (fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(a1[9]))
        {
          v16 = a1[9];
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (DerivedStorage[1143])
          {
            v18 = DerivedStorage;
            if (DerivedStorage[376] || DerivedStorage[377])
            {
              if (fpic_GetCurrentlyPlayingEvent(v16))
              {
                v32 = CMBaseObjectGetDerivedStorage();
                v33 = *(v32 + 892);
                *(v32 + 892) = FPSupport_IncrementSeekID(*(v32 + 892));
                memset(&v55, 0, sizeof(v55));
                v34 = CMBaseObjectGetDerivedStorage();
                if (*(v34 + 376))
                {
                  v55 = *(v34 + 344);
                }

                else if (*(v34 + 377))
                {
                  v41 = *(v34 + 368);
                  v42 = *(v34 + 320);
                  *time = *(v34 + 304);
                  *&time[16] = v42;
                  v59 = *(v34 + 336);
                  FigCreateTimeWithDateAndMoment(time, &v55, v41);
                }

                else
                {
                  v55 = **&MEMORY[0x1E6960C70];
                }

                *&time[16] = *(v18 + 53);
                *time = *(v18 + 408);
                fpic_AccumulateDuration(&v55, time);
                fpic_GetCurrentlyPlayingEventPlayoutDuration();
                fpic_AccumulateDuration(&v55, time);
                if (dword_1EAF178D0)
                {
                  *type = 0;
                  v54 = OS_LOG_TYPE_DEFAULT;
                  v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v44 = *type;
                  v45 = v54;
                  if (os_log_type_enabled(v43, v54))
                  {
                    v46 = v44;
                  }

                  else
                  {
                    v46 = v44 & 0xFFFFFFFE;
                  }

                  if (v46)
                  {
                    *time = v55;
                    Seconds = CMTimeGetSeconds(time);
                    *v56 = 136315650;
                    *&v56[4] = "fpic_SeekToInterstitialTimeOnPrimary";
                    *&v56[12] = 2048;
                    *&v56[14] = v16;
                    *&v56[22] = 2048;
                    v57 = Seconds;
                    LODWORD(v49) = 32;
                    _os_log_send_and_compose_impl(v46, 0, time, 128, &dword_1962D5000, v43, v45, "<<<< FigPlayerInterstitial >>>> %s: %p: Seeking to %f", v56, v49, *&v50);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v48 = *(v18 + 20);
                *time = v55;
                *v56 = *MEMORY[0x1E6960C70];
                *&v56[16] = *(MEMORY[0x1E6960C70] + 16);
                *type = *v56;
                v53 = *&v56[16];
                FPSupport_SetCurrentTimeWithRangeIDAndReason(v48, time, 5, v56, type, v33, 6);
              }
            }
          }
        }
      }

      v19 = a1[8];
      v20 = MEMORY[0x1E6960C70];
      v21 = *(MEMORY[0x1E6960C70] + 16);
      *(v19 + 1080) = v21;
      v22 = *v20;
      *(v19 + 1064) = *v20;
      v23 = a1[8];
      *(v23 + 912) = v22;
      *(v23 + 928) = v21;
      if (fpic_GetCurrentlyPlayingEvent(a1[9]))
      {
        __fpic_HandleAirPlayVideoActiveDidChange_block_invoke_cold_1(a1 + 8);
      }

      fpic_RescheduleCurrentEvents(a1[9], (*(a1[6] + 8) + 24), *(*(a1[5] + 8) + 24));
    }

    if (*(*v8 + 1260) == 1)
    {
      if (*(*(a1[4] + 8) + 24) && fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(a1[9]))
      {
        if (dword_1EAF178D0)
        {
          LODWORD(v55.value) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v29 = v55.value;
          v30 = type[0];
          if (os_log_type_enabled(v28, type[0]))
          {
            v31 = v29;
          }

          else
          {
            v31 = v29 & 0xFFFFFFFE;
          }

          if (v31)
          {
            v36 = a1[9];
            *v56 = 136315394;
            *&v56[4] = "fpic_HandleAirPlayVideoActiveDidChange_block_invoke";
            *&v56[12] = 2048;
            *&v56[14] = v36;
            LODWORD(v49) = 22;
            _os_log_send_and_compose_impl(v31, 0, time, 128, &dword_1962D5000, v28, v30, "<<<< FigPlayerInterstitial >>>> %s: %p: need to ignore interstitials due to external playback strategy, proceed to remove", v56, v49);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpic_clearIntendedCurrentItemMoment(a1[9]);
        fpic_UngatePrimaryBuffering(a1[9]);
        fpic_UngatePrimaryPlayback(a1[9]);
        v37 = CMBaseObjectGetDerivedStorage();
        *(v37 + 256) = 0;
        *(v37 + 296) = 0;
        v38 = MEMORY[0x1E6960C70];
        v39 = *MEMORY[0x1E6960C70];
        *(v37 + 432) = *MEMORY[0x1E6960C70];
        v40 = *(v38 + 16);
        *(v37 + 448) = v40;
        *(v37 + 480) = v39;
        *(v37 + 496) = v40;
        *(v37 + 504) = v39;
        *(v37 + 520) = v40;
        *(v37 + 1144) = 0;
        *(v37 + 644) = v40;
        *(v37 + 628) = v39;
        *(v37 + 1147) = 0;
      }

      else if (dword_1EAF178D0)
      {
        LODWORD(v55.value) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v25 = v55.value;
        v26 = type[0];
        if (os_log_type_enabled(v24, type[0]))
        {
          v27 = v25;
        }

        else
        {
          v27 = v25 & 0xFFFFFFFE;
        }

        if (v27)
        {
          v35 = a1[9];
          *v56 = 136315394;
          *&v56[4] = "fpic_HandleAirPlayVideoActiveDidChange_block_invoke";
          *&v56[12] = 2048;
          *&v56[14] = v35;
          LODWORD(v49) = 22;
          _os_log_send_and_compose_impl(v27, 0, time, 128, &dword_1962D5000, v24, v26, "<<<< FigPlayerInterstitial >>>> %s: %p: reinstate interstitials since AirPlay is disabled and external playback strategy was set", v56, v49);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fpic_PostNotification(a1[9], @"fpiEventsDidChange", 0);
      fpic_UpdatePlaybackItemEventList();
    }
  }
}

double __fpic_HandleAirPlayVideoActiveDidChange_block_invoke_cold_1(uint64_t *a1)
{
  v1 = *a1;
  fpic_GetCurrentlyPlayingEventPlayoutDuration();
  result = *&v3;
  *(v1 + 912) = v3;
  *(v1 + 928) = v4;
  return result;
}

@end