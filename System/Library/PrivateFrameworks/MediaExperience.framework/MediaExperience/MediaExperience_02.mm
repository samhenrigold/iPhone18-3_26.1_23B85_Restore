const __CFDictionary *cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(void *key, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = gSystemSoundAudioBehaviors;
  if (key)
  {
    Value = CFDictionaryGetValue(gSystemSoundAudioBehaviors, key);
    if (Value)
    {
      goto LABEL_5;
    }

    v4 = gSystemSoundAudioBehaviors;
  }

  Value = CFDictionaryGetValue(v4, @"Default");
  if (!Value)
  {
    return 0;
  }

LABEL_5:
  v6 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, Value);
  IsBlanked = FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]);
  if (IsBlanked)
  {
    v10 = CFDictionaryGetValue(MutableCopy, @"AudioBehaviour_Destination");
    IsBlanked = CMSMDeviceState_ScreenIsBlanked();
    if (IsBlanked)
    {
      IsBlanked = CMSMDeviceState_ScreenIsBlankedByProximitySensor();
      if (!IsBlanked)
      {
        if (v10)
        {
          v27.length = CFArrayGetCount(v10);
          v27.location = 0;
          if (CFArrayContainsValue(v10, v27, @"VirtualAudioDevice_SystemRemote"))
          {
            v11 = cmsmCopyDestinationsWithoutElement(v10, 0x1F2893B70);
            if (v11)
            {
              v12 = v11;
              CFDictionarySetValue(MutableCopy, @"AudioBehaviour_Destination", v11);
              CFRelease(v12);
            }
          }

          goto LABEL_13;
        }
      }
    }

    if (v10)
    {
LABEL_13:
      IsBlanked = FigCFEqual();
      if (IsBlanked)
      {
        IsBlanked = CMSMUtility_IsPhoneCallActive();
        if (IsBlanked)
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v14 = CFArrayCreateMutableCopy(v6, 0, v10);
          v28.length = CFArrayGetCount(v14);
          v28.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v28, @"VirtualAudioDevice_Default");
          if (FirstIndexOfValue != -1)
          {
            CFArrayRemoveValueAtIndex(v14, FirstIndexOfValue);
            CFArrayInsertValueAtIndex(v14, 0, @"VirtualAudioDevice_Default");
          }

          IsBlanked = FigCFDictionarySetValue();
          if (v14)
          {
            CFRelease(v14);
          }
        }
      }
    }
  }

  IsOnenessEnabled = MX_FeatureFlags_IsOnenessEnabled(IsBlanked, v9);
  if (IsOnenessEnabled)
  {
    IsSystemSoundsMutingBehaviorInOnenessEnabled = MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled(IsOnenessEnabled, v17);
    if (!IsSystemSoundsMutingBehaviorInOnenessEnabled)
    {
      if (vaemContinuityScreenOutputIsConnected(IsSystemSoundsMutingBehaviorInOnenessEnabled, v19))
      {
        if (a2)
        {
          if (dword_1EB75DE40)
          {
            v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          if (dword_1EB75DE40)
          {
            v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v23 = CFDictionaryGetValue(MutableCopy, @"AudioBehaviour_Destination");
          v24 = cmsmCopyDestinationsWithoutElement(v23, 0x1F2893B70);
          if (v24)
          {
            v25 = v24;
            CFDictionarySetValue(MutableCopy, @"AudioBehaviour_Destination", v24);
            CFRelease(v25);
          }
        }
      }
    }
  }

  return MutableCopy;
}

uint64_t MX_FeatureFlags_IsOnenessEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsOnenessEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsOnenessEnabled_cold_1();
  }

  return MX_FeatureFlags_IsOnenessEnabled_sIsOnenessEnabled;
}

uint64_t vaemContinuityScreenOutputIsConnected(uint64_t a1, uint64_t a2)
{
  result = MX_FeatureFlags_IsOnenessEnabled(a1, a2);
  if (result)
  {
    return vaemGetVADPortIDFromVADPortType(1885565807) != 0;
  }

  return result;
}

const __CFString *CMSystemsoundMgr_GetMappedBehaviorCategory(CFStringRef theString)
{
  v1 = theString;
  v21 = *MEMORY[0x1E69E9840];
  if (!theString || !gRegionalSystemSoundsThatShareBehaviour || CFStringFind(theString, @"CameraShutter", 1uLL).length >= 1 && !CMSMUtility_IsCameraBeingUsed())
  {
    return v1;
  }

  Value = CFDictionaryGetValue(gRegionalSystemSoundsThatShareBehaviour, v1);
  if (!Value)
  {
    return v1;
  }

  v3 = Value;
  if (FigCFEqual())
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return v3;
  }

  if (!CFStringHasSuffix(v3, @"AlwaysHeard") || !gCMSS_3 || CMSMDeviceState_IsAirplaneModeEnabled())
  {
    return v3;
  }

  v5 = MX_NetworkObserver_IsCarrierNetworkReachable();
  v6 = v5;
  v7 = MX_TelephonyClient_CopyIsoCountryCodeForMCC(v5);
  v8 = MX_TelephonyClient_CopyCountryNameFromOperatorCountryBundle(v7);
  v9 = v8;
  if (dword_1EB75DE40)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    v8 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v6)
  {
    CurrentCountryCode = MX_GEOCountryConfigurationObserver_GetCurrentCountryCode(v8);
    v13 = MX_NetworkObserver_IsCarrierNetworkReachable();
    if (CurrentCountryCode && !FigCFEqual())
    {
      v16 = FigCFEqual() == 0;
      v17 = v13 != 0;
      v14 = v16 && v17;
      if (v16 && v17)
      {
        v13 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v15 = 1;
    if (!v7 || !v9)
    {
      goto LABEL_40;
    }

    v14 = 0;
    v13 = 0;
  }

  if (v13 || !v7 || !v9)
  {
    goto LABEL_35;
  }

  if (FigCFStringFind() || (v18 = 1, FigCFStringFind()))
  {
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  if (!FigCFEqual() && !FigCFEqual())
  {
    if (!FigCFEqual() && ((FigCFEqual() == 0) & ~v19) != 0)
    {
      goto LABEL_36;
    }

LABEL_35:
    if (!v14)
    {
      v15 = 1;
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (dword_1EB75DE40)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = 0;
LABEL_40:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v15)
  {
    return v3;
  }

  return v1;
}

uint64_t CMSMDeviceState_VibrateOnSilent(int a1)
{
  if (!a1)
  {
    cmsmdevicestate_UpdateVibrateOnSilent();
  }

  return byte_1EB75D36D;
}

uint64_t CMSMUtility_IsSomeClientRecording()
{
  FigSimpleMutexLock();
  if (byte_1EB75E139)
  {
    v0 = dword_1EB75E0A4;
  }

  else
  {
    v0 = 0;
  }

  FigSimpleMutexUnlock();
  return v0;
}

uint64_t __CMSessionMgrSystemSoundActivateForPID_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 48))
  {
    if (gSystemSoundIDToCategory)
    {
      v2 = *(a1 + 40);
      v3 = *(a1 + 44);
      if (!CMSMUtility_IsSomeClientRecording() || !CMSMUtility_IsSomeRecordingSessionPresentThatDisallowsSystemSounds() || (UpdatedSystemSoundPlayFlags = cmsmSystemSoundShouldPlayDuringRecording(v2)) != 0)
      {
        UpdatedSystemSoundPlayFlags = 0;
        if (gSystemSoundRingerSettings)
        {
          if (gSystemSoundRoutingForCategories && gSystemSoundLowersMusicVolume && gSystemSoundMaxVolume)
          {
            UpdatedSystemSoundPlayFlags = cmsmGetUpdatedSystemSoundPlayFlags(v2, v3, 0, 0, 0, 0, 1, 0, 0);
          }
        }
      }
    }

    else
    {
      UpdatedSystemSoundPlayFlags = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = UpdatedSystemSoundPlayFlags;
    if ((*(*(*(a1 + 32) + 8) + 24) & 3) != 0 && !CMSMDeviceState_ScreenIsBlanked())
    {
      v15 = gCMSS_0;
      if (gCMSS_0)
      {
        while (*(v15 + 12) != *(a1 + 44) || *(v15 + 8) != *(a1 + 40))
        {
          v15 = *v15;
          if (!v15)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
LABEL_45:
        v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
        v17 = *(a1 + 40);
        v16[2] = v17;
        v18 = *(a1 + 44);
        v16[3] = v18;
        v19 = *(*(*(a1 + 32) + 8) + 24);
        *(v16 + 16) = v19 & 1;
        v20 = (*(*(*(a1 + 32) + 8) + 24) >> 1) & 1;
        *(v16 + 17) = (*(*(*(a1 + 32) + 8) + 24) & 2) != 0;
        if (v19)
        {
          cmsmPrewarmAudioForSSID(1, v17, v18);
          *(v16 + 18) = 1;
          v20 = *(v16 + 17);
          v17 = v16[2];
          v18 = v16[3];
        }

        if (v20)
        {
          cmsmPrewarmVibeForSSID(1, v17, v18);
          *(v16 + 19) = 1;
          v17 = v16[2];
          v18 = v16[3];
        }

        *v16 = gCMSS_0;
        gCMSS_0 = v16;
        gCMSS_1 = 1;
        CMSMSleep_CreatePrewarmIdleSleepPreventor(v17, v18);
      }
    }
  }

  else
  {
    v5 = gCMSS_0;
    if (gCMSS_0)
    {
      do
      {
        while (1)
        {
          v6 = *v5;
          v7 = *(v5 + 3);
          if (v7 == *(a1 + 44))
          {
            v8 = *(v5 + 2);
            v9 = *(a1 + 40);
            if (v8 == v9 || v9 == 0)
            {
              break;
            }
          }

          v5 = *v5;
          if (!v6)
          {
            goto LABEL_37;
          }
        }

        if (*(v5 + 16) && *(v5 + 18))
        {
          if ((v8 - 1103) <= 2)
          {
            cmsmRemoveSystemSoundAudioCategoriesThatMixIn(*(v5 + 3));
            v8 = *(v5 + 2);
            v7 = *(v5 + 3);
          }

          cmsmPrewarmAudioForSSID(0, v8, v7);
          *(v5 + 18) = 0;
        }

        if (*(v5 + 17) && *(v5 + 19))
        {
          cmsmPrewarmVibeForSSID(0, *(v5 + 2), *(v5 + 3));
          *(v5 + 19) = 0;
        }

        CMSMSleep_ReleasePrewarmIdleSleepPreventor(*(v5 + 2), *(v5 + 3));
        v11 = gCMSS_0;
        if (gCMSS_0 == v5)
        {
          v12 = &gCMSS_0;
        }

        else
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11 != v5);
        }

        *v12 = *v11;
        free(v5);
        if (*(a1 + 40))
        {
          v13 = 1;
        }

        else
        {
          v13 = v6 == 0;
        }

        v5 = v6;
      }

      while (!v13);
LABEL_37:
      v14 = gCMSS_0 != 0;
    }

    else
    {
      v14 = 0;
    }

    gCMSS_1 = v14;
  }

  return FigSimpleMutexUnlock();
}

uint64_t cmsmGetCurrentVADForSystemSoundAudioCategory(void *a1, int a2)
{
  v2 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(a1, a2);
  CurrentSystemSoundVADForAudioBehaviour = cmsGetCurrentSystemSoundVADForAudioBehaviour(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return CurrentSystemSoundVADForAudioBehaviour;
}

uint64_t MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_sIsSystemSoundsMutingBehaviorInOnenessEnabled;
}

const __CFArray *vaemGetVADPortIDFromVADPortType(int a1)
{
  valuePtr = 0;
  inQualifierData = a1;
  result = vaemCopyConnectedPortsForPortTypeAndScope(&inQualifierData, 0x676C6F62u);
  if (result)
  {
    v2 = result;
    if (CFArrayGetCount(result) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    }

    CFRelease(v2);
    return valuePtr;
  }

  return result;
}

CFTypeRef vaemCopyConnectedPortsForPortTypeAndScope(void *inQualifierData, AudioObjectPropertyScope a2)
{
  inAddress.mSelector = 1886549107;
  inAddress.mScope = a2;
  inAddress.mElement = 0;
  ioDataSize = 8;
  outData = 0;
  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 4 * (inQualifierData != 0), inQualifierData, &ioDataSize, &outData);
  v3 = 0;
  if (PropertyData)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  if (!v4)
  {
    v5 = CFGetTypeID(outData);
    TypeID = CFArrayGetTypeID();
    v7 = outData;
    if (v5 == TypeID)
    {
      v8 = CFRetain(outData);
      v7 = outData;
      v3 = v8;
      if (!outData)
      {
        return v3;
      }

      goto LABEL_9;
    }

    v8 = 0;
    v3 = 0;
    if (outData)
    {
LABEL_9:
      CFRelease(v7);
      return v8;
    }
  }

  return v3;
}

