uint64_t vaemSetRouteConfigurationDictionaryOnVAD(uint64_t a1, uint64_t a2, const void *a3, unsigned int *a4)
{
  v6 = a2;
  v8 = MXGetPerformanceLog(a1, a2);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Route configuration", &unk_1B19E5B76, buf, 2u);
  }

  theDict = 0;
  *buf = a1;
  v27 = 8;
  p_theDict = &theDict;
  v29 = 8;
  v23 = 0x676C6F6272746366;
  v24 = 0;
  v10 = CMSMVAUtility_AudioObjectSetPropertyData(dword_1EB75E0AC, &v23, 0, 0, 32, buf);
  v11 = theDict;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = theDict == 0;
  }

  if (v12)
  {
    v13 = 4294954310;
    if (theDict)
    {
LABEL_18:
      CFRelease(v11);
    }
  }

  else
  {
    Value = CFDictionaryGetValue(theDict, @"route change reason");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, a4);
      v15 = CMSMVAUtility_MapVADReasonToCMSReason(*a4);
      if (v15 != 9)
      {
        IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(v15, v9);
        if (IsAdditiveRoutingEnabled && !MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(IsAdditiveRoutingEnabled, v17))
        {
          v18 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyAndUpdateSessionInformation:"copyAndUpdateSessionInformation:", [(__CFDictionary *)theDict objectForKey:0x1F2897690]];
        }

        else
        {
          v18 = 0;
        }

        vaemAQMERouteChanged(theDict, a3, v18);
        vaemVADRouteChangeListener(0, theDict, v19, v6, a3, 1);
      }
    }

    v13 = 0;
    v11 = theDict;
    if (theDict)
    {
      goto LABEL_18;
    }
  }

  v20 = MXGetPerformanceLog(v11, v9);
  if (os_signpost_enabled(v20))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Route configuration", &unk_1B19E5B76, v22, 2u);
  }

  return v13;
}

uint64_t CMSMVAUtility_MapVADReasonToCMSReason(int a1)
{
  result = 0;
  if (a1 <= 1919842147)
  {
    if (a1 > 1919181935)
    {
      if (a1 <= 1919185775)
      {
        if (a1 != 1919181936)
        {
          if (a1 != 1919184754)
          {
            return result;
          }

          return 2;
        }

        return 3;
      }

      if (a1 == 1919185776)
      {
        return 11;
      }

      if (a1 == 1919186544)
      {
        return 3;
      }

      return result;
    }

    if (a1 == 1919050611)
    {
      return 5;
    }

    if (a1 != 1919050851)
    {
      v3 = a1 == 1919118966;
      v4 = 7;
LABEL_18:
      if (v3)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    return 10;
  }

  if (a1 <= 1919970402)
  {
    if (a1 == 1919842148)
    {
      return 1;
    }

    if (a1 == 1919904885)
    {
      return 2;
    }

    v3 = a1 == 1919907442;
    v4 = 4;
    goto LABEL_18;
  }

  if (a1 > 1919971700)
  {
    if (a1 == 1920099684)
    {
      v5 = 9;
    }

    else
    {
      v5 = 0;
    }

    if (a1 == 1919971701)
    {
      return 8;
    }

    else
    {
      return v5;
    }
  }

  if (a1 == 1919970403)
  {
    return 3;
  }

  if (a1 == 1919971427)
  {
    return 10;
  }

  return result;
}

void vaemConfigurePVMSettings(__CFString *a1, int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!PVMGetEnabled())
  {
    PVMSetEnabled(1);
  }

  vaemCurrentRouteHasVolumeControlListenerGuts();
  v2 = CMSMUtility_CopyCurrentRouteIdentifiers();
  v3 = v2;
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    v4 = 0;
    do
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ++v4;
    }

    while (CFArrayGetCount(v3) > v4);
  }

  v6 = CMSMUtility_CopyCurrentRouteTypes();
  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  if (!FigCFArrayContainsValue() || (v8 = 1, a2 != 1919904885) && a2 != 1919971701)
  {
    if (!FigCFArrayContainsValue() && !FigCFArrayContainsValue())
    {
LABEL_21:
      v8 = 0;
      goto LABEL_22;
    }

    if (NumberOfCurrentOutputPorts)
    {
      v9 = 0;
      do
      {
        CFArrayGetValueAtIndex(v6, v9);
        if (FigCFEqual() || FigCFEqual())
        {
          CFArrayGetValueAtIndex(v3, v9);
          if (FigCFEqual())
          {
            goto LABEL_21;
          }
        }
      }

      while (NumberOfCurrentOutputPorts != ++v9);
    }

    v8 = 1;
  }

LABEL_22:
  ControllingRoutingSession = CMSMUtility_GetControllingRoutingSession();
  if (ControllingRoutingSession)
  {
    [ControllingRoutingSession audioMode];
    if (FigCFEqual())
    {
      v11 = a1;
      if (FigCFEqual())
      {
        v11 = @"VideoChatForMedia";
      }

      a1 = v11;
    }
  }

  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  CMSMUtility_GetCurrentRouteInfoAtIndex(0, &v48);
  IsSiriControllingRoutingAndNotVolume = CMSMUtility_IsSiriControllingRoutingAndNotVolume();
  if (!IsSiriControllingRoutingAndNotVolume)
  {
    SharePlayCapableActiveMediaSession = CMSMUtility_GetSharePlayCapableActiveMediaSession(IsSiriControllingRoutingAndNotVolume, v13);
    v46 = v8;
    if (CMSMUtility_IsSharePlayCapableCallSessionActive(SharePlayCapableActiveMediaSession, v15) && SharePlayCapableActiveMediaSession && ([SharePlayCapableActiveMediaSession currentlyControllingFlags] & 0x10) != 0)
    {
      if (dword_1EB75DE40)
      {
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v45 = -[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [SharePlayCapableActiveMediaSession audioCategory]);
      v26 = [SharePlayCapableActiveMediaSession audioMode];
      v27 = v49;
      v28 = v48;
      v29 = v50;
      v30 = byte_1EB75E098;
      DoesPortSupportDoAP = vaeDoesPortSupportDoAP(DWORD2(v50));
      VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
      v24 = PVMSetCurrentState(v45, v26, v28, v27, *(&v27 + 1), *(&v28 + 1), v29, v46, v30, DoesPortSupportDoAP, VolumeSequenceNumber);
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v18 = -[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory]);
      v19 = v49;
      v20 = v48;
      v21 = v50;
      v22 = byte_1EB75E098;
      v23 = vaeDoesPortSupportDoAP(DWORD2(v50));
      v41 = CMSMUtility_GetVolumeSequenceNumber();
      v24 = PVMSetCurrentState(v18, a1, v20, v19, *(&v19 + 1), *(&v20 + 1), v21, v46, v22, v23, v41);
    }

    if (CMSMVAUtility_IsAdditiveRoutingEnabled(v24, v25))
    {
      v32 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyActiveVoiceOverSessionPlayingToOnDemandVAD];
      if (v32)
      {
        v33 = v48;
        v34 = v49;
        v35 = v50;
        v51 = *(&v48 + 1);
        v52 = v48;
        v53 = *(&v49 + 1);
        v54 = v49;
        v55 = v50;
        v36 = PVMGetVolumePreference(@"VoiceOver", @"Default", &v51);
        v47 = CMSMUtility_GetVolumeSequenceNumber();
        if (dword_1EB75DE40)
        {
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXSessionManager sharedInstance](MXSessionManager setVoiceOverVADVolumeNeedsUpdate:"setVoiceOverVADVolumeNeedsUpdate:", 1];
        v38 = [v32 audioCategory];
        v39 = [v32 audioMode];
        v51 = *(&v33 + 1);
        v52 = v33;
        v53 = *(&v34 + 1);
        v54 = v34;
        v55 = v35;
        if (PVMSetRawVolumePreference(v38, v39, &v51, v47, 1, 0, v36))
        {
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    vaemUpdatePVMSettingsForInputGain();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

BOOL PVMGetEnabled()
{
  FigSimpleMutexLock();
  v0 = *(sStorage + 8) == 0;
  FigSimpleMutexUnlock();
  return v0;
}

void vaemCurrentRouteHasVolumeControlListenerGuts()
{
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  PortTypeFromPortID = vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex);
  if (PortTypeFromPortID != 1885433971 && PortTypeFromPortID != 1885433953)
  {
    HasVolumeControl = vaemCurrentRouteHasVolumeControl();

    vaemHandleVolumeControlDidChange(HasVolumeControl);
    return;
  }

  CurrentDeviceIdentifierAtIndex = CMSMUtility_GetCurrentDeviceIdentifierAtIndex(0);
  v4 = FigRoutingManagerCopyEndpointWithDeviceID(CurrentDeviceIdentifierAtIndex, 1, *MEMORY[0x1E69618D0], 0);
  v5 = *MEMORY[0x1E695E4C0];
  v10 = *MEMORY[0x1E695E4C0];
  if (v4)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E6962340], *MEMORY[0x1E695E480], &v10);
      v5 = v10;
    }

    if (!v5)
    {
      goto LABEL_14;
    }

    Value = CFBooleanGetValue(v5);
    vaemHandleVolumeControlDidChange(Value);
    v5 = v10;
  }

  if (v5)
  {
    CFRelease(v5);
    v10 = 0;
  }

  if (v4)
  {
LABEL_14:
    CFRelease(v4);
  }
}

BOOL vaemCurrentRouteHasVolumeControl()
{
  ioDataSize = 4;
  outData = 1;
  *&inAddress.mSelector = *"pscvptuo";
  inAddress.mElement = 0;
  PropertyData = AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:0];
  return (PropertyData | outData) != 0;
}

uint64_t vaemHandleVolumeControlDidChange(uint64_t result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (byte_1EB75E098 != result)
  {
    v1 = result;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    byte_1EB75E098 = v1;
    return CMSMNotificationUtility_PostCurrentRouteHasVolumeControlDidChange(v1);
  }

  return result;
}

__CFArray *CMSMUtility_CopyCurrentRouteIdentifiers()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  if (dword_1EB75E0C8)
  {
    v1 = 0;
    do
    {
      MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v1, &v4);
      if (v5)
      {
        v2 = v5;
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

void *CMSMUtility_GetControllingRoutingSession()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v19;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v19 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v18 + 1) + 8 * i);
        if (([v5 currentlyControllingFlags] & 2) != 0)
        {
          if (v5)
          {
            if (FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([v5 routingContextUUID]))
            {
              v16 = 0u;
              v17 = 0u;
              v14 = 0u;
              v15 = 0u;
              v6 = [v0 countByEnumeratingWithState:&v14 objects:v22 count:16];
              if (v6)
              {
                v7 = v6;
                v8 = *v15;
                do
                {
                  for (j = 0; j != v7; ++j)
                  {
                    if (*v15 != v8)
                    {
                      objc_enumerationMutation(v0);
                    }

                    v10 = *(*(&v14 + 1) + 8 * j);
                    v11 = [v10 currentlyControllingFlags] & 2;
                    if (v10 != v5 && v11 != 0)
                    {
                      v5 = v10;
                      goto LABEL_24;
                    }
                  }

                  v7 = [v0 countByEnumeratingWithState:&v14 objects:v22 count:16];
                }

                while (v7);
              }
            }
          }

          goto LABEL_24;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v5 = 0;
LABEL_24:

  return v5;
}

uint64_t CMSMUtility_GetCurrentRouteInfoAtIndex@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  FigSimpleMutexLock();
  if (dword_1EB75E0C8 > a1)
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, a2);
    v4 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
      CFAutorelease(v4);
    }
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    CFRetain(*(a2 + 8));
    CFAutorelease(v5);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    CFRetain(*(a2 + 16));
    CFAutorelease(v6);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    CFRetain(*(a2 + 24));
    CFAutorelease(v7);
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    CFRetain(v8);
    CFAutorelease(v8);
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigRouteDiscovererUpdateCachedUserSelectionAvailable(const void *a1, uint64_t a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56);
  v5 = v4 > 8;
  v6 = (1 << v4) & 0x10C;
  if (v5 || v6 == 0)
  {
    v16 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v8 = DerivedStorage;
  v9 = *MEMORY[0x1E695E480];
  UInt32 = FigCFNumberCreateUInt32();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v12 = CFRetain(Value);
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      if (!UInt32)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(v9, *(v8 + 56), *(v8 + 8), *(v8 + 24), &cf);
  v13 = FigRouteDiscovererCopyUserSelectionAvailable(*(v8 + 56), cf);
  FigCFDictionarySetValue();
  v14 = 1;
  if (UInt32)
  {
LABEL_10:
    CFRelease(UInt32);
  }

LABEL_11:
  if (v13)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v13 == *MEMORY[0x1E695E4D0]];
    discoverer_updateUserSelectionAvailableAndNotifyIfRoutePresentChanged(a1, cf, v15);
    CFRelease(v13);
    goto LABEL_16;
  }

  v16 = cf;
LABEL_15:
  discoverer_updateUserSelectionAvailableAndNotifyIfRoutePresentChanged(a1, v16, 0);
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void discoverer_updateUserSelectionAvailableAndNotifyIfRoutePresentChanged(const void *a1, const __CFArray *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (a3)
  {
    if ([a3 BOOLValue])
    {
      v8 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v8 = *MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    v8 = FigRouteDiscovererCopyUserSelectionAvailable(*(DerivedStorage + 56), a2);
  }

  FigSimpleMutexLock();
  v9 = *(v7 + 88);
  *(v7 + 88) = FigCFEqual() != 0;
  FigSimpleMutexUnlock();
  v10 = FigCFEqual() != 0;
  CMBaseObjectGetDerivedStorage();
  IsClientEligibleToReceiveUpdateNotifications = FigRouteDiscoveryManagerIsClientEligibleToReceiveUpdateNotifications(a1);
  if (v10 != v9 && IsClientEligibleToReceiveUpdateNotifications)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    NotificationQueue = FigRouteDiscoveryManagerGetNotificationQueue();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __discoverer_postRoutePresentChangedIfNecessary_block_invoke;
    v14[3] = &__block_descriptor_40_e5_v8__0l;
    v14[4] = a1;
    MXDispatchAsync("discoverer_postRoutePresentChangedIfNecessary", "FigRouteDiscoverer.m", 1023, 0, 0, NotificationQueue, v14);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void *CMSMUtility_GetSharePlayCapableActiveMediaSession(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsSharePlayEnabled(a1, a2))
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
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      if (objc_msgSend_isActive(v7))
      {
        if (CMSUtility_IsSharePlayCapableMediaSession(v7, v8))
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v7 = 0;
  }

  return v7;
}

uint64_t CMSUtility_IsSharePlayCapableMediaSession(void *a1, uint64_t a2)
{
  result = MX_FeatureFlags_IsSharePlayEnabled(a1, a2);
  if (result)
  {
    if ([a1 isSharePlayMediaSession])
    {
      return FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a1 routingContextUUID]) == 0;
    }

    result = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1);
    if (result)
    {
      return FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a1 routingContextUUID]) == 0;
    }
  }

  return result;
}

uint64_t vaeDoesPortSupportDoAP(AudioObjectID a1)
{
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = 0x676C6F62646F6170;
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
    return !AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData) && outData != 0;
  }

  return result;
}

uint64_t PVMSetCurrentState(const __CFString *a1, const void *a2, void *a3, void *a4, const void *a5, __CFString *a6, const void *a7, int a8, char a9, char a10, uint64_t a11)
{
  cf[19] = *MEMORY[0x1E69E9840];
  v17 = PVMInitialize();
  v63 = 0;
  cf[0] = 0;
  v18 = sStorage;
  v19 = *(sStorage + 272);
  if (v19)
  {
    v62 = CFRetain(v19);
    v18 = sStorage;
  }

  else
  {
    v62 = 0;
  }

  v20 = *(v18 + 288);
  if (v20)
  {
    v60 = CFRetain(v20);
    v18 = sStorage;
  }

  else
  {
    v60 = 0;
  }

  v21 = *(v18 + 232);
  if (v21)
  {
    v61 = CFRetain(v21);
  }

  else
  {
    v61 = 0;
  }

  v22 = @"Unspecified";
  if (!a6)
  {
    a6 = @"Unspecified";
  }

  v23 = v17;
  if (!v17)
  {
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    if (a1)
    {
      MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
      pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, cf, &v63);
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v57 = 0;
      v56 = @"RouteChange";
    }

    else
    {
      v25 = *(sStorage + 232);
      v26 = cf[0];
      *(sStorage + 232) = cf[0];
      if (v26)
      {
        CFRetain(v26);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      v27 = *(sStorage + 240);
      v28 = v63;
      *(sStorage + 240) = v63;
      if (v28)
      {
        CFRetain(v28);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      v56 = @"CategoryChange";
      v57 = 1;
    }

    v29 = *(sStorage + 248);
    *(sStorage + 248) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    v30 = *(sStorage + 256);
    *(sStorage + 256) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (a3)
    {
      v31 = *(sStorage + 200);
      if (v31)
      {
        Value = CFDictionaryGetValue(v31, a3);
        if (Value)
        {
          a3 = Value;
        }
      }
    }

    FigCFEqual();
    v33 = *(sStorage + 272);
    *(sStorage + 272) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    MappedRouteIdentifier = pvmGetMappedRouteIdentifier(a4, a3);
    v35 = MappedRouteIdentifier;
    v36 = *(sStorage + 288);
    *(sStorage + 288) = MappedRouteIdentifier;
    if (MappedRouteIdentifier)
    {
      CFRetain(MappedRouteIdentifier);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (a5 && a3 && ([a3 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(a3, "hasPrefix:", @"HeadsetBT"))
    {
      v37 = *(sStorage + 280);
      *(sStorage + 280) = a5;
      CFRetain(a5);
    }

    else
    {
      a5 = 0;
      v37 = *(sStorage + 280);
      *(sStorage + 280) = 0;
    }

    if (v37)
    {
      CFRelease(v37);
    }

    v38 = sStorage;
    *(sStorage + 324) = a9;
    *(v38 + 325) = a10;
    if (pvmSetCurrentRouteInfo(a6, a3, a5, v35, a7))
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      if (*(sStorage + 272) && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
      {
        v39 = *MEMORY[0x1E695E480];
        MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 16, *(sStorage + 272));
        v41 = sStorage;
        if (*(sStorage + 120) || (Mutable = CFDictionaryCreateMutable(v39, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), v41 = sStorage, (*(sStorage + 120) = Mutable) != 0))
        {
          if (*(v41 + 280))
          {
            CFStringAppend(MutableCopy, @"~");
            CFStringAppend(MutableCopy, *(sStorage + 280));
            v41 = sStorage;
          }

          if (*(v41 + 288))
          {
            CFStringAppend(MutableCopy, @"~");
            CFStringAppend(MutableCopy, *(sStorage + 288));
            v41 = sStorage;
          }

          v43 = CFDictionaryContainsKey(*(v41 + 120), MutableCopy);
          v44 = FigCFEqual();
          if (!v43 || !v44)
          {
            v22 = *(sStorage + 264);
            CFDictionarySetValue(*(sStorage + 120), MutableCopy, v22);
            *(sStorage + 128) = 1;
            pvmWritePrefs();
          }
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53, v54, v55);
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      if (v22)
      {
        CFRelease(v22);
      }

      *(sStorage + 304) = FigCFEqual();
      *(sStorage + 305) = FigCFEqual();
      if (FigCFEqual())
      {
        v45 = FigCFEqual() == 0;
      }

      else
      {
        v45 = 1;
      }

      v46 = FigCFEqual();
      v47 = sStorage;
      if ((v45 || !v46) && *(sStorage + 92))
      {
        if (dword_1EB75DFE8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v49 = +[MXPreferredVolumeManager sharedInstance];
        LODWORD(v50) = *(sStorage + 308);
        [(MXPreferredVolumeManager *)v49 postNotification:@"PVMStateDidChange" category:0 mode:0 volume:1 rampUpwardDuration:0 rampDownwardDuration:0 silenceVolumeHUD:v50 reason:0.0 refCon:0.0 sequenceNumber:0];
        v47 = sStorage;
      }

      v51 = v57;
      if (!*(v47 + 304))
      {
        v51 = 1;
      }

      if (a8 || v51)
      {
        pvmUpdatePreferredVolumeAndLimit(v56, 0, *(v47 + 232), *(v47 + 240), 0, 1, a11, 0.0, 0.0);
      }

      v23 = 0;
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (!v17)
  {
    FigSimpleMutexUnlock();
  }

  return v23;
}

uint64_t pvmSetCurrentRouteInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef cf)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = sStorage;
  *(sStorage + 264) = a1;
  v5[34] = a2;
  v5[35] = a3;
  v5[36] = a4;
  v6 = v5[37];
  v5[37] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t pvmUpdatePreferredVolumeAndLimit(uint64_t result, uint64_t a2, __CFString *a3, const void *a4, int a5, int a6, uint64_t a7, float a8, float a9)
{
  if (!*(sStorage + 8))
  {
    v16 = result;
    if (a6)
    {
      pvmAssureCurrentCategoryAndDeviceRoute();
      v17 = *(sStorage + 232);
      v18 = *(sStorage + 240);
      v19 = *(sStorage + 280);
      v28 = *(sStorage + 264);
      v29 = v19;
      v30 = *(sStorage + 296);
      pvmGetVolumePref(v17, v18, &v28);
      v20 = sStorage;
      *(sStorage + 308) = v21;
      if (!*(v20 + 8) && (FigCFEqual() || FigCFEqual()))
      {
        if (FigCFEqual())
        {
          pvmSetSystemSoundVolumeMultiplierForVolumeGuts(*(sStorage + 308));
        }
      }
    }

    FigSimpleMutexUnlock();
    v22 = *(sStorage + 280);
    v28 = *(sStorage + 264);
    v29 = v22;
    v30 = *(sStorage + 296);
    v23 = PVMGetVolumePreference(a3, a4, &v28);
    v24 = +[MXPreferredVolumeManager sharedInstance];
    *&v25 = v23;
    *&v26 = a8;
    *&v27 = a9;
    [(MXPreferredVolumeManager *)v24 postNotification:@"VolumePreferenceDidChange" category:a3 mode:a4 volume:a5 != 0 rampUpwardDuration:v16 rampDownwardDuration:a2 silenceVolumeHUD:v25 reason:v26 refCon:v27 sequenceNumber:a7];

    return FigSimpleMutexLock();
  }

  return result;
}

uint64_t PVMCopyCurrentCategoryAndMode(CFTypeRef *a1, void *a2)
{
  v4 = PVMInitialize();
  if (!v4)
  {
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    if (a1)
    {
      *a1 = CFRetain(*(sStorage + 232));
    }

    if (a2)
    {
      v5 = *(sStorage + 240);
      if (v5)
      {
        v5 = CFRetain(v5);
      }

      *a2 = v5;
    }

    FigSimpleMutexUnlock();
  }

  return v4;
}

uint64_t PVMCopyCurrentDeviceRoute(CFTypeRef *a1, void *a2, void *a3)
{
  v6 = PVMInitialize();
  if (!v6)
  {
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    *a1 = CFRetain(*(sStorage + 272));
    v7 = sStorage;
    if (a2)
    {
      v8 = *(sStorage + 288);
      *a2 = v8;
      if (v8)
      {
        CFRetain(v8);
        v7 = sStorage;
      }
    }

    if (a3)
    {
      v9 = *(v7 + 280);
      *a3 = v9;
      if (v9)
      {
        CFRetain(v9);
      }
    }

    FigSimpleMutexUnlock();
  }

  return v6;
}

uint64_t CMSMVAUtility_IsBluetoothSharingSessionEnabled(const __CFArray *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    LODWORD(v7) = 0;
    CMSMUtility_CopyCurrentRoutesInfo(&v7);
  }

  Count = CFArrayGetCount(a1);
  if (Count >= 2)
  {
    v2 = Count;
    v3 = 0;
    while (1)
    {
      FigCFArrayGetInt64AtIndex();
      if (!vaeIsPortBluetoothShareable(0))
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 1;
      }
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return 0;
}

uint64_t vaemVADCurrentBufferFrameSizeListener(uint64_t a1, uint64_t a2)
{
  v2 = MXGetSerialQueue(a1, a2);
  MXDispatchAsyncFunction("vaemVADCurrentBufferFrameSizeListener", "CMSessionManager_VAEndpointManager.m", 5680, 0, 0, v2, 0, vaemVADCurrentBufferFrameSizeListenerGuts_f);
  return 0;
}

uint64_t CMSUtility_UpdatePlaybackVolume(void *a1, float a2, float a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    result = PVMCategoriesAreEquivalent(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]), objc_msgSend(a1, "audioMode"), @"Audio/Video", 0);
    if (result)
    {
      v7 = [a1 audioCategory];
      v8 = [a1 audioMode];

      CMSMVAUtility_SetIndividualVolumeOnCurrentBluetoothShareableRoutes(v7, v8);
    }
  }

  else
  {
    v15 = 0.0;
    CMSUtility_ComputePlaybackVolume(a1, &v15);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v9 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    IsAdaptiveVolumeControlEnabled = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled(v9, v10);
    v13 = 0;
    if (a3 != 0.0 && a2 != 0.0 && IsAdaptiveVolumeControlEnabled)
    {
      v13 = MXSMGetVolumeRampCategory(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]), objc_msgSend(a1, "audioMode"));
    }

    CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a1);
    return vaemSetDeviceVolumeIfNotSet(CurrentOutputVADID, 0, 0, v13, v15, a2, a3);
  }

  return result;
}

