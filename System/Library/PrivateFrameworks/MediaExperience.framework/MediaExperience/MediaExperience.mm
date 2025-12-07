uint64_t MXSessionCopyProperty(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (a1 && a2 && a3)
  {
    v6 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __MXSessionCopyProperty_block_invoke;
      v17 = &unk_1E7AE7A48;
      v18 = &v22;
      v19 = a1;
      v20 = a2;
      v21 = a3;
      MXDispatchAsyncAndWait("MXSessionCopyProperty", "MXSession_CInterfaceCommon.m", 253, 0, 0, v7, &v14);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v9 = [a1 isMemberOfClass:objc_opt_class()];
      if (!v9 || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v9, v10))
      {
        v11 = [a1 copyPropertyForKey:a2 valueOut:a3];
        *(v23 + 6) = v11;
      }

      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionCopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
    }

    objc_autoreleasePoolPop(v6);
    v12 = *(v23 + 6);
  }

  else
  {
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
    *(v23 + 6) = v12;
  }

  _Block_object_dispose(&v22, 8);
  return v12;
}

void sub_1B17A3BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MXCoreSessionCopyProperty(void *a1, CFTypeRef cf1, const __CFAllocator *a3, void *a4)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  if (cf1)
  {
    if (a4)
    {
      if (CFEqual(cf1, @"ActivationContext"))
      {
        if (a1)
        {
          if ([a1 activationContext])
          {
            SInt32 = [a1 activationContext];
            if (!SInt32)
            {
LABEL_8:
              v10 = 0;
              *a4 = SInt32;
              return v10;
            }

LABEL_7:
            SInt32 = CFRetain(SInt32);
            goto LABEL_8;
          }

LABEL_512:
          v10 = 0;
          *a4 = 0;
          return v10;
        }

        MXCoreSessionCopyProperty_cold_1(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"AirPlayVideoIsActive"))
      {
        IsAirPlayVideoActive = CMSMUtility_IsAirPlayVideoActive();
LABEL_16:
        v17 = MEMORY[0x1E695E4D0];
        v18 = MEMORY[0x1E695E4C0];
        v19 = IsAirPlayVideoActive == 0;
LABEL_17:
        if (v19)
        {
          v17 = v18;
        }

        goto LABEL_19;
      }

      if (CFEqual(cf1, @"AllowedRouteTypes"))
      {
        if (a1)
        {
          SInt32 = [a1 allowedRouteTypes];
          if (!SInt32)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        MXCoreSessionCopyProperty_cold_2(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"AllowedToUseHardwareAudioCodec"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_3(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 mixesWithEveryone];
        v17 = MEMORY[0x1E695E4C0];
        v22 = MEMORY[0x1E695E4D0];
        goto LABEL_44;
      }

      if (CFEqual(cf1, @"AllowEnhancedDialogue"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_4(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 allowEnhancedDialogue];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"AllowMixableAudioWhileRecording"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_6(theArray);
          return LODWORD(theArray[0]);
        }

        if (([a1 isTheAssistant] & 1) == 0)
        {
          MXCoreSessionCopyProperty_cold_5(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 allowMixableAudioWhileRecording];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"AllowsAirPlayVideo"))
      {
        isActive = [a1 allowsAirPlayVideo];
LABEL_43:
        v17 = MEMORY[0x1E695E4D0];
        v22 = MEMORY[0x1E695E4C0];
LABEL_44:
        if (!isActive)
        {
          v17 = v22;
        }

        goto LABEL_19;
      }

      if (CFEqual(cf1, @"AllowsAirPlayBuffered"))
      {
        isActive = [a1 allowsAirPlayBuffered];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"AllowSystemSoundsWhileRecording"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_7(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 allowSystemSoundsWhileRecording];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"AudioBehaviour"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_8(theArray);
          return LODWORD(theArray[0]);
        }

        VoicePromptStyle = [a1 audioBehaviour];
LABEL_52:
        *a4 = VoicePromptStyle;
        if (!VoicePromptStyle)
        {
          return 0;
        }

        goto LABEL_20;
      }

      if (CFEqual(cf1, @"AudioCategory"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_9(theArray);
          return LODWORD(theArray[0]);
        }

        v23 = -[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]);
LABEL_60:
        SInt32 = v23;
        goto LABEL_8;
      }

      if (CFEqual(cf1, @"BadgeType"))
      {
        v23 = [a1 badgeType];
        goto LABEL_60;
      }

      if (CFEqual(cf1, @"AudioHardwareControlFlags"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_10(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 hwControlFlags];
LABEL_65:
        SInt32 = FigCFNumberCreateSInt32();
        goto LABEL_8;
      }

      if (CFEqual(cf1, @"AudioMode"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_11(theArray);
          return LODWORD(theArray[0]);
        }

        VoicePromptStyle = [a1 audioMode];
        goto LABEL_52;
      }

      if (CFEqual(cf1, @"AudioOnlyAirPlayVideoIsActive"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_12(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isAudioOnlyAirPlayVideoActive];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"DoesGameAudioNeedToBeSpatialized"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_13(theArray);
          return LODWORD(theArray[0]);
        }

        v24 = objc_alloc(MEMORY[0x1E696AD98]);
        v25 = [a1 doesGameAudioNeedToBeSpatialized];
        goto LABEL_78;
      }

      if (CFEqual(cf1, @"CanBeginInterruption"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_14(theArray);
          return LODWORD(theArray[0]);
        }

        v17 = MEMORY[0x1E695E4D0];
        goto LABEL_19;
      }

      if (CFEqual(cf1, @"DefaultBuiltInRoute"))
      {
        if (a1)
        {
          SInt32 = [a1 defaultBuiltInRoutePreference];
          if (!SInt32)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        MXCoreSessionCopyProperty_cold_15(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"EnableBluetoothRecording"))
      {
        if (a1)
        {
          v28 = [a1 enableBluetoothRecordingPreference];
          v29 = MEMORY[0x1E695E4D0];
          if (!v28)
          {
            v29 = MEMORY[0x1E695E4C0];
          }

          SInt32 = *v29;
          if (!*v29)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        MXCoreSessionCopyProperty_cold_16(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"ClientName"))
      {
        if (a1)
        {
          SInt32 = [a1 clientName];
          if (!SInt32)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        MXCoreSessionCopyProperty_cold_17(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"ClientPID"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_18(theArray);
          return LODWORD(theArray[0]);
        }

        LODWORD(v30) = CMSUtility_GetClientPID(a1);
        goto LABEL_103;
      }

      if (CFEqual(cf1, @"ClientPriority"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_19(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 clientPriority];
        goto LABEL_65;
      }

      if (CFEqual(cf1, @"ConstantOutputVolumeLeveldB"))
      {
        if (a1)
        {
          v35 = objc_alloc(MEMORY[0x1E696AD98]);
          [a1 constantOutputVolumeLeveldB];
          SInt32 = [v35 initWithFloat:?];
          goto LABEL_8;
        }

        MXCoreSessionCopyProperty_cold_20(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"ControlsRoute"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_21(theArray);
          return LODWORD(theArray[0]);
        }

        v36 = [a1 currentlyControllingFlags];
        v17 = MEMORY[0x1E695E4D0];
        v18 = MEMORY[0x1E695E4C0];
        v19 = (v36 & 2) == 0;
        goto LABEL_17;
      }

      if (CFEqual(cf1, @"AudioSessionID"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_22(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 audioSessionID];
LABEL_123:
        SInt32 = FigCFNumberCreateUInt32();
        goto LABEL_8;
      }

      if (CFEqual(cf1, @"CurrentAudioHardwareSampleRate"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_23(theArray);
          return LODWORD(theArray[0]);
        }

        v37 = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
        v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MXSessionManager defaultVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "defaultVADID")}];
        v39 = v37;
        goto LABEL_137;
      }

      if (CFEqual(cf1, @"CurrentInputSampleRate"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_24(theArray);
          return LODWORD(theArray[0]);
        }

        v40 = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
        v41 = MEMORY[0x1E696AD98];
        CurrentInputVADID = CMSUtility_GetCurrentInputVADID(a1);
        goto LABEL_136;
      }

      if (CFEqual(cf1, @"CurrentOutputSampleRate"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_25(theArray);
          return LODWORD(theArray[0]);
        }

        v40 = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
        v41 = MEMORY[0x1E696AD98];
        CurrentInputVADID = CMSUtility_GetCurrentOutputVADID(a1);
LABEL_136:
        v38 = [v41 numberWithUnsignedInt:CurrentInputVADID];
        v39 = v40;
LABEL_137:
        v23 = [(NSDictionary *)v39 objectForKey:v38];
        goto LABEL_60;
      }

      if (CFEqual(cf1, @"CurrentSpeechDetectionDeviceSampleRate"))
      {
        if (a1)
        {
          v43 = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
          v44 = -[NSDictionary objectForKey:](v43, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MXSessionManager speechDetectionVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "speechDetectionVADID")}]);
          v45 = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
          v46 = -[NSDictionary objectForKey:](v45, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MXSessionManager defaultVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "defaultVADID")}]);
          if (v44)
          {
            v47 = v44;
          }

          else
          {
            v47 = v46;
          }

          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          SInt32 = v47;
          goto LABEL_8;
        }

        MXCoreSessionCopyProperty_cold_26(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"DefaultVPChatMode"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_27(theArray);
          return LODWORD(theArray[0]);
        }

        VoicePromptStyle = [a1 defaultVPChatMode];
        goto LABEL_52;
      }

      if (CFEqual(cf1, @"DetailedActiveAudioRoute"))
      {
        if (a1)
        {
          SInt32 = [a1 copyDetailedRouteDescription];
          goto LABEL_8;
        }

        MXCoreSessionCopyProperty_cold_28(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"DoNotNotifyOtherSessionsOnNextInactive"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_29(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 doNotNotifyOtherSessionsOnNextInactive];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"DoNotResetAudioCategoryOnNextInactive"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_30(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 doNotResetAudioCategoryOnNextInactive];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"DuckFadeDuration"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_31(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 duckFadeDuration];
LABEL_175:
        SInt32 = FigCFNumberCreateFloat32();
        goto LABEL_8;
      }

      if (CFEqual(cf1, @"DuckToLevelDB"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_32(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 duckToLevelDB];
        goto LABEL_175;
      }

      if (CFEqual(cf1, @"DuckToLevelScalar"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_33(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 duckToLevelScalar];
        goto LABEL_175;
      }

      if (CFEqual(cf1, @"ForceSoundCheck"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_34(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 forceSoundCheck];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"HandsOverInterruptionsToInterruptor"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_35(theArray);
          return LODWORD(theArray[0]);
        }

        v24 = objc_alloc(MEMORY[0x1E696AD98]);
        v25 = [a1 handsOverInterruptionsToInterruptor];
        goto LABEL_78;
      }

      if (CFEqual(cf1, @"HapticEngineIsPlaying"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_36(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 hapticEngineIsPlaying];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"HasExternalMuteNotificationContext"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_37(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 hasExternalMuteNotificationContext];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsPlayingOutput"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_38(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isPlayingOutput];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"HostProcessAttribution"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_39(theArray);
          return LODWORD(theArray[0]);
        }

        VoicePromptStyle = [a1 hostProcessAttribution];
        goto LABEL_52;
      }

      if (CFEqual(cf1, @"IAmTheAssistant"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_40(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isTheAssistant];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"InterruptionFadeDuration"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_41(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 interruptionFadeDuration];
        goto LABEL_175;
      }

      if (CFEqual(cf1, @"InterruptionStyle"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_42(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 interruptionStyle];
        goto LABEL_65;
      }

      if (CFEqual(cf1, @"IsActive"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_43(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = objc_msgSend_isActive(a1);
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsAirPlayReceiverSession"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_44(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isAirPlayReceiverSession];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"BypassSystemSpatialAudioForGame"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_45(theArray);
          return LODWORD(theArray[0]);
        }

        v24 = objc_alloc(MEMORY[0x1E696AD98]);
        v25 = [a1 bypassSystemSpatialAudioForGame];
        goto LABEL_78;
      }

      if (CFEqual(cf1, @"IsAudioSession"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_46(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isAudioSession];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsEligibleForBTSmartRoutingConsideration"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_47(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isEligibleForBTSmartRoutingConsideration];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsEligibleForBTTriangleConsideration"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_48(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isEligibleForBTTriangleConsideration];
        goto LABEL_43;
      }

      v49 = CFEqual(cf1, @"IsOutputMuted");
      if (v49)
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_50(theArray);
          return LODWORD(theArray[0]);
        }

        if (!CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(v49, v50))
        {
          MXCoreSessionCopyProperty_cold_49(theArray);
          return LODWORD(theArray[0]);
        }

        v24 = objc_alloc(MEMORY[0x1E696AD98]);
        v25 = [a1 isOutputMuted];
        goto LABEL_78;
      }

      v51 = CFEqual(cf1, @"IsRemoteDeviceInputControlAllowed");
      if (v51)
      {
        IsOnenessEnabled = MX_FeatureFlags_IsOnenessEnabled(v51, v52);
        if (!IsOnenessEnabled)
        {
          MXCoreSessionCopyProperty_cold_52(theArray);
          return LODWORD(theArray[0]);
        }

        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_51(theArray);
          return LODWORD(theArray[0]);
        }

        IsAirPlayVideoActive = vaemIsContinuityScreenOutputPortPresentInConnectedOutputPorts(IsOnenessEnabled, v54);
        goto LABEL_16;
      }

      v55 = CFEqual(cf1, @"IsRecordingMutedForRemoteDevice");
      if (v55)
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_54(theArray);
          return LODWORD(theArray[0]);
        }

        if (!MX_FeatureFlags_IsOnenessEnabled(v55, v56))
        {
          MXCoreSessionCopyProperty_cold_53(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isRecordingMutedForRemoteDevice];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"SupportedOutputChannelLayouts"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_55(theArray);
          return LODWORD(theArray[0]);
        }

        VoicePromptStyle = [a1 supportedOutputChannelLayouts];
        goto LABEL_52;
      }

      v57 = CFEqual(cf1, @"ShouldMuteBeAppliedToRemoteDevice");
      if (v57)
      {
        if (!MX_FeatureFlags_IsOnenessEnabled(v57, v58))
        {
          MXCoreSessionCopyProperty_cold_57(theArray);
          return LODWORD(theArray[0]);
        }

        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_56(theArray);
          return LODWORD(theArray[0]);
        }

        if (![a1 isTheAssistant])
        {
          isActive = [a1 shouldMuteBeAppliedToRemoteDevice];
          goto LABEL_43;
        }

LABEL_574:
        v17 = MEMORY[0x1E695E4C0];
LABEL_19:
        VoicePromptStyle = *v17;
        *a4 = *v17;
LABEL_20:
        CFRetain(VoicePromptStyle);
        return 0;
      }

      if (CFEqual(cf1, @"IsEligibleForNowPlayingAppConsideration"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_58(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isEligibleForNowPlayingAppConsideration];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsExpanseCallSession"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_59(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isSharePlayCallSession];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsExpanseMediaSession"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_60(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isSharePlayMediaSession];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsFigInstantiatedAudioSession"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_61(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isFigInstantiatedAudioSession];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsInterrupted"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_62(theArray);
          return LODWORD(theArray[0]);
        }

        v59 = [a1 interruptingSession];
        v17 = MEMORY[0x1E695E4D0];
        v18 = MEMORY[0x1E695E4C0];
        v19 = v59 == 0;
        goto LABEL_17;
      }

      if (CFEqual(cf1, @"IsLongFormAudio"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_63(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isLongFormAudio];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsPlaying"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_64(theArray);
          return LODWORD(theArray[0]);
        }

        LODWORD(v30) = [a1 isPlaying];
LABEL_103:
        valuePtr = v30;
        p_valuePtr = &valuePtr;
        v32 = a3;
LABEL_104:
        v33 = kCFNumberSInt32Type;
LABEL_105:
        active = CFNumberCreate(v32, v33, p_valuePtr);
        goto LABEL_106;
      }

      if (CFEqual(cf1, @"IsRecording"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_65(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isRecording];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsRecordingMuted"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_66(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isRecordingMuted];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsSharedAVAudioSessionInstance"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_67(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isSharedAVAudioSessionInstance];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsSharePlayCapableCallSession"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_68(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isSharePlayCapableCallSession];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsUsingBuiltInMicForRecording"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_69(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isUsingBuiltInMicForRecording];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsUsingCamera"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_70(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isUsingCamera];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsUsingChatMode"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_71(theArray);
          return LODWORD(theArray[0]);
        }

        IsAirPlayVideoActive = CMSMUtility_IsChatMode([a1 audioMode]);
        goto LABEL_16;
      }

      if (CFEqual(cf1, @"MutesAudioBasedOnRingerSwitchState"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_72(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 mutesAudioBasedOnRingerSwitchState];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"NeedsAudioBudget"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_73(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 needsAudioBudget];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"NowPlayingAppThatWasStoppedOnMostRecentActivationWasDoingSpokenAudio"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_74(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 nowPlayingAppThatWasStoppedOnMostRecentActivationWasDoingSpokenAudio];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"NowPlayingAppWasStoppedOnMostRecentActivation"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_75(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 nowPlayingAppWasStoppedOnMostRecentActivation];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PIDToInheritApplicationStateFrom"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_76(theArray);
          return LODWORD(theArray[0]);
        }

        if (![a1 pidToInheritAppStateFrom])
        {
          SInt32 = 0;
          goto LABEL_8;
        }

        [a1 pidToInheritAppStateFrom];
        goto LABEL_65;
      }

      if (CFEqual(cf1, @"PreferredAudioHardwareFormat"))
      {
        if (a1)
        {
          SInt32 = [a1 preferredHardwareFormat];
          if (!SInt32)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        MXCoreSessionCopyProperty_cold_77(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"PreferredAudioHardwareIOBufferFrameDuration"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_78(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 preferredIOBufferDuration];
        goto LABEL_175;
      }

      if (CFEqual(cf1, @"PreferredAudioHardwareIOBufferFrames"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_79(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 preferredIOBufferFrames];
        goto LABEL_65;
      }

      if (CFEqual(cf1, @"PreferredAudioHardwareSampleRate"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_80(theArray);
          return LODWORD(theArray[0]);
        }

        goto LABEL_411;
      }

      if (CFEqual(cf1, @"PrefersBeingInterruptedByNextActiveRecordingClient"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_81(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersBeingInterruptedByNextActiveRecordingClient];
        goto LABEL_43;
      }

      v60 = CFEqual(cf1, @"PrefersBluetoothFarFieldCapture");
      if (v60)
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_83(theArray);
          return LODWORD(theArray[0]);
        }

        if (!MX_FeatureFlags_IsPersonalTranslatorEnabled(v60, v61))
        {
          MXCoreSessionCopyProperty_cold_82(theArray);
          return LODWORD(theArray[0]);
        }

        v24 = objc_alloc(MEMORY[0x1E696AD98]);
        v25 = [a1 prefersBluetoothFarFieldCapture];
        goto LABEL_78;
      }

      if (CFEqual(cf1, @"PrefersBluetoothHighQualityContentCapture"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_84(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersBluetoothHighQualityContentCapture];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersConcurrentAirPlayAudio"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_85(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersConcurrentAirPlayAudio];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersEchoCancelledInput"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_86(theArray);
          return LODWORD(theArray[0]);
        }

        v24 = objc_alloc(MEMORY[0x1E696AD98]);
        v25 = [a1 prefersEchoCancelledInput];
        goto LABEL_78;
      }

      if (CFEqual(cf1, @"PreferredDecoupledInputOutput"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_87(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 preferredDecoupledInputOutput];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PreferredInputSampleRate"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_88(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 preferredInputSampleRate];
LABEL_412:
        SInt32 = FigCFNumberCreateFloat64();
        goto LABEL_8;
      }

      if (CFEqual(cf1, @"PreferredMinimumMicrophoneIndicatorLightOnTime"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_89(theArray);
          return LODWORD(theArray[0]);
        }

        v23 = [a1 preferredMinimumMicrophoneIndicatorLightOnTime];
        goto LABEL_60;
      }

      if (CFEqual(cf1, @"PreferredNumberOfInputChannels"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_90(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 preferredNumberOfInputChannels];
        goto LABEL_65;
      }

      if (CFEqual(cf1, @"PreferredNumberOfOutputChannels"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_91(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 preferredNumberOfOutputChannels];
        goto LABEL_65;
      }

      if (CFEqual(cf1, @"PreferredOutputSampleRate"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_92(theArray);
          return LODWORD(theArray[0]);
        }

LABEL_411:
        [a1 preferredOutputSampleRate];
        goto LABEL_412;
      }

      if (CFEqual(cf1, @"PreferredRouteControlFeatures"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_93(theArray);
          return LODWORD(theArray[0]);
        }

        v23 = [a1 preferredRouteControlFeatures];
        goto LABEL_60;
      }

      if (CFEqual(cf1, @"PreferredPersistentRoute"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_94(theArray);
          return LODWORD(theArray[0]);
        }

        v23 = [a1 preferredPersistentRoute];
        goto LABEL_60;
      }

      if (CFEqual(cf1, @"PreferredStereoInputOrientation"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_95(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 preferredStereoInputOrientation];
        goto LABEL_123;
      }

      if (CFEqual(cf1, @"PrefersBluetoothAccessoryMuting"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_96(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersBluetoothAccessoryMuting];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersEnhancedDialogue"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_97(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersEnhancedDialogue];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersInterruptionOnRouteDisconnect"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_98(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersInterruptionOnRouteDisconnect];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersNoDucking"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_99(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersNoDucking];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersNoInterruptions"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_100(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersNoInterruptions];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersNoInterruptionsByMixableSessions"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_101(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersNoInterruptionsByMixableSessions];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersNoInterruptionsByRingtonesAndAlerts"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_102(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersNoInterruptionsByRingtonesAndAlerts];
        goto LABEL_43;
      }

      v62 = CFEqual(cf1, @"PrefersNoInterruptionsDuringRemoteDeviceControl");
      if (v62)
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_104(theArray);
          return LODWORD(theArray[0]);
        }

        if (!MX_FeatureFlags_IsOnenessEnabled(v62, v63))
        {
          MXCoreSessionCopyProperty_cold_103(theArray);
          return LODWORD(theArray[0]);
        }

        v24 = objc_alloc(MEMORY[0x1E696AD98]);
        v25 = [a1 prefersNoInterruptionsDuringRemoteDeviceControl];
        goto LABEL_78;
      }

      if (CFEqual(cf1, @"PrefersNoInterruptionWhenSecureMicrophoneIsEngaged") || CFEqual(cf1, @"PrefersToNotBeInterruptedWhenSecureMicIsEngaged"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_105(theArray);
          return LODWORD(theArray[0]);
        }

        IsAirPlayVideoActive = CMSUtility_GetPrefersNoInterruptionWhenSecureMicrophoneIsEngaged(a1);
        goto LABEL_16;
      }

      if (CFEqual(cf1, @"PrefersSpeechDetectEnabled"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_106(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersSpeechDetectEnabled];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersSuppressingRecordingState"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_107(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersSuppressingRecordingState];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersToOptOutOfHardwareSafetyInterruptions"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_108(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersToOptOutOfHardwareSafetyInterruptions];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersToPlayDuringWombat"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_109(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersToPlayDuringWombat];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersToVibeWhenVibrationsAreDisabled"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_110(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 prefersToVibeWhenVibrationsAreDisabled];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"PrefersToInterruptActiveRecordingSessions"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_111(theArray);
          return LODWORD(theArray[0]);
        }

        v24 = objc_alloc(MEMORY[0x1E696AD98]);
        v25 = [a1 prefersToInterruptActiveRecordingSessions];
LABEL_78:
        v26 = v25;
        v27 = v24;
        goto LABEL_79;
      }

      if (CFEqual(cf1, @"ProcessAssertionAuditTokens"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_113(theArray);
          return LODWORD(theArray[0]);
        }

        if (([a1 hasEntitlementToSupportProcessAssertionAuditTokens] & 1) == 0)
        {
          MXCoreSessionCopyProperty_cold_112(theArray);
          return LODWORD(theArray[0]);
        }

        VoicePromptStyle = [a1 parentProcessAuditTokens];
        goto LABEL_52;
      }

      if (CFEqual(cf1, @"RemoteDeviceID"))
      {
        return 0;
      }

      if (CFEqual(cf1, @"ReporterIDs"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_114(theArray);
          return LODWORD(theArray[0]);
        }

        CMSUtility_CreateReporterIDIfNeeded(a1);
        VoicePromptStyle = [a1 reporterIDs];
        goto LABEL_52;
      }

      if (CFEqual(cf1, @"RouteSharingPolicy"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_115(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 routeSharingPolicy];
        goto LABEL_123;
      }

      if (CFEqual(cf1, @"RoutingContextUUID"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_116(theArray);
          return LODWORD(theArray[0]);
        }

        VoicePromptStyle = [a1 routingContextUUID];
        goto LABEL_52;
      }

      if (CFEqual(cf1, @"ShadowingAudioSessionOptions"))
      {
        if (a1)
        {
          if ([a1 shadowingAudioSessionID])
          {
            v64 = objc_alloc(MEMORY[0x1E695DF20]);
            v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a1, "shadowingAudioSessionID")}];
            SInt32 = [v64 initWithObjectsAndKeys:{v65, @"AudioSessionID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a1, "shadowingAudioSessionOptions")), @"ShadowingOptions", 0}];
            goto LABEL_8;
          }

          goto LABEL_512;
        }

        MXCoreSessionCopyProperty_cold_117(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"SomeMXSessionIsPlaying"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_118(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 someMXSessionIsPlaying];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"SomeOtherClientIsPlaying"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_119(theArray);
          return LODWORD(theArray[0]);
        }

        IsAirPlayVideoActive = CMSUtility_SomeOtherClientIsPlaying(a1);
        goto LABEL_16;
      }

      if (CFEqual(cf1, @"SomeOtherNonAmbientAudioCategoryClientIsPlaying"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_120(theArray);
          return LODWORD(theArray[0]);
        }

        IsPlaying = CMSUtility_SomeOtherPrimaryAudioCategoryClientIsPlaying(a1);
        if (dword_1EB75DE40)
        {
          v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v17 = MEMORY[0x1E695E4D0];
        v18 = MEMORY[0x1E695E4C0];
        v19 = IsPlaying == 0;
        goto LABEL_17;
      }

      if (CFEqual(cf1, @"StopsWhenDeviceLocks"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_121(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 stopsWhenDeviceLocks];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"SystemHasAudioInputDevice"))
      {
        IsAirPlayVideoActive = vaemSystemHasAudioInputDevice();
        goto LABEL_16;
      }

      if (CFEqual(cf1, @"SystemHasAudioInputDeviceExcludingBluetooth"))
      {
        IsAirPlayVideoActive = vaemSystemHasAudioInputDeviceExcludingBluetooth();
        goto LABEL_16;
      }

      if (CFEqual(cf1, @"UnduckFadeDuration"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_122(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 unduckFadeDuration];
        goto LABEL_175;
      }

      if (CFEqual(cf1, @"UnduckToLevelScalar"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_123(theArray);
          return LODWORD(theArray[0]);
        }

        [a1 unduckToLevelScalar];
        goto LABEL_175;
      }

      if (CFEqual(cf1, @"UserMuted"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_124(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 userMuted];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"VibrationData"))
      {
        if (a1)
        {
          SInt32 = [a1 vibrationData];
          if (!SInt32)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        MXCoreSessionCopyProperty_cold_125(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"VPBlockConfiguration"))
      {
        if (a1)
        {
          SInt32 = [a1 vpBlockConfiguration];
          if (!SInt32)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        MXCoreSessionCopyProperty_cold_126(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"WantsToPauseSpokenAudio"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_127(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 wantsToPauseSpokenAudio];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"WantsVolumeChangesWhenPaused"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_128(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 wantsVolumeChangesWhenPaused];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"WantsVolumeChangesWhenPausedOrInactive"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_129(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 wantsVolumeChangesWhenPausedOrInactive];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"AC3IsSupported"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_130(theArray);
          return LODWORD(theArray[0]);
        }

        if (!vaemIsAC3EncodingSupported())
        {
          IsAirPlayVideoActive = vaemGetAC3IsSupported();
          goto LABEL_16;
        }

        goto LABEL_574;
      }

      if (CFEqual(cf1, @"ActiveAudioRoute") || CFEqual(cf1, @"CurrentlyActiveRoute"))
      {
        v68 = CFEqual(cf1, @"CurrentlyActiveRoute");
        if (!a1 || v68 || ([a1 currentlyControllingFlags] & 2) != 0)
        {
          cmsmUpdateCurrentActiveRoutesInfo();
          SInt32 = CMSMUtility_GetCurrentRouteTypeAtIndex(0);
          if (!SInt32)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        SInt32 = cmsCopyOverrideRoute(a1);
        if (SInt32)
        {
          goto LABEL_8;
        }

        if ([a1 audioCategory])
        {
          v69 = [a1 audioCategory];
        }

        else
        {
          v69 = @"Audio/Video";
        }

        if ([a1 audioMode])
        {
          v70 = [a1 audioMode];
        }

        else
        {
          v70 = @"Default";
        }

        if ([a1 activationContext])
        {
          v71 = [a1 activationContext];
        }

        else
        {
          v71 = 0;
        }

        CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(v69, v70, v71, [a1 prefersBluetoothHighQualityContentCapture], 0, a4, 0, 0);
        return 0;
      }

      if (CFEqual(cf1, @"ApplicationState"))
      {
        if (a1)
        {
          LODWORD(theArray[0]) = CMSUtility_GetApplicationStateForSession(a1);
          SInt32 = CFNumberCreate(a3, kCFNumberSInt32Type, theArray);
          goto LABEL_8;
        }

        MXCoreSessionCopyProperty_cold_131(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"AudioClockDevice"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_132(theArray);
          return LODWORD(theArray[0]);
        }

        FigSimpleMutexLock();
        FigVAEndpointManagerCopyPropertyForAudioDevice(qword_1EB75E090, 0x1F289B370, *MEMORY[0x1E695E480], [+[MXSessionManager defaultVADID] sharedInstance];
        goto LABEL_961;
      }

      if (CFEqual(cf1, @"AudioQueueOptions"))
      {
        if (a1)
        {
          SInt32 = CMSMUtility_CreateAudioQueueOptionsDictionary(a1);
          goto LABEL_8;
        }

        MXCoreSessionCopyProperty_cold_133(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"AvailableOutputStreamFormats"))
      {
        if (a1)
        {
          theArray[0] = 0;
          valuePtr = 0.0;
          CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a1);
          v10 = vaemVADCopyAvailableStreamFormatsForVADID(CurrentOutputVADID, 1, theArray);
          v73 = 0;
          if (!v10)
          {
            v73 = MXCFDataCreate(theArray[0], (56 * LODWORD(valuePtr)));
          }

          *a4 = v73;
          if (theArray[0])
          {
            free(theArray[0]);
          }

          return v10;
        }

        MXCoreSessionCopyProperty_cold_134(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"AvailableRouteControlFeatures"))
      {
        if (a1)
        {
          SInt32 = [a1 copyAvailableRouteControlFeatures:{objc_msgSend(a1, "additiveRoutingInfo")}];
          goto LABEL_8;
        }

        MXCoreSessionCopyProperty_cold_135(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"CurrentAudioHardwareFormat"))
      {
        if (a1)
        {
          theArray[0] = 0;
          IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([a1 audioCategory]);
          v75 = CMSUtility_GetCurrentOutputVADID(a1);
          vaemCopyDeviceFormat(v75, IsCategoryInputOnly, theArray);
          v10 = v76;
          *a4 = theArray[0];
          return v10;
        }

        MXCoreSessionCopyProperty_cold_136(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"CurrentAudioHardwareInputNumberChannels"))
      {
        if (a1)
        {
          v77 = CMSUtility_GetCurrentInputVADID(a1);
          NumberOfChannelsForVADIDAndScope = vaemGetNumberOfChannelsForVADIDAndScope(v77, 1);
          SInt32 = MXCFNumberCreateFromSInt32(NumberOfChannelsForVADIDAndScope);
          goto LABEL_8;
        }

        MXCoreSessionCopyProperty_cold_137(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"CurrentAudioHardwareOutputNumberChannels"))
      {
        if (a1)
        {
          v79 = CMSUtility_GetCurrentOutputVADID(a1);
          v80 = vaemGetNumberOfChannelsForVADIDAndScope(v79, 0);
          SInt32 = MXCFNumberCreateFromSInt64(v80);
          goto LABEL_8;
        }

        MXCoreSessionCopyProperty_cold_138(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"CurrentInputDeviceBufferSize"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_139(theArray);
          return LODWORD(theArray[0]);
        }

        FigSimpleMutexLock();
        v81 = CMSUtility_GetCurrentInputVADID(a1);
        v82 = 1768845428;
        goto LABEL_641;
      }

      if (CFEqual(cf1, @"CurrentInputLatency"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_140(theArray);
          return LODWORD(theArray[0]);
        }

        v83 = qword_1EB75E090;
        v84 = CMSUtility_GetCurrentInputVADID(a1);
        v85 = 0x1F289B930;
        goto LABEL_646;
      }

      if (CFEqual(cf1, @"CurrentOutputDeviceBufferSize"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_141(theArray);
          return LODWORD(theArray[0]);
        }

        FigSimpleMutexLock();
        v81 = CMSUtility_GetCurrentOutputVADID(a1);
        v82 = 1869968496;
LABEL_641:
        DeviceBufferNumPCMFrames = vaemGetDeviceBufferNumPCMFrames(v81, v82);
        *a4 = MXCFNumberCreateFromSInt64(DeviceBufferNumPCMFrames);
LABEL_961:
        FigSimpleMutexUnlock();
        return 0;
      }

      if (CFEqual(cf1, @"CurrentOutputLatency"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_142(theArray);
          return LODWORD(theArray[0]);
        }

        v83 = qword_1EB75E090;
        v84 = CMSUtility_GetCurrentOutputVADID(a1);
        v85 = 0x1F289B950;
LABEL_646:
        v87 = *MEMORY[0x1E695E480];

        return FigVAEndpointManagerCopyPropertyForAudioDevice(v83, v85, v87, v84, a4);
      }

      if (CFEqual(cf1, @"CurrentStereoInputOrientation"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_143(theArray);
          return LODWORD(theArray[0]);
        }

        FigSimpleMutexLock();
        StereoInputOrientation = vaemGetStereoInputOrientation();
        *a4 = MXCFNumberCreateFromSInt32(StereoInputOrientation);
        goto LABEL_961;
      }

      if (CFEqual(cf1, @"DefaultCalibratedOutputVolume"))
      {
        if (a1)
        {
          v89 = objc_alloc(MEMORY[0x1E696AD98]);
          LODWORD(v90) = 1118231593;
          v91 = [v89 initWithFloat:v90];
          if (dword_1EB75DE40)
          {
            v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v10 = 0;
          *a4 = v91;
          return v10;
        }

        MXCoreSessionCopyProperty_cold_144(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"DisallowAudioFormatChanges"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_145(theArray);
          return LODWORD(theArray[0]);
        }

        v93 = qword_1EB75E090;
        v94 = MEMORY[0x1E695E480];
        v95 = 0x1F289B7B0;
        goto LABEL_1018;
      }

      if (CFEqual(cf1, @"HasEchoCancelledInput"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_146(theArray);
          return LODWORD(theArray[0]);
        }

        v96 = [a1 isRoutedToOnDemandVAD];
        v97 = v96;
        IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(v96, v98);
        if (IsAdditiveRoutingEnabled && (IsAdditiveRoutingEnabled = objc_msgSend_isActive(a1), (IsAdditiveRoutingEnabled & v97) == 1))
        {
          IsRecordingCategory = CMSMUtility_IsRecordingCategory([a1 audioCategory]);
        }

        else if (MX_FeatureFlags_IsOverdubRecordingEnabled(IsAdditiveRoutingEnabled, v100))
        {
          IsRecordingCategory = [a1 hasEchoCancelledInput];
        }

        else
        {
          IsRecordingCategory = 0;
        }

        if (dword_1EB75DE40)
        {
          v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v27 = objc_alloc(MEMORY[0x1E696AD98]);
        v26 = IsRecordingCategory;
LABEL_79:
        SInt32 = [v27 initWithBool:v26];
        goto LABEL_8;
      }

      v102 = CFEqual(cf1, @"SupportsEchoCancelledInput");
      if (v102)
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_147(theArray);
          return LODWORD(theArray[0]);
        }

        if (MX_FeatureFlags_IsOverdubRecordingEnabled(v102, v103))
        {
          v104 = [a1 supportsEchoCancelledInput];
        }

        else
        {
          v104 = 0;
        }

        v27 = objc_alloc(MEMORY[0x1E696AD98]);
        v26 = v104;
        goto LABEL_79;
      }

      if (CFEqual(cf1, @"HostApplicationDisplayID"))
      {
        if (a1 && [objc_msgSend(a1 "clientPID")])
        {
          SInt32 = MX_RunningBoardServices_CopyHostDisplayIDForPID([objc_msgSend(a1 "clientPID")]);
          if (SInt32)
          {
            goto LABEL_8;
          }

          SInt32 = [a1 displayID];
          if (!SInt32)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        MXCoreSessionCopyProperty_cold_148(theArray);
        return LODWORD(theArray[0]);
      }

      if (CFEqual(cf1, @"InputSource"))
      {
        v93 = qword_1EB75E090;
        v94 = MEMORY[0x1E695E480];
        v95 = 0x1F289B670;
LABEL_1018:
        v191 = *v94;

        return FigEndpointManagerCopyProperty(v93, v95, v191, a4);
      }

      if (CFEqual(cf1, @"InputSources"))
      {
        v93 = qword_1EB75E090;
        v94 = MEMORY[0x1E695E480];
        v95 = 0x1F289B6B0;
        goto LABEL_1018;
      }

      if (CFEqual(cf1, @"InputGainAvailable"))
      {
        v93 = qword_1EB75E090;
        v94 = MEMORY[0x1E695E480];
        v95 = 0x1F289B650;
        goto LABEL_1018;
      }

      if (CFEqual(cf1, @"InputGainScalar"))
      {
        v93 = qword_1EB75E090;
        v94 = MEMORY[0x1E695E480];
        v95 = 0x1F289B790;
        goto LABEL_1018;
      }

      if (CFEqual(cf1, @"IsInputOutputDecoupled"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_149(theArray);
          return LODWORD(theArray[0]);
        }

        v106 = CMSUtility_GetCurrentOutputVADID(a1);
        v107 = CMSUtility_GetCurrentInputVADID(a1);
        v17 = MEMORY[0x1E695E4D0];
        v18 = MEMORY[0x1E695E4C0];
        v19 = v106 == v107;
        goto LABEL_17;
      }

      if (CFEqual(cf1, @"IsLongFormVideo"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_150(theArray);
          return LODWORD(theArray[0]);
        }

        isActive = [a1 isLongFormVideo];
        goto LABEL_43;
      }

      if (CFEqual(cf1, @"IsNowPlayingEligible"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_151(theArray);
          return LODWORD(theArray[0]);
        }

        IsAirPlayVideoActive = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1);
        goto LABEL_16;
      }

      if (CFEqual(cf1, @"IsVolumeButtonClient"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_152(theArray);
          return LODWORD(theArray[0]);
        }

        VolumeButtonClient = CMSessionMgrFindVolumeButtonClient(3, v108);
        v17 = MEMORY[0x1E695E4D0];
        if (VolumeButtonClient != a1)
        {
          v17 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_19;
      }

      if (CFEqual(cf1, @"MATAtmosIsAvailable"))
      {
        FigEndpointManagerCopyProperty(qword_1EB75E090, 0x1F289B870, *MEMORY[0x1E695E480], a4);
        return 0;
      }

      if (CFEqual(cf1, @"MATAtmosIsEnabled"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_153(theArray);
          return LODWORD(theArray[0]);
        }

        IsMATAtmosEnabled = vaemIsMATAtmosEnabled();
        goto LABEL_784;
      }

      if (CFEqual(cf1, @"MaximumNumberOfInputChannels"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_154(theArray);
          return LODWORD(theArray[0]);
        }

        LODWORD(theArray[0]) = [a1 audioSessionID];
        v111 = qword_1EB75E090;
        v112 = *MEMORY[0x1E695E480];
        v113 = 1;
        return FigVAEndpointManagerCopyPropertyForScope(v111, 0x1F289B910, v112, v113, theArray, a4);
      }

      if (CFEqual(cf1, @"MaximumNumberOfOutputChannels"))
      {
        if (!a1)
        {
          MXCoreSessionCopyProperty_cold_155(theArray);
          return LODWORD(theArray[0]);
        }

        if (FigRoutingManagerIsNonSelfOnlyLocalAirPlayEndpointPicked([a1 routingContextUUID]) && CMSMDeviceState_ItsAnAppleTV())
        {
          v114 = 2;
        }

        else if (vaemIsMATAtmosEnabled())
        {
          v114 = 32;
        }

        else
        {
          if (!vaemIsAC3EncodingSupported())
          {
            LODWORD(theArray[0]) = [a1 audioSessionID];
            v111 = qword_1EB75E090;
            v112 = *MEMORY[0x1E695E480];
            v113 = 0;
            return FigVAEndpointManagerCopyPropertyForScope(v111, 0x1F289B910, v112, v113, theArray, a4);
          }

          v114 = 6;
        }

        active = MXCFNumberCreateFromSInt64(v114);
        goto LABEL_106;
      }

      if (!CFEqual(cf1, @"NeroSuspended"))
      {
        if (CFEqual(cf1, @"OptOutOfMutePriority"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_156(theArray);
            return LODWORD(theArray[0]);
          }

          OptOutOfMutePriority = CMSUtility_GetOptOutOfMutePriority(a1);
          goto LABEL_1042;
        }

        if (CFEqual(cf1, @"OutputDestination"))
        {
          v93 = qword_1EB75E090;
          v94 = MEMORY[0x1E695E480];
          v95 = 0x1F289B690;
          goto LABEL_1018;
        }

        if (CFEqual(cf1, @"OutputDestinations"))
        {
          v93 = qword_1EB75E090;
          v94 = MEMORY[0x1E695E480];
          v95 = 0x1F289B6D0;
          goto LABEL_1018;
        }

        if (CFEqual(cf1, @"OverrideRoute"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_157(theArray);
            return LODWORD(theArray[0]);
          }

          active = cmsCopyOverrideRoute(a1);
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"PhysicalFormatsSupported"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_158(theArray);
            return LODWORD(theArray[0]);
          }

          active = vaemCopyVirtualFormatsSupported();
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"PickedRouteForSession"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_159(theArray);
            return LODWORD(theArray[0]);
          }

          v116 = a1;
          goto LABEL_839;
        }

        if (CFEqual(cf1, @"PiPIsPossible"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_160(theArray);
            return LODWORD(theArray[0]);
          }

          if (CMSMDeviceState_SupportsPiP() && CMSUtility_HasBackgroundEntitlement(a1) && CMSMUtility_IsPiPAllowedForCategory([a1 audioCategory]))
          {
            v117 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v117 = MEMORY[0x1E695E4C0];
          }

          goto LABEL_1045;
        }

        if (CFEqual(cf1, @"PowerBudget"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_161(theArray);
            return LODWORD(theArray[0]);
          }

          active = CMSUtility_CopyCPMSPowerBudgetForSession();
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"PowerProfile"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_162(theArray);
            return LODWORD(theArray[0]);
          }

          active = [a1 powerProfile];
          if (active)
          {
            goto LABEL_1029;
          }

LABEL_106:
          v10 = 0;
          *a4 = active;
          return v10;
        }

        if (CFEqual(cf1, @"PreferredInputs"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_163(theArray);
            return LODWORD(theArray[0]);
          }

          active = cmsCopySubPortPreferencesAndInputOverride(a1);
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"PrefersToTakeHWControlFlagsFromAnotherSession"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_164(theArray);
            return LODWORD(theArray[0]);
          }

          IsMATAtmosEnabled = CMSUtility_GetPrefersToTakeHWControlFlagsFromAnotherSession(a1);
LABEL_784:
          v118 = MEMORY[0x1E695E4C0];
          if (IsMATAtmosEnabled)
          {
            v118 = MEMORY[0x1E695E4D0];
          }

          active = *v118;
          goto LABEL_1029;
        }

        v119 = CFEqual(cf1, @"RouteControlFeatures");
        if (v119)
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_165(theArray);
            return LODWORD(theArray[0]);
          }

          if (CMSMVAUtility_IsAdditiveRoutingEnabled(v119, v120))
          {
            v121 = [a1 isRoutedToOnDemandVAD];
          }

          else
          {
            v121 = 0;
          }

          v122 = objc_alloc(MEMORY[0x1E695DF20]);
          active = [v122 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v121), @"RouteControlFeatures", 0}];
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"RoutingContext"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_166(theArray);
            return LODWORD(theArray[0]);
          }

          FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID([a1 routingContextUUID], a4);
          return 0;
        }

        if (CFEqual(cf1, @"SelectableInputs"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_167(theArray);
            return LODWORD(theArray[0]);
          }

          VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([a1 audioCategory]);
          v124 = [a1 mode];
          v125 = [a1 allowedPortTypes];
          v126 = [a1 prefersBluetoothHighQualityContentCapture];
          v127 = VADCategoryFromFigCategoryName;
          v128 = v124;
          v129 = v125;
          v130 = 1;
          goto LABEL_806;
        }

        if (CFEqual(cf1, @"SelectableOutputs"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_168(theArray);
            return LODWORD(theArray[0]);
          }

          v131 = CMSMVAUtility_GetVADCategoryFromFigCategoryName([a1 audioCategory]);
          v132 = [a1 mode];
          v133 = [a1 allowedPortTypes];
          v126 = [a1 prefersBluetoothHighQualityContentCapture];
          v127 = v131;
          v128 = v132;
          v129 = v133;
          v130 = 0;
LABEL_806:
          active = cmsmCopySelectablePortsForRouteConfiguration(v127, v128, v129, v126, v130);
          goto LABEL_106;
        }

        v134 = CFEqual(cf1, @"ShouldInputBeMuted");
        if (v134)
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_169(theArray);
            return LODWORD(theArray[0]);
          }

          IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(v134, v135);
          if (!IsSessionBasedMutingEnabled)
          {
            if (MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v137))
            {
              v139 = CMSUtility_CopyBundleID(a1);
              v140 = -[NSSet containsObject:]([+[MXSessionManager sharedInstance](MXSessionManager mutedSessionBundleIDs], "containsObject:", v139);
              if (v140 && dword_1EB75DE40)
              {
                v141 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v142 = MEMORY[0x1E695E4D0];
              if (!v140)
              {
                v142 = MEMORY[0x1E695E4C0];
              }

              v143 = *v142;
              *a4 = *v142;
              CFRetain(v143);
            }

            return 0;
          }

          v11 = qword_1EB75DE38;
          v12 = v4;
          v13 = 4294951611;
          v14 = 14445;
          goto LABEL_11;
        }

        if (CFEqual(cf1, @"SpeechDetectStyle"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_170(theArray);
            return LODWORD(theArray[0]);
          }

          v138 = [+[MXSessionManager sharedInstance](MXSessionManager currentSpeechDetectStyle:"currentSpeechDetectStyle:", a1];
          active = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v138];
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"UserVolume"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_171(theArray);
            return LODWORD(theArray[0]);
          }

          valuePtr = CMSUtility_GetUserVolume(a1);
          p_valuePtr = &valuePtr;
          v32 = a3;
          goto LABEL_1007;
        }

        if (CFEqual(cf1, @"WantsToBeVolumeButtonClient"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_172(theArray);
            return LODWORD(theArray[0]);
          }

          OptOutOfMutePriority = CMSUtility_GetWantsToBeVolumeButtonClient(a1);
          goto LABEL_1042;
        }

        if (CFEqual(cf1, @"PickableRoutes"))
        {
          FigSimpleMutexLock();
          v144 = CMSUtility_CopyPickableRoutesForSession(0);
          *a4 = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v144, 0);
          if (v144)
          {
            CFRelease(v144);
          }

          goto LABEL_961;
        }

        if (CFEqual(cf1, @"PickedRoute"))
        {
          v116 = 0;
LABEL_839:
          active = cmsDeepCopyPickedRoute(v116);
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"CurrentInputSafetyOffset"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_173(theArray);
            return LODWORD(theArray[0]);
          }

          v145 = CMSUtility_GetCurrentInputVADID(a1);
          v146 = 1;
          goto LABEL_846;
        }

        if (CFEqual(cf1, @"CurrentOutputSafetyOffset"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_174(theArray);
            return LODWORD(theArray[0]);
          }

          v145 = CMSUtility_GetCurrentOutputVADID(a1);
          v146 = 0;
LABEL_846:
          CurrentSafetyOffsetForScope = vaemGetCurrentSafetyOffsetForScope(v145, v146);
          active = MXCFNumberCreateFromFloat32(CurrentSafetyOffsetForScope);
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"DisplayIDsOfActiveSessions"))
        {
          if (!a1)
          {
            MXCoreSessionCopyProperty_cold_175(theArray);
            return LODWORD(theArray[0]);
          }

          active = CMSMUtility_CopyDisplayIDsOfActiveSessions();
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"CurrentlyActiveCategory"))
        {
          active = CMSMUtility_CopyCurrentlyActiveCategory();
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"CurrentlyActiveMode"))
        {
          active = CMSMUtility_CopyCurrentlyActiveMode();
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"ActiveInputRouteForPlayAndRecordNoBluetooth"))
        {
          theArray[0] = 0;
          FigSimpleMutexLock();
          FigVAEndpointManagerCopyPropertyForRouteConfiguration(qword_1EB75E090, 0x1F289BAD0, *MEMORY[0x1E695E480], @"PlayAndRecord", @"Default", theArray);
          FigSimpleMutexUnlock();
          if (!theArray[0])
          {
            *a4 = 0;
            return 0;
          }

          if (CFArrayGetCount(theArray[0]) < 1)
          {
            ValueAtIndex = 0;
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 0);
            if (ValueAtIndex)
            {
              ValueAtIndex = CFRetain(ValueAtIndex);
            }
          }

          v149 = theArray[0];
          *a4 = ValueAtIndex;
          if (!v149)
          {
            return 0;
          }

          v150 = v149;