uint64_t cmsGetCurrentSystemSoundVADForAudioBehaviour(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  Value = FigCFDictionaryGetValue();
  v3 = 0;
  if (!Value)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(Value); v3 < i; i = 0)
  {
    CFArrayGetValueAtIndex(Value, v3);
    if (FigCFEqual())
    {
      if ([+[MXSessionManager speakerAlertVADID] sharedInstance]
      {
        return [+[MXSessionManager sharedInstance](MXSessionManager speakerAlertVADID];
      }
    }

    else if (FigCFEqual())
    {
      if ([+[MXSessionManager siriOutputVADID] sharedInstance]
      {
        return [+[MXSessionManager sharedInstance](MXSessionManager siriOutputVADID];
      }
    }

    else if (FigCFEqual())
    {
      if ([+[MXSessionManager systemSoundRemoteVADID] sharedInstance]
      {
        return [+[MXSessionManager sharedInstance](MXSessionManager systemSoundRemoteVADID];
      }
    }

    else if (FigCFEqual())
    {
      if ([+[MXSessionManager systemSoundLocalVADID] sharedInstance]
      {
        return [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
      }
    }

    else if (FigCFEqual())
    {
      if ([+[MXSessionManager defaultVADID] sharedInstance]
      {
        return [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
      }
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ++v3;
    if (Value)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return v1;
}

void __CMSMPowerLogPostPowerLogData_block_invoke(uint64_t a1)
{
  PLLogRegisteredEvent();
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t CMSMDeviceState_VibrateOnRing(int a1)
{
  if (!a1)
  {
    cmsmdevicestate_UpdateVibrateOnRing();
  }

  return byte_1EB75D36C;
}

uint64_t CMSMDeviceState_RingerIsOn(int a1)
{
  if (!a1)
  {
    cmsmdevicestate_UpdateRingerIsOn();
  }

  return byte_1EB75D361;
}

uint64_t cmsmCopyCurrentActiveRouteTypesForSystemSound()
{
  FigSimpleMutexLock();
  v0 = qword_1EB75E0B0;
  if (qword_1EB75E0B0)
  {
    goto LABEL_5;
  }

  PropertyBoolean = FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B410);
  v2 = &kVirtualAudioDeviceUID_SystemLocal_CFString;
  if (!PropertyBoolean)
  {
    v2 = &kVirtualAudioDeviceUID_Default_CFString;
  }

  cmsmCopyCurrentActiveRoutesInfoForVADUID(*v2, &qword_1EB75E0B0, 0, 0);
  v0 = qword_1EB75E0B0;
  if (qword_1EB75E0B0)
  {
LABEL_5:
    CFRetain(v0);
    v3 = qword_1EB75E0B0;
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

BOOL CMSystemSoundMgr_DeviceIsAllowedToVibrateIfConnectedToStark()
{
  v0 = 1;
  if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]) && CMSMDeviceState_ScreenIsBlanked())
  {
    return CMSMDeviceState_ScreenIsBlankedByProximitySensor() != 0;
  }

  return v0;
}

uint64_t CMSMUtility_IsCameraBeingUsed()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v1)
  {
    v2 = *v6;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v6 != v2)
        {
          objc_enumerationMutation(v0);
        }

        if ([*(*(&v5 + 1) + 8 * i) isUsingCamera])
        {
          v1 = 1;
          goto LABEL_11;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v1;
}

uint64_t CMSMUtility_GetVADNameForVADID(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [+[MXSessionManager audioDeviceInfo:0]];
  v3 = [(NSDictionary *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if ([-[NSDictionary objectForKey:](-[MXSessionManager audioDeviceInfo](+[MXSessionManager sharedInstance](MXSessionManager "sharedInstance")] == a1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v3 = [(NSDictionary *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v5 = v3;
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (!CMSMVAUtility_IsAdditiveRoutingEnabled(v3, v4))
    {
      return 0x1F2893B50;
    }

    v9 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager vadIDToName];
    v8 = -[NSDictionary objectForKey:](v9, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1]);
    if (!v8)
    {
      return 0x1F2893B50;
    }
  }

  return v8;
}

uint64_t FigEndpointCentralEntityHoldsResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (DerivedStorage)
        {
          if (*DerivedStorage)
          {
            v13 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else
          {
            v7 = *(DerivedStorage + 48);
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 3221225472;
            v11[2] = __FigEndpointCentralEntityHoldsResource_block_invoke;
            v11[3] = &unk_1E7AE7A48;
            v11[4] = &v14;
            v11[5] = a1;
            v11[6] = a2;
            v11[7] = a3;
            MXDispatchSync("FigEndpointCentralEntityHoldsResource", "FigEndpoint_Central.m", 2008, 0, 0, v7, v11);
          }
        }
      }
    }
  }

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v8;
}

void sub_1B17DDEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CMSMSleep_CreatePrewarmIdleSleepPreventor(uint64_t a1, uint64_t a2)
{
  if (FigAtomicCompareAndSwap32())
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if ((a1 - 1103) >= 3)
    {
      if ((a1 - 1200) >= 0xC)
      {
        v6 = (a1 - 1522) < 0xFFFFFFFD;
        if ((a1 - 1522) >= 0xFFFFFFFD)
        {
          v7 = @"orb";
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v6 = 0;
        v7 = @"touchtone";
      }
    }

    else
    {
      v6 = 0;
      v7 = @"keypress";
    }

    v8 = MX_RunningBoardServices_CopyDisplayIDForPID(a2);
    v9 = v8;
    if (v8)
    {
      CFStringAppendFormat(Mutable, 0, @"MediaExperience.pid-%d.%@.", a2, v8);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"MediaExperience.pid-%d.", a2);
    }

    if (v6)
    {
      CFStringAppendFormat(Mutable, 0, @"ssid-%d.isprewarmed", a1);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%@.isprewarmed", v7);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v11 = CFDateCreate(v4, Current);
    v12 = sCMSessionMgrPrewarmIdleSleepPreventorName;
    sCMSessionMgrPrewarmIdleSleepPreventorName = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v13 = sCMSessionMgrPrewarmIdleSleepPreventorCreationTime;
    sCMSessionMgrPrewarmIdleSleepPreventorCreationTime = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    PowerLogDataForSystemSound = CMSMPowerLogCreatePowerLogDataForSystemSound(v7, a2, @"SystemSoundPlayback_Start", sCMSessionMgrPrewarmIdleSleepPreventor, sCMSessionMgrPrewarmIdleSleepPreventorName, sCMSessionMgrPrewarmIdleSleepPreventorCreationTime);
    sCMSessionMgrPrewarmIdleSleepPreventorAllocated = CMSMSleep_CreateIdleSleepPreventor(Mutable, @"CoreMedia_SystemSoundPlayback", PowerLogDataForSystemSound, &sCMSessionMgrPrewarmIdleSleepPreventor);
    if (PowerLogDataForSystemSound)
    {
      CFRelease(PowerLogDataForSystemSound);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

void cmsmUpdateDuckVolume(__CFString *key, int *a2, _DWORD *a3, int a4)
{
  if (a3)
  {
    if (a2)
    {
      *a2 = 1065353216;
    }

    valuePtr = 1065353216;
    if (key)
    {
      Value = CFDictionaryGetValue(gSystemSoundLowersMusicVolume, key);
      HasSuffix = CFStringHasSuffix(key, @"AlwaysHeard");
      if (Value)
      {
        v10 = HasSuffix;
        v11 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(key, a4);
        CurrentSystemSoundVADForAudioBehaviour = cmsGetCurrentSystemSoundVADForAudioBehaviour(v11);
        if (v11)
        {
          CFRelease(v11);
        }

        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
        if (a2)
        {
          *a2 = valuePtr;
        }

        if (CurrentSystemSoundVADForAudioBehaviour == [+[MXSessionManager systemSoundLocalVADID] sharedInstance]
        {
          v13 = CMSMUtility_CopyCurrentRouteTypes();
          if (FigCFEqual())
          {
            *a3 |= 0x80u;
          }

          if (v13)
          {
            CFRelease(v13);
          }
        }

        else if (!v10)
        {
          *a3 |= 0x80u;
        }
      }
    }
  }
}

uint64_t MX_FeatureFlags_IsKeyboardCHAudioEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsKeyboardCHAudioEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsKeyboardCHAudioEnabled_cold_1();
  }

  return MX_FeatureFlags_IsKeyboardCHAudioEnabled_sIsKeyboardCHAudioEnabled;
}

uint64_t CMSMDeviceState_ScreenIsBlanked()
{
  if (byte_1EB75D348)
  {
    return byte_1EB75D340;
  }

  state64[1] = v0;
  state64[2] = v1;
  state64[0] = 0;
  if (notify_get_state(dword_1EB75D344, state64))
  {
    v3 = 1;
  }

  else
  {
    v3 = state64[0] == 0;
  }

  return !v3;
}

void cmsmPrewarmAudioForSSID(uint64_t a1, void *key, uint64_t a3)
{
  v3 = a3;
  v4 = key;
  v5 = a1;
  v6 = CFDictionaryGetValue(gSystemSoundIDToCategory, key);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 > 0x1000;
  }

  if (v7)
  {
    v6 = @"ThirdPartySystemSound";
  }

  MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(v6);
  CurrentVADForSystemSoundAudioCategory = cmsmGetCurrentVADForSystemSoundAudioCategory(MappedBehaviorCategory, 0);
  v10 = CurrentVADForSystemSoundAudioCategory;
  VADNameForVADID = CMSMUtility_GetVADNameForVADID(CurrentVADForSystemSoundAudioCategory);
  value = 0;
  if ([+[MXSessionManager defaultVADID] sharedInstance]
  {
    v12 = gCMSS_5 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (CFDictionaryGetValueIfPresent(gCMSS_5, VADNameForVADID, &value) && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(value)))
    {
      cmsmPrewarmAudioDeviceIDForSSID(v4, v3, v10, VADNameForVADID, value, v5);
      CFDictionaryReplaceValue(gCMSS_5, VADNameForVADID, value);
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      cmsmPrewarmAudioDeviceIDForSSID(v4, v3, v10, VADNameForVADID, Mutable, v5);
      CFDictionaryAddValue(gCMSS_5, VADNameForVADID, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

void cmsmPrewarmAudioDeviceIDForSSID(int a1, int a2, AudioObjectID a3, CFIndex a4, const __CFArray *a5, int a6)
{
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v10 = v9;
  if (!a6)
  {
    if (!v9)
    {
      return;
    }

    if (a5)
    {
      v13.length = CFArrayGetCount(a5);
    }

    else
    {
      v13.length = 0;
    }

    v13.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a5, v13, v10);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(a5, FirstIndexOfValue);
      if (a5 && CFArrayGetCount(a5))
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (dword_1EB75DE40)
        {
          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        AudioDeviceStop(a3, 0);
      }
    }

    goto LABEL_14;
  }

  if (!a5 || !CFArrayGetCount(a5))
  {
    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    AudioDeviceStart(a3, 0);
LABEL_12:
    if (!v10)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!dword_1EB75DE40)
  {
    goto LABEL_12;
  }

  v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v10)
  {
LABEL_13:
    CFArrayAppendValue(a5, v10);
LABEL_14:
    CFRelease(v10);
  }
}

void __mx_runningBoardServices_initializeMonitoring_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [a4 state];
  v6 = [objc_msgSend(v5 "process")];
  MXApplicationStateForProcessState = mx_runningBoardServices_getMXApplicationStateForProcessState(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  if ([v8 unsignedIntValue])
  {
    [gApplicationStateCacheLock lock];
    if (dword_1EB75DE60)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [gApplicationStateCache setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", MXApplicationStateForProcessState), v8}];
    [gApplicationStateCacheLock unlock];
  }

  else
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = [objc_msgSend(objc_msgSend(objc_msgSend(a4 "process")];
  cmsmApplicationStateChangedNotificationCallback(MXApplicationStateForProcessState, v6, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  FigRoutingManagerApplicationStateChangedNotificationCallback(MXApplicationStateForProcessState, v6);
  if (MXApplicationStateForProcessState == 1)
  {
    v12 = [MEMORY[0x1E69C75E0] identifierWithPid:v6];
    if (v12 && (v13 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:v12]) != 0)
    {
      v14 = v13;
      [gProcessPredicatesSetLock lock];
      v15 = [gProcessPredicatesSet countForObject:v14];
      if (v15)
      {
        v16 = v15;
        do
        {
          [gProcessPredicatesSet removeObject:v14];
          --v16;
        }

        while (v16);
        v17 = [gProcessPredicatesSet copy];
        [gProcessPredicatesSetLock unlock];
        v22 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __mx_runningBoardServices_initializeMonitoring_block_invoke_36;
        v20[3] = &unk_1E7AEC550;
        v20[4] = v17;
        [gProcessMonitor updateConfiguration:v20];
      }

      else
      {
        [gProcessPredicatesSetLock unlock];
      }

      mx_runningBoardServices_removePIDFromApplicationStateCache([MEMORY[0x1E696AD98] numberWithInt:v6]);
    }

    else
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t CMSMUtility_GetStringForApplicationState(uint64_t a1)
{
  if (a1 < 9 && ((0x117u >> a1) & 1) != 0)
  {
    return *(&off_1E7AEB110 + a1);
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%d)", a1];
  }
}

void cmsmApplicationStateChangedNotificationCallback(CFTypeRef a1, uint64_t a2, CFTypeRef cf)
{
  v4 = a2;
  v5 = a1;
  if (cf)
  {
    a1 = CFRetain(cf);
  }

  v6 = MXGetSerialQueue(a1, a2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __cmsmApplicationStateChangedNotificationCallback_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v8 = v5;
  v9 = v4;
  v7[4] = cf;
  MXDispatchAsyncAndWait("cmsmApplicationStateChangedNotificationCallback", "CMSessionManager.m", 17871, 0, 0, v6, v7);
}

void __cmsmApplicationStateChangedNotificationCallback_block_invoke(uint64_t a1)
{
  SInt32 = FigCFNumberCreateSInt32();
  v3 = FigCFNumberCreateSInt32();
  v4 = CMSessionMgrHandleApplicationStateChange(v3, SInt32, *(a1 + 32));
  if (v4)
  {
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    if (v3)
    {

      CFRelease(v3);
    }
  }

  else
  {
    v6 = MXGetSerialQueue(v4, v5);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __cmsmApplicationStateChangedNotificationCallback_block_invoke_2;
    v8[3] = &__block_descriptor_48_e5_v8__0l;
    v8[4] = v3;
    v8[5] = SInt32;
    MXDispatchAsync("cmsmApplicationStateChangedNotificationCallback_block_invoke", "CMSessionManager.m", 17910, 0, 0, v6, v8);
    v7 = *(a1 + 32);
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void *CMSUtilityPredicate_IsAffectedByApplicationStateChange(uint64_t a1, void *a2, void *a3)
{
  result = [a3 unsignedIntValue];
  if (result)
  {
    v5 = result;
    v6 = [a2 pidToInheritAppStateFrom];
    if (!v6)
    {
      v6 = [objc_msgSend(a2 "clientPID")];
    }

    return (v6 == v5);
  }

  return result;
}

BOOL CMSMUtility_FetchBackgroundEntitlement(uint64_t a1)
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
  if (v3 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v2);
    v7.location = 0;
    v7.length = Count;
    if (CFArrayContainsValue(v2, v7, @"voip"))
    {
      v5 = 1;
    }

    else
    {
      v8.location = 0;
      v8.length = Count;
      v5 = CFArrayContainsValue(v2, v8, @"audio") != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v2);
  return v5;
}

uint64_t MX_RunningBoardServices_GetApplicationStateForPID(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  if (![v4 unsignedIntValue])
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:
    v7 = [mx_runningBoardServices_getProcessHandleForPID(a1) currentState];
    return mx_runningBoardServices_getMXApplicationStateForProcessState(v7);
  }

  [gApplicationStateCacheLock lock];
  v5 = [objc_msgSend(gApplicationStateCache objectForKey:{v4), "unsignedIntValue"}];
  [gApplicationStateCacheLock unlock];
  if (a2 || !v5)
  {
    goto LABEL_6;
  }

  return v5;
}

uint64_t MXSessionCreate(void *a1, MXSession **a2)
{
  if (!a1)
  {
    MXSessionCreate_cold_2(&v10);
    return v10;
  }

  if (!a2)
  {
    MXSessionCreate_cold_1(&v10);
    return v10;
  }

  v4 = objc_autoreleasePoolPush();
  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__6;
    v14 = __Block_byref_object_dispose__6;
    v15 = 0;
    v5 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MXSessionCreate_block_invoke;
    v9[3] = &unk_1E7AE7168;
    v9[4] = &v10;
    v9[5] = a1;
    MXDispatchAsyncAndWait("MXSessionCreate", "MXSession_CInterfaceCommon.m", 67, 0, 0, v5, v9);
    *a2 = v11[5];
    _Block_object_dispose(&v10, 8);
    v6 = *a2;
  }

  else
  {
    v6 = [[MXSession alloc] initWithSession:a1];
    *a2 = v6;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4294951616;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_1B17DF828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CMSessionMgrCopyDisplayIdentifierToSession(void *a1)
{
  v2 = a1;
  v4 = MXGetSerialQueue(v2, v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSessionMgrCopyDisplayIdentifierToSession_block_invoke;
  v5[3] = &unk_1E7AE7CE0;
  v5[4] = a1;
  MXDispatchAsync("CMSessionMgrCopyDisplayIdentifierToSession", "CMSessionManager.m", 6958, 0, 0, v4, v5);
}

void CMSUtility_FetchSessionEntitlements(void *a1, __SecTask *a2)
{
  [a1 setHasEntitlementToRecordAudioInAnExtension:0];
  [a1 setHasEntitlementToStartRecordingInTheBackground:0];
  [a1 setHasEntitlementToSuppressRecordingStateToSystemStatus:0];
  [a1 setHasEntitlementToSupportProcessAssertionAuditTokens:0];
  [a1 setHasEntitlementToSetEmergencyAlertPriority:0];
  [a1 setHasEntitlementToSetPrefersToOptOutOfHardwareSafetyInterruptions:0];
  [a1 setHasEntitlementToSetPrefersNoInterruptions:0];
  [a1 setHasEntitlementToSetPreferredMinimumMicrophoneIndicatorLightOnTime:0];
  if (CMSUtility_IsAnExtension(a1))
  {
    v4 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.coremedia.extensions.audiorecording.allow", 0);
    if ([v4 BOOLValue])
    {
      [a1 setHasEntitlementToRecordAudioInAnExtension:1];
    }

    if (([a1 hasEntitlementToRecordAudioInAnExtension] & 1) == 0)
    {
      v5 = MX_RunningBoardServices_CopyBundleExtensionPointID(a1);
      if (FigCFEqual() || FigCFEqual())
      {
        v6 = 1;
        if (!v5)
        {
LABEL_9:
          [a1 setHasEntitlementToRecordAudioInAnExtension:v6];
          goto LABEL_10;
        }
      }

      else
      {
        v6 = FigCFEqual() != 0;
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      CFRelease(v5);
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.startrecordinginthebackground.allow", 0);
  if ([v7 BOOLValue])
  {
    [a1 setHasEntitlementToStartRecordingInTheBackground:1];
  }

  v8 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.suppressrecordingstatetosystemstatus", 0);
  if ([v8 BOOLValue])
  {
    [a1 setHasEntitlementToSuppressRecordingStateToSystemStatus:1];
  }

  v9 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.processassertionaudittokens.allow", 0);
  if ([v9 BOOLValue])
  {
    [a1 setHasEntitlementToSupportProcessAssertionAuditTokens:1];
  }

  v10 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.allowrecordingduringcall", 0);
  if ([v10 BOOLValue])
  {
    [a1 setHasEntitlementToRecordDuringCall:1];
  }

  v11 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.allowemergencyalertpriority", 0);
  if ([v11 BOOLValue])
  {
    [a1 setHasEntitlementToSetEmergencyAlertPriority:1];
  }

  v12 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.prefersnointerruptions.allow", 0);
  if ([v12 BOOLValue])
  {
    [a1 setHasEntitlementToSetPrefersNoInterruptions:1];
  }

  v13 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.microphoneattribution.allow", 0);
  if ([v13 BOOLValue])
  {
    [a1 setHasEntitlementToShowMicrophoneIndicatorWhileNotRecording:1];
  }

  v14 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.preferredminimummicrophoneindicatorlightontime.allow", 0);
  if ([v14 BOOLValue])
  {
    [a1 setHasEntitlementToSetPreferredMinimumMicrophoneIndicatorLightOnTime:1];
  }

  v15 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.isusingbuiltinmicforrecording.allow", 0);
  if ([v15 BOOLValue])
  {
    [a1 setHasEntitlementToSetIsUsingBuiltInMicForRecording:1];
  }

  v16 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.preferstooptoutofhardwaresafetyinterruptions.allow", 0);
  if ([v16 BOOLValue])
  {
    [a1 setHasEntitlementToSetPrefersToOptOutOfHardwareSafetyInterruptions:1];
  }
}

void CMSMPowerLogPostPowerLogData(CFTypeRef cf, CFTypeRef a2)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMPowerLogPostPowerLogData_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = cf;
  v5[5] = a2;
  MXDispatchAsync("CMSMPowerLogPostPowerLogData", "CMSessionManager_PowerLog.m", 176, 0, 0, global_queue, v5);
}

void __CMSessionMgrCopyDisplayIdentifierToSession_block_invoke(uint64_t a1)
{
  v2 = MX_RunningBoardServices_CopyDisplayIDForPID([objc_msgSend(*(a1 + 32) "clientPID")]);
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) setDisplayID:v2];

    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded(v4, v5);
  }

  if ([*(a1 + 32) displayID] && objc_msgSend(*(a1 + 32), "reporterIDs"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"MXHostApplicationDisplayID", [*(a1 + 32) displayID]);
    v7 = [objc_msgSend(*(a1 + 32) "reporterIDs")];
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        valuePtr = 1;
        ValueAtIndex = CFArrayGetValueAtIndex([*(a1 + 32) reporterIDs], i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        off_1EB75E020(valuePtr, Mutable);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 32);
    if ([v11 displayID])
    {
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], [v11 displayID]);
      v13 = v11;
      SerialQueue = MX_CoreServices_GetSerialQueue(v13, v14);
      valuePtr = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __cmsCopyInitialRouteSharingPolicyToSession_block_invoke;
      v22 = &unk_1E7AEBCA0;
      v23[0] = v11;
      v23[1] = Copy;
      MXDispatchAsync("cmsCopyInitialRouteSharingPolicyToSession", "CMSessionManager.m", 6881, 0, 0, SerialQueue, &valuePtr);
    }

    inited = objc_initWeak(&location, *(a1 + 32));
    v18 = MX_CoreServices_GetSerialQueue(inited, v17);
    valuePtr = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __cmsCopyGameAudioPreferencesToSession_block_invoke;
    v22 = &unk_1E7AEA958;
    objc_copyWeak(v23, &location);
    MXDispatchAsync("cmsCopyGameAudioPreferencesToSession", "CMSessionManager.m", 6925, 0, 0, v18, &valuePtr);
    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }
}

void sub_1B17E05B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_onceToken != -1)
  {
    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_cold_1();
  }

  if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(a1, a2))
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyHighestPriorityActiveSession:"copyHighestPriorityActiveSession:deviceIdentifier:" deviceIdentifier:0x1F2893B50, 0];
  }

  else
  {
    v2 = CMSM_CopyHighestPriorityLocalPlayingSession(1);
  }

  v3 = v2;
  LocalSessionPriority = CMSM_GetLocalSessionPriority(v2, 1);
  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LocalSessionPriority];
  if ([v3 displayID])
  {
    v7 = [v3 displayID];
  }

  else
  {
    v7 = @"Unknown";
  }

  v8 = [v5 initWithObjectsAndKeys:{v6, @"HighestArbitrationPriorityForTipi_AudioScore", v7, @"HighestArbitrationPriorityForTipi_BundleID", 0}];
  [CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfoLock lock];
  if (([CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfo isEqualToDictionary:v8] & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [MXSystemController notifyAll:@"HighestArbitrationPriorityForTipiDidChange" payload:v8 dontPostIfSuspended:0];

    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfo = v8;
  }

  [CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfoLock unlock];
}

id CMSM_CopyHighestPriorityLocalPlayingSession(int a1)
{
  v2 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsPlaying, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 100;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
      LocalSessionPriority = CMSM_GetLocalSessionPriority(ValueAtIndex, a1);
      if (LocalSessionPriority != 100 && LocalSessionPriority > v6)
      {
        v10 = LocalSessionPriority;
        if (([ValueAtIndex currentlyControllingFlags] & 2) != 0)
        {
          if (CMSUtility_IsPlayingToDefaultVAD(ValueAtIndex))
          {

            v5 = ValueAtIndex;
            v6 = v10;
          }
        }
      }

      ++v4;
    }

    while (v4 < CFArrayGetCount(v3));
  }

  CFRelease(v3);
  return v5;
}

uint64_t MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_sSmartRoutingOnActivationEnabled;
}

__CFArray *CMSMUtility_CopyMatchingSessions(uint64_t a1, unsigned int (*a2)(uint64_t, void, uint64_t), uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if (!a2 || a2(a1, *(*(&v14 + 1) + 8 * v11), a3))
          {
            CFArrayAppendValue(Mutable, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t PowerManager_SetPowerBudgetOnVAAndSendAcknowledgementToCPMSForResource(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = vaemSetCPMSPowerBudget(a3, a1);
  if (v6)
  {
    v7 = v6;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v7;
  }

  else
  {

    return PowerManager_SendAcknowledgementToCPMSForResource(a1, a2, a3);
  }
}

uint64_t vaemSetCPMSPowerBudget(uint64_t a1, uint64_t a2)
{
  v9[22] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v6 = *"dbhtptuo";
  v7 = 0;
  v5 = a2;
  if (a2 == 6)
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager actuatorVADID];
  }

  else
  {
    if (a2 != 5)
    {
      return 4294954315;
    }

    v2 = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  }

  result = CMSMVAUtility_AudioObjectSetPropertyData(v2, &v6, 4, &v5, 8, v9);
  v8 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v8;
  }

  return result;
}

uint64_t PowerManager_SendAcknowledgementToCPMSForResource(uint64_t a1, void *a2, uint64_t a3)
{
  v5[22] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([a2 acknowledgePowerBudget:a3 forClientId:a1 error:v5])
  {
    return 0;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 4294950314;
}

__CFDictionary *CMSMPowerLogCreatePowerLogDataForSystemSound(const void *a1, int a2, const void *a3, int a4, const void *a5, const void *a6)
{
  v18 = a4;
  valuePtr = a2;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    v14 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
LABEL_8:
    v16 = 1;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = CFNumberCreate(v12, kCFNumberSInt32Type, &v18);
  if (!v15)
  {
    goto LABEL_8;
  }

  CFDictionarySetValue(Mutable, @"AssertionID", v15);
  v16 = 0;
  if (a5)
  {
LABEL_9:
    CFDictionarySetValue(Mutable, @"AssertionName", a5);
  }

LABEL_10:
  if (a6)
  {
    CFDictionarySetValue(Mutable, @"CreationTime", a6);
    CFDictionarySetValue(Mutable, @"PlaybackStartTime", a6);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, @"SystemSoundName", a1);
  }

  if (v14)
  {
    CFDictionarySetValue(Mutable, @"PID", v14);
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, @"Operation", a3);
  }

  if (qword_1EB75E0B0)
  {
    CFDictionarySetValue(Mutable, @"SystemSoundAudioRoute", qword_1EB75E0B0);
  }

  if ((v16 & 1) == 0)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return Mutable;
}

BOOL CMSMSleep_CreateIdleSleepPreventor(const void *a1, const void *a2, __CFDictionary *a3, IOPMAssertionID *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a1)
  {
    DefaultIdlePreventorName = CFRetain(a1);
  }

  else
  {
    DefaultIdlePreventorName = CMSMSleep_CreateDefaultIdlePreventorName();
  }

  v9 = DefaultIdlePreventorName;
  AssertionID = 0;
  v10 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, DefaultIdlePreventorName, &AssertionID);
  if (!v10)
  {
    if (a2)
    {
      valuePtr = AssertionID;
      if (a3)
      {
        if (AssertionID)
        {
          v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
          CFDictionarySetValue(a3, @"AssertionID", v11);
          if (v11)
          {
            CFRelease(v11);
          }
        }
      }

      CMSMPowerLogPostPowerLogData(a2, a3);
    }

    *a4 = AssertionID;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10 == 0;
}

uint64_t MX_CoreServices_GetSerialQueue(uint64_t a1, uint64_t a2)
{
  if (MX_CoreServices_GetSerialQueue_onceToken != -1)
  {
    MX_CoreServices_GetSerialQueue_cold_1();
  }

  return MX_CoreServices_GetSerialQueue_sSerialQueue;
}

void sub_1B17E1780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cmsCopyInitialRouteSharingPolicyToSession_block_invoke(uint64_t a1)
{
  v2 = MX_CoreServices_CopyInitialRouteSharingPolicyForBundleID(*(a1 + 40));
  v4 = MXGetSerialQueue(v2, v3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __cmsCopyInitialRouteSharingPolicyToSession_block_invoke_2;
  v6[3] = &unk_1E7AE79D0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = v2;
  v6[6] = v5;
  MXDispatchAsync("cmsCopyInitialRouteSharingPolicyToSession_block_invoke", "CMSessionManager.m", 6885, 0, 0, v4, v6);
}

void *MX_CoreServices_CopyInitialRouteSharingPolicyForBundleID(uint64_t a1)
{
  v1 = 0;
  if (a1 && gCoreServicesIsInitialized)
  {
    v2 = [gLSApplicationProxyClass applicationProxyForIdentifier:a1];
    v3 = objc_opt_new();
    [v3 addObject:@"AVInitialRouteSharingPolicy"];
    v1 = [objc_msgSend(v2 objectsForInfoDictionaryKeys:{v3), "stringForKey:", @"AVInitialRouteSharingPolicy"}];
    v4 = v1;
  }

  return v1;
}

void __cmsCopyGameAudioPreferencesToSession_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    IsGameApp = CMSUtility_IsGameApp(Weak);
    if (IsGameApp)
    {
      v4 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"AVGameBypassSystemSpatialAudio", [objc_msgSend(v2 "clientPID")]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 BOOLValue];
      }

      else
      {
        v5 = 0;
      }

      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    [v2 setBypassSystemSpatialAudioForGame:v5];
    [v2 setDoesGameAudioNeedToBeSpatialized:IsGameApp & (v5 ^ 1)];
  }
}

uint64_t CMSUtility_IsGameApp(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (MX_CoreServices_DoesAppHaveGamesGenre([a1 displayID]))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v5 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v3 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"LSApplicationCategoryType", [objc_msgSend(a1 "clientPID")]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 hasSuffix:@"games"])
    {
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        v5 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t MX_CoreServices_DoesAppHaveGamesGenre(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [gLSApplicationProxyClass applicationProxyForIdentifier:a1];
    if ([objc_msgSend(v1 "genre")])
    {
      return 1;
    }

    else
    {
      return [objc_msgSend(v1 "genreID")];
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }
}

uint64_t MX_FeatureFlags_IsSystemInputPickerEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsSystemInputPickerEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSystemInputPickerEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSystemInputPickerEnabled_sIsSystemInputPickerEnabled;
}

void CMSMDebugUtility_PrintDictionary(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
}

void MX_SystemStatus_PublishRecordingClientsInfo(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  if (mxsystemstatus_initialize_onceToken != -1)
  {
LABEL_64:
    MX_SystemStatus_PublishRecordingClientsInfo_cold_1();
  }

  if ((sIsSystemStatusInitialized & 1) == 0)
  {
    LODWORD(v50) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v39 = v50;
    v40 = type[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v41 = v39;
    }

    else
    {
      v41 = v39 & 0xFFFFFFFE;
    }

    if (v41)
    {
      *v56 = 136315138;
      *&v56[4] = "MX_SystemStatus_PublishRecordingClientsInfo";
      _os_log_send_and_compose_impl(v41, 0, &v64, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v40, "-MX_SystemStatus- %s: Publishing recording clients info while SystemStatus is not initialized!", v56);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  v1 = CMSMUtility_CopyRecordingClientsInfoForSystemStatus();
  FigSimpleMutexLock();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v45 = [v1 countByEnumeratingWithState:&v52 objects:v63 count:16];
  v2 = &AVSystemController_EUVolumeLimitNotificationParameter;
  if (!v45)
  {
    goto LABEL_56;
  }

  v44 = *v53;
  v43 = v1;
  while (2)
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v53 != v44)
      {
        objc_enumerationMutation(v1);
      }

      v4 = *(*(&v52 + 1) + 8 * i);
      v47 = [objc_msgSend(v4 objectForKey:{@"PID", "unsignedIntValue"}];
      v5 = [objc_msgSend(v4 objectForKey:{@"Muted", "BOOLValue"}];
      v48 = v5;
      if (!MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled(v5, v6))
      {
        v21 = [objc_alloc(getSTActivityAttributionClass()) initWithPID:v47];
        goto LABEL_49;
      }

      v7 = [v4 objectForKey:@"ActiveEntityBundleID"];
      v8 = [v4 objectForKey:@"AttributedBundleID"];
      v9 = [v4 objectForKey:@"AttributedAuditToken"];
      v10 = [v4 objectForKey:@"ActiveEntityAuditToken"];
      if (v9)
      {
        v10 = v9;
      }

      if (v10)
      {
        *&v11 = -1;
        *(&v11 + 1) = -1;
        v50 = v11;
        v51 = v11;
        [v10 getBytes:&v50 length:32];
        *type = v50;
        v62 = v51;
        *v56 = 0;
        *&v56[8] = v56;
        *&v56[16] = 0x2020000000;
        v12 = getBSExecutablePathForAuditTokenSymbolLoc_ptr;
        v57 = getBSExecutablePathForAuditTokenSymbolLoc_ptr;
        if (!getBSExecutablePathForAuditTokenSymbolLoc_ptr)
        {
          *&v64 = MEMORY[0x1E69E9820];
          *(&v64 + 1) = 3221225472;
          *&v65 = __getBSExecutablePathForAuditTokenSymbolLoc_block_invoke;
          *(&v65 + 1) = &unk_1E7AE73A0;
          v66 = v56;
          __getBSExecutablePathForAuditTokenSymbolLoc_block_invoke(&v64);
          v12 = *(*&v56[8] + 24);
        }

        _Block_object_dispose(v56, 8);
        if (!v12)
        {
          __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
          __break(1u);
          goto LABEL_64;
        }

        v64 = *type;
        v65 = v62;
        v13 = v12(&v64);
        v46 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutablePath:v13];
        if (v8)
        {
LABEL_16:
          *&v64 = 0;
          *(&v64 + 1) = &v64;
          *&v65 = 0x3052000000;
          *(&v65 + 1) = __Block_byref_object_copy__4;
          v66 = __Block_byref_object_dispose__4;
          v14 = getSTExecutableIdentityClass_softClass;
          v67 = getSTExecutableIdentityClass_softClass;
          if (!getSTExecutableIdentityClass_softClass)
          {
            *v56 = MEMORY[0x1E69E9820];
            *&v56[8] = 3221225472;
            *&v56[16] = __getSTExecutableIdentityClass_block_invoke;
            v57 = &unk_1E7AE73A0;
            *v58 = &v64;
            __getSTExecutableIdentityClass_block_invoke(v56);
            v14 = *(*(&v64 + 1) + 40);
          }

          _Block_object_dispose(&v64, 8);
          v15 = [[v14 alloc] initWithApplicationBundleIdentifier:v8];
          v16 = [v4 objectForKey:@"Website"];
          if (dword_1EB75DE40)
          {
            LODWORD(v50) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v18 = v50;
            v19 = type[0];
            if (os_log_type_enabled(v17, type[0]))
            {
              v20 = v18;
            }

            else
            {
              v20 = v18 & 0xFFFFFFFE;
            }

            if (v20)
            {
              *v56 = 136316162;
              *&v56[4] = "MX_SystemStatus_PublishRecordingClientsInfo";
              *&v56[12] = 2114;
              *&v56[14] = v7;
              *&v56[22] = 2114;
              v57 = v13;
              *v58 = 2114;
              *&v58[2] = v8;
              v59 = 1024;
              v60 = v47;
              LODWORD(v42) = 48;
              _os_log_send_and_compose_impl(v20, 0, &v64, 128, &dword_1B17A2000, v17, v19, "-MX_SystemStatus- %s: Creating ST attribution info object with ActiveEntity %{public}@, ActiveEntity executablePath: %{public}@, AttributedEntity bundleID: %{public}@ pid: %d", v56, v42);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v1 = v43;
            v2 = &AVSystemController_EUVolumeLimitNotificationParameter;
          }

          v26 = objc_alloc(getSTAttributedEntityClass());
          if (v16)
          {
            v27 = [v26 initWithExecutableIdentity:v15 website:v16];
          }

          else
          {
            v27 = [v26 initWithExecutableIdentity:v15];
          }

          v21 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v27 activeEntity:v46];
          if (v21)
          {
            goto LABEL_48;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v46 = 0;
        v13 = 0;
        if (v8)
        {
          goto LABEL_16;
        }
      }

      if (dword_1EB75DE40)
      {
        LODWORD(v50) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v23 = v50;
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
          *v56 = 136315650;
          *&v56[4] = "MX_SystemStatus_PublishRecordingClientsInfo";
          *&v56[12] = 2114;
          *&v56[14] = v7;
          *&v56[22] = 2114;
          v57 = v13;
          LODWORD(v42) = 32;
          _os_log_send_and_compose_impl(v25, 0, &v64, 128, &dword_1B17A2000, v22, v24, "-MX_SystemStatus- %s: Creating ST attribution info object with ActiveEntity %{public}@ executablepath: %{public}@", v56, v42);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v27 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutablePath:v13];
      v21 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v27];
      v15 = 0;
      if (v21)
      {
        goto LABEL_48;
      }

LABEL_40:
      if (dword_1EB75DE40)
      {
        LODWORD(v50) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v29 = v50;
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
          *v56 = 136315394;
          *&v56[4] = "MX_SystemStatus_PublishRecordingClientsInfo";
          *&v56[12] = 1024;
          *&v56[14] = v47;
          _os_log_send_and_compose_impl(v31, 0, &v64, 128, &dword_1B17A2000, v28, v30, "-MX_SystemStatus- %s: Creating ST attribution info object with PID: %d", v56, 18);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v21 = [objc_alloc(getSTActivityAttributionClass()) initWithPID:v47];
LABEL_48:

LABEL_49:
      if (v48)
      {
        [(__CFString *)v2[198] addObject:v21];
      }

      else
      {
        [objc_msgSend(v4 objectForKey:{@"MininumMicrophoneIndicatorLightOnTime", "doubleValue"}];
        v33 = v32;
        *&v64 = 0;
        *(&v64 + 1) = &v64;
        *&v65 = 0x3052000000;
        *(&v65 + 1) = __Block_byref_object_copy__4;
        v66 = __Block_byref_object_dispose__4;
        v34 = getSTMediaStatusDomainMicrophoneRecordingAttributionClass_softClass;
        v67 = getSTMediaStatusDomainMicrophoneRecordingAttributionClass_softClass;
        if (!getSTMediaStatusDomainMicrophoneRecordingAttributionClass_softClass)
        {
          *v56 = MEMORY[0x1E69E9820];
          *&v56[8] = 3221225472;
          *&v56[16] = __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke;
          v57 = &unk_1E7AE73A0;
          *v58 = &v64;
          __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke(v56);
          v34 = *(*(&v64 + 1) + 40);
        }

        _Block_object_dispose(&v64, 8);
        v35 = [[v34 alloc] initWithActivityAttribution:v21 maximumHistoryAccessed:v33];
        [sRecordingClientsInfo addObject:v35];
      }
    }

    v45 = [v1 countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v45)
    {
      continue;
    }

    break;
  }

LABEL_56:
  v36 = [sRecordingClientsInfo copy];
  v37 = [(__CFString *)v2[198] copy];
  [sRecordingClientsInfo removeAllObjects];
  [(__CFString *)v2[198] removeAllObjects];

  FigSimpleMutexUnlock();
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke;
  v49[3] = &unk_1E7AEA340;
  v49[4] = v36;
  v49[5] = v37;
  MXDispatchAsync("MX_SystemStatus_PublishRecordingClientsInfo", "MX_SystemStatus.m", 279, 0, 0, gSerializationQueue, v49);
}

uint64_t MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_cold_1();
  }

  return MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_sPublishHostAttributionToSystemStatusEnabled;
}

id CMSMUtility_CopyRecordingClientsInfoForSystemStatus()
{
  v40 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = +[MXSessionManagerBase copyAllMXCoreSessionList];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v34;
    v5 = v0 != 0;
    v29 = v1;
    v30 = v0;
    v32 = v5;
    v31 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v33 + 1) + 8 * v6);
        if ([v7 isMemberOfClass:objc_opt_class()] && objc_msgSend(v7, "hasEntitlementToShowMicrophoneIndicatorWhileNotRecording"))
        {
          v8 = [v7 wantsToShowMicrophoneIndicatorWhenNotRecording];
        }

        else
        {
          v8 = 0;
        }

        if ([v7 isRecording] & 1) != 0 || ((objc_msgSend(v7, "isUsingBuiltInMicForRecording") | v8))
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v10 = [v7 hasEntitlementToSuppressRecordingStateToSystemStatus];
          v11 = v5;
          if (v10)
          {
            v11 = ((CMSUtility_GetPrefersSuppressingRecordingState(v7) == 0) | v8) & (v0 != 0);
          }

          if (v11 && v9)
          {
            [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v7, "clientPID"), "unsignedIntValue")), 0x1F2893D90}];
            v12 = [v7 isMemberOfClass:objc_opt_class()];
            if (v12)
            {
              v14 = MEMORY[0x1E696AD98];
              if (v8)
              {
                v15 = 0;
              }

              else
              {
                v15 = [v7 isRecordingMuted];
              }

              v12 = [v9 setObject:objc_msgSend(v14 forKey:{"numberWithBool:", v15), 0x1F28944B0}];
            }

            if (MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled(v12, v13))
            {
              if ([v7 displayID])
              {
                [v9 setObject:objc_msgSend(v7 forKey:{"displayID"), 0x1F289DDF0}];
              }

              if ([v7 isMemberOfClass:objc_opt_class()] && (objc_msgSend(v7, "auditTokenSetByClient") & 1) != 0 || objc_msgSend(v7, "isMemberOfClass:", objc_opt_class()))
              {
                v37 = 0u;
                v38 = 0u;
                if (v7)
                {
                  objc_msgSend_auditToken(v7);
                }

                [v9 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v37, 32), 0x1F289DE10}];
              }

              if ([v7 isMemberOfClass:objc_opt_class()])
              {
                v16 = [objc_msgSend(v7 "hostProcessAttribution")];
                if (v16)
                {
                  v17 = v16;
                  v18 = [v16 valueForKey:@"BundleID"];
                  v19 = [v17 valueForKey:@"RecordingWebsite"];
                  v20 = [v17 valueForKey:@"AuditToken"];
                  if (dword_1EB75DE40)
                  {
LABEL_36:
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v0 = v30;
                    goto LABEL_37;
                  }

                  goto LABEL_38;
                }

                v21 = [-[MXMediaEndowmentManager getHostProcessAttributions:](+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager "sharedInstance")];
                if (v21)
                {
                  v22 = v21;
                  v18 = [v21 valueForKey:@"BundleID"];
                  v19 = [v22 valueForKey:@"RecordingWebsite"];
                  v20 = [v22 valueForKey:@"AuditToken"];
                  if (dword_1EB75DE40)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_38;
                }

                if ([v7 isCameraRecordingExtension])
                {
                  if (v7)
                  {
                    objc_msgSend_auditToken(v7);
                  }

                  else
                  {
                    v37 = 0u;
                    v38 = 0u;
                  }

                  v25 = MX_CoreServices_CopyContainingBundleID(&v37);
                  if (dword_1EB75DE40)
                  {
                    v18 = v25;
                    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                    v0 = v30;
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v20 = 0;
                    v19 = 0;
LABEL_37:
                    v1 = v29;
LABEL_38:
                    v24 = v18;
                    v4 = v31;
                    if (v24)
                    {
LABEL_39:
                      [v9 setObject:? forKey:?];
                    }
                  }

                  else
                  {
                    v20 = 0;
                    v19 = 0;
                    if (v25)
                    {
                      goto LABEL_39;
                    }
                  }

                  if (v19)
                  {
                    [v9 setObject:v19 forKey:0x1F289DDB0];
                  }

                  if (v20)
                  {
                    [v9 setObject:v20 forKey:0x1F289DE30];
                  }
                }

                v5 = v32;
                if ([v7 preferredMinimumMicrophoneIndicatorLightOnTime])
                {
                  [v9 setObject:objc_msgSend(v7 forKey:{"preferredMinimumMicrophoneIndicatorLightOnTime"), 0x1F289DE50}];
                }
              }
            }

            [v0 addObject:v9];
          }
        }

        ++v6;
      }

      while (v3 != v6);
      v27 = [v1 countByEnumeratingWithState:&v33 objects:v39 count:16];
      v3 = v27;
    }

    while (v27);
  }

  return v0;
}