void MXVW_VectorCMSRouteInfoPushBack(uint64_t a1, __int128 *a2)
{
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *(a2 + 1);
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a2 + 2);
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *(a2 + 3);
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *(a2 + 4);
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 >= v9)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4);
    v14 = v13 + 1;
    if (v13 + 1 > 0x555555555555555)
    {
      std::vector<CMSRouteInfo>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 4);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x2AAAAAAAAAAAAAALL)
    {
      v16 = 0x555555555555555;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CMSRouteInfo>>(a1, v16);
    }

    v17 = 48 * v13;
    v18 = *a2;
    v19 = a2[2];
    *(v17 + 16) = a2[1];
    *(v17 + 32) = v19;
    *v17 = v18;
    v12 = 48 * v13 + 48;
    v20 = *(a1 + 8) - *a1;
    v21 = v17 - v20;
    memcpy((v17 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v10 = *a2;
    v11 = a2[2];
    v8[1] = a2[1];
    v8[2] = v11;
    *v8 = v10;
    v12 = (v8 + 3);
  }

  *(a1 + 8) = v12;
}

uint64_t CMSUtilityPredicate_IsVolumeButtonClient(uint64_t a1, void *a2, const __CFString *a3)
{
  v4 = PVMCategoriesAreEquivalent(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a2 audioCategory]), objc_msgSend(a2, "audioMode"), a3, 0);
  if (objc_msgSend_isActive(a2))
  {
    LODWORD(result) = [a2 hasPhoneCallBehavior];
    if (v4)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  else
  {
    LODWORD(result) = [a2 wantsVolumeChangesWhenPausedOrInactive];
    if (v4)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CMSRouteInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t PVMCategoriesAreEquivalent(const __CFString *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (a1)
  {
    pvmGetMappedCategoryWithModeAppended(a1, a2);
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    pvmGetMappedCategoryWithModeAppended(a3, a4);
  }

LABEL_5:

  return FigCFEqual();
}

void MXVW_ReleaseVectorCMSRouteInfo(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      if (*v2)
      {
        CFRelease(*v2);
      }

      v4 = *(v2 + 8);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(v2 + 24);
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(v2 + 32);
      if (v7)
      {
        CFRelease(v7);
      }

      v2 += 48;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B2735410);
}

uint64_t vaemSetDeviceVolumeIfNotSet(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, float a5, float a6, float a7)
{
  v12 = a2;
  v27 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAdaptiveVolumeControlEnabled(a1, a2) && (v15 = vaemDeviceSupportsVolumeRamp(a1, v14), a7 != 0.0) && a6 != 0.0 && a4 && v15)
  {
    result = vaemDeviceSupportsVolumeRamp(a1, v16);
    if (result)
    {
      v26 = 0;
      v24 = a4;
      *v25 = *"pmarptuo";
      *v22 = a5;
      *&v22[1] = a6;
      v23 = LODWORD(a7);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      gVAEM = a1;
      dword_1EB75D0A4 = LODWORD(a5);
      byte_1EB75D0B9 = 1;
      qword_1EB75D0C0 = a4;
      result = CMSMVAUtility_AudioObjectSetPropertyData(a1, v25, 0, 0, 24, v22);
      v21 = result;
      if (result)
      {
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        byte_1EB75D0B9 = 0;
        qword_1EB75D0C0 = 0;
      }
    }

    else if (dword_1EB75DE40)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    result = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);
    if (a3 || !result)
    {
      FigSimpleMutexLock();
      if ([+[MXSessionManager systemSoundLocalVADID]== a1 sharedInstance]
      {
        if (!a3 || !qword_1EB75D170 || !CFEqual(a3, qword_1EB75D170) || *&dword_1EB75D180 != a5)
        {
          vaemSetDeviceVolume(a1, 0, a5);
          dword_1EB75D180 = LODWORD(a5);
          if (qword_1EB75D170)
          {
            CFRelease(qword_1EB75D170);
            qword_1EB75D170 = 0;
          }

          if (a3)
          {
            qword_1EB75D170 = CFRetain(a3);
          }
        }
      }

      else if ([+[MXSessionManager siriOutputVADID]== a1 sharedInstance]
      {
        vaemSetDeviceVolume(a1, 0, a5);
      }

      else if ([+[MXSessionManager musicVADID]!= a1 && (!a3 || !qword_1EB75D168 || !CFEqual(a3 sharedInstance]
      {
        vaemSetDeviceVolume(a1, v12, a5);
        dword_1EB75D17C = LODWORD(a5);
        if (qword_1EB75D168)
        {
          CFRelease(qword_1EB75D168);
          qword_1EB75D168 = 0;
        }

        if (a3)
        {
          qword_1EB75D168 = CFRetain(a3);
        }
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t vaemDeviceSupportsVolumeRamp(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v7 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled(a1, a2);
  if (result)
  {
    inAddress = *"pmrsptuo";
    result = AudioObjectHasProperty(v2, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v2, &inAddress, 0, 0, &ioDataSize, &inAddress + 12))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return 0;
      }

      else
      {
        return HIDWORD(inAddress) == 1;
      }
    }
  }

  return result;
}

uint64_t vaemSetDeviceVolume(uint64_t a1, AudioObjectPropertyElement a2, float a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v22 = 0x6F757470766F6C6DLL;
  v23 = a2;
  inAddress.mElement = a2;
  outData = 0;
  *&inAddress.mSelector = 0x6F7574707663656ELL;
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    goto LABEL_5;
  }

  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    v26 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v11 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  if (outData != 1)
  {
    v11 = 1;
  }

  else
  {
LABEL_5:
    if (dword_1EB75DE40)
    {
      inAddress.mSelector = 0;
      LOBYTE(outData) = 0;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      mSelector = inAddress.mSelector;
      v9 = outData;
      if (os_log_type_enabled(v7, outData))
      {
        v10 = mSelector;
      }

      else
      {
        v10 = mSelector & 0xFFFFFFFE;
      }

      if (v10)
      {
        v31 = 136315138;
        v32 = "vaemStartIgnoreOutputVolumeScalarChangesTimer";
        _os_log_send_and_compose_impl(v10, 0, v43, 128, &dword_1B17A2000, v7, v9, "-CMVAEndptMgr- %s: OutputVolumeChangeTimer : Starting a new timer; releasing the previous timer", &v31);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemCancelOutputVolumeChangeTimer();
    *&byte_1EB75D0B8 = 1;
    gVAEM = a1;
    dword_1EB75D0A8 = a2;
    dword_1EB75D0A4 = LODWORD(a3);
    qword_1EB75D0C0 = 0;
    v14 = MXGetSerialQueue(v12, v13);
    qword_1EB75D0B0 = MXDispatchUtilityCreateOneShotTimer("vaemStartIgnoreOutputVolumeScalarChangesTimer", "CMSessionManager_VAEndpointManager.m", 3831, 0, 0, v14, &__block_literal_global_81, 0, 1.0, 0);
    v11 = 0;
    if (!qword_1EB75D0B0)
    {
      byte_1EB75D0B8 = 0;
    }
  }

LABEL_15:
  if (dword_1EB75DE40)
  {
    inAddress.mSelector = 0;
    LOBYTE(outData) = 0;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = inAddress.mSelector;
    v17 = outData;
    if (os_log_type_enabled(v15, outData))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 0xFFFFFFFE;
    }

    if (v18)
    {
      VADNameForVADID = CMSMUtility_GetVADNameForVADID(a1);
      v31 = 136316418;
      v20 = @"YES";
      v32 = "vaemSetDeviceVolume";
      v33 = 2048;
      v34 = a3;
      v35 = 2114;
      if (v11)
      {
        v20 = @"NO";
      }

      v36 = VADNameForVADID;
      v37 = 1024;
      v38 = a1;
      v39 = 1024;
      v40 = a2;
      v41 = 2114;
      v42 = v20;
      _os_log_send_and_compose_impl(v18, 0, v43, 128, &dword_1B17A2000, v15, v17, "-CMVAEndptMgr- %s: Setting cmsvolume = %.3f for device UID: %{public}@ with ID: %d and port=%d and timerCreated = %{public}@", &v31, 54);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return CMSMVAUtility_AudioObjectSetPropertyData(a1, &v22, 0, 0, 4, &v24);
}

void CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload(CFTypeRef cf, uint64_t a2)
{
  v2 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v3 = MXGetNotificationSenderQueue(cf, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = v2;
  MXDispatchAsync("CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload", "CMSessionManager_NotificationUtilities.m", 286, 0, 0, v3, v4);
}

uint64_t CMSMNotificationUtility_PostVolumeDidChangeToAVSystemControllersWithPayload(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [MXSystemController notifyAll:@"SystemVolumeDidChange" payload:a1 dontPostIfSuspended:0];
}

void vaemUpdatePVMSettingsForInputGain()
{
  v12 = *MEMORY[0x1E69E9840];
  if (CMSMUtility_GetNumberOfCurrentInputPorts() != 1 && byte_1EB75D17B)
  {
    v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v8;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v8 != v3)
          {
            objc_enumerationMutation(v0);
          }

          v5 = *(*(&v7 + 1) + 8 * i);
          if (objc_msgSend_isActive(v5) && ([v5 currentlyControllingFlags] & 2) != 0 && objc_msgSend(v5, "desiredInputGainScalar"))
          {
            [objc_msgSend(v5 "desiredInputGainScalar")];
            vaemSetDeviceInputGainScalar(v6);

            return;
          }
        }

        v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

    vaemSetInputGainFromPreferenceIfPresent();
  }
}

void cmsSetDeviceSampleRateAndBufferSize(void *a1, uint64_t a2, uint64_t a3, double a4, float a5)
{
  v7 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    CurrentVADIDForInput = vaemGetCurrentVADIDForInput();
  }

  else
  {
    CurrentVADIDForInput = CMSUtility_GetCurrentOutputVADID(a1);
  }

  v11 = CurrentVADIDForInput;
  v40 = -1;
  v41 = 0;
  vaemGetDeviceFormatID(CurrentVADIDForInput, a3, &v41);
  if (v12)
  {
    v41 = 1819304813;
  }

  if (dword_1EB75DE40)
  {
    v42 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v42;
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
      v16 = [a1 clientName];
      if (a3 == 1)
      {
        v17 = "input";
      }

      else
      {
        v17 = "output";
      }

      VADNameForVADID = CMSMUtility_GetVADNameForVADID(v11);
      LODWORD(v43[0]) = 136317186;
      *(v43 + 4) = "cmsSetDeviceSampleRateAndBufferSize";
      WORD2(v43[1]) = 2114;
      *(&v43[1] + 6) = v16;
      HIWORD(v43[2]) = 2048;
      v43[3] = *&a4;
      LOWORD(v44[0]) = 1024;
      *(v44 + 2) = v7;
      HIWORD(v44[0]) = 2048;
      *&v44[1] = a5;
      v45 = 2082;
      v46 = v17;
      v47 = 1042;
      v48 = 4;
      v49 = 2082;
      v50 = &v41;
      v51 = 2114;
      v52 = VADNameForVADID;
      _os_log_send_and_compose_impl(v15, 0, &v53, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "-CMSessionMgr- %s: Client %{public}@ setting sampleRate = %.3f, bufferFrames = %d, bufferDuration = %.3f, scope = %{public}s device FormatID = %{public}.4s for %{public}@", v43, 84);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4 == 0.0)
  {
    a4 = 44100.0;
  }

  if (a1)
  {
    v19 = [a1 hasInput];
    if (a4 >= 22050.0)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    if (!v20)
    {
      a4 = 22050.0;
    }

    if (a3 == 1)
    {
      v21 = [a1 preferredNumberOfInputChannels];
    }

    else
    {
      v21 = [a1 preferredNumberOfOutputChannels];
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  FigSimpleMutexLock();
  *v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v39 = 0;
  if (vaemVADGetAvailableStreamFormats(&v39 + 1, &v39, v43))
  {
    a4 = 0.0;
  }

  v23 = HIBYTE(v39) | v39;
  v24 = v23 != 0;
  if (v23)
  {
    if (a3 == 1)
    {
      v25 = v44[0];
      v26 = &v44[1];
      v27 = v44[1];
    }

    else if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]) && CMSUtility_IsPlayingToSystemSoundRemoteVAD(a1))
    {
      v25 = v43[2];
      v26 = &v43[3];
      v27 = v43[3];
    }

    else
    {
      v25 = v43[0];
      v26 = &v43[1];
      v27 = v43[1];
    }

    v28 = vaemChooseBestSampleRateForFormat(v25, v27, v41, v22, &v40, a4);
    if (v40 == -1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v26;
    }

    if (v28 == 0.0)
    {
      a4 = 44100.0;
    }

    else
    {
      a4 = v28;
    }

    FigSimpleMutexUnlock();
    if (v40 == -1 || vaemGetNumberOfStreams(a3, 0, 0) >= 2)
    {
      if (vaemSetSampleRateForDevice(v11, a4))
      {
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v31 = &v29[56 * v40];
      *v31 = a4;
      v32 = *v31;
      v33 = *(v31 + 1);
      v55 = *(v31 + 4);
      v53 = v32;
      v54 = v33;
      if (!CMSMVAUtility_IsNewVirtualFormatRedundantForDeviceAndScope(v11, &v53, a3) && vaemSetVirtualFormatForScope(v11, &v29[56 * v40], a3))
      {
        goto LABEL_64;
      }
    }

    if (a1)
    {
      if (!a3)
      {
        if ([a1 preferredNumberOfInputChannels])
        {
          if ([a1 hasInput])
          {
            FigSimpleMutexLock();
            v40 = -1;
            vaemGetDeviceFormatID(v11, 1, &v41);
            a4 = vaemChooseBestSampleRateForFormat(v44[0], v44[1], v41, [a1 preferredNumberOfInputChannels], &v40, a4);
            FigSimpleMutexUnlock();
            if (v40 != -1)
            {
              v34 = v44[1];
              if (v44[1])
              {
                v35 = v44[1] + 56 * v40;
                *v35 = a4;
                v36 = *v35;
                v37 = *(v35 + 1);
                v55 = *(v35 + 4);
                v53 = v36;
                v54 = v37;
                if (!CMSMVAUtility_IsNewVirtualFormatRedundantForDeviceAndScope(v11, &v53, 1))
                {
                  if (vaemSetVirtualFormatForScope(v11, v34 + 56 * v40, 1))
                  {
                    goto LABEL_64;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v7)
  {
    if (!vaemSetDeviceBufferNumPCMFrames(v11, a3, v7))
    {
      goto LABEL_62;
    }

    v38 = 1;
  }

  else
  {
    v38 = a5 != 0.0;
  }

  vaemCalculateAndSetDeviceBufferDuration(v11, a3, 0, v38, a5, a4);
LABEL_62:
  if (!v24)
  {
    FigSimpleMutexUnlock();
  }

LABEL_64:
  if (v43[1])
  {
    free(v43[1]);
  }

  if (v43[3])
  {
    free(v43[3]);
  }

  if (v44[1])
  {
    free(v44[1]);
  }
}

uint64_t vaemVADGetAvailableStreamFormats(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (vaemGetStream0([+[MXSessionManager defaultVADID] sharedInstance])
  {
    v6 = 1;
  }

  else
  {
    v6 = outData == 0;
  }

  if (!v6)
  {
    v13 = vaemCopySupportedStreamFormats();
    if (a2 && !v13)
    {
      *a2 = 1;
    }
  }

  if ([+[MXSessionManager systemSoundRemoteVADID] sharedInstance]
  {
    if (!vaemGetStream0([+[MXSessionManager systemSoundRemoteVADID] sharedInstance]&& outData != 0)
    {
      v14 = vaemCopySupportedStreamFormats();
      if (a2 && !v14)
      {
        *a2 = 1;
      }
    }
  }

  CurrentVADIDForInput = vaemGetCurrentVADIDForInput();
  Stream0 = vaemGetStream0(CurrentVADIDForInput, 1, &outData);
  if (!Stream0)
  {
    if (outData)
    {
      v12 = vaemCopySupportedStreamFormats();
      Stream0 = v12;
      if (a1)
      {
        if (!v12)
        {
          *a1 = 1;
        }
      }
    }
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  return Stream0;
}

uint64_t vaemCopySupportedStreamFormats()
{
  OUTLINED_FUNCTION_7_1();
  PropertyDataSize = AudioObjectGetPropertyDataSize(v0, v1, v2, v3, v4);
  if (PropertyDataSize)
  {
    v7 = PropertyDataSize;
  }

  else
  {
    v7 = 0;
  }

  free(0);
  return v7;
}

uint64_t vaemGetCurrentVADIDForInput()
{
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID];
  v1 = +[MXSessionManager sharedInstance];
  if (v0)
  {

    return [(MXSessionManager *)v1 decoupledInputVADID];
  }

  else
  {
    v3 = [(MXSessionManager *)v1 speechDetectionVADID];
    v4 = +[MXSessionManager sharedInstance];
    if (v3)
    {

      return [(MXSessionManager *)v4 speechDetectionVADID];
    }

    else
    {

      return [(MXSessionManager *)v4 defaultVADID];
    }
  }
}

double vaemChooseBestSampleRateForFormat(int a1, uint64_t a2, int a3, int a4, _DWORD *a5, double a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = 0.0;
  if (!a2 || !a1)
  {
    goto LABEL_72;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = a2 + 28;
  v13 = 0.0;
  v7 = 1.0e12;
  v14 = 0.0;
  v15 = 0xFFFFFFFFLL;
  v16 = 0xFFFFFFFFLL;
  v17 = 0xFFFFFFFFLL;
  do
  {
    if (*(v12 - 20) != a3)
    {
      goto LABEL_56;
    }

    v18 = *(v12 + 12);
    v19 = v18 > a6;
    if (v18 <= a6)
    {
      v20 = *(v12 + 20);
      if (!v19 && v20 >= a6)
      {
        if (!a4)
        {
          goto LABEL_63;
        }

        if (v17 == 0xFFFFFFFFLL)
        {
LABEL_23:
          v17 = v8;
        }

        else
        {
          v25 = *(a2 + 56 * v17 + 28);
          v26 = *v12;
          if (v25 < a4 || v26 < a4)
          {
            if (v26 >= v25)
            {
              goto LABEL_23;
            }
          }

          else if (v26 <= v25)
          {
            goto LABEL_23;
          }
        }

        v9 = 1;
        v13 = a6;
        goto LABEL_56;
      }

      if (v14 > v20)
      {
        goto LABEL_56;
      }

      if (v15 == 0xFFFFFFFFLL)
      {
        v11 = 1;
        if (a4)
        {
          v15 = v8;
        }

        goto LABEL_49;
      }

      if (a4)
      {
        v28 = *(a2 + 56 * v15 + 28);
        v29 = *v12;
        if (v28 >= a4 && v29 >= a4)
        {
          if (v29 > v28)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        if (v29 >= v28)
        {
LABEL_47:
          v15 = v8;
        }
      }

LABEL_48:
      v11 = 1;
LABEL_49:
      v14 = *(v12 + 20);
      goto LABEL_56;
    }

    if (v7 < v18)
    {
      goto LABEL_56;
    }

    if (v16 == 0xFFFFFFFFLL)
    {
      if (a4)
      {
        v16 = v8;
      }

      v10 = 1;
      goto LABEL_55;
    }

    if (a4)
    {
      v22 = *(a2 + 56 * v16 + 28);
      v23 = *v12;
      if (v22 < a4 || v23 < a4)
      {
        if (v23 < v22)
        {
          goto LABEL_54;
        }

LABEL_53:
        v16 = v8;
        goto LABEL_54;
      }

      if (v23 <= v22)
      {
        goto LABEL_53;
      }
    }

LABEL_54:
    v10 = 1;
LABEL_55:
    v7 = *(v12 + 12);
LABEL_56:
    ++v8;
    v12 += 56;
  }

  while (a1 != v8);
  if (v9)
  {
    if (!a5 || (v31 = v17, v7 = a6, v17 == 0xFFFFFFFFLL))
    {
LABEL_63:
      v7 = a6;
      goto LABEL_72;
    }

LABEL_71:
    *a5 = v31;
  }

  else if (v10)
  {
    if (a5)
    {
      v31 = v16;
      if (v16 != 0xFFFFFFFFLL)
      {
        goto LABEL_71;
      }
    }
  }

  else if (v11)
  {
    if (a5)
    {
      v31 = v15;
      v7 = v14;
      if (v15 != 0xFFFFFFFFLL)
      {
        goto LABEL_71;
      }
    }

    v7 = v14;
  }

  else
  {
    v7 = v13;
  }

LABEL_72:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v7;
}

uint64_t vaemSetSampleRateForDevice(uint64_t a1, double a2)
{
  v9[22] = *MEMORY[0x1E69E9840];
  *v9 = a2;
  v7 = *"trsnbolg";
  v8 = 0;
  if (CMSMVAUtility_AudioObjectSetPropertyData(a1, &v7, 0, 0, 8, v9))
  {
    if ([+[MXSessionManager defaultVADID]== a1 sharedInstance]
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9[0] = 0x40E5888000000000;
    v4 = CMSMVAUtility_AudioObjectSetPropertyData(a1, &v7, 0, 0, 8, v9);
    if (v4 && [+[MXSessionManager defaultVADID]== a1 sharedInstance]
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v4 = 0;
  }

  [+[MXSessionManager sharedInstance](MXSessionManager updateDeviceSampleRate:"updateDeviceSampleRate:", a1];
  return v4;
}

uint64_t FigRouteDiscovererCopyUserSelectionAvailable(int a1, CFArrayRef theArray)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v3 = *MEMORY[0x1E695E4C0];
  v20 = *MEMORY[0x1E695E4C0];
  if ((a1 & 0xFFFFFFFE) == 2)
  {
    if (theArray && CFArrayGetCount(theArray) >= 2)
    {
      v4 = v18;
      v18[3] = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = *MEMORY[0x1E69626D8];
      if (!theArray)
      {
        goto LABEL_12;
      }

LABEL_11:
      for (i = CFArrayGetCount(theArray); v5 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, v7))
        {
          ++v6;
        }

        ++v5;
        if (theArray)
        {
          goto LABEL_11;
        }

LABEL_12:
        ;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __FigRouteDiscovererCopyUserSelectionAvailable_block_invoke;
      v16[3] = &unk_1E7AE7168;
      v16[4] = &v17;
      v16[5] = v6;
      FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v16);
      v4 = v18;
    }

    goto LABEL_24;
  }

  if (a1 == 8)
  {
    if (theArray)
    {
      if (CFArrayGetCount(theArray) > 1)
      {
        v3 = *MEMORY[0x1E695E4D0];
      }

      v4 = v18;
    }

    else
    {
      v4 = &v17;
    }

    v4[3] = v3;
    goto LABEL_24;
  }

  AirPlayEndpointManager = FigRoutingManagerInternalGetAirPlayEndpointManager();
  v4 = v18;
  if (!AirPlayEndpointManager)
  {
LABEL_24:
    v13 = v4[3];
    if (v13)
    {
      CFRetain(v13);
    }

    goto LABEL_26;
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, *MEMORY[0x1E69618B0], *MEMORY[0x1E695E480], v4 + 3);
  }

LABEL_26:
  v14 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v14;
}

void sub_1B180DC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

OpaqueFigEndpointManager *FigRoutingManagerGetEndpointManager(uint64_t a1)
{
  v2 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v2 getEndpointManagerForType:a1];
}

OpaqueFigEndpointManager *FigRoutingManagerInternalGetAirPlayEndpointManager()
{
  v0 = *MEMORY[0x1E69618D0];
  v1 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v1 getEndpointManagerForType:v0];
}

double vaemGetSampleRateForDevice(AudioObjectID a1)
{
  outData = 0.0;
  *&inAddress.mSelector = 0x676C6F626E737274;
  inAddress.mElement = 0;
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  result = outData;
  if (PropertyData)
  {
    return 0.0;
  }

  return result;
}

void __FigRouteDiscovererCopyUserSelectionAvailable_block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v2 = 0;
  if (qword_1EB75D478)
  {
    v3 = &qword_1EB75D560;
  }

  else
  {
    v3 = 240;
  }

  v16 = *MEMORY[0x1E69618B8];
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E695E4C0];
  v17 = *MEMORY[0x1E69618B0];
  v6 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    Count = *v3;
    if (*v3)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*v3, v2);
    Value = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey");
    v19 = 0;
    if (Value)
    {
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(CMBaseObject, v16, v4, &v19);
      }
    }

    if (FigCFEqual() || FigCFEqual())
    {
      cf = v5;
      v12 = FigEndpointManagerGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(v12, v17, v4, &cf);
      }

      v14 = FigCFEqual() != 0;
      if (cf)
      {
        CFRelease(cf);
      }

      v1 -= v14;
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (!v1)
    {
      *(*(*(a1 + 32) + 8) + 24) = v6;
      return;
    }

    ++v2;
  }
}

uint64_t vaemSetDeviceBufferNumPCMFrames(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = a3;
  v11 = 0;
  vaemGetDeviceBufferNumPCMFramesRange(a1, a2, &v12, &v11);
  if (!v6)
  {
    if (v12 > v3)
    {
      v13 = v12;
      v3 = v12;
    }

    if (v3 > v11)
    {
      v13 = v11;
      v3 = v11;
    }
  }

  if (vaemBufferFrameSizeShouldBeRestricted(a1, v4) && (v3 & 0x1F) != 0 && (v3 % 0x18 ? (v7 = v3 % 0x1E == 0) : (v7 = 1), !v7))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 4294954315;
  }

  else
  {
    if (v4 == 1)
    {
      v9 = 1768845428;
    }

    else
    {
      v9 = 1869968496;
    }

    v14[0] = 1718839674;
    v14[1] = v9;
    v14[2] = 0;
    CMSMVAUtility_AudioObjectSetPropertyData(a1, v14, 0, 0, 4, &v13);
    result = 0;
    byte_1EB75D185 = 0;
  }

  return result;
}

double vaemGetDeviceBufferNumPCMFramesRange(AudioObjectID a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v9 = 0.0;
  v10 = 0.0;
  if (a2 == 1)
  {
    v6 = 1768845428;
  }

  else
  {
    v6 = 1869968496;
  }

  inAddress.mSelector = 1718843939;
  inAddress.mScope = v6;
  inAddress.mElement = 0;
  ioDataSize = 16;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &v9))
  {
    result = v9;
    v8 = v10;
    *a3 = v9;
    *a4 = v8;
  }

  return result;
}

void vaemVADCurrentBufferFrameSizeListenerGuts_f(uint64_t a1, uint64_t a2)
{
  v2 = MXGetNotificationSenderQueue(a1, a2);

  MXDispatchAsync("vaemVADCurrentBufferFrameSizeListenerGuts_f", "CMSessionManager_VAEndpointManager.m", 5656, 0, 0, v2, &__block_literal_global_97);
}

uint64_t cmsmUpdateCurrentActiveRoutesInfo()
{
  FigSimpleMutexLock();
  if (!CMSMUtility_GetNumberOfCurrentOutputPorts())
  {
    v14 = 0;
    theArray = 0;
    v13 = 0;
    cmsmCopyCurrentActiveRoutesInfoForVADUID(0x1F2893B50, &theArray, &v14, &v13);
    if (theArray)
    {
      dword_1EB75E0C8 = CFArrayGetCount(theArray);
      if (dword_1EB75E0C8)
      {
        v0 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v0);
          if (FigCFEqual())
          {
            v2 = 0;
          }

          else
          {
            v2 = ValueAtIndex;
          }

          v3 = CFArrayGetValueAtIndex(v14, v0);
          if (FigCFEqual())
          {
            v4 = 0;
          }

          else
          {
            v4 = v3;
          }

          v5 = CFArrayGetValueAtIndex(v13, v0);
          if (FigCFEqual())
          {
            v6 = 0;
          }

          else
          {
            v6 = v5;
          }

          v8 = v2;
          v9 = v4;
          v10 = v6;
          v11 = 0;
          v12 = 0;
          MXVW_VectorCMSRouteInfoPushBack(qword_1EB75E0C0, &v8);
          ++v0;
        }

        while (v0 < dword_1EB75E0C8);
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    else
    {
      dword_1EB75E0C8 = 0;
    }

    if (v14)
    {
      CFRelease(v14);
      v14 = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  return FigSimpleMutexUnlock();
}

CFTypeRef CMSMUtility_GetCurrentRouteTypeAtIndex(uint64_t a1)
{
  FigSimpleMutexLock();
  if (dword_1EB75E0C8 <= a1)
  {
    v2 = 0;
  }

  else
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, cf);
    v2 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
      CFAutorelease(v2);
    }
  }

  FigSimpleMutexUnlock();
  return v2;
}

NSObject *MXDispatchUtilityCreateOneShotTimer(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, void *a8, double a9, uint64_t a10)
{
  v12 = objc_autoreleasePoolPush();
  v13 = objc_autoreleasePoolPush();
  if (CMSMDeviceState_IsAudiomxd(v13, v14))
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

  objc_autoreleasePoolPop(v13);
  objc_autoreleasePoolPop(v12);
  DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
  v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a6);
  v17 = dispatch_time(0, (a9 * 1000000000.0));
  dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_set_context(v16, a8);
  dispatch_source_set_event_handler(v16, DispatchSourceBlock);
  _Block_release(DispatchSourceBlock);
  if (a10)
  {
    v18 = FigDispatchCreateDispatchSourceBlock();
    dispatch_source_set_cancel_handler(v16, v18);
    _Block_release(v18);
  }

  dispatch_resume(v16);
  return v16;
}

uint64_t CMSMUtility_CopyActivePhoneCallInfo()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = *v9;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v9 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v8 + 1) + 8 * i);
        if (objc_msgSend_isActive(v4) && [v4 hasPhoneCallBehavior] && (objc_msgSend(v4, "isIDSMXCoreSession") & 1) == 0)
        {
          v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v4, "audioSessionID")}];
          v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v4, "clientPriority")}];
          v1 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"AudioSessionID", v6, @"ClientPriority", 0}];

          goto LABEL_13;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v1;
}

