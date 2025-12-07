CFIndex cmsDeselectSubPortPreferences(CFIndex result, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = result;
    result = CFArrayGetCount(theArray);
    if (result >= 1)
    {
      result = CFArrayGetCount(theArray);
      if (result >= 1)
      {
        v4 = 0;
        v5 = *MEMORY[0x1E695E480];
        do
        {
          Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
          if (CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_MicrophonePolarPattern"))
          {
            Value = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_MicrophonePolarPattern");
            CFDictionarySetValue(Mutable, @"polar pattern", Value);
            v9 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID");
            CFDictionarySetValue(Mutable, @"sub-port id", v9);
            v10 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
            CFDictionarySetValue(Mutable, @"port id", v10);
            if ([v3 subPortPreferences] && objc_msgSend(objc_msgSend(v3, "subPortPreferences"), "count"))
            {
              v11 = 0;
              while (!cmsmSubPortPreferenceMatches([objc_msgSend(v3 "subPortPreferences")], Mutable))
              {
                if ([objc_msgSend(v3 "subPortPreferences")] <= ++v11)
                {
                  goto LABEL_26;
                }
              }

              goto LABEL_19;
            }
          }

          else if (CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID"))
          {
            v12 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID");
            CFDictionarySetValue(Mutable, @"sub-port id", v12);
            v13 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
            CFDictionarySetValue(Mutable, @"port id", v13);
            if ([v3 subPortPreferences] && objc_msgSend(objc_msgSend(v3, "subPortPreferences"), "count"))
            {
              v11 = 0;
              while (1)
              {
                v14 = CFArrayGetValueAtIndex([v3 subPortPreferences], v11);
                if (cmsmSubPortPreferenceMatches(v14, Mutable))
                {
                  break;
                }

                if ([objc_msgSend(v3 "subPortPreferences")] <= ++v11)
                {
                  goto LABEL_26;
                }
              }

LABEL_19:
              v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(v3, "subPortPreferences")}];
              [v15 removeObjectAtIndex:v11];
              [v3 setSubPortPreferences:v15];

              if (!Mutable)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }
          }

          else if ([v3 overridePortsList])
          {
            v16 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
            if ([objc_msgSend(v3 "overridePortsList")])
            {
              v17 = 0;
              while (1)
              {
                v18 = CFArrayGetValueAtIndex([v3 overridePortsList], v17);
                if (CFNumberCompare(v18, v16, 0) == kCFCompareEqualTo)
                {
                  break;
                }

                if ([objc_msgSend(v3 "overridePortsList")] <= ++v17)
                {
                  goto LABEL_26;
                }
              }

              [v3 setOverridePortsList:0];
              if (!Mutable)
              {
                goto LABEL_28;
              }

LABEL_27:
              CFRelease(Mutable);
              goto LABEL_28;
            }
          }

LABEL_26:
          if (Mutable)
          {
            goto LABEL_27;
          }

LABEL_28:
          ++v4;
          result = CFArrayGetCount(theArray);
        }

        while (result > v4);
      }
    }
  }

  return result;
}

__CFArray *cmsCreateSubPortPreferenceFromPropertyValue(void *a1, const __CFArray *a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2 && CFArrayGetCount(a2) >= 1 && CFArrayGetCount(a2) >= 1)
  {
    for (i = 0; CFArrayGetCount(a2) > i; ++i)
    {
      v6 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      if (CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_MicrophonePolarPattern"))
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_MicrophonePolarPattern");
        CFDictionarySetValue(v6, @"polar pattern", Value);
      }

      else if (!CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID"))
      {
        values[0] = 0;
        values[0] = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
        v11 = CFArrayCreate(v3, values, 1, MEMORY[0x1E695E9C0]);
        [a1 setOverridePortsList:v11];
        if (v11)
        {
          CFRelease(v11);
        }

        goto LABEL_9;
      }

      v9 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_DataSourceID");
      CFDictionarySetValue(v6, @"sub-port id", v9);
      v10 = CFDictionaryGetValue(ValueAtIndex, @"SelectedRouteDescription_RouteID");
      CFDictionarySetValue(v6, @"port id", v10);
LABEL_9:
      if (CFDictionaryGetCount(v6) >= 1)
      {
        CFArrayAppendValue(Mutable, v6);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  if (CFArrayGetCount(Mutable))
  {
    v12 = 1;
  }

  else
  {
    v12 = Mutable == 0;
  }

  if (!v12)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

CFComparisonResult routeDescriptionComparator(const __CFDictionary *a1, const __CFDictionary *a2, CFStringCompareFlags a3)
{
  Value = CFDictionaryGetValue(a1, @"RouteName");
  v7 = CFDictionaryGetValue(a2, @"RouteName");
  v8 = v7;
  if (Value)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v7)
    {
      result = kCFCompareLessThan;
    }

    else
    {
      result = kCFCompareEqualTo;
    }

    if (Value)
    {
      return 1;
    }
  }

  else
  {
    v16.length = CFStringGetLength(Value);
    v16.location = 0;
    result = CFStringCompareWithOptionsAndLocale(Value, v8, v16, a3, 0);
  }

  if (result == kCFCompareEqualTo)
  {
    v11 = CFDictionaryGetValue(a1, @"RouteUID");
    v12 = CFDictionaryGetValue(a2, @"RouteUID");
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (v12)
      {
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      if (v11)
      {
        return 1;
      }

      else
      {
        return v14;
      }
    }

    else
    {

      return CFStringCompare(v11, v12, 0);
    }
  }

  return result;
}

void cmsmCopyHFPOrA2DPBTDeviceDetails(const __CFDictionary *a1, const __CFString **a2, __CFString **a3, CFTypeRef *a4)
{
  cf = 0;
  cf2 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!a1)
  {
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(a1, @"RouteUID");
  CMSMUtility_CreateTokensFromDeviceUID(Value, &cf, &cf2);
  if (!cf2)
  {
    goto LABEL_22;
  }

  if (CFEqual(@"tsco", cf2))
  {
    v8 = kCMSessionBTDeviceType_HFP;
  }

  else
  {
    if (!CFEqual(@"tacl", cf2))
    {
      goto LABEL_22;
    }

    v8 = kCMSessionBTDeviceType_A2DP;
  }

  v9 = *v8;
  if (*v8)
  {
    if (a2)
    {
      *a2 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    if (a3)
    {
      *a3 = v9;
      CFRetain(v9);
    }

    if (a4)
    {
      v10 = cf;
      *a4 = cf;
      if (!v10)
      {
        goto LABEL_24;
      }

      CFRetain(v10);
    }
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_24:
  if (cf2)
  {
    CFRelease(cf2);
  }
}

uint64_t CMSMDebugUtility_DumpDebugInfo()
{
  v4 = *MEMORY[0x1E69E9840];
  CMSMDebugUtility_PrintBuildInfo();
  CMSMDebugUtility_DumpSessionListOneTime();
  CMSMStrings_Check();
  +[MXSessionManagerBase dumpDebugInfo];
  [+[MXSessionManager sharedInstance](MXSessionManager dumpDebugInfo];
  [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource dumpDebugInfo];
  [+[MXExclaves sharedInstance](MXExclaves dumpDebugInfo];
  [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure dumpDebugInfo];
  [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager dumpDebugInfo];
  +[MXSystemController dumpInfoOfMXSystemControllers];
  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager dumpNowPlayingAppInfo];
  if (+[MXAudioAccessoryServices isSupported])
  {
    [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices dumpDebugInfo];
  }

  else if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDebugUtility_DumpDeviceState([+[MXAppProtectionManager dumpDebugInfo] sharedInstance];
  CMSMDebugUtility_DumpTriangleInfo();
  v1 = CMSMDebugUtility_DumpDetailedRouteDescriptions();
  CMSMDebugUtility_DumpMutedSessionBundleIDsList(v1, v2);
  MX_RunningBoardServices_DumpAssertionInfo();
  MX_RunningBoardServices_DumpMonitoredProcessPredicates();
  return CMSMDebugUtility_DumpDeviceInfo();
}

void CMSMDebugUtility_PrintBuildInfo()
{
  v1 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void CMSMDebugUtility_DumpSessionListOneTime()
{
  v213 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  obj = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  if (dword_1EB75DE40)
  {
    LODWORD(v194) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v181 = [obj countByEnumeratingWithState:&v188 objects:v199 count:16];
  if (v181)
  {
    v180 = *v189;
    do
    {
      v1 = 0;
      do
      {
        if (*v189 != v180)
        {
          objc_enumerationMutation(obj);
        }

        v183 = v1;
        v2 = *(*(&v188 + 1) + 8 * v1);
        v3 = [v2 copyMXSessionList];
        v4 = [v3 count];
        if (dword_1EB75DE40)
        {
          v5 = v4;
          LODWORD(v194) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v7 = v194;
          v8 = type[0];
          if (os_log_type_enabled(v6, type[0]))
          {
            v9 = v7;
          }

          else
          {
            v9 = v7 & 0xFFFFFFFE;
          }

          if (v9)
          {
            v206 = 136315138;
            v207 = "CMSMDebugUtility_DumpSessionListOneTime";
            _os_log_send_and_compose_impl(v9, 0, v212, 128, &dword_1B17A2000, v6, v8, "-MXDebugUtilities- %s: \n\n\n\n\nNext Session:", &v206);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (dword_1EB75DE40)
          {
            LODWORD(v194) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v11 = v194;
            v12 = type[0];
            if (os_log_type_enabled(v10, type[0]))
            {
              v13 = v11;
            }

            else
            {
              v13 = v11 & 0xFFFFFFFE;
            }

            if (v13)
            {
              v14 = [v2 displayID];
              v206 = 136315650;
              v207 = "CMSMDebugUtility_DumpSessionListOneTime";
              v208 = 2114;
              v209 = v14;
              v210 = 2048;
              v211 = v5;
              LODWORD(v177) = 32;
              _os_log_send_and_compose_impl(v13, 0, v212, 128, &dword_1B17A2000, v10, v12, "-MXDebugUtilities- %s: --------------------------%{public}@, MXSession Count = %ld --------------------------", &v206, v177);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v182 = v3;
        v15 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F2890CF0];
        [v2 dumpDebugConfigInfo];
        [v15 appendString:@"\nClient Configuration Info :\n"];
        v16 = MEMORY[0x1E696AEC0];
        if ([v2 isSharedAVAudioSessionInstance])
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"isSharedAVAudioSessionInstance =", [v16 stringWithFormat:@"%@", v17]);
        v18 = MEMORY[0x1E696AEC0];
        if ([v2 isAirPlayReceiverSession])
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"isAirPlayReceiverSession =", [v18 stringWithFormat:@"%@", v19]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"clientPriority =", -[MXSessionManager getClientPriorityAsString:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getClientPriorityAsString:", [v2 clientPriority]));
        CMSMDebugUtility_AppendFieldAndValue(v15, @"canBeNowPlayingApp =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", +[MXSystemController getCanBeNowPlayingAppForPID:](MXSystemController, "getCanBeNowPlayingAppForPID:", objc_msgSend(objc_msgSend(v2, "clientPID"), "intValue"))]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"routeSharingPolicy =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", -[MXSessionManager getRouteSharingPolicyAsString:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getRouteSharingPolicyAsString:", objc_msgSend(v2, "routeSharingPolicy"))]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"PIDInheritingFrom =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "pidToInheritAppStateFrom")]);
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", CMSMUtility_GetFlagsString(objc_msgSend(v2, "hwControlFlags"))];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"requires flags =", v20);
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", CMSMUtility_GetFlagsString(objc_msgSend(v2, "hwControlFlags") >> 16)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"desires flags =", v21);
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetIsEligibleForNowPlayingAppConsideration(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"eligibleForNPA =", v22);
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetPrefersNoDucking(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersNoDucking =", v23);
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetIsActuallyPlayingAudio(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"actuallyPlaysAudio =", v24);
        v25 = MEMORY[0x1E696AEC0];
        if (CMSUtility_GetIsEligibleForBTSmartRoutingConsideration(v2))
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"isEligibleForBTSmartRoutingConsideration =", [v25 stringWithFormat:@"%@", v26]);
        v27 = MEMORY[0x1E696AEC0];
        if ([v2 isEligibleForBTTriangleConsideration])
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"isEligibleForBTTriangleConsideration =", [v27 stringWithFormat:@"%@", v28]);
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetWantsToBeVolumeButtonClient(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"wantsToBeVolumeButtonClient =", v29);
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetOptOutOfMutePriority(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"optOutOfMutePriority =", v30);
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetAllowSystemSoundsWhileRecording(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"allowSystemSoundsWhileRecording =", v31);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"microphoneAttribution =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "wantsToShowMicrophoneIndicatorWhenNotRecording")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"needsAudioBudget =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "needsAudioBudget")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"shadowingAudioSessionID =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "shadowingAudioSessionID")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"shadowingAudioSessionOptions =", -[MXSessionManager getShadowingAudioSessionOptionsAsString:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getShadowingAudioSessionOptionsAsString:", [v2 shadowingAudioSessionOptions]));
        CMSMDebugUtility_AppendFieldAndValue(v15, @"isSharePlayMediaSession =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isSharePlayMediaSession")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"isSharePlayCallSession =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isSharePlayCallSession")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"isSharePlayCapableCallSession =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isSharePlayCapableCallSession")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"isHardwareSafetySession =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isHardwareSafetySession")]);
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetPrefersToTakeHWControlFlagsFromAnotherSession(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersToTakeHWControlFlagsFromAnotherSession =", v32);
        v33 = MEMORY[0x1E696AEC0];
        if ([v2 dontTakeOverHardware])
        {
          v34 = @"YES";
        }

        else
        {
          v34 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"dontTakeOverHardware =", [v33 stringWithFormat:@"%@", v34]);
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetPrefersNoInterruptionWhenSecureMicrophoneIsEngaged(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersNoInterruptionWhenSecureMicrophoneIsEngaged =", v35);
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_GetPrefersMultichannelAudio(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersMultichannelAudio =", v36);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"preferredNumberOfInputChannels =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "preferredNumberOfInputChannels")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"preferredNumberOfOutputChannels =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "preferredNumberOfOutputChannels")]);
        v37 = MEMORY[0x1E696AEC0];
        [v2 preferredInputSampleRate];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"preferredInputSampleRate =", [v37 stringWithFormat:@"%f", v38]);
        v39 = MEMORY[0x1E696AEC0];
        [v2 preferredOutputSampleRate];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"preferredOutputSampleRate =", [v39 stringWithFormat:@"%f", v40]);
        v41 = MEMORY[0x1E696AEC0];
        if ([v2 preferredOutputSampleRateSetByClient])
        {
          v42 = @"YES";
        }

        else
        {
          v42 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"preferredOutputSampleRateSetByClient =", [v41 stringWithFormat:@"%@", v42]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersToVibeWhenVibrationsAreDisabled =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "prefersToVibeWhenVibrationsAreDisabled")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersNoInterruptionsByMixableSessions =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "prefersNoInterruptionsByMixableSessions")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersNoInterruptionsDuringRemoteDeviceControl =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "prefersNoInterruptionsDuringRemoteDeviceControl")]);
        v43 = MEMORY[0x1E696AEC0];
        if ([v2 prefersToInterruptActiveRecordingSessions])
        {
          v44 = @"YES";
        }

        else
        {
          v44 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersToInterruptActiveRecordingSessions =", [v43 stringWithFormat:@"%@", v44]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersBluetoothAccessoryMuting =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "prefersBluetoothAccessoryMuting")]);
        v45 = MEMORY[0x1E696AEC0];
        if ([v2 prefersBluetoothFarFieldCapture])
        {
          v46 = @"YES";
        }

        else
        {
          v46 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersBluetoothFarFieldCapture =", [v45 stringWithFormat:@"%@", v46]);
        v47 = MEMORY[0x1E696AEC0];
        if ([v2 prefersBluetoothHighQualityContentCapture])
        {
          v48 = @"YES";
        }

        else
        {
          v48 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersBluetoothHighQualityContentCapture", [v47 stringWithFormat:@"%@", v48]);
        v49 = MEMORY[0x1E696AEC0];
        if ([v2 hasExternalMuteNotificationContext])
        {
          v50 = @"YES";
        }

        else
        {
          v50 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"hasExternalMuteNotificationContext =", [v49 stringWithFormat:@"%@", v50]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"Entitlements : hasEntitlementToRecordAudioInAnExtension =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToRecordAudioInAnExtension")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"hasEntitlementToStartRecordingInTheBackground =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToStartRecordingInTheBackground")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"hasEntitlementToShowMicrophoneIndicatorWhileNotRecording =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToShowMicrophoneIndicatorWhileNotRecording")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"hasEntitlementToSupportProcessAssertionAuditTokens =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToSupportProcessAssertionAuditTokens")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"hasEntitlementToRecordDuringCall =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToRecordDuringCall")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"hasEntitlementToSetEmergencyAlertPriority =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToSetEmergencyAlertPriority")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"hasEntitlementToSetPrefersNoInterruptions =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "hasEntitlementToSetPrefersNoInterruptions")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"hasEntitlementToSetPrefersToOptOutOfHardwareSafetyInterruptions", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(v2, "hasEntitlementToSetPrefersToOptOutOfHardwareSafetyInterruptions")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersToOptOutOfHardwareSafetyInterruptions", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(v2, "prefersToOptOutOfHardwareSafetyInterruptions")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"wombatEnabled =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", -[MXSessionManager wombatEnabled](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "wombatEnabled")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersToPlayDuringWombat =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(v2, "prefersToPlayDuringWombat")]);
        v51 = MEMORY[0x1E696AEC0];
        [v2 duckFadeDuration];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"duckFadeDuration =", [v51 stringWithFormat:@"%f", v52]);
        v53 = MEMORY[0x1E696AEC0];
        [v2 unduckFadeDuration];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"unduckFadeDuration =", [v53 stringWithFormat:@"%f", v54]);
        v55 = MEMORY[0x1E696AEC0];
        [v2 duckToLevelScalar];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"duckToLevelScalar =", [v55 stringWithFormat:@"%f", v56]);
        v57 = MEMORY[0x1E696AEC0];
        [v2 unduckToLevelScalar];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"unduckToLevelScalar = ", [v57 stringWithFormat:@"%f", v58]);
        v59 = MEMORY[0x1E696AEC0];
        [v2 duckToLevelDB];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"duckToLevelDB =", [v59 stringWithFormat:@"%f", v60]);
        v61 = MEMORY[0x1E696AEC0];
        if ([v2 isInterruptionCalledOffAudioControlQueue])
        {
          v62 = @"YES";
        }

        else
        {
          v62 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"isInterruptionCalledOffAudioControlQueue = ", [v61 stringWithFormat:@"%@", v62]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"allowedRouteTypes =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "allowedRouteTypes")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"powerProfile =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "powerProfile")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"notificationsSubscribedTo =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "notificationsSubscribedTo")]);
        v63 = MEMORY[0x1E696AEC0];
        if ([v2 wantsToPauseSpokenAudio])
        {
          v64 = @"YES";
        }

        else
        {
          v64 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"wantsToPauseSpokenAudio =", [v63 stringWithFormat:@"%@", v64]);
        v65 = MEMORY[0x1E696AEC0];
        if ([v2 mutesAudioBasedOnRingerSwitchState])
        {
          v66 = @"YES";
        }

        else
        {
          v66 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"mutesAudioBasedOnRingerSwitchState", [v65 stringWithFormat:@"%@", v66]);
        v67 = MEMORY[0x1E696AEC0];
        if ([v2 isTemporaryAssertionEnabled])
        {
          v68 = @"YES";
        }

        else
        {
          v68 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"isTemporaryAssertionEnabled", [v67 stringWithFormat:@"%@", v68]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"assertionAuditTimeInterval =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", objc_msgSend(v2, "assertionAuditTimerDelay")]);
        v69 = MEMORY[0x1E696AEC0];
        [v2 constantOutputVolumeLeveldB];
        CMSMDebugUtility_AppendFieldAndValue(v15, @"constantOutputVolumeLeveldB =", [v69 stringWithFormat:@"%f", v70]);
        v71 = MEMORY[0x1E696AEC0];
        if ([v2 prefersBeingInterruptedByNextActiveRecordingClient])
        {
          v72 = @"YES";
        }

        else
        {
          v72 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"prefersBeingInterruptedByNextActiveRecordingClient =", [v71 stringWithFormat:@"%@", v72]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"preferredPersistentRoute =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "preferredPersistentRoute")]);
        v73 = MEMORY[0x1E696AEC0];
        if ([v2 isCameraRecordingExtension])
        {
          v74 = @"YES";
        }

        else
        {
          v74 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v15, @"isCameraRecordingExtension =", [v73 stringWithFormat:@"%@", v74]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"preferredMinimumMicrophoneIndicatorLightOnTime =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "preferredMinimumMicrophoneIndicatorLightOnTime")]);
        CMSMDebugUtility_AppendFieldAndValue(v15, @"vibrationData =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "vibrationData")]);
        CMSMDebugUtility_DumpOneLineAndResetString(v15);
        v75 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F2890CF0];
        [v2 dumpDebugStateInfo];
        [v75 appendString:@"\nClient State Info :\n"];
        CMSMDebugUtility_AppendFieldAndValue(v75, @"ptr =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v2]);
        v76 = MEMORY[0x1E696AEC0];
        v77 = [v2 isPlayingOutput];
        v78 = "NO";
        if (v77)
        {
          v78 = "YES";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"isPlayingOutput =", [v76 stringWithFormat:@"%s", v78]);
        v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", CMSMUtility_GetFlagsString(objc_msgSend(v2, "currentlyControllingFlags"))];
        CMSMDebugUtility_AppendFieldAndValue(v75, @"controlling flags =", v79);
        CMSMDebugUtility_AppendFieldAndValue(v75, @"usingCamera =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v2, "isUsingCamera")]);
        v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v2)];
        CMSMDebugUtility_AppendFieldAndValue(v75, @"isNowPlayingEligible =", v80);
        v81 = MEMORY[0x1E696AEC0];
        v82 = [v2 isDucked];
        v83 = "not ducked";
        if (v82)
        {
          v83 = "DUCKED";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"ducking state =", [v81 stringWithFormat:@"%s", v83]);
        v84 = MEMORY[0x1E696AEC0];
        if ([v2 silentMuted])
        {
          v85 = "Yes";
        }

        else
        {
          v85 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"silentMuted =", [v84 stringWithFormat:@"%s", v85]);
        v86 = MEMORY[0x1E696AEC0];
        if ([v2 duckedOnVAD])
        {
          v87 = "Yes";
        }

        else
        {
          v87 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"duckedOnVAD =", [v86 stringWithFormat:@"%s", v87]);
        v88 = MEMORY[0x1E696AEC0];
        if ([v2 auditTokenSetByClient])
        {
          v89 = "Yes";
        }

        else
        {
          v89 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"auditTokenSetByClient =", [v88 stringWithFormat:@"%s", v89]);
        v90 = MEMORY[0x1E696AEC0];
        if ([v2 prefersConcurrentAirPlayAudio])
        {
          v91 = @"YES";
        }

        else
        {
          v91 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"prefersConcurrentAirPlayAudio =", [v90 stringWithFormat:@"%@", v91]);
        CMSMDebugUtility_AppendFieldAndValue(v75, @"Ducker sources = ", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_msgSend(v2, "duckingSourceList")]);
        v92 = MEMORY[0x1E696AEC0];
        [v2 audioQueueDuckVolume];
        CMSMDebugUtility_AppendFieldAndValue(v75, @"audioQueueDuckVolume = ", [v92 stringWithFormat:@"%f", v93]);
        v94 = MEMORY[0x1E696AEC0];
        [v2 audioQueueFadeDuration];
        CMSMDebugUtility_AppendFieldAndValue(v75, @"audioQueueFadeDuration = ", [v94 stringWithFormat:@"%f", v95]);
        v96 = MEMORY[0x1E696AEC0];
        [v2 lastDuckVolumeApplied];
        CMSMDebugUtility_AppendFieldAndValue(v75, @"lastDuckVolumeApplied = ", [v96 stringWithFormat:@"%f", v97]);
        v98 = MEMORY[0x1E696AEC0];
        if ([v2 interruptionFadeDurationSetByClient])
        {
          v99 = "Yes";
        }

        else
        {
          v99 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"interruptionFadeDurationSetByClient =", [v98 stringWithFormat:@"%s", v99]);
        v100 = MEMORY[0x1E696AEC0];
        if ([v2 duckFadeDurationSetByClient])
        {
          v101 = "Yes";
        }

        else
        {
          v101 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"duckFadeDurationSetByClient =", [v100 stringWithFormat:@"%s", v101]);
        v102 = MEMORY[0x1E696AEC0];
        if ([v2 unduckFadeDurationSetByClient])
        {
          v103 = "Yes";
        }

        else
        {
          v103 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"unduckFadeDurationSetByClient =", [v102 stringWithFormat:@"%s", v103]);
        v104 = MEMORY[0x1E696AEC0];
        if ([v2 duckToLevelScalarSetByClient])
        {
          v105 = "Yes";
        }

        else
        {
          v105 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"duckToLevelScalarSetByClient =", [v104 stringWithFormat:@"%s", v105]);
        v106 = MEMORY[0x1E696AEC0];
        if ([v2 unduckToLevelScalarSetByClient])
        {
          v107 = @"Yes";
        }

        else
        {
          v107 = @"No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"unduckToLevelScalarSetByClient = ", [v106 stringWithFormat:@"%@", v107]);
        v108 = MEMORY[0x1E696AEC0];
        if ([v2 duckToLevelDBSetByClient])
        {
          v109 = "Yes";
        }

        else
        {
          v109 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"duckToLevelDBSetByClient =", [v108 stringWithFormat:@"%s", v109]);
        v110 = MEMORY[0x1E696AEC0];
        if ([v2 addSharedAudioRouteToRoutablePorts])
        {
          v111 = "Yes";
        }

        else
        {
          v111 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"addSharedAudioRouteToRoutablePorts =", [v110 stringWithFormat:@"%s", v111]);
        v112 = MEMORY[0x1E696AEC0];
        if ([v2 needToEndInterruption])
        {
          v113 = "Yes";
        }

        else
        {
          v113 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"needToEndInterruption =", [v112 stringWithFormat:@"%s", v113]);
        v114 = MEMORY[0x1E696AEC0];
        v115 = [v2 areBothBudsInEarForA2DPPortBeforeInterrupting];
        v116 = @"No";
        if (v115)
        {
          v116 = @"Yes";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"areBothBudsInEarForA2DPPortBeforeInterrupting =", [v114 stringWithFormat:@"%@", v116]);
        v117 = MEMORY[0x1E696AEC0];
        if ([v2 triggeredRemoteInterruption])
        {
          v118 = "Yes";
        }

        else
        {
          v118 = "No";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"triggeredRemoteInterruption =", [v117 stringWithFormat:@"%s", v118]);
        v119 = MEMORY[0x1E696AEC0];
        if ([v2 hasFetchedBackgroundPrivileges])
        {
          v120 = @"YES";
        }

        else
        {
          v120 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"hasFetchedBackgroundPrivileges =", [v119 stringWithFormat:@"%@", v120]);
        v121 = MEMORY[0x1E696AEC0];
        if ([v2 prefersSpeechDetectEnabled])
        {
          v122 = @"YES";
        }

        else
        {
          v122 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"prefersSpeechDetectEnabled = ", [v121 stringWithFormat:@"%@", v122]);
        v123 = MEMORY[0x1E696AEC0];
        if ([+[MXSessionManager doesSessionPreferInterruptionOnRouteDisconnect:"doesSessionPreferInterruptionOnRouteDisconnect:"]
        {
          v124 = @"YES";
        }

        else
        {
          v124 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"prefersInterruptionOnRouteDisconnect (actual) = ", [v123 stringWithFormat:@"%@", v124]);
        v125 = MEMORY[0x1E696AEC0];
        if ([v2 prefersInterruptionOnRouteDisconnect])
        {
          v126 = @"YES";
        }

        else
        {
          v126 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"prefersInterruptionOnRouteDisconnect = ", [v125 stringWithFormat:@"%@", v126]);
        v127 = MEMORY[0x1E696AEC0];
        if ([v2 prefersInterruptionOnRouteDisconnectSetByClient])
        {
          v128 = @"YES";
        }

        else
        {
          v128 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"prefersInterruptionOnRouteDisconnectSetByClient = ", [v127 stringWithFormat:@"%@", v128]);
        v129 = MEMORY[0x1E696AEC0];
        if ([v2 wasActiveWhenDeviceOwnershipRelinquished])
        {
          v130 = @"YES";
        }

        else
        {
          v130 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"wasActiveWhenDeviceOwnershipRelinquished =", [v129 stringWithFormat:@"%@", v130]);
        v131 = MEMORY[0x1E696AEC0];
        if ([v2 isOutputMuted])
        {
          v132 = @"YES";
        }

        else
        {
          v132 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"isOutputMuted =", [v131 stringWithFormat:@"%@", v132]);
        v133 = MEMORY[0x1E696AEC0];
        if ([v2 isRecordingMuted])
        {
          v134 = @"YES";
        }

        else
        {
          v134 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"isRecordingMuted =", [v133 stringWithFormat:@"%@", v134]);
        v135 = MEMORY[0x1E696AEC0];
        if ([v2 isRecordingMutedForRemoteDevice])
        {
          v136 = @"YES";
        }

        else
        {
          v136 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"isRecordingMutedForRemoteDevice =", [v135 stringWithFormat:@"%@", v136]);
        v137 = MEMORY[0x1E696AEC0];
        if ([v2 shouldMuteBeAppliedToRemoteDevice])
        {
          v138 = @"YES";
        }

        else
        {
          v138 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"shouldMuteBeAppliedToRemoteDevice =", [v137 stringWithFormat:@"%@", v138]);
        v139 = MEMORY[0x1E696AEC0];
        if ([v2 doesGameAudioNeedToBeSpatialized])
        {
          v140 = @"YES";
        }

        else
        {
          v140 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"doesGameAudioNeedToBeSpatialized =", [v139 stringWithFormat:@"%@", v140]);
        v141 = MEMORY[0x1E696AEC0];
        if ([v2 bypassSystemSpatialAudioForGame])
        {
          v142 = @"YES";
        }

        else
        {
          v142 = @"NO";
        }

        CMSMDebugUtility_AppendFieldAndValue(v75, @"bypassSystemSpatialAudioForGame =", [v141 stringWithFormat:@"%@", v142]);
        CMSMDebugUtility_DumpOneLineAndResetString(v75);
        if ([objc_msgSend(v2 "hostProcessPlaybackAssertions")] && objc_msgSend(objc_msgSend(v2, "hostProcessPlaybackAssertions"), "count"))
        {
          if (dword_1EB75DE40)
          {
            LODWORD(v194) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v143 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v144 = v194;
            v145 = type[0];
            if (os_log_type_enabled(v143, type[0]))
            {
              v146 = v144;
            }

            else
            {
              v146 = v144 & 0xFFFFFFFE;
            }

            if (v146)
            {
              v206 = 136315138;
              v207 = "CMSMDebugUtility_DumpSessionStateInfo";
              _os_log_send_and_compose_impl(v146, 0, v212, 128, &dword_1B17A2000, v143, v145, "-MXDebugUtilities- %s:  --------------- Host Process Playback assertion info --------------- ", &v206);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v147 = [v2 hostProcessPlaybackAssertions];
          v148 = [v147 countByEnumeratingWithState:&v194 objects:v212 count:16];
          if (v148)
          {
            v149 = v148;
            v150 = *v195;
            do
            {
              for (i = 0; i != v149; ++i)
              {
                if (*v195 != v150)
                {
                  objc_enumerationMutation(v147);
                }

                v152 = *(*(&v194 + 1) + 8 * i);
                v153 = [objc_msgSend(v2 "hostProcessPlaybackAssertions")];
                if (dword_1EB75DE40)
                {
                  v154 = v153;
                  v193 = 0;
                  v192 = OS_LOG_TYPE_DEFAULT;
                  v155 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v156 = v193;
                  v157 = v192;
                  if (os_log_type_enabled(v155, v192))
                  {
                    v158 = v156;
                  }

                  else
                  {
                    v158 = v156 & 0xFFFFFFFE;
                  }

                  if (v158)
                  {
                    *type = 136315394;
                    v201 = "CMSMDebugUtility_DumpSessionStateInfo";
                    v202 = 2114;
                    v203 = v152;
                    LODWORD(v177) = 22;
                    _os_log_send_and_compose_impl(v158, 0, &v206, 128, &dword_1B17A2000, v155, v157, "-MXDebugUtilities- %s: Audit Token = %{public}@", type, v177);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  if (dword_1EB75DE40)
                  {
                    v193 = 0;
                    v192 = OS_LOG_TYPE_DEFAULT;
                    v159 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v160 = v193;
                    v161 = v192;
                    if (os_log_type_enabled(v159, v192))
                    {
                      v162 = v160;
                    }

                    else
                    {
                      v162 = v160 & 0xFFFFFFFE;
                    }

                    if (v162)
                    {
                      v163 = [v154 explanation];
                      *type = 136315650;
                      v201 = "CMSMDebugUtility_DumpSessionStateInfo";
                      v202 = 2048;
                      v203 = v154;
                      v204 = 2114;
                      v205 = v163;
                      LODWORD(v177) = 32;
                      _os_log_send_and_compose_impl(v162, 0, &v206, 128, &dword_1B17A2000, v159, v161, "-MXDebugUtilities- %s: Assertion %p explanation = %{public}@", type, v177);
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }
              }

              v149 = [v147 countByEnumeratingWithState:&v194 objects:v212 count:16];
            }

            while (v149);
          }
        }

        if (dword_1EB75DE40)
        {
          LODWORD(v194) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v164 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v165 = v194;
          v166 = type[0];
          if (os_log_type_enabled(v164, type[0]))
          {
            v167 = v165;
          }

          else
          {
            v167 = v165 & 0xFFFFFFFE;
          }

          if (v167)
          {
            v206 = 136315138;
            v207 = "CMSMDebugUtility_DumpSessionListOneTime";
            _os_log_send_and_compose_impl(v167, 0, v212, 128, &dword_1B17A2000, v164, v166, "-MXDebugUtilities- %s: \nMXSession Info :\n", &v206);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v168 = [v182 countByEnumeratingWithState:&v184 objects:v198 count:16];
        if (v168)
        {
          v169 = v168;
          v170 = *v185;
          do
          {
            for (j = 0; j != v169; ++j)
            {
              if (*v185 != v170)
              {
                objc_enumerationMutation(v182);
              }

              [*(*(&v184 + 1) + 8 * j) dumpInfo];
            }

            v169 = [v182 countByEnumeratingWithState:&v184 objects:v198 count:16];
          }

          while (v169);
        }

        if (dword_1EB75DE40)
        {
          LODWORD(v194) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v172 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v173 = v194;
          v174 = type[0];
          if (os_log_type_enabled(v172, type[0]))
          {
            v175 = v173;
          }

          else
          {
            v175 = v173 & 0xFFFFFFFE;
          }

          if (v175)
          {
            v176 = [v2 displayID];
            v206 = 136315394;
            v207 = "CMSMDebugUtility_DumpSessionListOneTime";
            v208 = 2114;
            v209 = v176;
            LODWORD(v177) = 22;
            _os_log_send_and_compose_impl(v175, 0, v212, 128, &dword_1B17A2000, v172, v174, "-MXDebugUtilities- %s: --------------------------%{public}@, End Session Dump --------------------------", &v206, v177);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v1 = v183 + 1;
      }

      while (v183 + 1 != v181);
      v181 = [obj countByEnumeratingWithState:&v188 objects:v199 count:16];
    }

    while (v181);
  }

  objc_autoreleasePoolPop(context);
}

uint64_t CMSMDebugUtility_DumpDeviceState(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  PVMGetVibeIntensityPreference();
  if (dword_1EB75DE40)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFPreferencesGetAppBooleanValue(@"celestialToMediaExperienceDomainMigrationFullyCompleted", @"com.apple.mediaexperience", 0);
  if (dword_1EB75DE40)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = CFPreferencesGetAppBooleanValue(@"celestialToMediaExperienceDomainMigrationCompleted", @"com.apple.mediaexperience", 0);
  if (dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EB75DE40)
        {
          v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          return fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  return result;
}

void CMSMDebugUtility_DumpTriangleInfo()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F2890CF0];
  v1 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
  v2 = CMSM_IDSConnection_CopyNearbyPairedDeviceInfo();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"\nSharedAudioRoutePortIds = ", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v1]);
  v4 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote())
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsSomeClientPlayingOverSharedAudioRouteOnRemote =", [v4 stringWithFormat:@"%@", v5]);
  v6 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsWaitingForGizmoPlayingInfo())
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsWaitingForGizmoPlayingInfo =", [v6 stringWithFormat:@"%@", v7]);
  v8 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_DidRemoteReplyWithInitialPlayingInfo())
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"DidRemoteReplyWithInitialPlayingInfo =", [v8 stringWithFormat:@"%@", v9]);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", CMSM_IDSConnection_GetRemotePlayingInfo()];
  CMSMDebugUtility_AppendFieldAndValue(v0, @"RemotePlayingInfo =", v10);
  CMSMDebugUtility_AppendFieldAndValue(v0, @"nearbyDeviceInfo =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v2]);
  v11 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote())
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsSharedAudioRouteConnectedToLocalAndRemote =", [v11 stringWithFormat:@"%@", v12]);
  v13 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal())
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsSharedAudioRouteConnectedToLocal =", [v13 stringWithFormat:@"%@", v14]);
  v15 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote())
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsSharedAudioRouteConnectedToRemote =", [v15 stringWithFormat:@"%@", v16]);
  v17 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsRemoteUsingSharedAudioRoute())
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsRemoteUsingSharedAudioRoute =", [v17 stringWithFormat:@"%@", v18]);
  v19 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsNearbyPairedDevicePresent())
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsNearbyPairedDevicePresent =", [v19 stringWithFormat:@"%@", v20]);
  v21 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected())
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsNearbyPairedDevicePresentAndConnected =", [v21 stringWithFormat:@"%@", v22]);
  v23 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsTimerForRemotePlayingInfoReplyExpired())
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsTimerForRemotePlayingInfoReplyExpired =", [v23 stringWithFormat:@"%@", v24]);
  v25 = MEMORY[0x1E696AEC0];
  if (CMSM_IDSConnection_IsPairedToAnotherDevice())
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsPairedToAnotherDevice =", [v25 stringWithFormat:@"%@", v26]);
  CMSMDebugUtility_DumpOneLineAndResetString(v0);
}