__CFArray *vaemCopyActiveInputRouteNamesForRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4 = a4;
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
  v9 = vaemCopyVADInputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, 0, a3, v4);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v12 = Count;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    for (i = 0; i != v12; ++i)
    {
      PortAtIndex = CMSMVAUtility_GetPortAtIndex(v10, i);
      v16 = vaeCopyNameForPort(PortAtIndex);
      if (v16)
      {
        v17 = v16;
        CFArrayAppendValue(Mutable, v16);
        CFRelease(v17);
      }
    }
  }

  CFRelease(v10);
  return Mutable;
}

uint64_t CMSMUtility_IsSharePlayCallSessionActive(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsSharePlayEnabled(a1, a2))
  {
    return 0;
  }

  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (CMSUtility_GetIsActive(v6) && ([v6 isSharePlayCallSession] & 1) != 0)
        {
          v3 = 1;
          goto LABEL_14;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

CFTypeRef vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(uint64_t a1, uint64_t a2, const void *a3, const void *a4, int a5, int a6, uint64_t a7)
{
  v12 = a2;
  v13 = a1;
  if (a6 == 1)
  {
    v14 = 1768845428;
  }

  else
  {
    v14 = 1869968496;
  }

  inAddress.mSelector = 1634759267;
  inAddress.mScope = v14;
  inAddress.mElement = 0;
  ioDataSize = 8;
  outData = 0;
  v15 = CMSMUtility_IsSharePlayCallSessionActive(a1, a2);
  if (v15 || CMSMUtility_IsSharePlayMediaSessionActive(v15, v16) || (dword_1EB75E09C == v13 ? (v25 = dword_1EB75E0A0 == v12) : (v25 = 0), v25 && (-[MXSessionManager currentAllowedPortTypes](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "currentAllowedPortTypes"), FigCFEqual()) && (vaemGetCurrentActivationContext(), FigCFEqual()) && (v26 = [qword_1EB75D1C8 BOOLValue], !a5) && !v26))
  {
    RouteConfigurationDictionary = 0;
  }

  else
  {
    RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(v13, v12, a3, a4, a5);
  }

  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  cf = 0;
  v19 = outData;
  if (PropertyData)
  {
    v20 = 1;
  }

  else
  {
    v20 = outData == 0;
  }

  if (!v20)
  {
    v21 = CFGetTypeID(outData);
    if (v21 == CFArrayGetTypeID() && CFArrayGetCount(outData))
    {
      if (a6 == 1)
      {
        p_cf = &cf;
        v23 = a7;
        v24 = 0;
      }

      else
      {
        v24 = &cf;
        v23 = a7;
        p_cf = 0;
      }

      vaemGetPortListForDevice(outData, v23, p_cf, v24);
      if (cf)
      {
        CFRetain(cf);
      }
    }

    v19 = outData;
  }

  if (v19)
  {
    CFRelease(v19);
    outData = 0;
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  return cf;
}

const void *vaemCopyVADInputPortsForRouteConfiguration(uint64_t a1, uint64_t a2, const void *a3, const void *a4, int a5)
{
  v5 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(a1, a2, a3, a4, a5, 1, 0x1F2893B50);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFArrayGetTypeID())
    {
      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

uint64_t MX_FeatureFlags_IsSharePlayEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsSharePlayEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSharePlayEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSharePlayEnabled_sharePlayEnabled;
}

void *CMSUtility_GetIsActive(void *result)
{
  if (result)
  {
    return objc_msgSend_isActive(result);
  }

  return result;
}

uint64_t CMSMUtility_IsSharePlayMediaSessionActive(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsSharePlayEnabled(a1, a2))
  {
    return 0;
  }

  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (CMSUtility_GetIsActive(v6) && ([v6 isSharePlayMediaSession] & 1) != 0)
        {
          v3 = 1;
          goto LABEL_14;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

uint64_t vaemGetPortListForDevice(const __CFArray *a1, uint64_t a2, const void **a3, const void **a4)
{
  if (CFArrayGetCount(a1) >= 1)
  {
    v16 = a4;
    for (i = 0; CFArrayGetCount(a1) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v9, @"device UID");
          v12 = CFDictionaryGetValue(v9, @"device type");
          if (FigCFEqual() || FigCFEqual() && FigCFEqual())
          {
            if (a3)
            {
              *a3 = CFDictionaryGetValue(v9, @"input ports");
            }

            if (v16)
            {
              v15 = CFDictionaryGetValue(v9, @"output ports");
              result = 0;
              *v16 = v15;
              return result;
            }

            return 0;
          }

          if (!Value && v12)
          {
            VirtualAudioDeviceType = vaemGetVirtualAudioDeviceType([+[MXSessionManager defaultVADID] sharedInstance];
            valuePtr = 0;
            CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
            if (VirtualAudioDeviceType == valuePtr || (VirtualAudioDeviceType == 1987279219 || VirtualAudioDeviceType == 1987279212) && (valuePtr == 1987279219 || valuePtr == 1987279212))
            {
              if (a3)
              {
                *a3 = CFDictionaryGetValue(v9, @"input ports");
              }

              if (v16)
              {
                *v16 = CFDictionaryGetValue(v9, @"output ports");
              }

              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

__CFArray *MXCopyCFArrayDifferenceFromArray(uint64_t a1, const __CFArray *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = 0;
  if (!a2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a2); v4 < i; i = 0)
  {
    CFArrayGetValueAtIndex(a2, v4);
    if (!FigCFArrayContainsValue())
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v4);
      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    ++v4;
    if (a2)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return Mutable;
}

void discoveryManager_notificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v4 = &discoverManager_getSharedManager_discoveryState;
  }

  else
  {
    v4 = 0;
  }

  if (FigCFEqual())
  {
    cf = 0;
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], &cf);
    }

    v7 = FigCFEqual();
    if (v7)
    {
      v9 = MXGetSerialQueue(v7, v8);
      MXDispatchAsync("discoveryManager_notificationHandler", "FigRouteDiscoveryManager.m", 2292, 0, 0, v9, &__block_literal_global_50);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    discoveryManager_postNotificationToAllDiscoverers(v4, @"Discoverer_AvailableRoutesChanged", 0);
  }

  else if (FigCFEqual())
  {

    discoveryManager_postNotificationToAllDiscoverers(v4, @"Discoverer_RoutePresentChanged", 0);
  }
}

void discoveryManager_postNotificationToAllDiscoverers(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v6 = [MEMORY[0x1E695DF00] now];
  v7 = *(a1 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __discoveryManager_postNotificationToAllDiscoverers_block_invoke;
  v8[3] = &unk_1E7AE7230;
  v8[4] = v6;
  v8[5] = a1;
  v8[6] = cf;
  v8[7] = a3;
  MXDispatchAsync("discoveryManager_postNotificationToAllDiscoverers", "FigRouteDiscoveryManager.m", 399, 0, 0, v7, v8);
}

void FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager(const void *a1, const void *a2, const void *a3, const void *a4)
{
  v8 = +[MXInitialization waitUntilMXIsFullyInitialized];
  SharedManager = FigRoutingManagerGetSharedManager(v8, v9);
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

  if (a4)
  {
    CFRetain(a4);
  }

  v11 = *(SharedManager + 1);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager_block_invoke;
  v12[3] = &__block_descriptor_64_e5_v8__0l;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  MXDispatchAsync("FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager", "FigRoutingManager_iOS.m", 5223, 0, 0, v11, v12);
}

void *FigRoutingManagerGetSharedManager(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals != -1)
  {
    FigRoutingManagerGetSharedQueue_cold_1();
  }

  if (qword_1ED6D2E28)
  {
    return &unk_1ED6D2E20;
  }

  else
  {
    return 0;
  }
}

void __FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v19 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E69618B8], v19, &v22);
  }

  EndpointToAutoConnect = FigRoutingManagerCopyFirstEndpointToAutoConnect(*(a1 + 40));
  if (EndpointToAutoConnect)
  {
    v5 = EndpointToAutoConnect;
    FigRoutingManagerProcessEndpointToAutoconnect(EndpointToAutoConnect, v22);
    CFRelease(v5);
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    v6 = 0;
    v7 = *MEMORY[0x1E6962270];
    while (1)
    {
      Count = *(a1 + 48);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v6 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v6);
      if (FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(ValueAtIndex) && !CMSMDeviceState_IsHomePodHub())
      {
        v20 = 0;
        v21 = 0;
        FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v21);
        FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v21, &v20);
        if (FigRoutingManagerIsConfigurationWHASilentPrimary(v21))
        {
          cf[0] = 0;
          if (v20)
          {
            v10 = FigEndpointGetCMBaseObject();
            v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v11)
            {
              v11(v10, v7, v19, cf);
            }
          }

          FigRoutingManagerLogEndpointIDs(@"FigRoutingManager_iOSHandleAvailableEndpointsDidChangeNotification - Skip adding local endpoint to aggregate. The sub-endpoints in the aggregate are: ", cf[0], 0, 1);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        else
        {
          if (dword_1EB75DF20)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingManagerAggregateAddLocalAirPlayEndpoint(v21, v20);
        }

        if (v20)
        {
          CFRelease(v20);
          v20 = 0;
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }

      ++v6;
    }
  }

  else if (FigCFEqual())
  {
    if ((v13 = *(a1 + 48)) != 0 && CFArrayGetCount(v13) > 0 || (v14 = *(a1 + 56)) != 0 && CFArrayGetCount(v14) >= 1)
    {
      cf[0] = 0;
      FigRoutingManagerContextUtilities_CopySidePlayContextUUID(cf);
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(cf[0], @"currentRouteChanged", 0);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

CFTypeRef FigRoutingManagerCopyFirstEndpointToAutoConnect(CFArrayRef theArray)
{
  v2 = 0;
  v3 = *MEMORY[0x1E6961FD8];
  v4 = *MEMORY[0x1E695E480];
  while (1)
  {
    v5 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v5)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, v3, v4, &cf);
    }

    v9 = FigCFEqual();
    v10 = 0;
    if (ValueAtIndex && v9)
    {
      v10 = CFRetain(ValueAtIndex);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    ++v2;
    if (v10)
    {
      return v10;
    }
  }

  return 0;
}

void *__discoveryManager_postNotificationToAllDiscoverers_block_invoke(uint64_t a1)
{
  v28[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v23 = [MEMORY[0x1E695DF00] now];
  allocator = *MEMORY[0x1E695E480];
  cf = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = 0;
  v3 = 0;
  ++*(*(a1 + 40) + 296);
  do
  {
    FigSimpleMutexLock();
    v25 = v3;
    Copy = CFArrayCreateCopy(allocator, *(*(a1 + 40) + 24 * v3 + 24));
    FigSimpleMutexUnlock();
    Count = CFArrayGetCount(Copy);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, i);
        v9 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
        if (v9)
        {
          v10 = v9;
          if (FigCFEqual())
          {
            if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer(v10))
            {
              v2 = v2 + FigRouteDiscovererUpdateCachedUserSelectionAvailable(v10, cf);
            }
          }

          else
          {
            if (FigCFEqual() && FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer(v10))
            {
              v2 = (v2 + FigRouteDiscovererUpdateCachedRouteInformation(v10, v24));
            }

            if (FigRouteDiscoveryManagerIsClientEligibleToReceiveUpdateNotifications(v10))
            {
              v11 = v2;
              v12 = *(a1 + 40);
              v13 = *(a1 + 48);
              MutableCopy = FigCFDictionaryCreateMutableCopy();
              [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
              FigCFDictionarySetValue();
              [MEMORY[0x1E696AD98] numberWithLongLong:FigGetUpTimeNanoseconds()];
              FigCFDictionarySetValue();
              CFRetain(v10);
              if (v13)
              {
                CFRetain(v13);
              }

              v15 = *(v12 + 16);
              v28[0] = MEMORY[0x1E69E9820];
              v28[1] = 3221225472;
              v28[2] = __discoveryManager_postNotificationForDiscoverer_block_invoke;
              v28[3] = &__block_descriptor_56_e5_v8__0l;
              v28[4] = v13;
              v28[5] = v10;
              v28[6] = MutableCopy;
              MXDispatchAsync("discoveryManager_postNotificationForDiscoverer", "FigRouteDiscoveryManager.m", 350, 0, 0, v15, v28);
              v2 = v11;
            }
          }

          CFRelease(v10);
        }
      }
    }

    if (Copy)
    {
      CFRelease(Copy);
    }

    v3 = v25 + 1;
  }

  while (v25 != 8);
  v16 = *(a1 + 40);
  FigSimpleMutexLock();

  *(v16 + 272) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v24 copyItems:1];
  FigSimpleMutexUnlock();
  v17 = *(a1 + 48);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    CFRelease(v18);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v19 = *(*(a1 + 40) + 296);
  result = [v23 timeIntervalSinceNow];
  *(*(a1 + 40) + 304) = *(*(a1 + 40) + 304) - *(*(a1 + 40) + 304) / v19 - v21 / v19;
  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

BOOL FigRouteDiscovererUpdateCachedRouteInformation(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  v5 = *MEMORY[0x1E695E480];
  v6 = FigCFNumberCreateUInt32();
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v6 stringValue];
  TypeString = discoverer_getTypeString(*(DerivedStorage + 56));
  v10 = FigCFEqual();
  v11 = @"YES";
  if (!v10)
  {
    v11 = @"NO";
  }

  v12 = [v7 stringWithFormat:@"%@+%@+%@", v8, TypeString, v11];
  v13 = [a2 objectForKey:v12];
  v14 = [v13 objectForKey:@"FigRouteDiscoverer_Endpoints_Key"];
  v15 = [v13 objectForKey:@"FigRouteDiscoverer_RouteDescriptors_Key"];
  if (v13)
  {
    v16 = v15;
  }

  else
  {
    cf = 0;
    FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(v5, *(DerivedStorage + 56), v4, *(DerivedStorage + 24), &cf);
    v17 = FigRouteDiscoveryManagerCopyRouteDescriptorsFromEndpointsAndAudioSessionID(cf, v4);
    v18 = [MEMORY[0x1E695DF90] dictionary];
    [v18 setValue:cf forKey:@"FigRouteDiscoverer_Endpoints_Key"];
    [v18 setValue:v17 forKey:@"FigRouteDiscoverer_RouteDescriptors_Key"];
    [a2 setObject:v18 forKey:v12];
    v14 = [v18 objectForKey:@"FigRouteDiscoverer_Endpoints_Key"];
    v16 = [v18 objectForKey:@"FigRouteDiscoverer_RouteDescriptors_Key"];
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  FigSimpleMutexLock();

  *(DerivedStorage + 96) = v16;
  *(DerivedStorage + 104) = v14;
  FigSimpleMutexUnlock();
  return v13 == 0;
}