LABEL_942:
          CFRelease(v150);
          return 0;
        }

        if (CFEqual(cf1, @"VoicePromptStyle"))
        {
          VoicePromptStyle = CMSMUtility_GetVoicePromptStyle();
          goto LABEL_1000;
        }

        if (CFEqual(cf1, @"CurrentRouteHasVolumeControl"))
        {
          v10 = CMSMUtility_CopyCurrentlyActiveCategory();
          FigSimpleMutexLock();
          if (!v10 && dword_1EB75E09C != 1668505974)
          {
            if (dword_1EB75E118)
            {
              v151 = *MEMORY[0x1E695E4C0];
              *a4 = *MEMORY[0x1E695E4C0];
              CFRetain(v151);
            }

            else
            {
              if (!CMSMUtility_SomeSessionHasDoNotResetAudioCategoryOnNextInactive())
              {
                vaemResetVADCategoryToStandardAVAndDefaultMode();
              }

              FigEndpointManagerCopyProperty(qword_1EB75E090, 0x1F289B610, *MEMORY[0x1E695E480], a4);
            }

            goto LABEL_961;
          }

          if (byte_1EB75E098)
          {
            v152 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v152 = MEMORY[0x1E695E4C0];
          }

          v153 = *v152;
          *a4 = *v152;
          CFRetain(v153);
          FigSimpleMutexUnlock();
          goto LABEL_940;
        }

        if (CFEqual(cf1, @"ShouldIgnorePlayCommandsFromAccessory"))
        {
          OptOutOfMutePriority = CMSMUtility_ShouldIgnorePlayCommandsFromAccessory();
LABEL_1042:
          v117 = MEMORY[0x1E695E4D0];
          v176 = MEMORY[0x1E695E4C0];
          v177 = OptOutOfMutePriority == 0;
LABEL_1043:
          if (v177)
          {
            v117 = v176;
          }

          goto LABEL_1045;
        }

        if (CFEqual(cf1, @"PhoneCallExists"))
        {
          OptOutOfMutePriority = CMSMUtility_IsPhoneCallActive();
          goto LABEL_1042;
        }

        if (CFEqual(cf1, @"CurrentPhoneCallIsRoutedViaCarBT"))
        {
          v154 = FigRoutingManagerCopyCarBluetoothIDs(qword_1EB75E190);
          v10 = CMSMUtility_CopyCurrentRouteTypes();
          if (CMSMUtility_PhoneCallOrRingtoneExists())
          {
            if (FigCFArrayContainsValue())
            {
              CurrentDeviceIdentifierAtIndex = CMSMUtility_GetCurrentDeviceIdentifierAtIndex(0);
              if (cmsmIsDeviceIDIncludedInCarBluetoothIDs(CurrentDeviceIdentifierAtIndex, v154))
              {
                v156 = MEMORY[0x1E695E4D0];
LABEL_895:
                v159 = *v156;
LABEL_924:
                *a4 = v159;
                CFRetain(v159);
                v181 = CMSMUtility_CopyCurrentRouteIdentifiers();
                if (dword_1EB75DE40)
                {
                  v182 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                if (v154)
                {
                  CFRelease(v154);
                }

                if (v181)
                {
                  CFRelease(v181);
                }

LABEL_940:
                if (!v10)
                {
                  return v10;
                }

                v150 = v10;
                goto LABEL_942;
              }
            }

            if (FigCFArrayContainsValue() || !CMSMUtility_GetNumberOfCurrentOutputPorts())
            {
              v166 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, 0x1F2893B50);
              if (v166)
              {
                v167 = v166;
                Count = CFArrayGetCount(v166);
                if (Count < 1)
                {
                  v171 = MEMORY[0x1E695E4C0];
                }

                else
                {
                  v169 = Count;
                  v170 = 0;
                  v171 = MEMORY[0x1E695E4C0];
                  while (1)
                  {
                    LODWORD(theArray[0]) = 0;
                    v172 = CFArrayGetValueAtIndex(v167, v170);
                    CFNumberGetValue(v172, kCFNumberSInt32Type, theArray);
                    if (vaeGetPortTypeFromPortID(LODWORD(theArray[0])) == 1885892706)
                    {
                      v173 = vaeCopyDeviceIdentifierFromVADPort(theArray[0]);
                      IsDeviceIDIncludedInCarBluetoothIDs = cmsmIsDeviceIDIncludedInCarBluetoothIDs(v173, v154);
                      if (v173)
                      {
                        CFRelease(v173);
                      }

                      if (IsDeviceIDIncludedInCarBluetoothIDs)
                      {
                        break;
                      }
                    }

                    if (v169 == ++v170)
                    {
                      goto LABEL_922;
                    }
                  }

                  v171 = MEMORY[0x1E695E4D0];
                }

LABEL_922:
                CFRelease(v167);
              }

              else
              {
                v171 = MEMORY[0x1E695E4C0];
              }

              v159 = *v171;
              goto LABEL_924;
            }
          }

          v156 = MEMORY[0x1E695E4C0];
          goto LABEL_895;
        }

        if (CFEqual(cf1, @"CurrentPlayingSessionIsRoutedViaCarBT"))
        {
          v157 = CMSMUtility_CopyCurrentRouteTypes();
          if (FigCFArrayContainsValue())
          {
            v158 = 1;
          }

          else
          {
            v158 = FigCFArrayContainsValue() != 0;
          }

          v162 = FigRoutingManagerCopyCarBluetoothIDs(qword_1EB75E190);
          v163 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsPlayingAndPlaysToCarMainAudio, 0);
          if (v163 && v158 && (v164 = CMSMUtility_GetCurrentDeviceIdentifierAtIndex(0), cmsmIsDeviceIDIncludedInCarBluetoothIDs(v164, v162)))
          {
            v165 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v165 = MEMORY[0x1E695E4C0];
          }

          v178 = *v165;
          *a4 = *v165;
          CFRetain(v178);
          v179 = CMSMUtility_CopyCurrentRouteIdentifiers();
          if (dword_1EB75DE40)
          {
            v180 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (v157)
          {
            CFRelease(v157);
          }

          if (v179)
          {
            CFRelease(v179);
          }

          if (v162)
          {
            CFRelease(v162);
          }

          if (!v163)
          {
            return 0;
          }

          v150 = v163;
          goto LABEL_942;
        }

        if (CFEqual(cf1, @"NowPlayingAppShouldResumeForCarPlay"))
        {
          ShouldResumeForCarPlay = CMSMNP_GetNowPlayingAppShouldResumeForCarPlay();
          if (dword_1EB75DE40)
          {
            v161 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v117 = MEMORY[0x1E695E4D0];
          v176 = MEMORY[0x1E695E4C0];
          v177 = ShouldResumeForCarPlay == 0;
          goto LABEL_1043;
        }

        if (CFEqual(cf1, @"CarPlayIsConnected"))
        {
          v175 = [+[MXSessionManager sharedInstance](MXSessionManager carPlayIsConnected];
          goto LABEL_984;
        }

        if (CFEqual(cf1, @"CarPlayAuxStreamSupport"))
        {
          OptOutOfMutePriority = FigRoutingManager_iOSIsCarPlayAuxStreamSupported();
          goto LABEL_1042;
        }

        if (CFEqual(cf1, @"CarPlaySupportsMixableSiri"))
        {
          OptOutOfMutePriority = CMSMUtility_DoesCarPlaySupportMixableSiri();
          goto LABEL_1042;
        }

        if (CFEqual(cf1, @"SomeClientIsPlaying"))
        {
          v183 = byte_1EB75E138;
          goto LABEL_1037;
        }

        if (CFEqual(cf1, @"SomeClientIsPlayingLongFormAudio"))
        {
          OptOutOfMutePriority = CMSMUtility_SomeClientIsPlayingLongFormAudio();
          goto LABEL_1042;
        }

        if (CFEqual(cf1, @"ActiveClientPIDsThatHideTheSpeechDetectionDevice"))
        {
          active = CMSMUtility_CopyActiveClientPIDsThatHideTheSpeechDetectionDevice();
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"SomeLongFormVideoClientIsActiveOverAirPlayVideo"))
        {
          FigSimpleMutexLock();
          v184 = byte_1EB75E0A8;
LABEL_957:
          if (v184)
          {
            v185 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v185 = MEMORY[0x1E695E4C0];
          }

          v186 = *v185;
          *a4 = *v185;
          CFRetain(v186);
          goto LABEL_961;
        }

        if (CFEqual(cf1, @"SomeLongFormVideoClientIsPlayingOverAirPlayVideo"))
        {
          FigSimpleMutexLock();
          v184 = byte_1EB75E0A9;
          goto LABEL_957;
        }

        if (CFEqual(cf1, @"SomeLongFormVideoClientIsPlaying"))
        {
          FigSimpleMutexLock();
          v184 = byte_1EB75E0AA;
          goto LABEL_957;
        }

        if (CFEqual(cf1, @"IsSomeoneRecording"))
        {
          LODWORD(theArray[0]) = 0;
          FigSimpleMutexLock();
          if (CMSMUtility_IsSomeClientRecording())
          {
            LODWORD(theArray[0]) = dword_1EB75E0A4;
          }

          FigSimpleMutexUnlock();
          v32 = *MEMORY[0x1E695E480];
          p_valuePtr = theArray;
          goto LABEL_104;
        }

        if (CFEqual(cf1, @"RecordingClientPIDs"))
        {
          active = [+[MXSessionManager sharedInstance](MXSessionManager recordingClientPIDs];
          if (!active)
          {
            goto LABEL_106;
          }

          goto LABEL_1034;
        }

        if (CFEqual(cf1, @"DeviceSupportsPiP"))
        {
          OptOutOfMutePriority = CMSMDeviceState_SupportsPiP();
          goto LABEL_1042;
        }

        if (CFEqual(cf1, @"CurrentPrimaryAppDisplayID"))
        {
          active = [+[MXFrontBoardServices sharedInstance](MXFrontBoardServices copyPrimaryAppDisplayID];
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"UplinkMute"))
        {
          v175 = [+[MXSessionManager sharedInstance](MXSessionManager uplinkMute];
          goto LABEL_984;
        }

        if (CFEqual(cf1, @"DownlinkMute"))
        {
          v93 = qword_1EB75E090;
          v94 = MEMORY[0x1E695E480];
          v95 = 0x1F289B4F0;
          goto LABEL_1018;
        }

        if (CFEqual(cf1, @"iOSWillRequestToBorrowStarkMainAudio"))
        {
          v187 = 1;
LABEL_981:
          OptOutOfMutePriority = CMSMUtility_iOSWillRequestCarMainAudio(v187);
          goto LABEL_1042;
        }

        if (CFEqual(cf1, @"iOSWillRequestToTakeStarkMainAudio"))
        {
          v187 = 0;
          goto LABEL_981;
        }

        if (CFEqual(cf1, @"StarkMainAudioIsOwnedByiOSButBorrowedByCar"))
        {
          v175 = [+[MXSessionManager sharedInstance](MXSessionManager starkMainAudioIsOwnedByiOSButBorrowedByCar];
LABEL_984:
          v117 = MEMORY[0x1E695E4D0];
          if (!v175)
          {
            v117 = MEMORY[0x1E695E4C0];
          }

          goto LABEL_1045;
        }

        if (CFEqual(cf1, @"SpeechDetectionDevicePresent"))
        {
          OptOutOfMutePriority = vaemSpeechDetectionVADExists();
          goto LABEL_1042;
        }

        if (CFEqual(cf1, @"NowPlayingAppPID"))
        {
          active = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:{-[MXNowPlayingAppManager nowPlayingAppPID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppPID")}];
          goto LABEL_106;
        }

        if (CFEqual(cf1, @"NowPlayingAppDisplayID"))
        {
          active = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
          goto LABEL_1034;
        }

        if (CFEqual(cf1, @"NowPlayingAppIsPlaying"))
        {
          IsInterrupted = CMSMNP_GetNowPlayingAppIsPlaying();
LABEL_997:
          v189 = MEMORY[0x1E695E4D0];
          if (!IsInterrupted)
          {
            v189 = MEMORY[0x1E695E4C0];
          }

          VoicePromptStyle = *v189;
LABEL_1000:
          *a4 = VoicePromptStyle;
          if (!VoicePromptStyle)
          {
            return 0;
          }

          goto LABEL_20;
        }

        if (CFEqual(cf1, @"NowPlayingAppIsInterrupted"))
        {
          IsInterrupted = CMSMNP_GetNowPlayingAppIsInterrupted();
          goto LABEL_997;
        }

        if (CFEqual(cf1, @"HeadphoneVolumeLimit"))
        {
          v190 = PVMGetVolumeLimit();
LABEL_1006:
          *theArray = v190;
          v32 = *MEMORY[0x1E695E480];
          p_valuePtr = theArray;
LABEL_1007:
          v33 = kCFNumberFloat32Type;
          goto LABEL_105;
        }

        if (CFEqual(cf1, @"VibeIntensity"))
        {
          v190 = PVMGetVibeIntensityPreference();
          goto LABEL_1006;
        }

        if (CFEqual(cf1, @"ThermalGainAdjustment_Speaker"))
        {
          v93 = qword_1EB75E090;
          v94 = MEMORY[0x1E695E480];
          v95 = 0x1F289B810;
          goto LABEL_1018;
        }

        if (CFEqual(cf1, @"ThermalGainAdjustment_Haptics"))
        {
          v93 = qword_1EB75E090;
          v94 = MEMORY[0x1E695E480];
          v95 = 0x1F289B830;
          goto LABEL_1018;
        }

        if (CFEqual(cf1, @"HeadphoneJackIsConnected"))
        {
          v93 = qword_1EB75E090;
          v94 = MEMORY[0x1E695E480];
          v95 = 0x1F289B5D0;
          goto LABEL_1018;
        }

        if (!CFEqual(cf1, @"AirPlayScreenSuspended"))
        {
          if (CFEqual(cf1, @"HeadphoneJackHasInput"))
          {
            v93 = qword_1EB75E090;
            v94 = MEMORY[0x1E695E480];
            v95 = 0x1F289B5F0;
            goto LABEL_1018;
          }

          if (CFEqual(cf1, @"SystemIsAnAppleTV"))
          {
            OptOutOfMutePriority = CMSMDeviceState_ItsAnAppleTV();
            goto LABEL_1042;
          }

          if (CFEqual(cf1, @"ActiveNeroVisualStream"))
          {
            active = FigRoutingManagerCopyActiveNeroVisualStream([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
            goto LABEL_106;
          }

          if (CFEqual(cf1, @"ActiveNeroVisualStreamInfo"))
          {
            active = FigRoutingManagerCopyActiveNeroVisualStreamInfo([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
            goto LABEL_106;
          }

          if (CFEqual(cf1, @"ExternalScreenType"))
          {
            active = CMScreenGetScreenType();
            if (!active)
            {
              goto LABEL_106;
            }

LABEL_1029:
            active = CFRetain(active);
            goto LABEL_106;
          }

          if (CFEqual(cf1, @"ThermalControlInfo"))
          {
            active = vaemCopyThermalControlInfo();
            goto LABEL_106;
          }

          if (!CFEqual(cf1, @"LongFormVideoApps"))
          {
            if (!CFEqual(cf1, @"SomeRecordingSessionPresentThatDisallowsSystemSounds"))
            {
              if (!CFEqual(cf1, @"SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts"))
              {
                return 4294954312;
              }

              OptOutOfMutePriority = CMSMUtility_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts();
              goto LABEL_1042;
            }

            v183 = byte_1EB75E1D8;
LABEL_1037:
            if (v183)
            {
              v117 = MEMORY[0x1E695E4D0];
            }

            else
            {
              v117 = MEMORY[0x1E695E4C0];
            }

LABEL_1045:
            VoicePromptStyle = *v117;
            *a4 = *v117;
            goto LABEL_20;
          }

          active = [+[MXSessionManager sharedInstance](MXSessionManager longFormVideoApps];
LABEL_1034:
          active = active;
          goto LABEL_106;
        }
      }

      OptOutOfMutePriority = CMScreenIsSuspended();
      goto LABEL_1042;
    }

    v11 = qword_1EB75DE38;
    v12 = v4;
    v13 = 4294954316;
    v14 = 13066;
  }

  else
  {
    v11 = qword_1EB75DE38;
    v12 = v4;
    v13 = 4294954316;
    v14 = 13060;
  }

LABEL_11:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v13, "-CMSessionMgr-", v14, v12);
}

void cmsmDisplayLayoutChanged(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v9 = cmsmDisplayLayoutChanged_sideOverlayPresent == a1 && cmsmDisplayLayoutChanged_fullScreenModalPresent == a2 && cmsmDisplayLayoutChanged_fullScreenOverlayPresent == a3;
  if (!v9 || !FigCFEqual())
  {
    CMSMNotificationUtility_PostDisplayLayoutDidChange(v7, v6, v5, a4);
    cmsmDisplayLayoutChanged_sideOverlayPresent = v7;
    cmsmDisplayLayoutChanged_fullScreenModalPresent = v6;
    cmsmDisplayLayoutChanged_fullScreenOverlayPresent = v5;
    v10 = cmsmDisplayLayoutChanged_displayID;
    cmsmDisplayLayoutChanged_displayID = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v10)
    {

      CFRelease(v10);
    }
  }
}

void CMSMNotificationUtility_PostDisplayLayoutDidChange(int a1, int a2, int a3, uint64_t a4)
{
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a1 != 0];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:a2 != 0];
  v11 = [v8 initWithObjectsAndKeys:{v9, @"DisplayLayoutDidChange_SideOverlayPresent", v10, @"DisplayLayoutDidChange_FullScreenModalPresent", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a3 != 0), @"DisplayLayoutDidChange_FullScreenOverlayPresent", 0}];
  v12 = v11;
  if (a4)
  {
    [v11 setValue:a4 forKeyPath:@"DisplayLayoutDidChange_ApplicationDisplayID"];
  }

  v13 = [MXSystemController notifyAll:@"DisplayLayoutDidChange" payload:v12 dontPostIfSuspended:0];
  v15 = MXGetNotificationSenderQueue(v13, v14);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __CMSMNotificationUtility_PostDisplayLayoutDidChange_block_invoke;
  v16[3] = &unk_1E7AE7CE0;
  v16[4] = v12;
  MXDispatchAsync("CMSMNotificationUtility_PostDisplayLayoutDidChange", "CMSessionManager_NotificationUtilities.m", 1215, 0, 0, v15, v16);
}

void MXDispatchAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v13 = objc_autoreleasePoolPush();
  v14 = objc_autoreleasePoolPush();
  v28 = 0;
  v27 = 0uLL;
  if (CMSMDeviceState_IsAudiomxd(v14, v15))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == a6)
    {
      CreateACQDispatchID();
    }
  }

  objc_autoreleasePoolPop(v14);
  v29 = v27;
  v30 = v28;
  if (CMSMDeviceState_IsAudiomxd(v16, v17))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_2();
    }

    if (gSerialQueue == a6)
    {
      MEMORY[0x1B2733F40](&v29, 0, "MXDispatchAsync", a1, a2, a3, a4, a5);
    }
  }

  objc_autoreleasePoolPop(v13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MXDispatchAsync_block_invoke;
  block[3] = &unk_1E7AEC7C8;
  v20 = v29;
  v21 = v30;
  v22 = a1;
  v26 = a3;
  v23 = a2;
  v24 = a4;
  v25 = a5;
  block[4] = a6;
  block[5] = a7;
  dispatch_barrier_async(a6, block);
}