void *CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded()
{
  if (CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_onceToken != -1)
  {
    CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_cold_1();
  }

  v0 = CMSMUtility_CopyActivePhoneCallInfo();
  v1 = CMSMUtility_PhoneCallOrRingtoneExists();
  [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock lock];
  if (v0 && ![v0 isEqualToDictionary:CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfo])
  {
    [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock unlock];
    goto LABEL_9;
  }

  if (!CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfo)
  {
    [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock unlock];
    goto LABEL_11;
  }

  v2 = [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfo isEqualToDictionary:v0];
  [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock unlock];
  if ((v2 & 1) == 0)
  {
LABEL_9:
    v3 = [objc_msgSend(v0 objectForKey:{@"ClientPriority", "intValue"}] == 10;
    v4 = MEMORY[0x1E695DF20];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v0 != 0];
    +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"CallIsActiveDidChange", [v4 dictionaryWithObjectsAndKeys:{v5, @"CallActive", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v3), @"CallIsHighPriority", 0}], 0);
  }

LABEL_11:
  v6 = v1 != 0;
  if (CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sPhoneCallOrRingtoneExists != v6)
  {
    CMSMNotificationUtility_PostVoicePromptStyleDidChange();
  }

  [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock lock];

  CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfo = v0;
  result = [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock unlock];
  CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sPhoneCallOrRingtoneExists = v6;
  return result;
}

void CMSUtility_SendSessionVolumeToAudioStatistics(void *a1, uint64_t a2, const void *a3)
{
  v4 = a2;
  v7 = 0.0;
  if ([a1 displayID])
  {
    [a1 displayID];
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  }

  else
  {
    CStringPtrAndBufferToFree = 0;
  }

  CMSUtility_ComputePlaybackVolume(a1, &v7);
  CMSUtility_SendVolumeChangeEventToAudioStatistics(a1, CStringPtrAndBufferToFree, [a1 audioCategory], a3, v4, 0, v7);
  free(0);
}

void CMSUtility_SendVolumeChangeEventToAudioStatistics(void *a1, const char *a2, uint64_t a3, const void *a4, int a5, uint64_t a6, float a7)
{
  v14 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsActive, 0);
  v15 = v14;
  if (v14)
  {
    Count = CFArrayGetCount(v14);
  }

  else
  {
    Count = 0;
  }

  value = 0;
  v22 = 0;
  if (a1)
  {
    PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]), 0, &v22, 0);
  }

  PVMCopyVolumeCategoryAndMode([[MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:" sharedInstance:0];
  v17 = cmsutility_createVolumeChangeMessageForAudioStatistics(a2, value, a4, a5, a6, a7);
  if (a1 && objc_msgSend_isActive(a1) && FigCFEqual())
  {
    CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics(a1, v17, 0xEu, 5u, 1, a6);
  }

  else if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
      cf = 0;
      PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [ValueAtIndex audioCategory]), 0, &cf, 0);
      [ValueAtIndex displayID];
      FigCFDictionarySetValue();
      if ([ValueAtIndex audioCategory])
      {
        PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [ValueAtIndex audioCategory]), 0, &value, 0);
        CFDictionarySetValue(v17, @"MXSessionVolumeActiveSessionCategory", value);
      }

      CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics(ValueAtIndex, v17, 0xEu, 5u, 1, a6);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  if (v22)
  {
    CFRelease(v22);
    v22 = 0;
  }

  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

id PVMCopyVolumeCategoryAndMode(const __CFString *a1, const void *a2, void *a3, void *a4)
{
  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);

  return pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, a3, a4);
}

uint64_t FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemMusicContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemMusicContextUUID", "FigRoutingManagerContextUtilities.m", 4585, 0, 0, v4, v6);
  }

  return 0;
}

void CMSUtility_RouteToPreferredRouteIfRequired(id a1, unsigned int a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a3;
    LocalSessionPriority = CMSM_GetLocalSessionPriority(a1, 1);
    if (a2)
    {
      isActive = objc_msgSend_isActive(a1);
      v8 = isActive;
      if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(isActive, v9))
      {
        if (!v8)
        {
          return;
        }
      }

      else if (!v8 || ![a1 isPlaying])
      {
        return;
      }

      if (LocalSessionPriority <= a2)
      {
        return;
      }
    }

    IsTimerActive = FigPredictedRouting_IsTimerActive();
    if (!IsTimerActive || LocalSessionPriority != 501)
    {
      IsTimerActive = FigPredictedRouting_IsTimerActive();
      if (IsTimerActive)
      {
        if (!dword_1EB75DE40)
        {
          return;
        }

        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_32:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return;
      }
    }

    v13 = LocalSessionPriority != 100;
    if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(IsTimerActive, v11) && LocalSessionPriority != 100)
    {
      v14 = +[MXSessionManager sharedInstance];
      v15 = [a1 audioDestinationPriority];
      if (v15)
      {
        v16 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v15];
      }

      else
      {
        v16 = @"VirtualAudioDevice_Default";
      }

      v17 = [(MXSessionManager *)v14 copyHighestPriorityActiveSession:v16 deviceIdentifier:0];
      v13 = v17 == a1;
    }

    IsSessionRouteEligibleForTipi = CMSUtility_IsSessionRouteEligibleForTipi(a1);
    IsAnyRouteBTManagedAndInEar = CMSMVAUtility_IsAnyRouteBTManagedAndInEar();
    IsBluetoothSharingSessionEnabledForMediaPlayback = CMSUtility_IsBluetoothSharingSessionEnabledForMediaPlayback();
    if (!v13 || !CMSUtility_IsSessionEligibleToPlayOverSharedAudioRoute(a1, 1) || (v21 = [a1 doesntActuallyPlayAudio], v21) || !IsSessionRouteEligibleForTipi || !IsAnyRouteBTManagedAndInEar || IsBluetoothSharingSessionEnabledForMediaPlayback)
    {
      if (!dword_1EB75DE40)
      {
        return;
      }

      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      goto LABEL_32;
    }

    if ((MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(v21, v22) || [a1 shouldAttemptSmartRoutingHijackForMusicApp] && (v3 == 10 || v3 == 7)) && !CMSUtility_IsSessionPlayStateEligibleForTipi(a1, v23))
    {
      if (!dword_1EB75DE40)
      {
        return;
      }

      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      goto LABEL_32;
    }

    v26 = -[MXAudioAccessoryServices copyPreferredDeviceAddress:bundleID:isHypotheticalQuery:reason:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "copyPreferredDeviceAddress:bundleID:isHypotheticalQuery:reason:", LocalSessionPriority, [a1 displayID], 0, cmsutility_GetRouteToPreferredRouteRequestReasonString(v3));
    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    v28 = vaeCopyDeviceIdentifierFromVADPort(CurrentOutputPortAtIndex);
    if (MXCFStringHasCaseInsensitivePrefix(v28, v26))
    {
      if (dword_1EB75DE40)
      {
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMVAUtility_RouteToPreferredDeviceAddressIfInEar(v26);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }
}

uint64_t FigPredictedRouting_IsTimerActive()
{
  v3 = *MEMORY[0x1E69E9840];
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  FigSimpleMutexLock();
  if (gPRS_2)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v1 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

BOOL CMSUtility_IsSessionRouteEligibleForTipi(void *a1)
{
  v2 = [a1 allowedPortTypes];
  v3 = [a1 activationContext];
  v4 = [a1 prefersBluetoothHighQualityContentCapture];
  if (a1)
  {
    v5 = [a1 audioCategory];
    v6 = [a1 audioMode];
  }

  else
  {
    v5 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory];
    v6 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioMode];
  }

  v7 = v6;
  if (FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a1 routingContextUUID]))
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!CMSMDeviceState_RingerIsOn(1) && (FigCFEqual() || FigCFEqual() || FigCFEqual()))
  {
    v8 = CMSMUtility_GetCurrentOutputPortAtIndex(0) == 0;
    goto LABEL_6;
  }

  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v5);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v7);
  v12 = vaemCopyVADOutputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v3, v2, v4);
  v13 = v12;
  if (v12)
  {
    Count = CFArrayGetCount(v12);
  }

  else
  {
    Count = 0;
  }

  v15 = cmsmCopyWirelessPortsArrayForRouteConfiguration(v5, v7, v2, v4);
  v16 = v15;
  if (v15)
  {
    v17 = CFArrayGetCount(v15);
  }

  else
  {
    v17 = 0;
  }

  if (Count < 1)
  {
    v8 = 0;
    goto LABEL_38;
  }

  v27 = v7;
  v28 = v3;
  v29 = v2;
  v18 = 0;
  v30 = Count;
  v31 = v13;
  while (1)
  {
    PortAtIndex = CMSMVAUtility_GetPortAtIndex(v13, v18);
    PortTypeFromPortID = vaeGetPortTypeFromPortID(PortAtIndex);
    v21 = vaeCopyVADEndpointTypeForPort(PortAtIndex);
    if (PortTypeFromPortID == 1885565807 || PortTypeFromPortID == 1886613611 || PortTypeFromPortID == 1886545251)
    {
      v8 = 1;
      v3 = v28;
      v2 = v29;
      v7 = v27;
      if (!v21)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    cf = v21;
    if (FigCFEqual() && v17 >= 1)
    {
      v8 = 0;
      v22 = 1;
      do
      {
        v23 = CMSMVAUtility_GetPortAtIndex(v16, v22 - 1);
        v24 = vaeGetPortTypeFromPortID(v23);
        v25 = (PortAtIndex != v23) & [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices isPortManaged:"isPortManaged:", v23]& (PortTypeFromPortID == v24);
        if (v25)
        {
          v8 = 1;
        }

        if (v25)
        {
          break;
        }
      }

      while (v22++ < v17);
      Count = v30;
      v13 = v31;
      if (v8)
      {
        break;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (++v18 == Count)
    {
      v8 = 0;
      v3 = v28;
      v2 = v29;
      v7 = v27;
      goto LABEL_38;
    }
  }

  v3 = v28;
  v2 = v29;
  v7 = v27;
  v21 = cf;
  if (cf)
  {
LABEL_36:
    CFRelease(v21);
  }

LABEL_38:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_6:

  return v8;
}

CFMutableArrayRef CMSMVAUtility_CopyWirelessPortsSupportingMultipleConnections()
{
  v0 = CMSMVAUtility_CopyConnectedWirelessPorts();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        if (vaeDoesPortSupportMultipleConnections(valuePtr))
        {
          v6 = CFArrayGetValueAtIndex(v1, i);
          CFArrayAppendValue(Mutable, v6);
        }
      }
    }

    CFRelease(v1);
    return Mutable;
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(v8, 0, v9);
  }
}

__CFArray *CMSMVAUtility_CopyConnectedWirelessPorts()
{
  v0 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
  v1 = v0;
  if (!v0)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  Count = CFArrayGetCount(v0);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
      v6 = ValueAtIndex;
      if (ValueAtIndex)
      {
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        ValueAtIndex = valuePtr;
      }

      if (vaeGetConnectionTypeForPort(ValueAtIndex) == 1885544823)
      {
        CFArrayAppendValue(Mutable, v6);
      }
    }
  }

  if (Mutable)
  {
LABEL_12:
    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

LABEL_14:
  if (v1)
  {
    CFRelease(v1);
  }

  return Mutable;
}

uint64_t CMSMVAUtility_IsAnyRouteBTManagedAndInEar()
{
  v0 = CMSMVAUtility_CopyWirelessPortsSupportingMultipleConnections();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
LABEL_7:
    v7 = 0;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v6 = valuePtr;
      if ([+[MXAudioAccessoryServices isPortManaged:"isPortManaged:"]
      {
        if (CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(v6))
        {
          break;
        }
      }

      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }

    v7 = 1;
  }

  CFRelease(v1);
  return v7;
}

uint64_t vaeDoesPortSupportMultipleConnections(uint64_t result)
{
  if (result)
  {
    *&v1.mSelector = 0x676C6F626F736163;
    v1.mElement = 0;
    return AudioObjectHasProperty(result, &v1);
  }

  return result;
}

uint64_t CMSUtility_IsBluetoothSharingSessionEnabledForMediaPlayback()
{
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(@"Audio/Video");
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(@"Default");
  v2 = vaemCopyVADOutputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, 0, 0, 0);
  IsBluetoothSharingSessionEnabled = CMSMVAUtility_IsBluetoothSharingSessionEnabled(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return IsBluetoothSharingSessionEnabled;
}

__CFString *cmsutility_GetRouteToPreferredRouteRequestReasonString(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"Not defined yet";
  }

  else
  {
    return off_1E7AEC590[a1 - 1];
  }
}