void discoverer_logAvailableRouteDetails(uint64_t a1, unsigned int a2, CFArrayRef theArray)
{
  cf[27] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = *MEMORY[0x1E695E480];
  if (!theArray)
  {
    Mutable = CFStringCreateMutable(v4, 0);
    Copy = 0;
    goto LABEL_5;
  }

  Copy = CFArrayCreateCopy(v4, theArray);
  Mutable = CFStringCreateMutable(v3, 0);
  if (!Copy)
  {
LABEL_5:
    Count = 0;
    v8 = 1;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(Copy);
  v8 = 0;
LABEL_6:
  v25 = v8;
  if (!Count && dword_1EB75DF60)
  {
    LODWORD(cf[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_38;
  }

  v29 = Count - 1;
  if (Count >= 1)
  {
    alloc = v3;
    v10 = 0;
    v11 = 0;
    v24 = *MEMORY[0x1E69621E8];
    v28 = *MEMORY[0x1E695E4D0];
    v27 = Count;
    do
    {
      if (CFArrayGetValueAtIndex(Copy, v11))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, v11);
        v13 = CFGetTypeID(ValueAtIndex);
        TypeID = FigEndpointGetTypeID();
        cf[0] = 0;
        v15 = CFArrayGetValueAtIndex(Copy, v11);
        if (v13 == TypeID)
        {
          CFArrayGetValueAtIndex(Copy, v11);
          CMBaseObject = FigEndpointGetCMBaseObject();
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v17)
          {
            v17(CMBaseObject, v24, alloc, cf);
          }

          Value = cf[0];
          if (!cf[0])
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        cf[0] = 0;
        v15 = CFArrayGetValueAtIndex(Copy, v11);
      }

      v19 = v15;
      if (CFDictionaryGetValue(v15, @"IsBTRoute") == v28)
      {
        CFDictionaryGetValue(v19, @"RouteName");
        CFDictionaryGetValue(v19, @"RouteUID");
        CFDictionaryGetValue(v19, @"RouteModel");
        CFDictionaryGetValue(v19, @"BTDetails_IsA2DPRoute");
        CFDictionaryGetValue(v19, @"BTDetails_IsHFPRoute");
        if (dword_1EB75DF60)
        {
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v21 = CFArrayGetValueAtIndex(Copy, v11);
      Value = CFDictionaryGetValue(v21, @"RouteName");
      if (Value)
      {
        Value = CFRetain(Value);
      }

      cf[0] = Value;
      Count = v27;
      if (!Value)
      {
        goto LABEL_25;
      }

LABEL_24:
      CFStringAppendFormat(Mutable, 0, @"[%d].%@ ", v11, Value);
LABEL_25:
      if (v29 == v11)
      {
        if (dword_1EB75DF60)
        {
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (v11 && !(v10 + 10 * (v11 / 0xA)))
      {
        if (dword_1EB75DF60)
        {
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        Mutable = CFStringCreateMutable(alloc, 0);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      ++v11;
      --v10;
    }

    while (Count != v11);
  }

LABEL_38:
  if ((v25 & 1) == 0)
  {
    CFRelease(Copy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

__n128 OUTLINED_FUNCTION_8_2@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(a1 + 136) = a2;
  v4 = *v2;
  *(a1 + 184) = *(v2 + 2);
  *(a1 + 168) = v4;
  result = *v3;
  *(a1 + 160) = v3[1].n128_u64[0];
  *(a1 + 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{

  return MXCoreSessionCopyProperty(v5, a2, v4, a4);
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_8_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, char a46, int a47)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFTypeRef vaemCopyConnectedPortsWithDeviceListForRouteConfiguration(int a1, int a2, const void *a3, int a4, int a5)
{
  if (a5 == 1)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1869968496;
  }

  inAddress.mSelector = 1886872690;
  inAddress.mScope = v5;
  inAddress.mElement = 0;
  ioDataSize = 8;
  outData = 0;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, 0, a3, a4);
  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  result = outData;
  if (PropertyData || outData && (v9 = CFGetTypeID(outData), TypeID = CFArrayGetTypeID(), result = outData, v9 != TypeID))
  {
    if (result)
    {
      CFRelease(result);
      return 0;
    }
  }

  return result;
}

void routingSessionManager_availableAudioRoutesChanged(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = routingSessionManager_copyEligibleInEarHeadphones(*(DerivedStorage + 8));
  v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  if ([v5 isEqualToSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(DerivedStorage + 112))}])
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_3;
  }

  v6 = *(DerivedStorage + 112);
  *(DerivedStorage + 112) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routingSessionManager_updateSessionFromLatestInEarHeadphones(a2);
  if (v4)
  {
LABEL_3:
    CFRelease(v4);
  }
}

CFMutableArrayRef routingSessionManager_copyEligibleInEarHeadphones(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"RequireSmartRoutingToSuppressRoutePredictionsWithInEarHeadphones", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  theArray = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4 && !v4(a1, @"availableRouteDescriptors", v2, &theArray))
  {
    for (i = 0; ; ++i)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(theArray, i);
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return Mutable;
}

uint64_t CMSessionMgrHandleApplicationStateChange(const __CFNumber *a1, CFNumberRef number, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (!number)
  {
    return 4294954315;
  }

  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr + 4);
  if (a1)
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  }

  if (valuePtr < 1)
  {
    return 4294954315;
  }

  CMSessionMgrSetApplicationStateFromPID(valuePtr, HIDWORD(valuePtr));
  CMSMNotificationUtility_PostApplicationStateDidChange(number, a1);
  BackgroundEntitlement = CMSMUtility_FetchBackgroundEntitlement(valuePtr);
  v7 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithDisplayID:"copySessionWithDisplayID:", a3];
  v9 = MXGetSessionLog(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v7 clientName];
    v25 = valuePtr;
    StringForApplicationState = CMSMUtility_GetStringForApplicationState(HIDWORD(valuePtr));
    if (BackgroundEntitlement)
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    if ([v7 isLongFormVideo])
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v13 = [+[MXSessionManager sharedInstance](MXSessionManager isLongFormVideoApp:"isLongFormVideoApp:", a3];
    *buf = 136448770;
    v28 = "-CMSessionMgr-";
    v29 = 2082;
    if (v13)
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v30 = "CMSessionMgrHandleApplicationStateChange";
    v31 = 1024;
    v32 = 17698;
    v33 = 2114;
    v34 = a3;
    v35 = 2114;
    v36 = v24;
    v37 = 2048;
    v38 = v7;
    v39 = 1024;
    v40 = v25;
    v41 = 2114;
    v42 = StringForApplicationState;
    v43 = 2082;
    v44 = v11;
    v45 = 2082;
    v46 = v12;
    v47 = 2082;
    v48 = v14;
    _os_log_impl(&dword_1B17A2000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Client %{public}@ with session %{public}@ [%p] with pid '%d' is now %{public}@. Background entitlement: %{public}s ActiveLongFormVideoSession: %{public}s IsLongFormVideoApp %{public}s", buf, 0x68u);
  }

  result = 0;
  if (SHIDWORD(valuePtr) <= 3)
  {
    if (HIDWORD(valuePtr) == 1)
    {
      if (!MX_FeatureFlags_IsSessionBasedMutingEnabled(0, v15))
      {
        v19 = +[MXSessionManager sharedInstance];
        [(MXSessionManager *)v19 removeEntryFromMutedBundleIDCache:valuePtr bundleID:0];
      }
    }

    else
    {
      if (HIDWORD(valuePtr) != 2)
      {
        return result;
      }

      -[NSArray containsObject:]([+[MXSessionManager sharedInstance](MXSessionManager recordingClientPIDs], "containsObject:", a1);
      if (!CMSMUtility_DoesActiveAirPlayVideoSessionExistForPID(valuePtr))
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMNotificationUtility_PostStopCommandToMatchingActiveClientsWithPID(a1, 1);
      }

      CMSystemSoundMgr_DeactivateSystemSoundsForPID(valuePtr);
      CMSystemSoundMgr_StopSystemSoundsforPID();
    }

    return 0;
  }

  if (HIDWORD(valuePtr) == 4)
  {
    if (BackgroundEntitlement)
    {
      if (CMSMUtility_AnySessionBelongingToPIDIsActiveAndStopsWhenBackgrounded(valuePtr))
      {
        CMSMNotificationUtility_PostPauseCommandToPlayingLockStoppers(a1);
        if (dword_1EB75DE40)
        {
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMNotificationUtility_PostStopCommandToActiveLockStoppers(a1);
        CMSystemSoundMgr_StopSystemSoundsforPID();
      }
    }

    else if (!CMSUtility_SessionWithPIDCanContinueAirPlayingVideoIfScreenIsLocked(valuePtr))
    {
      CMSMNotificationUtility_PostPauseCommandNotificationToMatchingNotStoppedClients(a1);
      if (dword_1EB75DE40)
      {
        v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMNotificationUtility_PostStopCommandToMatchingActiveClientsWithPID(a1, 1);
      CMSystemSoundMgr_StopSystemSoundsforPID();
      v22 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
      if (v22 == valuePtr)
      {
        v23 = +[MXNowPlayingAppManager sharedInstance];
        [(MXNowPlayingAppManager *)v23 updateNowPlayingApp:valuePtr session:0 reasonForUpdate:2];
      }
    }

    CMSystemSoundMgr_DeactivateSystemSoundsForPID(valuePtr);
    return 0;
  }

  if (HIDWORD(valuePtr) != 8)
  {
    return result;
  }

  if (!BackgroundEntitlement)
  {
    CMSMNotificationUtility_PostResumeCommandToMatchingWaitingClients(a1);
    if (!dword_1EB75DE40)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (CMSUtility_SessionWithPIDWasLockStopper(valuePtr))
  {
    buf[0] = 0;
    CMSMUtility_ApplyForEachMatchingSession(0, CMSUtilityPredicate_IsMatchingLockStopperThatMustResume, a1, CMSUtilityApplier_ResumeWaitingLockStopper, buf);
    if (!dword_1EB75DE40)
    {
LABEL_41:
      CMSMNotificationUtility_PostEndInterruptionCommandToMatchingWaitingClients(a1);
      return 0;
    }

LABEL_28:
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_41;
  }

  CMSystemSoundMgr_ActivateSystemSoundsForPID(valuePtr);
  return 0;
}

void CMSessionMgrSetApplicationStateFromPID(int a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a2;
  valuePtr = a1;
  if (a2 <= 8 && ((1 << a2) & 0x117) != 0)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v4 = CFNumberCreate(v2, kCFNumberSInt32Type, &v8);
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      CMSMUtility_ApplyForEachMatchingSession(0, CMSUtilityPredicate_IsAffectedByApplicationStateChange, v3, CMSUtilityApplier_SetApplicationState, v4);
      goto LABEL_11;
    }

    if (v3)
    {
LABEL_11:
      CFRelease(v3);
      if (!v5)
      {
        return;
      }

      goto LABEL_12;
    }

    if (v4)
    {
LABEL_12:
      CFRelease(v5);
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t CMSUtilityApplier_SetApplicationState(void *a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  return [a1 setApplicationState:valuePtr];
}

void CMSMNotificationUtility_PostApplicationStateDidChange(void *a1, const void *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = @"ApplicationState";
  }

  else
  {
    v4 = 0;
  }

  if (@"ApplicationState")
  {
    v5 = a1 != 0;
  }

  else
  {
    v5 = 0;
  }

  if (@"ApplicationState")
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  keys[0] = v4;
  values = v6;
  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = v7;
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  if (a1)
  {
    v7 = CFRetain(a1);
  }

  v10 = MXGetNotificationSenderQueue(v7, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CMSMNotificationUtility_PostApplicationStateDidChange_block_invoke;
  v11[3] = &__block_descriptor_56_e5_v8__0l;
  v11[4] = a2;
  v11[5] = v9;
  v11[6] = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostApplicationStateDidChange", "CMSessionManager_NotificationUtilities.m", 1107, 0, 0, v10, v11);
}

id vaemCopyConnectedInputPortsForDefaultVADFromDeviceListWithRouteConfiguration(int a1, int a2, const void *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = vaemCopyConnectedPortsWithDeviceListForRouteConfiguration(a1, a2, a3, a4, 1);
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
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v9 objectForKey:{0x1F2897A10), "isEqualToString:", 0x1F2893B50}])
        {
          v10 = [v9 objectForKey:0x1F2897A90];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void __discoveryManager_postNotificationForDiscoverer_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t RouteDiscovererServerNotificationEnqueueDecisionFunction(const void *a1)
{
  if (CFEqual(a1, @"Discoverer_AvailableRoutesChanged"))
  {
    return 1;
  }

  if (CFEqual(a1, @"Discoverer_RoutePresentChanged"))
  {
    return 1;
  }

  result = CFEqual(a1, @"Discoverer_EndpointDescriptorChanged");
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t CMSUtility_SomeOtherClientIsPlaying(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 isPlaying] && objc_msgSend(v7, "isPlayingOutput") && (objc_msgSend(v7, "hasAudioCategory:", @"SystemSoundsAndHaptics") & 1) == 0)
        {
          v8 = [v7 doesntActuallyPlayAudio];
          if (v7 != a1 && v8 == 0)
          {
            v10 = 1;
            goto LABEL_17;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_17:

  return v10;
}

uint64_t MXGetSessionLog(uint64_t a1, uint64_t a2)
{
  if (MXGetSessionLog_onceToken != -1)
  {
    MXGetSessionLog_cold_1();
  }

  return MXGetSessionLog__log;
}

uint64_t CMSUtility_SessionWithPIDWasLockStopper(int a1)
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
        if ([objc_msgSend(v7 "clientPID")] == a1 && (objc_msgSend(v7, "stopsWhenDeviceLocks") & 1) != 0)
        {
          v8 = 1;
          goto LABEL_12;
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
LABEL_12:

  return v8;
}

void *CMSUtilityPredicate_IsMatchingLockStopperThatMustResume(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if ([a2 stopsWhenDeviceLocks] && (objc_msgSend(a2, "isPlaying") & 1) == 0 && (objc_msgSend(a2, "waitingToResumeWhenDeviceUnlocksOrInForeground") & 1) != 0 || (result = objc_msgSend(a2, "wasInterruptedByNowPlayingApp"), result))
  {
    v5 = [objc_msgSend(a2 "clientPID")];
    return (v5 == valuePtr);
  }

  return result;
}

BOOL CMSUtilityPredicate_IsSameClientAndWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  v4 = [a2 waitingForEndInterruptionWhenDeviceUnlocksOrInForeground];
  result = 0;
  if (v4)
  {
    v6 = [objc_msgSend(a2 "clientPID")];
    return v6 == valuePtr;
  }

  return result;
}

void __cmsmApplicationStateChangedNotificationCallback_block_invoke_2(uint64_t a1)
{
  CMSMUtility_ApplyForEachMatchingSession(0, CMSUtilityPredicate_DoesInheritApplicationStateFromPID, *(a1 + 32), CMSUtilityApplier_InheritApplicationStateAndPostApplicationStateDidChangeNotification, *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

BOOL CMSUtilityPredicate_DoesInheritApplicationStateFromPID(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (!valuePtr)
  {
    return 0;
  }

  v4 = [a2 pidToInheritAppStateFrom];
  return v4 == valuePtr;
}

void FigRoutingManagerApplicationStateChangedNotificationCallback(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(FigRoutingManagerGetSharedManager(a1, a2) + 1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigRoutingManagerApplicationStateChangedNotificationCallback_block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v6 = v2;
  v7 = v3;
  MXDispatchAsync("FigRoutingManagerApplicationStateChangedNotificationCallback", "FigRoutingManager_iOS.m", 117, 0, 0, v4, v5);
}

void __FigRoutingManagerApplicationStateChangedNotificationCallback_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyEndpointsToDeactivateInfoAndUUIDsForPID(*(a1 + 32), *(a1 + 36), &theArray, &v9);
  if (!theArray)
  {
    goto LABEL_12;
  }

  Count = CFArrayGetCount(theArray);
  v2 = Count;
  if (Count < 1 || dword_1EB75DF20 == 0)
  {
    if (Count < 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    v7 = CFArrayGetValueAtIndex(v9, v5);
    Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
    v11 = 0;
    FigCFDictionaryGetInt64IfPresent();
    FigRoutingManager_iOSDeactivateEndpoint(Value, v11, 0);
    FigRoutingManagerContextUtilities_SetPickedEndpoints(v7, 0, @"configUpdateReasonEndedApplicationStateChanged", 0, 0);
    ++v5;
  }

  while (v2 != v5);
LABEL_10:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

LABEL_12:
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t FigRoutingManagerContextUtilities_CopyEndpointsToDeactivateInfoAndUUIDsForPID(int a1, int a2, void *a3, void *a4)
{
  result = 4294954296;
  if (a3 && a4)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v12 = CFArrayCreateMutable(v9, 0, v10);
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v13 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v14 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v14 = 504;
    }

    v15 = *v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __FigRoutingManagerContextUtilities_CopyEndpointsToDeactivateInfoAndUUIDsForPID_block_invoke;
    v18[3] = &__block_descriptor_64_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v13 = 0;
    }

    v19 = a2;
    v20 = a1;
    v18[4] = v13;
    v18[5] = Mutable;
    v18[6] = v12;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyEndpointsToDeactivateInfoAndUUIDsForPID", "FigRoutingManagerContextUtilities.m", 3742, 0, 0, v15, v18);
    if (Mutable)
    {
      v16 = CFRetain(Mutable);
    }

    else
    {
      v16 = 0;
    }

    *a3 = v16;
    if (v12)
    {
      v17 = CFRetain(v12);
    }

    else
    {
      v17 = 0;
    }

    *a4 = v17;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    return 0;
  }

  return result;
}

void CMSUtility_CreateReporterIDIfNeeded(void *a1)
{
  if ([a1 reporterIDs])
  {
    return;
  }

  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:off_1EB75DFF8()];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "reporterIDs")}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "originalReporterIDs")}];
  [v3 addObject:v2];
  [a1 setReporterIDs:v3];
  CMSMNotificationUtility_PostReporterIDsDidChange(a1);
  [v4 addObject:v2];
  [a1 setOriginalReporterIDs:v4];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [a1 displayID];
  v6 = v5 != 0;
  if (v5)
  {
    [v9 setObject:objc_msgSend(a1 forKey:{"displayID"), 0x1F2898830}];
  }

  v7 = [a1 isMemberOfClass:objc_opt_class()];
  if (v7)
  {
    v6 = 1;
    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), 0x1F2898CF0}];
    v7 = [v9 setObject:objc_msgSend(a1 forKey:{"remoteDeviceID"), 0x1F2898D10}];
  }

  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v7, v8))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 setObject:MEMORY[0x1E695E118] forKey:0x1F2898D50];
      v6 = 1;
    }
  }

  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    [v9 setObject:MEMORY[0x1E695E118] forKey:0x1F2898D30];
LABEL_12:
    off_1EB75E020([v2 longLongValue], v9);
    goto LABEL_13;
  }

  if (v6)
  {
    goto LABEL_12;
  }

LABEL_13:
}

void CMSMNotificationUtility_PostReporterIDsDidChange(void *a1)
{
  v2 = a1;
  v4 = MXGetNotificationSenderQueue(v2, v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMNotificationUtility_PostReporterIDsDidChange_block_invoke;
  v5[3] = &unk_1E7AE7CE0;
  v5[4] = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostReporterIDsDidChange", "CMSessionManager_NotificationUtilities.m", 437, 0, 0, v4, v5);
}

void CMSMDebugUtility_PrintCollection(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
}

uint64_t CMSMUtility_IsModeValidForCategory(const void *a1, uint64_t a2)
{
  if (FigCFEqual())
  {
    return 1;
  }

  if ([+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    result = 0;
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    result = !CMSMUtility_IsCategoryInputOnly(a1);
    goto LABEL_16;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (FigCFEqual() || FigCFEqual())
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    result = CMSMUtility_IsRecordingCategory(a1);
    goto LABEL_16;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (CMSMUtility_IsRecordingCategory(a1) || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      goto LABEL_25;
    }

LABEL_32:
    IsPlayAndRecordCategory = FigCFEqual();
LABEL_33:
    result = IsPlayAndRecordCategory != 0;
    goto LABEL_16;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    if (CMSMUtility_IsCategoryInputOnly(a1))
    {
LABEL_25:
      result = 1;
      goto LABEL_16;
    }

    IsPlayAndRecordCategory = CMSMUtility_IsPlayAndRecordCategory(a1);
    goto LABEL_33;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    goto LABEL_43;
  }

  if (FigCFEqual() || FigCFEqual())
  {
LABEL_15:
    result = CMSMUtility_IsPlayAndRecordCategory(a1);
    goto LABEL_16;
  }

  result = FigCFEqual();
  if (result)
  {
LABEL_43:
    result = FigCFEqual();
  }

LABEL_16:
  if ((dword_1EB75E11C & 2) != 0)
  {
    return result || FigCFEqual() != 0;
  }

  return result;
}

BOOL CMSUtility_IsAnExtension(void *a1)
{
  v1 = MX_RunningBoardServices_CopyBundleExtensionPointID(a1);
  v2 = FigCFEqual();
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 == 0;
}

BOOL CMSMUtility_IsPiPAllowedForCategory(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    if (FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      return 1;
    }

    else
    {

      return CMSMUtility_IsPlayAndRecordCategory(v1);
    }
  }

  return result;
}

void *CMSUtility_GetIsEligibleForNowPlayingAppConsideration(void *result)
{
  if (result)
  {
    return [result isEligibleForNowPlayingAppConsideration];
  }

  return result;
}

uint64_t CMSMNP_GetNowPlayingAppIsPlaying()
{
  if (!CMSMDeviceState_IsHomePodHub() && [+[MXNowPlayingAppManager nowPlayingAppPID]< 1 sharedInstance]
  {
    return 0;
  }

  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = OUTLINED_FUNCTION_0_27(v1, v2, v3, v4, v5, v6, v7, v8, v23, v26, v29, v32, v35);
  if (v9)
  {
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v0);
        }

        v12 = *(v25 + 8 * i);
        isActive = objc_msgSend_isActive(v12);
        if (isActive)
        {
          isActive = [v12 isPlaying];
          if (isActive)
          {
            isActive = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v12);
            if (isActive)
            {
              v21 = [objc_msgSend(v12 "clientPID")];
              isActive = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
              if (v21 == isActive)
              {
                v9 = 1;
                goto LABEL_16;
              }
            }
          }
        }
      }

      v9 = OUTLINED_FUNCTION_1_19(isActive, v14, v15, v16, v17, v18, v19, v20, v24, v25, v27, v28, v30, v31, v33, v34, v36);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v9;
}

void *CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange()
{
  v10 = *MEMORY[0x1E69E9840];
  result = CMSMNP_GetNowPlayingAppIsPlaying();
  if (CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange_nowPlayingAppIsPlayingCached != result)
  {
    v2 = result;
    v3 = qword_1EB75E120;
    if (v2)
    {
      if (!qword_1EB75E120)
      {
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"State", -[MXNowPlayingAppManager nowPlayingAppDisplayID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppDisplayID"), @"DisplayID", 0}];
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        result = [MXSystemController notifyAll:@"NowPlayingAppIsPlayingDidChange" payload:v8 dontPostIfSuspended:0];
        goto LABEL_16;
      }

      dispatch_source_cancel(qword_1EB75E120);
      v5 = qword_1EB75E120;
      if (qword_1EB75E120)
      {
        dispatch_release(qword_1EB75E120);
        qword_1EB75E120 = 0;
      }

      v6 = MXGetSerialQueue(v5, v4);
      result = MXDispatchUtilityCreateOneShotTimer("CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange", "CMSessionManager_NotificationUtilities.m", 688, 0, 0, v6, &__block_literal_global_18_0, 0, 0.25, 0);
      qword_1EB75E120 = result;
      if (result)
      {
LABEL_16:
        CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange_nowPlayingAppIsPlayingCached = v2;
        return result;
      }

      LODWORD(result) = v2;
    }

    else
    {
      if (qword_1EB75E120)
      {
        dispatch_source_cancel(qword_1EB75E120);
        v3 = qword_1EB75E120;
        if (qword_1EB75E120)
        {
          dispatch_release(qword_1EB75E120);
          qword_1EB75E120 = 0;
        }
      }

      v7 = MXGetSerialQueue(v3, v1);
      result = MXDispatchUtilityCreateOneShotTimer("CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange", "CMSessionManager_NotificationUtilities.m", 716, 0, 0, v7, &__block_literal_global_21, 0, 0.25, 0);
      qword_1EB75E120 = result;
      if (result)
      {
        goto LABEL_16;
      }
    }

    result = CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChangeDelayed(result);
    goto LABEL_16;
  }

  return result;
}

void CMSMNotificationUtility_PostNowPlayingAppStackDidChange(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsNowPlayingAppStackEnabled(a1, a2))
  {
    v2 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager copyTopOfNowPlayingAppStack];
    if (v2)
    {
      v3 = v2;
      if (([CMSMNotificationUtility_PostNowPlayingAppStackDidChange_sCachedTopOfNowPlayingStack isEqualToString:v2] & 1) == 0)
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMNotificationUtility_PostNowPlayingAppStackDidChange_sCachedTopOfNowPlayingStack = v3;
        +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"NowPlayingAppStackDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v3, @"TopOfStackDisplayID", 0}], 0);
      }
    }

    else
    {

      MXSimulateCrash("Current top of NowPlaying app stack is nil, this should never happen!!! Please file a radar to MediaExperience (New Bugs) | All");
    }
  }
}

uint64_t MX_FeatureFlags_IsNowPlayingAppStackEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsNowPlayingAppStackEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsNowPlayingAppStackEnabled_cold_1();
  }

  return MX_FeatureFlags_IsNowPlayingAppStackEnabled_sIsNowPlayingAppStackEnabled;
}

double CMSUtility_GetPreferredIOBufferDuration(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 preferredIOBufferDuration];
  return result;
}

void *CMSUtility_GetPreferredIOBufferFrames(void *result, const char *a2)
{
  if (result)
  {
    return [result preferredIOBufferFrames];
  }

  return result;
}

BOOL vaemIsAudioDestinationAvailable(uint64_t a1)
{
  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
LABEL_21:
    v6 = v3 == 0;
    return !v6;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundRemoteVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager speechDetectionVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager speakerAlertVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager siriOutputVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager musicVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager perAppAirPlayVADID];
    goto LABEL_21;
  }

  v4 = FigCFEqual();
  if (v4)
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager lowLatencyVADID];
    goto LABEL_21;
  }

  result = CMSMVAUtility_IsAdditiveRoutingEnabled(v4, v5);
  if (!result)
  {
    return result;
  }

  v6 = -[NSDictionary objectForKey:]([+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager vadNameToID], "objectForKey:", a1) == 0;
  return !v6;
}

void __cmsCopyInitialRouteSharingPolicyToSession_block_invoke_2(uint64_t a1)
{
  if (FigCFEqual())
  {
    [*(a1 + 32) updateRouteSharingPolicy:3 setByClient:1];
  }

  if ([*(a1 + 32) isLongFormVideo])
  {
    [*(a1 + 32) routingContextUUID];
    if (!FigCFEqual())
    {
      [*(a1 + 32) setRoutingContextUUID:qword_1EB75E1A8];
      [*(a1 + 32) updateRouteSharingPolicy:3 setByClient:1];
      cmsUpdateAudioBehavior(*(a1 + 32), v2);
      CMSMUtility_InformAirPlayOfAudioModeIfNecessary([*(a1 + 32) routingContextUUID]);
      v3 = *(a1 + 32);
      v5 = MXGetNotificationSenderQueue(v3, v4);
      MXDispatchAsyncFunction("cmsCopyInitialRouteSharingPolicyToSession_block_invoke_2", "CMSessionManager.m", 6904, 0, 0, v5, *(a1 + 32), CMSMNotificationUtility_PostSessionRoutingContextDidChange_f);
    }
  }

  CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 32);
}

void CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(int a1, int a2)
{
  if (CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_onceToken != -1)
  {
    CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_cold_1();
  }

  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copySpeechDetectSession];
  if (a1)
  {
    if (a2)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }
  }

  else
  {
    v5 = [+[MXSessionManager sharedInstance](MXSessionManager currentSpeechDetectStyle:"currentSpeechDetectStyle:", v4];
  }

  v6 = [CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_sLastSpeechDetectStyleLock lock];
  if (CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_sLastSpeechDetectStyle != v5)
  {
    CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_sLastSpeechDetectStyle = v5;
    v8 = MXGetNotificationSenderQueue(v6, v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_block_invoke_2;
    v9[3] = &__block_descriptor_38_e5_v8__0l;
    v10 = v5;
    v11 = a1;
    v12 = a2;
    MXDispatchAsync("CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded", "CMSessionManager_NotificationUtilities.m", 360, 0, 0, v8, v9);
  }

  [CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_sLastSpeechDetectStyleLock unlock];
}

uint64_t _MXSessionCopyProperty(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = ___MXSessionCopyProperty_block_invoke;
      v17 = &unk_1E7AE7A48;
      v18 = &v22;
      v19 = a1;
      v20 = a2;
      v21 = a3;
      MXDispatchAsyncAndWait("_MXSessionCopyProperty", "MXSession_CInterfaceCommon.m", 301, 0, 0, v7, &v14);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v9 = [a1 isMemberOfClass:objc_opt_class()];
      if (!v9 || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v9, v10))
      {
        v11 = [a1 _copyPropertyForKey:a2 valueOut:a3];
        *(v23 + 6) = v11;
      }

      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionCopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
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

void sub_1B17E9078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMSMUtility_GetCurrentOutputPortAtIndex(uint64_t a1)
{
  v2 = dword_1EB75E0C8;
  FigSimpleMutexLock();
  if (v2 <= a1)
  {
    v3 = 0;
  }

  else
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, v5);
    v3 = v5[10];
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t vaeDoesBluetoothSupportFeature(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (result)
  {
    v2 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"fstbbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      outData = 0;
      ioDataSize = 8;
      PropertyData = AudioObjectGetPropertyData(v2, &inAddress, 0, 0, &ioDataSize, &outData);
      if (PropertyData || !outData)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        FigCFDictionaryGetBooleanIfPresent();
      }

      if (outData)
      {
        CFRelease(outData);
      }

      return v8;
    }
  }

  return result;
}

void CMSMNotificationUtility_PostSessionAudioCategoryDidChange(id val)
{
  inited = objc_initWeak(&location, val);
  v4 = MXGetNotificationSenderQueue(inited, v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMNotificationUtility_PostSessionAudioCategoryDidChange_block_invoke;
  v5[3] = &unk_1E7AEB360;
  objc_copyWeak(&v6, &location);
  v5[4] = val;
  MXDispatchAsync("CMSMNotificationUtility_PostSessionAudioCategoryDidChange", "CMSessionManager_NotificationUtilities.m", 1793, 0, 0, v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_1B17E940C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void *CMSUtilityPredicate_IsSameClientAndWaitingToResumeWhenDeviceUnlocksOrInForeground(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (([a2 waitingToResumeWhenDeviceUnlocksOrInForeground] & 1) != 0 || (result = objc_msgSend(a2, "wasInterruptedByNowPlayingApp"), result))
  {
    v5 = [objc_msgSend(a2 "clientPID")];
    return (v5 == valuePtr);
  }

  return result;
}

void CMSMNotificationUtility_PostPiPIsPossibleDidChange_f(void *a1)
{
  BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"PiPIsPossibleDidChange_PiPPossible", [a1 isPiPPossible]);
  CMSMUtility_PostNotificationToSession(a1, @"PiPIsPossibleDidChange", BooleanPayload);
  if (BooleanPayload)
  {
    CFRelease(BooleanPayload);
  }
}

CFDictionaryRef CMSMNotificationUtility_CreateBooleanPayload(void *a1, int a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = a1 != 0;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  values = v4;
  keys[0] = v6;
  return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

void CMSMUtility_InformAirPlayOfAudioModeIfNecessary(uint64_t a1)
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
  if (FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626A8]) || FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626B0]))
  {
    v2 = CMSMUtility_CopyMostRelevantAirPlayAudioModeForRoutingContext(a1);
    FigEndpointUtility_SetPropertyOnEndpointStreams();
    if (v2)
    {
      CFRelease(v2);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294949876;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v6 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v6 = 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v7 = 504;
  }

  v8 = *v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex_block_invoke;
  v11[3] = &unk_1E7AE79A8;
  v11[4] = &v12;
  v11[5] = v6;
  v11[6] = a1;
  v11[7] = a2;
  v11[8] = a3;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex", "FigRoutingManagerContextUtilities.m", 2736, 0, 0, v8, v11);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void _routingContextUtilities_copyPickedEndpointAtIndex(uint64_t a1, CFIndex a2, void *a3)
{
  theArray = 0;
  _routingContextUtilities_copyPickedEndpoints(a1, &theArray);
  v5 = theArray;
  if (a2 < 0 || (!theArray ? (Count = 0) : (Count = CFArrayGetCount(theArray)), Count <= a2))
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, a2);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }
  }

  *a3 = ValueAtIndex;
  if (v5)
  {

    CFRelease(v5);
  }
}