uint64_t MXGetNotificationSenderQueue(uint64_t a1, uint64_t a2)
{
  if (MXGetNotificationSenderQueue_onceToken != -1)
  {
    MXGetNotificationSenderQueue_cold_1();
  }

  return MXGetNotificationSenderQueue_notificationSenderQueue;
}

void __MXDispatchAsync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd(v2, v9))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v3)
    {
      MEMORY[0x1B2733F40](a1 + 48, 1, "MXDispatchAsync_block_invoke", v4, v5, v6, v7, v8);
    }
  }

  v10 = (*(*(a1 + 40) + 16))();
  v11 = *(a1 + 32);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 104);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd(v10, v17))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v11)
    {
      MEMORY[0x1B2733F40](a1 + 48, 2, "MXDispatchAsync_block_invoke", v12, v13, v14, v15, v16);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t CMSMDeviceState_IsAudiomxd(uint64_t a1, uint64_t a2)
{
  if (CMSMDeviceState_IsAudiomxd_onceToken != -1)
  {
    CMSMDeviceState_AddQueueToWatchDogMonitoring_cold_1();
  }

  return CMSMDeviceState_IsAudiomxd_sIsAudiomxd;
}

void CMSMUtility_ApplyForEachMatchingSessionGuts(uint64_t a1, unsigned int (*a2)(uint64_t, void, uint64_t), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a4 || !a5)
  {
    v12 = a4 ? 0 : a6;
    v13 = a4 ? a6 : 0;
    if (a4 | a5)
    {
      v30 = v13;
      v14 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
      obj = v14;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v43;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v43 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v42 + 1) + 8 * i);
            if ((!a2 || a2(a1, *(*(&v42 + 1) + 8 * i), a3)) && (!a7 || MX_RunningBoardServices_GetApplicationStateForPID([objc_msgSend(v19 "clientPID")], 0) - 1 >= 2))
            {
              [v32 addObject:v19];
            }
          }

          v16 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v16);
      }

      v20 = CMSMUtility_CopyPrioritizedListBasedOnPlayingAndActiveState(v32);
      v21 = v20;
      if (a5)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v22 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v39;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v39 != v24)
              {
                objc_enumerationMutation(v21);
              }

              CMSMUtility_PostNotificationToSession(*(*(&v38 + 1) + 8 * j), a5, v12);
            }

            v23 = [v21 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v23);
        }
      }

      else if (a4)
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v26 = [v20 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v35;
          do
          {
            for (k = 0; k != v27; ++k)
            {
              if (*v35 != v28)
              {
                objc_enumerationMutation(v21);
              }

              (a4)(*(*(&v34 + 1) + 8 * k), v30);
            }

            v27 = [v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
          }

          while (v27);
        }
      }
    }
  }
}

void *CMSMUtility_CopyPrioritizedListBasedOnPlayingAndActiveState(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 sortedArrayUsingComparator:&__block_literal_global_24];
  v4 = v3;
  objc_autoreleasePoolPop(v2);
  return v3;
}

void CMSMUtility_PostNotificationToSession(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    [a1 clientName];
    v5 = [a1 copyMXSessionList];
    goto LABEL_8;
  }

  v6 = [a1 isMemberOfClass:objc_opt_class()];
  if (v6 && MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v6, v7))
  {
    [a1 clientName];
    v5 = [a1 copyMXSessionIndependentInputAudioResourceList];
    goto LABEL_8;
  }

  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    [a1 clientName];
    v5 = [a1 copyMXSessionSecureList];
LABEL_8:
    v8 = v5;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v8 = 0;
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_9:
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v9 = CMSMUtility_CopyPrioritizedListBasedOnPlayingAndActiveState(v8);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

LABEL_17:
}

void mxCoreSessionRef_notificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }
}

uint64_t CMSessionCreateForRemoteDeviceID(uint64_t a1, MXCoreSessionSidekick **a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    v6 = [[MXCoreSessionSidekick alloc] initWithRemoteDeviceID:a1];
    v7 = 0;
    *a2 = v6;
  }

  else
  {
    v7 = CMSessionCreate(a2);
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t CMSessionCreate(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  CFObject = cmsession_createCFObject(a1, v3);
  if (!CFObject)
  {
    CFObject = MXCoreSessionInitialize(*(*a1 + 16));
  }

  objc_autoreleasePoolPop(v2);
  return CFObject;
}

uint64_t cmsession_createCFObject(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    if (CMSMDeviceState_IsAudiomxd(a1, a2))
    {
      CMSessionGetTypeID();
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v5 = Instance;
        *(Instance + 16) = objc_alloc_init(MXCoreSession);
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        MXGetNotificationSenderQueue(DefaultLocalCenter, v7);
        FigNotificationCenterAddWeakListener();
        *a1 = v5;
        return 0;
      }

      v9 = qword_1EB75DE38;
      v10 = v2;
      v11 = 4294954314;
      v12 = 106;
    }

    else
    {
      v9 = qword_1EB75DE38;
      v10 = v2;
      v11 = 4294951611;
      v12 = 91;
    }
  }

  else
  {
    v9 = qword_1EB75DE38;
    v10 = v2;
    v11 = 4294954316;
    v12 = 85;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "-CMSession_CInterface-", v12, v10);
}