void *CMSMDebugUtility_DumpDetailedRouteDescriptions()
{
  v30 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager detailedRoutesDescription];
  result = [(NSDictionary *)obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v19;
    do
    {
      v4 = 0;
      do
      {
        if (*v19 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v18 + 1) + 8 * v4);
        v6 = -[MXAdditiveRoutingManager copyDetailedRouteDescription:](+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager, "sharedInstance"), "copyDetailedRouteDescription:", [v5 unsignedIntValue]);
        if (dword_1EB75DE40)
        {
          v23 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v8 = v23;
          v9 = type;
          if (os_log_type_enabled(v7, type))
          {
            v10 = v8;
          }

          else
          {
            v10 = v8 & 0xFFFFFFFE;
          }

          if (v10)
          {
            VADNameForVADID = CMSMUtility_GetVADNameForVADID([v5 unsignedIntValue]);
            v24 = 136315394;
            v25 = "CMSMDebugUtility_DumpDetailedRouteDescriptions";
            v26 = 2114;
            v27 = VADNameForVADID;
            LODWORD(v16) = 22;
            _os_log_send_and_compose_impl(v10, 0, v29, 128, &dword_1B17A2000, v7, v9, "-MXDebugUtilities- %s: -------------------------- %{public}@ Detailed Route Description --------------------------", &v24, v16);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMDebugUtility_PrintDictionary(v6);
        if (dword_1EB75DE40)
        {
          v23 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v13 = v23;
          v14 = type;
          if (os_log_type_enabled(v12, type))
          {
            v15 = v13;
          }

          else
          {
            v15 = v13 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v24 = 136315138;
            v25 = "CMSMDebugUtility_DumpDetailedRouteDescriptions";
            _os_log_send_and_compose_impl(v15, 0, v29, 128, &dword_1B17A2000, v12, v14, "-MXDebugUtilities- %s: --------------------------------------------------------------------------------------------", &v24);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v4 = v4 + 1;
      }

      while (v2 != v4);
      result = [(NSDictionary *)obj countByEnumeratingWithState:&v18 objects:v28 count:16];
      v2 = result;
    }

    while (result);
  }

  return result;
}

void CMSMDebugUtility_DumpMutedSessionBundleIDsList(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(a1, a2);
  if (!IsSessionBasedMutingEnabled)
  {
    if (MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v3))
    {
      v4 = [+[MXSessionManager sharedInstance](MXSessionManager mutedSessionBundleIDs];
      if ([(NSSet *)v4 count])
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMDebugUtility_PrintCollection(v4);
      }
    }
  }
}

uint64_t CMSMDebugUtility_DumpDeviceInfo()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F2890CF0];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = MGCopyAnswer();
  CMSMDebugUtility_AppendFieldAndValue(v0, @"Device class =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v2]);

  v3 = MGCopyAnswer();
  CMSMDebugUtility_AppendFieldAndValue(v0, @"Device Name =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3]);

  v4 = MGCopyAnswer();
  CMSMDebugUtility_AppendFieldAndValue(v0, @"Region Code =", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v4]);

  v5 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_IsAudiomxd(v6, v7))
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsAudiomxd =", [v5 stringWithFormat:@"%@", v8]);
  v9 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAniPhone())
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAniPhone =", [v9 stringWithFormat:@"%@", v10]);
  v11 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAniPad())
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAniPad =", [v11 stringWithFormat:@"%@", v12]);
  v13 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAnAppleTV())
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAnAppleTV =", [v13 stringWithFormat:@"%@", v14]);
  v15 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAnAppleWatch())
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAnAppleWatch =", [v15 stringWithFormat:@"%@", v16]);
  v17 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAnInternalBuild())
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAnInternalBuild =", [v17 stringWithFormat:@"%@", v18]);
  v19 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_ItsAHomePod())
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"ItsAHomePod =", [v19 stringWithFormat:@"%@", v20]);
  v21 = MEMORY[0x1E696AEC0];
  if (CMSMDeviceState_IsAVirtualDevice())
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  CMSMDebugUtility_AppendFieldAndValue(v0, @"IsVirtualDevice =", [v21 stringWithFormat:@"%@", v22]);
  return CMSMDebugUtility_DumpOneLineAndResetString(v0);
}

uint64_t CMSMDebugUtility_DumpOneLineAndResetString(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if ([a1 length] && dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [a1 setString:&stru_1F2890CF0];
}

void *CMSMDebugUtility_AppendFieldAndValue(void *result, void *a2, __CFString *a3)
{
  if (a2)
  {
    v4 = result;
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = @"null";
    }

    v6 = [(__CFString *)v5 length];
    v7 = [v4 length];
    if ((v7 + [a2 length] + v6) >= 0x321)
    {
      CMSMDebugUtility_DumpOneLineAndResetString(v4);
      [v4 appendString:@"\ncontinued...\n"];
    }

    [v4 appendString:a2];
    [v4 appendString:@" "];
    [v4 appendString:v5];

    return [v4 appendString:{@", "}];
  }

  return result;
}

__CFString *CMSMDebugUtility_GetSpeechDetechStyleString(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1E7AEBAF8 + a1);
  }
}

void CMSMDebugUtility_RegisterForCACentralStateDumping(uint64_t result)
{
  if (kCMSession_LoadAudioToolboxRoutinesOnce != -1)
  {
    CMSMDebugUtility_RegisterForCACentralStateDumping_cold_1();
  }

  v2 = CACentralStateDumpRegisterSubsystem;
  if (CACentralStateDumpRegisterSubsystem)
  {

    v2(20, @"CMSession", &__block_literal_global_49);
  }
}

void *cmsmLoadAudioToolboxRoutinesOnce()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 4);
  if (result)
  {
    result = dlsym(result, "CACentralStateDumpRegisterSubsystem");
    CACentralStateDumpRegisterSubsystem = result;
  }

  return result;
}

uint64_t FigRoutingContextCopyContextForUUID(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  Value = CFDictionaryGetValue(theDict, @"contextUUID");
  if (!Value)
  {
    return 4294955276;
  }

  v6 = Value;
  cf = 0;
  v7 = FigRoutingManagerCopyContextWithUUID(Value, &cf);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = cf == 0;
  }

  if (v8)
  {
    Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
    v15 = 0;
    FigRoutingContextGetClassID(Int64IfPresent);
    v11 = CMDerivedObjectCreate();
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v13 = CFRetain(v6);
      *(DerivedStorage + 8) = v13;
      *DerivedStorage = 0;
      v7 = FigRoutingManagerRegisterContextWithUUID(v15, theDict, 0, v13);
      if (!v7)
      {
        cf = v15;
        goto LABEL_8;
      }
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

LABEL_8:
  if (!a3 || v7)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v7;
}