void CMSMNotificationUtility_PostSessionRoutingContextDidChange_f(void *a1)
{
  CMSMUtility_PostNotificationToSession(a1, @"RoutingContextDidChange", 0);
}

uint64_t cmsSetAudioMode(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [a1 audioMode];
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
  IsModeValidForCategory = CMSMUtility_IsModeValidForCategory([a1 audioCategory], a2);
  if (IsModeValidForCategory)
  {
    if ([a1 mode] == VADModeFromFigModeName)
    {
      [a1 audioMode];
      IsModeValidForCategory = FigCFEqual();
      if (IsModeValidForCategory)
      {
        goto LABEL_26;
      }
    }

    if (![a1 isSharePlayCallSession] || (IsModeValidForCategory = CMSUtility_ChangeKeepsPhoneCallBehavior(objc_msgSend(a1, "audioCategory"), a2), IsModeValidForCategory))
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [a1 setAudioMode:a2];
      [a1 setDefaultVPChatMode:0];
      [a1 setMode:VADModeFromFigModeName];
      CustomizedCategory = CMSUtility_GetCustomizedCategory(a1);
      v13 = [a1 interruptionStyle];
      if ([a1 interruptionStyleSetByClient])
      {
        v14 = [a3 objectForKey:@"InterruptionStyle"] == 0;
      }

      else
      {
        v14 = 0;
      }

      [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", v14];
      v15 = cmsSetAudioCategory(a1, CustomizedCategory, 1, a3);
      if (v15)
      {
        v11 = v15;
        [a1 setAudioMode:v6];
        IsModeValidForCategory = [a1 setMode:CMSMVAUtility_GetVADModeFromFigModeName(v6)];
        goto LABEL_27;
      }

      [a1 updateDefaultInterruptionFadeDuration:v6];
      [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", 0];
      if (v14)
      {
        [a1 setInterruptionStyleAtClientRequest:v13];
      }

      CMSMUtility_InformAirPlayOfAudioModeIfNecessary([a1 routingContextUUID]);
      CMSMNotificationUtility_PostSessionAudioModeDidChange(a1);
      CanClientsSetEmergencyAlertPriority = [a1 hasAudioMode:@"Beacon"];
      if (CanClientsSetEmergencyAlertPriority)
      {
        [a1 setMakesMusicResume:0];
        CanClientsSetEmergencyAlertPriority = MX_FeatureFlags_CanClientsSetEmergencyAlertPriority();
        if (!CanClientsSetEmergencyAlertPriority)
        {
          CanClientsSetEmergencyAlertPriority = [a1 clientPriority];
          if (CanClientsSetEmergencyAlertPriority)
          {
            CanClientsSetEmergencyAlertPriority = [a1 setClientPriority:0];
          }
        }
      }

      if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(CanClientsSetEmergencyAlertPriority, v17) && [a1 doesSessionConfigurationChangeRequireOutputUnmute:objc_msgSend(a1 oldAudioMode:{"audioCategory"), v6}])
      {
        [a1 setIsOutputMuted:0];
        if (objc_msgSend_isActive(a1))
        {
          [+[MXSessionManager sharedInstance](MXSessionManager unmuteOutputForSession:"unmuteOutputForSession:", a1];
        }

        CMSMNotificationUtility_PostIsOutputMutedDidChange(a1, v18);
      }

      IsModeValidForCategory = [a1 updateAllowEnhancedDialogue];
LABEL_26:
      v11 = 0;
      goto LABEL_27;
    }

    if (dword_1EB75DE40)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      IsModeValidForCategory = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = 4294951615;
  }

  else
  {
    v11 = 4294954315;
  }

LABEL_27:
  if (!MX_FeatureFlags_IsSessionBasedMutingEnabled(IsModeValidForCategory, v9))
  {
    isActive = objc_msgSend_isActive(a1);
    if (isActive)
    {
      if (MX_FeatureFlags_IsCallManagementMuteControlEnabled(isActive, v20))
      {
        [+[MXSessionManager sharedInstance](MXSessionManager applyUplinkMute:"applyUplinkMute:", a1];
      }
    }
  }

  return v11;
}

const char *CMSMUtility_GetStyleString(int a1)
{
  if (a1 > 7)
  {
    if (a1 == 8)
    {
      return "StopThoseYouCan_MixWithOthers";
    }

    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return "MixWithEveryone_DuckTheirVolume";
      }

      return "UNKNOWN STYLE";
    }

    return "MixWithEveryone";
  }

  else
  {
    if (!a1)
    {
      return "NotSet";
    }

    if (a1 != 1)
    {
      if (a1 == 4)
      {
        return "StopThoseYouCanAllowingResumption_MixWithOthers";
      }

      return "UNKNOWN STYLE";
    }

    return "StopEveryone";
  }
}

uint64_t CMSystemSoundMgr_ActivateSystemSoundsForPID(uint64_t result)
{
  if (gCMSS_1)
  {
    v1 = result;
    FigSimpleMutexLock();
    for (i = gCMSS_0; i; i = *i)
    {
      if (*(i + 12) == v1)
      {
        if (*(i + 16) && !*(i + 18))
        {
          cmsmPrewarmAudioForSSID(1, *(i + 8), v1);
          *(i + 18) = 1;
        }

        if (*(i + 17) && !*(i + 19))
        {
          cmsmPrewarmVibeForSSID(1, *(i + 8), *(i + 12));
          *(i + 19) = 1;
        }

        CMSMSleep_CreatePrewarmIdleSleepPreventor(*(i + 8), *(i + 12));
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

id cmsmCopySelectablePortsForRouteConfiguration(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v26 = __PAIR64__(a2, a1);
  v27 = a3;
  v6 = vaemCopyConnectedPortsListForRouteConfiguration(a1, a2, a3, a4, a5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [v12 unsignedIntValue];
        v14 = vaeCopyNameForPort(v13);
        PortTypeFromPortID = vaeGetPortTypeFromPortID(v13);
        if (([v14 isEqualToString:0x1F2897C50] & 1) == 0 && PortTypeFromPortID != 1885433975)
        {
          v16 = cmsmCopyDetailedPortInfoForRouteConfiguration([v12 unsignedIntValue], v26, HIDWORD(v26), v27, a4, a5);
          [obj addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  if (a5 || !MX_FeatureFlags_IsOnenessEnabled(v17, v18))
  {
    return obj;
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [*(*(&v30 + 1) + 8 * j) mutableCopy];
        if (vaeGetPortTypeFromPortID([objc_msgSend(v24 objectForKey:{@"RouteDetailedDescription_ID", "unsignedIntValue"}]) == 1885565807)
        {
          [v24 setObject:@"Speaker" forKey:@"RouteDetailedDescription_Name"];
          [v24 setObject:@"Speaker" forKey:@"RouteDetailedDescription_UID"];
        }

        [v19 addObject:v24];
      }

      v21 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  return v19;
}

CFTypeRef vaemCopyConnectedPortsListForRouteConfiguration(uint64_t a1, uint64_t a2, const void *a3, int a4, int a5)
{
  v7 = a2;
  v8 = a1;
  if (a5 == 1)
  {
    v9 = 1768845428;
  }

  else
  {
    v9 = 1869968496;
  }

  inAddress.mSelector = 1668313699;
  inAddress.mScope = v9;
  inAddress.mElement = 0;
  ioDataSize = 8;
  v10 = CMSMUtility_IsSharePlayCallSessionActive(a1, a2);
  if ((v10 || CMSMUtility_IsSharePlayMediaSessionActive(v10, v11)) && byte_1EB75D1A0 == 1)
  {
    RouteConfigurationDictionary = 0;
  }

  else
  {
    RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(v8, v7, 0, a3, a4);
  }

  outData = 0;
  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  if (PropertyData)
  {
    return 0;
  }

  result = outData;
  if (outData)
  {
    v15 = CFGetTypeID(outData);
    TypeID = CFArrayGetTypeID();
    result = outData;
    if (v15 != TypeID)
    {
      if (outData)
      {
        CFRelease(outData);
        return 0;
      }
    }
  }

  return result;
}

CFDictionaryRef cmsmCopyDetailedPortInfoForRouteConfiguration(AudioObjectID a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, int a6)
{
  v7 = a5;
  v9 = a3;
  v10 = a2;
  v69 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  *keys = 0u;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *values = 0u;
  v11 = vaeCopyDeviceIdentifierFromVADPort(a1);
  cf = v11;
  if (v11)
  {
    keys[0] = @"RouteDetailedDescription_UID";
    values[0] = v11;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  allocator = *MEMORY[0x1E695E480];
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v50 = v13;
  if (v13)
  {
    *(keys | (8 * v12)) = @"RouteDetailedDescription_ID";
    *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v12++ & 1))) = v13;
  }

  IsHeadphonesPort = vaeIsHeadphonesPort(valuePtr);
  v15 = *MEMORY[0x1E695E4D0];
  v16 = *MEMORY[0x1E695E4C0];
  if (IsHeadphonesPort)
  {
    v17 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v17 = *MEMORY[0x1E695E4C0];
  }

  if (v17)
  {
    keys[v12] = @"RouteDetailedDescription_IsHeadphones";
    values[v12++] = v17;
  }

  v18 = valuePtr;
  if (a6 == 1)
  {
    v20 = vaeCopyFigInputDeviceNameFromVADPort(valuePtr);
  }

  else
  {
    if (a6 == 2)
    {
      v19 = vaeCopyFigInputDeviceNameFromVADPort(valuePtr);
      if (v19)
      {
        goto LABEL_18;
      }

      v18 = valuePtr;
    }

    v20 = vaeCopyFigOutputDeviceNameFromVADPort(v18);
  }

  v19 = v20;
LABEL_18:
  v21 = vaeCopySelectedDataSourceForPortAndRouteConfiguration(valuePtr, v10, v9, a4);
  if (v21)
  {
    keys[v12] = @"RouteDetailedDescription_SelectedDataSource";
    values[v12++] = v21;
  }

  v48 = v21;
  if (v19)
  {
    keys[v12] = @"RouteDetailedDescription_PortType";
    values[v12++] = v19;
  }

  v22 = vaeCopySpecificNameForPort(valuePtr);
  v23 = v22;
  if (v22)
  {
    keys[v12] = @"RouteDetailedDescription_Name";
    values[v12++] = v22;
  }

  v24 = vaeCopySubPortDescriptionsForPortAndRouteConfiguration(valuePtr, v10, v9, a4, v7);
  v25 = v24;
  if (v24)
  {
    keys[v12] = @"RouteDetailedDescription_DataSources";
    values[v12++] = v24;
  }

  v26 = vaeCopyHiddenSubPortDescriptionsForPort(valuePtr);
  v27 = v26;
  if (v26)
  {
    keys[v12] = @"RouteDetailedDescription_HiddenDataSources";
    values[v12++] = v26;
  }

  IsLiveListenSupportedOnVADPort = vaeIsLiveListenSupportedOnVADPort(valuePtr);
  keys[v12] = @"RouteDetailedDescription_LiveListenIsSupported";
  if (IsLiveListenSupportedOnVADPort)
  {
    v29 = v15;
  }

  else
  {
    v29 = v16;
  }

  values[v12] = v29;
  v30 = v12 + 1;
  v31 = vaeIsLiveListenSupportedOnVADPort(valuePtr);
  if (v31)
  {
    v33 = v15;
  }

  else
  {
    v33 = v16;
  }

  keys[v30] = @"RouteDetailedDescription_VoiceProcessingIsSupported";
  values[v30] = v33;
  v34 = v12 + 2;
  IsPersonalTranslatorEnabled = MX_FeatureFlags_IsPersonalTranslatorEnabled(v31, v32);
  if (IsPersonalTranslatorEnabled)
  {
    if (vaeDoesPortSupportFarFieldCapture(valuePtr, v36))
    {
      v38 = v15;
    }

    else
    {
      v38 = v16;
    }

    keys[v34] = @"RouteDetailedDescription_SupportsFarFieldCapture";
    values[v34] = v38;
    v39 = v12 + 3;
    IsPersonalTranslatorEnabled = vaeIsFarFieldCaptureEnabled(valuePtr, v37);
    if (IsPersonalTranslatorEnabled)
    {
      v40 = v15;
    }

    else
    {
      v40 = v16;
    }

    keys[v39] = @"RouteDetailedDescription_IsFarFieldCaptureEnabled";
    values[v39] = v40;
    v34 = v12 + 4;
  }

  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(IsPersonalTranslatorEnabled, v36))
  {
    DoesPortSupportBluetoothHighQualityContentCapture = vaeDoesPortSupportBluetoothHighQualityContentCapture(valuePtr);
    keys[v34] = @"RouteDetailedDescription_SupportsHighQualityContentCapture";
    if (DoesPortSupportBluetoothHighQualityContentCapture)
    {
      v42 = v15;
    }

    else
    {
      v42 = v16;
    }

    values[v34] = v42;
    v43 = v34 + 1;
    if (vaeIsBluetoothHighQualityContentCaptureEnabled(valuePtr))
    {
      v44 = v15;
    }

    else
    {
      v44 = v16;
    }

    keys[v43] = @"RouteDetailedDescription_HighQualityContentCaptureEnabled";
    values[v43] = v44;
    v34 += 2;
  }

  v45 = vaeCopyVADEndpointTypeForPort(valuePtr);
  if (v45)
  {
    keys[v34] = @"RouteDetailedDescriptionKey_EndpointType";
    values[v34++] = v45;
    CFRelease(v45);
  }

  v46 = CFDictionaryCreate(allocator, keys, values, v34, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v46;
}

BOOL vaeIsHeadphonesPort(_BOOL8 result)
{
  v5 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    *&inAddress.mSelector = 0x676C6F6270696870;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectGetPropertyData(result, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }

    else
    {
      return outData != 0;
    }
  }

  return result;
}

id vaeCopyFigInputDeviceNameFromVADPort(uint64_t a1)
{
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);

  return CMSMVAUtility_CopyFigInputDeviceNameFromVADPortType(PortTypeFromPortID);
}

id CMSMVAUtility_CopyFigInputDeviceNameFromVADPortType(unsigned int a1)
{
  v1 = -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager vadInputPortTypeToFigInputDeviceNameDict], "objectForKey:", a1);
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

const void *vaeCopySelectedDataSourceForPortAndRouteConfiguration(AudioObjectPropertyElement a1, int a2, int a3, const void *a4)
{
  cf = 0;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a2, a3, 0, a4, 0);
  *&inAddress.mSelector = 0x676C6F6261637263;
  inAddress.mElement = a1;
  ioDataSize = 8;
  if (!AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &cf) && cf && (v8 = CFGetTypeID(cf), v8 == CFArrayGetTypeID()))
  {
    if (CFArrayGetCount(cf) < 1)
    {
      v6 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
      v6 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }
    }
  }

  else
  {
    v6 = 0;
    cf = 0;
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t vaeCopySpecificNameForPort(AudioObjectID a1)
{
  outData[22] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = 0x676C6F6270736E6DLL;
  inAddress.mElement = 0;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData))
  {
    return outData[0];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

CFArrayRef vaeCopySubPortDescriptionsForPortAndRouteConfiguration(AudioObjectPropertyElement a1, int a2, int a3, const void *a4, int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *&outData[0] = 0;
  v48 = a2;
  v49 = a3;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a2, a3, 0, a4, a5);
  *&inAddress.mSelector = 0x676C6F6261767263;
  inObjectID = a1;
  inAddress.mElement = a1;
  ioDataSize[0] = 8;
  if (AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, ioDataSize, outData) || !*&outData[0] || (v40 = CFGetTypeID(*&outData[0]), v40 != CFArrayGetTypeID()))
  {
    *&outData[0] = 0;
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  v12 = *&outData[0];
  if (!*&outData[0])
  {
    Copy = 0;
    if (!Mutable)
    {
      return Copy;
    }

    goto LABEL_60;
  }

  Count = CFArrayGetCount(*&outData[0]);
  if (Count >= 1)
  {
    v13 = 0;
    v44 = a5;
    v43 = a4;
    v46 = v12;
    while (1)
    {
      valuePtr = 0;
      v61 = 0u;
      memset(outData, 0, sizeof(outData));
      *ioDataSize = 0u;
      v60 = 0u;
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      if (ValueAtIndex)
      {
        *&outData[0] = @"DataSourceID";
        *ioDataSize = ValueAtIndex;
        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = vaeCopyNameForSubPort(inObjectID, valuePtr);
      v17 = v16;
      if (v16)
      {
        *(outData | (8 * v15)) = @"DataSourceName";
        *(ioDataSize & 0xFFFFFFFFFFFFFFF7 | (8 * (v15++ & 1))) = v16;
      }

      theDict = 0;
      v56 = 8;
      *&v57.mSelector = 0x676C6F6273707070;
      v57.mElement = valuePtr;
      PropertyData = AudioObjectGetPropertyData(inObjectID, &v57, 0, 0, &v56, &theDict);
      v55 = PropertyData;
      if (PropertyData)
      {
        v19 = PropertyData;
        v54 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v21 = v54;
        v22 = type;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v23 = v21;
        }

        else
        {
          v23 = v21 & 0xFFFFFFFE;
        }

        if (v23)
        {
          v63 = 136315906;
          v64 = "vaeCopySelectedPolarPatternForSubPort";
          v65 = 1024;
          v66 = v19;
          v67 = 1042;
          v68 = 4;
          v69 = 2082;
          v70 = &v55;
          LODWORD(v42) = 34;
          _os_log_send_and_compose_impl(v23, 0, &inAddress, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v22, "-CMVAEndpoint- %s: AudioObjectGetPropertyData( kVirtualAudioPortPropertySubPortPolarPattern) failed with err = %d = %{public}.4s", &v63, v42);
        }

        v50 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v24 = 0;
      }

      else
      {
        v24 = theDict;
        if (theDict)
        {
          v50 = 0;
          *(outData + v15) = @"MicrophonePolarPattern";
          *&ioDataSize[2 * v15++] = v24;
        }

        else
        {
          v50 = 1;
        }
      }

      v25 = valuePtr;
      theDict = 0;
      v55 = 0;
      v26 = CMSMVAUtility_CreateRouteConfigurationDictionary(v48, v49, 0, a4, a5);
      *&v57.mSelector = 0x676C6F6273706472;
      v57.mElement = v25;
      v56 = 8;
      if (AudioObjectHasProperty(inObjectID, &v57))
      {
        v27 = AudioObjectGetPropertyData(inObjectID, &v57, 8 * (v26 != 0), v26, &v56, &theDict);
        v55 = v27;
        if (v27)
        {
          v28 = v27;
          v29 = Mutable;
          v54 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = v54;
          v32 = type;
          if (os_log_type_enabled(v30, type))
          {
            v33 = v31;
          }

          else
          {
            v33 = v31 & 0xFFFFFFFE;
          }

          if (v33)
          {
            v63 = 136315906;
            v64 = "vaeCopyPhysicalDescriptionForSubPort";
            v65 = 1024;
            v66 = v28;
            v67 = 1042;
            v68 = 4;
            v69 = 2082;
            v70 = &v55;
            LODWORD(v42) = 34;
            _os_log_send_and_compose_impl(v33, 0, &inAddress, 128, &dword_1B17A2000, v30, v32, "-CMVAEndpoint- %s: AudioObjectGetPropertyData( kVirtualAudioPropertySubPortPhysicalDescription) failed with err = %d = %{public}.4s", &v63, v42);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          theDict = 0;
          Mutable = v29;
          a5 = v44;
          a4 = v43;
        }
      }

      if (v26)
      {
        CFRelease(v26);
      }

      v34 = theDict;
      if (!theDict)
      {
        goto LABEL_39;
      }

      Value = CFDictionaryGetValue(theDict, @"region");
      if (Value)
      {
        *(outData + v15) = @"MicrophoneRegion";
        *&ioDataSize[2 * v15++] = Value;
      }

      v36 = CFDictionaryGetValue(v34, @"orientation");
      if (v36)
      {
        *(outData + v15) = @"MicrophoneOrientation";
        *&ioDataSize[2 * v15++] = v36;
      }

      v37 = CFDictionaryGetValue(v34, @"polar pattern");
      if (v37)
      {
        *(outData + v15) = @"MicrophonePolarPatterns";
        *&ioDataSize[2 * v15++] = v37;
      }

      else
      {
LABEL_39:
        if (!v15)
        {
          CFArrayAppendValue(Mutable, 0);
          v12 = v46;
          if (!v34)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      v38 = CFDictionaryCreate(allocator, outData, ioDataSize, v15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFArrayAppendValue(Mutable, v38);
      v12 = v46;
      if (v38)
      {
        CFRelease(v38);
      }

      if (!v34)
      {
        goto LABEL_44;
      }

LABEL_43:
      CFRelease(v34);
LABEL_44:
      if (v17)
      {
        CFRelease(v17);
      }

      if ((v50 & 1) == 0)
      {
        CFRelease(v24);
      }

      if (Count == ++v13)
      {
        Copy = CFArrayCreateCopy(allocator, Mutable);
        goto LABEL_59;
      }
    }
  }

  Copy = 0;
LABEL_59:
  CFRelease(v12);
  if (Mutable)
  {
LABEL_60:
    CFRelease(Mutable);
  }

  return Copy;
}

uint64_t vaeCopyNameForSubPort(AudioObjectID a1, AudioObjectPropertyElement a2)
{
  outData[22] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = 0x676C6F6273706E6DLL;
  inAddress.mElement = a2;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData))
  {
    return outData[0];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

CFArrayRef vaeCopyHiddenSubPortDescriptionsForPort(AudioObjectID a1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  outData = 0;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *&inAddress.mSelector = 0x676C6F62706E6173;
  inAddress.mElement = 0;
  ioDataSize = 8;
  if (AudioObjectHasProperty(a1, &inAddress))
  {
    PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
    Copy = 0;
    v6 = outData;
    if (!PropertyData && outData)
    {
      v7 = CFGetTypeID(outData);
      TypeID = CFArrayGetTypeID();
      v6 = outData;
      if (v7 == TypeID && (v9 = CFArrayGetCount(outData), v6 = outData, v9))
      {
        Count = CFArrayGetCount(outData);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            valuePtr = 0;
            keys[0] = 0;
            keys[1] = 0;
            values[0] = 0;
            values[1] = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(outData, v12);
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
            if (ValueAtIndex)
            {
              break;
            }

            v17 = vaeCopyNameForSubPort(a1, valuePtr);
            if (v17)
            {
              v14 = v17;
              v15 = 0;
LABEL_13:
              v16 = 0;
              keys[v15] = @"DataSourceName";
              values[v15++] = v14;
LABEL_14:
              v18 = CFDictionaryCreate(v2, keys, values, v15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFArrayAppendValue(Mutable, v18);
              if (v18)
              {
                CFRelease(v18);
              }

              if ((v16 & 1) == 0)
              {
                CFRelease(v14);
              }

              goto LABEL_19;
            }

            CFArrayAppendValue(Mutable, 0);
LABEL_19:
            if (v11 == ++v12)
            {
              goto LABEL_20;
            }
          }

          keys[0] = @"DataSourceID";
          values[0] = ValueAtIndex;
          v14 = vaeCopyNameForSubPort(a1, valuePtr);
          v15 = 1;
          if (v14)
          {
            goto LABEL_13;
          }

          v16 = 1;
          goto LABEL_14;
        }

LABEL_20:
        Copy = CFArrayCreateCopy(v2, Mutable);
        v6 = outData;
      }

      else
      {
        Copy = 0;
      }
    }

    if (v6)
    {
      CFRelease(v6);
      outData = 0;
    }
  }

  else
  {
    Copy = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

BOOL vaeIsLiveListenSupportedOnVADPort(AudioObjectID a1)
{
  inAddress.mElement = 0;
  *&inAddress.mSelector = *"psllbolg";
  ioDataSize = 4;
  outData = 0;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    v1 = 1;
  }

  else
  {
    v1 = outData == 0;
  }

  return !v1;
}

uint64_t MX_FeatureFlags_IsPersonalTranslatorEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsPersonalTranslatorEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsPersonalTranslatorEnabled_cold_1();
  }

  return MX_FeatureFlags_IsPersonalTranslatorEnabled_isPersonalTranslatorEnabled;
}

uint64_t vaeDoesPortSupportFarFieldCapture(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v9 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsPersonalTranslatorEnabled(a1, a2))
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"piffbolg";
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectHasProperty(v2, &inAddress) && AudioObjectGetPropertyData(v2, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      outData = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return outData;
  }

  else
  {
    return 0;
  }
}

uint64_t vaeIsFarFieldCaptureEnabled(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v9 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsPersonalTranslatorEnabled(a1, a2))
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"eiffbolg";
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectHasProperty(v2, &inAddress) && AudioObjectGetPropertyData(v2, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      outData = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return outData;
  }

  else
  {
    return 0;
  }
}

uint64_t vaeIsBluetoothHighQualityContentCaptureEnabled(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"eiaabolg";
  inAddress.mElement = 0;
  if (result)
  {
    v1 = result;
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return 0;
      }

      else
      {
        return outData != 0;
      }
    }
  }

  return result;
}

__CFString *vaeCopyVADEndpointTypeForPort(uint64_t a1)
{
  VADEndpointTypeForPort = vaeGetVADEndpointTypeForPort(a1);
  if (VADEndpointTypeForPort > 1701868659)
  {
    switch(VADEndpointTypeForPort)
    {
      case 1701868660:
        v2 = kMXSession_EndpointType_TTY;
        return *v2;
      case 1701868910:
        v2 = kMXSession_EndpointType_Unspecified;
        return *v2;
      case 1701869160:
        v2 = kMXSession_EndpointType_Vehicle;
        return *v2;
    }

LABEL_12:
    v2 = kMXSession_EndpointType_Other;
    return *v2;
  }

  if (VADEndpointTypeForPort == 1701865569)
  {
    v2 = kMXSession_EndpointType_HearingAid;
    return *v2;
  }

  if (VADEndpointTypeForPort == 1701865584)
  {
    v2 = kMXSession_EndpointType_Headphones;
    return *v2;
  }

  if (VADEndpointTypeForPort != 1701868400)
  {
    goto LABEL_12;
  }

  v2 = kMXSession_EndpointType_Speakers;
  return *v2;
}