uint64_t cmsInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t MXCoreSessionInitialize(void *a1)
{
  [a1 updateClientName:0];
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  [a1 setRoutingContextUUID:cf];
  if (cf)
  {
    CFRelease(cf);
  }

  [a1 setNeedsAudioBudget:0];
  [a1 setPowerProfile:0];
  [a1 setIsLongFormAudio:0];
  [a1 setOverridePortsList:0];
  [a1 setMode:1768776806];
  cmsSetAudioCategory(a1, @"SoloAmbientSound", 1, 0);
  [a1 setIsEligibleForNowPlayingAppConsideration:1];
  LODWORD(v2) = *"333?nsscbolg";
  [a1 setInterruptionFadeDuration:v2];
  [a1 setDesiredInputGainScalar:0];
  [a1 setPidToInheritAppStateFrom:0];
  [a1 setForceSoundCheck:0];
  [a1 setPreferredHardwareFormat:@"LPCM"];
  [a1 setExcludedPortsList:0];
  [a1 setPreferredInputSampleRate:44100.0];
  [a1 setPreferredOutputSampleRate:44100.0];
  [a1 setPreferredOutputSampleRateSetByClient:0];
  [a1 setDoNotNotifyOtherSessionsOnNextInactive:0];
  [a1 setAllowSystemSoundsWhileRecording:0];
  [a1 setWantsToPauseSpokenAudio:0];
  [a1 setAllowedRouteTypes:0];
  [a1 setAllowedPortTypes:0];
  [a1 setPrefersMultichannelAudio:0];
  [a1 setOrientationOverride:5];
  [a1 setPreferredStereoInputOrientation:0];
  LODWORD(v3) = -1038090240;
  [a1 setDuckToLevelDB:v3];
  LODWORD(v4) = 1045220557;
  [a1 setDuckToLevelScalar:v4];
  LODWORD(v5) = 1045220557;
  [a1 setUnduckToLevelScalar:v5];
  [a1 setWantsAutomaticClusterPairingOnPlaybackStart:0];
  [a1 setDeactivateTimerDelay:480];
  [a1 setAssertionAuditTimerDelay:480];
  [a1 setDisplayID:0];
  [a1 setPlaybackAssertionRef:0];
  [a1 setResumeAssertionRef:0];
  [a1 setResumeBackgroundAppUpdaterTimer:0];
  [a1 setExtendBackgroundAppAssertionTimer:0];
  [a1 setAddSharedAudioRouteToRoutablePorts:0];
  [a1 setIsRecordingMuted:0];
  [a1 setHasExternalMuteNotificationContext:0];
  [a1 setInterruptionFadeDurationSetByClient:0];
  [a1 setInterruptionStyleSetByClient:0];
  [a1 setDuckFadeDurationSetByClient:0];
  [a1 setUnduckFadeDurationSetByClient:0];
  [a1 setDuckToLevelScalarSetByClient:0];
  [a1 setDuckToLevelDBSetByClient:0];
  [a1 setUnduckToLevelScalarSetByClient:0];
  [a1 setShadowingAudioSessionID:0];
  [a1 setShadowingAudioSessionOptions:0];
  [a1 setTookControlOfStarkMainAudio:0];
  [a1 setStarkBorrowCount:0];
  [a1 setDuckCommandSentToCarSession:0];
  [a1 setPrefersConcurrentAirPlayAudio:0];
  [a1 setNowPlayingAppWasStoppedOnMostRecentActivation:0];
  [a1 setNowPlayingAppThatWasStoppedOnMostRecentActivationWasDoingSpokenAudio:0];
  [a1 setWaitingForRemoteInterruptionDoneIdentifier:0];
  [a1 setNotFullyInactive:0];
  [a1 setClientIsPlaying:0];
  [a1 setSomeMXSessionIsPlaying:0];
  [a1 setHapticEngineIsPlaying:0];
  [a1 setIsPlayingOutput:0];
  [a1 setSavedHWControlFlagsForClientThatDoesNotActuallyPlayAudio:0];
  [a1 setSystemSoundHasModifiedCurrentlyControllingFlags:0];
  [a1 setReporterStarted:0];
  [a1 setPrefersNoInterruptions:0];
  [a1 setDuckingSourceList:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
  [a1 setApplicationState:0];
  [a1 setIsAllowedToPlayInBackground:0];
  [a1 setHasFetchedBackgroundPrivileges:0];
  [a1 setHasGPSPrivileges:0];
  [a1 setIsAirPlayReceiverSession:0];
  [a1 setIsPiPPossible:0];
  [a1 setIsShadowSessionForFigSBAR:0];
  [a1 setDoesntActuallyPlayAudio:0];
  [a1 setPrefersBeingInterruptedByNextActiveRecordingClient:0];
  [a1 setPrefersNoInterruptionsByRingtonesAndAlerts:0];
  [a1 setPrefersNoInterruptionsByMixableSessions:0];
  [a1 setPrefersToVibeWhenVibrationsAreDisabled:0];
  [a1 setPrefersToInterruptActiveRecordingSessions:0];
  [a1 setPreferredPersistentRoute:0];
  [a1 setPrefersBluetoothHighQualityContentCapture:0];
  [a1 setPrefersBluetoothFarFieldCapture:0];
  [a1 setAllowMixableAudioWhileRecording:0];
  [a1 setPrefersNoInterruptionWhenSecureMicrophoneIsEngaged:0];
  [a1 setIsSharePlayCallSession:0];
  [a1 setIsSharePlayMediaSession:0];
  [a1 setIsSharePlayCapableCallSession:0];
  [a1 setIsHardwareSafetySession:0];
  [a1 setAggregateDeviceClockUID:0];
  [a1 setRecentlyWantedToPauseSpokenAudio:0];
  [a1 setReporterIDs:0];
  [a1 setWasInterruptedWhileRecording:0];
  [a1 setTimestampWhenMostRecentResumableEndInterruptionWasSent:0];
  [a1 setTimestampWhenMostRecentlyInterrupted:0];
  [a1 setPrefersToTakeHWControlFlagsFromAnotherSession:1];
  [a1 setIsEligibleForBTTriangleConsideration:1];
  [a1 setPrefersNoDucking:0];
  [a1 setPrefersSuppressingRecordingState:0];
  [a1 setOptOutOfMutePriority:0];
  [a1 setPrefersBluetoothAccessoryMuting:0];
  [a1 setActiveOSTransaction:0];
  [a1 setVibratingOSTransaction:0];
  [a1 setBundleIdToPAAccessIntervalMap:0];
  [a1 setHasEntitlementToRecordAudioInAnExtension:0];
  [a1 setHasEntitlementToStartRecordingInTheBackground:0];
  [a1 setHasEntitlementToSuppressRecordingStateToSystemStatus:0];
  [a1 setHasEntitlementToSupportProcessAssertionAuditTokens:0];
  [a1 setHasEntitlementToSetEmergencyAlertPriority:0];
  [a1 setHasEntitlementToSetPrefersToOptOutOfHardwareSafetyInterruptions:0];
  [a1 setHasEntitlementToSetPrefersNoInterruptions:0];
  [a1 setHasEntitlementToShowMicrophoneIndicatorWhileNotRecording:0];
  [a1 setHasEntitlementToSetIsUsingBuiltInMicForRecording:0];
  [a1 setHasEntitlementToSetPreferredMinimumMicrophoneIndicatorLightOnTime:0];
  [a1 setPreferredMinimumMicrophoneIndicatorLightOnTime:0];
  [a1 setHostProcessAttribution:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  [a1 setParentProcessAuditTokens:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  [a1 setHostProcessPlaybackAssertions:{objc_msgSend(MEMORY[0x1E695DF20], "dictionary")}];
  [a1 setWantsToShowMicrophoneIndicatorWhenNotRecording:0];
  [a1 setPrefersEchoCancelledInput:0];
  [a1 setHasEntitlementToRecordDuringCall:0];
  [a1 setPrefersSpeechDetectEnabled:1];
  [a1 setPrefersInterruptionOnRouteDisconnect:0];
  [a1 setPrefersInterruptionOnRouteDisconnectSetByClient:0];
  [a1 setWasActiveWhenDeviceOwnershipRelinquished:0];
  [a1 setIsSharedAVAudioSessionInstance:0];
  [a1 setAreBothBudsInEarForA2DPPortBeforeInterrupting:0];
  [a1 setBadgeType:@"NotApplicable"];
  [a1 setSupportedOutputChannelLayouts:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  [a1 setIsUsingBuiltInMicForRecording:0];
  [a1 setIsUsingExclaveSensor:0];
  [a1 setIsRecordingMutedForRemoteDevice:0];
  [a1 setShouldMuteBeAppliedToRemoteDevice:1];
  [a1 setDoesGameAudioNeedToBeSpatialized:0];
  [a1 setBypassSystemSpatialAudioForGame:0];
  [a1 setPrefersToOptOutOfHardwareSafetyInterruptions:0];
  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(uint64_t a1)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemAudioContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemAudioContextUUID", "FigRoutingManagerContextUtilities.m", 4572, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t cmsSetAudioCategory(void *a1, const void *a2, int a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294954316;
  }

  [a1 audioCategory];
  v8 = FigCFEqual();
  if (!a3 && v8)
  {
    return 0;
  }

  if (!a2 || CFEqual(a2, &stru_1F2890CF0))
  {
    return 4294954316;
  }

  if ([a1 isSharePlayMediaSession] && !-[MXSessionManager isAudioCategoryAllowedForSharePlayMedia:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAudioCategoryAllowedForSharePlayMedia:", a2))
  {
    if (!dword_1EB75DE40)
    {
      return 4294951615;
    }

LABEL_19:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294951615;
  }

  if ([a1 isSharePlayCallSession] && !CMSUtility_ChangeKeepsPhoneCallBehavior(a2, objc_msgSend(a1, "audioMode")))
  {
    if (!dword_1EB75DE40)
    {
      return 4294951615;
    }

    goto LABEL_19;
  }

  if ([a1 isRecording] && !CMSMUtility_IsInputAllowedForCategory(a2))
  {
    if (dword_1EB75DE40)
    {
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 4294951611;
  }

  else
  {
    v44 = [+[MXSessionManager sharedInstance](MXSessionManager uplinkMute];
    if ([a1 audioCategory])
    {
      v11 = [a1 audioCategory];
      if (v11)
      {
        v19 = CFRetain(v11);
      }

      else
      {
        v19 = 0;
      }

      IsAudioCategoryPrimary = CMSUtility_IsAudioCategoryPrimary(a1, v12, v13, v14, v15, v16, v17, v18);
      LocalSessionPriority = CMSM_GetLocalSessionPriority(a1, 1);
    }

    else
    {
      v19 = 0;
      IsAudioCategoryPrimary = 0;
      LocalSessionPriority = 100;
    }

    [a1 setAudioCategory:a2];
    if (dword_1EB75DE40)
    {
      v49 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cmsUpdateSessionStateForNewCategory(a1, v19, a4);
    v22 = [a1 doesSessionConfigurationChangeRequireOutputUnmute:v19 oldAudioMode:{objc_msgSend(a1, "audioMode")}];
    if (v22)
    {
      [a1 setIsOutputMuted:0];
    }

    if (objc_msgSend_isActive(a1))
    {
      CMSUtility_UpdateRoutingContextForSession(a1);
      v9 = cmsBeginInterruptionGuts(a1, 0, 2);
      if (v9)
      {
        [a1 setAudioCategory:v19];
        if (dword_1EB75DE40)
        {
          v49 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        cmsUpdateSessionStateForNewCategory(a1, a2, a4);
        CMSUtility_UpdateRoutingContextForSession(a1);
      }

      if (v22)
      {
        [+[MXSessionManager sharedInstance](MXSessionManager unmuteOutputForSession:"unmuteOutputForSession:", a1];
      }

      if ([a1 mutesAudioBasedOnRingerSwitchState])
      {
        [a1 setMutesAudioBasedOnRingerSwitchState:0];
        cmsUpdateMuteStatus(a1);
      }

      CMSMUtility_UpdatePlayAndRecordAppSpeechState(0);
      CMSMNotificationUtility_PostVoicePromptStyleDidChange();
      CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics(a1, 0, 0xEu, 0, 0, 0);
      cmsUpdateMuteStatus(a1);
      if (CMSUtility_GetIsPlaying(a1))
      {
        if (IsAudioCategoryPrimary != CMSUtility_IsAudioCategoryPrimary(a1, v28, v29, v30, v31, v32, v33, v34))
        {
          CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange(a1);
          CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange(a1, v35);
        }

        CMSUtility_RouteToPreferredRouteIfRequired(a1, LocalSessionPriority, 6);
      }

      updated = cmsmUpdatePickableRouteDescriptionLists(1);
      if (!MX_FeatureFlags_IsSessionBasedMutingEnabled(updated, v37))
      {
        v42 = CMSMUtility_IsVoiceCallCategory(a2);
        if (v42)
        {
          if (!MX_FeatureFlags_IsCallManagementMuteControlEnabled(v42, v43))
          {
            vaemSetUplinkMute(v44);
          }
        }
      }
    }

    else
    {
      v24 = a1;
      v26 = MXGetSerialQueue(v24, v25);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __cmsSetAudioCategory_block_invoke;
      v47[3] = &unk_1E7AE7CE0;
      v47[4] = a1;
      MXDispatchAsync("cmsSetAudioCategory", "CMSessionManager.m", 8214, 0, 0, v26, v47);
      v9 = 0;
    }

    v38 = [v19 isEqualToString:{objc_msgSend(a1, "audioCategory")}];
    if ((v38 & 1) == 0)
    {
      CMSMNotificationUtility_PostSessionAudioCategoryDidChange(a1);
    }

    if (v22)
    {
      CMSMNotificationUtility_PostIsOutputMutedDidChange(a1, v39);
    }

    if (!MX_FeatureFlags_IsSessionBasedMutingEnabled(v38, v39))
    {
      isActive = objc_msgSend_isActive(a1);
      if (isActive)
      {
        if (MX_FeatureFlags_IsCallManagementMuteControlEnabled(isActive, v41))
        {
          [+[MXSessionManager sharedInstance](MXSessionManager applyUplinkMute:"applyUplinkMute:", a1];
        }
      }
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  return v9;
}

void MXDispatchSync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v13 = objc_autoreleasePoolPush();
  v14 = objc_autoreleasePoolPush();
  v28 = 0;
  v27 = 0uLL;
  if (CMSMDeviceState_IsAudiomxd(v14, v15))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == a6)
    {
      CreateACQDispatchID();
    }
  }

  objc_autoreleasePoolPop(v14);
  v29 = v27;
  v30 = v28;
  if (CMSMDeviceState_IsAudiomxd(v16, v17))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_2();
    }

    if (gSerialQueue == a6)
    {
      MEMORY[0x1B2733F40](&v29, 0, "MXDispatchSync", a1, a2, a3, a4, a5);
    }
  }

  objc_autoreleasePoolPop(v13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MXDispatchSync_block_invoke;
  block[3] = &unk_1E7AEC7C8;
  v20 = v29;
  v21 = v30;
  v22 = a1;
  v26 = a3;
  v23 = a2;
  v24 = a4;
  v25 = a5;
  block[4] = a6;
  block[5] = a7;
  dispatch_sync(a6, block);
}

void __MXDispatchSync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd(v2, v9))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v3)
    {
      MEMORY[0x1B2733F40](a1 + 48, 1, "MXDispatchSync_block_invoke", v4, v5, v6, v7, v8);
    }
  }

  v10 = (*(*(a1 + 40) + 16))();
  v11 = *(a1 + 32);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 104);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd(v10, v17))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v11)
    {
      MEMORY[0x1B2733F40](a1 + 48, 2, "MXDispatchSync_block_invoke", v12, v13, v14, v15, v16);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t CMSMUtility_CreateCategoryStringWithModeAppended(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@%@", a1, 0x1F2894F70, a2];
  }

  else
  {
    return 0;
  }
}

const UInt8 *_routingContextUtilities_getContextForUUIDFromDict(CFDictionaryRef theDict, void *key)
{
  result = 0;
  if (theDict)
  {
    if (key)
    {
      Value = CFDictionaryGetValue(theDict, key);
      if (!Value || (result = CFDataGetBytePtr(Value)) == 0)
      {
        CFDictionaryRemoveValue(theDict, key);
        return 0;
      }
    }
  }

  return result;
}

uint64_t HandleSystemControllerMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v97 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v79 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v22 = OpCode;
    goto LABEL_7;
  }

  uint64 = xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v13 = LookupSystemControllerByObjectIDForConnection(a1, uint64, &cf);
  if (v13)
  {
    goto LABEL_71;
  }

  switch(v79)
  {
    case 778268793:
      v10 = cf;
      v22 = FigXPCHandleStdCopyPropertyMessage();
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    case 1634300002:
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_0_14();
      v14 = FigXPCMessageCopyCFArray();
      if (v14)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_2_8();
      v14 = FigXPCMessageCopyCFString();
      if (v14)
      {
        goto LABEL_128;
      }

      v14 = FigXPCMessageCopyCFBoolean();
      if (v14)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_6_5();
      FigCFEqual();
      if (*(*(CMBaseObjectGetVTable() + 16) + 136))
      {
        v76 = OUTLINED_FUNCTION_2_3();
        v14 = v77(v76);
        goto LABEL_128;
      }

      goto LABEL_129;
    case 1634300532:
      v55 = cf;
      *&v93 = 0;
      OUTLINED_FUNCTION_0_14();
      v43 = FigXPCMessageCopyCFString();
      if (v43)
      {
        goto LABEL_111;
      }

      v56 = v93;
      v57 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (!v57)
      {
        goto LABEL_112;
      }

      goto LABEL_110;
    case 1668310130:
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_0_14();
      v14 = FigXPCMessageCopyCFString();
      if (v14)
      {
        goto LABEL_128;
      }

      if (*(*(OUTLINED_FUNCTION_7_3() + 16) + 16))
      {
        v58 = OUTLINED_FUNCTION_4_9();
        v14 = v59(v58);
        if (!v14)
        {
          v14 = FigXPCMessageSetCFString();
          if (!v14)
          {
            v14 = FigXPCMessageSetCFString();
          }
        }

        goto LABEL_128;
      }

      goto LABEL_129;
    case 1668313202:
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_0_14();
      v14 = FigXPCMessageCopyCFString();
      if (v14)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_2_8();
      v14 = FigXPCMessageCopyCFString();
      if (v14)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_6_5();
      if (*(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        v15 = OUTLINED_FUNCTION_4_9();
        v14 = v16(v15);
        if (!v14)
        {
          v14 = FigXPCMessageSetCFArray();
        }

        goto LABEL_128;
      }

      goto LABEL_129;
    case 1668314723:
      value = 0;
      *&v93 = 0;
      *buffer = 0;
      *&v95 = 0;
      OUTLINED_FUNCTION_0_14();
      v46 = FigXPCMessageCopyCFString();
      if (!v46)
      {
        OUTLINED_FUNCTION_2_8();
        v46 = FigXPCMessageCopyCFString();
        if (!v46)
        {
          OUTLINED_FUNCTION_6_5();
          if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
          {
            v22 = 4294954514;
            goto LABEL_143;
          }

          v47 = OUTLINED_FUNCTION_4_9();
          v46 = v48(v47);
          if (!v46)
          {
            v46 = FigXPCMessageSetCFString();
            if (!v46)
            {
              v46 = FigXPCMessageSetCFString();
            }
          }
        }
      }

      v22 = v46;
LABEL_143:
      if (v93)
      {
        CFRelease(v93);
      }

      if (v95)
      {
        CFRelease(v95);
      }

      if (*buffer)
      {
        CFRelease(*buffer);
      }

      goto LABEL_149;
    case 1668640099:
      v17 = cf;
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v18)
      {
        goto LABEL_70;
      }

      goto LABEL_72;
    case 1986159724:
      *&v93 = 0;
      *buffer = 0;
      OUTLINED_FUNCTION_0_14();
      v43 = FigXPCMessageCopyCFString();
      if (v43)
      {
        goto LABEL_111;
      }

      if (!*(*(OUTLINED_FUNCTION_7_3() + 16) + 128))
      {
        goto LABEL_112;
      }

      v63 = OUTLINED_FUNCTION_4_9();
      v22 = v64(v63);
      if (!v22)
      {
        xpc_dictionary_set_double(a3, kFigSystemControllerXPCMsgParam_VolumeDelta, *buffer);
      }

      goto LABEL_113;
    case 1685026415:
      v27 = cf;
      value = 0;
      *&v93 = 0;
      BOOLean = 0;
      *buffer = 0;
      *&v95 = 0;
      v87 = 0;
      v88 = 0;
      v86 = 0.0;
      v85 = 0;
      v83 = 0;
      v84 = 0;
      v81 = 0;
      v82 = 0;
      v80 = 0;
      OUTLINED_FUNCTION_0_14();
      v28 = FigXPCMessageCopyCFNumber();
      if (!v28)
      {
        OUTLINED_FUNCTION_2_8();
        v28 = FigXPCMessageCopyCFNumber();
        if (!v28)
        {
          v28 = FigXPCMessageCopyCFString();
          if (!v28)
          {
            v28 = FigXPCMessageCopyCFString();
            if (!v28)
            {
              v28 = FigXPCMessageCopyCFString();
              if (!v28)
              {
                v28 = FigXPCMessageCopyCFString();
                if (!v28)
                {
                  v28 = FigXPCMessageCopyCFString();
                  if (!v28)
                  {
                    v28 = FigXPCMessageCopyCFNumber();
                    if (!v28)
                    {
                      v28 = FigXPCMessageCopyCFNumber();
                      if (!v28)
                      {
                        v28 = FigXPCMessageCopyCFBoolean();
                        if (!v28)
                        {
                          v29 = [v93 unsignedIntValue];
                          [*buffer floatValue];
                          v31 = v30;
                          v32 = v95;
                          v33 = value;
                          v35 = v88;
                          v34 = BOOLean;
                          v36 = v87;
                          [v82 floatValue];
                          v38 = v37;
                          [v81 floatValue];
                          v40 = v39;
                          v41 = FigCFEqual();
                          v42 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                          if (!v42)
                          {
                            v22 = 4294954514;
LABEL_157:
                            if (v93)
                            {
                              CFRelease(v93);
                            }

                            if (*buffer)
                            {
                              CFRelease(*buffer);
                            }

                            if (v84)
                            {
                              CFRelease(v84);
                            }

                            if (v95)
                            {
                              CFRelease(v95);
                            }

                            if (v83)
                            {
                              CFRelease(v83);
                            }

                            if (value)
                            {
                              CFRelease(value);
                            }

                            if (BOOLean)
                            {
                              CFRelease(BOOLean);
                            }

                            if (v88)
                            {
                              CFRelease(v88);
                            }

                            if (v87)
                            {
                              CFRelease(v87);
                            }

                            if (v82)
                            {
                              CFRelease(v82);
                            }

                            if (v81)
                            {
                              CFRelease(v81);
                            }

                            v9 = v80;
                            if (!v80)
                            {
                              goto LABEL_5;
                            }

LABEL_4:
                            CFRelease(v9);
                            goto LABEL_5;
                          }

                          v28 = v42(v27, v29, v32, v33, v34, v35, v36, &v86, v31, v38, v40, &v85, &v84, &v83, v41);
                          if (!v28)
                          {
                            xpc_dictionary_set_double(a3, kFigSystemControllerXPCMsgParam_Volume, v86);
                            OUTLINED_FUNCTION_5_3(kFigSystemControllerXPCMsgParam_Muted, v85);
                            v28 = FigXPCMessageSetCFString();
                            if (!v28)
                            {
                              v28 = FigXPCMessageSetCFString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v22 = v28;
      goto LABEL_157;
    case 1734962549:
      v19 = cf;
      LOBYTE(BOOLean) = 0;
      value = 0;
      v20 = FigXPCMessageCopyCFData();
      if (v20)
      {
LABEL_43:
        v22 = v20;
        goto LABEL_149;
      }

      *buffer = 0u;
      v91 = 0u;
      if (value)
      {
        v98.location = 0;
        v98.length = 32;
        CFDataGetBytes(value, v98, buffer);
      }

      v95 = *buffer;
      v96 = v91;
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v21)
      {
        v93 = v95;
        v94 = v96;
        v20 = v21(v19, &v93, &BOOLean);
        if (!v20)
        {
          v20 = FigXPCMessageSetCFBoolean();
        }

        goto LABEL_43;
      }

      v22 = 4294954514;
LABEL_149:
      v9 = value;
      if (!value)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    case 1735552357:
      *&v93 = 0;
      *buffer = 0;
      OUTLINED_FUNCTION_0_14();
      v68 = FigXPCMessageCopyCFString();
      if (!v68)
      {
        OUTLINED_FUNCTION_2_8();
        v68 = FigXPCMessageCopyCFDictionary();
        if (!v68)
        {
          OUTLINED_FUNCTION_6_5();
          if (!*(*(CMBaseObjectGetVTable() + 16) + 96))
          {
            v22 = 4294954514;
LABEL_152:
            if (v93)
            {
              CFRelease(v93);
            }

            v9 = *buffer;
            if (!*buffer)
            {
              goto LABEL_5;
            }

            goto LABEL_4;
          }

          v69 = OUTLINED_FUNCTION_2_3();
          v68 = v70(v69);
        }
      }

      v22 = v68;
      goto LABEL_152;
    case 1751934582:
      *&v93 = 0;
      buffer[0] = 0;
      OUTLINED_FUNCTION_0_14();
      v43 = FigXPCMessageCopyCFString();
      if (v43)
      {
        goto LABEL_111;
      }

      if (!*(*(OUTLINED_FUNCTION_7_3() + 16) + 40))
      {
        goto LABEL_112;
      }

      v44 = OUTLINED_FUNCTION_4_9();
      v22 = v45(v44);
      if (!v22)
      {
        OUTLINED_FUNCTION_5_3(kFigSystemControllerXPCMsgParam_HasRouteSharingPolicyLongFormVideo, buffer[0]);
      }

LABEL_113:
      v9 = v93;
      if (!v93)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    case 1919181665:
      v71 = cf;
      LODWORD(v93) = 0;
      v72 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v72)
      {
        v73 = v72(v71, &v93);
        if (v73)
        {
          v22 = v73;
          v75 = 0;
        }

        else
        {
          v74 = objc_alloc(MEMORY[0x1E696AD98]);
          v75 = [v74 initWithUnsignedInt:v93];
          v22 = FigXPCMessageSetCFNumber();
        }
      }

      else
      {
        v75 = 0;
        v22 = 4294954514;
      }

      goto LABEL_5;
    case 1919249765:
      v55 = cf;
      *&v93 = 0;
      OUTLINED_FUNCTION_0_14();
      v43 = FigXPCMessageCopyCFString();
      if (v43)
      {
        goto LABEL_111;
      }

      v56 = v93;
      v57 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v57)
      {
        goto LABEL_112;
      }

LABEL_110:
      v43 = v57(v55, v56);
      goto LABEL_111;
    case 1936220533:
      v65 = cf;
      int64 = xpc_dictionary_get_int64(a2, kFigSystemControllerXPCMsgParam_AudioScore);
      *&v93 = 0;
      LOBYTE(v95) = 0;
      *buffer = 0;
      OUTLINED_FUNCTION_0_14();
      v43 = FigXPCMessageCopyCFString();
      if (!v43)
      {
        v67 = *(*(OUTLINED_FUNCTION_7_3() + 16) + 48);
        if (!v67)
        {
          goto LABEL_112;
        }

        v43 = v67(v65, int64, v3, &v95, buffer);
        if (!v43)
        {
          OUTLINED_FUNCTION_5_3(kFigSystemControllerXPCMsgParam_ShouldHijackAudioRoute, v95);
          v43 = FigXPCMessageSetCFString();
        }
      }

      goto LABEL_111;
    case 1936286064:
      v60 = cf;
      *&v93 = 0;
      *buffer = 0;
      OUTLINED_FUNCTION_0_14();
      v43 = FigXPCMessageCopyCFNumber();
      if (!v43)
      {
        UInt32 = FigCFNumberGetUInt32();
        v62 = *(*(CMBaseObjectGetVTable() + 16) + 144);
        if (v62)
        {
          v22 = v62(v60, buffer, UInt32);
          if (!v22)
          {
            xpc_dictionary_set_int64(a3, kFigSystemControllerXPCMsgParam_AudioSessionID, *buffer);
          }

          goto LABEL_113;
        }

LABEL_112:
        v22 = 4294954514;
        goto LABEL_113;
      }

LABEL_111:
      v22 = v43;
      goto LABEL_113;
    case 1936289141:
      v23 = cf;
      value = 0;
      v24 = FigXPCMessageCopyCFData();
      if (!v24)
      {
        BOOLean = 0;
        FigXPCMessageCopyCFBoolean();
        *buffer = 0u;
        v91 = 0u;
        if (value)
        {
          v99.location = 0;
          v99.length = 32;
          CFDataGetBytes(value, v99, buffer);
        }

        v25 = CFBooleanGetValue(BOOLean);
        v95 = *buffer;
        v96 = v91;
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v26)
        {
          v22 = 4294954514;
LABEL_138:
          if (value)
          {
            CFRelease(value);
          }

          v9 = BOOLean;
          if (!BOOLean)
          {
            goto LABEL_5;
          }

          goto LABEL_4;
        }

        v93 = v95;
        v94 = v96;
        v24 = v26(v23, &v93, v25);
      }

      v22 = v24;
      goto LABEL_138;
    case 1936485732:
      v49 = cf;
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_0_14();
      v14 = FigXPCMessageCopyCFBoolean();
      if (v14)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_2_8();
      v14 = FigXPCMessageCopyCFString();
      if (v14)
      {
        goto LABEL_128;
      }

      v14 = FigXPCMessageCopyCFDate();
      if (v14)
      {
        goto LABEL_128;
      }

      v50 = xpc_dictionary_get_uint64(a2, kFigSystemControllerXPCMsgParam_ClientType);
      v51 = CFBooleanGetValue(v93);
      v52 = v95;
      v53 = *buffer;
      v54 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v54)
      {
        v14 = v54(v49, v51, v52, v53, v50);
LABEL_128:
        v22 = v14;
        goto LABEL_130;
      }

LABEL_129:
      v22 = 4294954514;
LABEL_130:
      if (v93)
      {
        CFRelease(v93);
      }

      if (*buffer)
      {
        CFRelease(*buffer);
      }

      v9 = v95;
      if (!v95)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    case 1953066357:
      v17 = cf;
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v18)
      {
LABEL_70:
        v13 = v18(v17);
        goto LABEL_71;
      }

LABEL_72:
      v22 = 4294954514;
      goto LABEL_5;
    case 1685024621:
      v13 = FigXPCServerDisassociateObjectWithConnection();
LABEL_71:
      v22 = v13;
      goto LABEL_5;
  }

  v22 = 4294951138;
LABEL_5:
  v10 = cf;
  if (cf)
  {
LABEL_6:
    CFRelease(v10);
  }

LABEL_7:
  objc_autoreleasePoolPop(v7);
  return v22;
}

uint64_t LookupSystemControllerByObjectIDForConnection(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    return v3;
  }

  LookupSystemControllerByObjectIDForConnection_cold_1(&v6);
  return v6;
}

uint64_t FigSystemControllerGetTypeID(uint64_t a1)
{
  if (_MergedGlobals_5 != -1)
  {
    FigSystemControllerGetClassID_cold_1();
  }

  v2 = qword_1ED6D2F10;

  return MEMORY[0x1EEDBB488](v2);
}

void cmsmdeviceState_BatteryStateChanged(int a1, io_registry_entry_t entry, int a3)
{
  if (a3 == -536723200)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"ExternalConnected", *MEMORY[0x1E695E480], 0);
    byte_1EB75D370 = FigCFEqual();
    if (CFProperty)
    {

      CFRelease(CFProperty);
    }
  }
}

uint64_t remoteSystemController_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  if (a2)
  {
    if (a4)
    {
      ObjectID = remoteSystemController_getObjectID(a1, &v9);
      if (!ObjectID)
      {
        ObjectID = FigXPCSendStdCopyPropertyMessage();
      }
    }

    else
    {
      ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D31C8, 4294949645, "-FigSystemControllerRemote-", 157, v4);
    }
  }

  else
  {
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D31C8, 4294949645, "-FigSystemControllerRemote-", 156, v4);
  }

  v7 = ObjectID;
  OUTLINED_FUNCTION_23(qword_1ED6D30A0, v6, "remoteSystemController_CopyProperty");
  return v7;
}

uint64_t remoteSystemController_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteSystemController_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t systemController_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(gFigSystemControllerCopyPropertyMapping, a2);
  if (Value)
  {
    v8 = [*DerivedStorage copyAttributeForKey:Value withValueOut:a4];
    if (v8)
    {
      FigCFEqual();
    }
  }

  else if (FigCFEqual())
  {
    v8 = 0;
    *a4 = HDMILatencyMgr_CopyMeasuredHDMILatency();
  }

  else
  {
    return 4294954512;
  }

  return v8;
}