uint64_t cmsmUpdateFakeSharedAudioRouteAsPicked(int a1, int a2, int a3, int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a2;
  FigSimpleMutexLock();
  v8 = word_1EB75E0E0;
  if (a2 == 1919184754)
  {
    LOBYTE(word_1EB75E0E0) = 1;
    FigSimpleMutexUnlock();
    if (v8 == 1)
    {
      return 0;
    }

    cmsmUpdateEnableSharedAudioRouteSyntheticMute(0, 0, 0, 0, 0, 1);
  }

  else
  {
    if (!word_1EB75E0E0 || !(a3 | a1 | a4))
    {
      FigSimpleMutexUnlock();
      return 0;
    }

    LOBYTE(word_1EB75E0E0) = 0;
    FigSimpleMutexUnlock();
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t cmsTryToTakeControl(id a1)
{
  v123 = *MEMORY[0x1E69E9840];
  v2 = [a1 hwControlFlags];
  v3 = [a1 hwControlFlags];
  v4 = -[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [a1 audioCategory]);
  v5 = [a1 dontTakeOverHardware];
  if (v4 || v5)
  {
    if (dword_1EB75DE40)
    {
      v110 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_90:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }

    return 0;
  }

  IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(v5, v6);
  if (IsAdditiveRoutingEnabled)
  {
    IsAdditiveRoutingEnabled = [a1 isRoutedToOnDemandVAD];
    if (IsAdditiveRoutingEnabled)
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_14;
      }

      return 0;
    }
  }

  if (CMSMDeviceState_HasMonoSpeakerConfiguration(IsAdditiveRoutingEnabled, v8) && dword_1EB75E118 && (FigCFArrayContainsValue() || FigCFArrayContainsValue()))
  {
    if (dword_1EB75DE40)
    {
LABEL_14:
      v110 = 0;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      goto LABEL_90;
    }

    return 0;
  }

  v11 = v2;
  v12 = v2 | HIWORD(v3);
  if ([a1 prefersToTakeHWControlFlagsFromAnotherSession])
  {
    v13 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v101 objects:v120 count:16];
    if (v14)
    {
      v15 = v14;
      v89 = v11;
      v95 = ~v11;
      v90 = ~v12;
      v91 = v3;
      v16 = *v102;
      v96 = v13;
      while (1)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v102 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v101 + 1) + 8 * i);
          [v18 setSavedCurrentlyControllingFlags:{objc_msgSend(v18, "currentlyControllingFlags")}];
          if (v18 != a1)
          {
            if (objc_msgSend_isActive(v18))
            {
              v19 = CMSMDeviceState_ItsAHomePod();
              if (!v19 || (CMSUtility_GetCurrentAudioDestination(a1), CMSUtility_GetCurrentAudioDestination(v18), v19 = FigCFEqual(), v19))
              {
                if (CMSMVAUtility_IsAdditiveRoutingEnabled(v19, v20) && [v18 isRoutedToOnDemandVAD])
                {
                  if (dword_1EB75DE40)
                  {
                    v21 = v12;
                    v110 = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v23 = v110;
                    v24 = type;
                    if (os_log_type_enabled(v22, type))
                    {
                      v25 = v23;
                    }

                    else
                    {
                      v25 = v23 & 0xFFFFFFFE;
                    }

                    if (v25)
                    {
                      v26 = [v18 clientName];
                      v27 = [a1 clientName];
                      v112 = 136315650;
                      v113 = "cmsTryToTakeControl";
                      v114 = 2114;
                      v115 = v26;
                      v116 = 2114;
                      *v117 = v27;
                      LODWORD(v86) = 32;
                      _os_log_send_and_compose_impl(v25, 0, v122, 128, &dword_1B17A2000, v22, v24, "-CMSessionMgr- %s: Session %{public}@ is routed to an on-demand VAD, letting %{public}@ keep their flags.", &v112, v86);
                    }

                    v12 = v21;
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v13 = v96;
                  }
                }

                else
                {
                  v28 = [v18 clientPriority];
                  if (v28 > [a1 clientPriority])
                  {
                    v12 = v12 & ~[v18 currentlyControllingFlags];
                    continue;
                  }

                  v29 = [v18 hwControlFlags];
                  v30 = [v18 isPlaying];
                  if (v30 && (v30 = [v18 mixesWithEveryone], (v30 & 1) == 0))
                  {
                    if (CMSUtility_AreSessionsRoutedToTheSamePhysicalDevice(a1, v18) || (CMSUtility_GetCurrentAudioDestination(v18), FigCFEqual()))
                    {
                      v36 = v12;
                      v37 = [v18 currentlyControllingFlags] & (v29 | v95);
                      if ([+[MXSessionManager canSessionsCoexistDueToMediaMultitasking:"canSessionsCoexistDueToMediaMultitasking:victim:"]
                      {
                        if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1) && !CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v18))
                        {
                          if (dword_1EB75DE40)
                          {
                            v110 = 0;
                            type = OS_LOG_TYPE_DEFAULT;
                            v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v52 = v110;
                            v94 = v51;
                            v88 = type;
                            if (os_log_type_enabled(v51, type))
                            {
                              v53 = v52;
                            }

                            else
                            {
                              v53 = v52 & 0xFFFFFFFE;
                            }

                            if (v53)
                            {
                              v54 = [a1 clientName];
                              v55 = [v18 clientName];
                              v112 = 136315650;
                              v113 = "cmsTryToTakeControl";
                              v114 = 2114;
                              v115 = v54;
                              v116 = 2114;
                              *v117 = v55;
                              LODWORD(v86) = 32;
                              _os_log_send_and_compose_impl(v53, 0, v122, 128, &dword_1B17A2000, v94, v88, "-CMSessionMgr- %s: Let Now Playable app %{public}@ take control flags from %{public}@ for media multitasking", &v112, v86);
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                          }

                          v37 &= v90;
                        }

                        else if (([v18 hasAudioTrack] & 1) == 0)
                        {
                          v38 = CMSMNP_CopyNowPlayingAppSession();
                          if (v38 != v18)
                          {
                            if (dword_1EB75DE40)
                            {
                              v110 = 0;
                              type = OS_LOG_TYPE_DEFAULT;
                              v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                              v40 = v110;
                              v92 = v39;
                              v87 = type;
                              v41 = os_log_type_enabled(v39, type);
                              LODWORD(v42) = v40 & 0xFFFFFFFE;
                              if (v41)
                              {
                                v42 = v40;
                              }

                              else
                              {
                                v42 = v42;
                              }

                              if (v42)
                              {
                                v43 = v42;
                                v44 = [v18 clientName];
                                v112 = 136315394;
                                v113 = "cmsTryToTakeControl";
                                v114 = 2114;
                                v115 = v44;
                                LODWORD(v86) = 22;
                                _os_log_send_and_compose_impl(v43, 0, v122, 128, &dword_1B17A2000, v92, v87, "-CMSessionMgr- %s: Victim %{public}@ is silent and not the Now Playing app, take its flags", &v112, v86);
                              }

                              fig_log_call_emit_and_clean_up_after_send_and_compose();
                            }

                            v37 &= v90;
                          }
                        }
                      }

                      v12 = v36 & ~v37;
                      goto LABEL_86;
                    }
                  }

                  else
                  {
                    v32 = CMSMUtility_GetSharePlayCapableActiveCallSession(v30, v31);
                    if (!v32 || v32 == a1 || CMSUtility_IsSharePlayCapableMediaSession(a1, v33) || !CMSUtility_IsSharePlayCapableMediaSession(v18, v34))
                    {
                      if ([v18 prefersToTakeHWControlFlagsFromAnotherSession])
                      {
                        v35 = [a1 clientPriority];
                        if (v35 <= [v18 clientPriority])
                        {
                          v12 = v12 & ~v29;
                        }

                        else
                        {
                          v12 = v12;
                        }
                      }

                      else
                      {
                        v12 = v29 | v12;
                      }

                      if (([v18 isPlaying] & 1) == 0)
                      {
                        if ([objc_msgSend(v18 "audioCategory")])
                        {
                          v12 = 0;
                        }

                        else
                        {
                          v12 = v12;
                        }
                      }

LABEL_86:
                      [v18 setCurrentlyControllingFlags:{objc_msgSend(v18, "currentlyControllingFlags") & ~v12}];
                      [v18 setMustRestoreCurrentlyControllingFlags:1];
                      continue;
                    }

                    if (dword_1EB75DE40)
                    {
                      v93 = v12;
                      v110 = 0;
                      type = OS_LOG_TYPE_DEFAULT;
                      v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v46 = v110;
                      v47 = type;
                      if (os_log_type_enabled(v45, type))
                      {
                        v48 = v46;
                      }

                      else
                      {
                        v48 = v46 & 0xFFFFFFFE;
                      }

                      if (v48)
                      {
                        v49 = [v18 clientName];
                        v50 = [a1 clientName];
                        v112 = 136315650;
                        v113 = "cmsTryToTakeControl";
                        v114 = 2114;
                        v115 = v49;
                        v116 = 2114;
                        *v117 = v50;
                        LODWORD(v86) = 32;
                        _os_log_send_and_compose_impl(v48, 0, v122, 128, &dword_1B17A2000, v45, v47, "-CMSessionMgr- %s: Active victim %{public}@ is SharePlay-capable media session and client %{public}@ is not SharePlay-capable media session; not taking volume flags", &v112, v86);
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      LODWORD(v12) = v93;
                    }

                    v12 = v12 & 0xFFFFFFEF;
                  }
                }
              }
            }

            else if ([v18 currentlyControllingFlags])
            {
              [v18 setCurrentlyControllingFlags:0];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v101 objects:v120 count:16];
        if (!v15)
        {
          goto LABEL_89;
        }
      }
    }
  }

  else
  {
    if (CMSMDeviceState_IsVoiceOverOn() || CMSystemSoundManager_GetNumberOfSystemSoundsPlayingAudio())
    {
      v12 = v2 & 0xFFEF | HIWORD(v3) & 0xFFFFFFEF;
    }

    v13 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v57 = [v13 countByEnumeratingWithState:&v105 objects:v121 count:16];
    if (v57)
    {
      v58 = v57;
      v89 = v2;
      v59 = *v106;
      v60 = (v3 & 0x100000 | v2 & 0x10) == 0;
      v91 = v3;
      v61 = (v3 & 0x20000 | v2 & 2) == 0;
LABEL_98:
      v62 = 0;
      while (1)
      {
        if (*v106 != v59)
        {
          objc_enumerationMutation(v13);
        }

        v63 = *(*(&v105 + 1) + 8 * v62);
        if (v63 != a1 && objc_msgSend_isActive(*(*(&v105 + 1) + 8 * v62)))
        {
          if ([v63 prefersToTakeHWControlFlagsFromAnotherSession])
          {
            if (([v63 hwControlFlags] & 2) != 0)
            {
              v12 = v12 & 0xFFFFFFFD;
            }

            else
            {
              v12 = v12;
            }
          }

          CMSUtility_GetCurrentAudioDestination(a1);
          CMSUtility_GetCurrentAudioDestination(v63);
          if (FigCFEqual())
          {
            if (([v63 currentlyControllingFlags] & 0x10) == 0 || v60)
            {
              v12 = v12;
            }

            else
            {
              v12 = v12 & 0xFFFFFFEF;
            }

            if (([v63 currentlyControllingFlags] & 2) != 0)
            {
              if (v61)
              {
                v12 = v12;
              }

              else
              {
                v12 = v12 & 0xFFFFFFFD;
              }
            }
          }

          else if (CMSMVAUtility_DoesCurrentOutputPortSupportSoftwareVolume())
          {
            v64 = [v63 currentlyControllingFlags] & 0x10;
            if ((v91 & 0x100000) == 0 || v64 == 0)
            {
              v12 = v12;
            }

            else
            {
              v12 = v12 & 0xFFFFFFEF;
            }
          }
        }

        if (!v12)
        {
          break;
        }

        if (v58 == ++v62)
        {
          v58 = [v13 countByEnumeratingWithState:&v105 objects:v121 count:16];
          if (v58)
          {
            goto LABEL_98;
          }

          break;
        }
      }

LABEL_89:
      v3 = v91;
      v11 = v89;
    }
  }

  if ((v11 & ~v12) != 0)
  {
    if (dword_1EB75DE40)
    {
      v110 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v67 = v110;
      v68 = type;
      if (os_log_type_enabled(v66, type))
      {
        v69 = v67;
      }

      else
      {
        v69 = v67 & 0xFFFFFFFE;
      }

      if (v69)
      {
        v70 = HIWORD(v3);
        v71 = [a1 clientName];
        FlagsString = CMSMUtility_GetFlagsString(v11);
        v73 = CMSMUtility_GetFlagsString(v70);
        v112 = 136316162;
        v113 = "cmsTryToTakeControl";
        v114 = 2114;
        v115 = v71;
        v116 = 1024;
        *v117 = v12;
        *&v117[4] = 2082;
        *&v117[6] = FlagsString;
        v118 = 2082;
        v119 = v73;
        LODWORD(v86) = 48;
        _os_log_send_and_compose_impl(v69, 0, v122, 128, &dword_1B17A2000, v66, v68, "-CMSessionMgr- %s: Session %{public}@ couldn't get all required flags. flagsToTake = 0x%x, RequiredFlags = %{public}s, DesiredFlags = %{public}s", &v112, v86);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v74 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v75 = [v74 countByEnumeratingWithState:&v97 objects:v111 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v98;
      do
      {
        for (j = 0; j != v76; ++j)
        {
          if (*v98 != v77)
          {
            objc_enumerationMutation(v74);
          }

          v79 = *(*(&v97 + 1) + 8 * j);
          if ([v79 mustRestoreCurrentlyControllingFlags])
          {
            [v79 setCurrentlyControllingFlags:{objc_msgSend(v79, "savedCurrentlyControllingFlags")}];
          }

          [v79 setSavedCurrentlyControllingFlags:0];
        }

        v76 = [v74 countByEnumeratingWithState:&v97 objects:v111 count:16];
      }

      while (v76);
    }

    v12 = 0;
  }

  IsPlayingToSystemSoundLocalVAD = [objc_msgSend(a1 "audioCategory")];
  if (IsPlayingToSystemSoundLocalVAD)
  {
    IsPlayingToSystemSoundLocalVAD = CMSUtility_IsPlayingToSystemSoundLocalVAD(a1);
    v82 = IsPlayingToSystemSoundLocalVAD != 0;
    if (v12)
    {
      goto LABEL_151;
    }
  }

  else
  {
    v82 = 0;
    if (v12)
    {
      goto LABEL_151;
    }
  }

  if (!v82)
  {
    if (MX_FeatureFlags_IsAudioFormatArbitrationEnabled(IsPlayingToSystemSoundLocalVAD, v81))
    {
      cmsmUpdateDeviceAudioFormatConfigIfNeeded(1);
    }

    goto LABEL_152;
  }

LABEL_151:
  cmsTakeControl(a1, v12);
LABEL_152:
  v83 = [a1 isSharePlayMediaSession];
  if (v83 && CMSMUtility_IsSharePlayCallSessionActive(v83, v84))
  {
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([a1 audioMode]);
    CMSMVAUtility_SetSharePlayMediaSessionInfoOnVA(VADModeFromFigModeName, [a1 aggregateDeviceClockUID]);
  }

  return v12;
}

void *CMSUtility_CopyActiveDuckerForSession(void *a1)
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
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      if (objc_msgSend_isActive(v7))
      {
        if ([v7 interruptionStyle] == 32 && CMSUtilityPredicate_ShouldDuck(v7, a1))
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

uint64_t MX_FeatureFlags_IsOffloadActivationOffACQEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsOffloadActivationOffACQEnabled_cold_1();
  }

  return MX_FeatureFlags_IsOffloadActivationOffACQEnabled_isOffloadActivationOffACQEnabled;
}

uint64_t MX_FeatureFlags_IsAsyncDuckingEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAsyncDuckingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAsyncDuckingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAsyncDuckingEnabled_isAsyncDuckingEnabled;
}

uint64_t CMSMUtility_SomeClientIsPlaying()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if ([v4 isPlaying] && !objc_msgSend(v4, "doesntActuallyPlayAudio"))
        {
          v1 = 1;
          goto LABEL_12;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v1;
}

void *CMSMNotificationUtility_PostSomeClientIsPlayingDidChange(void *result)
{
  v1 = result;
  if (!result)
  {
    result = CMSMUtility_SomeNonMixableClientIsPlaying();
    v1 = result;
  }

  if (CMSMNotificationUtility_PostSomeClientIsPlayingDidChange_cachedSomeClientIsPlaying != v1)
  {
    result = +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"SomeClientIsPlayingDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v1 != 0), @"IsPlaying", 0}], 0);
    CMSMNotificationUtility_PostSomeClientIsPlayingDidChange_cachedSomeClientIsPlaying = v1;
  }

  return result;
}

void CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange()
{
  if (CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_onceToken != -1)
  {
    CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_cold_1();
  }

  PlayingSessionsDescription = CMSMNotificationUtility_CreatePlayingSessionsDescription();
  v1 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{PlayingSessionsDescription, @"Sessions", 0}];

  [CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_sLastNotificationPayloadLock lock];
  if (([CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_sLastNotificationPayload isEqualToDictionary:v1] & 1) == 0)
  {
    [MXSystemController notifyAll:@"SomeSessionIsPlayingDidChange" payload:v1 dontPostIfSuspended:0];

    CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_sLastNotificationPayload = v1;
  }

  [CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_sLastNotificationPayloadLock unlock];
}

id CMSMNotificationUtility_CreatePlayingSessionsDescription()
{
  v29 = *MEMORY[0x1E69E9840];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v24;
    v15 = *v24;
    v16 = v0;
    do
    {
      v4 = 0;
      v18 = v2;
      do
      {
        if (*v24 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v23 + 1) + 8 * v4);
        if ([v5 isPlaying] && (objc_msgSend(v5, "hasAudioCategory:", @"SystemSoundsAndHaptics") & 1) == 0)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v5, "clientPID"), "unsignedIntValue")), @"ClientPID"}];
          [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(v5, "audioSessionID")), @"AudioSessionID"}];
          [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v5) != 0), @"IsNowPlayingEligible"}];
          v8 = [v5 copyMXSessionList];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v20;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v20 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v19 + 1) + 8 * i);
                if ([v13 getIsPlaying])
                {
                  [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", objc_msgSend(v13, "getID"))}];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v10);
          }

          if ([v7 count])
          {
            [v6 setObject:v7 forKey:@"MXSessionIDs"];
          }

          [v17 addObject:v6];

          v3 = v15;
          v0 = v16;
          v2 = v18;
        }

        ++v4;
      }

      while (v4 != v2);
      v2 = [v0 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v2);
  }

  return v17;
}