uint64_t vaeGetVADEndpointTypeForPort(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = 1701868910;
  outData = 1701868910;
  if (a1)
  {
    *&inAddress.mSelector = 0x676C6F6270657074;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectHasProperty(a1, &inAddress))
    {
      if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        return outData;
      }
    }
  }

  return v1;
}

BOOL CMSMUtility_FetchUIShouldIgnoreRemoteControlEvents(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"UIShouldIgnoreRemoteControlEvents", a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFBooleanGetValue(v1) != 0;
  CFRelease(v2);
  return v3;
}

uint64_t MX_FeatureFlags_IsAirPlayDaemonEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAirPlayDaemonEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAirPlayDaemonEnabled_isAirPlayDaemonEnabled;
}

uint64_t CMSUtility_SessionWithPIDIsPlaying(int a1)
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
        if ([v7 isPlaying] && objc_msgSend(objc_msgSend(v7, "clientPID"), "intValue") == a1)
        {
          v8 = 1;
          goto LABEL_12;
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
LABEL_12:

  return v8;
}

uint64_t CMSUtility_GetApplicationStateForSession(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (![a1 pidToInheritAppStateFrom])
  {
    [a1 audioCategory];
    if (!FigCFEqual())
    {
      v2 = [objc_msgSend(a1 "clientPID")];
      goto LABEL_4;
    }

    return 0;
  }

  v2 = [a1 pidToInheritAppStateFrom];
LABEL_4:

  return MX_RunningBoardServices_GetApplicationStateForPID(v2, 1);
}

void CMSMNotificationUtility_PostSessionAudioModeDidChange(void *a1)
{
  v2 = a1;
  v4 = MXGetNotificationSenderQueue(v2, v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMNotificationUtility_PostSessionAudioModeDidChange_block_invoke;
  v5[3] = &unk_1E7AE7CE0;
  v5[4] = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostSessionAudioModeDidChange", "CMSessionManager_NotificationUtilities.m", 102, 0, 0, v4, v5);
}

const __CFNumber *MXCFNumberGetValueUInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

void CMSMUtility_UpdateRoutingContextForSessionsWithPID(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([objc_msgSend(v7 "clientPID")] == a1)
        {
          CMSUtility_UpdateRoutingContextForSession(v7);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t FigRoutingManagerContextUtilities_GetContextString(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __FigRoutingManagerContextUtilities_GetContextString_block_invoke;
      v3[3] = &unk_1E7AE7140;
      v3[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
      v3[6] = v1;
      v3[4] = &v4;
      MXDispatchSync("FigRoutingManagerContextUtilities_GetContextString", "FigRoutingManagerContextUtilities.m", 577, 0, 0, qword_1EB75CF98, v3);
    }

    v1 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

void cmsutility_handleRoutingContextChanged(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (objc_msgSend_isActive(a1))
  {
    cmsBeginInterruptionGuts(a1, 0, 2);
  }

  cmsUpdateAudioBehavior(a1, v3);
  CMSMUtility_InformAirPlayOfAudioModeIfNecessary([a1 routingContextUUID]);
  v4 = a1;
  v6 = MXGetNotificationSenderQueue(v4, v5);
  MXDispatchAsyncFunction("cmsutility_handleRoutingContextChanged", "CMSessionManager_SessionUtilities.m", 5355, 0, 0, v6, a1, CMSMNotificationUtility_PostSessionRoutingContextDidChange_f);
  CMSMNotificationUtility_PostActiveAudioRouteDidChange(a1, qword_1EB75E1C0, 0);
}

__CFString *routingContextUtilities_getFeatureString(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E7AE7BE0[a1 - 1];
  }
}

void CMSMNotificationUtility_PostActiveAudioRouteDidChange(void *a1, const void *a2, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v15 = 0;
  FigCFDictionaryGetIntIfPresent();
  CMSMUtility_MapCMSRouteChangeReasonToString(0);
  v14 = 0;
  FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(qword_1EB75E1A8);
  FigRoutingManagerContextUtilities_GetContextString(a3);
  if (FigCFDictionaryGetBooleanIfPresent())
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_6;
    }
  }

  else if (dword_1EB75DE40)
  {
LABEL_6:
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CMSUtility_AreRoutingContextsEquivalent(qword_1EB75E190, a3))
  {
    +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"ActiveAudioRouteDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v14 != 0), @"ShouldPause", 0}], 0);
  }

  v7 = a1;
  v8 = CFRetain(a2);
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  v10 = MXGetNotificationSenderQueue(v8, v9);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CMSMNotificationUtility_PostActiveAudioRouteDidChange_block_invoke;
  v11[3] = &unk_1E7AE79D0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  MXDispatchAsync("CMSMNotificationUtility_PostActiveAudioRouteDidChange", "CMSessionManager_NotificationUtilities.m", 1152, 0, 0, v10, v11);
}

uint64_t MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_cold_1();
  }

  return MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_sIsQuiesceableWiredConnectionEnabled;
}

__CFDictionary *CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a1;
  v7 = 0;
  v35 = a1;
  v34 = 0;
  v8 = MEMORY[0x1E695E480];
  if (a1)
  {
    goto LABEL_2;
  }

  if (!MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(a1, a2) || vaemIsPersistentRouteActive())
  {
    v16 = OUTLINED_FUNCTION_1_13();
    v21 = cmsmCopyActiveNonWirelessPortsListForRouteConfigurationScopeAndDevice(v16, v17, v18, v19, 0, v20);
    if (!v21)
    {
      goto LABEL_22;
    }

LABEL_18:
    v7 = v21;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v7 count] || (v35 = objc_msgSend(objc_msgSend(v7, "firstObject"), "unsignedIntValue")) == 0)
    {
LABEL_21:
      CFRelease(v7);
      goto LABEL_22;
    }

LABEL_2:
    cf = 0;
    v9 = qword_1EB75E090;
    v10 = *(*(CMBaseObjectGetVTable() + 24) + 8);
    if (!v10 || (v11 = *v8, v10(v9, 0x1F289B9D0, *v8, &v35, &cf), !cf))
    {
LABEL_15:
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (v6)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v14 = 0x1F289D170;
LABEL_13:
        v13(CMBaseObject, v14, v11, &v34);
      }
    }

    else
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v14 = 0x1F289D190;
        goto LABEL_13;
      }
    }

    CFRelease(cf);
    goto LABEL_15;
  }

  v22 = OUTLINED_FUNCTION_1_13();
  v21 = cmsmCopyActiveNonQuiesceablePortsForRouteConfigurationScopeAndDevice(v22, v23, v24, v25, a6, 0, v26);
  if (v21)
  {
    goto LABEL_18;
  }

LABEL_22:
  Mutable = v34;
  if (!v34)
  {
    v28 = *v8;
    Mutable = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v29 = MGCopyAnswer();
      v30 = CFStringCreateWithFormat(v28, 0, @"%@...", v29);
      if (!v30)
      {
        CFDictionarySetValue(Mutable, @"RouteType", @"Default");
        if (!v29)
        {
          return Mutable;
        }

        goto LABEL_26;
      }

      v31 = v30;
      CFDictionarySetValue(Mutable, @"RouteName", v30);
      CFDictionarySetValue(Mutable, @"RouteType", @"Default");
      CFRelease(v31);
      if (v29)
      {
LABEL_26:
        CFRelease(v29);
      }
    }
  }

  return Mutable;
}

CFTypeRef cmsmCopyActiveNonWirelessPortsListForRouteConfigurationScopeAndDevice(int a1, int a2, const void *a3, const void *a4, int a5, uint64_t a6)
{
  cf = 0;
  outData = 0;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, a3, a4, 0);
  if (a5 == 1)
  {
    v9 = 1768845428;
  }

  else
  {
    v9 = 1869968496;
  }

  inAddress.mSelector = 1634629490;
  inAddress.mScope = v9;
  inAddress.mElement = 0;
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  v11 = outData;
  if (PropertyData)
  {
    v12 = 1;
  }

  else
  {
    v12 = outData == 0;
  }

  if (!v12)
  {
    v13 = CFGetTypeID(outData);
    if (v13 == CFArrayGetTypeID() && CFArrayGetCount(outData))
    {
      if (a5 == 1)
      {
        p_cf = &cf;
        v15 = a6;
        v16 = 0;
      }

      else
      {
        v16 = &cf;
        v15 = a6;
        p_cf = 0;
      }

      vaemGetPortListForDevice(outData, v15, p_cf, v16);
      if (cf)
      {
        CFRetain(cf);
      }
    }

    v11 = outData;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  return cf;
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1)
{

  return CMBaseObjectGetVTable();
}

id cmsmCopyBuiltinPortsListForRouteConfigurationScopeAndDevice(int a1, int a2, const void *a3)
{
  outData = 0;
  inAddress.mElement = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = *"cribptuo";
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, 0, a3, 0);
  if (!AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData))
  {
    [outData count];
  }

  return outData;
}

__CFDictionary *vaeCreateRouteDescription(uint64_t a1, int a2)
{
  v66 = *MEMORY[0x1E69E9840];
  valuePtr = *CMBaseObjectGetDerivedStorage();
  PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
  v4 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
  v5 = cmsmCopyEndpointWithUID(v4, PortTypeFromPortID);
  v6 = v5;
  v7 = MEMORY[0x1E695E4D0];
  v8 = MEMORY[0x1E695E4C0];
  if (PortTypeFromPortID == 1885433971)
  {
    cf[0] = 0;
    FigRoutingManagerGetMirroringModeFromEndpoint(v5);
    if (FigCFEqual())
    {
      v9 = 0x1F288FA70;
    }

    else
    {
      v9 = 0x1F2897CB0;
    }

LABEL_7:
    cmsmCreateRouteDescriptionForFigAirPlayEndpoints(v6, v9, cf);
    v10 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v12 = cf[0];
    if (!cf[0])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (PortTypeFromPortID == 1885433953)
  {
    cf[0] = 0;
    v9 = 0x1F2897C90;
    goto LABEL_7;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  MutableCopy = Mutable;
  if (Mutable)
  {
    v18 = *v7;
    CFDictionarySetValue(Mutable, @"RouteSupportsAudio", *v7);
    v19 = vaeCopyNameForPort(valuePtr);
    if (v19)
    {
      CFDictionarySetValue(MutableCopy, @"RouteName", v19);
    }

    v61 = v19;
    if (v4)
    {
      CFDictionarySetValue(MutableCopy, @"RouteUID", v4);
    }

    v20 = vaeCopyRouteSubtypeFromVADPort(valuePtr);
    if (v20)
    {
      v21 = v20;
      CFDictionarySetValue(MutableCopy, @"RouteSubtype", v20);
      CFRelease(v21);
    }

    v22 = vaeGetPortTypeFromPortID(valuePtr);
    v23 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(v22);
    if (v23 || (v24 = vaeGetPortTypeFromPortID(valuePtr), (v23 = CMSMVAUtility_CopyFigInputDeviceNameFromVADPortType(v24)) != 0))
    {
      v62 = v23;
      CFDictionarySetValue(MutableCopy, @"AVAudioRouteName", v23);
      v60 = 0;
      if (a2)
      {
LABEL_29:
        v25 = kMXSessionPickableRouteType_Default;
        goto LABEL_30;
      }
    }

    else
    {
      v62 = 0;
      v60 = 1;
      if (a2)
      {
        goto LABEL_29;
      }
    }

    ConnectionTypeForPort = vaeGetConnectionTypeForPort(valuePtr);
    switch(ConnectionTypeForPort)
    {
      case 1885566825:
        if (CMSMDeviceState_ItsAnAppleTV() || !vaeIsQuiesceableWiredPort(valuePtr, v59))
        {
          goto LABEL_32;
        }

        v25 = kMXSessionPickableRouteType_Wired;
        break;
      case 1885561449:
        v25 = kMXSessionPickableRouteType_Override;
        break;
      case 1885544823:
        v25 = kMXSessionPickableRouteType_Wireless;
        break;
      default:
        goto LABEL_32;
    }

LABEL_30:
    if (*v25)
    {
      CFDictionarySetValue(MutableCopy, @"RouteType", *v25);
    }

LABEL_32:
    DoesPortSupportSoftwareVolume = vaeDoesPortSupportSoftwareVolume(valuePtr);
    v27 = *MEMORY[0x1E695E4C0];
    if (DoesPortSupportSoftwareVolume)
    {
      v28 = v18;
    }

    else
    {
      v28 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(MutableCopy, @"SoftwareVolumeEnabled", v28);
    if (PortTypeFromPortID <= 1886152040)
    {
      if (PortTypeFromPortID == 1885892674)
      {
        goto LABEL_42;
      }

      v29 = 1885892706;
    }

    else
    {
      if (PortTypeFromPortID == 1886152041 || PortTypeFromPortID == 1886216820)
      {
        goto LABEL_42;
      }

      v29 = 1886152047;
    }

    if (PortTypeFromPortID != v29)
    {
      goto LABEL_120;
    }

LABEL_42:
    CFDictionarySetValue(MutableCopy, @"IsBTRoute", v18);
    *cf = 0u;
    v65 = 0u;
    if (vaeGetPartnersForPort(valuePtr, cf))
    {
      v30 = v18;
    }

    else
    {
      v30 = v27;
    }

    CFDictionarySetValue(MutableCopy, @"BTDetails_PartnerRoutePresent", v30);
    if (vaePartnerRouteRoutable(valuePtr))
    {
      v31 = v18;
    }

    else
    {
      v31 = v27;
    }

    CFDictionarySetValue(MutableCopy, @"BTDetails_PartnerRouteRoutable", v31);
    v32 = vaeCopyVADEndpointTypeForPort(valuePtr);
    if (v32)
    {
      v33 = v32;
      CFDictionarySetValue(MutableCopy, @"BTDetails_EndpointType", v32);
      CFRelease(v33);
    }

    if (PortTypeFromPortID == 1886152047)
    {
      if (vaeIsSiblingRoutePresent(valuePtr))
      {
        v34 = v18;
      }

      else
      {
        v34 = v27;
      }

      CFDictionarySetValue(MutableCopy, @"BTDetails_SiblingRoutePresent", v34);
    }

    if (valuePtr)
    {
      cf[0] = 0x676C6F626F736163;
      LODWORD(cf[1]) = 0;
      if (AudioObjectHasProperty(valuePtr, cf))
      {
        CFDictionarySetValue(MutableCopy, @"IsPreferredExternalRoute", v18);
        v35 = [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices isPortManaged:"isPortManaged:", valuePtr]? v18 : v27;
        CFDictionarySetValue(MutableCopy, @"BTDetails_IsBTManaged", v35);
        if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote())
        {
          v36 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
          v37 = CMSM_IDSConnection_CopyNearbyPairedDeviceInfo();
          if (v37)
          {
            CFArrayAppendValue(v36, v37);
            CFDictionarySetValue(MutableCopy, @"OtherDevicesConnected", v36);
          }

          if (CMSM_GetFakeSharedAudioRouteAsPicked())
          {
            CFDictionarySetValue(MutableCopy, @"IsCurrentlyPickedOnPairedDevice", v18);
          }

          if (v37)
          {
            CFRelease(v37);
          }

          v7 = MEMORY[0x1E695E4D0];
          if (v36)
          {
            CFRelease(v36);
          }
        }
      }

      if (!vaeDoesBTPortSupportInEarDetection(valuePtr))
      {
        cf[0] = 0x676C6F626F736163;
        LODWORD(cf[1]) = 0;
        HasProperty = AudioObjectHasProperty(valuePtr, cf);
        if (!HasProperty)
        {
          goto LABEL_81;
        }

        CFDictionarySetValue(MutableCopy, @"PreferredExternalRouteDetails_InEarDetectSupported", v27);
        v40 = MutableCopy;
        v41 = v27;
        goto LABEL_80;
      }
    }

    else
    {
      HasProperty = vaeDoesBTPortSupportInEarDetection(0);
      if (!HasProperty)
      {
        goto LABEL_81;
      }
    }

    CFDictionarySetValue(MutableCopy, @"IsPreferredExternalRoute", v18);
    CFDictionarySetValue(MutableCopy, @"PreferredExternalRouteDetails_InEarDetectSupported", v18);
    if (vaeHasUserEnabledInEarDetectionForBTPort(valuePtr, 0))
    {
      v42 = v18;
    }

    else
    {
      v42 = v27;
    }

    CFDictionarySetValue(MutableCopy, @"PreferredExternalRouteDetails_InEarDetectEnabled", v42);
    if (CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(valuePtr))
    {
      v41 = v18;
    }

    else
    {
      v41 = v27;
    }

    v40 = MutableCopy;
LABEL_80:
    CFDictionarySetValue(v40, @"PreferredExternalRouteDetails_IsActive", v41);
LABEL_81:
    switch(PortTypeFromPortID)
    {
      case 1885892674:
        CFDictionarySetValue(MutableCopy, @"BTDetails_IsA2DPRoute", v18);
        DoesPortSupportDoAP = vaeDoesPortSupportDoAP(valuePtr);
        if (DoesPortSupportDoAP)
        {
          v54 = v18;
        }

        else
        {
          v54 = v27;
        }

        CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsDoAP", v54);
        if (!DoesPortSupportDoAP)
        {
          goto LABEL_111;
        }

        v55 = vaeDoesPortSupportSoftwareVolume(valuePtr);
        v52 = @"BTDetails_SupportsSoftwareVolume";
        if (v55)
        {
          v50 = v18;
        }

        else
        {
          v50 = v27;
        }

        v51 = MutableCopy;
        break;
      case 1886216820:
        v52 = @"BTDetails_IsHFPRoute";
        v51 = MutableCopy;
        v50 = v18;
        break;
      case 1885892706:
        v43 = vaeIsLiveListenSupportedOnVADPort(valuePtr) ? v18 : v27;
        CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsLiveListen", v43);
        CFDictionarySetValue(MutableCopy, @"BTDetails_IsHFPRoute", v18);
        v44 = vaeIsAvailableForVoicePrompts(valuePtr) ? v18 : v27;
        CFDictionarySetValue(MutableCopy, @"BTDetails_IsAvailableForVoicePrompts", v44);
        v45 = vaeDoesPortSupportStereoHFP(valuePtr) ? v18 : v27;
        CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsStereoHFP", v45);
        HasProperty = MX_FeatureFlags_IsPersonalTranslatorEnabled(v46, v47);
        if (!HasProperty)
        {
          goto LABEL_111;
        }

        if (vaeDoesPortSupportFarFieldCapture(valuePtr, v39))
        {
          v48 = v18;
        }

        else
        {
          v48 = v27;
        }

        CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsFarFieldCapture", v48);
        if (vaeIsFarFieldCaptureEnabled(valuePtr, v49))
        {
          v50 = v18;
        }

        else
        {
          v50 = v27;
        }

        v51 = MutableCopy;
        v52 = @"BTDetails_IsFarFieldCaptureEnabled";
        break;
      default:
        goto LABEL_111;
    }

    CFDictionarySetValue(v51, v52, v50);
LABEL_111:
    if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(HasProperty, v39))
    {
      if (vaeDoesBluetoothSupportFeature(valuePtr, @"kBluetoothAudioDeviceFeatureStudioMicInput"))
      {
        v56 = v18;
      }

      else
      {
        v56 = v27;
      }

      CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsHighQualityContentCapture", v56);
      if (vaeIsBluetoothHighQualityContentCaptureEnabled(valuePtr))
      {
        v57 = v18;
      }

      else
      {
        v57 = v27;
      }

      CFDictionarySetValue(MutableCopy, @"BTDetails_IsHighQualityContentCaptureEnabled", v57);
    }

    cmsmAddBTDetailsFromBTEndpointToRouteDescription(v6, MutableCopy);
LABEL_120:
    if (FigCFEqual())
    {
      CFDictionarySetValue(MutableCopy, @"IsPreferredExternalRoute", v18);
      CFDictionarySetValue(MutableCopy, @"PreferredExternalRouteDetails_IsActive", v18);
    }

    if (v61)
    {
      CFRelease(v61);
    }

    v8 = MEMORY[0x1E695E4C0];
    if ((v60 & 1) == 0)
    {
      v12 = v62;
LABEL_8:
      CFRelease(v12);
    }
  }

LABEL_9:
  if (vaeDoesPortSupportSharePlay(valuePtr))
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  CFDictionarySetValue(MutableCopy, @"SupportsSharePlay", *v13);
  v14 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
  if (v14)
  {
    v15 = v14;
    CFDictionarySetValue(MutableCopy, @"PortNumber", v14);
    CFRelease(v15);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return MutableCopy;
}

uint64_t _VAEndpointManager_CopyPropertyWithQualifier(uint64_t a1, const void *a2, uint64_t a3, int *a4, void *a5)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (a4 && a2 && a5)
  {
    *a5 = 0;
    if (CFEqual(a2, @"VAEM_VADPortIDFromVADPortType"))
    {
      VADPortIDFromVADPortType = vaemGetVADPortIDFromVADPortType(*a4);
      v14 = MXCFNumberCreateFromSInt64(VADPortIDFromVADPortType);
    }

    else if (CFEqual(a2, @"VAEM_IsPlayAndRecordCategory"))
    {
      v9 = *a4;
      v12 = *a4 == 1668301427 || v9 == 1668309362 || v9 == 1668313666 || v9 == 1668313715;
      v13 = MEMORY[0x1E695E4C0];
      if (v12)
      {
        v13 = MEMORY[0x1E695E4D0];
      }

      v14 = CFRetain(*v13);
    }

    else if (CFEqual(a2, @"VAEM_ScalarEquivalent"))
    {
      v15 = __exp10f(*a4 / 20.0);
      v14 = MXCFNumberCreateFromFloat32(v15);
    }

    else
    {
      result = CFEqual(a2, @"VAEM_EndpointForPort");
      if (!result)
      {
        return result;
      }

      v14 = vaemCopyEndpointForPort(*a4);
    }

    return OUTLINED_FUNCTION_6_3(v14);
  }

  return result;
}

OpaqueFigEndpoint *cmsmCopyEndpointWithUID(uint64_t a1, int a2)
{
  v2 = a1;
  if (a2 > 1885892673)
  {
    if (a2 == 1885892674 || a2 == 1885892706 || a2 == 1886152047)
    {
      v3 = MEMORY[0x1E69618D8];
LABEL_10:
      v6 = *v3;
      v5 = qword_1EB75E190;
      goto LABEL_11;
    }

    return 0;
  }

  if (a2 == 1885433953)
  {
    v3 = MEMORY[0x1E69618D0];
    goto LABEL_10;
  }

  if (a2 != 1885433971)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E69618D0];
  v5 = [+[MXSessionManager sharedInstance](MXSessionManager systemMirroringRoutingContextUUID];
  a1 = v2;
  v6 = v4;
LABEL_11:

  return FigRoutingManagerCopyEndpointWithDeviceID(a1, 1, v6, v5);
}

uint64_t vaemHeadphoneJackIsConnected(int a1)
{
  if (a1)
  {
    return byte_1EB75D178;
  }

  if (vaemGetVADPortIDFromVADPortType(1886680175))
  {
    return 1;
  }

  return vaemGetVADPortIDFromVADPortType(1885892727) != 0;
}

uint64_t vaemHeadphoneJackHasInput(int a1)
{
  if (a1)
  {
    return byte_1EB75D179;
  }

  if (vaemGetVADPortIDFromVADPortType(1886680169))
  {
    return 1;
  }

  return vaemGetVADPortIDFromVADPortType(1886222185) != 0;
}

id CMSMNotificationUtility_CreateRecordingSessionsDescription()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        if ([v6 isRecording])
        {
          v12 = 0u;
          v13 = 0u;
          if (v6)
          {
            objc_msgSend_auditToken(v6);
          }

          v7 = objc_alloc(MEMORY[0x1E695DF20]);
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "audioSessionID")}];
          v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v12 length:32];
          v10 = [v7 initWithObjectsAndKeys:{v8, @"AudioSessionID", v9, @"AuditToken", 0, v12, v13}];
          [v0 addObject:v10];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  return v0;
}

CFArrayRef vaemCopyAvailableVADUIDs()
{
  if (qword_1EB75D198)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], qword_1EB75D198);
  }

  else
  {
    return 0;
  }
}

uint64_t MXSMCancelAnyInProgressVolumeRampIfNeeded(const __CFString *a1, const void *a2, unsigned int a3)
{
  result = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled(a1, a2);
  if (result)
  {
    if (a3 <= 0xE && ((1 << a3) & 0x5836) != 0)
    {
      result = vaemVolumeStateGetLastVolumeRampInProgress();
      if (result)
      {
        vaemVolumeStateGetLastVolumeRampCategory();
        MXSMGetVolumeRampCategory(a1, a2);
        result = FigCFEqual();
        if (result)
        {
          LastVolumeSetVADID = vaemVolumeStateGetLastVolumeSetVADID();

          return CMSMVAUtility_CancelAnyInProgressVolumeRamp(LastVolumeSetVADID, 3);
        }
      }
    }
  }

  return result;
}

uint64_t CMSMUtility_CopyDeviceRoutesForInactiveRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, uint64_t a4, CFArrayRef *a5, __CFArray **a6, __CFArray **a7)
{
  v10 = a4;
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
  v15 = vaemCopyVADInputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, 0, v10);
  v16 = vaemCopyVADOutputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, 0, v10);
  CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(v16, v15, a5, a6, 0, a7);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return 0;
}