BOOL OUTLINED_FUNCTION_17(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

CMTime *OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, CMTime *rhs, uint64_t a4, CMTime *lhs, uint64_t a6, CMTime *a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 rhsa, uint64_t rhs_16, uint64_t a13, __int128 lhsa, uint64_t lhs_16, uint64_t a16, uint64_t a17)
{
  v20 = *(v18 + 4040);
  lhsa = *v17;
  lhs_16 = *(v17 + 16);
  rhsa = *(v20 + 48);
  rhs_16 = *(v20 + 64);

  return CMTimeSubtract(&a17, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return singletonVolumeController_copyRemoteVolumeController(a1, &a10);
}

void OUTLINED_FUNCTION_5_3(const char *a1@<X1>, int a2@<W8>)
{

  xpc_dictionary_set_BOOL(v2, a1, a2 != 0);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

BOOL OUTLINED_FUNCTION_5_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, os_log_type_t type, int a16)
{

  return os_log_type_enabled(a1, type);
}

void *OUTLINED_FUNCTION_5_11()
{

  return CreateCompletionCallbackParametersFromMessageAndConnection_0(v1, v0);
}

void OUTLINED_FUNCTION_5_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{

  MXDispatchAsync(a1, a2, a3, 0, 0, a6, a7);
}

uint64_t MXGetPerformanceLog(uint64_t a1, uint64_t a2)
{
  if (MXGetPerformanceLog_onceToken != -1)
  {
    MXGetPerformanceLog_cold_1();
  }

  return MXGetPerformanceLog__log;
}

void MXDispatchAsyncAndWait(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v13 = objc_autoreleasePoolPush();
  v14 = objc_autoreleasePoolPush();
  v28 = 0;
  v27 = 0uLL;
  if (CMSMDeviceState_IsAudiomxd(v14, v15))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == a6)
    {
      CreateACQDispatchID();
    }
  }

  objc_autoreleasePoolPop(v14);
  v29 = v27;
  v30 = v28;
  if (CMSMDeviceState_IsAudiomxd(v16, v17))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_2();
    }

    if (gSerialQueue == a6)
    {
      MEMORY[0x1B2733F40](&v29, 0, "MXDispatchAsyncAndWait", a1, a2, a3, a4, a5);
    }
  }

  objc_autoreleasePoolPop(v13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MXDispatchAsyncAndWait_block_invoke;
  block[3] = &unk_1E7AEC7C8;
  v20 = v29;
  v21 = v30;
  v22 = a1;
  v26 = a3;
  v23 = a2;
  v24 = a4;
  v25 = a5;
  block[4] = a6;
  block[5] = a7;
  dispatch_barrier_async_and_wait(a6, block);
}

void __MXDispatchAsyncAndWait_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd(v2, v9))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v3)
    {
      MEMORY[0x1B2733F40](a1 + 48, 1, "MXDispatchAsyncAndWait_block_invoke", v4, v5, v6, v7, v8);
    }
  }

  v10 = (*(*(a1 + 40) + 16))();
  v11 = *(a1 + 32);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 104);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd(v10, v17))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v11)
    {
      MEMORY[0x1B2733F40](a1 + 48, 2, "MXDispatchAsyncAndWait_block_invoke", v12, v13, v14, v15, v16);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t MXGetSerialQueue(uint64_t a1, uint64_t a2)
{
  if (MXGetSerialQueue_onceToken != -1)
  {
    MXDispatchAsync_cold_1();
  }

  return gSerialQueue;
}

uint64_t OUTLINED_FUNCTION_0_4()
{
  v4 = *v1;
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[11];

  return FigRoutingManagerRetryAddingEndpointToAggregate(v2, v4, v5, v6, v7, FigRoutingManagerAggregateAddEndpointCompletionCallback);
}

__CFArray *OUTLINED_FUNCTION_0_9()
{

  return CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsPlayingAndPlaysToCarMainAudio, 0);
}

double OUTLINED_FUNCTION_0_10()
{
  *(v0 + 64) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return FigXPCMessageCopyCFString();
}

void OUTLINED_FUNCTION_0_23(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{

  figEndpointDescriptorUtility_setDescriptorKey(v5, a2, v4, a4);
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a12 = 0;

  return routingSessionManagerRemote_getObjectID(a1, &a12);
}

uint64_t OUTLINED_FUNCTION_0_27(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, ...)
{
  va_start(va, a13);
  a9 = 0u;
  a10 = 0u;
  a11 = 0u;
  a12 = 0u;

  return [a1 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_0_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return CMNotificationCenterAddListener();
}

uint64_t OUTLINED_FUNCTION_0_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return FigXPCMessageSetCFBoolean();
}

CFStringRef MX_RunningBoardServices_CopyDisplayIDForPID(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    return 0;
  }

  v1 = a1;
  result = MX_RunningBoardServices_CopyBundleIdentifierForProcessID(a1);
  if (!result)
  {
    memset(v8, 0, 512);
    v4 = 648;
    *v5 = 0xE00000001;
    v6 = 1;
    v7 = v1;
    v3 = sysctl(v5, 4u, v8, &v4, 0, 0);
    result = 0;
    if (v3 != -1)
    {
      if (v4)
      {
        return CFStringCreateWithCString(*MEMORY[0x1E695E480], &v8[15] + 3, 0x8000100u);
      }
    }
  }

  return result;
}

uint64_t MX_RunningBoardServices_CopyBundleIdentifierForProcessID(uint64_t a1)
{
  if (initializeLogging_onceToken != -1)
  {
    MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(objc_msgSend(mx_runningBoardServices_getProcessHandleForPID(a1) "bundle")];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t mx_runningBoardServices_getProcessHandleForPID(uint64_t a1)
{
  v6[22] = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    return 0;
  }

  v1 = [MEMORY[0x1E69C75E0] identifierWithPid:a1];
  if (!v1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  v6[0] = 0;
  v2 = [MEMORY[0x1E69C75D0] handleForIdentifier:v1 error:v6];
  if (v6[0])
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

uint64_t MX_FeatureFlags_IsSpeechDetectEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsSpeechDetectEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSpeechDetectEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSpeechDetectEnabled_sSpeechDetectEnabled;
}

uint64_t CMSUtility_IsAudioCategoryPrimary(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    [a1 audioCategory];
    if (FigCFEqual())
    {
      return 0;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      return 0;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      return 0;
    }

    [a1 audioCategory];
    if (FigCFEqual() || -[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [a1 audioCategory]))
    {
      return 0;
    }
  }

  else
  {
    CMSUtility_IsAudioCategoryPrimary_cold_1(0, a2, a3, a4, a5, a6, a7, a8, v10, v11, SHIDWORD(v11), vars0);
  }

  return 1;
}

uint64_t CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(uint64_t a1, uint64_t a2)
{
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy_onceToken != -1)
  {
    CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy_cold_1();
  }

  return CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy_supportsOutputMuting;
}

uint64_t CMSM_GetLocalSessionPriority(void *a1, int a2)
{
  if (!a1)
  {
    return 100;
  }

  if (!CMSUtility_IsSessionEligibleToPlayOverSharedAudioRoute(a1, a2 != 0))
  {
    return 100;
  }

  v19 = [a1 displayID];
  v6 = [a1 clientName];
  v7 = [a1 interruptionStyle];
  v8 = [a1 audioCategory];
  v9 = [a1 audioMode];
  v10 = [a1 clientPriority];
  v11 = [a1 isRecording];
  v12 = [a1 prefersNoInterruptionsByRingtonesAndAlerts];
  v13 = [a1 isRecordingWithBTManagedDevice];
  [a1 audioCategory];
  IsAnyPortOfTypeBT = FigCFEqual();
  if (IsAnyPortOfTypeBT)
  {
    IsAnyPortOfTypeBT = CMSUtility_IsAnyPortOfTypeBT([a1 allowedPortTypes]);
    if (IsAnyPortOfTypeBT)
    {
      v8 = 0x1F2891870;
    }
  }

  IsAirPodsStudioVoiceMicEnabled = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(IsAnyPortOfTypeBT, v15);
  if (IsAirPodsStudioVoiceMicEnabled && MX_FeatureFlags_IsSystemInputPickerEnabled(IsAirPodsStudioVoiceMicEnabled, v17))
  {
    v18 = [a1 userPreferredInputPortIsBluetoothManagedAndHighQuality];
  }

  else
  {
    v18 = 0;
  }

  v20[0] = v6;
  v20[1] = v19;
  v21 = v7;
  v22 = v10;
  v23 = v13;
  v24 = v11;
  v25 = v12;
  v26 = v18;
  v27 = 0;
  v28 = v8;
  v29 = v9;
  return [+[MXSessionManager sharedInstance](MXSessionManager getSessionPriority:"getSessionPriority:forTipi:" forTipi:v20, a2 != 0];
}

uint64_t CMSUtility_IsSessionEligibleToPlayOverSharedAudioRoute(void *a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (([a1 doesntActuallyPlayAudio] & 1) == 0)
    {
      if ([a1 preferredPersistentRoute])
      {
        if (dword_1EB75DE40)
        {
LABEL_5:
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (!CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(0, v4) || ![a1 isOutputMuted])
        {
          if (a2)
          {
            if (([a1 isEligibleForBTSmartRoutingConsideration] & 1) == 0)
            {
              return 0;
            }
          }

          else if (![a1 isEligibleForBTTriangleConsideration])
          {
            return 0;
          }

          return 1;
        }

        if (dword_1EB75DE40)
        {
          goto LABEL_5;
        }
      }
    }

    return 0;
  }

  v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  v7 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v7;
}

BOOL CMSMVAUtility_IsAdditiveRoutingEnabled(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75E0AC)
  {
    if (CMSMVAUtility_IsAdditiveRoutingEnabled_onceToken != -1)
    {
      CMSMVAUtility_IsAdditiveRoutingEnabled_cold_1();
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    a1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return CMSMVAUtility_IsAdditiveRoutingEnabled_isAdditiveRoutingSupportedForHardware == 1 && MX_FeatureFlags_IsAdditiveRoutingEnabled(a1, a2) != 0;
}

uint64_t MX_FeatureFlags_IsAdditiveRoutingEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAdditiveRoutingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAdditiveRoutingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAdditiveRoutingEnabled_additiveRoutingEnabled;
}

uint64_t FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  theArray = 0;
  if (a1)
  {
    if (FigRoutingManagerContextUtilities_CopyActivatedEndpoints(a1, &theArray))
    {
      goto LABEL_10;
    }
  }

  else if (FigRoutingManagerContextUtilities_CopyActivatedEndpointsForContextType(a2, &theArray))
  {
    goto LABEL_10;
  }

  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, a3))
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_10;
      }
    }

    v8 = 1;
    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
LABEL_11:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

uint64_t FigRoutingManagerContextUtilities_CopyActivatedEndpoints(uint64_t a1, uint64_t a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    v5 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v6 = 504;
    }

    v7 = *v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_CopyActivatedEndpoints_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    if (!byte_1EB75CFA8)
    {
      v5 = 0;
    }

    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyActivatedEndpoints", "FigRoutingManagerContextUtilities.m", 3572, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B17ADF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFArray *CMSMUtility_CopyCurrentRouteTypes()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  if (dword_1EB75E0C8)
  {
    v1 = 0;
    do
    {
      MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v1, &v4);
      if (v4)
      {
        v2 = v4;
      }

      else
      {
        v2 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(Mutable, v2);
      ++v1;
    }

    while (v1 < dword_1EB75E0C8);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

__n128 MXVW_GetCMSRouteInfoAt@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1 + 48 * a2;
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  return result;
}

void *CMSUtility_GetAudioCategory(void *result, const char *a2)
{
  if (result)
  {
    return [result audioCategory];
  }

  return result;
}

void *CMSUtility_InterpretInterruptionStyle(void *a1, BOOL *a2, BOOL *a3, BOOL *a4)
{
  result = [a1 interruptionStyle];
  v8 = result == 32;
  if (result == 8)
  {
    v8 = 0;
  }

  v9 = result == 4;
  v10 = result == 1 || result == 4;
  if (result == 1)
  {
    v9 = 0;
  }

  if (result <= 7)
  {
    v8 = 0;
  }

  else
  {
    v10 = result == 8;
  }

  v11 = result <= 7 && v9;
  if (a2)
  {
    *a2 = v10;
  }

  if (a3)
  {
    *a3 = v8;
  }

  if (a4)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t CMSMNP_UpdateNowPlayingAppForNewInterruptionStyle(void *a1)
{
  v3 = 0;
  CMSUtility_InterpretInterruptionStyle(a1, &v3, 0, 0);
  [a1 setAllowedToBeNowPlayingApp:v3];
  if (([a1 allowedToBeNowPlayingApp] & 1) == 0)
  {
    [a1 setBadgeType:@"NotApplicable"];
    [a1 setSupportedOutputChannelLayouts:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  }

  CMSUtility_UpdateRoutingContextForSession(a1);
  return -[MXNowPlayingAppManager updateNowPlayingApp:session:reasonForUpdate:](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "updateNowPlayingApp:session:reasonForUpdate:", [objc_msgSend(a1 "clientPID")], a1, 3);
}

uint64_t CMSUtility_GetCurrentInputVADUID(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = 0x1F2893B50;
  if ([a1 audioBehaviour])
  {
    v3 = [objc_msgSend(a1 "audioBehaviour")];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if (vaemIsAudioDestinationAvailable(v8))
          {
            return v8;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  return v2;
}

uint64_t CMSUtility_GetCurrentAudioDestination(void *a1)
{
  v2 = [a1 audioDestinationPriority];
  if (!a1)
  {
    return 0x1F2893B50;
  }

  v3 = v2;
  if (!v2)
  {
    return 0x1F2893B50;
  }

  v4 = +[MXSessionManager sharedInstance];

  return [(MXSessionManager *)v4 getAvailableAudioDestination:v3];
}

uint64_t FigRoutingManagerContextUtilities_IsContextVideoAndIndependent(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_IsContextVideoAndIndependent_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = v2;
    v6[7] = v1;
    v6[4] = v11;
    v6[5] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_IsContextVideoAndIndependent", "FigRoutingManagerContextUtilities.m", 4979, 0, 0, v4, v6);
    v1 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v11, 8);
  }

  return v1;
}

void sub_1B17AE7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t cmsSetControlFlags(void *a1, unsigned int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294954316;
  }

  v3 = a2 & 0xFFFFFFF1 | 2;
  if ((a2 & 0xC) == 0)
  {
    v3 = a2;
  }

  if ((v3 & 0xC0000) != 0)
  {
    v4 = v3 & 0xFFF1FFF3 | 0x20000;
  }

  else
  {
    v4 = v3;
  }

  if (v3 & 0xC0000 | a2 & 0xC)
  {
    v5 = dword_1EB75DE40 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((v4 & WORD1(v4)) != 0)
  {
    return 4294954315;
  }

  if (v4 != [a1 hwControlFlags])
  {
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  [a1 setHwControlFlags:v4];
  return 0;
}

const char *CMSMUtility_GetFlagsString(__int16 a1)
{
  if ((a1 & 0xFFE0) != 0)
  {
    return "Unknown";
  }

  else
  {
    return off_1E7AEB010[a1 & 0x1F];
  }
}

void *cmsUpdateSessionStateForNewCategory(void *a1, const void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  [a1 setOverridePortsList:0];
  if (CMSMUtility_IsInputAllowedForCategory(a2) && !CMSMUtility_IsInputAllowedForCategory([a1 audioCategory]))
  {
    [a1 setSubPortPreferences:0];
    [a1 setPrefersBluetoothFarFieldCapture:0];
    [a1 setPrefersBluetoothHighQualityContentCapture:0];
  }

  [a1 setAllowedPortTypes:0];
  [a1 setAllowedRouteTypes:0];
  [a1 setStopsWhenDeviceLocks:0];
  [a1 setMakesMusicResume:0];
  [a1 setHasInput:0];
  [a1 setMustUseDefaultClientPriority:0];
  [a1 setAllowsBluetoothRecordingCustomization:0];
  [a1 setAllowsDefaultBuiltInRouteCustomization:0];
  [a1 setAllowSystemSoundsWhileRecording:0];
  [a1 setPrefersToTakeHWControlFlagsFromAnotherSession:1];
  [a1 setWantsToBeVolumeButtonClient:1];
  if (([a1 isEligibleForBTSmartRoutingConsiderationSetByClient] & 1) == 0)
  {
    [a1 setIsEligibleForBTSmartRoutingConsideration:1];
  }

  if ([a1 audioCategory] && (CFEqual(objc_msgSend(a1, "audioCategory"), @"SystemSoundsAndHaptics") || -[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(a1, "audioCategory"))))
  {
    [a1 setIsEligibleForNowPlayingAppConsideration:0];
    [a1 setBadgeType:@"NotApplicable"];
    [a1 setSupportedOutputChannelLayouts:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
  }

  v6 = [a3 objectForKey:@"InterruptionStyle"];
  if ([v6 unsignedIntValue])
  {
    [a1 updateInterruptionStyle:{objc_msgSend(v6, "unsignedIntValue")}];
  }

  else
  {
    [a1 setUpDefaultInterruptionStyleForCategoryAndMode];
  }

  if (![a1 audioCategory])
  {
    goto LABEL_17;
  }

  [a1 setHasInput:{-[NSSet containsObject:](-[MXSessionManager audioCategoriesWithInput](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "audioCategoriesWithInput"), "containsObject:", objc_msgSend(a1, "audioCategory"))}];
  if (CFEqual([a1 audioCategory], @"UserInterfaceSoundEffects") || CFEqual(objc_msgSend(a1, "audioCategory"), @"AmbientSound"))
  {
    [a1 setStopsWhenDeviceLocks:1];
LABEL_17:
    v7 = a1;
    v8 = 1179648;
LABEL_18:
    cmsSetControlFlags(v7, v8);
    goto LABEL_19;
  }

  if (-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [a1 audioCategory]))
  {
    [a1 setWantsToBeVolumeButtonClient:0];
    [a1 setPrefersNoDucking:1];
    [a1 setDoesntActuallyPlayAudio:1];
    [a1 setIsEligibleForBTSmartRoutingConsideration:0];
    [a1 setIsEligibleForBTSmartRoutingConsiderationSetByClient:0];
    [a1 setIsEligibleForBTTriangleConsideration:0];
    [a1 setHandsOverInterruptionsToInterruptor:1];
    v27[0] = @"SpeechDetectStyleDidChange";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    MXCoreSessionSetProperty(a1, @"SubscribeToNotifications");
LABEL_54:
    v7 = a1;
    v8 = 0;
    goto LABEL_18;
  }

  if (CFEqual([a1 audioCategory], @"MediaPlayback") || CFEqual(objc_msgSend(a1, "audioCategory"), @"MediaPlaybackNoSpeaker") || CFEqual(objc_msgSend(a1, "audioCategory"), @"LiveAudio") || CFEqual(objc_msgSend(a1, "audioCategory"), @"AudioProcessing") || CFEqual(objc_msgSend(a1, "audioCategory"), @"SoloAmbientSound"))
  {
    cmsSetControlFlags(a1, 0x120000u);
    if (CFEqual([a1 audioCategory], @"SoloAmbientSound"))
    {
      [a1 setStopsWhenDeviceLocks:1];
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      [a1 setDoesntActuallyPlayAudio:1];
    }

    goto LABEL_19;
  }

  if (CFEqual([a1 audioCategory], @"Notice") || CFEqual(objc_msgSend(a1, "audioCategory"), @"VoiceOver"))
  {
    goto LABEL_17;
  }

  if (CFEqual([a1 audioCategory], @"VoiceCommand") || CFEqual(objc_msgSend(a1, "audioCategory"), @"VoiceCommand_WithBluetooth"))
  {
    [a1 setMakesMusicResume:1];
LABEL_69:
    [a1 setAllowsBluetoothRecordingCustomization:1];
    [a1 setHandsOverInterruptionsToInterruptor:1];
LABEL_70:
    v7 = a1;
    v8 = 18;
    goto LABEL_18;
  }

  if (CFEqual([a1 audioCategory], @"VoiceCommandThatMixes") || CFEqual(objc_msgSend(a1, "audioCategory"), @"VoiceCommandThatMixes_WithBluetooth"))
  {
    goto LABEL_69;
  }

  if (!CFEqual([a1 audioCategory], @"Record") && !CFEqual(objc_msgSend(a1, "audioCategory"), @"Record_WithBluetooth") && !CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord") && !CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_WithBluetooth") && !CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_NoBluetooth_DefaultToSpeaker") && !CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_WithBluetooth_DefaultToSpeaker") && !CFEqual(objc_msgSend(a1, "audioCategory"), @"Multi"))
  {
    if (CMSUtility_HasPhoneCallBehaviour(a1))
    {
      goto LABEL_70;
    }

    if (CFEqual([a1 audioCategory], @"Ringtone"))
    {
      v25 = a1;
      v26 = 1179648;
LABEL_118:
      cmsSetControlFlags(v25, v26);
      [a1 setHandsOverInterruptionsToInterruptor:1];
      goto LABEL_19;
    }

    if (CFEqual([a1 audioCategory], @"Alarm"))
    {
      if (CFEqual([a1 audioMode], @"Sleep"))
      {
        v26 = 0;
      }

      else
      {
        v26 = 1179648;
      }

      v25 = a1;
      goto LABEL_118;
    }

    if (CFEqual([a1 audioCategory], @"RingtonePreview"))
    {
      [a1 setMakesMusicResume:1];
      goto LABEL_121;
    }

    if (!CFEqual([a1 audioCategory], @"FindMyPhone") && !CFEqual(objc_msgSend(a1, "audioCategory"), @"WaterEjection"))
    {
      if (CFEqual([a1 audioCategory], @"EmergencyAlert") || CFEqual(objc_msgSend(a1, "audioCategory"), @"EmergencyAlert_Muteable"))
      {
        [a1 setHandsOverInterruptionsToInterruptor:1];
        [a1 setMustUseDefaultClientPriority:1];
        [a1 setMakesMusicResume:1];
        goto LABEL_70;
      }

      if (CFEqual([a1 audioCategory], @"Voicemail") || CFEqual(objc_msgSend(a1, "audioCategory"), @"VoicemailGreeting"))
      {
LABEL_121:
        [a1 setHandsOverInterruptionsToInterruptor:1];
        goto LABEL_17;
      }

      if (!CFEqual([a1 audioCategory], @"FindMyAudioDevice"))
      {
        if (CFEqual([a1 audioCategory], @"SystemSoundsAndHaptics"))
        {
          [a1 setStopsWhenDeviceLocks:1];
          [a1 setPrefersToTakeHWControlFlagsFromAnotherSession:0];
          [a1 setWantsToBeVolumeButtonClient:0];
          v7 = a1;
          v8 = 0x100000;
          goto LABEL_18;
        }

        if (CFEqual([a1 audioCategory], @"eARC"))
        {
          v7 = a1;
          v8 = 2;
          goto LABEL_18;
        }

        CFEqual([a1 audioCategory], @"HearingTest");
        goto LABEL_17;
      }
    }

    [a1 setHandsOverInterruptionsToInterruptor:1];
    [a1 setMakesMusicResume:1];
    goto LABEL_17;
  }

  [a1 setAllowsBluetoothRecordingCustomization:1];
  if (CFEqual([a1 audioCategory], @"PlayAndRecord") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_WithBluetooth") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_NoBluetooth_DefaultToSpeaker") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_WithBluetooth_DefaultToSpeaker") || CFEqual(objc_msgSend(a1, "audioCategory"), @"Multi"))
  {
    [a1 setAllowsDefaultBuiltInRouteCustomization:1];
  }

  [a1 audioCategory];
  if (FigCFEqual())
  {
    [a1 setPreferredNumberOfInputChannels:0];
    [a1 setPreferredNumberOfOutputChannels:0];
  }

  if (([a1 audioHWControlFlagsSetByClient] & 1) == 0)
  {
    cmsSetControlFlags(a1, 0x12u);
  }

  PreferredIOBufferDuration = CMSUtility_GetPreferredIOBufferDuration(a1, v18);
  if (*&PreferredIOBufferDuration == 0.0 && !CMSUtility_GetPreferredIOBufferFrames(a1, v19))
  {
    LODWORD(v21) = 1018980991;
    [a1 updatePreferredIOBufferDuration:v21];
  }

  if (CFEqual([a1 audioCategory], @"PlayAndRecord") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_WithBluetooth") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_NoBluetooth_DefaultToSpeaker") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_WithBluetooth_DefaultToSpeaker"))
  {
    [a1 audioMode];
    [a1 setHandsOverInterruptionsToInterruptor:FigCFEqual() != 0];
  }

  if (CFEqual([a1 audioCategory], @"Record") || CFEqual(objc_msgSend(a1, "audioCategory"), @"Record_WithBluetooth") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_WithBluetooth") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_NoBluetooth_DefaultToSpeaker") || CFEqual(objc_msgSend(a1, "audioCategory"), @"PlayAndRecord_WithBluetooth_DefaultToSpeaker"))
  {
    v22 = CFEqual([a1 audioMode], @"SoundRecognition");
    if (v22)
    {
      if (CMSMVAUtility_IsAdditiveRoutingEnabled(v22, v23) && (([a1 isRoutedToOnDemandVAD] & 1) != 0 || objc_msgSend(a1, "willRouteToOnDemandVADOnActivation")))
      {
        if (dword_1EB75DE40)
        {
          LODWORD(v27[0]) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_54;
      }
    }
  }

LABEL_19:
  if ([a1 preferredPersistentRoute])
  {
    if (dword_1EB75DE40)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cmsSetControlFlags(a1, [a1 hwControlFlags] & 0xFFFDFFFD | 2);
  }

  cmsUpdateAudioBehavior(a1, v9);
  cmsUpdatePiPIsPossible(a1);
  if ([a1 mustUseDefaultClientPriority] && !MX_FeatureFlags_CanClientsSetEmergencyAlertPriority())
  {
    [a1 setClientPriority:0];
  }

  if (!MX_FeatureFlags_CanClientsSetEmergencyAlertPriority())
  {
    if (CMSMUtility_IsEmergencyAlertCategory([a1 audioCategory]) && !objc_msgSend(a1, "hasAudioMode:", @"Beacon"))
    {
      v11 = 20;
      goto LABEL_32;
    }

    if ([a1 clientPriority] == 20)
    {
      v11 = 0;
LABEL_32:
      [a1 setClientPriority:v11];
    }
  }

  if ([a1 mode])
  {
    CustomizedCategory = CMSUtility_GetCustomizedCategory(a1);
    if (CustomizedCategory)
    {
      v13 = CustomizedCategory;
      [a1 audioCategory];
      if (!FigCFEqual())
      {
        [a1 setAudioCategory:v13];
      }
    }
  }

  [a1 setHasPhoneCallBehavior:0];
  if ([a1 audioCategory])
  {
    if (CMSUtility_HasPhoneCallBehaviour(a1))
    {
      [a1 setHasPhoneCallBehavior:1];
      [a1 setOptOutOfMutePriority:1];
      [a1 setHandsOverInterruptionsToInterruptor:1];
      [a1 setAllowSystemSoundsWhileRecording:1];
      if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]))
      {
        IsDoingActivity = FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E610, @"PhoneCall");
        v15 = FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E610, @"Speech");
        if ([a1 hasPhoneCallBehavior])
        {
          if (IsDoingActivity && !v15)
          {
            FigEndpointCentralUpdateiOSDeviceState(qword_1EB75E178, 0, 10, @"Phone activity", 0);
          }
        }
      }
    }
  }

  if ([a1 isTheAssistant])
  {
    [a1 setHandsOverInterruptionsToInterruptor:1];
  }

  [a1 audioCategory];
  [a1 setIsLongFormAudio:FigCFEqual() != 0];
  if ([a1 preferredDecoupledInputOutput] && !CMSMUtility_IsAllowedToSetPreferredDecoupledInputOutput(objc_msgSend(a1, "audioCategory")))
  {
    [a1 setPreferredDecoupledInputOutput:0];
  }

  result = objc_msgSend_isActive(a1);
  if (result)
  {
    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded(result, v17);
    CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
    return [a1 sendSessionConfigurationInfoToVA];
  }

  return result;
}