void predictedRouting_UpdatePredictedRoute(uint64_t a1, int IsSystemAudioRouteBuiltIn)
{
  v3 = a1;
  v110[16] = *MEMORY[0x1E69E9840];
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  v4 = [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices isAnyManagedDeviceConnected];
  if (v3 != 6)
  {
    IsSystemAudioRouteBuiltIn = FigRoutingManagerUtilities_IsSystemAudioRouteBuiltIn();
  }

  v5 = [+[MXSessionManager sharedInstance](MXSessionManager isSmartRoutingEligibleSessionAvailable];
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
  IsContextSystemMusicAndIndependent = FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(cf);
  v7 = &qword_1EB75D000;
  v78 = v4;
  if (v3 <= 6)
  {
    if (v3 > 4)
    {
      if (v3 != 5)
      {
        v9 = IsContextSystemMusicAndIndependent;
        if (predictedRouting_UpdatePredictedRoute_sCachedRouteIsBuiltIn == IsSystemAudioRouteBuiltIn)
        {
          v10 = 1;
        }

        else
        {
          predictedRouting_UpdatePredictedRoute_sCachedRouteIsBuiltIn = IsSystemAudioRouteBuiltIn;
          v10 = FigPredictedRouting_IsPreemptivePortChanged() != 0;
        }

        LOBYTE(v79) = predictedRouting_UpdatePredictedRoute_sSystemMusicIsIndependent != v9;
        if (predictedRouting_UpdatePredictedRoute_sSystemMusicIsIndependent == v9)
        {
          v11 = 0;
        }

        else
        {
          predictedRouting_UpdatePredictedRoute_sSystemMusicIsIndependent = v9;
          v11 = 1;
        }

        HIDWORD(v79) = v11;
        if (v10)
        {
          v8 = 0;
          goto LABEL_38;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v3 == 1)
    {
      if (predictedRouting_UpdatePredictedRoute_sCachedIsBTManagedPortPresent == v4)
      {
LABEL_21:
        v8 = 0;
        v79 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      LOBYTE(v79) = 0;
      HIDWORD(v79) = 0;
      v8 = 0;
      if (v3 != 2)
      {
        goto LABEL_31;
      }

      if (predictedRouting_UpdatePredictedRoute_sCachedIsBTManagedPortPresent == v4)
      {
        goto LABEL_29;
      }
    }

    predictedRouting_UpdatePredictedRoute_sCachedIsBTManagedPortPresent = v4;
LABEL_29:
    v79 = 0;
    v8 = 0;
    if (FigPredictedRouting_IsPreemptivePortChanged())
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if ((v3 - 8) < 3)
  {
    goto LABEL_29;
  }

  if (v3 == 7)
  {
    if (predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying == v5)
    {
      goto LABEL_21;
    }

    predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying = v5;
    goto LABEL_29;
  }

  LOBYTE(v79) = 0;
  HIDWORD(v79) = 0;
  v8 = 0;
  if (v3 == 11)
  {
LABEL_30:
    v8 = FigPredictedRouting_IsTimerActive() ^ 1;
  }

LABEL_31:
  if (v3 == 3)
  {
    *v83 = 0;
    v84 = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices copyPreferredDeviceAddress:"copyPreferredDeviceAddress:andPreemptivePortInfo:" andPreemptivePortInfo:v83, &v84];
    v13 = FigRoutingManagerCopyEndpointWithDeviceID(*v83, 0, *MEMORY[0x1E69618D8], 0);

    *v83 = 0;
    if (v13)
    {
      v14 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v13, 0);
      v15 = v14;
      v16 = &qword_1EB75D000;
      v17 = &qword_1EB75D000;
      if (v14)
      {
        CFRetain(v14);
        if (v12)
        {
          CFRelease(v12);
        }

        v12 = v15;
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v12 = v15;
          v16 = &qword_1EB75D000;
          v17 = &qword_1EB75D000;
        }
      }

      CFRelease(v13);
      if (!v84)
      {
        goto LABEL_77;
      }

      FigPredictedRouting_SetPreemptivePortChanged(1);
      if (v15)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v16 = &qword_1EB75D000;
      v17 = &qword_1EB75D000;
      if (!v84)
      {
LABEL_77:
        v22 = v12;

        goto LABEL_78;
      }

      FigPredictedRouting_SetPreemptivePortChanged(1);
    }

    v30 = [v84 objectForKey:@"RouteUID"];
    if (v30)
    {
      [(__CFDictionary *)v12 setObject:v30 forKey:@"RouteUID"];
    }

    v31 = [v84 objectForKey:@"RouteName"];
    if (v31)
    {
      [(__CFDictionary *)v12 setObject:v31 forKey:@"RouteName"];
    }

    v32 = [v84 objectForKey:@"RouteModel"];
    if (v32)
    {
      [(__CFDictionary *)v12 setObject:v32 forKey:@"RouteModel"];
    }

    v33 = [v84 objectForKey:@"BatteryLeft"];
    if (v33)
    {
      [(__CFDictionary *)v12 setObject:v33 forKey:@"BTDetails_BatteryLevelLeft"];
    }

    v34 = [v84 objectForKey:@"BatteryRight"];
    if (v34)
    {
      [(__CFDictionary *)v12 setObject:v34 forKey:@"BTDetails_BatteryLevelRight"];
    }

    [(__CFDictionary *)v12 setObject:@"HeadphonesBT" forKey:@"AudioRouteName"];
    goto LABEL_77;
  }

LABEL_38:
  if ((v3 - 11) <= 0xFFFFFFFD && v4 && IsSystemAudioRouteBuiltIn && v8)
  {
    v19 = +[MXAudioAccessoryServices sharedInstance];
    v20 = -[MXAudioAccessoryServices copyPreferredDeviceAddress:bundleID:isHypotheticalQuery:reason:](v19, "copyPreferredDeviceAddress:bundleID:isHypotheticalQuery:reason:", 301, 0, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Updating PredictedRoute because  of '%@' event", predictedRouting_getUpdatePredictedRouteReason(v3)]);
    v21 = CMSMVAUtility_CopyDeviceIDFromBTAddress(v20);
    v22 = FigRoutingManagerCopyEndpointWithDeviceID(v21, 0, *MEMORY[0x1E69618F8], 0);
    if (v22)
    {
      v110[0] = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v24)
      {
        v24(CMBaseObject, 0x1F289CDB0, *MEMORY[0x1E695E480], v110);
      }

      PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(v110[0]);
      ShouldBTPortBeTreatedAsInEar = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(PortFromCFNumber);
      if (ShouldBTPortBeTreatedAsInEar)
      {
        v27 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v22, 0);
      }

      else
      {
        v27 = 0;
      }

      predictedRouting_UpdatePredictedRoute_sCachedPreferredBTDeviceIsInEar = ShouldBTPortBeTreatedAsInEar;
      if (v110[0])
      {
        CFRelease(v110[0]);
      }

      CFRelease(v22);
      v16 = &qword_1EB75D000;
      v22 = v27;
      if (!v21)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v16 = &qword_1EB75D000;
      if (!v21)
      {
        goto LABEL_58;
      }
    }

    CFRelease(v21);
LABEL_58:

    v17 = &qword_1EB75D000;
LABEL_78:
    FigSimpleMutexLock();
    v8 = 1;
    goto LABEL_79;
  }

  FigSimpleMutexLock();
  if (v3 == 9)
  {
    v16 = &qword_1EB75D000;
    if (dword_1EB75DF20)
    {
      LODWORD(v84) = 0;
      v83[0] = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v17 = &qword_1EB75D000;
    if (gPRS_1)
    {
      CFRelease(gPRS_1);
      gPRS_1 = 0;
    }

    FigPredictedRouting_StartTimer(480.0);
    v22 = 0;
    v29 = 1;
    goto LABEL_94;
  }

  v22 = 0;
  v16 = &qword_1EB75D000;
  v17 = &qword_1EB75D000;
LABEL_79:
  if (v3 == 10)
  {
    if (*(v16 + 968))
    {
      v42 = IsSystemAudioRouteBuiltIn;
      v43 = v8;
      v44 = v22;
      LODWORD(v84) = 0;
      v83[0] = OS_LOG_TYPE_DEFAULT;
      v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v46 = v84;
      v47 = v83[0];
      if (os_log_type_enabled(v45, v83[0]))
      {
        v48 = v46;
      }

      else
      {
        v48 = v46 & 0xFFFFFFFE;
      }

      if (v48)
      {
        v86 = 136315138;
        v87 = "predictedRouting_UpdatePredictedRoute";
        _os_log_send_and_compose_impl(v48, 0, v110, 128, &dword_1B17A2000, v45, v47, "-FigPredictedRouting- %s: Predicted route was reset due to Smart Routing rejection answer.", &v86);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v17 = &qword_1EB75D000;
      v22 = v44;
      v8 = v43;
      IsSystemAudioRouteBuiltIn = v42;
    }

    v56 = v17[308];
    if (v56)
    {
      CFRelease(v56);
      v17[308] = 0;
    }

    v29 = 1;
    predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying = 1;
    goto LABEL_114;
  }

  if (v3 == 4)
  {
    if (*(v16 + 968))
    {
      v35 = IsSystemAudioRouteBuiltIn;
      v36 = v8;
      v37 = v22;
      LODWORD(v84) = 0;
      v83[0] = OS_LOG_TYPE_DEFAULT;
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v39 = v84;
      v40 = v83[0];
      if (os_log_type_enabled(v38, v83[0]))
      {
        v41 = v39;
      }

      else
      {
        v41 = v39 & 0xFFFFFFFE;
      }

      if (v41)
      {
        v86 = 136315138;
        v87 = "predictedRouting_UpdatePredictedRoute";
        _os_log_send_and_compose_impl(v41, 0, v110, 128, &dword_1B17A2000, v38, v40, "-FigPredictedRouting- %s: Predicted route was cancelled due to preemptive port disconnect.", &v86);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v17 = &qword_1EB75D000;
      v22 = v37;
      v8 = v36;
      IsSystemAudioRouteBuiltIn = v35;
    }

    FigPredictedRouting_StopPreemptivePortChangedTimer(1);
    v50 = v17[308];
    if (v50)
    {
      v7 = &qword_1EB75D000;
      if (!*(v16 + 968))
      {
        goto LABEL_116;
      }

      v51 = v8;
      v81 = v22;
      LODWORD(v84) = 0;
      v83[0] = OS_LOG_TYPE_DEFAULT;
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v53 = v84;
      v54 = v83[0];
      if (os_log_type_enabled(v52, v83[0]))
      {
        v55 = v53;
      }

      else
      {
        v55 = v53 & 0xFFFFFFFE;
      }

      if (v55)
      {
        v86 = 136315138;
        v87 = "predictedRouting_UpdatePredictedRoute";
        _os_log_send_and_compose_impl(v55, 0, v110, 128, &dword_1B17A2000, v52, v54, "-FigPredictedRouting- %s: Reset predicted route", &v86);
      }

      v8 = v51;
      v29 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v17 = &qword_1EB75D000;
      v50 = gPRS_1;
      v22 = v81;
      if (gPRS_1)
      {
LABEL_116:
        CFRelease(v50);
        v17[308] = 0;
        v29 = 1;
      }

      goto LABEL_117;
    }

    v29 = 0;
LABEL_114:
    v7 = &qword_1EB75D000;
    goto LABEL_117;
  }

  v29 = 0;
LABEL_94:
  if (!FigCFEqual() && v8)
  {
    v49 = v17[308];
    v17[308] = v22;
    if (v22)
    {
      CFRetain(v22);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    v8 = 1;
    v29 = 1;
    v16 = &qword_1EB75D000;
  }

LABEL_117:
  v82 = v22;
  if (FigCFDictionaryGetCount())
  {
    Value = CFDictionaryGetValue(v17[308], @"RouteName");
    v80 = CFDictionaryGetValue(v17[308], @"RouteUID");
    v58 = CFDictionaryGetValue(v17[308], @"RouteModel");
    if (v3 == 7 && (predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying & 1) != 0 && v8 && !*(v7 + 2483))
    {
      if (*(v16 + 968))
      {
        v59 = IsSystemAudioRouteBuiltIn;
        v60 = v7;
        LODWORD(v84) = 0;
        v83[0] = OS_LOG_TYPE_DEFAULT;
        v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v62 = v84;
        v63 = v83[0];
        if (os_log_type_enabled(v61, v83[0]))
        {
          v64 = v62;
        }

        else
        {
          v64 = v62 & 0xFFFFFFFE;
        }

        if (v64)
        {
          v86 = 136315651;
          v87 = "predictedRouting_UpdatePredictedRoute";
          v88 = 2114;
          v89 = Value;
          v90 = 2113;
          *v91 = v80;
          _os_log_send_and_compose_impl(v64, 0, v110, 128, &dword_1B17A2000, v61, v63, "-FigPredictedRouting- %s: Predicted route was set to predictedRouteName=%{public}@, predictedRouteUID=%{private}@, however session was started, reset predicted route till session stops.", &v86, 32);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v7 = v60;
        IsSystemAudioRouteBuiltIn = v59;
        v16 = &qword_1EB75D000;
        v17 = &qword_1EB75D000;
      }

      v65 = v17[308];
      if (v65)
      {
        CFRelease(v65);
        Value = 0;
        v80 = 0;
        v17[308] = 0;
      }

      else
      {
        Value = 0;
        v80 = 0;
      }

      v29 = 1;
    }
  }

  else
  {
    Value = 0;
    v80 = 0;
    v58 = 0;
  }

  FigSimpleMutexUnlock();
  if (*(v16 + 968))
  {
    v77 = v58;
    v66 = IsSystemAudioRouteBuiltIn;
    v67 = v7;
    LODWORD(v84) = 0;
    v83[0] = OS_LOG_TYPE_DEFAULT;
    v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v69 = v84;
    v70 = v83[0];
    if (os_log_type_enabled(v68, v83[0]))
    {
      v71 = v69;
    }

    else
    {
      v71 = v69 & 0xFFFFFFFE;
    }

    if (v71)
    {
      UpdatePredictedRouteReason = predictedRouting_getUpdatePredictedRouteReason(v3);
      v73 = *(v67 + 2483);
      v86 = 136318211;
      v87 = "predictedRouting_UpdatePredictedRoute";
      v88 = 2114;
      v89 = UpdatePredictedRouteReason;
      v90 = 1024;
      *v91 = v78;
      *&v91[4] = 1024;
      *&v91[6] = predictedRouting_UpdatePredictedRoute_sCachedPreferredBTDeviceIsInEar;
      v92 = 1024;
      v93 = v66;
      v94 = 1024;
      v95 = v8;
      v96 = 1024;
      v97 = predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying;
      v98 = 1024;
      v99 = v29;
      v100 = 1024;
      v101 = v73;
      v102 = 1024;
      v103 = HIDWORD(v79);
      v104 = 2114;
      v105 = Value;
      v106 = 2113;
      v107 = v80;
      v108 = 2114;
      v109 = v77;
      LODWORD(v76) = 100;
      _os_log_send_and_compose_impl(v71, 0, v110, 128, &dword_1B17A2000, v68, v70, "-FigPredictedRouting- %s: Called due to reason=%{public}@, isBTManagedPortPresent=%{BOOL}u, isBTManagedPortInEar=%{BOOL}u, routeIsBuiltIn=%{BOOL}u, predictedRouteConditionChanged=%{BOOL}u, cachedSessionIsPlaying=%{BOOL}u, predictedRouteChanged=%{BOOL}u, sSystemMusicIsIndependent=%{BOOL}u, predictedRouteChangedForSystemMusic=%{BOOL}u, predictedRouteName=%{public}@, predictedRouteUID=%{private}@, predictedModelID=%{public}@", &v86, v76);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = v67;
  }

  v110[0] = 0;
  p_cf = v110;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(v110);
  if (v29)
  {
    goto LABEL_146;
  }

  v75 = v79 ^ 1;
  if (!*(v7 + 2483))
  {
    v75 = 1;
  }

  if ((v75 & 1) == 0)
  {
    p_cf = &cf;
LABEL_146:
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(*p_cf, @"predictedSelectedRouteDescriptorChanged", 0);
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

  if (v82)
  {
    CFRelease(v82);
  }
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRouteBuiltIn()
{
  v7 = 0;
  theArray = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v7);
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(v7, &theArray);
  if (!theArray)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (CFArrayGetCount(theArray) == 1)
  {
    cf = 0;
    if (CFArrayGetValueAtIndex(theArray, 0))
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v1)
      {
        v1(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &cf);
        v2 = cf;
      }

      else
      {
        v2 = 0;
      }

      PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(v2);
      v3 = 1;
      if (PortFromCFNumber == 1886613611 || PortFromCFNumber == 1886545251)
      {
LABEL_14:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_16;
      }

      if (!PortFromCFNumber)
      {
        v3 = CMSMDeviceState_RingerIsOn(1) == 0;
        goto LABEL_14;
      }
    }

    v3 = 0;
    goto LABEL_14;
  }

  v3 = 0;
LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

LABEL_18:
  if (v7)
  {
    CFRelease(v7);
  }

  return v3;
}

__CFString *predictedRouting_getUpdatePredictedRouteReason(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) < 0xA)
  {
    return off_1E7AEB3F0[a1 - 1];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

BOOL CMSUtility_IsSessionOnlyPlayingLocally(void *a1)
{
  if (!CMSMDeviceState_IsHomePodHub())
  {
    IsPlayingToDefaultVAD = CMSUtility_IsPlayingToDefaultVAD(a1);
    return IsPlayingToDefaultVAD != 0;
  }

  if ([a1 shadowingAudioSessionID])
  {
    return 0;
  }

  if (!FigRoutingManagerContextUtilities_IsOnlyRoutedToSelf([a1 routingContextUUID]))
  {
    IsPlayingToDefaultVAD = FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalAirPlayEndpoint([a1 routingContextUUID]);
    return IsPlayingToDefaultVAD != 0;
  }

  return 1;
}

void CMScreenHandleIdleEvent(int a1, int a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {
    return;
  }

  v19 = 0;
  v20 = 0;
  FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&v19);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v19, 0, &cf);
  if (cf)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69622F8], *MEMORY[0x1E695E480], &v20);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (FigCFEqual() || !FigCFEqual())
  {
    if (v20)
    {
      CFRelease(v20);
    }

    return;
  }

  IsPlayingToAirPlay = v20;
  if (v20)
  {
    CFRelease(v20);
  }

  if (a1 != 100)
  {
    if (a1 != 101)
    {
      return;
    }

    if (a3 == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  if (!a3)
  {
LABEL_32:
    CMSMAP_StopDisconnectAirPlayScreenTimer(IsPlayingToAirPlay, v7);
    return;
  }

  IsPlayingToAirPlay = CMSMUtility_SomeClientIsPlayingToAirPlay();
  if (!IsPlayingToAirPlay)
  {
LABEL_22:
    if (cmscreenIsTetheredDemoModeOn_onceToken != -1)
    {
      CMScreenHandleIdleEvent_cold_1();
    }

    if (dword_1EB75DE40)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v22;
      v11 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = @"YES";
        if (!cmscreenIsTetheredDemoModeOn_isThetheredDemoModeOn)
        {
          v13 = @"NO";
        }

        v23 = 136315394;
        v24 = "cmscreenIsTetheredDemoModeOn";
        v25 = 2114;
        v26 = v13;
        _os_log_send_and_compose_impl(v12, 0, v27, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v11, "---CMScreen--- %s: Tethered demo mode enabled = %{public}@", &v23, 22, cf, v19);
      }

      IsPlayingToAirPlay = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cmscreenIsTetheredDemoModeOn_isThetheredDemoModeOn)
    {
      if (dword_1EB75DE40)
      {
        v22 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = v22;
        v16 = type;
        if (os_log_type_enabled(v14, type))
        {
          v17 = v15;
        }

        else
        {
          v17 = v15 & 0xFFFFFFFE;
        }

        if (v17)
        {
          v23 = 136315138;
          v24 = "CMScreenHandleIdleEvent";
          _os_log_send_and_compose_impl(v17, 0, v27, 128, &dword_1B17A2000, v14, v16, "---CMScreen--- %s: Defaults write for TetheredDemoMode are on, do not start idle timer", &v23);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      CMSMAP_StartDisconnectAirPlayScreenTimer(IsPlayingToAirPlay, v7, 60.0);
    }
  }
}

uint64_t FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID", "FigRoutingManagerContextUtilities.m", 4642, 0, 0, v4, v6);
  }

  return 0;
}

void CMSMSleep_HandleIdleSleep(void *a1, char a2)
{
  if (a1)
  {
    v4 = a1;
    v6 = MXGetSerialQueue(v4, v5);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CMSMSleep_HandleIdleSleep_block_invoke;
    v7[3] = &unk_1E7AEADD8;
    v7[4] = a1;
    v8 = a2;
    MXDispatchAsync("CMSMSleep_HandleIdleSleep", "CMSessionManager_Sleep.m", 217, 0, 0, v6, v7);
  }
}

uint64_t MXGetAssertionLog(uint64_t a1, uint64_t a2)
{
  if (MXGetAssertionLog_onceToken != -1)
  {
    MXGetAssertionLog_cold_1();
  }

  return MXGetAssertionLog__log;
}

uint64_t MX_FeatureFlags_IsAssertionActivityReportingEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAssertionActivityReportingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAssertionActivityReportingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAssertionActivityReportingEnabled_sAssertionActivityReportingEnabled;
}

void CMSMSleep_FetchPlaybackProcessAssertionsForHostProcesses(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1 && [a1 playbackAssertionRef])
  {
    v2 = [objc_msgSend(a1 "hostProcessPlaybackAssertions")];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [a1 parentProcessAuditTokens];
    v18 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v18)
    {
      goto LABEL_21;
    }

    alloc = *MEMORY[0x1E695E480];
    v17 = *v21;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v20 + 1) + 8 * i);
        memset(&buffer, 0, sizeof(buffer));
        v27.location = 0;
        v27.length = 32;
        CFDataGetBytes(v4, v27, &buffer);
        atoken = buffer;
        v5 = audit_token_to_pid(&atoken);
        v6 = [a1 displayID];
        ClientName = CMSUtility_GetClientName(a1, v7);
        v9 = CFStringCreateWithFormat(alloc, 0, @"MediaExperience.%d.%@.%@.%@.isPlayingProcessAssertionForHost", v5, v6, ClientName, [a1 audioCategory]);
        v10 = [v2 objectForKey:v4];
        if (v10 && MX_RunningBoardServices_IsAssertionValid(v10))
        {
          if (!dword_1EB75DE40)
          {
            goto LABEL_17;
          }

          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          goto LABEL_16;
        }

        PlaybackProcessAssertionForPID = MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID(v5, v9);
        [v2 setObject:PlaybackProcessAssertionForPID forKey:v4];
        if (PlaybackProcessAssertionForPID)
        {
          CFRelease(PlaybackProcessAssertionForPID);
        }

        if (dword_1EB75DE40)
        {
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
LABEL_16:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_17:
        if (v9)
        {
          CFRelease(v9);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v18)
      {
LABEL_21:
        [a1 setHostProcessPlaybackAssertions:v2];

        return;
      }
    }
  }

  v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void CMSUtility_UpdateBTLowLatencyMode()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopyCurrentRouteTypes();
  v1 = FigCFArrayContainsValue();
  if (!v1)
  {
    CMSUtility_UpdateBTLowLatencyMode_currentBTLowLatencyMode = 0;
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    valuePtr = 0;
    FigSimpleMutexLock();
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v15;
      while (1)
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          if ([v8 isPlaying] && (objc_msgSend(v8, "doesntActuallyPlayAudio") & 1) == 0)
          {
            [v8 audioCategory];
            if (FigCFEqual())
            {
              v5 = 2;
LABEL_17:
              valuePtr = v5;
              goto LABEL_18;
            }

            if (byte_1EB75E1B8)
            {
              v5 = 3;
              goto LABEL_17;
            }

            if (([v8 isSharePlayCallSession] & 1) != 0 || objc_msgSend(v8, "isSharePlayMediaSession"))
            {
              v5 = 8;
              valuePtr = 8;
              goto LABEL_27;
            }
          }

LABEL_18:
          ++v7;
        }

        while (v4 != v7);
        v9 = [v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
        v4 = v9;
        if (!v9)
        {
          goto LABEL_27;
        }
      }
    }

    v5 = 0;
LABEL_27:

    FigSimpleMutexUnlock();
    if (v5 != CMSUtility_UpdateBTLowLatencyMode_currentBTLowLatencyMode)
    {
      v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_UpdateBTLowLatencyMode_currentBTLowLatencyMode = valuePtr;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(CMBaseObject, 0x1F289B7D0, v10);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }
}

void cmsUpdateMuteStatus(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    ShouldSilentMute = CMSUtility_ShouldSilentMute(a1);
    DictionaryForMuteStatusUpdate = CMSMUtility_CreateDictionaryForMuteStatusUpdate(a1, ShouldSilentMute);
    if (DictionaryForMuteStatusUpdate)
    {
      v5 = DictionaryForMuteStatusUpdate;
      CFArrayAppendValue(Mutable, DictionaryForMuteStatusUpdate);
      CFRelease(v5);
    }

    if (!Mutable)
    {
      return;
    }

LABEL_16:
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"session");
        FigCFDictionaryGetInt32IfPresent();
        v18 = CMSUtility_CopyFadeDuration(a1, 0, 0);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(Value, 0, 0, 0, 0, v18, 0, 0);
        if (v18)
        {
          CFRelease(v18);
        }
      }
    }

    CFRelease(Mutable);
    return;
  }

  v6 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * j);
        v12 = CMSUtility_ShouldSilentMute(v11);
        v13 = CMSMUtility_CreateDictionaryForMuteStatusUpdate(v11, v12);
        if (v13)
        {
          v14 = v13;
          CFArrayAppendValue(Mutable, v13);
          CFRelease(v14);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  if (Mutable)
  {
    goto LABEL_16;
  }
}

uint64_t CMSUtility_ShouldSilentMute(void *a1)
{
  if (CMSMUtility_GetNumberOfCurrentOutputPorts() != 1)
  {
    return 0;
  }

  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  result = [+[MXSessionManager sharedInstance](MXSessionManager isCurrentPortTypeMuteable:"isCurrentPortTypeMuteable:", vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex)];
  if (result)
  {
    result = CMSUtility_IsMuteable(a1);
    if (result)
    {
      result = objc_msgSend_isActive(a1);
      if (result)
      {
        return HIBYTE(word_1EB75E0E0) || CMSMDeviceState_RingerIsOn(1) == 0;
      }
    }
  }

  return result;
}

uint64_t CMSUtility_IsMuteable(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (-[MXSessionManager isAudioCategoryMuteable:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAudioCategoryMuteable:", [result audioCategory]))
    {
      return 1;
    }

    else
    {
      return [v1 mutesAudioBasedOnRingerSwitchState];
    }
  }

  return result;
}

__CFDictionary *CMSMUtility_CreateDictionaryForMuteStatusUpdate(void *a1, int a2)
{
  if ([a1 silentMuted] == a2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = [a1 silentMuted];
    if (a2)
    {
      if (v5)
      {
        return Mutable;
      }
    }

    else if (!v5)
    {
      return Mutable;
    }

    [a1 setSilentMuted:a2 != 0];
    CFDictionarySetValue(Mutable, @"session", a1);
    FigCFDictionarySetInt32();
  }

  return Mutable;
}

void __vaemPostAvailableEndpointsChangedNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (*(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v2 = qword_1EB75E090;

  CFRelease(v2);
}

uint64_t CMSMUtility_SomeNonMixableClientIsPlaying()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if ([v4 isPlaying] && (objc_msgSend(v4, "doesntActuallyPlayAudio") & 1) == 0 && !objc_msgSend(v4, "mixesWithEveryone"))
        {
          v1 = 1;
          goto LABEL_13;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v1;
}

uint64_t FigPredictedRouting_UnmuteSessionIfMutedByPreemptivePortChange()
{
  result = FigPredictedRouting_IsPreemptivePortLogicEnabled();
  if (result)
  {
    v1 = +[MXSessionManager sharedInstance];
    v2 = gPRS_3;

    return [(MXSessionManager *)v1 unduckSessionsForDuckingSource:v2];
  }

  return result;
}

void CMSMSleep_ReleasePlaybackProcessAssertion(void *result)
{
  if (result)
  {
    MX_RunningBoardServices_InvalidateAssertion([result playbackAssertionRef]);
    [result setPlaybackAssertionRef:0];
    if ([result isMemberOfClass:objc_opt_class()])
    {
      v2 = [result parentProcessAuditTokens];

      CMSMSleep_ReleasePlaybackProcessAssertionsForHostProcesses(result, v2);
    }
  }
}

void MX_RunningBoardServices_InvalidateAssertion(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (mx_runningBoardServices_initializeGlobalAssertionProperties_onceToken != -1)
    {
      MX_RunningBoardServices_InvalidateAssertion_cold_1();
    }

    v2 = objc_autoreleasePoolPush();
    FigSimpleMutexLock();
    if (CFArrayGetCount(gProcessAssertionArray) >= 1)
    {
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(gProcessAssertionArray, v3);
        if (ValueAtIndex == a1)
        {
          break;
        }

        if (++v3 >= CFArrayGetCount(gProcessAssertionArray))
        {
          goto LABEL_17;
        }
      }

      v5 = ValueAtIndex;
      if (gHostProcessAssertionDictionary && CFDictionaryContainsKey(gHostProcessAssertionDictionary, ValueAtIndex))
      {
        Value = CFDictionaryGetValue(gHostProcessAssertionDictionary, v5);
        v7 = [Value invalidate];
        v9 = MXGetAssertionLog(v7, v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v17 = "-MX_RunningBoardServices-";
          v18 = 2082;
          v16 = 136447234;
          v19 = "MX_RunningBoardServices_InvalidateAssertion";
          v20 = 1024;
          v21 = 904;
          v22 = 2048;
          v23 = Value;
          v24 = 2114;
          v25 = [Value explanation];
          _os_log_impl(&dword_1B17A2000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalidated host process assertion %p explanation %{public}@", &v16, 0x30u);
        }

        CFDictionaryRemoveValue(gHostProcessAssertionDictionary, v5);
      }

      v10 = +[MXAudioStatistics sharedInstance];
      v11 = [a1 explanation];
      v12 = [(MXAudioStatistics *)v10 sendSinglePerformanceMessageForAssertion:"MX_RunningBoardServices_InvalidateAssertion" explanation:v11 activity:kMXAudioStatistics_AssertionActivity_AssertionInvalidated];
      v14 = MXGetAssertionLog(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [a1 explanation];
        v16 = 136447234;
        v17 = "-MX_RunningBoardServices-";
        v18 = 2082;
        v19 = "MX_RunningBoardServices_InvalidateAssertion";
        v20 = 1024;
        v21 = 911;
        v22 = 2048;
        v23 = a1;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&dword_1B17A2000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalidated assertion %p explanation %{public}@", &v16, 0x30u);
      }

      [a1 invalidate];
      CFArrayRemoveValueAtIndex(gProcessAssertionArray, v3);
    }

LABEL_17:
    FigSimpleMutexUnlock();
    objc_autoreleasePoolPop(v2);
  }
}

void CMSMSleep_ReleasePlaybackProcessAssertionsForHostProcesses(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [objc_msgSend(a1 "hostProcessPlaybackAssertions")];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v13 = [a2 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v13)
    {
      v4 = *v16;
      v12 = v3;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v16 != v4)
          {
            objc_enumerationMutation(a2);
          }

          v6 = *(*(&v15 + 1) + 8 * i);
          memset(&buffer, 0, sizeof(buffer));
          v22.location = 0;
          v22.length = 32;
          CFDataGetBytes(v6, v22, &buffer);
          atoken = buffer;
          audit_token_to_pid(&atoken);
          v7 = [v3 objectForKey:v6];
          if (v7)
          {
            v8 = v7;
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v3 = v12;
            }

            MX_RunningBoardServices_InvalidateAssertion(v8);
            [v3 removeObjectForKey:v6];
          }

          else if (dword_1EB75DE40)
          {
            v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v13 = [a2 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v13);
    }

    [a1 setHostProcessPlaybackAssertions:v3];
  }
}

void cmsmScreenIsBlankedChangedCallback(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = MXGetSerialQueue(a1, a2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __cmsmScreenIsBlankedChangedCallback_block_invoke;
  v5[3] = &__block_descriptor_34_e5_v8__0l;
  v6 = v3;
  v7 = v2;
  MXDispatchAsync("cmsmScreenIsBlankedChangedCallback", "CMSessionManager.m", 18228, 0, 0, v4, v5);
}

void __cmsmScreenIsBlankedChangedCallback_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  IsBlanked = CMSMUtility_ShouldEnableLongPullModeWhenScreenIsBlanked();
  CMScreenHandleIdleEvent(100, *(a1 + 32), *(a1 + 33));
  if (*(a1 + 33))
  {
    goto LABEL_8;
  }

  if (IsBlanked || FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B7F0))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemCalculateAndSetDeviceBufferDuration([[MXSessionManager defaultVADID] sharedInstance:1];
  }

  v4 = dispatch_time(0, 1000000000);
  v6 = MXGetSerialQueue(v4, v5);
  dispatch_after(v4, v6, &__block_literal_global_357);
  if (*(a1 + 33))
  {
LABEL_8:
    v7 = CMSystemSoundMgr_DeactivateAllSystemSounds();
  }

  else
  {
    CMSystemSoundMgr_ActivateAllSystemSounds();
  }

  if (*(a1 + 33) && IsBlanked)
  {
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemCalculateAndSetDeviceBufferDuration([+[MXSessionManager defaultVADID:v7]], 0, 1, 0, 0.0, 0.0);
  }
}