BOOL PVMIsCategoryAndRouteInfoCurrent(const __CFString *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *cf = *a3;
  v12 = v5;
  v13 = *(a3 + 32);
  v6 = PVMIsCurrentDeviceRoute(cf);
  v10 = 0;
  cf[0] = 0;
  FigSimpleMutexLock();
  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, cf, &v10);
  if (FigCFEqual())
  {
    v8 = FigCFEqual() != 0;
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v6 && v8;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1, ...)
{

  return FigXPCCreateBasicMessage();
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int16 a45, char a46, char a47, int a48)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t CMSUtility_GetCurrentConsolidatedPlayingState(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (([a1 someMXSessionIsPlaying] & 1) == 0 && (objc_msgSend(a1, "clientIsPlaying") & 1) == 0 && !objc_msgSend(a1, "hapticEngineIsPlaying"))
  {
    return 0;
  }

  if (!dword_1EB75DE40)
  {
    return 1;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v3 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v3;
}

uint64_t cmsSetIsPlaying(void *a1, uint64_t a2)
{
  v2 = a2;
  v151 = *MEMORY[0x1E69E9840];
  v4 = [a1 currentlyControllingFlags];
  v5 = [a1 isPlaying];
  v6 = cmsCopyOverrideRoute(a1);
  updated = [a1 isPlaying];
  if (updated == v2)
  {
LABEL_160:
    v24 = 0;
    goto LABEL_161;
  }

  if (v2)
  {
    updated = CMSUtility_UpdateRoutingContextForSession(a1);
    v104 = updated != 0;
  }

  else
  {
    v104 = 0;
  }

  v108 = v5;
  v9 = MXGetSessionLog(updated, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v102 = v4;
    v101 = [a1 clientName];
    v100 = [a1 audioCategory];
    v99 = [a1 audioMode];
    v10 = CMSUtility_SessionMixesWithOthers(a1);
    v11 = "Mixable";
    if (!v10)
    {
      v11 = "NonMixable";
    }

    v98 = v11;
    ContextString = FigRoutingManagerContextUtilities_GetContextString([a1 routingContextUUID]);
    v13 = "starting";
    if (!v2)
    {
      v13 = "stopping";
    }

    v96 = v13;
    v97 = ContextString;
    CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(a1);
    if (CMSMUtility_IsInputAllowedForCategory([a1 audioCategory]))
    {
      v15 = " and input VAD: ";
    }

    else
    {
      v15 = "";
    }

    v103 = v6;
    v107 = v2;
    if (CMSMUtility_IsInputAllowedForCategory([a1 audioCategory]))
    {
      CurrentInputVADUID = CMSUtility_GetCurrentInputVADUID(a1);
    }

    else
    {
      CurrentInputVADUID = &stru_1F2890CF0;
    }

    if (CMSMDeviceState_RingerIsOn(1))
    {
      v17 = "not silenced";
    }

    else
    {
      v17 = "silenced";
    }

    if ([a1 silentMuted])
    {
      v18 = "muted";
    }

    else
    {
      v18 = "unmuted";
    }

    v19 = [a1 routingContextUUID];
    if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
    {
      v20 = "YES";
    }

    else
    {
      v20 = "NO";
    }

    *buf = 136450563;
    *&buf[4] = "-CMSessionMgr-";
    *&buf[12] = 2082;
    *&buf[14] = "cmsSetIsPlaying";
    *&buf[22] = 1024;
    LODWORD(v123) = 6427;
    WORD2(v123) = 2114;
    *(&v123 + 6) = v101;
    HIWORD(v123) = 2114;
    v124 = v100;
    v125 = 2114;
    v126 = v99;
    v127 = 2082;
    v128 = v98;
    v129 = 2114;
    v130 = v97;
    v131 = 2082;
    v132 = v96;
    v133 = 2114;
    v134 = CurrentAudioDestination;
    v135 = 2082;
    v136 = v15;
    v137 = 2114;
    v138 = CurrentInputVADUID;
    v139 = 2082;
    v140 = v17;
    v141 = 2082;
    v142 = v18;
    v143 = 2113;
    v144 = v19;
    v145 = 2082;
    v146 = v20;
    v147 = 1024;
    v148 = [a1 isPlayingOutput];
    v149 = 1024;
    v150 = [a1 isSharedAVAudioSessionInstance];
    _os_log_impl(&dword_1B17A2000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i '%{public}@' with [%{public}@/%{public}@] [%{public}s] [%{public}@] %{public}s playing to output VAD: %{public}@%{public}s%{public}@. Ringer switch state: Device is %{public}s, Session is %{public}s. RoutingContextUUID=%{private}@ NowPlayingApp:%{public}s IsPlayingOutput:%{BOOL}u IsSharedAVAudioSessionInstance:%{BOOL}u", buf, 0xAAu);
    v6 = v103;
    v2 = v107;
    v4 = v102;
  }

  if ([a1 routeSharingPolicy] == 1 || objc_msgSend(a1, "routeSharingPolicy") == 3 || FigRoutingManagerContextUtilities_GetContextType(objc_msgSend(a1, "routingContextUUID")) == 4)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointNames([a1 routingContextUUID], &cf);
    if (dword_1EB75DE40)
    {
      *v113 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (!v2)
  {
    v25 = [objc_msgSend(a1 "ID")];
    [a1 setWasInterruptedByNowPlayingApp:0];
    [a1 setWaitingToResumeWhenDeviceUnlocksOrInForeground:0];
    if ((CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() || CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote()) && CMSM_IDSConnection_IsNearbyPairedDevicePresent())
    {
      CMSM_IDSClient_NotifyRemote_LocalIsPlayingDone(a1);
    }

    CMSUtility_SendSessionVolumeToAudioStatistics(a1, 0, v6);
    [objc_msgSend(MEMORY[0x1E695DF00] "now")];
    v27 = v26;
    v28 = [a1 deactivateTimerDelay];
    v29 = v28;
    v31 = MXGetSerialQueue(v28, v30);
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __cmsSetIsPlaying_block_invoke;
    v110[3] = &__block_descriptor_48_e5_v8__0l;
    v110[4] = v25;
    v110[5] = v27;
    [a1 setSessionDeactivateTimer:{MXDispatchUtilityCreateOneShotTimer("cmsSetIsPlaying", "CMSessionManager.m", 6671, 0, 0, v31, v110, 0, v29, 0)}];
    [a1 setIsPlayingStopTime:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
    [a1 setIsPlaying:0];
    v32 = [a1 assertionAuditTimerDelay];
    v33 = v32;
    v35 = MXGetSerialQueue(v32, v34);
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __cmsSetIsPlaying_block_invoke_2;
    v109[3] = &__block_descriptor_40_e5_v8__0l;
    v109[4] = v25;
    [a1 setSessionAssertionAuditTimer:{MXDispatchUtilityCreateOneShotTimer("cmsSetIsPlaying", "CMSessionManager.m", 6681, 0, 0, v35, v109, 0, v33, 0)}];
    goto LABEL_101;
  }

  if (CMSUtility_IsAllowedToStartPlaying(a1))
  {
    if (v104 | ((objc_msgSend_isActive(a1) & 1) == 0) && (v22 = MXCoreSessionBeginInterruption_WithSecTaskAndFlags(a1, 0, 2, 0), v22) || FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]) && CMSUtility_PlaysToCarMainAudio(a1) && (![a1 dontTakeOverHardware] ? (v23 = 2) : (v23 = 8), v22 = cmsBeginInterruptionGuts(a1, 0, v23), v22))
    {
      v24 = v22;
      goto LABEL_161;
    }

    if (-[MXSessionManager isAirPlaySession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAirPlaySession:", a1) && ([a1 reporterStarted] & 1) == 0 && !objc_msgSend(a1, "sessionDeactivateTimer"))
    {
      CMSUtility_StartReporterWithAudioStatistics(a1);
    }

    CMSUtility_SendSessionVolumeToAudioStatistics(a1, 1, v6);
    if ([a1 sessionDeactivateTimer])
    {
      dispatch_source_cancel([a1 sessionDeactivateTimer]);
      [a1 setSessionDeactivateTimer:0];
      if (dword_1EB75DE40)
      {
        LODWORD(cf) = 0;
        v113[0] = OS_LOG_TYPE_DEFAULT;
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v41 = cf;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
        }

        else
        {
          v42 = v41 & 0xFFFFFFFE;
        }

        if (v42)
        {
          v43 = [a1 clientName];
          *v115 = 136315394;
          *&v115[4] = "cmsSetIsPlaying";
          v116 = 2114;
          v117 = v43;
          _os_log_send_and_compose_impl(v42, 0, buf, 128, &dword_1B17A2000, v40, 0, "-CMSessionMgr- %s: Stopping deactivate timer for client '%{public}@'", v115, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if ([a1 sessionAssertionAuditTimer])
    {
      dispatch_source_cancel([a1 sessionAssertionAuditTimer]);
      [a1 setSessionAssertionAuditTimer:0];
    }

    [a1 setIsPlayingStartTime:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
    [a1 setIsPlaying:1];
    if (CMSUtility_IsAllowedToFadeInTemporarily(a1))
    {
      CMSMUtility_PostNotifyStyleFadeInAppliedForPlaybackHandoff();
    }

    CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 3);
    if ((CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() || CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote()) && CMSM_IDSConnection_IsNearbyPairedDevicePresent())
    {
      CMSM_IDSClient_NotifyRemote_LocalIsPlayingStart(a1);
    }

    cmsmUpdateFakeSharedAudioRouteAsPicked(0, 0, 0, 1);
    if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
    {
      cmsmUpdateInEarBasedPlaybackState(0, 0, 1);
    }

    cmsTryToTakeControl(a1);
    [+[MXSessionManager sharedInstance](MXSessionManager duckSessionIfDuckerIsActive:"duckSessionIfDuckerIsActive:", a1];
    v44 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
    if (!CMSMDeviceState_IsHomePodHub() && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1) && [objc_msgSend(a1 "clientPID")] != v44)
    {
      v72 = CMSMNP_CopyNowPlayingAppSession();
      if (v72 && (IsContextSystemMusicAndIndependent = FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a1 routingContextUUID]), IsContextSystemMusicAndIndependent != FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(objc_msgSend(v72, "routingContextUUID"))) && FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(objc_msgSend(v72, "routingContextUUID")) == 1)
      {
        if (dword_1EB75DE40)
        {
          v105 = v72;
          LODWORD(cf) = 0;
          v113[0] = OS_LOG_TYPE_DEFAULT;
          v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v75 = cf;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v76 = v75;
          }

          else
          {
            v76 = v75 & 0xFFFFFFFE;
          }

          if (v76)
          {
            v77 = [a1 clientName];
            v78 = [objc_msgSend(a1 "clientPID")];
            v79 = [v105 clientName];
            *v115 = 136315906;
            *&v115[4] = "cmsSetIsPlaying";
            v116 = 2114;
            v117 = v77;
            v118 = 1024;
            v119 = v78;
            v120 = 2114;
            v121 = v79;
            LODWORD(v95) = 38;
            _os_log_send_and_compose_impl(v76, 0, buf, 128, &dword_1B17A2000, v74, 0, "-CMSessionMgr- %s: Client '%{public}@' with PID '%d' not NowPlayingApp because current NowPlayingApp '%{public}@' is routed to independent SystemMusic", v115, v95);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v72 = v105;
        }
      }

      else if (CMSNP_IsCurrentNowPlayingSessionAirPlayingLongFormMedia() && !CMSUtility_IsSessionWithPIDAllowedToInterruptCurrentlyAirPlayingNowPlayingSession([objc_msgSend(a1 "clientPID")]))
      {
        if (dword_1EB75DE40)
        {
          LODWORD(cf) = 0;
          v113[0] = OS_LOG_TYPE_DEFAULT;
          v91 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v92 = cf;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v93 = v92;
          }

          else
          {
            v93 = v92 & 0xFFFFFFFE;
          }

          if (v93)
          {
            v94 = [a1 clientName];
            *v115 = 136315394;
            *&v115[4] = "cmsSetIsPlaying";
            v116 = 2114;
            v117 = v94;
            LODWORD(v95) = 22;
            _os_log_send_and_compose_impl(v93, 0, buf, 128, &dword_1B17A2000, v91, 0, "-CMSessionMgr- %s: Not switching NowPlayingApp to %{public}@ because long-form media app is active over AirPlay", v115, v95);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (dword_1EB75DE40)
        {
          v106 = v72;
          LODWORD(cf) = 0;
          v113[0] = OS_LOG_TYPE_DEFAULT;
          v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v84 = cf;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v85 = v84;
          }

          else
          {
            v85 = v84 & 0xFFFFFFFE;
          }

          if (v85)
          {
            v86 = [a1 clientName];
            v87 = [objc_msgSend(a1 "clientPID")];
            *v115 = 136315650;
            *&v115[4] = "cmsSetIsPlaying";
            v116 = 2114;
            v117 = v86;
            v118 = 1024;
            v119 = v87;
            LODWORD(v95) = 28;
            _os_log_send_and_compose_impl(v85, 0, buf, 128, &dword_1B17A2000, v83, 0, "-CMSessionMgr- %s: Client '%{public}@' with PID '%d' is the new NowPlayingApp", v115, v95);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v72 = v106;
        }

        -[MXNowPlayingAppManager updateNowPlayingApp:session:reasonForUpdate:](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "updateNowPlayingApp:session:reasonForUpdate:", [objc_msgSend(a1 "clientPID")], 0, 6);
      }
    }

    v45 = [objc_msgSend(a1 "clientPID")];
    if (v45 == -[MXNowPlayingAppManager nowPlayingAppPID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppPID") && (([a1 isLongFormVideo] & 1) != 0 || CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(a1)))
    {
      v46 = CMSMUtility_CopySystemAudioRoutingContextUUID();
      *v115 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v46, 0, v115);
      if (FigRoutingManagerIsEndpointOfType(*v115, *MEMORY[0x1E69626A8]))
      {
        cf = *MEMORY[0x1E695E4C0];
        v47 = *MEMORY[0x1E695E480];
        CMBaseObject = FigEndpointGetCMBaseObject();
        v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v49)
        {
          v49(CMBaseObject, *MEMORY[0x1E6962190], v47, &cf);
        }

        *type = 0;
        *v113 = 0;
        v50 = FigEndpointGetCMBaseObject();
        v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v51)
        {
          v51(v50, *MEMORY[0x1E6961F58], v47, v113);
          if (*v113)
          {
            CFNumberGetValue(*v113, kCFNumberSInt64Type, type);
          }
        }

        v111 = 0;
        FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v111);
        if (cf == *MEMORY[0x1E695E4D0] && FigRoutingContextUtilities_IsFollowingAnotherContext(v111) && (type[0] & 1) == 0)
        {
          if (v111)
          {
            CFRetain(v111);
          }

          v89 = *v115;
          if (*v115)
          {
            v89 = CFRetain(*v115);
          }

          v90 = MXGetSerialQueue(v89, v88);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __cmsChangeGroupableAirPlayRouteFromSystemAudioToSystemMusic_block_invoke;
          *&v123 = &__block_descriptor_48_e5_v8__0l;
          *(&v123 + 1) = *v115;
          v124 = v111;
          MXDispatchAsync("cmsChangeGroupableAirPlayRouteFromSystemAudioToSystemMusic", "CMSessionManager.m", 6298, 0, 0, v90, buf);
        }

        if (*v113)
        {
          CFRelease(*v113);
          *v113 = 0;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v111)
        {
          CFRelease(v111);
        }
      }

      if (*v115)
      {
        CFRelease(*v115);
        *v115 = 0;
      }

      if (v46)
      {
        CFRelease(v46);
      }
    }

    if (![+[MXSessionManager isAirPlaySession:"isAirPlaySession:"]
    {
      FigRoutingContextUtilities_LogCurrentState();
    }

    CMSMUtility_InformAirPlayOfAudioModeIfNecessary([a1 routingContextUUID]);
LABEL_101:
    v52 = CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange();
    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded(v52, v53);
    v54 = [objc_msgSend(a1 "clientPID")];
    if (v54 == [+[MXNowPlayingAppManager nowPlayingAppPID]&& CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1) sharedInstance]
    {
      if (([a1 isPlaying] & 1) == 0)
      {
        v55 = +[MXNowPlayingAppManager sharedInstance];
        -[MXNowPlayingAppManager setNowPlayingAppStopTime:](v55, "setNowPlayingAppStopTime:", [MEMORY[0x1E695DF00] date]);
      }

      v56 = CMSUtility_CopyBundleID(a1);
      -[MXAppProtectionManager handlePlayingStateChangedForNowPlayingApp:isCurrentlyPlaying:](+[MXAppProtectionManager sharedInstance](MXAppProtectionManager, "sharedInstance"), "handlePlayingStateChangedForNowPlayingApp:isCurrentlyPlaying:", v56, [a1 isPlaying]);
    }

    byte_1EB75E138 = CMSMUtility_SomeClientIsPlaying();
    if (sFigClusterSynchronizationManager_ClientIsPlaying)
    {
      sFigClusterSynchronizationManager_ClientIsPlaying();
    }

    v57 = CMSMUtility_CopyCurrentRouteTypes();
    v58 = byte_1EB75E138;
    if (!byte_1EB75E138)
    {
      if (FigCFArrayContainsValue())
      {
        v59 = dispatch_time(0, 2000000000);
        v61 = MXGetSerialQueue(v59, v60);
        dispatch_after(v59, v61, &__block_literal_global_314);
LABEL_112:
        if (v57)
        {
          CFRelease(v57);
        }

        CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange();
        [a1 audioMode];
        if (FigCFEqual())
        {
          CMSMNotificationUtility_PostVoicePromptStyleDidChange();
        }

        if (!CMSUtility_GetIsEligibleForBTSmartRoutingConsideration(a1))
        {
          goto LABEL_146;
        }

        FigPredictedRouting_UpdatePredictedRoute(7);
        if (![a1 isPlaying])
        {
          FigPredictedRouting_UnmuteSessionIfMutedByPreemptivePortChange();
LABEL_146:
          if (CMSUtility_IsAudioCategoryPrimary(a1, v62, v63, v64, v65, v66, v67, v68))
          {
            CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange(a1);
            CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange(a1, v81);
          }

          [+[MXSessionManager sharedInstance](MXSessionManager updateSomeAirPlayCapableVideoClientIsActive];
          if ([a1 isLongFormVideo])
          {
            CMSMUtility_UpdateSomeLongFormVideoClientIsPlayingOverAirPlayVideo();
            CMSMUtility_UpdateSomeLongFormVideoClientIsPlaying();
            CMSMNotificationUtility_PostVideoStreamsDidChange();
          }

          CMScreenHandleIdleEvent(101, v108, [a1 isPlaying]);
          CMSMSleep_HandleIdleSleep(a1, v2);
          if ((v4 & 2) == 0 && ([a1 currentlyControllingFlags] & 2) != 0)
          {
            cmsmUpdatePickableRouteDescriptionLists(1);
          }

          CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
          if (v2)
          {
            CMSMSleep_FetchPlaybackProcessAssertion(a1);
          }

          else if (CMSUtility_HasBackgroundEntitlement(a1) && [a1 applicationState] == 4)
          {
            CMSMSleep_ExtendPlaybackProcessAssertion(a1);
          }

          else
          {
            CMSMSleep_ReleasePlaybackProcessAssertion(a1);
          }

          [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager refreshAssertions];
          goto LABEL_160;
        }

        IsPreemptiveConnectedBannerEnabled = MX_FeatureFlags_IsPreemptiveConnectedBannerEnabled();
        if (!IsPreemptiveConnectedBannerEnabled)
        {
          goto LABEL_141;
        }

        if ([a1 isMediaSession])
        {
          v71 = 1;
        }

        else
        {
          if (![a1 hasAudioCategory:@"PlayAndRecord"] || !objc_msgSend(a1, "hasAudioMode:", @"Default"))
          {
            IsPreemptiveConnectedBannerEnabled = CMSUtility_IsSessionOnlyPlayingLocally(a1);
            goto LABEL_141;
          }

          v71 = [a1 isPlayingOutput];
        }

        IsPreemptiveConnectedBannerEnabled = CMSUtility_IsSessionOnlyPlayingLocally(a1);
        if (v71 && (IsPreemptiveConnectedBannerEnabled & 1) != 0)
        {
LABEL_145:
          FigPredictedRouting_MuteSessionIfPreemptivePortChanged(a1);
          goto LABEL_146;
        }

LABEL_141:
        if (!MX_FeatureFlags_IsCorianderEnabled(IsPreemptiveConnectedBannerEnabled, v70))
        {
          goto LABEL_146;
        }

        if (CMSMDeviceState_IsHomePodHub())
        {
          goto LABEL_146;
        }

        if (!CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
        {
          goto LABEL_146;
        }

        v80 = [objc_msgSend(a1 "clientPID")];
        if (v80 != [+[MXNowPlayingAppManager nowPlayingAppPID] sharedInstance]
        {
          goto LABEL_146;
        }

        goto LABEL_145;
      }

      v58 = byte_1EB75E138;
    }

    CMSMNotificationUtility_PostSomeClientIsPlayingDidChange(v58);
    goto LABEL_112;
  }

  LODWORD(cf) = 0;
  v113[0] = OS_LOG_TYPE_DEFAULT;
  v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v37 = cf;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v37;
  }

  else
  {
    v38 = v37 & 0xFFFFFFFE;
  }

  if (v38)
  {
    v39 = [a1 clientName];
    *v115 = 136315394;
    *&v115[4] = "cmsSetIsPlaying";
    v116 = 2114;
    v117 = v39;
    _os_log_send_and_compose_impl(v38, 0, buf, 128, &dword_1B17A2000, v36, 0, "-CMSessionMgr- %s: cmsSetIsPlaying failed as client %{public}@ has insufficient privileges to take control", v115, 22);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v24 = 4294950316;
LABEL_161:
  if (v6)
  {
    CFRelease(v6);
  }

  CMSUtility_UpdateBTLowLatencyMode();
  cmsUpdateMuteStatus(a1);
  CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 0);
  return v24;
}

id cmsCopyOverrideRoute(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(result "overridePortsList")];
    if (v2 < 1)
    {
      return 0;
    }

    else
    {
      v3 = v2;
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex([v1 overridePortsList], v4);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (!vaeIsPortAnInputPort(valuePtr))
        {
          break;
        }

        if (v3 == ++v4)
        {
          return 0;
        }
      }

      PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
      return CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
    }
  }

  return result;
}

uint64_t remoteSystemController_PerformVolumeOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float *a8, float a9, float a10, float a11, BOOL *a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = OUTLINED_FUNCTION_1_25(a1, a2, a3, a4, a5, a6, a7, a8, v28, v29, xdict, v32);
  if (v20)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_9_0();
  v20 = FigXPCCreateBasicMessage();
  if (v20)
  {
    goto LABEL_24;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v21 = FigXPCMessageSetCFNumber();
  if (v21 || ([MEMORY[0x1E696AD98] numberWithDouble:a9], v21 = FigXPCMessageSetCFNumber(), v21) || (v21 = FigXPCMessageSetCFString(), v21) || (v21 = FigXPCMessageSetCFString(), v21) || (v21 = FigXPCMessageSetCFString(), v21) || (v21 = FigXPCMessageSetCFString(), v21) || (v21 = FigXPCMessageSetCFString(), v21) || (*&v22 = a10, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v22), v21 = FigXPCMessageSetCFNumber(), v21) || (*&v23 = a11, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v23), v21 = FigXPCMessageSetCFNumber(), v21))
  {
    v26 = v21;
    goto LABEL_26;
  }

  v20 = FigXPCMessageSetCFBoolean();
  if (v20)
  {
    goto LABEL_24;
  }

  v20 = OUTLINED_FUNCTION_6_1(qword_1ED6D30A0);
  if (v20)
  {
    goto LABEL_24;
  }

  if (a8)
  {
    v24 = xpc_dictionary_get_double(xdicta, kFigSystemControllerXPCMsgParam_Volume);
    *a8 = v24;
  }

  if (a12)
  {
    *a12 = xpc_dictionary_get_BOOL(xdicta, kFigSystemControllerXPCMsgParam_Muted);
  }

  if (!a13)
  {
    if (!a14)
    {
      v26 = 0;
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v25 = FigXPCMessageCopyCFString();
  v26 = v25;
  if (a14 && !v25)
  {
LABEL_23:
    v20 = FigXPCMessageCopyCFString();
LABEL_24:
    v26 = v20;
  }

LABEL_26:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v26;
}

const void *vaemCopyVADOutputPortsForRouteConfiguration(uint64_t a1, uint64_t a2, const void *a3, const void *a4, int a5)
{
  v5 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(a1, a2, a3, a4, a5, 0, 0x1F2893B50);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFArrayGetTypeID())
    {
      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

BOOL PVMIsCurrentDeviceRoute(void *a1)
{
  if (PVMInitialize())
  {
    return 0;
  }

  v3 = a1[1];
  if (!v3)
  {
    v3 = @"Speaker";
    a1[1] = @"Speaker";
  }

  Value = v3;
  if (*(sStorage + 200))
  {
    Value = CFDictionaryGetValue(*(sStorage + 200), v3);
  }

  if (Value)
  {
    v5 = Value;
  }

  else
  {
    v5 = v3;
  }

  pvmGetMappedRouteIdentifier(a1[3], v5);
  if (a1[2] && ([(__CFString *)v5 hasPrefix:@"HeadphonesBT"]& 1) == 0)
  {
    [(__CFString *)v5 hasPrefix:@"HeadsetBT"];
  }

  FigSimpleMutexLock();
  pvmAssureCurrentCategoryAndDeviceRoute();
  v2 = FigCFEqual() && FigCFEqual() && FigCFEqual() != 0;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t PVMInitialize()
{
  if (PVMInitialize_sInitializeVolumeManagerOnce != -1)
  {
    PVMInitialize_cold_1();
  }

  if (sStorage)
  {
    return 0;
  }

  v2 = qword_1EB75DFE0;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 4294938296, "-PVM-", 1910, v0);
}

float pvmGetCurrentVolumeLimitForRoute(void *a1, const void *a2)
{
  if (FigCFEqual() && FigCFEqual())
  {
    v3 = *(sStorage + 184);
    if (v3)
    {
      CFDictionaryGetValue(v3, a2);
    }

    if (FigCFEqual() && *(sStorage + 92))
    {
      return *(sStorage + 96);
    }
  }

  if (!FigCFEqual() || FigCFEqual())
  {
    return 1.0;
  }

  if (!(CelesteIsRegionSpecificVolumeLimitEnabled() | g100dBVolumeLimitEnabled))
  {
    return *(sStorage + 88);
  }

  v4 = 0.9425;
  if (FigCFEqual() || FigCFEqual())
  {
    return v4;
  }

  if (FigCFEqual())
  {
    return 1.0;
  }

  v4 = 1.0;
  if (FigCFEqual())
  {
    return v4;
  }

  return pvmGet100dBVolumeLimit();
}

void *PVMGetMappedCategory(void *key)
{
  v2 = *(sStorage + 184);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, key);
    if (Value)
    {
      return Value;
    }
  }

  return key;
}

uint64_t _MXSessionSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = ___MXSessionSetProperty_block_invoke;
      v17 = &unk_1E7AE7A48;
      v18 = &v22;
      v19 = a1;
      v20 = a2;
      v21 = a3;
      MXDispatchAsyncAndWait("_MXSessionSetProperty", "MXSession_CInterfaceCommon.m", 443, 0, 0, v7, &v14);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v9 = [a1 isMemberOfClass:objc_opt_class()];
      if (!v9 || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v9, v10))
      {
        v11 = [a1 _setPropertyForKey:a2 value:a3];
        *(v23 + 6) = v11;
      }

      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionSetProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
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

void sub_1B17F0C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_13_3(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  xpc_dictionary_set_BOOL(v13, a2, a13 != 0);
}

BOOL OUTLINED_FUNCTION_13_6(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int16 a45, char a46, os_log_type_t type, int a48)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  return remoteSystemController_getObjectID(a1, &a9);
}

uint64_t MXCoreSessionBeginInterruption_WithSecTaskAndFlags(void *a1, __SecTask *a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a3;
    if (a4 || (objc_msgSend_isActive(a1) & 1) != 0 || CMSUtility_HasEntitlementForInterruptions(a1, a2))
    {
      [a1 audioCategory];
      if (FigCFEqual() || objc_msgSend_isActive(a1) && [a1 isPlaying] && !objc_msgSend(a1, "isTheAssistant"))
      {
        return 0;
      }

      else
      {
        if (!CMSUtility_IsAllowedToStartPlaying(a1))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v7 = 4294950316;
LABEL_27:
          CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 0);
          return v7;
        }

        CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 1);
        if ((v4 & 4) != 0)
        {
          v10 = CMSMUtility_CopyCurrentRouteTypes();
          IsPlaying = CMSMUtility_SomeClientIsPlaying();
          IsDisruptiveWhenGoingActive = CMSUtility_IsDisruptiveWhenGoingActive(a1);
          if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]))
          {
            v13 = FigCFArrayContainsValue() == 0;
          }

          else
          {
            v13 = 0;
          }

          IsRemoteInterruptionRequired = CMSUtility_IsRemoteInterruptionRequired(a1);
          v7 = 4294954309;
          if (!IsPlaying && !IsDisruptiveWhenGoingActive && !v13 && !IsRemoteInterruptionRequired)
          {
            v7 = cmsBeginInterruptionGuts(a1, 0, v4);
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }

        else
        {
          v7 = cmsBeginInterruptionGuts(a1, 0, v4);
        }

        if (v7)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      return 4294954308;
    }
  }

  else
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954315;
  }

  return v7;
}