void cmsUpdateAudioBehavior(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsAdditiveRoutingEnabled(a1, a2) && [a1 isRoutedToOnDemandVAD])
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return;
  }

  v4 = CMSUtility_CopySessionAudioBehaviour(a1);
  [a1 audioBehaviour];
  if (FigCFEqual())
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"AudioBehaviour_Destination");
  }

  else
  {
    Value = 0;
  }

  [a1 setAudioBehaviour:v4];
  v6 = [a1 setAudioDestinationPriority:Value];
  if (a1)
  {
    v6 = CFRetain(a1);
  }

  v8 = MXGetNotificationSenderQueue(v6, v7);
  MXDispatchAsyncFunction("cmsUpdateAudioBehavior", "CMSessionManager.m", 7781, 0, 0, v8, a1, CMSMNotificationUtility_PostSessionAudioBehaviourDidChange_f);
  CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 0);
  if (v4)
  {
LABEL_14:

    CFRelease(v4);
  }
}

void MXDispatchAsyncFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  context = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MXDispatchAsyncFunction_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a8;
  block[5] = a7;
  v16 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v17 = objc_autoreleasePoolPush();
  v31 = 0;
  v30 = 0uLL;
  if (CMSMDeviceState_IsAudiomxd(v17, v18))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_2();
    }

    if (gSerialQueue == a6)
    {
      CreateACQDispatchID();
    }
  }

  objc_autoreleasePoolPop(v17);
  v33 = v30;
  v34 = v31;
  if (CMSMDeviceState_IsAudiomxd(v19, v20))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_2();
    }

    if (gSerialQueue == a6)
    {
      MEMORY[0x1B2733F40](&v33, 0, "MXDispatchAsyncFunction", a1, a2, a3, a4, a5, context);
    }
  }

  objc_autoreleasePoolPop(context);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __MXDispatchAsyncFunction_block_invoke_2;
  v22[3] = &unk_1E7AEC7C8;
  v23 = v33;
  v24 = v34;
  v25 = a1;
  v29 = a3;
  v26 = a2;
  v27 = a4;
  v28 = a5;
  v22[4] = a6;
  v22[5] = v16;
  dispatch_barrier_async(a6, v22);
}

void __MXDispatchAsyncFunction_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd(v2, v9))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v3)
    {
      MEMORY[0x1B2733F40](a1 + 48, 1, "MXDispatchAsyncFunction_block_invoke_2", v4, v5, v6, v7, v8);
    }
  }

  v10 = (*(*(a1 + 40) + 16))();
  v11 = *(a1 + 32);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 104);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd(v10, v17))
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v11)
    {
      MEMORY[0x1B2733F40](a1 + 48, 2, "MXDispatchAsyncFunction_block_invoke_2", v12, v13, v14, v15, v16);
    }
  }

  objc_autoreleasePoolPop(v2);
  v18 = *(a1 + 40);

  _Block_release(v18);
}

void CMSMNotificationUtility_PostSessionAudioBehaviourDidChange_f(void *a1)
{
  CMSMUtility_PostNotificationToSession(a1, @"AudioBehaviourDidChange", 0);
}

uint64_t CMSMVAUtility_AudioObjectSetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (unk_1EB75E060)
  {
    return unk_1EB75E060(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 0;
  }
}

void *CMSUtility_CopySessionAudioBehaviour(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = -[MXSessionManager copyAudioBehaviorForCategory:mode:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "copyAudioBehaviorForCategory:mode:", [a1 audioCategory], objc_msgSend(a1, "audioMode"));
    if (v2)
    {
      v3 = v2;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 siriInputDeviceUUID])
      {
        v4 = *MEMORY[0x1E695E480];
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v3);
        Mutable = CFArrayCreateMutable(v4, 1, MEMORY[0x1E695E9C0]);
        [v1 siriInputDeviceUUID];
        VADNameforSiriEndpointID = CMSMUtility_GetVADNameforSiriEndpointID();
        if (VADNameforSiriEndpointID)
        {
          CFArrayInsertValueAtIndex(Mutable, 0, VADNameforSiriEndpointID);
        }

        CFDictionarySetValue(MutableCopy, @"AudioBehaviour_Destination", Mutable);
        if (MutableCopy)
        {
          v1 = CFRetain(MutableCopy);
          if (!Mutable)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v1 = 0;
          if (!Mutable)
          {
LABEL_10:
            if (MutableCopy)
            {
              v8 = MutableCopy;
LABEL_30:
              CFRelease(v8);
              goto LABEL_31;
            }

            goto LABEL_31;
          }
        }

        CFRelease(Mutable);
        goto LABEL_10;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]) && CMSUtility_PlaysToCarAltAudio(v1))
      {
        v9 = *MEMORY[0x1E695E480];
        Value = CFDictionaryGetValue(v3, @"AudioBehaviour_Destination");
        v11 = CFArrayCreateMutableCopy(v9, 0, Value);
        v12 = v11;
        v13 = @"VirtualAudioDevice_SystemRemote";
      }

      else
      {
        [v1 routingContextUUID];
        if (FigCFEqual())
        {
          v14 = *MEMORY[0x1E695E480];
          v15 = CFDictionaryGetValue(v3, @"AudioBehaviour_Destination");
          v12 = CFArrayCreateMutableCopy(v14, 0, v15);
          if (!CMSMDeviceState_ItsAnAppleTV() || !FigRoutingContextUtilities_IsFollowingAnotherContext(qword_1EB75E1A8))
          {
            CFArrayInsertValueAtIndex(v12, 0, @"VirtualAudioDevice_Music");
          }

          v16 = CFDictionaryCreateMutableCopy(v14, 0, v3);
          v17 = v16;
LABEL_25:
          CFDictionarySetValue(v16, @"AudioBehaviour_Destination", v12);
          if (v17)
          {
            v1 = CFRetain(v17);
            if (!v12)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v1 = 0;
            if (!v12)
            {
LABEL_28:
              if (v17)
              {
                v8 = v17;
                goto LABEL_30;
              }

LABEL_31:
              CFRelease(v3);
              return v1;
            }
          }

          CFRelease(v12);
          goto LABEL_28;
        }

        if (!FigRoutingManagerContextUtilities_IsContextVideoAndIndependent([v1 routingContextUUID]))
        {
          v1 = CFRetain(v3);
          goto LABEL_31;
        }

        v9 = *MEMORY[0x1E695E480];
        v18 = CFDictionaryGetValue(v3, @"AudioBehaviour_Destination");
        v11 = CFArrayCreateMutableCopy(v9, 0, v18);
        v12 = v11;
        v13 = @"VirtualAudioDevice_PerAppAirPlay";
      }

      CFArrayInsertValueAtIndex(v11, 0, v13);
      v16 = CFDictionaryCreateMutableCopy(v9, 0, v3);
      v17 = v16;
      goto LABEL_25;
    }

    return 0;
  }

  return v1;
}

uint64_t CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = v6;
  cf = v6;
  v8 = MEMORY[0x1E695E4D0];
  if (a2)
  {
    CFDictionarySetValue(v6, @"session going active", *MEMORY[0x1E695E4D0]);
  }

  isActive = objc_msgSend_isActive(a1);
  v10 = *v8;
  v11 = *MEMORY[0x1E695E4C0];
  if (isActive)
  {
    v12 = v10;
  }

  else
  {
    v12 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v7, @"session active", v12);
  if ([a1 isPlaying])
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  CFDictionarySetValue(v7, @"session output running", v13);
  if ([a1 isRecording])
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  CFDictionarySetValue(v7, @"session input running", v14);
  v15 = [a1 reporterIDs];
  v16 = Mutable;
  if (v15)
  {
    v16 = [a1 reporterIDs];
  }

  CFDictionarySetValue(v7, @"session reporter IDs", v16);
  if ([a1 audioBehaviour])
  {
    Value = CFDictionaryGetValue([a1 audioBehaviour], @"AudioBehaviour_Destination");
  }

  else
  {
    Value = 0;
  }

  if ([a1 audioBehaviour])
  {
    v19 = CFDictionaryGetValue([a1 audioBehaviour], @"AudioBehaviour_Source");
  }

  else
  {
    v19 = 0;
  }

  if (Value)
  {
    v20 = Value;
  }

  else
  {
    v20 = Mutable;
  }

  CFDictionarySetValue(v7, @"session output VAD UIDs", v20);
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = Mutable;
  }

  CFDictionarySetValue(v7, @"session input VAD UIDs", v21);
  [a1 applicationState];
  SInt32 = FigCFNumberCreateSInt32();
  if (SInt32)
  {
    v23 = SInt32;
    CFDictionarySetValue(v7, @"session app state", SInt32);
    CFRelease(v23);
  }

  v26 = 0;
  v25 = *"isesbolg";
  if (unk_1EB75E060)
  {
    v18 = unk_1EB75E060(dword_1EB75E0AC, &v25, 0, 0, 8, &cf);
    v7 = cf;
    if (!cf)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v18 = 0;
  if (v7)
  {
LABEL_32:
    CFRelease(v7);
  }

LABEL_33:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v18;
}

uint64_t CMScreenGetScreenType()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __CMScreenGetScreenType_block_invoke;
  v2[3] = &unk_1E7AE73A0;
  v2[4] = &v3;
  MXDispatchSync("CMScreenGetScreenType", "CMSessionManager_Screen.m", 643, 0, 0, gCMScreen_1, v2);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B17B0BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CMScreenGetScreenType_block_invoke(uint64_t a1)
{
  v2 = @"None";
  if (cmscreenIsActivated())
  {
    v14 = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&v14);
    v13 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v14, 0, &v13);
    v3 = v13;
    v4 = MEMORY[0x1E69626A8];
    if (!v13)
    {
      theArray = 0;
      FigRoutingManagerContextUtilities_CopyPerAppSecondDisplayContextUUIDs(&theArray);
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v6 = Count;
          v7 = 0;
          v8 = *v4;
          v9 = *MEMORY[0x1E69626C8];
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
            cf = 0;
            FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(ValueAtIndex, 0, &cf);
            if (FigRoutingManagerIsEndpointOfType(cf, v8) || FigRoutingManagerIsEndpointOfType(cf, v9))
            {
              break;
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v6 == ++v7)
            {
              goto LABEL_16;
            }
          }

          if (cf)
          {
            v13 = CFRetain(cf);
            if (cf)
            {
              CFRelease(cf);
            }
          }

          else
          {
            v13 = 0;
          }
        }

LABEL_16:
        if (theArray)
        {
          CFRelease(theArray);
        }
      }

      v3 = v13;
    }

    if (FigRoutingManagerIsEndpointOfType(v3, *v4))
    {
      v2 = @"AirPlay";
    }

    else if (FigRoutingManagerIsEndpointOfType(v13, *MEMORY[0x1E69626C8]))
    {
      v2 = @"TVOut";
    }

    if (v13)
    {
      CFRelease(v13);
      v13 = 0;
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void cmsUpdatePiPIsPossible(void *a1)
{
  if (CMSMDeviceState_SupportsPiP())
  {
    if (CMSUtility_HasBackgroundEntitlement(a1))
    {
      IsPiPAllowedForCategory = CMSMUtility_IsPiPAllowedForCategory([a1 audioCategory]);
      if (IsPiPAllowedForCategory != [a1 isPiPPossible])
      {
        v3 = [a1 setIsPiPPossible:IsPiPAllowedForCategory != 0];
        if (a1)
        {
          v3 = CFRetain(a1);
        }

        v5 = MXGetNotificationSenderQueue(v3, v4);

        MXDispatchAsyncFunction("cmsUpdatePiPIsPossible", "CMSessionManager.m", 7801, 0, 0, v5, a1, CMSMNotificationUtility_PostPiPIsPossibleDidChange_f);
      }
    }
  }
}

void *CMSUtility_HasBackgroundEntitlement(void *result)
{
  if (result)
  {
    v1 = result;
    if ([objc_msgSend(result "clientPID")] >= 1 && (objc_msgSend(v1, "hasFetchedBackgroundPrivileges") & 1) == 0)
    {
      [v1 setIsAllowedToPlayInBackground:{CMSMUtility_FetchBackgroundEntitlement(objc_msgSend(objc_msgSend(v1, "clientPID"), "intValue"))}];
      [v1 setHasFetchedBackgroundPrivileges:1];
    }

    return [v1 isAllowedToPlayInBackground];
  }

  return result;
}

unint64_t CMSMUtility_IsEmergencyAlertCategory(unint64_t result)
{
  if (result)
  {
    v1 = result;
    return CFEqual(result, @"EmergencyAlert") || CFEqual(v1, @"EmergencyAlert_Muteable") != 0;
  }

  return result;
}

uint64_t CMSUtility_GetCustomizedCategory(void *a1)
{
  v2 = [a1 audioCategory];
  v3 = [a1 shouldEnableBluetoothRecording];
  v4 = [a1 defaultBuiltInRouteToUse];
  if ([a1 allowsBluetoothRecordingCustomization])
  {
    v2 = -[MXSessionManager getBluetoothCustomizedAlternateCategory:enableBluetooth:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getBluetoothCustomizedAlternateCategory:enableBluetooth:", [a1 audioCategory], v3);
  }

  if (![a1 allowsDefaultBuiltInRouteCustomization] || !v4 || !CFEqual(v4, @"Speaker") && !CFEqual(v4, @"Receiver"))
  {
    return v2;
  }

  v5 = +[MXSessionManager sharedInstance];

  return [(MXSessionManager *)v5 getDefaultBuiltInCustomizedAlternateCategory:v2 defaultBuiltInRoute:v4];
}

uint64_t CMSMUtility_GetDefaultEnableBluetoothRecordingSettingForMode(int a1)
{
  result = 0;
  if (a1 > 1768781425)
  {
    if (a1 > 1936749156)
    {
      if (a1 != 1936749157)
      {
        if (a1 == 1987208039)
        {
          goto LABEL_17;
        }

        v3 = 1986884455;
        goto LABEL_16;
      }
    }

    else if (a1 != 1768781426 && a1 != 1835229549)
    {
      v3 = 1919776355;
      goto LABEL_16;
    }

LABEL_18:
    v4 = MEMORY[0x1E695E4C0];
    return *v4;
  }

  if (a1 > 1768778863)
  {
    if (a1 != 1768778864)
    {
      if (a1 == 1768779619)
      {
        goto LABEL_17;
      }

      v3 = 1768781411;
LABEL_16:
      if (a1 != v3)
      {
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (a1 != 1735222132 && a1 != 1751212899)
  {
    v3 = 1768057203;
    goto LABEL_16;
  }

LABEL_17:
  v4 = MEMORY[0x1E695E4D0];
  return *v4;
}

uint64_t FigRoutingContextResilientRemoteCopySystemMusicContext(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCopySystemMusicContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySystemMusicContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

uint64_t routingContextResilientRemote_withRemoteContext(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  cf = v5;
  FigSimpleMutexUnlock();
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = (*(a2 + 16))(a2, cf);
    v9 = v8;
    if (v8 == -16155 || v8 == -12026 || v8 == -16152)
    {
      if (cf)
      {
        CFRetain(cf);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v6 = cf;
    }

    do
    {
      v12 = v9;
      v14 = v9 == -16155 || v9 == -12026 || v9 == -16152;
      if (!v14 || v7 == 5)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v9 = routingContextResilientRemote_replaceRemoteContext(a1);
      ++v7;
    }

    while (v9);
  }

  while ((v12 == -16155 || v12 == -12026 || v12 == -16152) && v7 < 5);
  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t remoteXPCRoutingContext_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteXPCRoutingContext_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return FigXPCMessageCopyCFString();
}

uint64_t FigRoutingContextGetTypeID(uint64_t a1)
{
  if (FigRoutingContextGetClassID_sRegisterFigRoutingContextTypeOnce != -1)
  {
    FigRoutingContextGetClassID_cold_1();
  }

  v2 = sFigRoutingContextClassID;

  return MEMORY[0x1EEDBB488](v2);
}

uint64_t FigSystemControllerRemoteCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!_MergedGlobals_16 && qword_1ED6D30A0)
  {
    goto LABEL_7;
  }

  v4 = objc_alloc(MEMORY[0x1E695DF20]);
  v38 = *MEMORY[0x1E69633B0];
  v39 = 0;
  v5 = [v4 initWithObjectsAndKeys:@"ServerConnectionDied"];
  v6 = FigXPCRemoteClientCreate();
  _MergedGlobals_16 = v6;
  if (v6 || !qword_1ED6D30A0)
  {
    MXSimulateCrash([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"FigXPCRemoteClientCreate failed with error=%d, gFigSystemControllerRemoteClient=%p", v6, qword_1ED6D30A0), "UTF8String"]);
  }

  v7 = _MergedGlobals_16;
  if (!_MergedGlobals_16)
  {
LABEL_7:
    FigSystemControllerGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      v7 = v8;
      v30 = OUTLINED_FUNCTION_6_14(v8, v9, v10, v11, v12, v13, v14, v15, v38, v39, 0, 0, v43, SBYTE2(v43), SBYTE3(v43), SHIDWORD(v43));
      if (os_log_type_enabled(v30, typea))
      {
        v31 = *v47;
      }

      else
      {
        v31 = *v47 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v48 = 136315394;
        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_3_2();
        _os_log_send_and_compose_impl(v32, v33, v34, v35, v36, v30, typea, v37);
      }

      OUTLINED_FUNCTION_0_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v16 = OUTLINED_FUNCTION_6_14(v8, v9, v10, v11, v12, v13, v14, v15, v38, v39, 0, 0, v43, SBYTE2(v43), SBYTE3(v43), SHIDWORD(v43));
      if (os_log_type_enabled(v16, type))
      {
        v17 = *v46;
      }

      else
      {
        v17 = *v46 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v48 = 136315138;
        v49 = "remoteSystemController_CreateInternal";
        LODWORD(v40) = 12;
        OUTLINED_FUNCTION_3_2();
        _os_log_send_and_compose_impl(v18, v19, v20, v21, v22, v16, type, v23, &v48, v40);
      }

      OUTLINED_FUNCTION_0_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v24 = FigXPCCreateBasicMessage();
      if (v24 || (program_sdk_version = dyld_get_program_sdk_version(), xpc_dictionary_set_uint64(xdict, kFigSystemControllerXPCMsgParam_ClientLinkedSDK, program_sdk_version), v24 = OUTLINED_FUNCTION_6_1(qword_1ED6D30A0), v24))
      {
        v7 = v24;
      }

      else
      {
        uint64 = xpc_dictionary_get_uint64(v41, *MEMORY[0x1E69615A0]);
        *CMBaseObjectGetDerivedStorage() = uint64;
        v7 = FigXPCRemoteClientAssociateObject();
        if (v7)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_0_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          *a3 = 0;
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_23(qword_1ED6D30A0, v28, "FigSystemControllerRemoteCreate");
  return v7;
}

uint64_t FigSystemControllerGetClassID()
{
  if (_MergedGlobals_5 != -1)
  {
    FigSystemControllerGetClassID_cold_1();
  }

  return qword_1ED6D2F10;
}

uint64_t systemController_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&systemController_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t FigSystemControllerCreate(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (_MergedGlobals_5 != -1)
  {
    FigSystemControllerGetClassID_cold_1();
  }

  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 12) = a2;
  v9 = [[MXSystemController alloc] initWithPID:a2];
  *DerivedStorage = v9;
  if (v9)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fsc_createPropertyMappingDicts_block_invoke;
    block[3] = &unk_1E7AE73A0;
    block[4] = &v13;
    if (fsc_createPropertyMappingDicts_onceToken != -1)
    {
      dispatch_once(&fsc_createPropertyMappingDicts_onceToken, block);
    }

    v10 = *(v14 + 6);
    _Block_object_dispose(&v13, 8);
    if (!v10)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v10 = FigNotificationCenterAddWeakListeners();
      if (!v10)
      {
        [*DerivedStorage setAttributeForKey:@"ClientAuditToken" andValue:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", a3, 32)}];
        *a4 = 0;
      }
    }
  }

  else
  {
    FigSystemControllerCreate_cold_2();
    return 0;
  }

  return v10;
}

FigRemoteRoutingContextFactory *FigRemoteRoutingContextFactoryGetCurrent()
{
  v0 = objc_alloc_init(FigRemoteRoutingContextFactory);
  result = dispatch_get_specific(@"kFigRoutingSessionResilientRemoteCurrentRemoteRoutingContextFactoryKey");
  if (!result)
  {
    return v0;
  }

  return result;
}

uint64_t FigRoutingContextResilientRemoteCreate(void *a1, void (**a2)(void), void *a3)
{
  FigRoutingContextGetClassID(a1);
  started = CMDerivedObjectCreate();
  if (started)
  {
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = [a1 copy];
  *DerivedStorage = v7;
  if (!v7)
  {
    FigRoutingContextResilientRemoteCreate_cold_5();
    return 0;
  }

  v8 = v7;
  v9 = 5;
  cf = 0;
  while (1)
  {
    v10 = (*(v8 + 16))(v8, &cf);
    v11 = v10;
    if (v10 > -12027)
    {
      break;
    }

    if (v10 != -16155 && v10 != -16152)
    {
      goto LABEL_17;
    }

LABEL_12:
    if (!--v9)
    {
      goto LABEL_17;
    }
  }

  if (v10)
  {
    if (v10 != -12026)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v13 = cf;
  if (cf)
  {
    v13 = CFRetain(cf);
  }

  DerivedStorage[3] = v13;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    goto LABEL_34;
  }

  DerivedStorage[2] = FigSimpleMutexCreate();
  if (!DerivedStorage[3])
  {
    FigRoutingContextResilientRemoteCreate_cold_4(&cf);
    goto LABEL_33;
  }

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.coremedia.routing-context.resilient-remote.notifications", v14);
  DerivedStorage[4] = v15;
  if (!v15)
  {
    FigRoutingContextResilientRemoteCreate_cold_3(&cf);
    goto LABEL_33;
  }

  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("com.apple.coremedia.routing-context.remote-replacement", v16);
  DerivedStorage[5] = v17;
  if (!v17)
  {
    FigRoutingContextResilientRemoteCreate_cold_2(&cf);
    goto LABEL_33;
  }

  started = routingContextResilientRemote_startObservingRemoteContext(0, DerivedStorage[3]);
  if (started)
  {
LABEL_27:
    v11 = started;
    goto LABEL_34;
  }

  if (a3)
  {
    *a3 = 0;
    v11 = 0;
    DerivedStorage[1] = [a2 copy];
    return v11;
  }

  FigRoutingContextResilientRemoteCreate_cold_1(&cf);
LABEL_33:
  v11 = cf;
LABEL_34:
  if (a2 && v11)
  {
    a2[2](a2);
  }

  return v11;
}

uint64_t FigRoutingContextGetClassID(uint64_t a1)
{
  if (FigRoutingContextGetClassID_sRegisterFigRoutingContextTypeOnce != -1)
  {
    FigRoutingContextGetClassID_cold_1();
  }

  return sFigRoutingContextClassID;
}

uint64_t __FigRoutingContextGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigRoutingContextClassDesc, ClassID, 1, &sFigRoutingContextClassID);
}

uint64_t routingContext_create(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  cf = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (a2 == 5 && !CFPreferenceNumberWithDefault)
  {
    v8 = routingContext_copySystemContext(1u, &cf);
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_4:
    if (!v8)
    {
      *a4 = cf;
      return v8;
    }

    goto LABEL_7;
  }

  FigRoutingContextGetClassID(CFPreferenceNumberWithDefault);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    goto LABEL_7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = FigRoutingManagerRegisterAndCopyContext(cf, a3, a2, (DerivedStorage + 8));
  if (!*(DerivedStorage + 8))
  {
    v8 = 4294955275;
    goto LABEL_7;
  }

  v8 = v11;
  if (!v11)
  {
    *DerivedStorage = a2;
    if (a4)
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t routingContext_create_0(uint64_t a1, const __CFDictionary *a2, int a3, CFTypeRef *a4)
{
  v17 = 0;
  xdict = 0;
  cf = 0;
  if (!a4)
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, cf, v17);
LABEL_18:
    v13 = v8;
    goto LABEL_14;
  }

  v8 = routingContextRemoteXPC_EnsureClientEstablished();
  if (v8)
  {
    goto LABEL_18;
  }

  if (a2 && CFDictionaryContainsKey(a2, @"contextUUID"))
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = a3 != 0;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    goto LABEL_18;
  }

  xpc_dictionary_set_uint64(xdict, kFigRoutingContextXPCMsgParam_ContextType, a1);
  FigXPCMessageSetCFDictionary();
  OUTLINED_FUNCTION_8();
  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v8)
  {
    goto LABEL_18;
  }

  uint64 = xpc_dictionary_get_uint64(v17, *MEMORY[0x1E69615A0]);
  if (uint64)
  {
    v12 = uint64;
    if ((v10 | v9) != 1 || (v8 = FigXPCRemoteClientRetainCopiedObject(), !v8))
    {
      v8 = remoteXPCRoutingContext_CreateInternal(v12, &cf);
      if (!v8)
      {
        v13 = 0;
        *(CMBaseObjectGetDerivedStorage() + 80) = a1;
        *a4 = cf;
        cf = 0;
        goto LABEL_14;
      }
    }

    goto LABEL_18;
  }

  v13 = 4294955274;
LABEL_14:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t routingContextRemoteXPC_EnsureClientEstablished()
{
  if (routingContextRemoteXPC_EnsureClientEstablished_onceToken != -1)
  {
    routingContextRemoteXPC_EnsureClientEstablished_cold_1();
  }

  FigSimpleMutexLock();
  if (!gFigRoutingContextRemoteClient)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"RoutingContext_ServerConnectionDied");
    routingContextRemoteXPC_EnsureClientEstablished_err = FigXPCRemoteClientCreate();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  FigSimpleMutexUnlock();
  return routingContextRemoteXPC_EnsureClientEstablished_err;
}