uint64_t FigRoutingContextCreateSystemAudioContextInternal(const void *SystemAudioContextInternal_cold_1, void *a2)
{
  if (FigRoutingContextCreateSystemAudioContextInternal_loggingToken == -1)
  {
    if (SystemAudioContextInternal_cold_1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  FigRoutingContextCreateSystemAudioContextInternal_cold_1();
  if (!SystemAudioContextInternal_cold_1)
  {
    return 0;
  }

LABEL_3:
  FigRoutingContextGetClassID(SystemAudioContextInternal_cold_1);
  result = CMDerivedObjectCreate();
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = CFRetain(SystemAudioContextInternal_cold_1);
    result = 0;
    *(DerivedStorage + 8) = v5;
    *DerivedStorage = 1;
  }

  return result;
}

uint64_t __FigRoutingContextCreateSystemAudioContextInternal_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();

  return fig_note_initialize_category_with_default_work();
}

const void *FigRoutingContextCreateSystemMirroringContextInternal(const void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    FigRoutingContextGetClassID(result);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = CFRetain(v2);
      result = 0;
      *(DerivedStorage + 8) = v4;
      *DerivedStorage = 2;
    }
  }

  return result;
}

const void *FigRoutingContextCreateSystemMusicContextInternal(const void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    FigRoutingContextGetClassID(result);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = CFRetain(v2);
      result = 0;
      *(DerivedStorage + 8) = v4;
      *DerivedStorage = 3;
    }
  }

  return result;
}

const void *FigRoutingContextCreateSidePlayContextInternal(const void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    FigRoutingContextGetClassID(result);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = CFRetain(v2);
      result = 0;
      *(DerivedStorage + 8) = v4;
      *DerivedStorage = 12;
    }
  }

  return result;
}

const void *FigRoutingContextCreateSystemVideoContextInternal(const void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    FigRoutingContextGetClassID(result);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = CFRetain(v2);
      result = 0;
      *(DerivedStorage + 8) = v4;
      *DerivedStorage = 11;
    }
  }

  return result;
}

const void *FigRoutingContextCreateSystemRemotePoolContextInternal(const void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    FigRoutingContextGetClassID(result);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = CFRetain(v2);
      result = 0;
      *(DerivedStorage + 8) = v4;
      *DerivedStorage = 9;
    }
  }

  return result;
}

const void *FigRoutingContextCreateSystemVideoDisplayMenu(const void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    FigRoutingContextGetClassID(result);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = CFRetain(v2);
      result = 0;
      *(DerivedStorage + 8) = v4;
      *DerivedStorage = 10;
    }
  }

  return result;
}

const void *FigRoutingContextCreateSystemInputContextInternal(const void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    FigRoutingContextGetClassID(result);
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = CFRetain(v2);
      result = 0;
      *(DerivedStorage + 8) = v4;
      *DerivedStorage = 13;
    }
  }

  return result;
}

void routingContext_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  SharedQueue = FigRoutingManagerGetSharedQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContext_Finalize_block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = v3;
  MXDispatchAsync("routingContext_Finalize", "FigRoutingContext.m", 210, 0, 0, SharedQueue, v6);
  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *routingContext_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = Mutable;
  v5 = *DerivedStorage;
  if (v5 > 0xE)
  {
    v6 = "UNKNOWN";
  }

  else
  {
    v6 = off_1E7AEBB30[v5];
  }

  CFStringAppendFormat(Mutable, 0, @"<FigRoutingContext %p> %s uuid %@", a1, v6, *(DerivedStorage + 1));
  return v4;
}

uint64_t routingContext_SetProperty(uint64_t a1, uint64_t a2, void *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    return 4294954512;
  }

  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(*(DerivedStorage + 8), 0, cf);
  FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*(DerivedStorage + 8), cf[0], @"configUpdateReasonEndedBottomUpRouteChange", 0);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return 0;
}

void routingContext_collectPickedEndpoints(int a1, CFDictionaryRef theDict, __CFArray *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(theDict, @"CurrentEndpoints");
  v5 = Value;
  if (!Value)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(Value) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v5, 0)) != 0)
  {
    v5 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

LABEL_7:
  theArray = 0;
  if (a3)
  {
    if (v5)
    {
      if (!FigRoutingManagerIsEndpointOfType(v5, *MEMORY[0x1E69626B0]))
      {
        if (FigRoutingManagerIsEndpointOfType(v5, *MEMORY[0x1E69626A8]))
        {
          CFArrayAppendValue(a3, v5);
        }

        goto LABEL_27;
      }

      CMBaseObject = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v9 = v8(CMBaseObject, *MEMORY[0x1E6962270], 0, &theArray);
        v10 = theArray;
        if (v9)
        {
LABEL_25:
          if (v10)
          {
            CFRelease(v10);
          }

          goto LABEL_27;
        }

        if (theArray)
        {
          v11 = 0;
          v12 = *MEMORY[0x1E69622F8];
          while (CFArrayGetCount(v10) > v11)
          {
            cf[0] = 0;
            v13 = CFArrayGetValueAtIndex(theArray, v11);
            v14 = FigEndpointGetCMBaseObject();
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v15 && !v15(v14, v12, 0, cf))
            {
              CFArrayAppendValue(a3, v13);
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            ++v11;
            v10 = theArray;
            if (!theArray)
            {
              goto LABEL_27;
            }
          }

          v10 = theArray;
          goto LABEL_25;
        }
      }

LABEL_27:
      CFRelease(v5);
      return;
    }

    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    routingContext_collectPickedEndpoints_cold_1();
    if (v5)
    {
      goto LABEL_27;
    }
  }
}

uint64_t routingContext_SelectRoute(const void *a1, const void *a2, const void *a3)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __routingContext_SelectRoute_block_invoke;
    v11[3] = &__block_descriptor_56_e5_v8__0l;
    v11[4] = a1;
    v11[5] = a2;
    v11[6] = a3;
    MXDispatchAsync("routingContext_SelectRoute", "FigRoutingContext.m", 636, 0, 0, SharedQueue, v11);
    v9 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_SelectRoute" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v9);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_SelectRouteDescriptor(const void *a1, const void *a2, const void *a3)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __routingContext_SelectRouteDescriptor_block_invoke;
    v11[3] = &__block_descriptor_56_e5_v8__0l;
    v11[4] = a1;
    v11[5] = a2;
    v11[6] = a3;
    MXDispatchAsync("routingContext_SelectRouteDescriptor", "FigRoutingContext.m", 707, 0, 0, SharedQueue, v11);
    v9 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_SelectRouteDescriptor" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v9);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_CopyRoute(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v11 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    SharedQueue = FigRoutingManagerGetSharedQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __routingContext_CopyRoute_block_invoke;
    v9[3] = &unk_1E7AE7140;
    v9[4] = &v10;
    v9[5] = a1;
    v9[6] = a2;
    MXDispatchAsyncAndWait("routingContext_CopyRoute", "FigRoutingContext.m", 852, 0, 0, SharedQueue, v9);
    v7 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_CopyRoute" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v7);
    IsOperationOnSystemInputContextAllowedInternal = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B19050E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_SelectRoutes(const void *a1, const void *a2, const void *a3)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __routingContext_SelectRoutes_block_invoke;
    v12[3] = &__block_descriptor_64_e5_v8__0l;
    v12[4] = a2;
    v12[5] = DerivedStorage;
    v12[6] = a3;
    v12[7] = a1;
    MXDispatchAsync("routingContext_SelectRoutes", "FigRoutingContext.m", 1293, 0, 0, SharedQueue, v12);
    v10 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_SelectRoutes" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v10);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_SelectRouteDescriptors(const void *a1, const void *a2, const void *a3)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __routingContext_SelectRouteDescriptors_block_invoke;
    v12[3] = &__block_descriptor_64_e5_v8__0l;
    v12[4] = a2;
    v12[5] = DerivedStorage;
    v12[6] = a3;
    v12[7] = a1;
    MXDispatchAsync("routingContext_SelectRouteDescriptors", "FigRoutingContext.m", 1384, 0, 0, SharedQueue, v12);
    v10 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_SelectRouteDescriptors" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v10);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_CopySelectedRouteForRemoteControl(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v9 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    SharedQueue = FigRoutingManagerGetSharedQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __routingContext_CopySelectedRouteForRemoteControl_block_invoke;
    v7[3] = &unk_1E7AE7140;
    v7[4] = &v8;
    v7[5] = DerivedStorage;
    v7[6] = a2;
    MXDispatchAsyncAndWait("routingContext_CopySelectedRouteForRemoteControl", "FigRoutingContext.m", 1777, 0, 0, SharedQueue, v7);
    IsOperationOnSystemInputContextAllowedInternal = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1905488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_AddToSelectedRoutes(const void *a1, const void *a2, const void *a3)
{
  cf[25] = *MEMORY[0x1E69E9840];
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = 0;
    cf[0] = 0;
    if (a2)
    {
      v8 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, *MEMORY[0x1E69621E8], v8, cf);
      }

      v11 = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, *MEMORY[0x1E69620F8], v8, &v19);
      }
    }

    if (dword_1EB75DF40)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __routingContext_AddToSelectedRoutes_block_invoke;
    v16[3] = &__block_descriptor_64_e5_v8__0l;
    v16[4] = a2;
    v16[5] = DerivedStorage;
    v16[6] = a3;
    v16[7] = a1;
    MXDispatchAsync("routingContext_AddToSelectedRoutes", "FigRoutingContext.m", 1813, 0, 0, SharedQueue, v16);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_AddToSelectedRouteDescriptors(const void *a1, const __CFDictionary *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  result = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v8 = DerivedStorage;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      if (a2)
      {
        Value = CFDictionaryGetValue(a2, @"RouteName");
        v17[3] = Value;
        v10 = CFDictionaryGetValue(a2, @"RouteUID");
      }

      else
      {
        v10 = 0;
      }

      if (dword_1EB75DF40)
      {
        v15 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      SharedQueue = FigRoutingManagerGetSharedQueue();
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __routingContext_AddToSelectedRouteDescriptors_block_invoke;
      v13[3] = &unk_1E7AEA9A8;
      v13[4] = &v16;
      v13[5] = a2;
      v13[6] = v8;
      v13[7] = v10;
      v13[8] = a3;
      v13[9] = a1;
      MXDispatchAsync("routingContext_AddToSelectedRouteDescriptors", "FigRoutingContext.m", 1885, 0, 0, SharedQueue, v13);
      _Block_object_dispose(&v16, 8);
      return 0;
    }

    else
    {
      return 4294955276;
    }
  }

  return result;
}

void sub_1B1905AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_RemoveFromSelectedRouteDescriptors(const void *a1, const void *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  *(v17 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      if (a2)
      {
        Value = CFDictionaryGetValue(a2, @"RouteName");
        v9 = CFDictionaryGetValue(a2, @"RouteUID");
      }

      else
      {
        v9 = 0;
        Value = 0;
      }

      if (dword_1EB75DF40)
      {
        v15 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      SharedQueue = FigRoutingManagerGetSharedQueue();
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __routingContext_RemoveFromSelectedRouteDescriptors_block_invoke;
      v13[3] = &unk_1E7AE7AB8;
      v13[6] = DerivedStorage;
      v13[7] = Value;
      v13[8] = v9;
      v13[9] = a3;
      v13[4] = &v16;
      v13[5] = a2;
      v13[10] = a1;
      MXDispatchAsync("routingContext_RemoveFromSelectedRouteDescriptors", "FigRoutingContext.m", 2071, 0, 0, SharedQueue, v13);
      IsOperationOnSystemInputContextAllowedInternal = *(v17 + 6);
    }

    else
    {
      IsOperationOnSystemInputContextAllowedInternal = 4294955276;
    }
  }

  _Block_object_dispose(&v16, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1905DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v11 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    SharedQueue = FigRoutingManagerGetSharedQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __routingContext_CreateCommChannel_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = DerivedStorage;
    v9[6] = a2;
    v9[7] = a3;
    MXDispatchAsyncAndWait("routingContext_CreateCommChannel", "FigRoutingContext.m", 966, 0, 0, SharedQueue, v9);
    IsOperationOnSystemInputContextAllowedInternal = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1905F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v19 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1EB75DF40)
    {
      v17 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __routingContext_SendData_block_invoke;
    v15[3] = &unk_1E7AE7AB8;
    v15[6] = a1;
    v15[7] = a4;
    v15[4] = &v18;
    v15[5] = DerivedStorage;
    v15[8] = a5;
    v15[9] = a2;
    v15[10] = a3;
    MXDispatchAsyncAndWait("routingContext_SendData", "FigRoutingContext.m", 1061, 0, 0, SharedQueue, v15);
    IsOperationOnSystemInputContextAllowedInternal = *(v19 + 6);
  }

  _Block_object_dispose(&v18, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1906178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v12 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1EB75DF40)
    {
      v10 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __routingContext_CloseCommChannel_block_invoke;
    v8[3] = &unk_1E7AE7140;
    v8[4] = &v11;
    v8[5] = DerivedStorage;
    v8[6] = a2;
    MXDispatchAsyncAndWait("routingContext_CloseCommChannel", "FigRoutingContext.m", 1143, 0, 0, SharedQueue, v8);
    IsOperationOnSystemInputContextAllowedInternal = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B19063BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v19 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (dword_1EB75DF40)
    {
      v17 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedQueue = FigRoutingManagerGetSharedQueue();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __routingContext_SendCommand_block_invoke;
    v15[3] = &unk_1E7AE7AB8;
    v15[6] = a1;
    v15[7] = a4;
    v15[4] = &v18;
    v15[5] = DerivedStorage;
    v15[8] = a5;
    v15[9] = a2;
    v15[10] = a3;
    MXDispatchAsyncAndWait("routingContext_SendCommand", "FigRoutingContext.m", 1233, 0, 0, SharedQueue, v15);
    IsOperationOnSystemInputContextAllowedInternal = *(v19 + 6);
  }

  _Block_object_dispose(&v18, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1906620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_CreateCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v12 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    if (*CMBaseObjectGetDerivedStorage() == 9)
    {
      DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __routingContext_CreateCommChannelForDeviceID_block_invoke;
      v10[3] = &unk_1E7AE7A48;
      v10[4] = &v11;
      v10[5] = a2;
      v10[6] = a3;
      v10[7] = a4;
      MXDispatchSync("routingContext_CreateCommChannelForDeviceID", "FigRoutingContext.m", 1004, 0, 0, DataTransmissionQueue, v10);
      IsOperationOnSystemInputContextAllowedInternal = *(v12 + 6);
    }

    else
    {
      IsOperationOnSystemInputContextAllowedInternal = 4294955271;
      *(v12 + 6) = -12025;
    }
  }

  _Block_object_dispose(&v11, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1906770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_SendDataForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v16 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    if (*CMBaseObjectGetDerivedStorage() == 9)
    {
      DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __routingContext_SendDataForDeviceID_block_invoke;
      v14[3] = &unk_1E7AEA9A8;
      v14[4] = &v15;
      v14[5] = a2;
      v14[6] = a3;
      v14[7] = a4;
      v14[8] = a5;
      v14[9] = a6;
      MXDispatchSync("routingContext_SendDataForDeviceID", "FigRoutingContext.m", 1116, 0, 0, DataTransmissionQueue, v14);
      IsOperationOnSystemInputContextAllowedInternal = *(v16 + 6);
    }

    else
    {
      IsOperationOnSystemInputContextAllowedInternal = 4294955271;
      *(v16 + 6) = -12025;
    }
  }

  _Block_object_dispose(&v15, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B19068CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_CloseCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  *(v10 + 6) = IsOperationOnSystemInputContextAllowedInternal;
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    if (*CMBaseObjectGetDerivedStorage() == 9)
    {
      DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __routingContext_CloseCommChannelForDeviceID_block_invoke;
      v8[3] = &unk_1E7AE7140;
      v8[4] = &v9;
      v8[5] = a2;
      v8[6] = a3;
      MXDispatchSync("routingContext_CloseCommChannelForDeviceID", "FigRoutingContext.m", 1178, 0, 0, DataTransmissionQueue, v8);
      IsOperationOnSystemInputContextAllowedInternal = *(v10 + 6);
    }

    else
    {
      IsOperationOnSystemInputContextAllowedInternal = 4294955271;
      *(v10 + 6) = -12025;
    }
  }

  _Block_object_dispose(&v9, 8);
  return IsOperationOnSystemInputContextAllowedInternal;
}

void sub_1B1906A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_ResetPredictedSelectedRouteDescriptor(uint64_t a1, uint64_t a2)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (MX_FeatureFlags_IsSystemInputPickerEnabled(DerivedStorage, v4) && FigRoutingManagerContextUtilities_GetContextType(*(DerivedStorage + 8)) == 13)
    {
      [+[MXUserPreferredInputRouteCache sharedInstance](MXUserPreferredInputRouteCache clearUserPreferredRoute:"clearUserPreferredRoute:", FigCFDictionaryGetValue()];
    }

    else
    {
      SharedQueue = FigRoutingManagerGetSharedQueue();
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __routingContext_ResetPredictedSelectedRouteDescriptor_block_invoke;
      v7[3] = &__block_descriptor_40_e5_v8__0l;
      v7[4] = DerivedStorage;
      MXDispatchAsyncAndWait("routingContext_ResetPredictedSelectedRouteDescriptor", "FigRoutingContext.m", 1685, 0, 0, SharedQueue, v7);
    }
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t routingContext_CopySelectedBufferedEndpointForTesting(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  SharedQueue = FigRoutingManagerGetSharedQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __routingContext_CopySelectedBufferedEndpointForTesting_block_invoke;
  v10[3] = &unk_1E7AE7140;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = a2;
  MXDispatchAsyncAndWait("routingContext_CopySelectedBufferedEndpointForTesting", "FigRoutingContext.m", 1750, 0, 0, SharedQueue, v10);
  v8 = v12 + 3;
  v7 = v12[3];
  if (a3)
  {
    *a3 = v7;
LABEL_5:
    *v8 = 0;
    goto LABEL_6;
  }

  if (v7)
  {
    CFRelease(v7);
    v8 = v12 + 3;
    goto LABEL_5;
  }

LABEL_6:
  _Block_object_dispose(&v11, 8);
  return 0;
}

void sub_1B1906C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContext_AddToSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = routingContext_AddClientRouteRequestIDToDictionary(a3);
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXRoutingContextCallbackHelper initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:]([MXRoutingContextCallbackHelper alloc], "initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:", a1, [v9 objectForKey:@"clientRouteRequestID"], objc_msgSend(v9, "objectForKey:", @"clientCorrelationID"), a4, a5);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v11)
  {
    v12 = v11(a1, a2, v9);
    if (!v9)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 4294954514;
  if (v9)
  {
LABEL_7:
    CFRelease(v9);
  }

  return v12;
}

uint64_t routingContext_RemoveFromSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = routingContext_AddClientRouteRequestIDToDictionary(a3);
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXRoutingContextCallbackHelper initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:]([MXRoutingContextCallbackHelper alloc], "initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:", a1, [v9 objectForKey:@"clientRouteRequestID"], objc_msgSend(v9, "objectForKey:", @"clientCorrelationID"), a4, a5);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v11)
  {
    v12 = v11(a1, a2, v9);
    if (!v9)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 4294954514;
  if (v9)
  {
LABEL_7:
    CFRelease(v9);
  }

  return v12;
}

uint64_t routingContext_SelectRouteDescriptorWithCompletionCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = routingContext_AddClientRouteRequestIDToDictionary(a3);
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXRoutingContextCallbackHelper initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:]([MXRoutingContextCallbackHelper alloc], "initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:", a1, [v9 objectForKey:@"clientRouteRequestID"], objc_msgSend(v9, "objectForKey:", @"clientCorrelationID"), a4, a5);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v11)
  {
    v12 = v11(a1, a2, v9);
    if (!v9)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 4294954514;
  if (v9)
  {
LABEL_7:
    CFRelease(v9);
  }

  return v12;
}

uint64_t routingContext_SelectRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = routingContext_AddClientRouteRequestIDToDictionary(a3);
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  -[MXRoutingContextCallbackHelper initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:]([MXRoutingContextCallbackHelper alloc], "initWithRoutingContext:routeConfigUpdateID:correlationID:callback:context:", a1, [v9 objectForKey:@"clientRouteRequestID"], objc_msgSend(v9, "objectForKey:", @"clientCorrelationID"), a4, a5);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v11)
  {
    v12 = v11(a1, a2, v9);
    if (!v9)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 4294954514;
  if (v9)
  {
LABEL_7:
    CFRelease(v9);
  }

  return v12;
}

uint64_t routingContext_ReportModificationMetrics(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    [objc_msgSend(a2 "clientModificationStartedTimestamp")];
    [objc_msgSend(a2 "clientModificationFinishedTimestamp")];
    [objc_msgSend(a2 "serverModificationStartedTimestamp")];
    [objc_msgSend(a2 "serverModificationFinishedTimestamp")];
    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DF40)
      {
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v6 = [[MXRoutingContextReportingService alloc] initWithModificationMetrics:a2 useMockService:0];
    [(MXRoutingContextReportingService *)v6 sendModificationResult];

    return 0;
  }

  else
  {
    routingContext_ReportModificationMetrics_cold_1(v8, v3);
    return v8[0];
  }
}

void routingContext_sendDataCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v8(*a4, a2, a3, a4[2]);
    }

    CFRelease(*a4);
    free(a4);
  }
}

void routingContext_sendCommandCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v8(*a4, a3, a2, a4[2]);
    }

    CFRelease(*a4);
    free(a4);
  }
}

id routingContext_AddClientRouteRequestIDToDictionary(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    v3 = [a1 mutableCopy];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4 = v3;
  [v3 setObject:objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0] forKey:{"UUID"), "UUIDString"), @"clientRouteRequestID"}];
  objc_autoreleasePoolPop(v2);
  return v4;
}

void MXInitialize(uint64_t result, uint64_t a2)
{
  if (MXInitialize_onceToken != -1)
  {
    MXInitialize_cold_1();
  }
}

void __MXInitialize_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  +[MXInitialization start];
  cmsmInitializeCMSessionManager();
}

id MXSystemControllerSetup()
{
  gMXSystemControllerList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  gSidekickMXSystemControllerList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  result = objc_alloc_init(MEMORY[0x1E696AD10]);
  gMXSystemControllerListLock = result;
  return result;
}