uint64_t CMSMUtility_ShouldEnableLongPullModeWhenScreenIsBlanked()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v12;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        if (objc_msgSend_isActive(v5))
        {
          PreferredIOBufferDuration = CMSUtility_GetPreferredIOBufferDuration(v5, v6);
          if (*&PreferredIOBufferDuration != 0.0 || CMSUtility_GetPreferredIOBufferFrames(v5, v7) || [v5 vpBlockConfiguration] && (objc_msgSend(v5, "isRecording") & 1) != 0)
          {
            v9 = 0;
            goto LABEL_15;
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_15:

  return v9;
}

void vaemCalculateAndSetDeviceBufferDuration(uint64_t a1, uint64_t a2, int a3, int a4, float DefaultBufferDuration, double SampleRateForDevice)
{
  v32 = *MEMORY[0x1E69E9840];
  LongBufferDuration = CMSMUtility_GetLongBufferDuration();
  if (DefaultBufferDuration == 0.0)
  {
    v15 = LongBufferDuration;
    if (!CMSMDeviceState_ScreenIsBlanked() || v15 == 0.0 || (dword_1EB75E168 != 0) | (a4 | byte_1EB75D190))
    {
      DefaultBufferDuration = cmsmGetDefaultBufferDuration();
      v16 = 0;
    }

    else
    {
      v16 = 1;
      DefaultBufferDuration = v15;
    }
  }

  else
  {
    IsHangsBufferedSizeHintEnabled = MX_FeatureFlags_IsHangsBufferedSizeHintEnabled(v12, v13);
    v16 = 0;
    if (a4 && IsHangsBufferedSizeHintEnabled)
    {
      if (a2 == 1)
      {
        v18 = 1768845428;
      }

      else
      {
        v18 = 1869968496;
      }

      v31[0] = 1651861092;
      v31[1] = v18;
      v31[2] = 0;
      *v30 = DefaultBufferDuration;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (CMSMVAUtility_AudioObjectSetPropertyData(a1, v31, 0, 0, 8, v30))
      {
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v16 = 0;
      goto LABEL_33;
    }
  }

  if (SampleRateForDevice == 0.0)
  {
    SampleRateForDevice = vaemGetSampleRateForDevice(a1);
  }

  if (SampleRateForDevice != 0.0 && DefaultBufferDuration != 0.0)
  {
    v20 = SampleRateForDevice * DefaultBufferDuration;
    v21 = v20;
    v22 = FigUInt32NearestPowerOfTwo();
    v23 = v22;
    if (dword_1EB75DE40)
    {
      v29 = v22;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v23 = v29;
    }

    if (a3)
    {
      vaemSetDeviceBufferNumPCMFramesQuiet(a1, a2, v23);
    }

    else
    {
      if (a4)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23;
      }

      v26 = vaemSetDeviceBufferNumPCMFrames(a1, a2, v25);
      if (a4 && v26)
      {
        if (dword_1EB75DE40)
        {
          v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        vaemSetDeviceBufferNumPCMFrames(a1, a2, v23);
      }
    }

LABEL_33:
    byte_1EB75D185 = v16;
  }
}

float CMSMUtility_GetLongBufferDuration()
{
  if ((CMSMUtility_GetLongBufferDuration_gCheckedLongBufferDuration & 1) == 0)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"longbuffermillis", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      *&CMSMUtility_GetLongBufferDuration_gLongBufferDuration = AppIntegerValue / 1000.0;
    }

    CMSMUtility_GetLongBufferDuration_gCheckedLongBufferDuration = 1;
  }

  return *&CMSMUtility_GetLongBufferDuration_gLongBufferDuration;
}

void CMSystemSoundMgr_ActivateAllSystemSounds()
{
  if (gCMSS_1)
  {
    FigSimpleMutexLock();
    for (i = gCMSS_0; i; i = *i)
    {
      if (*(i + 16) && !*(i + 18))
      {
        cmsmPrewarmAudioForSSID(1, *(i + 8), *(i + 12));
        *(i + 18) = 1;
      }

      if (*(i + 17) && !*(i + 19))
      {
        cmsmPrewarmVibeForSSID(1, *(i + 8), *(i + 12));
        *(i + 19) = 1;
      }

      CMSMSleep_CreatePrewarmIdleSleepPreventor(*(i + 8), *(i + 12));
    }

    FigSimpleMutexUnlock();
  }
}

uint64_t FigPredictedRouting_SetPreemptivePortChanged(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = FigPredictedRouting_IsPreemptivePortLogicEnabled();
  if (result)
  {
    FigSimpleMutexLock();
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    gPRS_5 = a1 != 0;
    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t vaemSetDeviceBufferNumPCMFramesQuiet(uint64_t a1, int a2, unsigned int a3)
{
  v3 = a3;
  v11 = a3;
  v9 = 0;
  vaemGetDeviceBufferNumPCMFramesRange(a1, a2, &v9 + 1, &v9);
  if (!v6)
  {
    if (HIDWORD(v9) > v3)
    {
      v11 = HIDWORD(v9);
      v3 = HIDWORD(v9);
    }

    if (v3 > v9)
    {
      v11 = v9;
    }
  }

  if (a2 == 1)
  {
    v7 = 1768845428;
  }

  else
  {
    v7 = 1869968496;
  }

  v10[0] = 1902539642;
  v10[1] = v7;
  v10[2] = 0;
  return CMSMVAUtility_AudioObjectSetPropertyData(a1, v10, 0, 0, 4, &v11);
}

uint64_t FigPredictedRouting_StopPreemptivePortChangedTimer(int a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  result = FigPredictedRouting_IsPreemptivePortLogicEnabled();
  if (result)
  {
    FigSimpleMutexLock();
    FigPredictedRouting_SetPreemptivePortChanged(0);
    v3 = gPRS_4;
    if (gPRS_4)
    {
      v4 = gPRS_1;
      if (gPRS_1)
      {
        if (!dword_1EB75DF20 || (os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v4 = gPRS_1) != 0))
        {
          CFRelease(v4);
          gPRS_1 = 0;
        }

        cf[0] = 0;
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
        FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(cf[0], @"predictedSelectedRouteDescriptorChanged", 0);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v3 = gPRS_4;
      }

      dispatch_source_cancel(v3);
      if (gPRS_4)
      {
        dispatch_release(gPRS_4);
        gPRS_4 = 0;
      }
    }

    result = FigSimpleMutexUnlock();
    if (dword_1EB75DF20)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a1)
    {
      v7 = +[MXSessionManager sharedInstance];
      return [(MXSessionManager *)v7 unduckSessionsForDuckingSource:gPRS_3];
    }
  }

  return result;
}

uint64_t central_BorrowScreen(uint64_t a1, const __CFString *a2, CFStringRef theString)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v8 = 0x200000002;
  LODWORD(v9) = 22;
  if (!theString)
  {
    goto LABEL_2;
  }

  if (CFStringFind(theString, @"SiriActivation", 0).location == -1)
  {
    if (CFStringFind(theString, @"presenting siri", 0).location != -1 || CFStringFind(theString, @"full screen alert", 0).location != -1 || CFStringFind(theString, @"InCall", 0).location != -1 || CFStringFind(theString, @"Siri", 0).location != -1)
    {
      goto LABEL_10;
    }
  }

  else if (!CMSMUtility_IsCarPlayVideoActive())
  {
LABEL_10:
    v6 = 500;
    goto LABEL_11;
  }

LABEL_2:
  v6 = 100;
LABEL_11:
  DWORD1(v9) = v6;
  LODWORD(v10) = 100;
  central_requestCarModeChange(a1, &v8, a2, theString);
  return 0;
}

void central_requestCarModeChange(uint64_t a1, __int128 *a2, const __CFString *a3, const __CFString *a4)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a3);
  CFStringAppend(MutableCopy, @": ");
  CFStringAppend(MutableCopy, a4);
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v9 = DerivedStorage[3];
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      fsmcontroller_RequestModeChangeAsync(v9, a2, CStringPtrAndBufferToFree, &__block_literal_global_77, 0);
      DerivedStorage = 0;
    }
  }

  else
  {
    DerivedStorage = 0;
  }

  free(DerivedStorage);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void fsmcontroller_RequestModeChangeAsync(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = a5;
    v8 = a2[3];
    v22 = a2[2];
    v23 = v8;
    v24 = *(a2 + 8);
    v9 = a2[1];
    v20 = *a2;
    v21 = v9;
    if (a3)
    {
      v10 = malloc_type_malloc(0x40uLL, 0x7AE4B5C7uLL);
      __strlcpy_chk();
    }

    else
    {
      v10 = 0;
    }

    CFRetain(a1);
    v11 = a1[3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __fsmcontroller_RequestModeChangeAsync_block_invoke;
    v12[3] = &unk_1E7AED380;
    v15 = v22;
    v16 = v23;
    v14 = v21;
    v13 = v20;
    v17 = v24;
    v18 = v10;
    v19 = v6;
    v12[4] = a4;
    v12[5] = a1;
    MXDispatchAsync("fsmcontroller_RequestModeChangeAsync", "FigStarkMode.m", 1388, 0, 0, v11, v12);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    (*(a4 + 16))(a4, 4294950566, &v20, a4, a5);
  }
}

uint64_t central_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = *(CMBaseObjectGetDerivedStorage() + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __central_CopyProperty_block_invoke;
  v11[3] = &unk_1E7AE79A8;
  v11[4] = &v12;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v11[8] = a4;
  MXDispatchSync("central_CopyProperty", "FigEndpoint_Central.m", 1222, 0, 0, v8, v11);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_1B1816858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMBaseObjectCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t CMBaseObjectCopyProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

__CFString *FSMDebug_GetFigStarkModeTransferTypeString(int a1)
{
  if (a1 <= 20)
  {
    if (!a1)
    {
      return @"N/A";
    }

    if (a1 == 20)
    {
      return @"Take";
    }
  }

  else
  {
    switch(a1)
    {
      case 21:
        return @"Untake";
      case 22:
        return @"Borrow";
      case 23:
        return @"Unborrow";
    }
  }

  return @"***Unknown***";
}

uint64_t fsm_requestModeChange(uint64_t a1, unsigned int *a2, const char *a3, uint64_t a4, __n128 *a5, int a6)
{
  v202 = *MEMORY[0x1E69E9840];
  v188 = 0u;
  v189 = 0u;
  fsm_getCurrentMode(a1, &v188, 0);
  if (!*a2 || !a2[1])
  {
    return 4294949813;
  }

  result = fsm_verifyResourceChangeRequest((a2 + 2));
  if (!result)
  {
    LODWORD(v178) = a6;
    result = fsm_verifyResourceChangeRequest((a2 + 8));
    if (!result)
    {
      *v197 = *(a2 + 2);
      *&v197[16] = *(a2 + 3);
      v13 = FSMDebug_CopyFigStarkModeBorrowIDString(v197);
      *v197 = *(a2 + 2);
      *&v197[16] = *(a2 + 6);
      v14 = FSMDebug_CopyFigStarkModeBorrowIDString(v197);
      v22 = v14;
      v174 = a3;
      if (dword_1EB75E258)
      {
        v23 = OUTLINED_FUNCTION_8_9(v14, v15, v16, v17, v18, v19, v20, v21, v135, v138, v141, v144, v147, v150, v153, FigStarkModeConstraintString, FigStarkModeTransferPriorityString, FigStarkModeTransferTypeString, FigStarkModeEntityString, v168, a5, a3, v178, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], v184[0], v184[1], v185.n128_i64[0], v185.n128_i64[1], v186[0], v186[1], v187, *(&v187 + 1), v188.n128_i64[0], v188.n128_i64[1], v189, *(&v189 + 1), v190, type[0], cf);
        v24 = cf;
        HIDWORD(v168) = type[0];
        if (os_log_type_enabled(v23, type[0]))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          FigStarkModeEntityString = FSMDebug_GetFigStarkModeEntityString(*a2);
          FigStarkModeTransferTypeString = FSMDebug_GetFigStarkModeTransferTypeString(a2[2]);
          FigStarkModeTransferPriorityString = FSMDebug_GetFigStarkModeTransferPriorityString(a2[3]);
          FigStarkModeConstraintString = FSMDebug_GetFigStarkModeConstraintString(a2[6]);
          v153 = FSMDebug_GetFigStarkModeConstraintString(a2[7]);
          v147 = FSMDebug_GetFigStarkModeEntityString(a2[1]);
          v144 = FSMDebug_GetFigStarkModeTransferTypeString(a2[8]);
          v141 = FSMDebug_GetFigStarkModeTransferPriorityString(a2[9]);
          v26 = FSMDebug_GetFigStarkModeConstraintString(a2[12]);
          v27 = FSMDebug_GetFigStarkModeConstraintString(a2[13]);
          FigStarkModeSpeechModeRequestString = FSMDebug_GetFigStarkModeSpeechModeRequestString(a2[14]);
          v150 = v23;
          FigStarkModeTriStateString = FSMDebug_GetFigStarkModeTriStateString(a2[15]);
          v30 = FSMDebug_GetFigStarkModeTriStateString(a2[16]);
          *v197 = 136319234;
          v31 = "unknown reason";
          *&v197[4] = "fsm_requestModeChange";
          if (v174)
          {
            v31 = v174;
          }

          *&v197[12] = 2114;
          *&v197[14] = FigStarkModeEntityString;
          *&v197[22] = 2114;
          *&v197[24] = FigStarkModeTransferTypeString;
          *v198 = 2114;
          *&v198[2] = FigStarkModeTransferPriorityString;
          *&v198[10] = 2114;
          *&v198[12] = FigStarkModeConstraintString;
          *&v198[20] = 2114;
          *&v198[22] = v153;
          *&v198[30] = 2114;
          *&v198[32] = v13;
          *&v198[40] = 2114;
          *&v198[42] = v147;
          *&v198[50] = 2114;
          *&v198[52] = v144;
          *&v198[60] = 2114;
          *&v198[62] = v141;
          *&v198[70] = 2114;
          *&v198[72] = v26;
          *&v198[80] = 2114;
          *&v198[82] = v27;
          *&v198[90] = 2114;
          *v199 = v22;
          *&v199[8] = 2114;
          *&v199[10] = FigStarkModeSpeechModeRequestString;
          *&v199[18] = 2114;
          *&v199[20] = FigStarkModeTriStateString;
          *&v199[28] = 2114;
          *&v199[30] = v30;
          *&v199[38] = 2082;
          *&v199[40] = v31;
          LODWORD(v138) = 172;
          _os_log_send_and_compose_impl(v25, 0, &v193, 128, &dword_1B17A2000, v150, HIDWORD(v168), "-stark mode- %s: [FSMCR] | Screen: Entity: %{public}@ %{public}@ %{public}@ %{public}@ %{public}@ %{public}@ | MainAudio: Entity: %{public}@ %{public}@ %{public}@ %{public}@ %{public}@ %{public}@ | SpeechMode: %{public}@ | PhoneCall: %{public}@ | TurnByTurn: %{public}@ | Reason: %{public}s", v197, v138);
        }

        OUTLINED_FUNCTION_0_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a5 = v171;
        a3 = v174;
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      v32 = FSMDebug_CopyPrettyPrintStringForModeChangeRequest(a2);
      v40 = v178;
      if (v32)
      {
        CFRelease(v32);
      }

      if (v178)
      {
        if (dword_1EB75E258)
        {
          v41 = a5;
          v42 = OUTLINED_FUNCTION_8_9(v32, v33, v34, v35, v36, v37, v38, v39, v135, v138, v141, v144, v147, v150, v153, FigStarkModeConstraintString, FigStarkModeTransferPriorityString, FigStarkModeTransferTypeString, FigStarkModeEntityString, v168, v171, v174, v178, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], v184[0], v184[1], v185.n128_i64[0], v185.n128_i64[1], v186[0], v186[1], v187, *(&v187 + 1), v188.n128_i64[0], v188.n128_i64[1], v189, *(&v189 + 1), v190, type[0], cf);
          v43 = cf;
          v44 = type[0];
          if (os_log_type_enabled(v42, type[0]))
          {
            v45 = v43;
          }

          else
          {
            v45 = v43 & 0xFFFFFFFE;
          }

          if (v45)
          {
            v193 = 136315394;
            v194 = "fsm_requestModeChange";
            v195 = 1024;
            v196 = v179;
            OUTLINED_FUNCTION_7_10();
            _os_log_send_and_compose_impl(v46, 0, v197, 128, &dword_1B17A2000, v42, v44, "-stark mode- %s: Keeping CarPlay resource entities with iOS due to retainCarPlayResourcesWithiOS = %{BOOL}u");
          }

          OUTLINED_FUNCTION_0_0();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a5 = v41;
          a3 = v174;
          v40 = v179;
        }

        *(a1 + 32) = 2;
        *(a1 + 64) = 2;
      }

      fsm_requestResourceModeChange(*a2, (a2 + 2), a1 + 32, 1);
      fsm_requestResourceModeChange(a2[1], (a2 + 8), a1 + 64, 2);
      fsm_printListOfBorrowers(a1 + 32, 1);
      fsm_printListOfBorrowers(a1 + 64, 0);
      if (!*(a1 + 128) || !FigRoutingManager_iOSIsCarPlayAuxStreamSupported())
      {
        v47 = *(a1 + 96);
        CurrentBorrower = fsm_getCurrentBorrower((a1 + 64));
        if (!CurrentBorrower)
        {
          CurrentBorrower = *(a1 + 64);
        }

        if (v47 != CurrentBorrower)
        {
          *(a1 + 96) = 0;
        }
      }

      v49 = *(a1 + 104);
      v50 = fsm_getCurrentBorrower((a1 + 64));
      if (!v50)
      {
        v50 = *(a1 + 64);
      }

      if (v49 != v50)
      {
        *(a1 + 104) = 0;
      }

      v51 = a2[14];
      if (v51)
      {
        if (v51 == -1)
        {
          if (*(a1 + 96) != a2[1])
          {
            goto LABEL_50;
          }

          v52 = 0;
          *(a1 + 96) = 0;
          goto LABEL_49;
        }

        v53 = a2[1];
        v54 = fsm_getCurrentBorrower((a1 + 64));
        if (!v54)
        {
          v54 = *(a1 + 64);
        }

        if (v53 == v54 || FigRoutingManager_iOSIsCarPlayAuxStreamSupported())
        {
          *(a1 + 96) = a2[1];
          v52 = a2[14];
LABEL_49:
          *(a1 + 100) = v52;
        }
      }

LABEL_50:
      v55 = a2[15];
      if (v55 == 1)
      {
        v57 = a2[1];
        v58 = fsm_getCurrentBorrower((a1 + 64));
        if (!v58)
        {
          v58 = *(a1 + 64);
        }

        if (v57 == v58)
        {
          v56 = a2[1];
          goto LABEL_58;
        }
      }

      else if (v55 == -1 && *(a1 + 104) == a2[1])
      {
        v56 = 0;
LABEL_58:
        *(a1 + 104) = v56;
      }

      v59 = a2[16];
      if (v59 == 1)
      {
        *(a1 + 108) = a2[1];
      }

      else if (v59 == -1 && *(a1 + 108) == a2[1])
      {
        *(a1 + 108) = 0;
      }

      fsm_getCurrentMode(a1, a5, v40);
      v60 = FSMDebug_CopyPrettyPrintStringForStarkModeState(a5);
      if (v60)
      {
        CFRelease(v60);
      }

      if (a3)
      {
        v61 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a3, 0x8000100u);
      }

      else
      {
        v61 = 0;
      }

      *v186 = v188;
      v187 = v189;
      v62 = a5[1];
      *v184 = *a5;
      v185 = v62;
      v63 = memcpy(__dst, a2, sizeof(__dst));
      cf = 0;
      IsAirPlayDaemonEnabled = MX_FeatureFlags_IsAirPlayDaemonEnabled(v63, v64);
      v180 = v61;
      if (IsAirPlayDaemonEnabled)
      {
        if (dword_1EB75E258)
        {
          v73 = OUTLINED_FUNCTION_9_9(IsAirPlayDaemonEnabled, v66, v67, v68, v69, v70, v71, v72, v135, v138, v141, v144, v147, v150, v153, FigStarkModeConstraintString, FigStarkModeTransferPriorityString, FigStarkModeTransferTypeString, FigStarkModeEntityString, v168, v171, v174, v61, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], v184[0], v184[1], v185.n128_i64[0], v185.n128_i64[1], v186[0], v186[1], v187, *(&v187 + 1), v188.n128_i64[0], v188.n128_i64[1], v189, *(&v189 + 1), v190, SBYTE2(v190), SHIBYTE(v190), *type);
          OUTLINED_FUNCTION_13_6(v73, v74, v75, v76, v77, v78, v79, v80, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v181, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], v184[0], v184[1], v185.n128_i64[0], v185.n128_i64[1], v186[0], v186[1], v187, *(&v187 + 1), v188.n128_i64[0], v188.n128_i64[1], v189, *(&v189 + 1), v190, SBYTE2(v190), HIBYTE(v190), *type);
          OUTLINED_FUNCTION_12_7();
          if (v82)
          {
            v83 = v81;
          }

          else
          {
            v83 = a3;
          }

          if (v83)
          {
            v193 = 136315138;
            v194 = "fsm_postStateChangedOnAllHandlers";
            OUTLINED_FUNCTION_7_10();
            OUTLINED_FUNCTION_2_11(v84, v85, v197, v86, &dword_1B17A2000, v87, v88, "-stark mode- %s: using sendcommand to communicate modes changed");
          }

          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_15_7(v104, v105, v106, v107, v108);
        }

        *v197 = *v184;
        *&v197[16] = v185;
        FigStarkModeCreateDictionaryRepresentation(v197, &cf);
        v109 = CMSMUtility_CopyStarkEndpointCentral();
        if (v109)
        {
          v110 = v109;
          FigEndpointExtendedGetClassID();
          v177 = v110;
          if (CMBaseObjectIsMemberOfClass())
          {
            v111 = CFRetain(v110);
            if (v111)
            {
              OUTLINED_FUNCTION_15();
              if (_FigEndpointCentralSendCommand(v112, v113, v114, v115, v116))
              {
LABEL_97:
                CFRelease(v111);
LABEL_98:
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v177)
                {
                  CFRelease(v177);
                }

                if (v180)
                {
                  CFRelease(v180);
                }

                return 0;
              }
            }
          }

          else
          {
            v111 = 0;
          }

LABEL_93:
          if (CFArrayGetCount(*(a1 + 120)) >= 1)
          {
            v124 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 120), v124);
              v126 = a4;
              v127 = *(ValueAtIndex + 4);
              CFRetain(a1);
              CFRetain(ValueAtIndex);
              v128 = *(ValueAtIndex + 3);
              *v197 = MEMORY[0x1E69E9820];
              *&v197[8] = 3221225472;
              *&v199[16] = v187;
              *v199 = *v186;
              v200 = v185;
              *&v197[16] = __fsm_postStateChanged_block_invoke;
              *&v197[24] = &__block_descriptor_189_e5_v8__0l;
              *v198 = a1;
              *&v198[8] = ValueAtIndex;
              *&v198[88] = v127;
              a4 = v126;
              *&v199[32] = *v184;
              memcpy(&v198[16], __dst, 0x48uLL);
              v201 = v126;
              OUTLINED_FUNCTION_15();
              MXDispatchAsync(v129, v130, v131, v132, v133, v128, v134);
              ++v124;
            }

            while (CFArrayGetCount(*(a1 + 120)) > v124);
          }

          if (!v111)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }
      }

      else
      {
        if (dword_1EB75E258)
        {
          v89 = OUTLINED_FUNCTION_9_9(IsAirPlayDaemonEnabled, v66, v67, v68, v69, v70, v71, v72, v135, v138, v141, v144, v147, v150, v153, FigStarkModeConstraintString, FigStarkModeTransferPriorityString, FigStarkModeTransferTypeString, FigStarkModeEntityString, v168, v171, v174, v61, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], v184[0], v184[1], v185.n128_i64[0], v185.n128_i64[1], v186[0], v186[1], v187, *(&v187 + 1), v188.n128_i64[0], v188.n128_i64[1], v189, *(&v189 + 1), v190, SBYTE2(v190), SHIBYTE(v190), *type);
          OUTLINED_FUNCTION_13_6(v89, v90, v91, v92, v93, v94, v95, v96, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v182, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], v184[0], v184[1], v185.n128_i64[0], v185.n128_i64[1], v186[0], v186[1], v187, *(&v187 + 1), v188.n128_i64[0], v188.n128_i64[1], v189, *(&v189 + 1), v190, SBYTE2(v190), HIBYTE(v190), *type);
          OUTLINED_FUNCTION_12_7();
          if (v82)
          {
            v98 = v97;
          }

          else
          {
            v98 = a3;
          }

          if (v98)
          {
            v193 = 136315138;
            v194 = "fsm_postStateChangedOnAllHandlers";
            OUTLINED_FUNCTION_7_10();
            OUTLINED_FUNCTION_2_11(v99, v100, v197, v101, &dword_1B17A2000, v102, v103, "-stark mode- %s: calling StarkModeController handler block for modes change communication");
          }

          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_15_7(v117, v118, v119, v120, v121);
        }

        v122 = *(a1 + 112);
        if (v122)
        {
          v123 = *(v122 + 16);
          *v197 = *v184;
          *&v197[16] = v185;
          v123(v122, v197);
        }
      }

      v111 = 0;
      v177 = 0;
      goto LABEL_93;
    }
  }

  return result;
}

