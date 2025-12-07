@interface NotifyServiceCurrentEvent
@end

@implementation NotifyServiceCurrentEvent

void __fpic_NotifyServiceCurrentEvent_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v109 = v0;
  v2 = v1;
  v137 = *MEMORY[0x1E69E9840];
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  CFRelease(*(v2 + 32));
  OUTLINED_FUNCTION_150_3(MEMORY[0x1E6960C70]);
  v118 = *(v4 + 16);
  if (dword_1EAF178D0 >= 3)
  {
    LODWORD(v124.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v6))
    {
      v7 = *(v2 + 40);
      v8 = *(v2 + 48);
      v9 = *(v2 + 56);
      LODWORD(valuePtr.value) = 136316162;
      *(&valuePtr.value + 4) = "fpic_NotifyServiceCurrentEvent_block_invoke";
      LOWORD(valuePtr.flags) = 2048;
      *(&valuePtr.flags + 2) = v3;
      HIWORD(valuePtr.epoch) = 2112;
      v126 = v7;
      v127 = 2048;
      v128 = v8;
      v129 = 2112;
      v130 = v9;
      LODWORD(v107) = 52;
      p_valuePtr = &valuePtr;
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v18, v19, v20, v21, v22);
  }

  if (v3)
  {
    v23 = CFEqual(*(v2 + 40), @"ItemStoppedBeingCurrent");
    v24 = MEMORY[0x1E6960CD0];
    if (v23)
    {
      v32 = OUTLINED_FUNCTION_92_7();
    }

    else
    {
      if (!CFEqual(*(v2 + 40), @"ItemBecameCurrent"))
      {
        if (CFEqual(*(v2 + 40), @"ReadyForPlayback"))
        {
          v110 = *(v2 + 48);
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v26 = FigCFWeakReferenceHolderCopyReferencedObject();
          v27 = *DerivedStorage;
          *&v131 = MEMORY[0x1E69E9820];
          *(&v131 + 1) = 3221225472;
          *&v132 = __fpic_ReportStartupTimeIncludingInterstitial_block_invoke;
          *(&v132 + 1) = &__block_descriptor_72_e5_v8__0l;
          v133 = DerivedStorage;
          v134 = v3;
          v135 = v26;
          v136 = v110;
          dispatch_sync(v27, &v131);
          if (!v26)
          {
            goto LABEL_21;
          }

          goto LABEL_10;
        }

        if (CFEqual(*(v2 + 40), @"FailedToBecomeReadyForInspection") || CFEqual(*(v2 + 40), @"FailedToBecomeReadyForPlayback"))
        {
          *&v131 = 0;
          LODWORD(valuePtr.value) = 0;
          if (FigCFDictionaryGetValueIfPresent())
          {
            CFNumberGetValue(v131, kCFNumberSInt32Type, &valuePtr);
          }

          v28 = OUTLINED_FUNCTION_92_7();
          v31 = 0;
          goto LABEL_16;
        }

        if (!CFEqual(*(v2 + 40), @"FailedToPlayToEnd"))
        {
          if (CFEqual(*(v2 + 40), @"RateDidChange"))
          {
            v81 = OUTLINED_FUNCTION_203_1();
            fpic_NoticeRateChange(v81, v82, v83);
          }

          else if (CFEqual(*(v2 + 40), @"IsAirPlayVideoActiveDidChange"))
          {
            v84 = OUTLINED_FUNCTION_92_7();
            fpic_HandleAirPlayVideoActiveDidChange(v84, v85);
          }

          else if (CFEqual(*(v2 + 40), @"ExternalPlaybackInitiatedCancelInterstitialEvent"))
          {
            v86 = OUTLINED_FUNCTION_203_1();
            fpic_HandleExternalPlaybackInitiatedCancelInterstitialEvent(v86, v87, v88);
          }

          else if (CFEqual(*(v2 + 40), @"SelectedMediaOptionsDidChange"))
          {
            v89 = OUTLINED_FUNCTION_203_1();
            fpic_mediaSelectionsChanged(v89, v90, v91);
          }

          else if (CFEqual(*(v2 + 40), @"CoordinationIdentifierChanged"))
          {
            v95 = OUTLINED_FUNCTION_92_7();
            fpic_coordinationIdentifierChanged(v95, v96);
          }

          else
          {
            if (CFEqual(*(v2 + 40), @"ReadyForInspection"))
            {
              v28 = OUTLINED_FUNCTION_92_7();
              v31 = 1;
              v30 = 0;
LABEL_16:
              fpic_eventItemReadyStateChange(v28, v29, v31, v30);
              goto LABEL_21;
            }

            if (CFEqual(*(v2 + 40), @"ReachedTimeToPauseBuffering") || CFEqual(*(v2 + 40), @"AlmostReachedTimeToPausePlayback") || CFEqual(*(v2 + 40), @"ReachedTimeToPausePlayback") || CFEqual(*(v2 + 40), @"SnappedTimeToPausePlayback"))
            {
              if (CFEqual(*(v2 + 40), @"ReachedTimeToPauseBuffering"))
              {
                fpic_checkForSnappedTimeToPauseBuffering(v3);
              }

              fpic_checkForSnapOut(v3);
              if (CFEqual(*(v2 + 40), @"AlmostReachedTimeToPausePlayback"))
              {
                Value = CFDictionaryGetValue(*(v2 + 56), @"FigTime");
                CMTimeMakeFromDictionary(&v131, Value);
                fpic_schedulePrimaryToInterstitialTransition(v3, &v131);
              }

              if (CFEqual(*(v2 + 40), @"ReachedTimeToPausePlayback"))
              {
                v93 = *(v2 + 64);
                if (*(v93 + 160))
                {
                  if (*(v93 + 1076))
                  {
                    v94 = CFDictionaryGetValue(*(v2 + 56), @"FigTime");
                    v131 = 0uLL;
                    *&v132 = 0;
                    CMTimeMakeFromDictionary(&v131, v94);
                    *&valuePtr.value = v131;
                    valuePtr.epoch = v132;
                    fpic_CheckIfPlayheadHasReachedPrimaryPlaybackGate(v3, &valuePtr);
                  }
                }
              }

              goto LABEL_21;
            }

            if (CFEqual(*(v2 + 40), @"SeekDidComplete") || CFEqual(*(v2 + 40), @"SeekWasCanceled"))
            {
              fpic_HandleSeekDidFinishNotification(v3, *(v2 + 40), *(v2 + 56), &v117);
            }

            else
            {
              if (CFEqual(*(v2 + 40), @"DidPlayToTheEnd"))
              {
                v97 = *(v2 + 64);
                if (*(v2 + 48) == *(v97 + 160) && !*(v97 + 1145))
                {
                  *(v97 + 1145) = 1;
                  if (*(v97 + 1146))
                  {
                    if (*(v97 + 256) || *(v97 + 257))
                    {
                      fpic_CurrentItemMoment(&v131);
                      v98 = v132;
                      *(v97 + 224) = v131;
                      *(v97 + 240) = v98;
                      *(v97 + 256) = v133;
                      v99 = **(v2 + 64);
                      block = MEMORY[0x1E69E9820];
                      v113 = 3221225472;
                      v114 = __fpic_NotifyServiceCurrentEvent_block_invoke_223;
                      v115 = &__block_descriptor_40_e5_v8__0l;
                      v116 = v3;
                      dispatch_sync(v99, &block);
                    }
                  }
                }

                goto LABEL_21;
              }

              if (CFEqual(*(v2 + 40), @"EndTimeChanged"))
              {
                v100 = OUTLINED_FUNCTION_203_1();
                fpic_HandleEndTimeChangedNotification(v100, v101, v102);
              }

              else if (CFEqual(*(v2 + 40), *v24))
              {
                v104 = OUTLINED_FUNCTION_92_7();
                fpic_ReportInterstitialPlaybackDeadTime(v104, v105);
              }

              else
              {
                if (!CFEqual(*(v2 + 40), @"PlayableRangeChanged"))
                {
                  if (CFEqual(*(v2 + 40), @"FigMediaAccessibilityNotification_MediaAccessibilityChanged"))
                  {
                    fpic_mediaAccessibilityChanged(v3);
                  }

                  goto LABEL_21;
                }

                v26 = FigCFWeakReferenceHolderCopyReferencedObject();
                v103 = FigCFDictionaryGetValue();
                fpic_updateEventLoadedTimeIntervals(v3, v26, *(v2 + 48), v103);
                if (v26)
                {
LABEL_10:
                  CFRelease(v26);
                }
              }
            }
          }

LABEL_21:
          v35 = CFEqual(*(v2 + 40), *v24);
          v36 = MEMORY[0x1E6960CE8];
          if (v35 || CFEqual(*(v2 + 40), *MEMORY[0x1E6960CE8]))
          {
            v37 = *(v2 + 48);
            if (v37 == *(*(v2 + 64) + 1224))
            {
              FigCFDictionaryGetCMTimeIfPresent();
              *v111 = v117;
              *&v111[16] = v118;
              memset(&v124, 0, sizeof(v124));
              v38 = CMTimebaseCopySource(v37);
              if (v38)
              {
                v39 = v38;
                v131 = 0uLL;
                *&v132 = 0;
                memset(&valuePtr, 0, sizeof(valuePtr));
                v40 = OUTLINED_FUNCTION_284();
                CMSyncGetRelativeRateAndAnchorTime(v40, v41, 0, v42, v43);
                CMSyncGetTime(&v124, v39);
                if (CMTimebaseGetRate(v37) > 0.0)
                {
                  OUTLINED_FUNCTION_224_0(v44, v45, v46, v47, v48, v49, v50, v51, p_valuePtr, v107, v108, v109, v110, *(&v110 + 1), *v111, *&v111[8], *&v111[16], block, v113, v114, v115, v116, v117, *(&v117 + 1), v118, v119, time2.value, *&time2.timescale, time2.epoch, v121, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v123, *&v124.value);
                  if (CMTimeCompare(&type, &time2) >= 1)
                  {
                    *v111 = v131;
                    *&v111[16] = v132;
                  }
                }

                CFRelease(v39);
              }

              v117 = *v111;
              v118 = *&v111[16];
              v124 = *v111;
              v52 = CMBaseObjectGetDerivedStorage();
              if ((*(v52 + 1076) & 1) != 0 && (*(v52 + 968) || *(v52 + 969)))
              {
                v53 = v52 + 1064;
                v131 = *(v52 + 1064);
                *&v132 = *(v52 + 1080);
                valuePtr = v124;
                if (!faqrp_timeDifferenceIsWithinTolerance(&v131, &valuePtr, &kMomentsAreCloseThreshold) && !*(CMBaseObjectGetDerivedStorage() + 888))
                {
                  v54 = FigCFWeakReferenceHolderCopyReferencedObject();
                  if (v54)
                  {
                    v55 = v54;
                    if (dword_1EAF178D0)
                    {
                      LODWORD(type.value) = 0;
                      LOBYTE(time2.value) = 0;
                      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      value_low = LOBYTE(time2.value);
                      os_log_type_enabled(v56, time2.value);
                      OUTLINED_FUNCTION_28();
                      if (&dword_1EAF17000)
                      {
                        v131 = *v53;
                        v58 = OUTLINED_FUNCTION_137_2(*(v53 + 16));
                        v131 = *&v124.value;
                        OUTLINED_FUNCTION_137_2(v124.epoch);
                        LODWORD(valuePtr.value) = 136315906;
                        OUTLINED_FUNCTION_211_0("fpic_ensurePrimaryPlaybackGateForTimeJumpDuringIntendedSeek");
                        LOWORD(valuePtr.flags) = v59;
                        *(v60 + 14) = v3;
                        HIWORD(valuePtr.epoch) = v59;
                        v126 = v58;
                        v127 = v59;
                        *(v60 + 34) = v61;
                        OUTLINED_FUNCTION_95_1();
                        OUTLINED_FUNCTION_38();
                        _os_log_send_and_compose_impl(v62, v63, v64, v65, v66, v67, value_low, v68, &valuePtr);
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_417(v69, v70, v71, v72, v73);
                      v36 = MEMORY[0x1E6960CE8];
                    }

                    v74 = OUTLINED_FUNCTION_618();
                    fpic_GatePrimaryPlaybackAtCurrentEvent(v74, v75);
                    CFRelease(v55);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_120();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_valuePtr, v107, v108);
                  }
                }
              }
            }

            v76 = CFEqual(*(v2 + 40), *v36);
            v77 = CMBaseObjectGetDerivedStorage();
            v78 = *v77;
            *&v131 = MEMORY[0x1E69E9820];
            *(&v131 + 1) = 3221225472;
            *&v132 = __fpic_checkScheduledTransition_block_invoke;
            *(&v132 + 1) = &__block_descriptor_57_e5_v8__0l;
            v133 = v77;
            v134 = v3;
            v135 = v37;
            LOBYTE(v136) = v76;
            dispatch_sync(v78, &v131);
          }

          v131 = v117;
          *&v132 = v118;
          fpic_ServiceCurrentEvent(v3, &v131);
          CFRelease(v3);
          goto LABEL_42;
        }

        v32 = OUTLINED_FUNCTION_92_7();
        v34 = 1;
LABEL_20:
        fpic_PruneCurrentEvents(v32, v33, v34);
        goto LABEL_21;
      }

      v32 = OUTLINED_FUNCTION_265();
    }

    v34 = 0;
    goto LABEL_20;
  }

LABEL_42:
  CFRelease(*(v2 + 40));
  v79 = *(v2 + 56);
  if (v79)
  {
    CFRelease(v79);
  }

  v80 = *(v2 + 48);
  if (v80)
  {
    CFRelease(v80);
  }

  OUTLINED_FUNCTION_191();
}

@end