uint64_t MXSystemMirroring_PickEndpoint(const void *a1, const void *a2, CFDictionaryRef theDict, const void *a4)
{
  v8 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(theDict);
  if (!a2)
  {
    mxSystemMirroring_disconnect(a1, theDict);
    v9 = 0;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_3;
  }

  v9 = mxSystemMirroring_preprocessPickEndpoint(a2, a1, v8, a4);
  if (v8)
  {
LABEL_3:
    CFRelease(v8);
  }

  return v9;
}

void mxSystemMirroring_disconnect(uint64_t a1, const __CFDictionary *a2)
{
  v22[22] = *MEMORY[0x1E69E9840];
  FigRoutingContextUtilities_LogCurrentState();
  v4 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a2);
  FigRoutingManagerLogRoutingRequestDetails(@"mxSystemMirroring_disconnect - ", 0, 0, 0, a1, v4);
  v22[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(v22);
  if (FigRoutingManagerUtilities_IsEndpointPicked(0, v22[0]))
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v22[0], v4, @"configUpdateReasonEndedNoop");
  }

  else
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v22[0], a2, @"configUpdateReasonStarted");
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
    v20 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v22[0], 0, &v20);
    v19 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(cf, 0, &v19);
    v18 = 0;
    if (v20)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v18);
      }
    }

    if (v19 == v20 && FigRoutingManagerIsEndpointOfType(v20, *MEMORY[0x1E69626A8]))
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManager_RouteAwayFromAirPlayEndpoint(v20, v22[0], 1u);
      FigRoutingManagerLogEndpointID(@"Going to deactivate endpoint with name=", v20, @"because most recent currently activating endpoint is NULL", 1);
      mxSystemMirroring_iOSDeactivateEndpoint(v20, 1, a2, @"ClientPickedDisconnect");
      v8 = CMSMUtility_CopyCurrentRouteIdentifiers();
      NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
      if (NumberOfCurrentOutputPorts)
      {
        v10 = NumberOfCurrentOutputPorts;
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v12 = 0;
        v13 = *MEMORY[0x1E69618F8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
          v15 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v13, cf);
          if (v15)
          {
            v16 = v15;
            CFArrayAppendValue(Mutable, v15);
            CFRelease(v16);
          }

          ++v12;
        }

        while (v10 != v12);
      }

      else
      {
        Mutable = 0;
      }

      v17 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(Mutable, 0);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(cf, Mutable, @"configUpdateReasonEndedSuccess", a2, v17);
      FigRoutingManagerContextUtilities_SetPickingState(cf, 0);
      if (v17)
      {
        CFRelease(v17);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    if (!MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed())
    {
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v22[0], 0, @"configUpdateReasonEndedSuccess", a2, 0);
    }

    mxSystemMirroring_iOSDeactivateEndpoint(v20, 1, a2, @"ClientPickedDisconnect");
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
    }

    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (v22[0])
  {
    CFRelease(v22[0]);
    v22[0] = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t mxSystemMirroring_preprocessPickEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69626A8];
  if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
  {
    return 0;
  }

  FigRoutingContextUtilities_LogCurrentState();
  v45 = 0;
  v9 = *MEMORY[0x1E69621E8];
  v10 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, v9, v10, &v45);
  }

  v38 = v9;
  v13 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  FigRoutingManagerLogRoutingRequestDetails(@"mxSystemMirroring_preprocessPickEndpoint - ", a1, 0, 0, a2, v13);
  v44 = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a2, &v44);
  allocator = v10;
  Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a1);
  v14 = 1;
  FigRoutingManagerContextUtilities_SetPickingState(a2, 1);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(0, a2, a1, v13, a4);
  v42 = 0;
  v43 = 0;
  FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(&v42, &v43, 0);
  v15 = FigRoutingManagerContextUtilities_CopyScreenEndpointUUID(a2);
  if (v15)
  {
    v17 = v15;
    IsRoutedToLocalAirplayReceiver = FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(a2);
    v14 = IsRoutedToLocalAirplayReceiver != 0;
    if (!IsRoutedToLocalAirplayReceiver && dword_1EB75DF20)
    {
      LODWORD(cf) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFRelease(v17);
  }

  if (!v42)
  {
    goto LABEL_19;
  }

  IsCurrentRouteHandoff = FigRoutingManagerUtilities_IsCurrentRouteHandoff(v15, v16);
  v22 = !v14;
  if (IsCurrentRouteHandoff)
  {
    v22 = 1;
  }

  if (v22)
  {
LABEL_19:
    v37 = a4;
    theArray[0] = 0;
    *v46 = 0;
    FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(-1, theArray, v46, 0, 0);
    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      if (Count >= 1)
      {
        v27 = Count;
        for (i = 0; i != v27; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
          v30 = CFArrayGetValueAtIndex(*v46, i);
          if (ValueAtIndex != a1 || v30 != a2)
          {
            v32 = v30;
            v33 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            FigCFDictionarySetValue();
            cf = 0;
            FigRoutingManagerCreateEndpointDeactivateCompletionContext(v32, &cf);
            FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate endpoint with name=", ValueAtIndex, 0, 1);
            FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(v32, ValueAtIndex, @"configUpdateReasonEndedUserCancelled");
            mxSystemMirroring_iOSDeactivateEndpoint(ValueAtIndex, 0, 0, @"DeactivateOldAirPlayEndpoint");
            if (v33)
            {
              CFRelease(v33);
            }
          }
        }
      }
    }

    v20 = mxSystemMirroring_iOSActivateEndpoint(a1, a2, v13, v37);
    if (theArray[0])
    {
      CFRelease(theArray[0]);
      theArray[0] = 0;
    }

    v34 = Mutable;
    if (*v46)
    {
      CFRelease(*v46);
    }
  }

  else
  {
    FigRoutingManagerContextUtilities_SetPickingState(a2, 2);
    CMSMAP_MakeAirPlayHandOffPortRoutable(1, a2);
    cf = 0;
    v23 = FigEndpointGetCMBaseObject();
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v24(v23, v38, v10, &cf);
    }

    if (FigRoutingManagerIsEndpointOfType(v42, v8))
    {
      if (dword_1EB75DF20)
      {
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      mxSystemMirroring_iOSDeactivateEndpoint(v42, 1, 0, @"DeactivateOldAirPlayEndpoint");
    }

    else if (FigRoutingManagerIsEndpointOfType(v42, *MEMORY[0x1E69626B0]))
    {
      if (dword_1EB75DF20)
      {
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerRemoveAllSubEndpointsFromAggregate(v42, v43, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
      CMSMVAUtility_DestroyMusicVADIfNeeded(v43);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v43, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
    }

    v20 = mxSystemMirroring_iOSActivateEndpoint(a1, a2, v13, a4);
    if (cf)
    {
      CFRelease(cf);
    }

    v34 = Mutable;
  }

  if (v43)
  {
    CFRelease(v43);
    v43 = 0;
  }

  if (v44)
  {
    CFRelease(v44);
    v44 = 0;
  }

  FigRoutingContextUtilities_LogCurrentState();
  if (v45)
  {
    CFRelease(v45);
    v45 = 0;
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v42)
  {
    CFRelease(v42);
    v42 = 0;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v20;
}

uint64_t MXSystemMirroring_PickRouteDescriptor(const void *a1, CFDictionaryRef theDict, const __CFDictionary *a3, const __CFDictionary *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"RouteName");
    CFDictionaryGetValue(theDict, @"RouteUID");
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!FigCFDictionaryGetCount())
  {
    mxSystemMirroring_disconnect(a1, a3);
    return 0;
  }

  v9 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(theDict, a1);
  if (v9)
  {
    v10 = v9;
    *type = 0;
    theArray = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(type);
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(*type, &theArray);
    if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
    {
      v12 = Count;
      if (CFArrayGetValueAtIndex(theArray, 0) == v10)
      {
        v16 = 0;
        v17 = 1;
      }

      else
      {
        v13 = 1;
        while (1)
        {
          v14 = v13;
          if (v12 == v13)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          v13 = v14 + 1;
          if (ValueAtIndex == v10)
          {
            v16 = v14;
            goto LABEL_21;
          }
        }

        v16 = 0;
LABEL_21:
        v17 = v14 < v12;
      }
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    v24 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v22(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v24);
    }

    if (v17)
    {
      if (dword_1EB75DF20)
      {
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(*type, v16, cf);
      FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(*type, v16);
      FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(*type, cf[0]);
      FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*type, a3, a4);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    else if (FigRoutingManagerUtilities_IsEndpointPicked(v10, *type))
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*type, a3, @"configUpdateReasonEndedNoop");
    }

    else
    {
      mxSystemMirroring_preprocessPickEndpoint(v10, a1, a3, a4);
    }

    if (v24)
    {
      CFRelease(v24);
      v24 = 0;
    }

    CFRelease(v10);
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (*type)
    {
      CFRelease(*type);
    }

    return 0;
  }

  v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v19 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v19, @"configUpdateReasonEndedFailed");
  if (v19)
  {
    CFRelease(v19);
  }

  return 4294954296;
}

void MXSystemMirroring_iOSHandleEndpointAudioActivation(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v22 = 0;
  v9 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E69622F8], v9, &v22);
  }

  v21 = 0;
  v12 = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, *MEMORY[0x1E69621E8], v9, &v21);
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingManagerStartDeactivateAirPlayEndpointTimer(a1, a3, 5.0);
  AirPlayPortForEndpoint = CMSMAP_FindAirPlayPortForEndpoint(a1, *MEMORY[0x1E69625E8]);
  if (AirPlayPortForEndpoint)
  {
    v17 = AirPlayPortForEndpoint;
    FigRoutingManagerStopDeactivateAirPlayEndpointTimer(AirPlayPortForEndpoint, v16);
    FigRoutingManagerContextUtilities_SetPickingState(a4, 9);
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"defaultAudioToLocal");
    }

    else
    {
      Value = *MEMORY[0x1E695E4C0];
    }

    if (Value == *MEMORY[0x1E695E4D0])
    {
      if (dword_1EB75DF20)
      {
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a5);
      FigRoutingManagerPostProcessPickEndpoint(a1, a4);
    }

    else
    {
      if (!CMSMVAUtility_MakePortRoutable(v17, a4))
      {
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a5);
        cf[0] = 0;
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(cf[0], a1, @"configUpdateReasonEndedSuccess", a5);
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_24;
      }

      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a4, 0, @"configUpdateReasonEndedFailed");
      if (dword_1EB75DF20)
      {
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      mxSystemMirroring_iOSDeactivateEndpoint(a1, 0, 0, @"HandleEndpointAudioActivation");
    }

    FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
LABEL_24:
    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(cf);
    FigRoutingManagerContextUtilities_StopMirroringTimer(cf[0]);
    FigRoutingManagerContextUtilities_StopDiscoveryTimer(cf[0]);
    FigRoutingManagerContextUtilities_SetScreenEndpoint(cf[0], 0);
    FigRoutingManagerContextUtilities_SetAudioEndpoint(cf[0], 0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_26;
  }

  FigRoutingManagerContextUtilities_SetPickingState(a4, 8);
LABEL_26:
  if (v21)
  {
    CFRelease(v21);
    v21 = 0;
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

void mxSystemMirroring_iOSDeactivateEndpoint(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
  v26 = 0;
  v7 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, *MEMORY[0x1E69621E8], v7, &v26);
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v23) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v28[0] = 0;
  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x1E6962100], v7, v28);
  }

  if (v28[0] == *MEMORY[0x1E695E4D0])
  {
    CFRetain(a1);
    v14 = *(SharedManager + 1);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __mxSystemMirroring_iOSDeactivateEndpoint_block_invoke;
    v24[3] = &__block_descriptor_40_e5_v8__0l;
    v24[4] = a1;
    MXDispatchAsync("mxSystemMirroring_iOSDeactivateEndpoint", "MXSystemMirroring_Embedded.m", 482, 0, 0, v14, v24);
    *cf = 0;
    v15 = FigEndpointGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v15, *MEMORY[0x1E6962238], v7, cf);
      v17 = *cf;
    }

    else
    {
      v17 = 0;
    }

    FigRoutingManagerGetFigEndpointFeatures(a1, v17);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    FigRoutingManagerUnregisterFromFigEndpointNotifications(a1);
    v23 = 0;
    FigRoutingManagerCreateEndpointDeactivateCompletionContext(*cf, &v23);
    if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
    {
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v19)
      {
        v19(a1, 0);
      }
    }

    v20 = v23;
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v21)
    {
      v21(a1, Mutable, mxSystemMirroring_iOSEndpointDeactivateCompletionCallback, v20);
    }

    if (FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      v22 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed;
    }

    else if (FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      v22 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedSuccess;
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_26;
      }

      v22 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedBottomUpRouteChange;
    }

    FigRoutingManagerContextUtilities_SetPickedEndpoints(*cf, 0, *v22, a3, 0);
LABEL_26:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (*cf)
    {
      CFRelease(*cf);
    }

    goto LABEL_30;
  }

  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
  {
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v13)
    {
      v13(a1, 0);
    }

    FigEndpointDeactivate();
  }

LABEL_30:
  if (v28[0])
  {
    CFRelease(v28[0]);
    v28[0] = 0;
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

void MXSystemMirroring_HandleNewWirelessPorts(const void *a1, const void *a2)
{
  v12 = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(a2, &v12);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(a2, &cf);
  v10 = 0;
  FigRoutingManagerContextUtilities_GetPickingState(a2, &v10);
  if (v10 != 8)
  {
    if (v10 != 5 || !CMSMVAUtility_IsPortAvailableForEndpoint(v12, a1))
    {
      goto LABEL_8;
    }

    v4 = 6;
    goto LABEL_7;
  }

  if (CMSMVAUtility_IsPortAvailableForEndpoint(v12, a1))
  {
    v4 = 9;
LABEL_7:
    FigRoutingManagerContextUtilities_SetPickingState(a2, v4);
  }

LABEL_8:
  FigRoutingManagerContextUtilities_GetPickingState(a2, &v10);
  if (v10 == 9)
  {
    v9 = 0;
    FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, v12, &v9);
    v8 = 0;
    FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures(a2, v12, &v8);
    theDict = 0;
    FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpointInfo(a2, &theDict);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
      v6 = CFDictionaryGetValue(theDict, @"CurrentlyActivatingEndpointsInfo_InternalRouteChangeOptions");
    }

    else
    {
      Value = 0;
      v6 = 0;
    }

    mxSystemMirroring_iOSHandleFigEndpointFeaturesActivation(v12, v8, v9, a2, Value, v6);
    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  if (v12)
  {
    CFRelease(v12);
    v12 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void mxSystemMirroring_iOSHandleFigEndpointFeaturesActivation(const void *a1, char a2, uint64_t a3, const void *a4, const __CFDictionary *a5, uint64_t a6)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a2 & 2) != 0)
    {
      cf[0] = 0;
      FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(cf);
      if (!MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed() || MXSystemMirroring_IsDefaultRouteAirPlayReceiver() && FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(cf[0]))
      {
        MXSystemMirroring_iOSHandleEndpointAudioActivation(a1, v12, a3, a4, a5);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    if (a2)
    {
      v21 = 0;
      v22 = 0;
      IsPropertyTrue = FigEndpointUtility_EndpointPredicate_IsPropertyTrue();
      v14 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v16)
      {
        v16(CMBaseObject, *MEMORY[0x1E69622F8], v14, &v22);
      }

      v17 = FigEndpointGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(v17, *MEMORY[0x1E69622F0], v14, &v21);
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }

      CMScreenHandleActivation(v22, v19);
      if (!(FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]) | IsPropertyTrue))
      {
        FigEndpointCopyFirstStreamOfType();
      }

      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed() && (!MXSystemMirroring_IsDefaultRouteAirPlayReceiver() || !FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(a4)))
      {
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a6);
        FigRoutingManagerContextUtilities_StopMirroringTimer(a4);
      }

      if (v22)
      {
        CFRelease(v22);
        v22 = 0;
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }
  }
}

uint64_t MXSystemMirroring_IsDefaultRouteAirPlayReceiver()
{
  v2 = *MEMORY[0x1E69E9840];
  if (MXSystemMirroring_IsDefaultRouteAirPlayReceiver_onceToken != -1)
  {
    MXSystemMirroring_IsDefaultRouteAirPlayReceiver_cold_1();
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return MXSystemMirroring_IsDefaultRouteAirPlayReceiver_isSystemMirroringDefaultRouteAirPlayReceiver;
}

uint64_t MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed()
{
  v2 = *MEMORY[0x1E69E9840];
  if (MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed_onceToken != -1)
  {
    MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed_cold_1();
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed_isMirroringScreenAudioSeperate;
}

uint64_t mxSystemMirroring_iOSActivateEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v54[16] = *MEMORY[0x1E69E9840];
  v8 = FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(a1, a2, a3, a4);
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(a1, a2);
  cf = 0;
  v10 = *MEMORY[0x1E69621E8];
  v41 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, v10, v41, &cf);
  }

  v39 = v10;
  if (dword_1EB75DF20)
  {
    LODWORD(v47) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v47;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v48 = 136315650;
      v49 = "mxSystemMirroring_iOSActivateEndpoint";
      v50 = 2114;
      v51 = cf;
      v52 = 2048;
      v53[0] = FigEndpointFeatures;
      _os_log_send_and_compose_impl(v15, 0, v54, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "-MXSystemMirroring_Embedded- %s: Activating endpoint '%{public}@' with features %llu", &v48, 32);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
  {
    EndpointDelegateContext = FigRoutingManagerCreateEndpointDelegateContext(a2, a3, a4);
    v19 = malloc_type_malloc(0x18uLL, 0x60040149E097CuLL);
    v20 = a1 ? CFRetain(a1) : 0;
    v19[1] = v20;
    v19[2] = EndpointDelegateContext;
    *v19 = 0;
    SharedManager = FigRoutingManagerGetSharedManager(v20, v18);
    FigSimpleMutexLock();
    if (SharedManager[8])
    {
      *SharedManager[9] = v19;
    }

    else
    {
      SharedManager[8] = v19;
    }

    SharedManager[9] = v19;
    FigSimpleMutexUnlock();
    v54[3] = 0;
    v54[4] = 0;
    v54[0] = EndpointDelegateContext;
    v54[1] = FigRoutingManager_HandleAuthorizationRequiredDelegate;
    v54[2] = mxSystemMirroring_handleEndpointFailedDelegate;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v22)
    {
      v22(a1, v54);
    }
  }

  if (!v8)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"authInfo");
      if (Value)
      {
        FigRoutingManager_SetAuthorizationOnEndpoint(a1, Value);
      }
    }

    v43 = 0;
    FigRoutingManagerContextUtilities_GetPickingState(a2, &v43);
    if (FigRoutingManagerIsEndpointOfType(a1, v16))
    {
      FigRoutingManagerContextUtilities_SetPickingState(a2, 5);
      *type = 0;
      FigRoutingManagerCreateEndpointActivateCompletionContext(a2, a3, a4, EndpointActivateOptions, type);
      v25 = *type;
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      v47 = 0;
      v27 = FigEndpointGetCMBaseObject();
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        v28(v27, v39, v41, &v47);
      }

      if (dword_1EB75DF20)
      {
        v46 = 0;
        v45 = OS_LOG_TYPE_DEFAULT;
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v30 = v46;
        v31 = v45;
        if (os_log_type_enabled(v29, v45))
        {
          v32 = v30;
        }

        else
        {
          v32 = v30 & 0xFFFFFFFE;
        }

        if (v32)
        {
          v48 = 136315906;
          v49 = "mxSystemMirroring_endpointActivateWithCompletionCallback";
          v50 = 2114;
          v51 = v47;
          v52 = 1024;
          LODWORD(v53[0]) = FigEndpointFeatures;
          WORD2(v53[0]) = 2114;
          *(v53 + 6) = EndpointActivateOptions;
          LODWORD(v38) = 38;
          _os_log_send_and_compose_impl(v32, 0, v54, 128, &dword_1B17A2000, v29, v31, "-MXSystemMirroring_Embedded- %s: routingManager: endpointName = %{public}@, inFeatures=%d, inActivateOptions=%{public}@", &v48, v38);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (FigRoutingManagerIsEndpointOfType(a1, v16))
      {
        if (v25)
        {
          v33 = *v25;
          v34 = v25[1];
        }

        else
        {
          v33 = 0;
          v34 = 0;
        }

        v54[0] = 0;
        v35 = FigEndpointGetCMBaseObject();
        v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v36)
        {
          v36(v35, *MEMORY[0x1E69620B8], v41, v54);
          v36 = v54[0];
        }

        FigRoutingManagerSetMirroringModeOnBKSDisplayServices(EndpointActivateOptions, v33, v34, v36 == *MEMORY[0x1E695E4D0]);
        if (v54[0])
        {
          CFRelease(v54[0]);
        }
      }

      v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v37)
      {
        v8 = v37(a1, FigEndpointFeatures, MutableCopy, mxSystemMirroring_endpointActivateCompletionCallback, v25);
      }

      else
      {
        v8 = 4294954514;
      }

      if (v47)
      {
        CFRelease(v47);
        v47 = 0;
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

  return v8;
}

void mxSystemMirroring_handleEndpointFailedDelegate(const void *a1, uint64_t a2, const void *a3, const void *a4)
{
  if (a1 && a3)
  {
    SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
    CFRetain(a1);
    CFRetain(a3);
    if (a4)
    {
      CFRetain(a4);
    }

    v9 = *(SharedManager + 1);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __mxSystemMirroring_handleEndpointFailedDelegate_block_invoke;
    v10[3] = &__block_descriptor_64_e5_v8__0l;
    v10[4] = a4;
    v10[5] = a3;
    v10[6] = a1;
    v10[7] = a2;
    MXDispatchAsync("mxSystemMirroring_handleEndpointFailedDelegate", "MXSystemMirroring_Embedded.m", 81, 0, 0, v9, v10);
  }
}

void mxSystemMirroring_endpointActivateCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
  if (a5)
  {
    v11 = *a5;
    v12 = *(a5 + 8);
    v13 = *(a5 + 16);
    v14 = *(a5 + 32);
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
  }

  [v14 timeIntervalSinceNow];
  v16 = v15;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v11)
  {
    CFRetain(v11);
  }

  if (v12)
  {
    CFRetain(v12);
  }

  if (v13)
  {
    CFRetain(v13);
  }

  v17 = fabs(v16) * 1000.0;
  v18 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v19 = *(SharedManager + 1);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __mxSystemMirroring_endpointActivateCompletionCallback_block_invoke;
  v20[3] = &unk_1E7AEAAC8;
  v20[4] = v18;
  v20[5] = a1;
  v21 = a4;
  v20[6] = a3;
  v20[7] = a2;
  v22 = v17;
  v20[8] = v12;
  v20[9] = v11;
  v20[10] = v13;
  v20[11] = a5;
  MXDispatchAsync("mxSystemMirroring_endpointActivateCompletionCallback", "MXSystemMirroring_Embedded.m", 333, 0, 0, v19, v20);
}