CFStringRef FSMDebug_CopyFigStarkModeBorrowIDString(uint64_t a1)
{
  if ((*a1 & 0xFFFFFFFE) != 0x16)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"N/A", 0);
  }

  v1 = *(a1 + 8);
  v2 = *MEMORY[0x1E695E480];
  if (v1)
  {
    return CFStringCreateWithFormat(v2, 0, @"%@", v1);
  }

  else
  {
    return CFStringCreateWithFormat(v2, 0, @"NULL", 0);
  }
}

const __CFArray *fsm_getCurrentBorrower(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 2);
    if (result)
    {
      Count = CFArrayGetCount(result);
      if (Count >= 1)
      {
        v3 = Count;
        for (i = 0; i != v3; ++i)
        {
          CFArrayGetValueAtIndex(*(v1 + 2), i);
          FigCFDictionaryGetBooleanIfPresent();
        }
      }

      return 0;
    }
  }

  return result;
}

__n128 fsm_getCurrentMode(__n128 *a1, __n128 *a2, int a3)
{
  CurrentBorrower = fsm_getCurrentBorrower(&a1[2]);
  v7 = a1[2].n128_u32[0];
  if (CurrentBorrower)
  {
    v8 = CurrentBorrower;
  }

  else
  {
    v8 = a1[2].n128_u32[0];
  }

  a2->n128_u32[0] = v8;
  a2->n128_u32[1] = v7;
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = fsm_getCurrentBorrower(&a1[4]);
    if (!v9)
    {
      v9 = a1[4].n128_u32[0];
    }
  }

  v10 = a1[4].n128_u32[0];
  a2->n128_u32[2] = v9;
  a2->n128_u32[3] = v10;
  result = a1[6];
  a2[1] = result;
  return result;
}

uint64_t fsm_verifyResourceChangeRequest(uint64_t a1)
{
  v2 = *a1;
  result = 4294950565;
  if (v2 <= 20)
  {
    if (!v2)
    {
      v10 = (*a1 | *(a1 + 8) | *(a1 + 16)) == 0;
      v11 = -17487;
LABEL_29:
      if (v10)
      {
        return 0;
      }

      else
      {
        return v11;
      }
    }

    if (v2 != 20)
    {
      return result;
    }

    v4 = *(a1 + 4);
    if (!v4)
    {
      return 4294950564;
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(a1 + 20);
      if (v6)
      {
        result = 0;
      }

      else
      {
        result = 4294950559;
      }

      if (v4 != 100 || v5 == 100 && v6 == 100)
      {
        return result;
      }
    }

    else if (v4 != 100)
    {
      return 4294950560;
    }

    return 4294950557;
  }

  if (v2 == 21)
  {
    if (*(a1 + 4))
    {
      return 4294950562;
    }

    v10 = *(a1 + 16) == 0;
    v11 = -17480;
    goto LABEL_29;
  }

  if (v2 != 22)
  {
    if (v2 != 23)
    {
      return result;
    }

    if (*(a1 + 4))
    {
      return 4294950561;
    }

    v10 = *(a1 + 16) == 0;
    v11 = -17481;
    goto LABEL_29;
  }

  v7 = *(a1 + 4);
  if (!v7)
  {
    return 4294950563;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    if (*(a1 + 20))
    {
      v9 = -17482;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = -16738;
  }

  if (v8 == 100)
  {
    v12 = v9;
  }

  else
  {
    v12 = -16738;
  }

  if (v7 == 100)
  {
    return v12;
  }

  else
  {
    return v9;
  }
}

__CFString *FSMDebug_GetFigStarkModeEntityString(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"***Unknown***";
  }

  else
  {
    return off_1E7AE7058[a1];
  }
}

__CFString *FSMDebug_GetFigStarkModeConstraintString(int a1)
{
  if (a1 > 499)
  {
    if (a1 != 500)
    {
      if (a1 == 1000)
      {
        return @"Never";
      }

      return @"***Unknown***";
    }

    return @"UserInitiated";
  }

  else
  {
    if (a1)
    {
      if (a1 == 100)
      {
        return @"Anytime";
      }

      return @"***Unknown***";
    }

    return @"N/A";
  }
}

void fsm_requestResourceModeChange(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (*a2 <= 21)
  {
    if (v7 == 20)
    {

      fsm_requestResourceModeChangeTake(a1, a2, a3);
    }

    else if (v7 == 21 && *a3 == a1)
    {
      *(a3 + 4) = 0x6400000064;
    }

    return;
  }

  if (v7 == 22)
  {
    if (a1 != 1 || a4 != 1 || !FigCFEqual() && !FigCFEqual())
    {

      fsm_requestResourceModeChangeBorrow(a1, a2, a3);
      return;
    }

    v13 = *MEMORY[0x1E695E4C0];
    cf[0] = v13;
    v32[0] = v13;
    v14 = CMSMUtility_CopyStarkEndpointCentral();
    if (v14)
    {
      v15 = v14;
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v16 = CFRetain(v15);
        if (v16)
        {
          v17 = v16;
          v18 = *MEMORY[0x1E695E480];
          v19 = !_FigEndpointCentralCopyProperty(v16, *MEMORY[0x1E6961F98], *MEMORY[0x1E695E480], cf) && !_FigEndpointCentralCopyProperty(v17, *MEMORY[0x1E6961F88], v18, v32) && FigCFEqual() != 0;
          CFRelease(v15);
          CFRelease(v17);
          v13 = cf[0];
          goto LABEL_37;
        }
      }

      CFRelease(v15);
    }

    v19 = 0;
LABEL_37:
    if (v13)
    {
      CFRelease(v13);
      cf[0] = 0;
    }

    if (v32[0])
    {
      CFRelease(v32[0]);
    }

    *v32 = 0u;
    HIDWORD(v32[0]) = 500;
    v33 = vdup_n_s32(0x1F4u);
    fsm_requestResourceModeChangeTake(2, v32, a3);
    if (v19)
    {
      fsm_requestResourceModeChangeBorrow(1, a2, a3);
    }

    else if (dword_1EB75E258)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v22 = CMSMUtility_CopyStarkEndpointCentral();
    if (v22)
    {
      v23 = v22;
      v24 = [+[MXSessionManager sharedInstance](MXSessionManager copyDisplayIDForActiveCarPlayVideoSession];
      if (v24)
      {
        v25 = v24;
        [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v24, *MEMORY[0x1E69616E8], 0}];
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v25);
      }

      CFRelease(v23);
    }

    return;
  }

  if (v7 != 23)
  {
    return;
  }

  if (*(a2 + 8))
  {
    v8 = *(a3 + 16);
    if (v8)
    {
      Count = CFArrayGetCount(v8);
      v31 = 0;
      v10 = Count - 1;
      if (Count >= 1)
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 16), v10);
          v31 = 0;
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          if (ValueAtIndex)
          {
            CFDictionaryGetValue(ValueAtIndex, @"BorrowID");
          }

          if (v31 == a1 && FigCFEqual())
          {
            break;
          }

          if (--v10 == -1)
          {
            if (dword_1EB75E258)
            {
              v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_51;
          }
        }

        if (dword_1EB75E258)
        {
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFArrayRemoveValueAtIndex(*(a3 + 16), v10);
      }
    }
  }

  else
  {
LABEL_51:
    fsm_requestResourceModeChangeUnborrowWithoutBorrowID(a1, a3);
  }

  v26 = *(a3 + 16);
  if (!v26 || !CFArrayGetCount(v26))
  {
    *(a3 + 24) = 0;
    return;
  }

  v27 = *(a3 + 16);
  if (!v27)
  {
    LOBYTE(cf[0]) = 0;
LABEL_65:
    v30 = CFArrayGetValueAtIndex(*(a3 + 16), 0);
    FigCFDictionaryGetInt32IfPresent();
    CFDictionarySetValue(v30, @"BorrowSucceeded", *MEMORY[0x1E695E4D0]);
    *(a3 + 24) = 0;
    return;
  }

  v28 = CFArrayGetCount(v27);
  LOBYTE(cf[0]) = 0;
  if (v28 < 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(*(a3 + 16), v29);
      FigCFDictionaryGetBooleanIfPresent();
      if (LOBYTE(cf[0]))
      {
        break;
      }

      if (v28 == ++v29)
      {
        goto LABEL_65;
      }
    }

    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    *(a3 + 24) = 0;
  }

  if (v29 == v28)
  {
    goto LABEL_65;
  }
}

__CFString *FSMDebug_GetFigStarkModeSpeechModeRequestString(int a1)
{
  if (a1 > 9)
  {
    if (a1 != 10)
    {
      if (a1 == 11)
      {
        return @"RecognizingSpeech";
      }

      return @"***Unknown***";
    }

    return @"Speaking";
  }

  else
  {
    if (a1 != -1)
    {
      if (!a1)
      {
        return @"N/A";
      }

      return @"***Unknown***";
    }

    return @"Neither";
  }
}

__CFString *FSMDebug_GetFigStarkModeTriStateString(int a1)
{
  if ((a1 + 1) > 2)
  {
    return @"***Unknown***";
  }

  else
  {
    return off_1E7AE7070[a1 + 1];
  }
}

__CFString *FSMDebug_GetFigStarkModeTransferPriorityString(int a1)
{
  v1 = @"UserInitiated";
  v2 = @"***Unknown***";
  if (a1 == 100)
  {
    v2 = @"NiceToHave";
  }

  if (a1 != 500)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"N/A";
  }
}

__CFString *FSMDebug_CopyPrettyPrintStringForModeChangeRequest(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!a1)
  {
    return Mutable;
  }

  v3 = FSMDebug_CopyPrettyPrintStringForResourceChangeRequest((a1 + 2));
  v4 = FSMDebug_CopyPrettyPrintStringForResourceChangeRequest((a1 + 8));
  v5 = v4;
  v6 = *a1;
  if (v6 > 2)
  {
    v7 = @"***Unknown***";
  }

  else
  {
    v7 = off_1E7AE7058[v6];
  }

  v8 = a1[1];
  if (v8 > 2)
  {
    v9 = @"***Unknown***";
  }

  else
  {
    v9 = off_1E7AE7058[v8];
  }

  v10 = a1[14];
  if (v10 > 9)
  {
    if (v10 == 10)
    {
      v11 = @"Speaking";
      goto LABEL_18;
    }

    if (v10 == 11)
    {
      v11 = @"RecognizingSpeech";
      goto LABEL_18;
    }

LABEL_15:
    v11 = @"***Unknown***";
    goto LABEL_18;
  }

  if (v10 == -1)
  {
    v11 = @"Neither";
    goto LABEL_18;
  }

  if (v10)
  {
    goto LABEL_15;
  }

  v11 = @"N/A";
LABEL_18:
  v12 = a1[15] + 1;
  if (v12 > 2)
  {
    v13 = @"***Unknown***";
  }

  else
  {
    v13 = off_1E7AE7070[v12];
  }

  v14 = a1[16] + 1;
  if (v14 > 2)
  {
    v15 = @"***Unknown***";
  }

  else
  {
    v15 = off_1E7AE7070[v14];
  }

  CFStringAppendFormat(Mutable, 0, @"\n\t ModeChangeRequest: \n\t Requestor = Screen: %@       MainAudio: %@\n\t Screen = %@ \n\t MainAudio =  %@ \n\t SpeechMode = %@ \n\t IsOnPhoneCall = %@ \n\t IsDoingTurnByTurn = %@", v7, v9, v3, v4, v11, v13, v15);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

__CFString *FSMDebug_CopyPrettyPrintStringForStarkModeState(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  if (a1)
  {
    v4 = *a1;
    if (v4 > 2)
    {
      v5 = @"***Unknown***";
    }

    else
    {
      v5 = off_1E7AE7058[v4];
    }

    v6 = a1[1];
    if (v6 > 2)
    {
      v7 = @"***Unknown***";
    }

    else
    {
      v7 = off_1E7AE7058[v6];
    }

    v8 = a1[2];
    if (v8 > 2)
    {
      v9 = @"***Unknown***";
    }

    else
    {
      v9 = off_1E7AE7058[v8];
    }

    v10 = a1[3];
    if (v10 > 2)
    {
      v11 = @"***Unknown***";
    }

    else
    {
      v11 = off_1E7AE7058[v10];
    }

    v12 = a1[4];
    if (v12 > 2)
    {
      v13 = @"***Unknown***";
    }

    else
    {
      v13 = off_1E7AE7058[v12];
    }

    v14 = a1[5];
    if (v14)
    {
      if (v14 == 11)
      {
        v15 = @"RecognizingSpeech";
      }

      else if (v14 == 10)
      {
        v15 = @"Speaking";
      }

      else
      {
        v15 = @"***Unknown***";
      }
    }

    else
    {
      v15 = @"N/A";
    }

    v16 = a1[6];
    if (v16 > 2)
    {
      v17 = @"***Unknown***";
    }

    else
    {
      v17 = off_1E7AE7058[v16];
    }

    v18 = a1[7];
    if (v18 > 2)
    {
      v19 = @"***Unknown***";
    }

    else
    {
      v19 = off_1E7AE7058[v18];
    }

    CFStringAppendFormat(Mutable, 0, @"\n\t Mode: \n\t ScreenEntity = %@ \n\t ScreenOwnerEntity = %@ \n\t MainAudioEntity = %@ \n\t MainAudioOwnerEntity = %@ \n\t\t SpeechEntity =  %@ \n\t\t SpeechMode = %@ \n\t PhoneCallEntity = %@ \n\t TurnByTurnEntity = %@", v5, v7, v9, v11, v13, v15, v17, v19);
  }

  return v3;
}

__CFString *FSMDebug_CopyPrettyPrintStringForResourceChangeRequest(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  if (!a1)
  {
    return v3;
  }

  v4 = *a1;
  if (*a1 <= 20)
  {
    if (!v4)
    {
      v9 = @"N/A";
      goto LABEL_23;
    }

    if (v4 != 20)
    {
LABEL_22:
      v9 = @"***Unknown***";
      goto LABEL_23;
    }

    v7 = *(a1 + 4);
    if (v7)
    {
      if (v7 == 500)
      {
        v8 = @"UserInitiated";
      }

      else if (v7 == 100)
      {
        v8 = @"NiceToHave";
      }

      else
      {
        v8 = @"***Unknown***";
      }
    }

    else
    {
      v8 = @"N/A";
    }

    v18 = *(a1 + 16);
    if (v18 > 499)
    {
      if (v18 != 500)
      {
        if (v18 == 1000)
        {
          v19 = @"Never";
          goto LABEL_62;
        }

        goto LABEL_56;
      }

      v19 = @"UserInitiated";
    }

    else
    {
      if (v18)
      {
        if (v18 == 100)
        {
          v19 = @"Anytime";
          goto LABEL_62;
        }

LABEL_56:
        v19 = @"***Unknown***";
        goto LABEL_62;
      }

      v19 = @"N/A";
    }

LABEL_62:
    v20 = *(a1 + 20);
    if (v20 > 499)
    {
      if (v20 == 500)
      {
        v21 = @"UserInitiated";
        goto LABEL_72;
      }

      if (v20 == 1000)
      {
        v21 = @"Never";
        goto LABEL_72;
      }
    }

    else
    {
      if (!v20)
      {
        v21 = @"N/A";
        goto LABEL_72;
      }

      if (v20 == 100)
      {
        v21 = @"Anytime";
LABEL_72:
        CFStringAppendFormat(Mutable, 0, @"\n\t\t ResourceChangeRequest: \n\t\t Type = %@ \n\t\t Priority = %@ \n\t\t\t TakeConstraint =  %@ \n\t\t\t BorrowConstraint = %@ \n", @"Take", v8, v19, v21);
        return v3;
      }
    }

    v21 = @"***Unknown***";
    goto LABEL_72;
  }

  if (v4 != 21)
  {
    if (v4 != 22)
    {
      if (v4 == 23)
      {
        v5 = *(a1 + 4);
        if (v5)
        {
          if (v5 == 500)
          {
            v6 = @"UserInitiated";
          }

          else if (v5 == 100)
          {
            v6 = @"NiceToHave";
          }

          else
          {
            v6 = @"***Unknown***";
          }
        }

        else
        {
          v6 = @"N/A";
        }

        CFStringAppendFormat(Mutable, 0, @"\n\t\t ResourceChangeRequest: \n\t\t Type = %@ \n\t\t BorrowID = %@ \n\t\t Priority = %@ \n", @"Unborrow", *(a1 + 8), v6);
        return v3;
      }

      goto LABEL_22;
    }

    v10 = *(a1 + 4);
    if (v10)
    {
      if (v10 == 500)
      {
        v11 = @"UserInitiated";
      }

      else if (v10 == 100)
      {
        v11 = @"NiceToHave";
      }

      else
      {
        v11 = @"***Unknown***";
      }
    }

    else
    {
      v11 = @"N/A";
    }

    v16 = *(a1 + 16);
    if (v16 > 499)
    {
      if (v16 == 500)
      {
        v17 = @"UserInitiated";
        goto LABEL_59;
      }

      if (v16 == 1000)
      {
        v17 = @"Never";
        goto LABEL_59;
      }
    }

    else
    {
      if (!v16)
      {
        v17 = @"N/A";
        goto LABEL_59;
      }

      if (v16 == 100)
      {
        v17 = @"Anytime";
LABEL_59:
        CFStringAppendFormat(Mutable, 0, @"\n\t\t ResourceChangeRequest: \n\t\t Type = %@ \n\t\t BorrowID = %@ \n\t\t Priority = %@ \n\t\t\t UnborrowConstraint = %@ \n", @"Borrow", *(a1 + 8), v11, v17);
        return v3;
      }
    }

    v17 = @"***Unknown***";
    goto LABEL_59;
  }

  v9 = @"Untake";
LABEL_23:
  v12 = *(a1 + 4);
  v13 = @"UserInitiated";
  v14 = @"***Unknown***";
  if (v12 == 100)
  {
    v14 = @"NiceToHave";
  }

  if (v12 != 500)
  {
    v13 = v14;
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"N/A";
  }

  CFStringAppendFormat(Mutable, 0, @"\n\t\t ResourceChangeRequest: \n\t\t Type = %@ \n\t\t Priority = %@ \n", v9, v15);
  return v3;
}

BOOL OUTLINED_FUNCTION_4_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_4_5@<X0>(uint64_t a1@<X8>, CMTime *time1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a11, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteXPCStarkModeController_GetObjectID(a1, &a10);
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_4_13(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, os_log_type_t type, uint64_t a16, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_4_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteSystemController_getObjectID(a1, &a10);
}

CFIndex fsm_printListOfBorrowers(uint64_t a1, int a2)
{
  result = *(a1 + 16);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v4 = result;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
        CFDictionaryGetValue(ValueAtIndex, @"BorrowID");
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        result = FigCFDictionaryGetBooleanIfPresent();
        if (dword_1EB75E258)
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

void fsm_requestResourceModeChangeBorrow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14 = *MEMORY[0x1E69E9840];
  CurrentBorrower = fsm_getCurrentBorrower(a3);
  if (!CurrentBorrower)
  {
    if (*a3 != v5)
    {
      v7 = 8;
      goto LABEL_7;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  if (CurrentBorrower == v5)
  {
    goto LABEL_5;
  }

  v7 = 24;
LABEL_7:
  v8 = *(a3 + v7);
LABEL_8:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  SInt32 = FigCFNumberCreateSInt32();
  v11 = FigCFNumberCreateSInt32();
  CFDictionarySetValue(Mutable, @"BorrowerEntity", SInt32);
  CFDictionarySetValue(Mutable, @"UnborrowConstraint", v11);
  if (*(a2 + 8))
  {
    FigCFDictionarySetValue();
  }

  else if (dword_1EB75E258)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a2 + 4) >= v8)
  {
    CFDictionarySetValue(Mutable, @"BorrowSucceeded", *MEMORY[0x1E695E4D0]);
    *(a3 + 24) = *(a2 + 16);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"BorrowSucceeded", *MEMORY[0x1E695E4C0]);
    if (dword_1EB75E258)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  CFArrayInsertValueAtIndex(*(a3 + 16), 0, Mutable);
  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void FigStarkModeCreateDictionaryRepresentation(_DWORD *a1, void *a2)
{
  if (a2)
  {
    context = objc_autoreleasePoolPush();
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = a1[6];
    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 2;
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 2), @"appStateID"}];
    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v5), @"entity"}];
    [v3 addObject:v6];

    v7 = a1[4];
    v8 = a1[5];
    if (v7 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 == 2;
    }

    if (v8 == 11)
    {
      v10 = 2;
    }

    else
    {
      v10 = -1;
    }

    if (v8 == 10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 1), @"appStateID"}];
    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v9), @"entity"}];
    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v11), @"speechMode"}];
    [v3 addObject:v12];

    v13 = a1[7];
    if (v13 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13 == 2;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 3), @"appStateID"}];
    [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v14), @"entity"}];
    [v3 addObject:v15];

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = a1[2];
    v18 = a1[3];
    if (v17 == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 == 2;
    }

    if (v18 == 1)
    {
      v20 = 2;
    }

    else
    {
      v20 = v18 == 2;
    }

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 2), @"resourceID"}];
    [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v19), @"entity"}];
    [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v20), @"permanentEntity"}];
    [v16 addObject:v21];

    v22 = a1[1];
    if (*a1 == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = *a1 == 2;
    }

    if (v22 == 1)
    {
      v24 = 2;
    }

    else
    {
      v24 = v22 == 2;
    }

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 1), @"resourceID"}];
    [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v23), @"entity"}];
    [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v24), @"permanentEntity"}];
    [v16 addObject:v25];

    [v26 setObject:v3 forKey:@"appStates"];
    [v26 setObject:v16 forKey:@"resources"];
    *a2 = v26;

    objc_autoreleasePoolPop(context);
  }

  else
  {
    FigStarkModeCreateDictionaryRepresentation_cold_1();
  }
}

uint64_t fsm_getFigStarkModeResourceChangeRequestEncoding(int *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 <= 20)
  {
    if (!v3)
    {
      v5 = 1;
      v1 = 0;
      v2 = 0;
LABEL_20:
      v7 = 32;
      goto LABEL_24;
    }

    v6 = v3 == 20;
    if (v3 == 20)
    {
      v3 = 0;
    }

    else
    {
      v3 = a1[4];
    }

    if (v6)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 21:
        v3 = 0;
        v1 = 0;
        v2 = 0;
        v5 = 4;
        break;
      case 22:
        v1 = 0;
        v5 = 8;
        v3 = a1[4];
        v2 = 0;
        break;
      case 23:
        v3 = 0;
        v1 = 0;
        v2 = 0;
        v5 = 16;
        break;
      default:
        v5 = 0;
        v3 = a1[4];
        break;
    }
  }

  switch(v4)
  {
    case 500:
      v7 = 128;
      break;
    case 100:
      v7 = 64;
      break;
    case 0:
      goto LABEL_20;
    default:
      v7 = 0;
      break;
  }

