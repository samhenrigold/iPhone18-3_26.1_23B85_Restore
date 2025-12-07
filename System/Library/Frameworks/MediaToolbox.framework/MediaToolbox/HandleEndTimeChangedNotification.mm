@interface HandleEndTimeChangedNotification
@end

@implementation HandleEndTimeChangedNotification

void __fpic_HandleEndTimeChangedNotification_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  if (*(a1 + 40) == *(v1 + 160) && (*(a1 + 88) || *(a1 + 89)))
  {
    *time = *(v1 + 384);
    *&time[16] = *(v1 + 400);
    *rhs = *(a1 + 104);
    *&rhs[16] = *(a1 + 120);
    if (!faqrp_timeDifferenceIsWithinTolerance(time, rhs, &kMomentsAreCloseThreshold))
    {
      if (dword_1EAF178D0)
      {
        LODWORD(v37) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v4 = v37;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v4;
        }

        else
        {
          v5 = v4 & 0xFFFFFFFE;
        }

        if (v5)
        {
          v6 = *(a1 + 96);
          v7 = *(a1 + 48);
          *time = *(v7 + 384);
          *&time[16] = *(v7 + 400);
          Seconds = CMTimeGetSeconds(time);
          *time = *(a1 + 104);
          *&time[16] = *(a1 + 120);
          v9 = CMTimeGetSeconds(time);
          *rhs = 136315906;
          *&rhs[4] = "fpic_HandleEndTimeChangedNotification_block_invoke";
          *&rhs[12] = 2048;
          *&rhs[14] = v6;
          *&rhs[22] = 2048;
          *&rhs[24] = Seconds;
          LOWORD(v45) = 2048;
          *(&v45 + 2) = v9;
          _os_log_send_and_compose_impl(v5, 0, time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigPlayerInterstitial >>>> %s: %p: received EndTimeChanged notification, updating primary item end time from %f to %f", rhs, 42, *&v29, v30);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v10 = *(a1 + 48);
      v11 = *(a1 + 104);
      *(v10 + 400) = *(a1 + 120);
      *(v10 + 384) = v11;
      v12 = *(a1 + 96);
      v31 = *(a1 + 56);
      v32 = *(a1 + 72);
      v13 = *(a1 + 88);
      v14 = *(a1 + 89);
      WORD2(v30) = *(a1 + 94);
      LODWORD(v30) = *(a1 + 90);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *time = v31;
      *&time[16] = v32;
      memset(&v33, 0, sizeof(v33));
      *rhs = *&kPostRollTimeToPausePlaybackBuffer.value;
      *&rhs[16] = 0;
      CMTimeAdd(&v33, time, rhs);
      v16 = CMBaseObjectGetDerivedStorage();
      v17 = *(v16 + 1146);
      if (!*(v16 + 1146))
      {
        goto LABEL_35;
      }

      if (!*(v16 + 256) || !v13)
      {
        v17 = 0;
        if (!*(v16 + 257) || !v14)
        {
          goto LABEL_35;
        }
      }

      v18 = *(v16 + 240);
      *time = *(v16 + 224);
      *&time[16] = v18;
      v36 = *(v16 + 256);
      *rhs = v31;
      *&rhs[16] = v32;
      LOBYTE(v45) = v13;
      BYTE1(v45) = v14;
      *(&v45 + 2) = LODWORD(v30);
      WORD3(v45) = WORD2(v30);
      if (!fpic_MomentsAreCloseWithTolerance(time, rhs, &kMomentsAreCloseThreshold))
      {
        v19 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (!v19)
        {
          __fpic_HandleEndTimeChangedNotification_block_invoke_cold_1(time);
          v17 = *time;
          goto LABEL_35;
        }

        v20 = v19;
        if (!*(DerivedStorage + 1145))
        {
          v49 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          memset(rhs, 0, sizeof(rhs));
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          if (dword_1EAF178D0)
          {
            v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            HIDWORD(v28) = 0;
            os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *(DerivedStorage + 224) = v31;
          *(DerivedStorage + 240) = v32;
          *(DerivedStorage + 256) = v13;
          *(DerivedStorage + 257) = v14;
          *(DerivedStorage + 262) = WORD2(v30);
          *(DerivedStorage + 258) = LODWORD(v30);
        }

        if (*(DerivedStorage + 1076))
        {
          v21 = DerivedStorage + 1064;
          *time = *(DerivedStorage + 1064);
          *&time[16] = *(DerivedStorage + 1080);
          *rhs = v33;
          if (!faqrp_timeDifferenceIsWithinTolerance(time, rhs, &kMomentsAreCloseThreshold))
          {
            if (dword_1EAF178D0)
            {
              LODWORD(v37) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v23 = v37;
              v24 = type[0];
              if (os_log_type_enabled(v22, type[0]))
              {
                v25 = v23;
              }

              else
              {
                v25 = v23 & 0xFFFFFFFE;
              }

              if (v25)
              {
                *time = *v21;
                *&time[16] = *(v21 + 16);
                v26 = CMTimeGetSeconds(time);
                *time = v33;
                v27 = CMTimeGetSeconds(time);
                *rhs = 136315906;
                *&rhs[4] = "fpic_updatePostrollStateForNewEndMoment";
                *&rhs[12] = 2048;
                *&rhs[14] = v12;
                *&rhs[22] = 2048;
                *&rhs[24] = v26;
                LOWORD(v45) = 2048;
                *(&v45 + 2) = v27;
                LODWORD(v28) = 42;
                _os_log_send_and_compose_impl(v25, 0, time, 128, &dword_1962D5000, v22, v24, "<<<< FigPlayerInterstitial >>>> %s: %p: updating timeToPausePlayback from %f to %f", rhs, v28, *&v29, v30);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            fpic_GatePrimaryPlaybackAtCurrentEvent(v12, v20);
          }
        }

        fpic_updateCurrentResumptionTimeIfPlayingPostroll();
        CFRelease(v20);
      }

      v17 = 0;
LABEL_35:
      *(*(*(a1 + 32) + 8) + 24) = v17;
    }
  }
}

@end