void __mxSystemMirroring_handleEndpointFailedDelegate_block_invoke(uint64_t a1)
{
  v44[16] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *(a1 + 32);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"EndpointDelegateContextKey_ClientRouteChangeOptions");
  }

  else
  {
    Value = 0;
  }

  v43 = 0;
  FigCFDictionaryGetInt32IfPresent();
  IsEndpointActivated = FigRoutingManagerIsEndpointActivated(*(a1 + 48));
  if (IsEndpointActivated)
  {
    *v41 = 0;
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, *MEMORY[0x1E69620F8], v2, &cf);
    }

    v10 = *MEMORY[0x1E69621E8];
    v11 = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, v10, v2, v41);
    }

    v13 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(*(a1 + 48), 0);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    v40 = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&v40);
    v39 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v40, 0, &v39);
    v38 = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v38);
    v37 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v38, 0, &v37);
    if (v39)
    {
      v14 = FigEndpointGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, v10, v2, v41);
      }

      if (v39 && FigRoutingManagerIsEndpointOfType(v39, *MEMORY[0x1E69626A8]))
      {
        v16 = &qword_1EB75D000;
        if (FigCFEqual())
        {
          if (dword_1EB75DF20)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v16 = &qword_1EB75D000;
          }

          FigRoutingManager_RouteAwayFromAirPlayEndpoint(v39, v40, 1u);
        }

        mxSystemMirroring_iOSDeactivateEndpoint(*(a1 + 48), 0, Value, @"HandleEndpointFailedDelegate");
        CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6961848]);
        if (FigCFEqual())
        {
          FigRoutingManager_iOSHandleStartupFailed(v43, Mutable);
        }

        v23 = CMSMUtility_CopyCurrentRouteIdentifiers();
        NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
        if (NumberOfCurrentOutputPorts)
        {
          v25 = NumberOfCurrentOutputPorts;
          v26 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
          v27 = 0;
          v28 = *MEMORY[0x1E69618F8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v23, v27);
            v30 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v28, v38);
            if (v30)
            {
              v31 = v30;
              CFArrayAppendValue(v26, v30);
              CFRelease(v31);
            }

            ++v27;
          }

          while (v25 != v27);
          v16 = &qword_1EB75D000;
        }

        else
        {
          v26 = 0;
        }

        v32 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v26, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(v38, v26, @"configUpdateReasonEndedSuccess", Value, v32);
        FigRoutingManagerContextUtilities_SetPickingState(v38, 0);
        if (*(v16 + 968))
        {
          v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        if (v26)
        {
          CFRelease(v26);
        }
      }
    }

    if (*v41)
    {
      CFRelease(*v41);
      *v41 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v40)
    {
      CFRelease(v40);
      v40 = 0;
    }

    if (v39)
    {
      CFRelease(v39);
      v39 = 0;
    }

    if (v38)
    {
      CFRelease(v38);
      v38 = 0;
    }

    v22 = v37;
    if (v37)
    {
LABEL_58:
      CFRelease(v22);
    }
  }

  else if (MX_FeatureFlags_IsAirPlayDaemonEnabled(IsEndpointActivated, v7))
  {
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = CFDictionaryGetValue(v18, @"EndpointDelegateContextKey_RoutingContextUUID");
    }

    else
    {
      v19 = 0;
    }

    FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(*(a1 + 48), v19);
    v44[0] = 0;
    FigRoutingManagerCopyPickedEndpointForRoutingContext(v19, v44);
    FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 48), FigEndpointFeatures, v19);
    FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v19, *(a1 + 48), *(a1 + 56));
    if (FigCFEqual())
    {
      FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(v19, 0, @"configUpdateReasonEndedFailed", 0);
    }

    v22 = v44[0];
    if (v44[0])
    {
      goto LABEL_58;
    }
  }

  else if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    v41[0] = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v34 = *(a1 + 48);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(a1 + 40);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = *(a1 + 32);
  if (v36)
  {
    CFRelease(v36);
  }
}

void __mxSystemMirroring_endpointActivateCompletionCallback_block_invoke(uint64_t a1)
{
  v29[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  if (*(a1 + 40))
  {
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], v2, &v27);
    }

    v5 = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, *MEMORY[0x1E69620F8], v2, &v26);
    }

    v7 = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(v7, *MEMORY[0x1E6961FD0], v2, &v25);
    }

    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *MEMORY[0x1E69621B0], v2, &v24);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v29[0] = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(*(a1 + 72), v29);
  v12 = *(a1 + 96);
  if (v12 && v12 != -16727)
  {
    if (FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626A8]))
    {
      FigEndpointUIAgentHelper_CleanupPrompt(v27, v26, v24, 0);
    }

    v19 = *(a1 + 40);
    if (v29[0] == v19)
    {
      FigRoutingManager_iOSHandleEndpointActivationError(v19, *(a1 + 56), *(a1 + 96), *(a1 + 48), *(a1 + 72), *(a1 + 64));
    }
  }

  else
  {
    if (FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626A8]))
    {
      v14 = v26;
      v13 = v27;
      v15 = v24;
      v16 = FigCFEqual();
      FigEndpointUIAgentHelper_CleanupPrompt(v13, v14, v15, v16);
    }

    if (v29[0] == *(a1 + 40))
    {
      FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 7);
      FigRoutingManagerRegisterForFigEndpointNotifications(*(a1 + 40));
      mxSystemMirroring_iOSHandleFigEndpointFeaturesActivation(*(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 72), *(a1 + 64), *(a1 + 80));
      FigRoutingManagerContextUtilities_AddActivatedEndpoint(*(a1 + 72), *(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 64), *(a1 + 80));
    }

    else
    {
      *cf = 0;
      if (v29[0])
      {
        v17 = FigEndpointGetCMBaseObject();
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(v17, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
        }
      }

      mxSystemMirroring_iOSDeactivateEndpoint(*(a1 + 40), 1, *(a1 + 64), @"DeactivateOldAirPlayEndpoint");
      if (*cf)
      {
        CFRelease(*cf);
        *cf = 0;
      }

      FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 0);
    }
  }

  FigRoutingManagerDestroyEndpointActivateCompletionContext(*(a1 + 88));
  if (v29[0])
  {
    CFRelease(v29[0]);
    v29[0] = 0;
  }

  if (v27)
  {
    CFRelease(v27);
    v27 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
    v25 = 0;
  }

  if (v24)
  {
    CFRelease(v24);
    v24 = 0;
  }

  if (v26)
  {
    CFRelease(v26);
    v26 = 0;
  }

  v20 = *(a1 + 72);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    CFRelease(v23);
  }
}

void __mxSystemMirroring_iOSDeactivateEndpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  FigRoutingManagerStopDeactivateAirPlayEndpointTimer(a1, a2);
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void mxSystemMirroring_iOSEndpointDeactivateCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a1)
  {
    v10 = CFRetain(a1);
    v12 = *(FigRoutingManagerGetSharedManager(v10, v11) + 1);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __mxSystemMirroring_iOSEndpointDeactivateCompletionCallback_block_invoke;
    v13[3] = &__block_descriptor_68_e5_v8__0l;
    v14 = a4;
    v13[4] = a1;
    v13[5] = a3;
    v13[6] = a2;
    v13[7] = a5;
    MXDispatchAsync("mxSystemMirroring_iOSEndpointDeactivateCompletionCallback", "MXSystemMirroring_Embedded.m", 437, 0, 0, v12, v13);
  }
}

void __mxSystemMirroring_iOSEndpointDeactivateCompletionCallback_block_invoke(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (*(a1 + 32))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 32), *(a1 + 48), v6);
  FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v6, *(a1 + 32), *(a1 + 40));
  FigRoutingManagerRemoveCachedDelegateContext(*(a1 + 32), v6);
  FigRoutingManagerDestroyEndpointDeactivateCompletionContext(*(a1 + 56));
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

uint64_t MXSystemRemotePool_AddEndpointToContext(const void *a1, const void *a2, const __CFDictionary *a3)
{
  if (a1)
  {
    FigRoutingManagerLogEndpointID(@"MXSystemRemotePool_AddEndpointToContext - Adding endpoint=", a1, @"on system remote pool context", 1);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsAddOperation", *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", v7);
    v8 = mxSystemRemotePool_processAddEndpoint(a1, a2, a3, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonEndedNoop");
    return 0;
  }

  return v8;
}

uint64_t mxSystemRemotePool_processAddEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v34[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, &cf);
  if (!cf)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  FigRoutingContextUtilities_LogCurrentState();
  v8 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  *v32 = 0;
  v9 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E69621E8], v9, v32);
  }

  FigRoutingManagerLogRoutingRequestDetails(@"mxSystemRemotePool_processAddEndpoint", a1, 0, 0, a2, v8);
  v12 = cf;
  if (!cf || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v12 = 0;
  }

  if (!FigRoutingManagerIsEndpointPresentInAggregate(a1, v12) && FigRoutingManagerIsEndpointActivated(a1))
  {
    if (dword_1EB75DF20)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v34[0] = 0;
    FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, a1, v34);
    FigRoutingManager_iOSDeactivateEndpoint(a1, v34[0], 1);
  }

  if (dword_1EB75DF20)
  {
    type[0] = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoint(a2, cf, a1, v8, a4);
  v30 = 0u;
  v31 = 0u;
  if (mxSystemRemotePool_getDelegateContext_onceToken != -1)
  {
    mxSystemRemotePool_processAddEndpoint_cold_1();
  }

  *&v30 = gDelegateContext;
  *&v31 = FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate;
  *(&v31 + 1) = FigRoutingManager_HandleDidCloseCommChannelDelegate;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v17)
  {
    v17(a1, &v30);
  }

  *type = 0;
  FigRoutingManagerCreateAggregateAddEndpointCompletionContext(a2, v8, a4, type);
  SubEndpointAddOptions = FigRoutingManagerCreateSubEndpointAddOptions(a1, a2, v8);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, @"authInfo");
    if (Value)
    {
      FigRoutingManager_SetAuthorizationOnEndpoint(a1, Value);
    }
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (SubEndpointAddOptions)
  {
    CFRelease(SubEndpointAddOptions);
  }

  v21 = cf;
  if (!cf || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v21 = 0;
  }

  v22 = *type;
  v23 = *(*(CMBaseObjectGetVTable() + 32) + 8);
  if (v23)
  {
    v15 = v23(v21, a1, MutableCopy, FigRoutingManagerAggregateAddEndpointCompletionCallback, v22);
    if (!v15)
    {
      v28 = 0;
      v24 = FigEndpointGetCMBaseObject();
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        v25(v24, *MEMORY[0x1E69620F8], v9, &v28);
      }

      if (dword_1EB75DF20)
      {
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v28)
      {
        CFRelease(v28);
      }

      v15 = 0;
      if (!MutableCopy)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v15 = 4294954514;
  }

  if (MutableCopy)
  {
LABEL_35:
    CFRelease(MutableCopy);
  }

LABEL_36:
  FigRoutingContextUtilities_LogCurrentState();
  if (v8)
  {
    CFRelease(v8);
  }

  if (*v32)
  {
    CFRelease(*v32);
    *v32 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t MXSystemRemotePool_RemoveEndpointFromContext(const void *a1, const void *a2, const __CFDictionary *a3)
{
  if (a1)
  {
    FigRoutingManagerLogEndpointID(@"MXSystemRemotePool_RemoveEndpointFromContext - Removing endpoint=", a1, @"on system remote pool context", 1);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsRemoveOperation", *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", v7);
    v8 = mxSystemRemotePool_processRemoveEndpoint(a1, a2, a3, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonEndedNoop");
    return 0;
  }

  return v8;
}

uint64_t mxSystemRemotePool_processRemoveEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v23[22] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, v23);
  if (!v23[0])
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  FigRoutingContextUtilities_LogCurrentState();
  v8 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  cf = 0;
  v9 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E69621E8], v9, &cf);
  }

  FigRoutingManagerLogRoutingRequestDetails(@"mxSystemRemotePool_processRemoveEndpoint", a1, 0, 0, a2, v8);
  v12 = v23[0];
  if (!v23[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v12 = 0;
  }

  if (FigRoutingManagerIsEndpointPresentInAggregate(a1, v12))
  {
    v13 = v23[0];
    if (!v23[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v13 = 0;
    }

    v14 = FigRoutingManagerRemoveEndpointFromAggregate(v13, a1, a2, v8, a4, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
    if (v14)
    {
      goto LABEL_23;
    }

    *v21 = 0;
    v15 = FigEndpointGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v15, *MEMORY[0x1E69620F8], v9, v21);
    }

    if (dword_1EB75DF20)
    {
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*v21)
    {
      CFRelease(*v21);
    }
  }

  else
  {
    if (dword_1EB75DF20)
    {
      *v21 = 0;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, v8, @"configUpdateReasonEndedNoop");
  }

  v14 = 0;
LABEL_23:
  FigRoutingContextUtilities_LogCurrentState();
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v23[0])
  {
    CFRelease(v23[0]);
  }

  return v14;
}

uint64_t MXSystemRemotePool_RemoveEndpoint(const void *a1)
{
  v5 = 0;
  FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&v5);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v5, &cf);
  if (FigRoutingManagerIsEndpointPresentInAggregate(a1, cf))
  {
    FigRoutingManagerRemoveEndpointFromAggregate(cf, a1, v5, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
    v2 = 0;
  }

  else
  {
    v2 = 4294954294;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

uint64_t MXSystemRemotePool_ActivateAggregateEndpoint(uint64_t a1, const void *a2)
{
  v17[16] = *MEMORY[0x1E69E9840];
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(a1, a2);
  cf = 0;
  FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  [v7 setValue:objc_msgSend(v8 forKey:{"UUIDString"), @"clientRouteRequestID"}];
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17[3] = 0;
  v17[4] = 0;
  if (mxSystemRemotePool_getDelegateContext_onceToken != -1)
  {
    mxSystemRemotePool_processAddEndpoint_cold_1();
  }

  v17[0] = gDelegateContext;
  v17[1] = mxSystemRemotePool_handleAuthorizationRequiredDelegate;
  v17[2] = mxSystemRemotePool_handleEndpointFailedDelegate;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v10)
  {
    v10(a1, v17);
  }

  *v16 = 0;
  EndpointActivateCompletionContext = FigRoutingManagerCreateEndpointActivateCompletionContext(a2, v7, 0, 0, v16);
  if (!EndpointActivateCompletionContext)
  {
    v12 = *v16;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      EndpointActivateCompletionContext = v13(a1, FigEndpointFeatures, 0, mxSystemRemotePool_endpointActivateCompletionCallback, v12);
    }

    else
    {
      EndpointActivateCompletionContext = 4294954514;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  return EndpointActivateCompletionContext;
}

void mxSystemRemotePool_handleAuthorizationRequiredDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v33 = 0;
    v34 = 0;
    v11 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(CMBaseObject, *MEMORY[0x1E69622F8], v11, &v34);
    }

    cf = 0;
    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (a2)
    {
      v15 = FigEndpointGetCMBaseObject();
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v16)
      {
        v16(v15, *MEMORY[0x1E69621E8], v11, &cf);
      }

      v17 = FigEndpointGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(v17, *MEMORY[0x1E69620F8], v11, &v33);
      }

      v19 = FigRoutingManagerCopyAuthInfoForEndpoint(a2, a5);
      FigCFDictionarySetValue();
      if (dword_1EB75DF20)
      {
        v31 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *&v25 = v19;
      *(&v25 + 1) = Mutable;
      v28 = a6;
      v29 = a7;
      v26 = v33;
      v27 = a2;
      FigEndpointAuthRequestHandler_ProcessRequest(&v25);
      if (dword_1EB75DF20)
      {
        v31 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v22 = v31;
        v23 = type;
        if (os_log_type_enabled(v21, type))
        {
          v24 = v22;
        }

        else
        {
          v24 = v22 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v35 = 136315394;
          v36 = "mxSystemRemotePool_handleAuthorizationRequiredDelegate";
          v37 = 2114;
          v38 = cf;
          _os_log_send_and_compose_impl(v24, 0, v39, 128, &dword_1B17A2000, v21, v23, "-FigRoutingManager_SystemRemotePool- %s: mxSystemRemotePool: Called AuthRequestHandler to process auth request for endpointName=%{public}@", &v35, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v19 = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v34)
    {
      CFRelease(v34);
      v34 = 0;
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v33)
    {
      CFRelease(v33);
    }
  }
}

void mxSystemRemotePool_handleEndpointFailedDelegate(const void *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
      CFRetain(a1);
      CFRetain(a3);
      v6 = *(SharedManager + 1);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __mxSystemRemotePool_handleEndpointFailedDelegate_block_invoke;
      v7[3] = &__block_descriptor_48_e5_v8__0l;
      v7[4] = a3;
      v7[5] = a1;
      MXDispatchAsync("mxSystemRemotePool_handleEndpointFailedDelegate", "FigRoutingManager_SystemRemotePool.m", 398, 0, 0, v6, v7);
    }
  }
}

void mxSystemRemotePool_endpointActivateCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
  if (a5)
  {
    v11 = *a5;
    v12 = *(a5 + 8);
    v13 = *(a5 + 32);
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
  }

  [v13 timeIntervalSinceNow];
  v15 = v14;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v11)
  {
    CFRetain(v11);
  }

  if (v12)
  {
    CFRetain(v12);
  }

  v16 = fabs(v15) * 1000.0;
  v17 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v18 = *(SharedManager + 1);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __mxSystemRemotePool_endpointActivateCompletionCallback_block_invoke;
  v19[3] = &unk_1E7AEC3E8;
  v19[4] = v17;
  v19[5] = a1;
  v20 = a4;
  v19[6] = a3;
  v19[7] = a2;
  v21 = v16;
  v19[8] = v12;
  v19[9] = v11;
  v19[10] = a5;
  MXDispatchAsync("mxSystemRemotePool_endpointActivateCompletionCallback", "FigRoutingManager_SystemRemotePool.m", 548, 0, 0, v18, v19);
}

uint64_t MXSystemRemotePool_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = 4294954296;
  if (a1 && a3)
  {
    v6 = routingManagerSystemRemotePool_copySubEndpointWithID(a1);
    if (v6)
    {
      v7 = v6;
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 88);
        if (v8)
        {
          v3 = v8(v7, a2, a3);
        }

        else
        {
          v3 = 4294954514;
        }

        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      CFRelease(v7);
    }

    else
    {
      if (dword_1EB75DF20)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 4294954294;
    }
  }

  return v3;
}

CFTypeRef routingManagerSystemRemotePool_copySubEndpointWithID(uint64_t a1)
{
  v16 = 0;
  FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&v16);
  v15 = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v16, &v15);
  theArray = 0;
  if (!v15)
  {
    goto LABEL_17;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = *MEMORY[0x1E695E480];
  v2(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
  if (!theArray)
  {
    goto LABEL_17;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_17;
  }

  v5 = Count;
  v6 = 0;
  v7 = *MEMORY[0x1E69620F8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    cf = 0;
    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, v7, v3, &cf);
    }

    if (FigCFEqual())
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v5 == ++v6)
    {
      goto LABEL_17;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (ValueAtIndex)
  {
    v11 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_17:
    v11 = 0;
  }

  if (v16)
  {
    CFRelease(v16);
    v16 = 0;
  }

  if (v15)
  {
    CFRelease(v15);
    v15 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v11;
}

uint64_t MXSystemRemotePool_SendData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(CFTypeRef, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v5 = 4294954296;
  if (a1 && a2 && a3)
  {
    v10 = routingManagerSystemRemotePool_copySubEndpointWithID(a1);
    if (v10)
    {
      v11 = v10;
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
        *v12 = a4;
        v12[1] = a5;
        VTable = CMBaseObjectGetVTable();
        v14 = *(VTable + 24);
        LODWORD(VTable) = VTable + 24;
        v15 = *(v14 + 96);
        if (!v15 || (VTable = v15(v11, a2, a3, routingManagerSystemRemotePool_sendDataCompletionCallback, v12), v5 = VTable, VTable == -12782))
        {
          v5 = 4294954514;
          routingManagerSystemRemotePool_sendDataCompletionCallback(VTable, a2, 4294954514, v12);
        }

        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        cf[0] = 0;
        FigRoutingManagerCopySystemContext(cf, 9u);
        a4(cf[0], a2, 4294954296, a5);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v5 = 0;
      }

      CFRelease(v11);
    }

    else
    {
      if (dword_1EB75DF20)
      {
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 4294954294;
    }
  }

  return v5;
}

void routingManagerSystemRemotePool_sendDataCompletionCallback(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    if (*a4)
    {
      cf[0] = 0;
      FigRoutingManagerCopySystemContext(cf, 9u);
      (*a4)(cf[0], a2, a3, a4[1]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    free(a4);
  }
}

uint64_t MXSystemRemotePool_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 4294954296;
  if (a1 && a2)
  {
    v4 = routingManagerSystemRemotePool_copySubEndpointWithID(a1);
    if (v4)
    {
      v5 = v4;
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v6 = *(*(CMBaseObjectGetVTable() + 24) + 104);
        if (v6)
        {
          v2 = v6(v5, a2);
        }

        else
        {
          v2 = 4294954514;
        }

        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      CFRelease(v5);
    }

    else
    {
      if (dword_1EB75DF20)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 4294954294;
    }
  }

  return v2;
}

void __mxSystemRemotePool_getDelegateContext_block_invoke()
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&cf);
  gDelegateContext = FigRoutingManagerCreateEndpointDelegateContext(cf, 0, 0);
  if (cf)
  {
    CFRelease(cf);
  }
}

void __mxSystemRemotePool_handleEndpointFailedDelegate_block_invoke(uint64_t a1)
{
  v20[22] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&v19);
  Value = CFDictionaryGetValue(*(a1 + 32), *MEMORY[0x1E6961690]);
  v18 = 0;
  FigCFDictionaryGetInt64IfPresent();
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 0;
  FigCFDictionaryGetInt32IfPresent();
  CFDictionaryGetValue(*(a1 + 32), *MEMORY[0x1E6961848]);
  if (Value)
  {
    v16 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69620F8], v3, &v16);
    }

    v7 = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(v7, *MEMORY[0x1E69621E8], v3, v20);
    }

    if (FigRoutingManagerIsEndpointActivated(Value))
    {
      v9 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(Value, 0);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      cf = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v19, &cf);
      if (cf)
      {
        v10 = *(a1 + 40);
        if (!v10 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
        {
          v10 = 0;
        }

        if (FigRoutingManagerRemoveEndpointFromAggregate(v10, Value, v19, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          FigRoutingManagerLogEndpointID(@"HandleEndpointFailedDelegate: Removed endpoint with ID", Value, @"from aggregate", 1);
        }
      }

      if (dword_1EB75DF20)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v20[0])
  {
    CFRelease(v20[0]);
    v20[0] = 0;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    CFRelease(v14);
  }
}