uint64_t HandleRoutingContextRemoteMessage(_xpc_connection_s *a1, void *a2, uint64_t a3)
{
  v85 = 0;
  v83 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v7 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v7)
  {
    fig_log_get_emitter();
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v84, v86);
  }

  v10 = v7;
  if (!v7)
  {
    if ((v85 - 1936026723) <= 0x10 && ((1 << (v85 - 99)) & 0x10003) != 0)
    {
      goto LABEL_36;
    }

    if (v85 == 779314548)
    {
      OUTLINED_FUNCTION_14_5();
      return FigXPCHandleStdSetPropertyMessage();
    }

    else
    {
      v8 = v85 == 1635021668 || v85 == 1635021682;
      if (v8)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_12_5();
      if (v8)
      {
        v19 = OUTLINED_FUNCTION_15_5();
        return FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage(v19, v20, v21, a3);
      }

      switch(v85)
      {
        case 1685024621:
          return FigXPCServerDisassociateObjectWithConnection();
        case 1919316836:
        case 1919316850:
LABEL_36:
          OUTLINED_FUNCTION_11_5();
          v11 = routingContextServerXPC_CopyOptionsWithClientPIDAndName(a1, 0, @"clientPID", 0);
          if (v85 == 1635021668)
          {
            OUTLINED_FUNCTION_8_7();
            if (v38)
            {
              v71 = OUTLINED_FUNCTION_4_9();
              CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v71, v72);
              OUTLINED_FUNCTION_28_0();
              FigXPCMessageCopyCFDictionary();
              v73 = *(*(OUTLINED_FUNCTION_31_1() + 16) + 88);
              if (CompletionCallbackParametersFromMessageAndConnection)
              {
                if (!v73)
                {
                  goto LABEL_138;
                }

LABEL_123:
                v74 = OUTLINED_FUNCTION_0_26();
                v75(v74);
                OUTLINED_FUNCTION_18_2();
                if (!v8)
                {
                  goto LABEL_136;
                }

LABEL_138:
                v10 = 4294954514;
                goto LABEL_79;
              }

              if (v73)
              {
                v81 = OUTLINED_FUNCTION_2_16();
                v76 = v82(v81);
                goto LABEL_136;
              }

              goto LABEL_137;
            }

LABEL_81:
            CompletionCallbackParametersFromMessageAndConnection = 0;
            v10 = 4294955273;
            goto LABEL_79;
          }

          if (v85 == 1635021682)
          {
            OUTLINED_FUNCTION_8_7();
            if (v35)
            {
              if (xpc_dictionary_get_uint64(a2, kFigRoutingContextXPCMsgParam_EndpointID))
              {
                v13 = FigXPCEndpointServerRetainEndpointForID();
                if (v13)
                {
                  goto LABEL_88;
                }
              }

              if (*(*(CMBaseObjectGetVTable() + 16) + 80))
              {
                goto LABEL_87;
              }

              goto LABEL_89;
            }

LABEL_76:
            v10 = 4294955273;
            goto LABEL_90;
          }

          if (v85 != 1919316836)
          {
            if (v85 == 1919316850)
            {
              OUTLINED_FUNCTION_8_7();
              if (v36)
              {
                if (xpc_dictionary_get_uint64(a2, kFigRoutingContextXPCMsgParam_EndpointID))
                {
                  v13 = FigXPCEndpointServerRetainEndpointForID();
                  if (v13)
                  {
                    goto LABEL_88;
                  }
                }

                if (*(*(CMBaseObjectGetVTable() + 16) + 96))
                {
                  goto LABEL_87;
                }

                goto LABEL_89;
              }

              goto LABEL_76;
            }

            OUTLINED_FUNCTION_19_1();
            if (v8)
            {
              OUTLINED_FUNCTION_8_7();
              if (v22)
              {
                v23 = OUTLINED_FUNCTION_4_9();
                CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v23, v24);
                OUTLINED_FUNCTION_28_0();
                FigXPCMessageCopyCFArray();
                v26 = *(OUTLINED_FUNCTION_31_1() + 16);
                if (CompletionCallbackParametersFromMessageAndConnection)
                {
                  if (!*(v26 + 224))
                  {
                    goto LABEL_138;
                  }

                  goto LABEL_123;
                }

                if (*(v26 + 48))
                {
LABEL_128:
                  v77 = OUTLINED_FUNCTION_2_16();
                  v76 = v78(v77);
LABEL_136:
                  v10 = v76;
                  CompletionCallbackParametersFromMessageAndConnection = 0;
                  goto LABEL_79;
                }

LABEL_137:
                CompletionCallbackParametersFromMessageAndConnection = 0;
                goto LABEL_138;
              }

              goto LABEL_81;
            }

            OUTLINED_FUNCTION_19_1();
            if (!v8)
            {
              OUTLINED_FUNCTION_19_1();
              if (!v8)
              {
                OUTLINED_FUNCTION_19_1();
                if (!v8)
                {
                  v10 = 0;
                  goto LABEL_90;
                }

                OUTLINED_FUNCTION_8_7();
                if (v12)
                {
                  if (xpc_dictionary_get_uint64(a2, kFigRoutingContextXPCMsgParam_EndpointID))
                  {
                    v13 = FigXPCEndpointServerRetainEndpointForID();
                    if (v13)
                    {
                      goto LABEL_88;
                    }
                  }

                  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
                  {
LABEL_87:
                    v39 = OUTLINED_FUNCTION_4();
                    v13 = v40(v39);
LABEL_88:
                    v10 = v13;
                    goto LABEL_90;
                  }

LABEL_89:
                  v10 = 4294954514;
LABEL_90:
                  if (v11)
                  {
                    CFRelease(v11);
                  }

                  return v10;
                }

                goto LABEL_76;
              }

              OUTLINED_FUNCTION_8_7();
              if (v27)
              {
                v28 = OUTLINED_FUNCTION_4_9();
                CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v28, v29);
                OUTLINED_FUNCTION_28_0();
                FigXPCMessageCopyCFDictionary();
                v30 = *(OUTLINED_FUNCTION_31_1() + 16);
                if (CompletionCallbackParametersFromMessageAndConnection)
                {
                  if (!*(v30 + 216))
                  {
                    goto LABEL_138;
                  }

                  goto LABEL_123;
                }

                if (*(v30 + 16))
                {
                  goto LABEL_128;
                }

                goto LABEL_137;
              }

              goto LABEL_81;
            }

            if (!*(v83 + 2))
            {
              goto LABEL_76;
            }

            value = xpc_dictionary_get_value(a2, kFigRoutingContextXPCMsgParam_EndpointIDList);
            if (value)
            {
              v32 = value;
              count = xpc_array_get_count(value);
              Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], count, MEMORY[0x1E695E9C0]);
              if (count < 1)
              {
                goto LABEL_96;
              }

              if (xpc_array_get_uint64(v32, 0))
              {
                FigXPCEndpointServerRetainEndpointForID();
              }

              if (!Mutable)
              {
                goto LABEL_96;
              }

              CFRelease(Mutable);
            }

            Mutable = 0;
LABEL_96:
            routes_logEndpoints(Mutable);
            if (*(*(CMBaseObjectGetVTable() + 16) + 40))
            {
              v42 = OUTLINED_FUNCTION_4();
              v10 = v43(v42);
            }

            else
            {
              v10 = 4294954514;
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            goto LABEL_90;
          }

          OUTLINED_FUNCTION_8_7();
          if (!v37)
          {
            CompletionCallbackParametersFromMessageAndConnection = 0;
            v10 = 4294955273;
LABEL_79:
            DestroyCompletionCallbackParameters(CompletionCallbackParametersFromMessageAndConnection);
            goto LABEL_90;
          }

          v65 = OUTLINED_FUNCTION_4_9();
          CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v65, v66);
          OUTLINED_FUNCTION_28_0();
          FigXPCMessageCopyCFDictionary();
          v67 = *(OUTLINED_FUNCTION_31_1() + 16);
          if (CompletionCallbackParametersFromMessageAndConnection)
          {
            if (*(v67 + 208))
            {
              v68 = OUTLINED_FUNCTION_0_26();
              v69(v68);
              OUTLINED_FUNCTION_18_2();
              if (!v8)
              {
                goto LABEL_133;
              }
            }
          }

          else
          {
            if (*(v67 + 104))
            {
              v79 = OUTLINED_FUNCTION_2_16();
              v70 = v80(v79);
LABEL_133:
              v10 = v70;
              CompletionCallbackParametersFromMessageAndConnection = 0;
              goto LABEL_79;
            }

            CompletionCallbackParametersFromMessageAndConnection = 0;
          }

          v10 = 4294954514;
          goto LABEL_79;
        case 1919771757:
          v15 = OUTLINED_FUNCTION_14_5();
          FigRoutingContextXPCHandleReportModificationMetricsMessage(v15, v16);
          return 0;
        case 1919972210:
          v17 = OUTLINED_FUNCTION_14_5();
          return FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage(v17, v18);
        default:
          OUTLINED_FUNCTION_19_1();
          if (v8)
          {
            goto LABEL_36;
          }

          switch(v85)
          {
            case 778268793:
              v60 = OUTLINED_FUNCTION_14_5();
              return FigRoutingContextXPCHandleCopyPropertyMessage(v60, v61, a3);
            case 1668047715:
              v56 = OUTLINED_FUNCTION_14_5();
              return FigRoutingContextXPCHandleCloseCommChannelMessage(v56, v57);
            case 1668047716:
              v51 = OUTLINED_FUNCTION_15_5();
              return FigRoutingContextXPCHandleCloseCommChannelForDeviceIDMessage(v51, v52, v53);
            case 1668246893:
              OUTLINED_FUNCTION_3_10();
              return FigRoutingContextXPCHandleSendCommandMessage();
            default:
              OUTLINED_FUNCTION_12_5();
              if (v8)
              {
                OUTLINED_FUNCTION_3_10();
                return FigRoutingContextXPCHandleCopySelectedBufferedEndpointMessage();
              }

              else
              {
                OUTLINED_FUNCTION_12_5();
                if (v8)
                {
                  OUTLINED_FUNCTION_3_10();
                  return FigRoutingContextXPCHandleCopySelectedBufferedEndpointForTestingMessage();
                }

                else
                {
                  OUTLINED_FUNCTION_12_5();
                  if (v8)
                  {
                    v44 = OUTLINED_FUNCTION_17_0();
                    return FigRoutingContextXPCHandleCopySelectedRouteForRemoteControlMessage(v44, v45);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_12_5();
                    if (v8)
                    {
                      return FigRoutingContextXPCHandleCopySelectedRouteDescriptorsMessage(0);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_12_5();
                      if (v8)
                      {
                        v58 = OUTLINED_FUNCTION_17_0();
                        return FigRoutingContextXPCHandleCopySelectedRoutesMessage(v58, v59);
                      }

                      else
                      {
                        switch(v85)
                        {
                          case 1668440931:
                            v54 = OUTLINED_FUNCTION_14_5();
                            return FigRoutingContextXPCHandleCreateCommChannelMessage(v54, v55, a3);
                          case 1668440932:
                            v62 = OUTLINED_FUNCTION_15_5();
                            return FigRoutingContextXPCHandleCreateCommChannelForDeviceIDMessage(v62, v63, v64, a3);
                          case 1668641380:
                            return FigRoutingContextXPCHandleCopySelectedRouteDescriptorMessage(0);
                          case 1668641394:
                            v49 = OUTLINED_FUNCTION_17_0();
                            return FigRoutingContextXPCHandleCopySelectedRouteMessage(v49, v50);
                          case 1684108385:
                            OUTLINED_FUNCTION_3_10();
                            return FigRoutingContextXPCHandleSendDataMessage();
                          case 1935959652:
                            v46 = OUTLINED_FUNCTION_3_10();
                            return FigRoutingContextXPCHandleSendDataForDeviceIDMessage(v46, v47, v48);
                          default:
                            return 4294951138;
                        }
                      }
                    }
                  }
                }
              }
          }
      }
    }
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t CreateRoutingContextServerState(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040D36CB8EBuLL);
  if (v2)
  {
    result = 0;
  }

  else
  {
    CreateRoutingContextServerState_cold_1(&v4);
    result = v4;
  }

  *a1 = v2;
  return result;
}

uint64_t FigRoutingContextServerCheckEntitlements(uint64_t a1, int a2, _BYTE *a3)
{
  a3[1] = FigXPCConnectionHasEntitlement();
  HasEntitlement = FigXPCConnectionHasEntitlement();
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"ForceEnforcementOfSetOutputDeviceEntitlement", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  a3[2] = HasEntitlement;
  v6 = FigXPCConnectionHasEntitlement();
  v7 = (v6 | FigXPCConnectionHasEntitlement()) != 0;
  v9 = 0;
  result = CFPreferencesGetAppBooleanValue(@"ForceEnforcementOfDeviceDetailsEntitlement", @"com.apple.coremedia", &v9);
  a3[3] = (!v9 || !result) && a2 == 6 || v7;
  return result;
}

__CFDictionary *routingContextServerXPC_CopyOptionsWithClientPIDAndName(_xpc_connection_s *a1, const __CFDictionary *a2, const void *a3, const void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  pid = xpc_connection_get_pid(a1);
  memset(v20, 0, sizeof(v20));
  v8 = MEMORY[0x1E695E480];
  if (pid < 1)
  {
    SInt32 = 0;
    v13 = 0;
  }

  else
  {
    v9 = pid;
    v10 = *MEMORY[0x1E695E480];
    SInt32 = FigCFNumberCreateSInt32();
    v12 = proc_name(v9, v20, 0x80u);
    if ((v12 & 0x80000000) == 0)
    {
      *(v20 + v12) = 0;
    }

    v13 = CFStringCreateWithCString(v10, v20, 0x8000100u);
  }

  v14 = *v8;
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v16 = MutableCopy;
  if (a3)
  {
    if (!CFDictionaryContainsKey(MutableCopy, a3) && SInt32 != 0)
    {
      CFDictionarySetValue(v16, a3, SInt32);
    }
  }

  if (a4)
  {
    if (!CFDictionaryContainsKey(v16, a4) && v13 != 0)
    {
      FigCFDictionarySetValue();
    }
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v16;
}

uint64_t FigRoutingManagerContextUtilities_CopySystemRoutingContext(unsigned int a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294949876;
  }

  v3 = 4294949876;
  if (a1 <= 0xE && ((1 << a1) & 0x7E0E) != 0)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v5 = &qword_1EB75CF98;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    if (!byte_1EB75CFA8)
    {
      v5 = 504;
    }

    v6 = *v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingManagerContextUtilities_CopySystemRoutingContext_block_invoke;
    v8[3] = &unk_1E7AE7B58;
    v9 = a1;
    v8[4] = &v10;
    v8[5] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemRoutingContext", "FigRoutingManagerContextUtilities.m", 2656, 0, 0, v6, v8);
    v3 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v3;
}

void sub_1B17B4ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerCopySystemContext(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0xE && ((1 << a2) & 0x7E0E) != 0)
  {
    return FigRoutingManagerContextUtilities_CopySystemRoutingContext(a2, a1);
  }

  else
  {
    return 4294955276;
  }
}

uint64_t routingContext_copySystemContext(unsigned int a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = FigRoutingManagerCopySystemContext(&cf, a1);
  if (!a2 || v3)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return singletonVolumeController_copyRemoteVolumeController(a1, &a10);
}

uint64_t OUTLINED_FUNCTION_24_1(uint64_t a1, uint64_t a2)
{

  return CMBaseObjectGetVTable();
}

const UInt8 *_routingContextUtilities_getContextFromWeakRef(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  BytePtr = CFDataGetBytePtr(v1);
  CFRelease(v2);
  return BytePtr;
}

CMTime *OUTLINED_FUNCTION_2_10(uint64_t a1, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return CMTimeMake(&a10, 0, 1);
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_2_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t remoteXPCRoutingContext_CreateInternal(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  memset(&v19, 0, sizeof(v19));
  v4 = *MEMORY[0x1E695E480];
  FigRoutingContextGetClassID(a1);
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v16 = v5;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19.version = 0;
    v19.retain = remoteXPCRoutingContext_cloneCompletionCallback;
    v19.copyDescription = 0;
    v19.equal = 0;
    v19.release = remoteXPCRoutingContext_freeCompletionCallback;
    v7 = CFDictionaryCreateMutable(v4, 0, 0, &v19);
    DerivedStorage[3] = v7;
    if (v7)
    {
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("com.apple.coremedia.remoteRoutingContext.completioncallbacks", v8);
      DerivedStorage[2] = v9;
      if (v9)
      {
        DerivedStorage[4] = 1;
        v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v11 = dispatch_queue_create("com.apple.coremedia.remoteRoutingContext.commChannels", v10);
        DerivedStorage[5] = v11;
        if (v11)
        {
          v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v13 = dispatch_queue_create("com.apple.coremedia.remoteRoutingContext.notification", v12);
          DerivedStorage[6] = v13;
          if (v13)
          {
            Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
            DerivedStorage[7] = Mutable;
            if (Mutable)
            {
              v15 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              DerivedStorage[8] = v15;
              if (v15)
              {
                DerivedStorage[1] = a1;
                FigXPCRemoteClientAssociateObject();
                v16 = 0;
                *a2 = cf;
                return v16;
              }

              v18 = 1991;
            }

            else
            {
              v18 = 1988;
            }
          }

          else
          {
            v18 = 1985;
          }
        }

        else
        {
          v18 = 1982;
        }
      }

      else
      {
        v18 = 1978;
      }
    }

    else
    {
      v18 = 1975;
    }

    remoteXPCRoutingContext_CreateInternal_cold_1(v18, &v21);
    v16 = v21;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t routingContextResilientRemote_startObservingRemoteContext(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = 0;
  while (1)
  {
    result = FigNotificationCenterAddWeakListener();
    if (result)
    {
      break;
    }

    v2 += 8;
    if (v2 == 24)
    {
      v4 = 0;
      while (1)
      {
        result = FigNotificationCenterAddWeakListener();
        if (result)
        {
          break;
        }

        v4 += 8;
        if (v4 == 48)
        {

          return FigNotificationCenterAddWeakListener();
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t FigVolumeControllerCopySharedControllerRemote(CFTypeRef *a1)
{
  cf = 0;
  if (qword_1ED6D2EF0 != -1)
  {
    dispatch_once(&qword_1ED6D2EF0, &__block_literal_global_36);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_12:
    v2 = 4294949706;
    goto LABEL_8;
  }

  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (qword_1ED6D2F00 != -1)
  {
    dispatch_once(&qword_1ED6D2F00, &__block_literal_global_6_1);
  }

  v2 = _MergedGlobals_4;
  if (!_MergedGlobals_4)
  {
    v2 = singletonVolumeController_copyRemoteVolumeController(qword_1ED6D2EF8, &cf);
    if (!v2)
    {
      *a1 = CFRetain(qword_1ED6D2EF8);
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t FigRoutingContextResilientRemoteCopySystemAudioContext(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCopySystemAudioContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySystemAudioContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

uint64_t volumeController_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&volumeController_getClassID_sFigVolumeControllerClassDesc, ClassID, 1, a1);
}

uint64_t singletonVolumeController_copyCachedRemoteVolumeController(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 16);
    if (v5)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 8) == 1)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        v5 = *(v4 + 16);
        if (v5)
        {
          CFRelease(v5);
          v5 = 0;
          *(v4 + 16) = 0;
        }
      }

      else
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          v5 = CFRetain(v5);
        }
      }
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    singletonVolumeController_copyCachedRemoteVolumeController_cold_1(&v7);
    return v7;
  }
}

uint64_t routingContext_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"contextUUID"))
  {
    if (CFEqual(a2, @"stateInfo"))
    {
      StateInfoStringForContext = FigRoutingContextUtilities_CreateStateInfoStringForContext(DerivedStorage[1]);
      goto LABEL_8;
    }

    if (CFEqual(a2, @"contextType"))
    {
      StateInfoStringForContext = CFNumberCreate(a3, kCFNumberSInt32Type, DerivedStorage);
      goto LABEL_8;
    }

    if (CFEqual(a2, @"supportsWHAMultiDeviceRouting"))
    {
      DoesContextSupportWHAMultiDeviceRouting = FigRoutingManagerContextUtilities_DoesContextSupportWHAMultiDeviceRouting(DerivedStorage[1]);
      v15 = MEMORY[0x1E695E4D0];
      if (!DoesContextSupportWHAMultiDeviceRouting)
      {
        v15 = MEMORY[0x1E695E4C0];
      }

      StateInfoStringForContext = *v15;
      if (!*v15)
      {
        goto LABEL_8;
      }

      goto LABEL_3;
    }

    if (CFEqual(a2, @"supportsBluetoothMultiDeviceRouting"))
    {
      if (((*DerivedStorage - 1) & 0xFFFFFFFD) != 0)
      {
        v16 = MEMORY[0x1E695E4C0];
      }

      else
      {
        v16 = MEMORY[0x1E695E4D0];
      }

      goto LABEL_29;
    }

    if (CFEqual(a2, @"allowsRealTimeAudioPlaybackForNullPickedEndpoint"))
    {
      v17 = *DerivedStorage - 1;
      if (v17 < 0xD)
      {
        v18 = &unk_1E7AEBBA8;
LABEL_25:
        v16 = v18[v17];
LABEL_29:
        StateInfoStringForContext = CFRetain(*v16);
        goto LABEL_8;
      }
    }

    else if (CFEqual(a2, @"allowsRealTimeAudioPlaybackForNonNullPickedEndpoint"))
    {
      v17 = *DerivedStorage - 1;
      if (v17 < 0xD)
      {
        v18 = &unk_1E7AEBC10;
        goto LABEL_25;
      }
    }

    else if (!CFEqual(a2, @"remoteControlChannelAvailable") && !CFEqual(a2, @"supportsCopyRemoteContext"))
    {
      if (!FigCFEqual())
      {
        SharedQueue = FigRoutingManagerGetSharedQueue();
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __routingContext_CopyProperty_block_invoke;
        v20[3] = &unk_1E7AE79A8;
        v20[6] = DerivedStorage;
        v20[7] = a4;
        v20[8] = a1;
        v20[4] = &v21;
        v20[5] = a2;
        MXDispatchAsyncAndWait("routingContext_CopyProperty", "FigRoutingContext.m", 509, 0, 0, SharedQueue, v20);
        goto LABEL_9;
      }

      v16 = (DerivedStorage + 2);
      goto LABEL_29;
    }

    v16 = MEMORY[0x1E695E4C0];
    goto LABEL_29;
  }

  StateInfoStringForContext = DerivedStorage[1];
  if (StateInfoStringForContext)
  {
LABEL_3:
    StateInfoStringForContext = CFRetain(StateInfoStringForContext);
  }