uint64_t systemController_PerformVolumeOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, __int128 a12, uint64_t a13, char a14)
{
  v29 = -1;
  v24 = *CMBaseObjectGetDerivedStorage();
  LOBYTE(v28) = a14 != 0;
  *&v25 = a10;
  *&v26 = a11;
  return [v24 performVolumeOperation:a2 volume:a3 category:a4 mode:a5 routeName:a6 routeDeviceIdentifier:a7 routeSubtype:COERCE_DOUBLE(__PAIR64__(DWORD1(a12) rampUpDuration:LODWORD(a9))) rampDownDuration:v25 outVolume:v26 outSequenceNumber:a8 outMuted:&v29 outCategoryCopy:a12 outModeCopy:a13 retainFullMute:v28];
}

uint64_t MXSMPerformVolumeOperation(unsigned int a1, __CFString *a2, const void *a3, const void *a4, const void *a5, unsigned int a6, uint64_t pid, float *a8, float a9, float a10, float a11, _BYTE *a12, CFTypeRef *a13, uint64_t *a14, __int16 a15)
{
  v16 = pid;
  *&v99 = a5;
  *(&v99 + 1) = a4;
  v120 = *MEMORY[0x1E69E9840];
  memset(buffer, 0, sizeof(buffer));
  v103 = a1;
  if (pid < 1)
  {
    v22 = a1;
    v21 = 0;
    goto LABEL_5;
  }

  v21 = proc_name(pid, buffer, 0x20u);
  v22 = v103;
  if ((v21 & 0x80000000) == 0)
  {
LABEL_5:
    buffer[v21] = 0;
  }

  v23 = a11 != 0.0 && a10 != 0.0;
  if ((a10 != 0.0) != (a11 != 0.0))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954315;
  }

  v98 = v23;
  VolumeSequenceNumber = 0;
  if (v22 > 0xE || ((1 << v22) & 0x5836) == 0)
  {
LABEL_18:
    if (dword_1EB75E118)
    {
      return 0;
    }

    if (a2)
    {
      v28 = 0;
    }

    else
    {
      v28 = v22 == 13;
    }

    if (v28)
    {
      v29 = @"SoloAmbientSound";
    }

    else
    {
      v29 = a2;
    }

    v30 = [+[MXSessionManager sharedInstance](MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:", v29];
    cf = 0;
    if (CMSMVAUtility_IsAdditiveRoutingEnabled(v30, v31) && (val = [+[MXAdditiveRoutingManager copyActiveVoiceOverSessionPlayingToOnDemandVAD] sharedInstance]!= 0)
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v110[0]) = 0;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      objc_initWeak(&location, val);
      [+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionListRemoveSession:"mxCoreSessionListRemoveSession:", objc_loadWeak(&location)];
      [+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionListAddSession:"mxCoreSessionListAddSession:", objc_loadWeak(&location)];
      objc_destroyWeak(&location);
    }

    else
    {
      val = 0;
    }

    VolumeButtonClient = CMSessionMgrFindVolumeButtonClient(v103, v32);
    v108 = 0;
    v107 = 0;
    v106 = 0.0;
    *type = 0u;
    v114 = 0u;
    IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(VolumeButtonClient, v35);
    v37 = 1;
    if (val && IsAdditiveRoutingEnabled)
    {
      v38 = PVMGetMappedCategory([VolumeButtonClient audioCategory]);
      if (([VolumeButtonClient isEqual:val] & 1) != 0 || !objc_msgSend(v38, "isEqualToString:", @"Audio/Video"))
      {
        v37 = 1;
      }

      else
      {
        if ([objc_msgSend(val "clientPID")] < 1)
        {
          v39 = 0;
        }

        else
        {
          v39 = proc_name([objc_msgSend(val "clientPID")], type, 0x20u);
          if (v39 < 0)
          {
            v37 = 0;
            goto LABEL_41;
          }
        }

        v37 = 0;
        type[v39] = OS_LOG_TYPE_DEFAULT;
      }
    }

LABEL_41:
    if (v103 == 1)
    {
      PVMCopyCurrentCategoryAndMode(&cf, 0);
      LODWORD(location) = 1031798784;
      v40 = +[MXSessionManager sharedInstance];
      [(MXSessionManager *)v40 getVolumeButtonDelta:cf outVolumeDelta:&location];
      if (a9 >= 0.0)
      {
        a9 = *&location;
      }

      else
      {
        a9 = -*&location;
      }
    }

    if (objc_msgSend_isActive(VolumeButtonClient))
    {
      if (VolumeButtonClient && ![VolumeButtonClient currentlyControllingFlags] && objc_msgSend(VolumeButtonClient, "hwControlFlags"))
      {
        v41 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_HasSameAudioCategory, @"VoiceOver");
        v42 = v41;
        if (v41)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v41, 0);
          if (ValueAtIndex)
          {
            if (([ValueAtIndex currentlyControllingFlags] & 2) != 0)
            {
              [VolumeButtonClient audioCategory];
              if (FigCFEqual())
              {
                [VolumeButtonClient isPlaying];
              }
            }
          }

          CFRelease(v42);
        }

        if (v103 <= 0xE && ((1 << v103) & 0x5836) != 0)
        {
          cmsTryToTakeControl(VolumeButtonClient);
        }
      }

      if (CMSMUtility_ShouldChangeMainVolume(VolumeButtonClient, v103, v30, a3))
      {
        vaemUnmuteFullMuteIfMuted();
        CMSMUtility_ChangeMainVolumeForSession(VolumeButtonClient, v16, buffer, v103, &v106, a9);
        v44 = @"Audio/Video";
        if (@"Audio/Video")
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      v110[0] = 0;
      PVMCopyCurrentCategoryAndMode(&cf, v110);
      v49 = PVMGetEnabled();
      if (!v49)
      {
        if (!CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote() && v103 <= 0xE && ((1 << v103) & 0x5836) != 0)
        {
          cmsTryToTakeControl(VolumeButtonClient);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v110[0])
        {
          CFRelease(v110[0]);
          v110[0] = 0;
        }

        v49 = PVMCopyCurrentCategoryAndMode(&cf, v110);
      }

      if (!v98)
      {
        v49 = MXSMCancelAnyInProgressVolumeRampIfNeeded(cf, v110[0], v103);
      }

      IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled = MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled(v49, v50);
      if (IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled && v103 <= 0xE && ((1 << v103) & 0x5836) != 0)
      {
        v53 = v103 - 11 >= 2 ? 0 : v30;
        IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled = cmsmShouldUpdateMostRecentSynchronizedVolumeActivityTimestamp(v53);
        if (IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled)
        {
          v119 = 0;
          location = 0u;
          v118 = 0u;
          *&v115[0] = 0;
          *(&v115[0] + 1) = a3;
          v115[1] = v99;
          *&v115[2] = 0;
          IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled = isRouteInfoInVolumeOperationCurrent(v115, &location);
          if (IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled)
          {
            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
            v115[0] = location;
            v115[1] = v118;
            *&v115[2] = v119;
            PVMSetMostRecentSynchronizedVolumeActivityTimestamp(v115, UpTimeNanoseconds);
            if (*(&location + 1))
            {
              CFRelease(*(&location + 1));
              *(&location + 1) = 0;
            }

            if (*(&v118 + 1))
            {
              CFRelease(*(&v118 + 1));
              *(&v118 + 1) = 0;
            }

            IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled = v118;
            if (v118)
            {
              CFRelease(v118);
            }
          }
        }
      }

      if (CMSMVAUtility_IsAdditiveRoutingEnabled(IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled, v52))
      {
        v47 = v37;
      }

      else
      {
        v47 = 1;
      }

      if ((v47 & 1) == 0)
      {
        v105 = [val audioCategory];
        *v104 = [val audioMode];
        if (v103 <= 0xE && ((1 << v103) & 0x5836) != 0)
        {
          [+[MXSessionManager sharedInstance](MXSessionManager setVoiceOverVADVolumeNeedsUpdate:"setVoiceOverVADVolumeNeedsUpdate:", 1];
        }

        else
        {
          if (dword_1EB75DE40)
          {
            v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          cmsmGetAndSetVolumePreferencesForActiveVolumeClient(val, VolumeSequenceNumber, v103, [objc_msgSend(val "clientPID")], type, &v105, v104, v30, 0.0, 0.0, a9, a3, *(&v99 + 1), v99, 0, &v108, &v107, &v106, &v108 + 1, a12, a15, HIBYTE(a15));
          VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
        }
      }

      cmsmGetAndSetVolumePreferencesForActiveVolumeClient(VolumeButtonClient, VolumeSequenceNumber, v103, v16, buffer, &cf, v110, v30, a10, a11, a9, a3, *(&v99 + 1), v99, a6, &v108, &v107, &v106, &v108 + 1, a12, a15, HIBYTE(a15));
      goto LABEL_184;
    }

    if (VolumeButtonClient)
    {
      v45 = CMSMUtility_ShouldChangeMainVolume(VolumeButtonClient, v103, v30, a3);
      if (v45)
      {
        vaemUnmuteFullMuteIfMuted();
        CMSMUtility_ChangeMainVolumeForSession(VolumeButtonClient, v16, buffer, v103, &v106, a9);
        v44 = @"Audio/Video";
        if (@"Audio/Video")
        {
LABEL_64:
          v44 = CFRetain(@"Audio/Video");
        }

LABEL_65:
        cf = v44;
        v47 = 1;
        v107 = 1;
        goto LABEL_184;
      }

      if (CMSMVAUtility_IsAdditiveRoutingEnabled(v45, v46))
      {
        v47 = v37;
      }

      else
      {
        v47 = 1;
      }

      if ((v47 & 1) == 0)
      {
        v110[0] = [val audioCategory];
        v105 = [val audioMode];
        if (v103 <= 0xE && ((1 << v103) & 0x5836) != 0)
        {
          [+[MXSessionManager sharedInstance](MXSessionManager setVoiceOverVADVolumeNeedsUpdate:"setVoiceOverVADVolumeNeedsUpdate:", 1];
        }

        if (dword_1EB75DE40)
        {
          *v104 = 0;
          v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        cmsmGetAndSetVolumePreferencesForActiveVolumeClient(val, VolumeSequenceNumber, v103, [objc_msgSend(val "clientPID")], type, v110, &v105, v30, 0.0, 0.0, a9, a3, *(&v99 + 1), v99, 0, &v108, &v107, &v106, &v108 + 1, a12, a15, HIBYTE(a15));
        VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
      }

      if (!v98)
      {
        MXSMCancelAnyInProgressVolumeRampIfNeeded(cf, 0, v103);
      }

      cmsmGetAndSetVolumePreferencesForNonActiveVolumeClient(VolumeButtonClient, VolumeSequenceNumber, v103, v16, buffer, &cf, v30, &v108, a9, &v107, &v106, &v108 + 1, a12, a15, HIBYTE(a15), a6);
LABEL_184:
      v74 = cf;
      if (a15)
      {
        v75 = 1;
        if (!cf)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v76 = FigCFEqual();
        v75 = v103 == 12 && v76 != 0;
        v74 = cf;
        if (!cf)
        {
          goto LABEL_197;
        }
      }

      v78 = PVMGetMappedCategory(v74);
      if (v78)
      {
        v78 = CFRetain(v78);
      }

      cf = v78;
      CFRelease(v74);
LABEL_197:
      v79 = !v107 || v75;
      if ((v79 & 1) == 0)
      {
        VolumeNotificationPayload = CMSMNotificationUtility_CreateVolumeNotificationPayload(cf, @"ExplicitVolumeChange", 0, VolumeSequenceNumber, a6, v106);
        CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload(VolumeNotificationPayload, v81);
        CMSMNotificationUtility_PostVolumeDidChangeToAVSystemControllersWithPayload(VolumeNotificationPayload);
        if (VolumeNotificationPayload)
        {
          CFRelease(VolumeNotificationPayload);
        }
      }

      if (v108)
      {
        CMSMNotificationUtility_PostUserMutedDidChange(cf, HIBYTE(v108));
      }

      if (v103 <= 0xE && ((1 << v103) & 0x5836) != 0)
      {
        v82 = a6 != 0;
        if (VolumeButtonClient)
        {
          IsPlaying = CMSUtility_GetIsPlaying(VolumeButtonClient);
        }

        else
        {
          IsPlaying = 0;
        }

        if (v30)
        {
          v84 = v30;
        }

        else
        {
          v84 = cf;
        }

        CMSUtility_SendVolumeChangeEventToAudioStatistics(VolumeButtonClient, buffer, v84, a3, IsPlaying, v82, v106);
        if (CMSMVAUtility_IsAdditiveRoutingEnabled(v85, v86))
        {
          v87 = v47;
        }

        else
        {
          v87 = 1;
        }

        if ((v87 & 1) == 0)
        {
          CMSUtility_SendVolumeChangeEventToAudioStatistics(val, type, v84, a3, [val isPlaying], v82, v106);
        }

        v88 = FigCFEqual();
        if (v88)
        {
          MinVolume = CMSystemSoundMgrGetMinVolume(@"DeviceShutdown");
          v91 = v106;
          if (v91 >= CMSystemSoundMgrGetMaxVolume(@"DeviceShutdown"))
          {
            MaxVolume = CMSystemSoundMgrGetMaxVolume(@"DeviceShutdown");
          }

          else
          {
            MaxVolume = v106;
          }

          if (MinVolume <= MaxVolume)
          {
            v94 = v106;
            if (v94 >= CMSystemSoundMgrGetMaxVolume(@"DeviceShutdown"))
            {
              v93 = CMSystemSoundMgrGetMaxVolume(@"DeviceShutdown");
            }

            else
            {
              v93 = v106;
            }
          }

          else
          {
            v93 = CMSystemSoundMgrGetMinVolume(@"DeviceShutdown");
          }

          vaemSetBootChimeVolume(v93);
        }

        if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(v88, v89))
        {
          v95 = a6 != 0;
        }

        else
        {
          v95 = 1;
        }

        if (!v95 && FigCFEqual() && (v103 == 11 || v103 == 1))
        {
          [+[MXSessionManager sharedInstance](MXSessionManager handleUserIntentToUnmute:"handleUserIntentToUnmute:", v103];
        }
      }

      if (a8)
      {
        *a8 = v106;
      }

      if (a13)
      {
        *a13 = cf;
      }

      else
      {
        if (!cf)
        {
LABEL_243:
          if (a14)
          {
            *a14 = VolumeSequenceNumber;
          }

          return 0;
        }

        CFRelease(cf);
      }

      cf = 0;
      goto LABEL_243;
    }

    if (v30)
    {
      v96 = CFRetain(v30);
      cf = v96;
      v48 = v30;
      goto LABEL_120;
    }

    cf = 0;
    v96 = cmsmCopyUpdatedVolumeOperationCategoryForNullDefaultCategory(v103);
    cf = v96;
    switch(v103)
    {
      case 3u:
        v56 = 13;
        break;
      case 2u:
        v56 = 12;
        break;
      case 1u:
        v56 = 11;
        break;
      default:
LABEL_119:
        v48 = v96;
LABEL_120:
        v30 = v48;
        if (v98)
        {
          v57 = a3;
        }

        else
        {
          MXSMCancelAnyInProgressVolumeRampIfNeeded(v96, 0, v103);
          v96 = cf;
          v57 = a3;
          v48 = v30;
        }

        v112 = 0;
        *v110 = 0u;
        *v111 = 0u;
        if (v103 <= 7)
        {
          if (v103 <= 3)
          {
            switch(v103)
            {
              case 1u:
                vaemUnmuteFullMuteIfMuted();
                v119 = 0;
                location = 0u;
                v118 = 0u;
                v62 = PVMGetVolumePreference(v96, 0, &location);
                location = *v110;
                v118 = *v111;
                v119 = v112;
                PVMSetVolumePreference(v96, 0, a6, &location, VolumeSequenceNumber, a15, a9 + v62, 0.0, 0.0);
                location = *v110;
                v118 = *v111;
                v119 = v112;
                v106 = PVMGetVolumePreference(v96, 0, &location);
                v107 = 1;
                MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(1u, a6, v62, v106);
                if (!dword_1EB75DE40)
                {
                  goto LABEL_183;
                }

                break;
              case 2u:
                vaemUnmuteFullMuteIfMuted();
                v119 = 0;
                location = 0u;
                v118 = 0u;
                v65 = PVMGetVolumePreference(v96, 0, &location);
                location = *v110;
                v118 = *v111;
                v119 = v112;
                PVMSetVolumePreference(v96, 0, a6, &location, VolumeSequenceNumber, a15, a9, 0.0, 0.0);
                location = *v110;
                v118 = *v111;
                v119 = v112;
                v106 = PVMGetVolumePreference(v96, 0, &location);
                v107 = 1;
                MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(2u, a6, v65, v106);
                if (!dword_1EB75DE40)
                {
                  goto LABEL_183;
                }

                break;
              case 3u:
                v119 = 0;
                location = 0uLL;
                v118 = 0uLL;
                v58 = PVMGetVolumePreference(v96, 0, &location);
LABEL_142:
                v106 = v58;
                goto LABEL_183;
              default:
                goto LABEL_183;
            }

            LODWORD(v105) = 0;
            v104[0] = OS_LOG_TYPE_DEFAULT;
            v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_183;
          }

          if (v103 != 4)
          {
            if (v103 != 5)
            {
              if (v103 == 6)
              {
                v110[1] = a3;
                *v111 = v99;
                location = *v110;
                v118 = v99;
                v119 = v112;
                v110[0] = PVMGetMappedEndpointType(&location);
                location = *v110;
                v118 = *v111;
                v119 = v112;
                v58 = PVMGetVolumePreference(v96, 0, &location);
                goto LABEL_142;
              }

LABEL_183:
              v47 = 1;
              goto LABEL_184;
            }

            v110[1] = v57;
            *v111 = v99;
            location = *v110;
            v118 = v99;
            v119 = v112;
            v110[0] = PVMGetMappedEndpointType(&location);
            vaemUnmuteFullMuteIfMuted();
            location = *v110;
            v118 = *v111;
            v119 = v112;
            v67 = PVMGetVolumePreference(v96, 0, &location);
            location = *v110;
            v118 = *v111;
            v119 = v112;
            PVMSetVolumePreference(v96, 0, a6, &location, VolumeSequenceNumber, a15, a9, 0.0, 0.0);
            location = *v110;
            v118 = *v111;
            v119 = v112;
            v106 = PVMGetVolumePreference(v96, 0, &location);
            MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(5u, a6, v67, v106);
            if (dword_1EB75DE40)
            {
              goto LABEL_153;
            }

LABEL_173:
            v107 = 1;
            goto LABEL_183;
          }

          v110[1] = v57;
          *v111 = v99;
          location = *v110;
          v118 = v99;
          v119 = v112;
          v110[0] = PVMGetMappedEndpointType(&location);
          vaemUnmuteFullMuteIfMuted();
          location = *v110;
          v118 = *v111;
          v119 = v112;
          v63 = PVMGetVolumePreference(v96, 0, &location);
          location = *v110;
          v118 = *v111;
          v119 = v112;
          PVMSetVolumePreference(v96, 0, a6, &location, VolumeSequenceNumber, a15, a9 + v63, 0.0, 0.0);
          location = *v110;
          v118 = *v111;
          v119 = v112;
          v106 = PVMGetVolumePreference(v96, 0, &location);
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(4u, a6, v63, v106);
          if (!dword_1EB75DE40)
          {
            goto LABEL_173;
          }

LABEL_153:
          LODWORD(v105) = 0;
          v104[0] = OS_LOG_TYPE_DEFAULT;
          v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_173;
        }

        if (v103 <= 10)
        {
          if ((v103 == 8 || v103 == 10) && a12)
          {
            *a12 = 0;
          }

          goto LABEL_183;
        }

        if (v103 - 11 >= 3)
        {
          if (v103 != 14)
          {
            goto LABEL_183;
          }

          v110[1] = a3;
          *v111 = v99;
          location = *v110;
          v118 = v99;
          v119 = v112;
          v110[0] = PVMGetMappedEndpointType(&location);
          location = *v110;
          v118 = *v111;
          v119 = v112;
          v61 = PVMGetVolumePreference(v96, 0, &location);
          location = *v110;
          v118 = *v111;
          v119 = v112;
          PVMSetRawVolumePreference(v96, 0, &location, VolumeSequenceNumber, a15, a6, a9);
          location = *v110;
          v118 = *v111;
          v119 = v112;
          v106 = PVMGetVolumePreference(v96, 0, &location);
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xEu, a6, v61, v106);
          if (!dword_1EB75DE40)
          {
            goto LABEL_173;
          }

          goto LABEL_153;
        }

        if (!v48)
        {
          goto LABEL_183;
        }

        if (a3)
        {
          v110[1] = CFRetain(a3);
          v59 = v99;
          if (v99)
          {
            v59 = CFRetain(v99);
          }

          v111[0] = v59;
          v60 = *(&v99 + 1);
          if (*(&v99 + 1))
          {
            v60 = CFRetain(*(&v99 + 1));
          }

          v111[1] = v60;
        }

        else
        {
          CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(v96, 0, 0, 0, 0, &v110[1], &v111[1], v111);
        }

        location = *v110;
        v118 = *v111;
        v119 = v112;
        v100 = PVMIsCategoryAndRouteInfoCurrent(v96, 0, &location);
        location = *v110;
        v118 = *v111;
        v119 = v112;
        v110[0] = PVMGetMappedEndpointType(&location);
        if (v103 == 12)
        {
          PVMSetEnabled(1);
          if (!HIBYTE(a15))
          {
            vaemUnmuteFullMuteIfMuted();
          }

          location = *v110;
          v118 = *v111;
          v119 = v112;
          v72 = PVMGetVolumePreference(v96, 0, &location);
          location = *v110;
          v118 = *v111;
          v119 = v112;
          PVMSetVolumePreference(v96, 0, a6, &location, VolumeSequenceNumber, a15, a9, 0.0, 0.0);
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xCu, a6, v72, a9);
          if (!dword_1EB75DE40)
          {
            goto LABEL_176;
          }

          LODWORD(v105) = 0;
          v104[0] = OS_LOG_TYPE_DEFAULT;
          v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v71 = a8;
          os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
        }

        else
        {
          if (v103 != 11)
          {
LABEL_177:
            location = *v110;
            v118 = *v111;
            v119 = v112;
            v106 = PVMGetVolumePreference(v96, 0, &location);
            if (v111[0])
            {
              CFRelease(v111[0]);
              v111[0] = 0;
            }

            if (v110[1])
            {
              CFRelease(v110[1]);
              v110[1] = 0;
            }

            if (v111[1])
            {
              CFRelease(v111[1]);
            }

            goto LABEL_183;
          }

          PVMSetEnabled(1);
          vaemUnmuteFullMuteIfMuted();
          location = *v110;
          v118 = *v111;
          v119 = v112;
          v69 = PVMGetVolumePreference(v96, 0, &location);
          location = *v110;
          v118 = *v111;
          v119 = v112;
          PVMSetVolumePreference(v96, 0, a6, &location, VolumeSequenceNumber, a15, a9 + v69, 0.0, 0.0);
          location = *v110;
          v118 = *v111;
          v119 = v112;
          v106 = PVMGetVolumePreference(v96, 0, &location);
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xBu, a6, v69, v106);
          if (!dword_1EB75DE40)
          {
LABEL_176:
            v107 = !v100;
            goto LABEL_177;
          }

          LODWORD(v105) = 0;
          v104[0] = OS_LOG_TYPE_DEFAULT;
          v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v71 = a8;
          os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a8 = v71;
        goto LABEL_176;
    }

    v103 = v56;
    goto LABEL_119;
  }

  if (dword_1EB75DE40)
  {
    LODWORD(v110[0]) = 0;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!HIBYTE(word_1EB75E0E0))
  {
    VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
    v22 = v103;
    goto LABEL_18;
  }

  cmsmUpdateEnableSharedAudioRouteSyntheticMute(0, 1, 0, 0, 0, 0);
  return 0;
}