void __mxSystemRemotePool_endpointActivateCompletionCallback_block_invoke(uint64_t a1)
{
  cf[28] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  cf[0] = 0;
  if (*(a1 + 40))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 7);
  FigRoutingManagerRegisterForFigEndpointNotifications(*(a1 + 40));
  FigRoutingManagerContextUtilities_AddActivatedEndpoint(*(a1 + 72), *(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 64), 0);
  FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*(a1 + 72), *(a1 + 40), @"configUpdateReasonEndedSuccess", *(a1 + 64));
  FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 0);
  FigRoutingManagerDestroyEndpointActivateCompletionContext(*(a1 + 80));
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t FigEndpointUIAgentGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigEndpointUIAgentGetClassID_sRegisterFigEndpointUIAgentTypeOnce != -1)
  {
    FigEndpointUIAgentGetClassID_cold_1();
  }

  return sFigEndpointUIAgentClassID;
}

uint64_t __FigEndpointUIAgentGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigEndpointUIAgentClassDesc, ClassID, 1, &sFigEndpointUIAgentClassID);
}

uint64_t FigEndpointUIAgentGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigEndpointUIAgentGetClassID_sRegisterFigEndpointUIAgentTypeOnce != -1)
  {
    FigEndpointUIAgentGetClassID_cold_1();
  }

  v3 = sFigEndpointUIAgentClassID;

  return MEMORY[0x1EEDBB488](v3);
}

void mx_ioKit_hidEventCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  [a2 handleEvent:a4];

  objc_autoreleasePoolPop(v6);
}

void sub_1B1912178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MX_IOKit_Initialize()
{
  if (CMSMDeviceState_IsSecureMicrophoneSupported())
  {
    if (MX_IOKit_Initialize_onceToken != -1)
    {
      MX_IOKit_Initialize_cold_1();
    }
  }
}