LABEL_24:
  if (v2 == 1000)
  {
    v8 = 2048;
  }

  else
  {
    v8 = 0;
  }

  if (v2 == 500)
  {
    v9 = 1024;
  }

  else
  {
    v9 = v8;
  }

  if (v2 == 100)
  {
    v10 = 512;
  }

  else
  {
    v10 = 0;
  }

  if (v2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 256;
  }

  if (v2 <= 499)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (v1 == 1000)
  {
    v13 = 0x8000;
  }

  else
  {
    v13 = 0;
  }

  if (v1 == 500)
  {
    v14 = 0x4000;
  }

  else
  {
    v14 = v13;
  }

  if (v1 == 100)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = 0;
  }

  if (v1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 4096;
  }

  if (v1 <= 499)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  if (v3 == 1000)
  {
    v18 = 0x80000;
  }

  else
  {
    v18 = 0;
  }

  if (v3 == 500)
  {
    v19 = 0x40000;
  }

  else
  {
    v19 = v18;
  }

  if (v3 == 100)
  {
    v20 = 0x20000;
  }

  else
  {
    v20 = 0;
  }

  if (v3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x10000;
  }

  if (v3 <= 499)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  return v7 | v5 | v12 | v17 | v22;
}

uint64_t FigStarkModeChangeGetActions(__int128 *a1, __int128 *a2, unsigned int *a3, int a4)
{
  v8 = &qword_1EB75D000;
  if (a4)
  {
    if (sFigStarkModeActionMap_V1)
    {
      goto LABEL_7;
    }

    v9 = 1;
  }

  else
  {
    if (sFigStarkModeActionMap_V2)
    {
      goto LABEL_7;
    }

    v9 = 2;
  }

  fsm_setupStarkModeActionMap(v9, a2);
LABEL_7:
  v10 = a1[1];
  v54 = *a1;
  v55 = v10;
  FigStarkModeStateEncoding = fsm_getFigStarkModeStateEncoding(&v54);
  v12 = a2[1];
  v54 = *a2;
  v55 = v12;
  v13 = fsm_getFigStarkModeStateEncoding(&v54);
  v14 = a3[1];
  v15 = a3[14];
  if (v14 > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_1B19D88B0[v14];
  }

  v18 = a3[15];
  v17 = a3[16];
  v54 = *(a3 + 2);
  *&v55 = *(a3 + 6);
  v19 = fsm_getFigStarkModeResourceChangeRequestEncoding(&v54);
  v20 = 0;
  if (v15 > 9)
  {
    if (v15 == 10)
    {
      v20 = 0x200000000000;
    }

    else if (v15 == 11)
    {
      v20 = 0x400000000000;
    }
  }

  else if (v15 == -1)
  {
    v20 = 0x100000000000;
  }

  else if (!v15)
  {
    v20 = 0x80000000000;
  }

  if (v18 + 1 > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = qword_1B19D88C8[v18 + 1];
  }

  if (v17 + 1 > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = qword_1B19D88E0[v17 + 1];
  }

  v23 = v21 | v20;
  v24 = *a3;
  if (v24 > 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = dword_1B19D88F8[v24];
  }

  v26 = v16 | (v19 << 23);
  v51 = v22 | v23;
  v54 = *(a3 + 2);
  *&v55 = *(a3 + 3);
  v53 = v25 | (8 * fsm_getFigStarkModeResourceChangeRequestEncoding(&v54));
  v27 = a3[8];
  v28 = v27 == 0;
  v29 = v27 != 0;
  if (v28)
  {
    v30 = 4;
  }

  else
  {
    v30 = 5;
  }

  if (v15)
  {
    v29 = v30;
  }

  if (v18)
  {
    v29 |= 8u;
  }

  if (v17)
  {
    v31 = v29 | 0x10;
  }

  else
  {
    v31 = v29;
  }

  v52 = 2 * (a3[2] != 0);
  if (a4)
  {
    if (sFigStarkModeActionMap_V1)
    {
      Count = CFArrayGetCount(sFigStarkModeActionMap_V1);
      if (Count >= 1)
      {
        v33 = Count;
        LODWORD(v34) = 0;
        v35 = 0;
        v36 = v31;
        v37 = v51;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8[311], v35);
          v39 = fsm_getFigStarkModeChangeActionFromDict(ValueAtIndex, FigStarkModeStateEncoding, v13, v37 | v26, v36);
          v40 = v26;
          v41 = v8;
          v42 = v39;
          v43 = fsm_getFigStarkModeChangeActionFromDict(ValueAtIndex, FigStarkModeStateEncoding, v13, v53, v52);
          v44 = v42 | v34;
          v8 = v41;
          v26 = v40;
          v37 = v51;
          v34 = v44 | v43;
          ++v35;
        }

        while (v33 != v35);
        return v34;
      }
    }

    return 0;
  }

  if (!sFigStarkModeActionMap_V2)
  {
    return 0;
  }

  v45 = CFArrayGetCount(sFigStarkModeActionMap_V2);
  if (v45 < 1)
  {
    return 0;
  }

  v46 = v45;
  LODWORD(v34) = 0;
  for (i = 0; i != v46; ++i)
  {
    v48 = CFArrayGetValueAtIndex(sFigStarkModeActionMap_V2, i);
    v49 = fsm_getFigStarkModeChangeActionFromDict(v48, FigStarkModeStateEncoding, v13, v51 | v26, v31);
    v34 = v49 | v34 | fsm_getFigStarkModeChangeActionFromDict(v48, FigStarkModeStateEncoding, v13, v53, v52);
  }

  return v34;
}

CFTypeRef CMSMUtility_CopyStarkEndpointCentral()
{
  result = qword_1EB75E178;
  if (qword_1EB75E178)
  {
    return CFRetain(qword_1EB75E178);
  }

  return result;
}

void __fsm_postStateChanged_block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = *(a1 + 32);
  v2 = *(v20 + 16);
  v19[2] = __fsm_postStateChanged_block_invoke_2;
  v19[3] = &unk_1E7AE7B30;
  v21 = *(a1 + 120);
  v19[4] = &v22;
  MXDispatchSync("fsm_postStateChanged_block_invoke", "FigStarkMode.m", 172, 0, 0, v2, v19);
  if (*(v23 + 24))
  {
    v6 = *(*(a1 + 40) + 32);
    v7 = *(a1 + 188);
    v8 = *(v6 + 16);
    v9 = *(a1 + 140);
    v18[0] = *(a1 + 124);
    v18[1] = v9;
    v10 = *(a1 + 172);
    v17[0] = *(a1 + 156);
    v17[1] = v10;
    v11 = *(a1 + 96);
    v15[2] = *(a1 + 80);
    v15[3] = v11;
    v16 = *(a1 + 112);
    v12 = *(a1 + 64);
    v15[0] = *(a1 + 48);
    v15[1] = v12;
    v8(v6, v18, v17, v15, v7, v3, v4, v5);
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

  _Block_object_dispose(&v22, 8);
}

void __FigEndpointCreateCentral_block_invoke(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4, int a5)
{
  v128 = *MEMORY[0x1E69E9840];
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v9)
  {
    v10 = v9;
    v113 = *a2;
    v114 = a2[1];
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = *(a3 + 3);
    v112 = *(a3 + 1);
    v14 = a4[1];
    v118 = *a4;
    v119 = v14;
    v120[0] = a4[2];
    *(v120 + 12) = *(a4 + 44);
    v15 = *(a4 + 15);
    v16 = *(a4 + 8);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
LABEL_231:
      CFRelease(v10);
      return;
    }

    v18 = DerivedStorage;
    if (*DerivedStorage)
    {
      LODWORD(v115) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_231;
    }

    *type = 0;
    if (a5)
    {
      central_HandleCarModeStateChange_cachedMainAudioEntity = 0;
      *(DerivedStorage + 3) = 1;
    }

    v111 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(CMBaseObject, *MEMORY[0x1E6962310], v111, type);
      v21 = *type;
    }

    v22 = *MEMORY[0x1E695E4D0];
    v23 = v21 == *MEMORY[0x1E695E4D0];
    *v121 = v113;
    v122 = v114;
    *&v115 = v11;
    *(&v115 + 1) = __PAIR64__(v13, v12);
    v108 = v13;
    v116 = v112;
    *cf = v118;
    v124 = v119;
    *v125 = v120[0];
    *&v125[12] = *(v120 + 12);
    v126 = v15;
    v127 = v16;
    v25 = FigStarkModeChangeGetActions(v121, &v115, cf, v23);
    v26 = *type;
    if (*type)
    {
      CFRelease(*type);
      *type = 0;
    }

    if (a5 && (v25 & 0x10000) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v115) = 0;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v28 = v115;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          LODWORD(v121[0]) = 136315138;
          *(v121 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl(v29, 0, cf, 128, &dword_1B17A2000, v27, 0, "-endpoint_central- %s: Stark mode change action is LetiOSGoActiveUponInitialModes", v121);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerSendCarPlayDisableBluetoothCommand();
      *(v18 + 1) = 1;
      MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPlayingSession", v22);
      v26 = MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", v22);
    }

    if (a5 && (v25 & 1) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v115) = 0;
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v31 = v115;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
        }

        else
        {
          v32 = v31 & 0xFFFFFFFE;
        }

        if (v32)
        {
          LODWORD(v121[0]) = 136315138;
          *(v121 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl(v32, 0, cf, 128, &dword_1B17A2000, v30, 0, "-endpoint_central- %s: Stark mode change action is LetCarGoActiveUponInitialModesIfPossible", v121);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToBorrowStarkMainAudio", cf))
      {
        v33 = 0;
      }

      else
      {
        v33 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", cf))
      {
        v34 = 0;
      }

      else
      {
        v34 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"CurrentPlayingSessionIsRoutedViaCarBT", cf))
      {
        v35 = 1;
      }

      else
      {
        v35 = FigCFEqual() == 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      v36 = v33 || v34;
      if (v15 != 1)
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
        if (v35)
        {
          if (v36)
          {
            goto LABEL_61;
          }

          v38 = v18[2];
          v39 = kCMSessionGlobalProperty_NowPlayingAppShouldResumeForCarPlay;
        }

        else
        {
          v38 = v18[2];
          v39 = kCMSessionGlobalProperty_MakeStarkPortRoutableForPlayingSession;
        }

        v26 = MXSessionSetProperty(v38, *v39, v22);
        goto LABEL_61;
      }

      if (MXSessionCopyProperty(v18[2], @"CurrentPhoneCallIsRoutedViaCarBT", cf))
      {
        v37 = 1;
      }

      else
      {
        v37 = FigCFEqual() == 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v37)
      {
        MXSessionBeginInterruption(v18[2]);
        v40 = !v36;
      }

      else
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
        MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPlayingSession", v22);
        v40 = 0;
      }

      v41 = *MEMORY[0x1E695E4C0];
      v26 = MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", *MEMORY[0x1E695E4C0]);
      if (v40)
      {
        MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", v41);
        v26 = MXSessionBeginInterruption(v18[2]);
      }
    }

LABEL_61:
    if (!a5 || (v25 & 0x20000) == 0)
    {
      goto LABEL_90;
    }

    if (dword_1EB75E218)
    {
      LODWORD(v115) = 0;
      v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v43 = v115;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
      }

      else
      {
        v44 = v43 & 0xFFFFFFFE;
      }

      if (v44)
      {
        LODWORD(v121[0]) = 136315138;
        *(v121 + 4) = "central_HandleCarModeStateChange";
        _os_log_send_and_compose_impl(v44, 0, cf, 128, &dword_1B17A2000, v42, 0, "-endpoint_central- %s: Stark mode change action is LetCarGoActiveUponInitialBorrowWithDelayedLUM", v121);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf[0] = 0;
    if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", cf))
    {
      v45 = 1;
    }

    else
    {
      v45 = FigCFEqual() == 0;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (MXSessionCopyProperty(v18[2], @"CurrentPlayingSessionIsRoutedViaCarBT", cf))
    {
      v46 = 1;
    }

    else
    {
      v46 = FigCFEqual() == 0;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    FigRoutingManagerSendCarPlayDisableBluetoothCommand();
    *(v18 + 1) = 1;
    if (v46)
    {
      if (v45)
      {
        v47 = 0;
        goto LABEL_85;
      }
    }

    else
    {
      MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPlayingSession", v22);
    }

    MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", *MEMORY[0x1E695E4C0]);
    v47 = 1;
LABEL_85:
    MXSessionBeginInterruption(v18[2]);
    v26 = CMSMNP_CopyNowPlayingAppWasPlayingUponCarPlayDisconnectFromDisk();
    v48 = v26;
    if (v47)
    {
      v49 = 0;
    }

    else
    {
      v26 = FigCFEqual();
      v49 = v26 != 0;
    }

    *(v18 + 2) = v49;
    if (v48)
    {
      CFRelease(v48);
    }

LABEL_90:
    if (a5 && (v25 & 2) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v115) = 0;
        v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v51 = v115;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
        }

        else
        {
          v52 = v51 & 0xFFFFFFFE;
        }

        if (v52)
        {
          LODWORD(v121[0]) = 136315138;
          *(v121 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl(v52, 0, cf, 128, &dword_1B17A2000, v50, 0, "-endpoint_central- %s: Stark mode change action is LetCarGoActiveUponInitialModes", v121);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerSendCarPlayDisableBluetoothCommand();
      *(v18 + 1) = 1;
      MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", *MEMORY[0x1E695E4C0]);
      v26 = MXSessionBeginInterruption(v18[2]);
    }

    if (a5 && (v25 & 4) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v115) = 0;
        v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v54 = v115;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 0xFFFFFFFE;
        }

        if (v55)
        {
          LODWORD(v121[0]) = 136315138;
          *(v121 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl(v55, 0, cf, 128, &dword_1B17A2000, v53, 0, "-endpoint_central- %s: Stark mode change action is LetCarGoActiveUponInitialModesIfiOSNotPlaying", v121);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToBorrowStarkMainAudio", cf))
      {
        v56 = 0;
      }

      else
      {
        v56 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", cf))
      {
        v57 = 0;
      }

      else
      {
        v57 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"CurrentPlayingSessionIsRoutedViaCarBT", cf))
      {
        v58 = 0;
      }

      else
      {
        v58 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      FigRoutingManagerSendCarPlayDisableBluetoothCommand();
      *(v18 + 1) = 1;
      v59 = v18[2];
      if (v58 || v56 || v57)
      {
        v26 = MXSessionSetProperty(v59, @"MakeStarkPortRoutableForPlayingSession", v22);
      }

      else
      {
        MXSessionSetProperty(v59, @"NowPlayingAppShouldResumeForCarPlay", *MEMORY[0x1E695E4C0]);
        v26 = MXSessionBeginInterruption(v18[2]);
      }
    }

    else if (!a5 && (v25 & 8) != 0)
    {
      v26 = FigEndpointCentralEntityHoldsResource(v10, @"Car", @"MainAudio");
      if (v26)
      {
        v26 = MXSessionBeginInterruption(v18[2]);
      }

      if (!*(v18 + 1))
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
      }
    }

    if ((v25 & 0x10) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v115) = 0;
        v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v61 = v115;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v62 = v61;
        }

        else
        {
          v62 = v61 & 0xFFFFFFFE;
        }

        if (v62)
        {
          LODWORD(v121[0]) = 136315138;
          *(v121 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl(v62, 0, cf, 128, &dword_1B17A2000, v60, 0, "-endpoint_central- %s: Stark mode change action is LetCarGoInactive", v121);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXSessionEndInterruption(v18[2], @"resumable.carMainAudioUnborrowed");
      if (!*(v18 + 1))
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
      }

      *&v115 = 0;
      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToBorrowStarkMainAudio", &v115))
      {
        v63 = 0;
      }

      else
      {
        v63 = FigCFEqual() != 0;
      }

      if (v115)
      {
        CFRelease(v115);
        *&v115 = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", &v115))
      {
        v64 = 0;
      }

      else
      {
        v64 = FigCFEqual() != 0;
      }

      v26 = v115;
      if (v115)
      {
        CFRelease(v115);
        *&v115 = 0;
      }

      if (v63 || v64)
      {
        v65 = v18[2];
        v66 = *MEMORY[0x1E695E4C0];
      }

      else
      {
        if (!*(v18 + 2))
        {
          goto LABEL_160;
        }

        if (dword_1EB75E218)
        {
          v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v65 = v18[2];
        v66 = v22;
      }

      v26 = MXSessionSetProperty(v65, @"NowPlayingAppShouldResumeForCarPlay", v66);
      *(v18 + 2) = 0;
    }

LABEL_160:
    if ((v25 & 0x20) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v115) = 0;
        v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v69 = v115;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v70 = v69;
        }

        else
        {
          v70 = v69 & 0xFFFFFFFE;
        }

        if (v70)
        {
          LODWORD(v121[0]) = 136315138;
          *(v121 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl(v70, 0, cf, 128, &dword_1B17A2000, v68, 0, "-endpoint_central- %s: Stark mode change action is LetCarGoInactiveIfiOSWillPlay", v121);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToBorrowStarkMainAudio", cf))
      {
        v71 = 0;
      }

      else
      {
        v71 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", cf))
      {
        v72 = 0;
      }

      else
      {
        v72 = FigCFEqual() != 0;
      }

      v26 = cf[0];
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v72 || v71)
      {
        v26 = MXSessionEndInterruption(v18[2], @"resumable.carMainAudioUnborrowed");
      }

      if (!*(v18 + 1))
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
      }
    }

    if ((v25 & 0x4000) != 0)
    {
      CMSessionMgrInterruptVoiceAssistantIfCarSupportsAuxStream(v26, v24);
      if ((v25 & 0x800) == 0)
      {
LABEL_184:
        if ((v25 & 0x1000) == 0)
        {
          goto LABEL_185;
        }

        goto LABEL_196;
      }
    }

    else if ((v25 & 0x800) == 0)
    {
      goto LABEL_184;
    }

    if (dword_1EB75E218)
    {
      LODWORD(v115) = 0;
      v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v74 = v115;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v75 = v74;
      }

      else
      {
        v75 = v74 & 0xFFFFFFFE;
      }

      if (v75)
      {
        LODWORD(v121[0]) = 136315138;
        *(v121 + 4) = "central_HandleCarModeStateChange";
        _os_log_send_and_compose_impl(v75, 0, cf, 128, &dword_1B17A2000, v73, 0, "-endpoint_central- %s: Stark mode change action is MakeStarkPortRoutableForPlayingSession", v121);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPlayingSession", v22);
    if ((v25 & 0x1000) == 0)
    {
LABEL_185:
      if ((v25 & 0x8000) == 0)
      {
        goto LABEL_214;
      }

      goto LABEL_204;
    }

LABEL_196:
    if (dword_1EB75E218)
    {
      LODWORD(v115) = 0;
      v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v77 = v115;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v78 = v77;
      }

      else
      {
        v78 = v77 & 0xFFFFFFFE;
      }

      if (v78)
      {
        LODWORD(v121[0]) = 136315138;
        *(v121 + 4) = "central_HandleCarModeStateChange";
        _os_log_send_and_compose_impl(v78, 0, cf, 128, &dword_1B17A2000, v76, 0, "-endpoint_central- %s: Stark mode change action is MakeStarkPortRoutableForPhoneCall", v121);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPhoneCall", v22);
    if ((v25 & 0x8000) == 0)
    {
LABEL_214:
      if (v12 == 1 && v108 == 2)
      {
        v83 = v22;
      }

      else
      {
        v83 = *MEMORY[0x1E695E4C0];
      }

      v84 = MXSessionSetProperty(v18[2], @"StarkMainAudioIsOwnedByiOSButBorrowedByCar", v83);
      if (v12 != central_HandleCarModeStateChange_cachedMainAudioEntity)
      {
        if (v12 == 2 || v12 == 1)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v84 = CMNotificationCenterPostNotification();
        }

        v86 = MXGetSerialQueue(v84, v85);
        cf[0] = MEMORY[0x1E69E9820];
        cf[1] = 3221225472;
        *&v124 = __central_UpdateCarPlayFallbackRoutability_block_invoke;
        *(&v124 + 1) = &__block_descriptor_37_e5_v8__0l;
        v125[4] = v12 == 2;
        *v125 = 2 * (v12 == 2);
        MXDispatchAsync("central_UpdateCarPlayFallbackRoutability", "FigEndpoint_Central.m", 335, 0, 0, v86, cf);
        central_HandleCarModeStateChange_cachedMainAudioEntity = v12;
      }

      if ((v25 & 0x40) != 0)
      {
        v87 = FigEndpointUtility_CopyEndpointType();
        v88 = FigEndpointUtility_CopyEndpointTransportType();
        cf[0] = 0;
        FigEndpointCopyStreamsForTypeAndSubType();
        if (cf[0])
        {
          v105 = v25;
          v106 = v22;
          v109 = v10;
          Count = CFArrayGetCount(cf[0]);
          if (Count >= 1)
          {
            v90 = Count;
            v91 = 0;
            v92 = *MEMORY[0x1E69625A0];
            do
            {
              v121[0] = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(cf[0], v91);
              v94 = FigEndpointStreamGetCMBaseObject();
              v95 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v95)
              {
                v95(v94, v92, 0, v121);
              }

              if (FigCFEqual())
              {
                CMScreenSuspendStream(ValueAtIndex);
              }

              if (v121[0])
              {
                CFRelease(v121[0]);
              }

              ++v91;
            }

            while (v90 != v91);
          }

          v22 = v106;
          v10 = v109;
          LOWORD(v25) = v105;
          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        if (v87)
        {
          CFRelease(v87);
        }

        if (v88)
        {
          CFRelease(v88);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if ((v25 & 0x80) == 0)
        {
LABEL_227:
          if ((v25 & 0x2000) == 0)
          {
            goto LABEL_228;
          }

          goto LABEL_267;
        }
      }

      else if ((v25 & 0x80) == 0)
      {
        goto LABEL_227;
      }

      v96 = FigEndpointUtility_CopyEndpointType();
      v97 = FigEndpointUtility_CopyEndpointTransportType();
      cf[0] = 0;
      FigEndpointCopyStreamsForTypeAndSubType();
      if (cf[0])
      {
        v107 = v22;
        v110 = v10;
        v98 = CFArrayGetCount(cf[0]);
        if (v98 >= 1)
        {
          v99 = v98;
          v100 = 0;
          v101 = *MEMORY[0x1E69625A0];
          do
          {
            v121[0] = 0;
            v102 = CFArrayGetValueAtIndex(cf[0], v100);
            v103 = FigEndpointStreamGetCMBaseObject();
            v104 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v104)
            {
              v104(v103, v101, 0, v121);
            }

            if (FigCFEqual())
            {
              CMScreenResumeStream(v102);
            }

            if (v121[0])
            {
              CFRelease(v121[0]);
            }

            ++v100;
          }

          while (v99 != v100);
        }

        v22 = v107;
        v10 = v110;
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      if (v96)
      {
        CFRelease(v96);
      }

      if (v97)
      {
        CFRelease(v97);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if ((v25 & 0x2000) == 0)
      {
LABEL_228:
        if ((v25 & 0x100) == 0)
        {
          goto LABEL_229;
        }

        goto LABEL_268;
      }

LABEL_267:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if ((v25 & 0x100) == 0)
      {
LABEL_229:
        if ((v25 & 0x400) == 0)
        {
          goto LABEL_231;
        }

LABEL_230:
        MXSessionSetProperty(v18[2], @"CarSpeechStateChanged", v22);
        goto LABEL_231;
      }

LABEL_268:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_231;
      }

      goto LABEL_230;
    }

LABEL_204:
    if (dword_1EB75E218)
    {
      LODWORD(v115) = 0;
      v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v80 = v115;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v81 = v80;
      }

      else
      {
        v81 = v80 & 0xFFFFFFFE;
      }

      if (v81)
      {
        LODWORD(v121[0]) = 136315138;
        *(v121 + 4) = "central_HandleCarModeStateChange";
        _os_log_send_and_compose_impl(v81, 0, cf, 128, &dword_1B17A2000, v79, 0, "-endpoint_central- %s: Stark mode change action is SendDisableBluetoothCommandIfNotSent", v121);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!a5 && !*(v18 + 1))
    {
      FigRoutingManagerSendCarPlayDisableBluetoothCommand();
      *(v18 + 1) = 1;
    }

    goto LABEL_214;
  }
}