LABEL_8:
  *a4 = StateInfoStringForContext;
LABEL_9:
  v11 = objc_autoreleasePoolPush();
  [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_CopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  objc_autoreleasePoolPop(v11);
  v12 = *(v22 + 6);
  _Block_object_dispose(&v21, 8);
  return v12;
}

void sub_1B17B585C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FigVolumeControllerCopySharedControllerRemote_block_invoke()
{
  FigVolumeControllerGetClassID();
  result = CMDerivedObjectCreate();
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = FigSimpleMutexCreate();
    result = FigSimpleMutexCreate();
    DerivedStorage[1] = result;
  }

  return result;
}

uint64_t FigVolumeControllerGetClassID()
{
  if (_MergedGlobals_9 != -1)
  {
    FigVolumeControllerGetClassID_cold_1();
  }

  return qword_1ED6D2F88;
}

void __volumeControllerRemote_ensureClientEstablished_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v1 = [v0 initWithObjectsAndKeys:{@"VolumeController_ServerConnectionDied", *MEMORY[0x1E69633B0], 0}];
  _MergedGlobals_4 = FigXPCRemoteClientCreate();
}

uint64_t singletonVolumeController_copyRemoteVolumeController(uint64_t a1, CFTypeRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v4 = singletonVolumeController_copyCachedRemoteVolumeController(a1, &v10);
  if (v4)
  {
    v5 = v4;
    goto LABEL_22;
  }

  if (v10)
  {
LABEL_3:
    v5 = 0;
    *a2 = v10;
    return v5;
  }

  FigSimpleMutexLock();
  v5 = singletonVolumeController_copyCachedRemoteVolumeController(a1, &v10);
  if (!v5 && !v10)
  {
    xdict = 0;
    v13 = 0;
    cf = 0;
    if (qword_1ED6D2F00 != -1)
    {
      singletonVolumeController_copyRemoteVolumeController_cold_1();
    }

    v5 = _MergedGlobals_4;
    if (!_MergedGlobals_4)
    {
      v7 = FigXPCCreateBasicMessage();
      if (v7 || (v7 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v7) || (uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]), v7 = FigXPCRemoteClientRetainCopiedObject(), v7))
      {
        v5 = v7;
      }

      else
      {
        v9 = cf;
        if (cf)
        {
LABEL_16:
          v5 = 0;
          cf = 0;
LABEL_17:
          FigXPCRelease();
          FigXPCRelease();
          if (cf)
          {
            CFRelease(cf);
          }

          FigXPCRemoteClientKillServerOnTimeout();
          if (!v5)
          {
            singletonVolumeController_setCachedRemoteVolumController(a1, v9);
            v10 = v9;
            FigSimpleMutexUnlock();
            goto LABEL_3;
          }

          FigSimpleMutexUnlock();
          goto LABEL_22;
        }

        v14 = 0;
        FigVolumeControllerGetClassID();
        v5 = CMDerivedObjectCreate();
        if (!v5)
        {
          *CMBaseObjectGetDerivedStorage() = uint64;
          FigXPCRemoteClientAssociateObject();
          v9 = v14;
          goto LABEL_16;
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }
    }

    v9 = 0;
    goto LABEL_17;
  }

  FigSimpleMutexUnlock();
  if (!v5)
  {
    goto LABEL_3;
  }

LABEL_22:
  if (v10)
  {
    CFRelease(v10);
  }

  return v5;
}

uint64_t FigVolumeControllerCopySharedController(void *a1)
{
  if (!a1)
  {
    return 4294949706;
  }

  if (FigVolumeControllerCopySharedController_sFigVolumeControllerSetupOnce != -1)
  {
    FigVolumeControllerCopySharedController_cold_1();
  }

  v2 = FigVolumeControllerCopySharedController_volumeController;
  if (FigVolumeControllerCopySharedController_volumeController)
  {
    v2 = CFRetain(FigVolumeControllerCopySharedController_volumeController);
  }

  *a1 = v2;
  return FigVolumeControllerCopySharedController_err;
}

uint64_t singletonVolumeController_setCachedRemoteVolumController(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v4 = *(DerivedStorage + 16);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 16) = 0;
    }
  }

  if (a2)
  {
    *(DerivedStorage + 16) = CFRetain(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
  }

  return FigSimpleMutexUnlock();
}

uint64_t routingContextResilientRemote_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (FigCFEqual())
  {
    if (*MEMORY[0x1E695E4D0])
    {
      v8 = CFRetain(*MEMORY[0x1E695E4D0]);
    }

    else
    {
      v8 = 0;
    }

    result = 0;
    *a4 = v8;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __routingContextResilientRemote_CopyProperty_block_invoke;
    v10[3] = &__block_descriptor_56_e34_i16__0__OpaqueFigRoutingContext__8l;
    v10[4] = a2;
    v10[5] = a3;
    v10[6] = a4;
    return routingContextResilientRemote_withRemoteContext(a1, v10);
  }

  return result;
}

uint64_t routingContextRemoteXPC_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  if (a4)
  {
    result = remoteXPCRoutingContext_GetObjectID(a1, &v6);
    if (!result)
    {
      result = FigXPCSendStdCopyPropertyMessage();
    }

    *a4 = 0;
  }

  else
  {
    routingContextRemoteXPC_CopyProperty_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a1;
  *v11 = v12;
  return a11;
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return FigXPCMessageCopyCFString();
}

uint64_t FigRoutingContextXPCHandleCopyPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v11 = 0;
  v4 = FigXPCMessageCopyCFString();
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(a1, v11, *MEMORY[0x1E695E480], &cf);
      v7 = cf;
      if (!v6)
      {
        v8 = FigXPCMessageSetCFObject();
        v7 = cf;
        if (!cf)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      v8 = v6;
      if (cf)
      {
LABEL_5:
        CFRelease(v7);
      }
    }

    else
    {
      v8 = 4294954514;
    }
  }

LABEL_7:
  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

uint64_t routingContextResilientRemote_CopyRoutes(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CopyRoutes_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t routingContextRemoteXPC_CopyRoutes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_14_4(a1, a2, a3, a4, a5, a6, a7, a8, cf, cf_8, xdict, v17);
  if (v9 || (OUTLINED_FUNCTION_9_0(), v9 = FigXPCCreateBasicMessage(), v9) || (OUTLINED_FUNCTION_8(), v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v9))
  {
    v10 = v9;
  }

  else
  {
    xpc_dictionary_get_value(xdicta, kFigRoutingContextXPCMsgParam_EndpointIDList);
    v10 = FigEndpointXPCRemoteRetainCopiedEndpointsFromArrayToCFArray();
    if (v10)
    {
      if (cfa)
      {
        CFRelease(cfa);
      }
    }

    else
    {
      routes_logEndpoints(cfa);
      *v8 = cfa;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t FigRoutingContextXPCHandleCopySelectedRoutesMessage(uint64_t a1, uint64_t a2)
{
  theArray = 0;
  xpc_array_create(0, 0);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v3)
  {
    v7 = 4294954514;
    goto LABEL_12;
  }

  appended = v3(a2, &theArray);
  if (appended)
  {
    goto LABEL_15;
  }

  if (!theArray)
  {
    routes_logEndpoints(0);
    goto LABEL_11;
  }

  Count = CFArrayGetCount(theArray);
  routes_logEndpoints(theArray);
  if (Count < 1)
  {
LABEL_11:
    v8 = OUTLINED_FUNCTION_13_4();
    xpc_dictionary_set_value(v8, v9, v10);
    v7 = 0;
    goto LABEL_12;
  }

  v6 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v6);
    appended = FigEndpointXPCServerAppendNeighborEndpointToArray();
    if (appended)
    {
      break;
    }

    if (Count == ++v6)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
  v7 = appended;
LABEL_12:
  FigXPCRelease();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

uint64_t routingContext_CopySelectedRoutes(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v14 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    SharedQueue = FigRoutingManagerGetSharedQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __routingContext_CopySelectedRoutes_block_invoke;
    v12[3] = &unk_1E7AEB4F8;
    v12[4] = &v13;
    v12[5] = &v17;
    v12[6] = DerivedStorage;
    MXDispatchAsyncAndWait("routingContext_CopySelectedRoutes", "FigRoutingContext.m", 1471, 0, 0, SharedQueue, v12);
    if (!*(v14 + 6))
    {
      v8 = v18;
      *a2 = v18[3];
      v8[3] = 0;
    }

    v9 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_CopySelectedRoutes" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v9);
    v10 = v18[3];
    if (v10)
    {
      CFRelease(v10);
      v18[3] = 0;
    }

    IsOperationOnSystemInputContextAllowedInternal = *(v14 + 6);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B17B6990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerGetSharedQueue()
{
  if (_MergedGlobals != -1)
  {
    FigRoutingManagerGetSharedQueue_cold_1();
  }

  v0 = &qword_1ED6D2E28;
  if (!qword_1ED6D2E28)
  {
    v0 = 8;
  }

  return *v0;
}

uint64_t FigRoutingContextUtilities_CopyLeaderUUIDForContext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294949876;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v4 = 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v5 = 504;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextUtilities_CopyLeaderUUIDForContext_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingContextUtilities_CopyLeaderUUIDForContext", "FigRoutingManagerContextUtilities.m", 4814, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(uint64_t a1, CFMutableArrayRef *a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v5 = byte_1EB75CFA8;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    cf = 0;
    v2 = FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, &cf);
    v7 = &qword_1EB75CF98;
    if (!v5)
    {
      v7 = 504;
    }

    v8 = *v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints_block_invoke;
    v11[3] = &__block_descriptor_56_e5_v8__0l;
    if (v5)
    {
      v9 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v9 = 0;
    }

    v11[4] = cf;
    v11[5] = v9;
    v11[6] = Mutable;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints", "FigRoutingManagerContextUtilities.m", 2845, 0, 0, v8, v11);
    *a2 = Mutable;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v2;
}

void routes_logEndpoints(const __CFArray *a1)
{
  cf = 0;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E69621E8];
      v6 = *MEMORY[0x1E695E480];
      do
      {
        CFArrayGetValueAtIndex(a1, v4);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v8 || v8(CMBaseObject, v5, v6, &cf))
        {
          break;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v4;
      }

      while (v3 != v4);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t FigRoutingContextUtilities_IsFollowingAnotherContext(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingContextUtilities_IsFollowingAnotherContext_block_invoke;
    v6[3] = &unk_1E7AE7140;
    v6[5] = v2;
    v6[6] = v1;
    v6[4] = &v7;
    MXDispatchSync("FigRoutingContextUtilities_IsFollowingAnotherContext", "FigRoutingManagerContextUtilities.m", 4737, 0, 0, v4, v6);
    v1 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v1;
}

uint64_t FigRoutingManagerCopyPickedEndpointsForRoutingContext(uint64_t a1, void *a2)
{
  if (!a1 || !a2)
  {
    return 4294954516;
  }

  if (_MergedGlobals != -1)
  {
    FigRoutingManagerGetSharedQueue_cold_1();
  }

  return routingManager_iOSCopyPickedEndpointsForRoutingContext(a1, a2);
}

uint64_t routingManager_iOSCopyPickedEndpointsForRoutingContext(uint64_t a1, void *a2)
{
  v8 = 0;
  if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
  {
    cf = 0;
    FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &cf);
    v4 = FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(cf, &v8);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v4 = FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &v8);
  }

  v5 = v8;
  if (!v8)
  {
    CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v5 = v8;
    goto LABEL_9;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v5;
    return v4;
  }

  CFRelease(v8);
  return v4;
}

uint64_t vaeCopyNameForPort(AudioObjectID a1)
{
  outData[22] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  if (a1)
  {
    *&inAddress.mSelector = 0x676C6F62706E616DLL;
    inAddress.mElement = 0;
    ioDataSize = 8;
    if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData))
    {
      return outData[0];
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

CFTypeRef vaeCopyDeviceIdentifierFromVADPort(AudioObjectID a1)
{
  inAddress.mElement = 0;
  outData = 0;
  *&inAddress.mSelector = *"diupbolg";
  ioDataSize = 8;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return 0;
  }

  result = outData;
  if (outData)
  {
    v2 = CFEqual(outData, &stru_1F2890CF0);
    result = outData;
    if (v2)
    {
      CFRelease(outData);
      return 0;
    }
  }

  return result;
}

uint64_t volumeControllerRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 8))
    {
      volumeControllerRemote_getObjectID_cold_1(&v6);
      return v6;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  else
  {
    volumeControllerRemote_getObjectID_cold_2(&v7);
    return v7;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_16(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_16_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_16_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_16_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, os_log_type_t type, uint64_t a16, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t result)
{
  *v1 = result;
  routingContextRemoteXPC_EnsureClientEstablished_err = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return FigXPCMessageCopyCFDictionary();
}

uint64_t _VAEndpoint_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, const void **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 4294950586;
  if (a2 && a4)
  {
    v9 = DerivedStorage;
    v10 = *DerivedStorage;
    if (CFEqual(a2, *MEMORY[0x1E69620F8]))
    {
LABEL_4:
      Float32 = vaeCopyDeviceIdentifierFromVADPort(v10);
LABEL_9:
      v8 = 0;
LABEL_10:
      *a4 = Float32;
      return v8;
    }

    if (CFEqual(a2, *MEMORY[0x1E69622F8]))
    {
      v12 = MEMORY[0x1E69626D8];
LABEL_7:
      Float32 = *v12;
LABEL_8:
      Float32 = CFRetain(Float32);
      goto LABEL_9;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962268]))
    {
LABEL_13:
      v8 = 0;
      *a4 = 0;
      return v8;
    }

    if (CFEqual(a2, *MEMORY[0x1E69621E8]))
    {
LABEL_15:
      Float32 = vaeCopyNameForPort(v10);
      goto LABEL_9;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962280]))
    {
      *&valuePtr.mSelector = 2;
      Float32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      goto LABEL_9;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962190]))
    {
      IsPortWHAGroupable = vaeIsPortWHAGroupable(v10);
      goto LABEL_22;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962110]))
    {
      goto LABEL_21;
    }

    if (CFEqual(a2, *MEMORY[0x1E69621C0]))
    {
      vaemGetDeviceVolume([+[MXSessionManager defaultVADID] sharedInstance];
      Float32 = FigCFNumberCreateFloat32();
      goto LABEL_9;
    }

    if (CFEqual(a2, *MEMORY[0x1E69621C8]))
    {
LABEL_21:
      IsPortWHAGroupable = vaeIsPortBluetoothShareable(v10);
      goto LABEL_22;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962338]))
    {
      IsPortBluetoothShareable = vaeIsPortBluetoothShareable(v10);
      valuePtr.mSelector = 0;
      if (vaeIsPortActiveForCurrentRouteConfiguration(v10))
      {
        if (vaeIsPortWHAGroupable(v10) || IsPortBluetoothShareable && CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
        {
          PortTypeFromPortID = vaeGetPortTypeFromPortID(v10);
          v17 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
          v18 = vaeCopyRouteSubtypeFromVADPort(v10);
          v19 = vaeCopyDeviceIdentifierFromVADPort(v10);
          v20 = getpid();
          v8 = MXSMPerformVolumeOperation(0xDu, @"Audio/Video", v17, v19, v18, 0, v20, &valuePtr.mSelector, 0.0, 0.0, 0.0, 0, 0, 0, 0);
          if (v19)
          {
            CFRelease(v19);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (v17)
          {
            CFRelease(v17);
          }
        }

        else
        {
          v8 = 0;
          valuePtr.mSelector = vaemGetDeviceVolume([+[MXSessionManager defaultVADID] sharedInstance];
        }
      }

      else
      {
        v8 = 0;
      }

      Float32 = FigCFNumberCreateFloat32();
      goto LABEL_10;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962348]))
    {
      Float32 = FigCFNumberCreateUInt64();
      goto LABEL_9;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962340]))
    {
      HasVolumeControl = vaemCurrentRouteHasVolumeControl();
      goto LABEL_50;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962170]))
    {
      HasVolumeControl = vaemGetFullMute();
      goto LABEL_50;
    }

    if (CFEqual(a2, *MEMORY[0x1E69621E0]))
    {
      HasVolumeControl = vaemCurrentRouteHasMuteControl();
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_ActivateOptions"))
    {
      Float32 = *(v9 + 1);
      if (!Float32)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"VAE_PortID"))
    {
      v24 = v10;
LABEL_58:
      Float32 = MXCFNumberCreateFromSInt64(v24);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"VAE_RouteSubtype"))
    {
      Float32 = vaeCopyRouteSubtypeFromVADPort(v10);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"VAE_DeviceIdentifier"))
    {
      goto LABEL_4;
    }

    if (CFEqual(a2, @"VAE_PortType"))
    {
      LODWORD(v24) = vaeGetPortTypeFromPortID(v10);
LABEL_64:
      v24 = v24;
      goto LABEL_58;
    }

    if (CFEqual(a2, @"VAE_SpecificPortName"))
    {
      Float32 = vaeCopySpecificNameForPort(v10);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"VAE_HiddenSubPortDescriptions"))
    {
      Float32 = vaeCopyHiddenSubPortDescriptionsForPort(v10);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"VAE_PortName"))
    {
      goto LABEL_15;
    }

    if (CFEqual(a2, @"VAE_IsAvailableForVoicePrompts"))
    {
      IsPortWHAGroupable = vaeIsAvailableForVoicePrompts(v10);
      goto LABEL_22;
    }

    if (CFEqual(a2, @"VAE_IsHeadphones"))
    {
      IsPortWHAGroupable = vaeIsHeadphonesPort(v10);
      goto LABEL_22;
    }

    if (CFEqual(a2, @"VAE_IsRoutable"))
    {
      IsPortWHAGroupable = vaeIsPortRoutable(v10);
      goto LABEL_22;
    }

    if (CFEqual(a2, @"VAE_VAEndpointType"))
    {
      LODWORD(v24) = vaeGetVADEndpointTypeForPort(v10);
      goto LABEL_64;
    }

    if (CFEqual(a2, @"VAE_VAConnectionType"))
    {
      LODWORD(v24) = vaeGetConnectionTypeForPort(v10);
      goto LABEL_64;
    }

    if (CFEqual(a2, @"VAE_IsInputEndpoint"))
    {
      IsPortWHAGroupable = vaeIsPortAnInputPort(v10);
      goto LABEL_22;
    }

    if (CFEqual(a2, @"VAE_FigInputDeviceName"))
    {
      v25 = vaeGetPortTypeFromPortID(v10);
      Float32 = CMSMVAUtility_CopyFigInputDeviceNameFromVADPortType(v25);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"VAE_FigOutputDeviceName"))
    {
      v26 = vaeGetPortTypeFromPortID(v10);
      Float32 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(v26);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"VAE_SupportsLiveListen"))
    {
      IsPortWHAGroupable = vaeIsLiveListenSupportedOnVADPort(v10);
LABEL_22:
      v12 = MEMORY[0x1E695E4C0];
      if (IsPortWHAGroupable)
      {
        v12 = MEMORY[0x1E695E4D0];
      }

      goto LABEL_7;
    }

    if (CFEqual(a2, @"VAE_SupportsMultipleConnections"))
    {
      if (v10 && (*&valuePtr.mSelector = 0x676C6F626F736163, valuePtr.mElement = 0, AudioObjectHasProperty(v10, &valuePtr)))
      {
        v22 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v22 = MEMORY[0x1E695E4C0];
      }

LABEL_52:
      v23 = *v22;
      *a4 = *v22;
      CFRetain(v23);
      return 0;
    }

    if (CFEqual(a2, @"VAE_SupportsInEarDetection"))
    {
      HasVolumeControl = vaeDoesBTPortSupportInEarDetection(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_IsBTManaged"))
    {
      v27 = [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices isPortManaged:"isPortManaged:", v10];
      v22 = MEMORY[0x1E695E4D0];
      if (!v27)
      {
        v22 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_52;
    }

    if (CFEqual(a2, @"VAE_IsInEar"))
    {
      HasVolumeControl = vaeIsInEarStatusTrueForBTPort(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_InEarDetectEnabled"))
    {
      HasVolumeControl = vaeHasUserEnabledInEarDetectionForBTPort(v10, 0);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_RouteDescription"))
    {
      v28 = a1;
      v29 = 0;
LABEL_105:
      Float32 = vaeCreateRouteDescription(v28, v29);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"VAE_DefaultRouteDescription"))
    {
      v28 = a1;
      v29 = 1;
      goto LABEL_105;
    }

    if (CFEqual(a2, @"VAE_SupportsDoAP"))
    {
      HasVolumeControl = vaeDoesPortSupportDoAP(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962288]))
    {
      vaeGetSupportedBluetoothListeningModes(v10);
LABEL_139:
      Float32 = FigCFNumberCreateSInt64();
      goto LABEL_9;
    }

    if (CFEqual(a2, *MEMORY[0x1E69621A8]))
    {
      vaeGetBluetoothListeningMode(v10);
      goto LABEL_139;
    }

    if (CFEqual(a2, @"VAE_SupportsSoftwareVolume") || CFEqual(a2, @"VAE_SoftwareVolumeEnabled"))
    {
      HasVolumeControl = vaeDoesPortSupportSoftwareVolume(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_PartnerRoutePresent"))
    {
      memset(&valuePtr, 0, 32);
      HasVolumeControl = vaeGetPartnersForPort(v10, &valuePtr);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_PartnerRouteRoutable"))
    {
      HasVolumeControl = vaePartnerRouteRoutable(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_SiblingRoutePresent"))
    {
      HasVolumeControl = vaeIsSiblingRoutePresent(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, *MEMORY[0x1E69622B0]))
    {
      valuePtr.mElement = 0;
      *&valuePtr.mSelector = *"nepsbolg";
      HasVolumeControl = AudioObjectHasProperty(v10, &valuePtr);
      goto LABEL_50;
    }

    if (CFEqual(a2, *MEMORY[0x1E69620E0]))
    {
      HasVolumeControl = vaeIsHeadTrackedSpatialAudioActive(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, *MEMORY[0x1E6961FA8]))
    {
      HasVolumeControl = vaeDoesPortAllowHeadTrackedSpatialAudio(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_SupportsStereoHFP"))
    {
      HasVolumeControl = vaeDoesPortSupportStereoHFP(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_SupportsHighQualityContentCapture"))
    {
      HasVolumeControl = vaeDoesBluetoothSupportFeature(v10, @"kBluetoothAudioDeviceFeatureStudioMicInput");
      goto LABEL_50;
    }

    if (CFEqual(a2, @"VAE_HighQualityContentCaptureEnabled"))
    {
      HasVolumeControl = vaeIsBluetoothHighQualityContentCaptureEnabled(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, *MEMORY[0x1E69620E8]))
    {
      vaeGetBluetoothSpatialAudioMode(v10);
      goto LABEL_139;
    }

    if (CFEqual(a2, @"VAEM_BluetoothAlternateTransport"))
    {
      vaeGetBluetoothAlternateTransport(v10);
      goto LABEL_139;
    }

    if (CFEqual(a2, @"VAE_SupportsSharePlay"))
    {
      HasVolumeControl = vaeDoesPortSupportSharePlay(v10);
      goto LABEL_50;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962238]))
    {
      *&valuePtr.mSelector = 0;
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&valuePtr);
      v8 = 0;
      *a4 = *&valuePtr.mSelector;
      return v8;
    }

    if (CFEqual(a2, @"SupportsConversationDetect"))
    {
      HasVolumeControl = vaeCopyIfBluetoothEndpointSupportsConversationDetect(v10, v30);
      goto LABEL_50;
    }

    if (CFEqual(a2, @"ConversationDetectEnable"))
    {
      HasVolumeControl = vaeCopyIfBluetoothEndpointHasConversationDetectEnabled(v10, v31);
LABEL_50:
      v22 = MEMORY[0x1E695E4D0];
      if (!HasVolumeControl)
      {
        v22 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_52;
    }

    if (CFEqual(a2, @"VAE_ModelUID"))
    {
      Float32 = vaeCopyModelUIDForPort(v10);
      goto LABEL_9;
    }

    v32 = *MEMORY[0x1E6961FB8];
    if (!CFEqual(a2, *MEMORY[0x1E6961FB8]))
    {
      if (CFEqual(a2, @"VAE_SupportsFarFieldCapture"))
      {
        HasVolumeControl = vaeDoesPortSupportFarFieldCapture(v10, v34);
      }

      else
      {
        if (!CFEqual(a2, @"VAE_IsFarFieldCaptureEnabled"))
        {
          goto LABEL_13;
        }

        HasVolumeControl = vaeIsFarFieldCaptureEnabled(v10, v37);
      }

      goto LABEL_50;
    }

    if (*MEMORY[0x1E695E4C0])
    {
      v33 = CFRetain(*MEMORY[0x1E695E4C0]);
    }

    else
    {
      v33 = 0;
    }

    *&valuePtr.mSelector = v33;
    if (vaeGetPortTypeFromPortID(v10) == 1885433971)
    {
      v35 = vaeCopyDeviceIdentifierFromVADPort(v10);
      v36 = FigRoutingManagerCopyEndpointWithDeviceID(v35, 1, *MEMORY[0x1E69618D0], 0);
      if (v35)
      {
        CFRelease(v35);
      }

      if (v36)
      {
        if (v33)
        {
          CFRelease(v33);
          *&valuePtr.mSelector = 0;
        }

        FigEndpointCopyProperty(v36, v32, *MEMORY[0x1E695E480], &valuePtr);
        CFRelease(v36);
        v33 = *&valuePtr.mSelector;
      }
    }

    v8 = 0;
    *a4 = v33;
  }

  return v8;
}