uint64_t mx_ioKit_getSmartCoverState(CFArrayRef theArray, uint64_t a2)
{
  v2 = a2;
  v4 = 0;
  v5 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v4 < i; i = 0)
  {
    CFArrayGetValueAtIndex(theArray, v4);
    KeyboardEvent = IOHIDEventCreateKeyboardEvent();
    v8 = IOHIDServiceClientCopyEvent();
    if (v8)
    {
      v9 = v8;
      if (IOHIDEventGetIntegerValue())
      {
        v10 = v2;
      }

      else
      {
        v10 = 0;
      }

      v5 = v10 | v5;
      CFRelease(v9);
    }

    if (KeyboardEvent)
    {
      CFRelease(KeyboardEvent);
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return v5;
}

void MX_RunningBoardServices_StopMonitoringForPID(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    v2 = [MEMORY[0x1E69C75E0] identifierWithPid:a1];
    if (v2 && (v3 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:v2]) != 0)
    {
      v4 = v3;
      if (dword_1EB75DE60)
      {
        v11 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [gProcessPredicatesSetLock lock];
      v7 = [gProcessPredicatesSet copy];
      [gProcessPredicatesSet removeObject:v4];
      v8 = [gProcessPredicatesSet copy];
      [gProcessPredicatesSetLock unlock];
      if ([v7 isEqualToSet:v8])
      {
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __MX_RunningBoardServices_StopMonitoringForPID_block_invoke;
        v9[3] = &unk_1E7AEC550;
        v9[4] = v8;
        [gProcessMonitor updateConfiguration:v9];
        mx_runningBoardServices_removePIDFromApplicationStateCache([MEMORY[0x1E696AD98] numberWithInt:a1]);
      }
    }

    else
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t mx_runningBoardServices_removePIDFromApplicationStateCache(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if ([a1 unsignedIntValue])
  {
    [gApplicationStateCacheLock lock];
    if ([gApplicationStateCache objectForKey:a1])
    {
      [gApplicationStateCache removeObjectForKey:a1];
    }

    v2 = gApplicationStateCacheLock;

    return [v2 unlock];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t MX_RunningBoardServices_CopyHostDisplayIDForPID(uint64_t a1)
{
  v1 = [objc_msgSend(objc_msgSend(mx_runningBoardServices_getProcessHandleForPID(a1) "hostProcess")];

  return [v1 copy];
}

void MX_RunningBoardServices_DumpMonitoredProcessPredicates()
{
  v31 = *MEMORY[0x1E69E9840];
  if (mx_runningBoardServices_initializeMonitoring_onceToken != -1)
  {
    MX_RunningBoardServices_DumpMonitoredProcessPredicates_cold_1();
  }

  [gProcessPredicatesSetLock lock];
  v0 = [objc_msgSend(gProcessPredicatesSet "allObjects")];
  [gProcessPredicatesSetLock unlock];
  [gApplicationStateCacheLock lock];
  obj = [gApplicationStateCache copy];
  [gApplicationStateCacheLock unlock];
  v1 = &qword_1EB75D000;
  if (dword_1EB75DE60)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDebugUtility_PrintCollection(v0);
  if (dword_1EB75DE60)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        if (dword_1EB75DE60)
        {
          v8 = *(*(&v17 + 1) + 8 * i);
          v22 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v9 = v1;
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v11 = v22;
          v12 = type;
          if (os_log_type_enabled(v10, type))
          {
            v13 = v11;
          }

          else
          {
            v13 = v11 & 0xFFFFFFFE;
          }

          if (v13)
          {
            StringForApplicationState = CMSMUtility_GetStringForApplicationState([objc_msgSend(obj objectForKey:{v8), "unsignedIntValue"}]);
            v23 = 136315650;
            v24 = "MX_RunningBoardServices_DumpMonitoredProcessPredicates";
            v25 = 2114;
            v26 = v8;
            v27 = 2114;
            v28 = StringForApplicationState;
            LODWORD(v15) = 32;
            _os_log_send_and_compose_impl(v13, 0, v30, 128, &dword_1B17A2000, v10, v12, "-MX_RunningBoardServices- %s: %{public}@:\t\t %{public}@", &v23, v15);
          }

          v1 = v9;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v5);
  }
}

void MX_RunningBoardServices_InvalidateBackgroundDownloadProcessAssertion(void *a1)
{
  if (initializeLogging_onceToken != -1)
  {
    MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  mx_runningBoardServices_InvalidateProcessAssertion(a1);

  objc_autoreleasePoolPop(v2);
}

uint64_t mx_runningBoardServices_InvalidateProcessAssertion(void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return [a1 invalidate];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void MX_RunningBoardServices_InvalidateMediaPlaybackProcessAssertion(void *a1)
{
  if (initializeLogging_onceToken != -1)
  {
    MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  mx_runningBoardServices_InvalidateProcessAssertion(a1);

  objc_autoreleasePoolPop(v2);
}

BOOL MX_RunningBoardServices_IsAssertionValid(const void *a1)
{
  if (!a1)
  {
    return 1;
  }

  FigSimpleMutexLock();
  v2 = gProcessAssertionArray;
  v5.length = CFArrayGetCount(gProcessAssertionArray);
  v5.location = 0;
  v3 = CFArrayContainsValue(v2, v5, a1) != 0;
  FigSimpleMutexUnlock();
  return v3;
}

void *MX_RunningBoardServices_CreateMediaPlaybackProcessAssertionForPID(uint64_t a1, __CFString *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (initializeLogging_onceToken != -1)
  {
    MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  }

  if (a1 <= 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    MXAssertionForPID = mx_runningBoardServices_createMXAssertionForPID(a1, a2, 0);
    objc_autoreleasePoolPop(v4);
    return MXAssertionForPID;
  }
}

void *MX_RunningBoardServices_CreateBackgroundDownloadProcessAssertionForBundleIdentifier(__CFString *a1, __CFString *a2)
{
  v12[24] = *MEMORY[0x1E69E9840];
  if (initializeLogging_onceToken == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    LODWORD(v12[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_12;
  }

  MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a2)
  {
    v12[0] = 0;
    v4 = [MEMORY[0x1E69C75D0] handleForPredicate:objc_msgSend(MEMORY[0x1E69C7610] error:{"predicateMatchingBundleIdentifier:", a1), v12}];
    if (v12[0])
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      v7 = [v4 identity];
      v8 = [MEMORY[0x1E69C7640] targetWithProcessIdentity:v7];
      if (v8)
      {
        return mx_runningBoardServices_createAssertionForTarget(v8, a2, @"com.apple.coremedia", @"AssetDownload", 0);
      }

      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    }
  }

  else
  {
    LODWORD(v12[0]) = 0;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  }

LABEL_12:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

void MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID(uint64_t a1, void *a2, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (mx_runningBoardServices_initializeGlobalAssertionProperties_onceToken != -1)
  {
    MX_RunningBoardServices_InvalidateAssertion_cold_1();
  }

  context = objc_autoreleasePoolPush();
  FigSimpleMutexLock();
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, gProcessAssertionArray);
  v6 = 0;
  while (1)
  {
    if (!MutableCopy)
    {
      v15 = gProcessAssertionArray;
      gProcessAssertionArray = 0;
      if (!v15)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v6 >= CFArrayGetCount(MutableCopy))
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v6);
    v8 = [objc_msgSend(ValueAtIndex "explanation")];
    v9 = [a2 containsObject:ValueAtIndex];
    if (!v8 || v9)
    {
      ++v6;
    }

    else
    {
      v11 = gHostProcessAssertionDictionary;
      if (gHostProcessAssertionDictionary)
      {
        v11 = CFDictionaryContainsKey(gHostProcessAssertionDictionary, ValueAtIndex);
        if (v11)
        {
          [CFDictionaryGetValue(gHostProcessAssertionDictionary ValueAtIndex)];
          CFDictionaryRemoveValue(gHostProcessAssertionDictionary, ValueAtIndex);
        }
      }

      v12 = MXGetAssertionLog(v11, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v39 = "-MX_RunningBoardServices-";
        v40 = 2082;
        v41 = "MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID";
        v42 = 1024;
        v43 = 1119;
        v44 = 2048;
        v45 = ValueAtIndex;
        v46 = 1024;
        v47 = a3;
        v48 = 2114;
        v49 = a1;
        _os_log_impl(&dword_1B17A2000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalidating unaccounted assertion %p for reason %u as its explanation contains matching session id %{public}@", buf, 0x36u);
      }

      v13 = +[MXAudioStatistics sharedInstance];
      v14 = [ValueAtIndex explanation];
      [(MXAudioStatistics *)v13 sendSinglePerformanceMessageForAssertion:"MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID" explanation:v14 activity:kMXAudioStatistics_AssertionActivity_AssertionInvalidated];
      [ValueAtIndex invalidate];
      CFArrayRemoveValueAtIndex(MutableCopy, v6);
    }
  }

  v15 = gProcessAssertionArray;
  gProcessAssertionArray = MutableCopy;
  CFRetain(MutableCopy);
  if (v15)
  {
LABEL_16:
    CFRelease(v15);
  }

LABEL_17:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v16 = [gHostProcessAssertionDictionary mutableCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [v16 allKeys];
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        v23 = [v16 objectForKey:v22];
        v24 = [objc_msgSend(v23 "explanation")];
        v25 = [a2 containsObject:v22];
        if (v24 && (v25 & 1) == 0)
        {
          v27 = MXGetAssertionLog(v25, v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            v39 = "-MX_RunningBoardServices-";
            v40 = 2082;
            v41 = "MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID";
            v42 = 1024;
            v43 = 1148;
            v44 = 2048;
            v45 = v23;
            v46 = 1024;
            v47 = a3;
            v48 = 2114;
            v49 = a1;
            _os_log_impl(&dword_1B17A2000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalidating unaccounted assertion %p for reason %u as its explanation contains matching session id %{public}@", buf, 0x36u);
          }

          v28 = +[MXAudioStatistics sharedInstance];
          v29 = [v23 explanation];
          [(MXAudioStatistics *)v28 sendSinglePerformanceMessageForAssertion:"MX_RunningBoardServices_InvalidatePlaybackAssertionsContainingSessionID" explanation:v29 activity:kMXAudioStatistics_AssertionActivity_AssertionInvalidated];
          [v23 invalidate];
          [v16 removeObjectForKey:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  v30 = gHostProcessAssertionDictionary;
  gHostProcessAssertionDictionary = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  FigSimpleMutexUnlock();
  objc_autoreleasePoolPop(context);
}

uint64_t MX_RunningBoardServices_DumpAssertionInfo()
{
  v49 = *MEMORY[0x1E69E9840];
  if (mx_runningBoardServices_initializeGlobalAssertionProperties_onceToken != -1)
  {
    MX_RunningBoardServices_InvalidateAssertion_cold_1();
  }

  FigSimpleMutexLock();
  v0 = gProcessAssertionArray;
  v27 = gHostProcessAssertionDictionary;
  if ([gProcessAssertionArray count] || objc_msgSend(v27, "count"))
  {
    if (dword_1EB75DE60)
    {
      v37 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v2 = [v0 countByEnumeratingWithState:&v32 objects:v47 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v33;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v33 != v4)
          {
            objc_enumerationMutation(v0);
          }

          if (dword_1EB75DE60)
          {
            v6 = *(*(&v32 + 1) + 8 * i);
            v37 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v8 = v37;
            v9 = type;
            if (os_log_type_enabled(v7, type))
            {
              v10 = v8;
            }

            else
            {
              v10 = v8 & 0xFFFFFFFE;
            }

            if (v10)
            {
              v11 = [v6 explanation];
              v38 = 136315650;
              v39 = "MX_RunningBoardServices_DumpAssertionInfo";
              v40 = 2048;
              v41 = v6;
              v42 = 2114;
              v43 = v11;
              LODWORD(v26) = 32;
              _os_log_send_and_compose_impl(v10, 0, v48, 128, &dword_1B17A2000, v7, v9, "-MX_RunningBoardServices- %s: Process assertion %p explanation = %{public}@", &v38, v26);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v3 = [v0 countByEnumeratingWithState:&v32 objects:v47 count:16];
      }

      while (v3);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [v27 allKeys];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * j);
          v18 = [v27 objectForKey:v17];
          if (dword_1EB75DE60)
          {
            v19 = v18;
            v37 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v21 = v37;
            v22 = type;
            if (os_log_type_enabled(v20, type))
            {
              v23 = v21;
            }

            else
            {
              v23 = v21 & 0xFFFFFFFE;
            }

            if (v23)
            {
              v24 = [v19 explanation];
              v38 = 136315906;
              v39 = "MX_RunningBoardServices_DumpAssertionInfo";
              v40 = 2048;
              v41 = v17;
              v42 = 2048;
              v43 = v19;
              v44 = 2114;
              v45 = v24;
              LODWORD(v26) = 42;
              _os_log_send_and_compose_impl(v23, 0, v48, 128, &dword_1B17A2000, v20, v22, "-MX_RunningBoardServices- %s: Assertion %p Host Process assertion %p explanation %{public}@", &v38, v26);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v46 count:16];
      }

      while (v14);
    }
  }

  return FigSimpleMutexUnlock();
}

id __mx_runningBoardServices_initializeMonitoring_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (initializeLogging_onceToken != -1)
  {
    MX_RunningBoardServices_CopyBundleIdentifierForProcessID_cold_1();
  }

  gProcessPredicatesSetLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  gProcessPredicatesSet = objc_alloc_init(MEMORY[0x1E696AB50]);
  gApplicationStateCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  gApplicationStateCacheLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  if (dword_1EB75DE60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [MEMORY[0x1E69C75F8] monitorWithConfiguration:&__block_literal_global_28];
  gProcessMonitor = result;
  return result;
}

uint64_t __mx_runningBoardServices_initializeMonitoring_block_invoke_26(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E69C7630] descriptor];
  [v3 setValues:33];
  [v3 setEndowmentNamespaces:&unk_1F28AF5C0];
  [a2 setStateDescriptor:v3];
  [a2 setServiceClass:25];

  return [a2 setUpdateHandler:&__block_literal_global_35_0];
}

void __mx_runningBoardServices_initializeMonitoring_block_invoke_36(uint64_t a1, void *a2)
{
  [a2 setPredicates:{objc_msgSend(*(a1 + 32), "allObjects")}];
  v3 = *(a1 + 32);
}

uint64_t __mx_runningBoardServices_createAndStoreAssertionForPIDWithInvalidationHandler_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  for (i = 0; ; ++i)
  {
    Count = gProcessAssertionArray;
    if (gProcessAssertionArray)
    {
      Count = CFArrayGetCount(gProcessAssertionArray);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(gProcessAssertionArray, i);
    if (ValueAtIndex == a2)
    {
      v8 = ValueAtIndex;
      if (gHostProcessAssertionDictionary && CFDictionaryContainsKey(gHostProcessAssertionDictionary, ValueAtIndex))
      {
        [CFDictionaryGetValue(gHostProcessAssertionDictionary v8)];
        CFDictionaryRemoveValue(gHostProcessAssertionDictionary, v8);
      }

      CFArrayRemoveValueAtIndex(gProcessAssertionArray, i);
      return FigSimpleMutexUnlock();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t __mx_runningBoardServices_initializeGlobalAssertionProperties_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  gProcessAssertionArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  gHostProcessAssertionDictionary = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = FigReentrantMutexCreate();
  gProcessAssertionMutex = result;
  return result;
}

uint64_t __initializeLogging_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  result = fig_note_initialize_category_with_default_work();
  if ((dword_1EB75DE60 & 0x100) != 0)
  {
    dword_1EB75DE60 = 0;
  }

  return result;
}

uint64_t __mx_runningBoardServices_createAssertionForTarget_block_invoke()
{
  result = getpid();
  mx_runningBoardServices_createAssertionForTarget_pid = result;
  return result;
}

uint64_t CMSUtilityPredicate_HasSameAudioCategory(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 audioCategory];

  return FigCFEqual();
}

CFNumberRef CMSUtilityPredicate_IsSameClient(int a1, void *a2, CFNumberRef number)
{
  result = number;
  if (number)
  {
    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    v5 = [objc_msgSend(a2 "clientPID")];
    return (v5 == valuePtr);
  }

  return result;
}

void *CMSUtilityPredicate_IsSameClientAndNotStopped(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (!a2)
  {
    return 0;
  }

  result = [a2 isPlaying];
  if (result)
  {
    v5 = [objc_msgSend(a2 "clientPID")];
    return (v5 == valuePtr);
  }

  return result;
}

void *CMSUtility_GetIsPlaying(void *result)
{
  if (result)
  {
    return [result isPlaying];
  }

  return result;
}

void *CMSUtilityPredicate_BelongsToTheSameProcessAndIsActiveAndStopsWhenBackgrounded(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  result = objc_msgSend_isActive(a2);
  if (result)
  {
    v5 = [objc_msgSend(a2 "clientPID")];
    if (v5 == valuePtr)
    {
      return [a2 stopsWhenDeviceLocks];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *CMSUtilityPredicate_BelongsToTheSameProcessAndIsPlayingAndStopsWhenBackgrounded(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (!a2)
  {
    return 0;
  }

  result = [a2 isPlaying];
  if (!result)
  {
    return result;
  }

  v5 = [objc_msgSend(a2 "clientPID")];
  if (v5 == valuePtr)
  {
    return [a2 stopsWhenDeviceLocks];
  }

  else
  {
    return 0;
  }
}

void *CMSUtilityPredicate_IsActiveWithDisplayID(void x0_0, void *a1)
{
  result = objc_msgSend_isActive(a1);
  if (result)
  {
    [a1 displayID];
    return (FigCFEqual() != 0);
  }

  return result;
}

uint64_t CMSUtility_IsAudioCategoryAlertType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = [result audioCategory];
    if (result)
    {
      if (CFEqual([v1 audioCategory], @"WaterEjection"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"Ringtone"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"RingtonePreview"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"EmergencyAlert"))
      {
        return 1;
      }

      result = CFEqual([v1 audioCategory], @"EmergencyAlert_Muteable");
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CMSUtility_IsAudioCategoryNonLongFormPlayback(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = [result audioCategory];
    if (result)
    {
      if (CFEqual([v1 audioCategory], @"UserInterfaceSoundEffects"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"AmbientSound"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"LiveAudio"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"SoloAmbientSound"))
      {
        return 1;
      }

      if (CFEqual([v1 audioCategory], @"Multi"))
      {
        return 1;
      }

      result = -[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v1 audioCategory]);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CMSUtility_IsAudioCategoryLongFormPlayback(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = [result audioCategory];
    if (result)
    {
      if (CFEqual([v1 audioCategory], @"MediaPlayback"))
      {
        return 1;
      }

      result = CFEqual([v1 audioCategory], @"MediaPlaybackNoSpeaker");
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

id CMSMUtility_GetCurrentAudioDestinationForVoiceOverSession()
{
  v0 = @"VirtualAudioDevice_Default";
  if (CMSMDeviceState_IsVoiceOverOn())
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyVoiceOverSession];
    v2 = [v1 audioDestinationPriority];
    if (v1)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      v0 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v2];
    }
  }

  return v0;
}

uint64_t CMSUtility_IsSessionTheDefaultMusicApp(void *a1)
{
  [a1 displayID];
  [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp];

  return FigCFEqual();
}

BOOL CMSUtility_IsDoingSpokenAudio(void *a1)
{
  if (CMSMUtility_IsCarPlaySessionPresent())
  {
    [a1 audioMode];
    if (FigCFEqual())
    {
      return 0;
    }
  }

  [a1 audioMode];
  if (FigCFEqual())
  {
    return 1;
  }

  [a1 audioMode];
  return FigCFEqual() != 0;
}

uint64_t CMSUtility_IsDisruptiveWhenGoingActive(void *a1)
{
  outData = 1;
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([a1 audioCategory]);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([a1 audioMode]);
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(VADCategoryFromFigCategoryName, VADModeFromFigModeName, [a1 activationContext], objc_msgSend(a1, "allowedPortTypes"), objc_msgSend(a1, "prefersBluetoothHighQualityContentCapture"));
  *&inAddress.mSelector = *"rsidbolg";
  inAddress.mElement = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData))
  {
    outData = 1;
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  return outData;
}

uint64_t CMSUtility_IsAllowedToStopOthers(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ([a1 applicationState] == 8)
  {
    return 1;
  }

  if (![a1 applicationState])
  {
    return 1;
  }

  [a1 setApplicationState:CMSUtility_GetApplicationStateForSession(a1)];
  if ([a1 applicationState] == 8 || !objc_msgSend(a1, "applicationState"))
  {
    return 1;
  }

  if ([a1 applicationState] != 4)
  {
    if (!dword_1EB75DE40)
    {
      return 0;
    }

LABEL_26:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  if (!CMSUtility_HasBackgroundEntitlement(a1))
  {
    if (!dword_1EB75DE40)
    {
      return 0;
    }

    goto LABEL_26;
  }

  v2 = [objc_msgSend(objc_msgSend(a1 "hostProcessAttribution")];
  v3 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
  if (v3 == [objc_msgSend(a1 "clientPID")])
  {
    return 1;
  }

  if ([objc_msgSend(a1 "displayID")])
  {
    return 1;
  }

  if (CMSUtility_IsSessionTheDefaultMusicApp(a1))
  {
    return 1;
  }

  [a1 displayID];
  [+[MXSessionManager sharedInstance](MXSessionManager appAllowedToInitiatePlaybackTemporarily];
  if (FigCFEqual())
  {
    return 1;
  }

  if (+[MXSystemController isAppAllowedToInitiatePlayback:](MXSystemController, "isAppAllowedToInitiatePlayback:", [a1 displayID]))
  {
    return 1;
  }

  if ([MXSystemController isAppAllowedToInitiatePlayback:v2])
  {
    return 1;
  }

  if (CMSUtility_HasAssertionsToStartNonMixablePlayback(a1))
  {
    return 1;
  }

  [a1 audioCategory];
  if (FigCFEqual())
  {
    return 1;
  }

  if ([a1 hasPhoneCallBehavior])
  {
    return 1;
  }

  [a1 audioCategory];
  if (FigCFEqual() || [a1 clientPriority] == 10 || CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1) && CMSMUtility_IAPAppProcessIDIsUsingAccessory(objc_msgSend(a1, "displayID")))
  {
    return 1;
  }

  if (dword_1EB75DE40)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t CMSUtility_HasAssertionsToStartNonMixablePlayback(void *a1)
{
  v1 = MX_RunningBoardServices_CopyAssertionReasonsForPID([objc_msgSend(a1 "clientPID")]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v2, v5);
      UInt64 = FigCFNumberGetUInt64();
      if (UInt64 == 16 || UInt64 == 50004)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_9;
      }
    }

    v8 = 1;
  }

  CFRelease(v2);
  return v8;
}

uint64_t CMSUtility_IsAllowedToStopThisSession(void *a1, void *a2)
{
  result = CMSUtility_IsAllowedToStopOthers(a1);
  if (result)
  {
    return !a2 || [a2 applicationState] != 8;
  }

  return result;
}

uint64_t CMSUtility_IsReplayKitExtension(void *a1)
{
  v1 = MX_RunningBoardServices_CopyBundleExtensionPointID(a1);
  v2 = FigCFEqual();
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void *CMSUtility_GetAudioMode(void *result, const char *a2)
{
  if (result)
  {
    return [result audioMode];
  }

  return result;
}

uint64_t cmsutility_hasAssertionsToStartMixablePlayback(void *a1)
{
  v2 = MX_RunningBoardServices_CopyAssertionReasonsForPID([objc_msgSend(a1 "clientPID")]);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_17:
    HasGPSEntitlement = 1;
  }

  else
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      CFArrayGetValueAtIndex(v3, i);
      UInt64 = FigCFNumberGetUInt64();
      if (UInt64 > 9999)
      {
        if ((UInt64 - 10000) < 6 || UInt64 == 50002 || UInt64 == 50004)
        {
          goto LABEL_17;
        }
      }

      else if (UInt64 <= 0x17 && ((1 << UInt64) & 0x8937FE) != 0)
      {
        goto LABEL_17;
      }
    }

    HasGPSEntitlement = CMSUtility_HasGPSEntitlement(a1);
  }

  CFRelease(v3);
  return HasGPSEntitlement;
}

uint64_t cmsutility_hasAssertionsToStartMixableRecording(void *a1)
{
  v2 = MX_RunningBoardServices_CopyAssertionReasonsForPID([objc_msgSend(a1 "clientPID")]);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_17:
    HasGPSEntitlement = 1;
  }

  else
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      CFArrayGetValueAtIndex(v3, i);
      UInt64 = FigCFNumberGetUInt64();
      if (UInt64 > 9999)
      {
        if ((UInt64 - 10000) < 6 || UInt64 == 50002 || UInt64 == 50004)
        {
          goto LABEL_17;
        }
      }

      else if (UInt64 <= 0x17 && ((1 << UInt64) & 0x8917FE) != 0)
      {
        goto LABEL_17;
      }
    }

    HasGPSEntitlement = CMSUtility_HasGPSEntitlement(a1);
  }

  CFRelease(v3);
  return HasGPSEntitlement;
}

uint64_t CMSUtility_SessionWithPIDCanContinueAirPlayingVideoIfScreenIsLocked(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!CMSMDeviceState_ScreenIsBlanked() || !CMSMUtility_IsAirPlayVideoActive())
  {
    return 0;
  }

  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([objc_msgSend(v7 "clientPID")] == a1)
        {
          if ([v7 isPlaying])
          {
            [v7 audioCategory];
            if (FigCFEqual() || ([v7 audioCategory], FigCFEqual()) || (objc_msgSend(v7, "audioCategory"), FigCFEqual()))
            {
              v8 = 1;
              goto LABEL_18;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_18:

  return v8;
}

void *CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(void *a1)
{
  result = CMSUtility_HasBackgroundEntitlement(a1);
  if (result)
  {
    result = 1;
    if ([a1 displayID])
    {
      if (CFStringFind([a1 displayID], @"WebKit", 1uLL).length > 0)
      {
        return 0;
      }

      [a1 displayID];
      if (FigCFArrayContainsValue())
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CMSUtility_IsSessionWithPIDAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([objc_msgSend(v7 "clientPID")] == a1)
        {
          v8 = CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

uint64_t CMSUtility_HasGPSEntitlement(void *a1)
{
  if (([a1 hasFetchedGPSPrivileges] & 1) == 0)
  {
    [a1 setHasGPSPrivileges:{CMSUtility_FetchGPSEntitlementForSessionWithPID(objc_msgSend(objc_msgSend(a1, "clientPID"), "intValue"))}];
    [a1 setHasFetchedGPSPrivileges:1];
  }

  return [a1 hasGPSPrivileges];
}

BOOL CMSUtility_FetchGPSEntitlementForSessionWithPID(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"UIBackgroundModes", a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  v4 = v3 == CFArrayGetTypeID() && CMSMUtility_AllowedToUseGPSInBackground(v2);
  CFRelease(v2);
  return v4;
}

uint64_t CMSUtility_IsSomeOtherNonIDSClientActiveOnDestination(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isIDSMXCoreSession] & 1) == 0)
        {
          v10 = [v9 isHardwareSafetySession];
          if (v9 != a1 && (v10 & 1) == 0 && CMSUtility_IsNonIDSClientActiveOnDestination(v9, a2))
          {
            v11 = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

void *CMSUtility_IsNonIDSClientActiveOnDestination(void *a1, uint64_t a2)
{
  if ([a1 isIDSMXCoreSession])
  {
    return 0;
  }

  result = objc_msgSend_isActive(a1);
  if (result)
  {
    if (([a1 doesntActuallyPlayAudio] & 1) != 0 || (objc_msgSend(a1, "hwControlFlags") & 0x20000) == 0 && (objc_msgSend(a1, "hwControlFlags") & 2) == 0)
    {
      return 0;
    }

    v4 = [a1 audioDestinationPriority];
    if (a1)
    {
      if (v4)
      {
        [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v4];
      }
    }

    return (FigCFEqual() != 0);
  }

  return result;
}

uint64_t CMSUtility_IsSomeOtherNonIDSClientActiveWithNonDefaultVADConfiguration(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (v9 != a1 && CMSUtility_IsNonIDSClientActiveOnDestination(*(*(&v12 + 1) + 8 * v8), a2) && (CMSMVAUtility_GetVADCategoryFromFigCategoryName([v9 audioCategory]) != 1668505974 || CMSMVAUtility_GetVADModeFromFigModeName(objc_msgSend(v9, "audioMode")) != 1768776806))
        {
          v10 = 1;
          goto LABEL_14;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_14:

  return v10;
}

void *CMSUtility_GetClientName(void *result, const char *a2)
{
  if (result)
  {
    return [result clientName];
  }

  return result;
}

void *CMSUtility_GetDisplayID(void *result, const char *a2)
{
  if (result)
  {
    return [result displayID];
  }

  return result;
}

uint64_t CMSUtility_IsPlayingToSystemSoundLocalVAD(void *a1)
{
  v2 = [a1 audioDestinationPriority];
  if (a1 && v2)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v2];
  }

  return FigCFEqual();
}

void *CMSUtilityPredicate_IsPlayingAndPlaysToCarMainAudio(uint64_t a1, void *a2)
{
  result = [a2 isPlaying];
  if (result)
  {
    return CMSUtility_PlaysToCarMainAudio(a2);
  }

  return result;
}

uint64_t CMSUtility_GetStarkInterruptionContext(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v5 = result;
  *a3 = result;
  result = [a2 audioCategory];
  *(a3 + 32) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  if (!a2)
  {
    return result;
  }

  if (v5 == 1)
  {
    if (FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E610, @"PhoneCall") && (result = CMSMUtility_PhoneCallOrRingtoneExists(), !result))
    {
      *(a3 + 16) = -1;
    }

    else
    {
      result = CMSMUtility_IsPlayAndRecordCategory([a2 audioCategory]);
      if (!result)
      {
        [a2 audioCategory];
        result = FigCFEqual();
        if (!result)
        {
          return result;
        }
      }
    }

    *(a3 + 24) = -1;
    return result;
  }

  if (v5)
  {
    return result;
  }

  [a2 audioCategory];
  if (FigCFEqual())
  {
    v6 = -1;
LABEL_14:
    *(a3 + 24) = v6;
    goto LABEL_15;
  }

  if (CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(a2))
  {
    v6 = 10;
    goto LABEL_14;
  }

LABEL_15:
  result = [a2 hasPhoneCallBehavior];
  if ((result & 1) != 0 || ([a2 audioCategory], result = FigCFEqual(), result))
  {
    *(a3 + 16) = 1;
  }

  return result;
}

void CMSUtilityApplier_InheritApplicationStateAndPostApplicationStateDidChangeNotification(void *a1, const __CFNumber *a2)
{
  [objc_msgSend(a1 "clientPID")];
  SInt32 = FigCFNumberCreateSInt32();
  CMSessionMgrHandleApplicationStateChange(SInt32, a2, 0);
  if (SInt32)
  {

    CFRelease(SInt32);
  }
}

void CMSUtility_PostInterruptionCommandNotification(void *a1, unsigned int a2, __CFString *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = a2;
  v17 = CFGetAllocator(a1);
  v18 = CFNumberCreate(v17, kCFNumberSInt32Type, &valuePtr);
  if (v18)
  {
    v19 = v18;
    CFDictionarySetValue(Mutable, @"InterruptionCmd", v18);
    CFRelease(v19);
  }

  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = @"unknown interruptor";
  }

  CFDictionarySetValue(Mutable, @"InterruptorName", v20);
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"Status", a4);
  }

  if (a7)
  {
    CFDictionarySetValue(Mutable, @"InterruptionReason", a7);
  }

  if (a8)
  {
    CFDictionarySetValue(Mutable, @"InterruptorBundleID", a8);
  }

  v21 = [a1 applicationState];
  if (v21 == 2)
  {
    CFDictionarySetValue(Mutable, @"InterruptedDueToAppSuspension", *MEMORY[0x1E695E4D0]);
  }

  if (a5)
  {
    CFDictionarySetValue(Mutable, @"QuietVolume", a5);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, @"VolumeChangeDuration", a6);
  }

  IsAsyncDuckingEnabled = MX_FeatureFlags_IsAsyncDuckingEnabled(v21, v22);
  if ((a2 & 0xFFFFFFFE) == 2 && IsAsyncDuckingEnabled)
  {
    CFDictionarySetValue(Mutable, @"ModeAsync", *MEMORY[0x1E695E4D0]);
  }

  v24 = [a1 interruptingSession];
  v25 = [v24 audioSessionID];
  if (v25)
  {
    CFDictionarySetValue(Mutable, @"AudioSessionID", [MEMORY[0x1E696AD98] numberWithInt:v25]);
  }

  IsAirPlayVideoActive = CMSMUtility_IsAirPlayVideoActive();
  v27 = [objc_msgSend(a1 "clientPID")];
  v28 = [a1 audioSessionID];
  [MXSessionManagerBase postInterruptionCommandForAudioSessionID:v27 sessionID:v28 interruptiondCmd:valuePtr interruptionInfo:Mutable];
  if (IsAirPlayVideoActive)
  {
    if (a2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v29 = [a1 isAudioOnlyAirPlayVideoActive];
    if (a2 || (v29 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if ([v24 isTheAssistant] && CMSMUtility_IsCarPlayVideoActive() && objc_msgSend(a1, "isActiveOverAirPlayVideo"))
  {
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E118], @"KeepAirPlayVideoConnectionActive", 0}];
    CFDictionarySetValue(Mutable, @"KeepClientConnectionActive", *MEMORY[0x1E695E4D0]);
  }

  else
  {
    v30 = 0;
  }

  CMSMUtility_PostNotificationToSession(a1, @"AirPlayVideoWillBeInterrupted", v30);
LABEL_34:
  if ([a1 isCarSession])
  {
    CMSMUtility_PostNotificationToSession(a1, @"Interruption", Mutable);
    if (!Mutable)
    {
      return;
    }

LABEL_40:
    CFRelease(Mutable);
    return;
  }

  if (Mutable)
  {
    CFRetain(Mutable);
  }

  v31 = a1;
  v33 = MXGetNotificationSenderQueue(v31, v32);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __CMSUtility_PostInterruptionCommandNotification_block_invoke;
  v34[3] = &unk_1E7AEBCA0;
  v34[4] = a1;
  v34[5] = Mutable;
  MXDispatchAsync("CMSUtility_PostInterruptionCommandNotification", "CMSessionManager_SessionUtilities.m", 6873, 0, 0, v33, v34);
  if (Mutable)
  {
    goto LABEL_40;
  }
}

void *CMSUtilityApplier_ResumeWaitingLockStopper(void *result, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (([result isPlaying] & 1) != 0 || !objc_msgSend(v3, "waitingToResumeWhenDeviceUnlocksOrInForeground"))
    {
      if ([v3 wasInterruptedByNowPlayingApp])
      {
        v5 = *MEMORY[0x1E695E480];
        v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"non-resumable", [v3 audioCategory]);
        valuePtr[0] = 1060320051;
        v7 = CFNumberCreate(v5, kCFNumberFloat32Type, valuePtr);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(v3, 1u, [v3 clientName], v6, 0, v7, 0, 0);
        if (v7)
        {
          CFRelease(v7);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        [v3 setWasInterruptedByNowPlayingApp:0];
      }
    }

    else
    {
      cmsSetIsPlaying(v3, 1);
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_PostInterruptionCommandNotification(v3, 5u, 0, 0, 0, 0, 0, 0);
      *a2 = 1;
      if ([v3 wasRecordingBeforeBeingInterrupted])
      {
        [v3 setIsRecording:1];
        [v3 setWasRecordingBeforeBeingInterrupted:0];
        [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
      }
    }

    return [v3 setWaitingToResumeWhenDeviceUnlocksOrInForeground:0];
  }

  return result;
}

void CMSUtilityApplier_PostNotification_StopCommandWithReason(void *a1, unsigned __int8 *a2, const void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = *a2;
      v6 = CMSUtility_CopyFadeDuration(0, 0, v5);
      if (v5)
      {
        CMSMUtility_PostNotifyStyleFadeOutAppliedForPlaybackHandoff();
      }
    }

    else
    {
      v6 = CMSUtility_CopyFadeDuration(0, 0, 0);
    }

    CMSUtility_PostInterruptionCommandNotification(a1, 0, @"CMSessionManager", 0, 0, v6, a3, 0);
    if ([a1 needToEndInterruption])
    {
      MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, @"interrupted", 1);
    }

    if (objc_msgSend_isActive(a1))
    {
      cmsSetIsActive(a1, 0, 0);
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }
}

void CMSUtilityApplier_PostNotificationToBackgroundedSession_StopCommand(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CMSUtility_CopyFadeDuration(0, 0, 0);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSUtility_PostInterruptionCommandNotification(a1, 0, @"CMSessionManager", 0, 0, v2, 0, 0);
    if (v2)
    {
      CFRelease(v2);
    }

    if ([a1 needToEndInterruption])
    {
      if ([a1 wantsToSendResumableEndInterruptionWhenBackgrounded])
      {
        v4 = @"resumable.backgrounded";
      }

      else
      {
        v4 = @"interrupted";
      }

      MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, v4, 1);
    }

    if (objc_msgSend_isActive(a1))
    {
      cmsSetIsActive(a1, 0, 0);
    }
  }
}

void CMSUtilityApplier_PostNotificationToLockStoppers_StopCommand(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CMSUtility_CopyFadeDuration(0, 0, 0);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSUtility_PostInterruptionCommandNotification(a1, 0, @"CMSessionManager", 0, 0, v2, 0, 0);
    if ([a1 wantsToSendResumableEndInterruptionWhenBackgrounded])
    {
      v4 = @"resumable.backgrounded";
    }

    else
    {
      v4 = @"backgrounded";
    }

    MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, v4, 1);
    if (objc_msgSend_isActive(a1))
    {
      cmsSetIsActive(a1, 0, 0);
    }

    [a1 setWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground:1];
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

void *CMSUtilityApplier_PostNotification_EndInterruptionCommand(void *result, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if ((objc_msgSend_isActive(result, a2) & 1) == 0 && [v2 waitingForEndInterruptionWhenDeviceUnlocksOrInForeground])
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", @"non-resumable", objc_msgSend(v2, "audioCategory")];
      valuePtr[0] = 1060320051;
      v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_PostInterruptionCommandNotification(v2, 1u, [v2 clientName], v3, 0, v4, 0, 0);
    }

    return [v2 setWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground:0];
  }

  return result;
}

uint64_t CMSUtilityApplier_PostNotification_PauseCommand(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 isPlaying];
  }

  else
  {
    v2 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSUtility_PostInterruptionCommandNotification(a1, 4u, 0, 0, 0, 0, 0, 0);
  cmsSetIsPlaying(a1, 0);
  CMSMSleep_ReleasePlaybackProcessAssertion(a1);
  if ([a1 needToEndInterruption])
  {
    MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, @"backgrounded", 1);
  }

  if (objc_msgSend_isActive(a1))
  {
    cmsSetIsActive(a1, 0, 0);
  }

  [objc_msgSend(a1 "clientPID")];
  SInt32 = FigCFNumberCreateSInt32();
  if (-[NSArray containsObject:](-[MXSessionManager recordingClientPIDs](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "recordingClientPIDs"), "containsObject:", SInt32) && [a1 isRecording])
  {
    [a1 setIsRecording:0];
    [a1 setWasRecordingBeforeBeingInterrupted:1];
    [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  return [a1 setWaitingToResumeWhenDeviceUnlocksOrInForeground:v2];
}

void *CMSUtilityApplier_PostNotification_ResumeCommand(void *result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (([result isPlaying] & 1) != 0 || !objc_msgSend(v1, "waitingToResumeWhenDeviceUnlocksOrInForeground"))
    {
      if ([v1 wasInterruptedByNowPlayingApp])
      {
        v3 = *MEMORY[0x1E695E480];
        v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"non-resumable", [v1 audioCategory]);
        valuePtr[0] = 1060320051;
        v5 = CFNumberCreate(v3, kCFNumberFloat32Type, valuePtr);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(v1, 1u, [v1 clientName], v4, 0, v5, 0, 0);
        if (v5)
        {
          CFRelease(v5);
        }

        if (v4)
        {
          CFRelease(v4);
        }

        [v1 setWasInterruptedByNowPlayingApp:0];
      }
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_PostInterruptionCommandNotification(v1, 5u, 0, 0, 0, 0, 0, 0);
      if ([v1 wasRecordingBeforeBeingInterrupted])
      {
        [v1 setIsRecording:1];
        [v1 setWasRecordingBeforeBeingInterrupted:0];
        [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
      }
    }

    return [v1 setWaitingToResumeWhenDeviceUnlocksOrInForeground:0];
  }

  return result;
}

void CMSUtility_DeactivateTimerHandler(void *a1, double a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = CMSMUtility_CopyMXCoreSessionWithID(a1);
  if (v2)
  {
    v3 = v2;
    if ([v2 isMemberOfClass:objc_opt_class()])
    {
      if (objc_msgSend_isActive(v3) && ([v3 isPlaying] & 1) == 0 && objc_msgSend(v3, "sessionDeactivateTimer"))
      {
        dispatch_source_cancel([v3 sessionDeactivateTimer]);
        [v3 setSessionDeactivateTimer:0];
        if (-[MXSessionManager isAirPlaySession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAirPlaySession:", v3) && [v3 reporterStarted])
        {
          CMSUtility_StopReporterWithAudioStatistics(v3);
        }

        else
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommandWithReason(v3, 0, 0);
        }
      }
    }
  }
}

CFIndex CMSUtility_StopReporterWithAudioStatistics(void *a1)
{
  valuePtr[21] = *MEMORY[0x1E69E9840];
  result = [a1 reporterIDs];
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v3 = result;
      for (i = 0; i != v3; ++i)
      {
        valuePtr[0] = 1;
        ValueAtIndex = CFArrayGetValueAtIndex([a1 reporterIDs], i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, valuePtr);
        [a1 setReporterStarted:0];
        result = off_1EB75E008(valuePtr[0]);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  return result;
}

void CMSUtility_InterruptSessionForSecureMicrophonePolicy(void *a1)
{
  if (a1)
  {
    SInt32 = FigCFNumberCreateSInt32();
    CMSUtility_PostInterruptionCommandNotification(a1, 0, @"CMSessionManager", 0, 0, 0, SInt32, 0);
    MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, @"interrupted.securemicrophoneengaged", 1);
    if (SInt32)
    {

      CFRelease(SInt32);
    }
  }
}

void CMSMUtility_UpdateRecordingAccessIntervals(void *a1)
{
  v2 = [a1 auditTokenSetByClient];
  if (a1)
  {
    objc_msgSend_auditToken(a1);
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v3 = MX_PrivacyAccounting_CreateRecordingAccessIntervals(v2, &v4, [objc_msgSend(a1 clientPID], objc_msgSend(a1, "hostProcessAttribution"), objc_msgSend(a1, "displayID"));
  MX_PrivacyAccounting_EndRecordingAccessIntervals([a1 bundleIdToPAAccessIntervalMap]);
  [a1 setBundleIdToPAAccessIntervalMap:v3];
}

void *CMSUtility_IsSessionPlayingLongFormAudio(void *result)
{
  if (result)
  {
    [result audioCategory];
    return (FigCFEqual() != 0);
  }

  return result;
}

uint64_t CMSUtility_StartReporterWithAudioStatistics(void *a1)
{
  valuePtr[21] = *MEMORY[0x1E69E9840];
  result = [objc_msgSend(a1 "reporterIDs")];
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      valuePtr[0] = 1;
      ValueAtIndex = CFArrayGetValueAtIndex([a1 reporterIDs], i);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, valuePtr);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      off_1EB75E000(valuePtr[0]);
      result = [a1 setReporterStarted:1];
    }
  }

  return result;
}

void CMSUtility_SendSessionReinterruptionDisallowedEventToAudioStatistics(void *a1, int a2, int a3, float a4)
{
  if (a1 && [objc_msgSend(a1 "reporterIDs")])
  {
    valuePtr = 1;
    ValueAtIndex = CFArrayGetValueAtIndex([a1 reporterIDs], 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [a1 displayID];
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetFloat32();
    off_1EB75E028(valuePtr, Mutable, 11, 6);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

CFMutableArrayRef CMSUtility_CopyPickableRoutesForSession(void *a1)
{
  v2 = CMSUtility_CopyNonNULLCategoryForPickingRoutes(a1);
  v3 = CMSUtility_CopyNonNULLModeForPickingRoutes(a1);
  v4 = CMSUtility_CopyAllowedPortTypesArrayForPickingRoutes(a1);
  v5 = CMSUtility_CopyActivationContextForPickingRoutes(a1);
  v6 = cmsmCopyPickableRoutesForRouteConfiguration(v2, v3, v5, v4, [a1 prefersBluetoothHighQualityContentCapture]);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t CMSUtility_UpdateAlarmBehaviorOnAccessory(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if ([a1 hasAudioMode:@"Sleep"])
  {
    if (dword_1EB75DE40)
    {
      v28 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_39:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if (v8 != a1 && objc_msgSend_isActive(*(*(&v23 + 1) + 8 * i)) && [v8 isPlaying] && CMSUtility_IsDoingSpokenAudio(v8))
        {
          IsOnlyRoutedToSelf = FigRoutingManagerContextUtilities_IsOnlyRoutedToSelf([v8 routingContextUUID]);
          IsOnlyRoutedToLocalStereoPair = FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalStereoPair([v8 routingContextUUID]);
          goto LABEL_17;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v35 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  IsOnlyRoutedToLocalStereoPair = 0;
  IsOnlyRoutedToSelf = 0;
LABEL_17:

  if (IsOnlyRoutedToSelf || IsOnlyRoutedToLocalStereoPair)
  {
    if (dword_1EB75DE40)
    {
      v28 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = v28;
      v18 = type;
      if (os_log_type_enabled(v16, type))
      {
        v19 = v17;
      }

      else
      {
        v19 = v17 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = @"NO";
        v30 = "CMSUtility_UpdateAlarmBehaviorOnAccessory";
        if (IsOnlyRoutedToSelf)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v29 = 136315650;
        v31 = 2114;
        v32 = v21;
        if (IsOnlyRoutedToLocalStereoPair)
        {
          v20 = @"YES";
        }

        v33 = 2114;
        v34 = v20;
        _os_log_send_and_compose_impl(v19, 0, v36, 128, &dword_1B17A2000, v16, v18, "-CMSUtilities- %s: Alarms will interrupt the SpokenAudio session because we are either routed to this single speaker (%{public}@) or playing on stereo pair (%{public}@)", COERCE_DOUBLE(136315650), &v29, 32);
      }

      goto LABEL_39;
    }

LABEL_40:
    v15 = 8;
    return [a1 updateInterruptionStyle:v15];
  }

  if (([a1 duckFadeDurationSetByClient] & 1) == 0)
  {
    LODWORD(v11) = 0.5;
    [a1 setDuckFadeDuration:v11];
  }

  if (([a1 unduckFadeDurationSetByClient] & 1) == 0)
  {
    LODWORD(v12) = 0.5;
    [a1 setUnduckFadeDuration:v12];
  }

  if (([a1 duckToLevelScalarSetByClient] & 1) == 0)
  {
    LODWORD(v13) = 1045220557;
    [a1 setDuckToLevelScalar:v13];
  }

  if (([a1 duckToLevelDBSetByClient] & 1) == 0)
  {
    LODWORD(v14) = -1038090240;
    [a1 setDuckToLevelDB:v14];
  }

  v15 = 32;
  return [a1 updateInterruptionStyle:v15];
}

float CMSUtility_GetVolumeDeltaIfRoutedToThirdPartyTV(void *a1, float a2)
{
  theArray = 0;
  if (a1)
  {
    FigRoutingManagerCopyPickedEndpointsForRoutingContext([a1 routingContextUUID], &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v4 = Count;
        v5 = 0;
        v6 = 0;
        v7 = flt_1B19D90B8[a2 < 0.0];
        do
        {
          CFArrayGetValueAtIndex(theArray, v5);
          IsEndpointThirdPartyTVFamily = FigEndpointUtility_IsEndpointThirdPartyTVFamily();
          if (v4 == v6 + 1)
          {
            v9 = v7;
          }

          else
          {
            v9 = a2;
          }

          if (IsEndpointThirdPartyTVFamily)
          {
            ++v6;
            a2 = v9;
          }

          ++v5;
        }

        while (v4 != v5);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }
  }

  return a2;
}

void *CMSUtility_SetAirPlayVideoIsActive(void *result, const char *a2)
{
  if (result)
  {
    return [result setIsActiveOverAirPlayVideo:a2 != 0];
  }

  return result;
}

void *CMSUtility_SetAudioOnlyAirPlayVideoIsActive(void *result, const char *a2)
{
  if (result)
  {
    return [result setIsAudioOnlyAirPlayVideoActive:a2 != 0];
  }

  return result;
}

uint64_t CMSUtility_DoesSessionRemainActiveAfterStoppingPlaying(void *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isActive(a1, a2))
  {
    return 0;
  }

  if ([a1 isPlaying])
  {
    return 0;
  }

  if (![a1 isPlayingStopTime])
  {
    return 0;
  }

  if (![a1 isPlayingStartTime])
  {
    return 0;
  }

  [objc_msgSend(MEMORY[0x1E695DF00] "now")];
  if (v3 <= 0.0)
  {
    return 0;
  }

  [objc_msgSend(a1 "isPlayingStopTime")];
  if (v4 <= 0.0)
  {
    return 0;
  }

  if (!dword_1EB75DE40)
  {
    return 1;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v7 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v7;
}

uint64_t CMSUtility_IsSessionPlayStateEligibleForTipi(void *a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isActive(a1, a2) & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
LABEL_6:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if (CMSUtility_DoesSessionRemainActiveAfterStoppingPlaying(a1, v3))
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_6;
    }

    return 0;
  }

  return 1;
}

uint64_t CMSUtility_GetIsActuallyPlayingAudio(void *a1)
{
  if (a1)
  {
    return [a1 doesntActuallyPlayAudio] ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t CMSUtility_GetClientPID(void *a1)
{
  v1 = [a1 clientPID];

  return [v1 intValue];
}

void *CMSUtility_GetIsRecording(void *result)
{
  if (result)
  {
    return [result isRecording];
  }

  return result;
}

void *CMSUtility_GetPrefersSuppressingRecordingState(void *result)
{
  if (result)
  {
    return [result prefersSuppressingRecordingState];
  }

  return result;
}

void *CMSUtility_GetOptOutOfMutePriority(void *result)
{
  if (result)
  {
    return [result optOutOfMutePriority];
  }

  return result;
}

void *CMSUtility_GetPrefersToTakeHWControlFlagsFromAnotherSession(void *result)
{
  if (result)
  {
    return [result prefersToTakeHWControlFlagsFromAnotherSession];
  }

  return result;
}

void *CMSUtility_GetPrefersMultichannelAudio(void *result)
{
  if (result)
  {
    return [result prefersMultichannelAudio];
  }

  return result;
}

BOOL CMSUtility_GetWantsAutomaticClusterPairingOnPlaybackStart(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!CMSMDeviceState_ItsAHomePod())
  {
    v3 = CMSMDeviceState_ItsAnAppleTV();
    return v3 != 0;
  }

  if ([a1 wantsAutomaticClusterPairingOnPlaybackStart])
  {
    return 1;
  }

  [a1 displayID];
  v2 = 1;
  if (!FigCFStringFind())
  {
    [a1 displayID];
    v2 = 1;
    if (!FigCFStringFind())
    {
      [a1 displayID];
      v2 = 1;
      if (!FigCFStringFind())
      {
        [a1 displayID];
        v2 = 1;
        if (!FigCFStringFind())
        {
          [a1 displayID];
          v3 = FigCFStringFind();
          return v3 != 0;
        }
      }
    }
  }

  return v2;
}

uint64_t CMSUtility_GetCoreSessionID(void *a1)
{
  v1 = [a1 ID];

  return [v1 longLongValue];
}

id CMSUtility_CopyCurrentRouteTypeAtIndex(void *a1, CFIndex a2)
{
  v4 = @"VirtualAudioDevice_Default";
  v5 = [a1 audioDestinationPriority];
  if (a1 && v5)
  {
    v4 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v5];
  }

  v6 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, v4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  if (Count)
  {
    v9 = Count <= a2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    PortAtIndex = CMSMVAUtility_GetPortAtIndex(v7, a2);
    PortTypeFromPortID = vaeGetPortTypeFromPortID(PortAtIndex);
    v12 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
  }

  CFRelease(v7);
  return v12;
}

BOOL CMSUtility_ShouldSkipDuckingForSystemSounds(void *a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  [a1 audioCategory];
  if (FigCFEqual() || [a1 interruptionStyle] == 32 || CMSUtility_IsDoingSpokenAudio(a1) || objc_msgSend(a1, "hasPhoneCallBehavior"))
  {
    if (dword_1EB75DE40)
    {
LABEL_6:
      v46 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_46:
      v7 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return v7;
    }

    return 1;
  }

  v5 = [a1 routingContextUUID];
  if (!CMSMDeviceState_ItsAHomePod())
  {
    if (([a1 isCarSession] & 1) == 0)
    {
      CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a1);
      if (CurrentOutputVADID == a2)
      {
LABEL_37:
        if (!FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(v5) && !FigRoutingManagerContextUtilities_IsContextVideoAndIndependent(v5))
        {
          return 0;
        }

        if (dword_1EB75DE40)
        {
          v46 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v27 = v46;
          v28 = type;
          if (os_log_type_enabled(v26, type))
          {
            v29 = v27;
          }

          else
          {
            v29 = v27 & 0xFFFFFFFE;
          }

          if (v29)
          {
            v30 = [a1 clientName];
            v49 = 136315650;
            v50 = "CMSUtility_ShouldSkipDuckingForSystemSounds";
            v51 = 2048;
            v52 = a1;
            v53 = 2114;
            v54 = v30;
            _os_log_send_and_compose_impl(v29, 0, v55, 128, &dword_1B17A2000, v26, v28, "-CMSUtilities- %s: Skip ducking session [%p] '%{public}@' since session's routing context is SystemMusic/Video and independent", &v49, 32);
          }

          goto LABEL_46;
        }
      }

      else
      {
        v9 = CurrentOutputVADID;
        v10 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", a2];
        v11 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", v9];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v36 = v10;
        v12 = [objc_msgSend(v10 objectForKey:{@"RouteDetailedDescription_Outputs", "allObjects"}];
        v34 = [v12 countByEnumeratingWithState:&v41 objects:v48 count:16];
        if (v34)
        {
          v13 = *v42;
          v35 = v11;
          v33 = v12;
          v32 = *v42;
          do
          {
            v14 = 0;
            do
            {
              if (*v42 != v13)
              {
                objc_enumerationMutation(v12);
              }

              v15 = [*(*(&v41 + 1) + 8 * v14) objectForKey:@"RouteDetailedDescription_ID"];
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v16 = [objc_msgSend(v11 objectForKey:{@"RouteDetailedDescription_Outputs", "allObjects"}];
              v17 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v38;
                while (2)
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v38 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    if ([v15 isEqualToNumber:{objc_msgSend(*(*(&v37 + 1) + 8 * i), "objectForKey:", @"RouteDetailedDescription_ID"}])
                    {

                      goto LABEL_37;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v14;
              v11 = v35;
              v12 = v33;
              v13 = v32;
            }

            while (v14 != v34);
            v34 = [v33 countByEnumeratingWithState:&v41 objects:v48 count:16];
          }

          while (v34);
        }

        if (dword_1EB75DE40)
        {
          v46 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v22 = v46;
          v23 = type;
          if (os_log_type_enabled(v21, type))
          {
            v24 = v22;
          }

          else
          {
            v24 = v22 & 0xFFFFFFFE;
          }

          if (v24)
          {
            v25 = [a1 clientName];
            v49 = 136315650;
            v50 = "CMSUtility_ShouldSkipDuckingForSystemSounds";
            v51 = 2048;
            v52 = a1;
            v53 = 2114;
            v54 = v25;
            _os_log_send_and_compose_impl(v24, 0, v55, 128, &dword_1B17A2000, v21, v23, "-CMSUtilities- %s: Skip ducking session [%p] '%{public}@' since system sound is playing to a different output port", &v49, 32);
          }

          goto LABEL_46;
        }
      }

      return 1;
    }

    return 0;
  }

  if (FigRoutingManagerContextUtilities_IsOnlyRoutedToSelf(v5))
  {
    return 0;
  }

  IsOnlyRoutedToLocalStereoPair = FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalStereoPair(v5);
  v7 = !IsOnlyRoutedToLocalStereoPair;
  if (!IsOnlyRoutedToLocalStereoPair && dword_1EB75DE40)
  {
    goto LABEL_6;
  }

  return v7;
}

uint64_t CMSUtility_IsAnyPortOfTypeBT(const __CFArray *a1)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v3 = Count;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      ValueUInt32 = MXCFNumberGetValueUInt32(ValueAtIndex);
      if (ValueUInt32 == 1885892674 || ValueUInt32 == 1885892706 || ValueUInt32 == 1886152047)
      {
        v4 = 1;
      }

      if (ValueUInt32 == 1885892674)
      {
        break;
      }

      if (ValueUInt32 == 1885892706)
      {
        break;
      }

      if (ValueUInt32 == 1886152047)
      {
        break;
      }
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t CMSUtility_SomeOtherPrimaryAudioCategoryClientIsPlaying(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        if ([v7 isPlaying])
        {
          v8 = [v7 doesntActuallyPlayAudio];
          if (v7 != a1 && (v8 & 1) == 0 && CMSUtility_IsAudioCategoryPrimary(v7, v9, v10, v11, v12, v13, v14, v15))
          {
            v16 = 1;
            goto LABEL_14;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  return v16;
}

uint64_t CMSUtility_DoPickedEndpointsForSessionContainDeviceIdentifier(void *a1, uint64_t a2)
{
  v2 = a2;
  theArray = 0;
  if (a2)
  {
    FigRoutingManagerContextUtilities_CopyPickedEndpoints([a1 routingContextUUID], &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count < 1)
      {
LABEL_12:
        v2 = 0;
      }

      else
      {
        v4 = Count;
        v5 = 0;
        v6 = *MEMORY[0x1E69620F8];
        v7 = *MEMORY[0x1E695E480];
        while (1)
        {
          CFArrayGetValueAtIndex(theArray, v5);
          theString = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v9)
          {
            v9(CMBaseObject, v6, v7, &theString);
          }

          if (theString)
          {
            HasPrefix = CFStringHasPrefix(theString, v2);
            if (theString)
            {
              CFRelease(theString);
            }

            if (HasPrefix)
            {
              break;
            }
          }

          if (v4 == ++v5)
          {
            goto LABEL_12;
          }
        }

        v2 = 1;
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t soft_nw_release(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getnw_releaseSymbolLoc_ptr;
  v9 = getnw_releaseSymbolLoc_ptr;
  if (!getnw_releaseSymbolLoc_ptr)
  {
    v3 = NetworkLibrary();
    v7[3] = dlsym(v3, "nw_release");
    getnw_releaseSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

void sub_1B191A574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B191A644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *MX_NetworkObserver_IsCarrierNetworkReachable()
{
  if (mx_networkObserver_Initialize_onceToken != -1)
  {
    MX_NetworkObserver_IsCarrierNetworkReachable_cold_1();
  }

  result = gNetworkObserver;
  if (gNetworkObserver)
  {
    return [gNetworkObserver isCarrierNetworkReachable];
  }

  return result;
}

void *__getnw_path_monitor_create_with_typeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_create_with_type");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_create_with_typeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NetworkLibrary()
{
  v3 = 0;
  v0 = NetworkLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

uint64_t NetworkLibraryCore(uint64_t a1)
{
  if (!NetworkLibraryCore_frameworkLibrary)
  {
    NetworkLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return NetworkLibraryCore_frameworkLibrary;
}

uint64_t __NetworkLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NetworkLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getnw_path_monitor_set_update_handlerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_set_update_handler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_set_update_handlerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_monitor_set_queueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_set_queue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_set_queueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_monitor_startSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_start");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_startSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_create_evaluator_for_endpointSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_create_evaluator_for_endpoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_create_evaluator_for_endpointSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_evaluator_copy_pathSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_evaluator_copy_path");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_evaluator_copy_pathSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_releaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_release");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_releaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_monitor_cancelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_cancel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_cancelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_retainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_retain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_retainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_get_statusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_get_status");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_get_statusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void figEndpointDescriptorUtility_addAirPlayDetailsToDescriptor(uint64_t a1, CFMutableDictionaryRef theDict)
{
  if (!theDict)
  {
    return;
  }

  v4 = *MEMORY[0x1E695E4C0];
  CFDictionarySetValue(theDict, @"IsBTRoute", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(theDict, @"AudioRouteName", @"AirTunes");
  figEndpointDescriptorUtility_setAirPlayFeatures(a1, theDict);
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D8], theDict, @"RouteModel");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621B8], theDict, @"Manufacturer");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620B0], theDict, @"FirmwareVersion");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962248], theDict, @"SerialNumber");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622E8], theDict, @"TightSyncUUID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622E0], theDict, @"TightSyncIsGroupLeader");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622D8], theDict, @"TightSyncBuddyNotReachable");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962220], theDict, @"PersistentGroupUUID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962038], theDict, @"ClusterLeaderUUID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962128], theDict, @"IsClusterLeader");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962040], theDict, @"ClusterSize");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962048], theDict, @"ClusterType");
  theArray = 0;
  v5 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x1E6962028], v5, &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) >= 1)
      {
        CFDictionarySetValue(theDict, @"ClusterComposition", theArray);
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }
  }

  v23 = 0;
  v8 = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, *MEMORY[0x1E6962030], v5, &v23);
    if (v23)
    {
      if (CFArrayGetCount(v23) >= 1)
      {
        CFDictionarySetValue(theDict, @"ClusterHierarchy", v23);
      }

      if (v23)
      {
        CFRelease(v23);
        v23 = 0;
      }
    }
  }

  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962108], theDict, @"IsAppleMusicSubscriber");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962020], theDict, @"CloudLibraryIsOn");
  figEndpointDescriptorUtility_setAirPlayRouteSubType(a1, theDict);
  IsEndpointSelfOnlyLocalAirPlay = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a1);
  v11 = kFigEndpointDescriptor_RouteType_Default;
  if (!IsEndpointSelfOnlyLocalAirPlay)
  {
    v11 = kFigEndpointDescriptor_RouteType_Wireless;
  }

  CFDictionarySetValue(theDict, @"RouteType", *v11);
  cf = 0;
  v12 = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, *MEMORY[0x1E6961FD0], v5, &cf);
  }

  v14 = FigCFEqual();
  v15 = MEMORY[0x1E695E4D0];
  if (v14)
  {
    CFDictionarySetValue(theDict, @"RouteRequiresPassword", *MEMORY[0x1E695E4D0]);
  }

  else
  {
    v18 = FigCFEqual();
    CFDictionarySetValue(theDict, @"RouteRequiresPassword", v4);
    if (v18)
    {
      v17 = *v15;
      v16 = theDict;
      goto LABEL_23;
    }
  }

  v16 = theDict;
  v17 = v4;
LABEL_23:
  CFDictionarySetValue(v16, @"RouteRequiresAirPlayPIN", v17);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962190], theDict, @"IsWHAGroupable");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622C0], theDict, @"SupportsRelay");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622A8], theDict, @"SupportsFitnessUIOverlay");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D0], theDict, @"IsMediaRemoteControllable");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620C0], theDict, @"GroupContainsGroupLeader");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962140], theDict, @"IsGroupLeader");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962250], theDict, @"IsSilentPrimary");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962298], theDict, @"SupportsExtendedWHAFeatures");
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled(v19, v20))
  {
    figEndpointDescriptorUtility_setDescriptorKey(a1, @"IsCached", theDict, @"IsCached");
  }

  if (FigRoutingManagerIsEndpointLocal(a1))
  {
    v21 = *v15;
  }

  else
  {
    v21 = v4;
  }

  CFDictionarySetValue(theDict, @"IsLocalDevice", v21);
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961F60], theDict, @"AdvertisesHAPSupport");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620C8], theDict, @"GroupUUID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620F0], theDict, @"HouseholdID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961F70], theDict, @"RouteHasAirPlayCloudConnectivity");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FA0], theDict, @"AirPlayVodkaVersion");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961F78], theDict, @"AirPlaySecurity");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962150], theDict, @"IsHKAccessControlEnabled");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620D8], theDict, @"HKAccessControlLevel");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961F68], theDict, @"AirPlayEndpointProperties");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962078], theDict, @"ExternalPlaybackCannotFetchMediaFromSender");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620A0], theDict, @"ExternalPlaybackDoesNotSupportEncryptedCRABS");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962098], theDict, @"ExternalPlaybackDoesNotShowProperUIForAudioOnlyAssets");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962160], theDict, @"IsLowFidelity");
}