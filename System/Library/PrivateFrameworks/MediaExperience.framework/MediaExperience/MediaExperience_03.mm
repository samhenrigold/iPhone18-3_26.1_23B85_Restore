void *CMSessionMgrFindVolumeButtonClient(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v124 = *MEMORY[0x1E69E9840];
  if (!CMSMUtility_IsSharePlayCapableCallSessionActive(a1, a2))
  {
    goto LABEL_13;
  }

  v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (!v4)
  {
LABEL_12:

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = *v111;
LABEL_4:
  v7 = 0;
  while (1)
  {
    if (*v111 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v110 + 1) + 8 * v7);
    if (objc_msgSend_isActive(v8))
    {
      if (CMSUtility_GetWantsToBeVolumeButtonClient(v8) && CMSUtility_IsSharePlayCapableMediaSession(v8, v9))
      {
        break;
      }
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v110 objects:v123 count:16];
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: SharePlay-capable media session", objc_msgSend(v8, "clientName")];

  if (v8)
  {
    goto LABEL_66;
  }

LABEL_14:
  v11 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v106 objects:v122 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v107;
LABEL_16:
    v15 = 0;
    while (1)
    {
      if (*v107 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v8 = *(*(&v106 + 1) + 8 * v15);
      if ([v8 hasPhoneCallBehavior])
      {
        if (objc_msgSend_isActive(v8) && CMSUtility_GetWantsToBeVolumeButtonClient(v8))
        {
          break;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v106 objects:v122 count:16];
        if (v13)
        {
          goto LABEL_16;
        }

        goto LABEL_24;
      }
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: phone call", objc_msgSend(v8, "clientName")];

    v16 = 0x1ED6D2000uLL;
    if (v8)
    {
      goto LABEL_66;
    }
  }

  else
  {
LABEL_24:

    v16 = 0x1ED6D2000;
  }

  v17 = [objc_msgSend((v16 + 2272) "sharedInstance")];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v102 objects:v121 count:16];
  v71 = v2;
  if (!v18)
  {
LABEL_78:
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v31 = [v17 countByEnumeratingWithState:&v98 objects:v120 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v99;
LABEL_80:
      v34 = 0;
      while (1)
      {
        if (*v99 != v33)
        {
          objc_enumerationMutation(v17);
        }

        v8 = *(*(&v98 + 1) + 8 * v34);
        if (CMSUtility_GetIsActive(v8))
        {
          CMSUtility_GetAudioCategory(v8, v35);
          if (FigCFEqual())
          {
            CMSUtility_GetAudioMode(v8, v36);
            if (FigCFEqual())
            {
              break;
            }
          }
        }

        if (v32 == ++v34)
        {
          v32 = [v17 countByEnumeratingWithState:&v98 objects:v120 count:16];
          if (v32)
          {
            goto LABEL_80;
          }

          goto LABEL_88;
        }
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: Active EmergencyAlert~CustomVolume session", objc_msgSend(v8, "clientName")];

      v2 = v71;
      v37 = 0x1ED6D2000uLL;
      if (v8)
      {
        goto LABEL_66;
      }
    }

    else
    {
LABEL_88:

      v2 = v71;
      v37 = 0x1ED6D2000;
    }

    v38 = [objc_msgSend((v37 + 2272) "sharedInstance")];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v39 = [v38 countByEnumeratingWithState:&v94 objects:v119 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v95;
LABEL_92:
      v42 = 0;
      while (1)
      {
        if (*v95 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v8 = *(*(&v94 + 1) + 8 * v42);
        if ([v8 wantsVolumeChangesWhenPausedOrInactive])
        {
          break;
        }

        if (v40 == ++v42)
        {
          v40 = [v38 countByEnumeratingWithState:&v94 objects:v119 count:16];
          if (v40)
          {
            goto LABEL_92;
          }

          goto LABEL_98;
        }
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: wantsVolumeChangesWhenPausedOrInactive (i.e. a volume slider)", objc_msgSend(v8, "clientName")];

      v43 = 0x1ED6D2000uLL;
      if (v8)
      {
        goto LABEL_66;
      }
    }

    else
    {
LABEL_98:

      v43 = 0x1ED6D2000;
    }

    v45 = [objc_msgSend((v43 + 2272) "sharedInstance")];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v46 = [v45 countByEnumeratingWithState:&v90 objects:v118 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v91;
LABEL_103:
      v49 = 0;
      while (1)
      {
        if (*v91 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v8 = *(*(&v90 + 1) + 8 * v49);
        if (objc_msgSend_isActive(v8))
        {
          if ([v8 wantsVolumeChangesWhenPaused] && CMSUtility_GetWantsToBeVolumeButtonClient(v8))
          {
            break;
          }
        }

        if (v47 == ++v49)
        {
          v47 = [v45 countByEnumeratingWithState:&v90 objects:v118 count:16];
          if (v47)
          {
            goto LABEL_103;
          }

          goto LABEL_111;
        }
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: wantsVolumeChangesWhenPaused (and session is active)", objc_msgSend(v8, "clientName")];

      v50 = 0x1ED6D2000uLL;
      if (v8)
      {
        goto LABEL_66;
      }
    }

    else
    {
LABEL_111:

      v50 = 0x1ED6D2000;
    }

    v51 = +[MXSystemController getPIDForAnyAppThatWantsVolumeChanges];
    if (v51)
    {
      v52 = v51;
      v17 = [objc_msgSend((v50 + 2272) "sharedInstance")];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v53 = [v17 countByEnumeratingWithState:&v86 objects:v117 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v87;
LABEL_116:
        v56 = 0;
        while (1)
        {
          if (*v87 != v55)
          {
            objc_enumerationMutation(v17);
          }

          v8 = *(*(&v86 + 1) + 8 * v56);
          if ([objc_msgSend(v8 "clientPID")] == v52 && objc_msgSend_isActive(v8) && CMSUtility_GetWantsToBeVolumeButtonClient(v8))
          {
            break;
          }

          if (v54 == ++v56)
          {
            v54 = [v17 countByEnumeratingWithState:&v86 objects:v117 count:16];
            if (v54)
            {
              goto LABEL_116;
            }

            goto LABEL_126;
          }
        }

        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: appWantsVolumeChanges is true, and session is active", objc_msgSend(v8, "clientName")];
        if (v8)
        {
          goto LABEL_57;
        }
      }

LABEL_126:
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v57 = [v17 countByEnumeratingWithState:&v82 objects:v116 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v83;
LABEL_128:
        v60 = 0;
        while (1)
        {
          if (*v83 != v59)
          {
            objc_enumerationMutation(v17);
          }

          v8 = *(*(&v82 + 1) + 8 * v60);
          if ([objc_msgSend(v8 "clientPID")] == v52)
          {
            if (CMSUtility_GetWantsToBeVolumeButtonClient(v8))
            {
              break;
            }
          }

          if (v58 == ++v60)
          {
            v58 = [v17 countByEnumeratingWithState:&v82 objects:v116 count:16];
            if (v58)
            {
              goto LABEL_128;
            }

            goto LABEL_135;
          }
        }

        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: appWantsVolumeChanges is true, and session is not active", objc_msgSend(v8, "clientName")];

        v2 = v71;
        v50 = 0x1ED6D2000uLL;
        if (v8)
        {
          goto LABEL_66;
        }
      }

      else
      {
LABEL_135:

        v2 = v71;
        v50 = 0x1ED6D2000;
      }
    }

    if (CMSMDeviceState_DeviceIsLocked())
    {
      v61 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
      if (!v61)
      {
        return 0;
      }

      v62 = v61;
      v17 = [objc_msgSend((v50 + 2272) "sharedInstance")];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v63 = [v17 countByEnumeratingWithState:&v78 objects:v115 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v79;
        while (2)
        {
          for (i = 0; i != v64; ++i)
          {
            if (*v79 != v65)
            {
              objc_enumerationMutation(v17);
            }

            v8 = *(*(&v78 + 1) + 8 * i);
            if ([objc_msgSend(v8 "clientPID")] == v62 && CMSUtility_GetWantsToBeVolumeButtonClient(v8))
            {
              v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: nowPlayingApp and screen is locked", objc_msgSend(v8, "clientName")];
              goto LABEL_57;
            }
          }

          v64 = [v17 countByEnumeratingWithState:&v78 objects:v115 count:16];
          if (v64)
          {
            continue;
          }

          break;
        }

        v8 = 0;
LABEL_57:
        v2 = v71;
        goto LABEL_65;
      }
    }

    else
    {
      v17 = [objc_msgSend((v50 + 2272) "sharedInstance")];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v67 = [v17 countByEnumeratingWithState:&v74 objects:v114 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v75;
        while (2)
        {
          for (j = 0; j != v68; ++j)
          {
            if (*v75 != v69)
            {
              objc_enumerationMutation(v17);
            }

            v8 = *(*(&v74 + 1) + 8 * j);
            if (objc_msgSend_isActive(v8) && ([v8 applicationState] == 8 || objc_msgSend(v8, "isTheAssistant")) && CMSUtility_GetWantsToBeVolumeButtonClient(v8))
            {
              v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: VoiceAssistant OR session is active and app is in the foreground", objc_msgSend(v8, "clientName")];
              goto LABEL_65;
            }
          }

          v68 = [v17 countByEnumeratingWithState:&v74 objects:v114 count:16];
          if (v68)
          {
            continue;
          }

          break;
        }
      }
    }

    v8 = 0;
    goto LABEL_65;
  }

  v19 = v18;
  v72 = 0;
  v73 = 0;
  v20 = 0;
  v8 = 0;
  v21 = *v103;
  while (2)
  {
    for (k = 0; k != v19; ++k)
    {
      if (*v103 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v102 + 1) + 8 * k);
      if (objc_msgSend_isActive(v23) && [v23 isPlaying] && CMSUtility_GetWantsToBeVolumeButtonClient(v23))
      {
        if ((([v23 doesntActuallyPlayAudio] & 1) != 0 || objc_msgSend(v23, "isOutputMuted")) && !CMSMDeviceState_IsHomePodHub() && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v23) && (v24 = -[MXNowPlayingAppManager nowPlayingAppPID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppPID"), v24 == objc_msgSend(objc_msgSend(v23, "clientPID"), "intValue")))
        {
          v73 = v23;
        }

        else if (([v23 doesntActuallyPlayAudio] & 1) == 0)
        {
          if (CMSUtility_IsSessionOnlyPlayingLocally(v23) && !CMSUtility_ShouldSilentMute(v23) && ([v23 isOutputMuted] & 1) == 0)
          {
            v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: session only playing locally", objc_msgSend(v23, "clientName")];
            v8 = v23;
            if (v23)
            {
              goto LABEL_57;
            }

            goto LABEL_58;
          }

          if (!CMSMDeviceState_IsHomePodHub())
          {
            if (CMSUtility_ShouldSilentMute(v23))
            {
              v20 = v23;
            }

            else if ([v23 isOutputMuted])
            {
              v72 = v23;
            }

            else
            {
              v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client might be %@ for reason: session playing but not only locally", objc_msgSend(v23, "clientName")];
              v8 = v23;
            }
          }
        }
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v102 objects:v121 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

  if (v8)
  {
    goto LABEL_57;
  }

LABEL_58:
  v2 = v71;
  v25 = v73;
  if (v73)
  {
    v26 = @"Volume button client is %@ for reason: Now Playing session playing but muted";
  }

  else
  {
    v25 = v72;
    if (v72)
    {
      v26 = @"Volume button client is %@ for reason: session playing but output muted";
    }

    else
    {
      if (!v20)
      {
        goto LABEL_78;
      }

      v26 = @"Volume button client is %@ for reason: session playing but silent muted";
      v25 = v20;
    }
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v26, objc_msgSend(v25, "clientName")];
  v8 = v25;
LABEL_65:

LABEL_66:
  if (v8)
  {
    v27 = v10 == 0;
  }

  else
  {
    v27 = 1;
  }

  v29 = v27 || v2 > 0xE || ((1 << v2) & 0x5836) == 0;
  if (!v29 && dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v8;
}

uint64_t CMSMUtility_IsSharePlayCapableCallSessionActive(uint64_t a1, uint64_t a2)
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
        if (CMSUtility_GetIsActive(v6) && ([v6 isSharePlayCapableCallSession] & 1) != 0)
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

BOOL CMSMDeviceState_DeviceIsLocked()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75D32A;
  v1 = byte_1EB75D330;
  FigSimpleMutexUnlock();
  if (!v1)
  {
    return sMKBGetLockStatus && sMKBGetLockStatus(0) != 0;
  }

  return v0;
}

uint64_t MX_FeatureFlags_IsAdaptiveVolumeControlEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_sAdaptiveVolumeControlEnabled;
}

uint64_t CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (!a6 && !a7 && !a8)
  {
    return 4294954315;
  }

  v21 = 0;
  theArray = 0;
  v20 = 0;
  CMSMUtility_CopyDeviceRoutesForInactiveRouteConfiguration(a1, a2, a3, a4, &theArray, &v21, &v20);
  Count = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  if (Count > a5)
  {
    if (a6)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v15 = CFRetain(ValueAtIndex);
      *a6 = v15;
      if (CFEqual(v15, &stru_1F2890CF0))
      {
        *a6 = 0;
      }
    }

    if (a7)
    {
      v16 = CFArrayGetValueAtIndex(v21, 0);
      v17 = CFRetain(v16);
      *a7 = v17;
      if (CFEqual(v17, &stru_1F2890CF0))
      {
        *a7 = 0;
      }
    }

    if (a8)
    {
      v18 = CFArrayGetValueAtIndex(v20, 0);
      v19 = CFRetain(v18);
      *a8 = v19;
      if (CFEqual(v19, &stru_1F2890CF0))
      {
        *a8 = 0;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v21)
  {
    CFRelease(v21);
    v21 = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return 0;
}

void CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(const __CFArray *a1, CFArrayRef theArray, CFArrayRef *a3, __CFArray **a4, void *a5, __CFArray **a6)
{
  if (!theArray)
  {
    Count = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(theArray);
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = CFArrayGetCount(a1);
LABEL_6:
  if (v13 <= 0 && Count < 1)
  {
    return;
  }

  if (v13 && !Count)
  {
    v14 = a1;
LABEL_15:

    vautility_copyRoutesInfoFromPorts(v14, a3, a4, a6);
    return;
  }

  if (!v13 && Count)
  {
    v14 = theArray;
    goto LABEL_15;
  }

  if (v13 && Count)
  {
    vautility_copyRoutesInfoFromPorts(a1, a3, a4, a6);
    FigCFArrayGetInt64AtIndex();
    v15 = vaeCopyDeviceIdentifierFromVADPort(0);
    if (a5)
    {
      *a5 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
    }

    if (v15)
    {
      CFRelease(v15);
    }

    FigCFArrayGetInt64AtIndex();
    PortTypeFromPortID = vaeGetPortTypeFromPortID(0);
    v17 = vaeGetPortTypeFromPortID(0);
    v18 = CMSMVAUtility_CopyFigIODeviceNameFromVADPortTypes(PortTypeFromPortID, v17);
    v19 = v18;
    if (a3 && v18)
    {
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, *a3);
      CFArraySetValueAtIndex(MutableCopy, 0, v19);
      if (*a3)
      {
        CFRelease(*a3);
      }

      *a3 = MutableCopy;
    }

    else if (!v18)
    {
      return;
    }

    CFRelease(v19);
  }
}

void *pvmGetMappedRouteIdentifier(void *a1, void *a2)
{
  if (!a1 || ([a2 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(a2, "hasPrefix:", @"HeadsetBT"))
  {
    return a1;
  }

  v4 = [a1 componentsSeparatedByString:@"-"];

  return [v4 firstObject];
}

void pvmAssureCurrentCategoryAndDeviceRoute()
{
  v0 = sStorage;
  if (!*(sStorage + 232))
  {
    v1 = *(sStorage + 240);
    if (v1)
    {
      CFRelease(v1);
      v0 = sStorage;
      *(sStorage + 240) = 0;
    }

    MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(@"Audio/Video", 0);
    pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, v0 + 29, v0 + 30);
    v0 = sStorage;
  }

  if (!v0[34])
  {
    v3 = v0[25];
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"Speaker");
    }

    else
    {
      Value = @"Speaker";
    }

    if (!Value)
    {
      Value = @"Speaker";
    }

    v5 = CFRetain(Value);
    v6 = sStorage;
    *(sStorage + 272) = v5;
    v7 = *(v6 + 280);
    if (v7)
    {
      CFRelease(v7);
      v6 = sStorage;
      *(sStorage + 280) = 0;
    }

    v8 = *(v6 + 296);
    if (v8)
    {
      CFRelease(v8);
      *(sStorage + 296) = 0;
    }

    *(sStorage + 304) = FigCFEqual();
    *(sStorage + 305) = FigCFEqual();
  }
}

__CFString *PVMGetMappedEndpointType(uint64_t a1)
{
  v1 = @"Unspecified";
  value = @"Unspecified";
  if (!*(a1 + 8))
  {
    return v1;
  }

  v2 = *(sStorage + 120);
  if (!v2)
  {
    return v1;
  }

  v4 = *MEMORY[0x1E695E480];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v2);
  if (!Copy)
  {
    return v1;
  }

  v6 = Copy;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(sStorage + 200);
    if (v8)
    {
      v9 = CFDictionaryGetValue(v8, *(a1 + 8));
      v10 = *(a1 + 8);
    }

    else
    {
      v10 = *(a1 + 8);
      v9 = v10;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  MappedRouteIdentifier = pvmGetMappedRouteIdentifier(*(a1 + 24), v10);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      if (([v14 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(v14, "hasPrefix:", @"HeadsetBT"))
      {
        MutableCopy = CFStringCreateMutableCopy(v4, 16, v11);
        CFStringAppend(MutableCopy, @"~");
        CFStringAppend(MutableCopy, v13);
        if (!MappedRouteIdentifier)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }
  }

  MutableCopy = CFStringCreateMutableCopy(v4, 16, v11);
  if (MappedRouteIdentifier)
  {
LABEL_17:
    CFStringAppend(MutableCopy, @"~");
    CFStringAppend(MutableCopy, MappedRouteIdentifier);
  }

LABEL_18:
  CFDictionaryGetValueIfPresent(v6, MutableCopy, &value);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  CFRelease(v6);
  return value;
}

float PVMGetVolumePreference(__CFString *a1, const void *a2, uint64_t a3)
{
  v20 = 0;
  cf = 0;
  if (!*(a3 + 8))
  {
    *(a3 + 8) = @"Speaker";
  }

  if (!a1)
  {
    a1 = @"Audio/Video";
  }

  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, &cf, &v20);
  v5 = *(a3 + 8);
  if (v5)
  {
    v6 = *(sStorage + 200);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, *(a3 + 8));
    }

    else
    {
      Value = *(a3 + 8);
    }

    if (Value)
    {
      v8 = Value;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  *(a3 + 8) = v8;
  MappedRouteIdentifier = pvmGetMappedRouteIdentifier(*(a3 + 24), v8);
  v10 = 0;
  *(a3 + 24) = MappedRouteIdentifier;
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = *(a3 + 8);
    if (v12)
    {
      if (([*(a3 + 8) hasPrefix:@"HeadphonesBT"] & 1) != 0 || (v13 = objc_msgSend(v12, "hasPrefix:", @"HeadsetBT"), v10 = v11, v13))
      {
        v10 = 0;
      }
    }
  }

  *(a3 + 16) = v10;
  FigSimpleMutexLock();
  v14 = *(a3 + 16);
  v18[0] = *a3;
  v18[1] = v14;
  v19 = *(a3 + 32);
  pvmGetVolumePref(cf, v20, v18);
  v16 = v15;
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v16;
}

void pvmGetVolumePref(const __CFString *a1, const void *a2, uint64_t a3)
{
  valuePtr = pvmGetDefaultVolume();
  if (FigCFEqual())
  {
    v6 = *(sStorage + 200);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, @"broadcast");
    }

    else
    {
      Value = @"broadcast";
    }

    v9 = 0;
    v8 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    if (!Value)
    {
      Value = @"broadcast";
    }

    *(a3 + 8) = Value;
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    Value = *(a3 + 8);
  }

  DeviceRouteString = pvmCreateDeviceRouteString(Value, v8, v9);
  if (DeviceRouteString && (v11 = *(sStorage + 16)) != 0 && (v12 = CFDictionaryGetValue(v11, DeviceRouteString)) != 0)
  {
    v13 = v12;
    CategoryStringWithModeAppended = pvmCreateCategoryStringWithModeAppended(a1, a2);
    v15 = CFDictionaryGetValue(v13, CategoryStringWithModeAppended);
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        v18 = *(a3 + 16);
        v21[0] = *a3;
        v21[1] = v18;
        v22 = *(a3 + 32);
        v19 = *(a3 + 16);
        v23[0] = *a3;
        v23[1] = v19;
        v24 = *(a3 + 32);
        pvmGetVolumeLimitPref(v23);
        pvmGetCurrentVolumeLimitForRoute(v21, a1);
      }
    }
  }

  else
  {
    CategoryStringWithModeAppended = 0;
  }

  pvmGetMinimumCategoryVolume(a1, a2);
  pvmGetMaximumCategoryVolume(a1, a2);
  if (CategoryStringWithModeAppended)
  {
    CFRelease(CategoryStringWithModeAppended);
  }

  if (DeviceRouteString)
  {
    CFRelease(DeviceRouteString);
  }
}

CFStringRef pvmCreateDeviceRouteString(CFTypeRef cf, unint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 0;
  }

  v3 = a3;
  v5 = cf;
  if (a2 | a3)
  {
    if (*(sStorage + 200))
    {
      cf = CFDictionaryGetValue(*(sStorage + 200), cf);
    }

    if (cf)
    {
      v6 = cf;
    }

    else
    {
      v6 = v5;
    }

    MappedRouteIdentifier = pvmGetMappedRouteIdentifier(a2, v5);
    if (v3 && (([v5 hasPrefix:@"HeadphonesBT"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"HeadsetBT")))
    {
      v3 = 0;
    }

    if (FigCFEqual() || FigCFEqual())
    {
      v8 = @"-Audio";
      if ([MappedRouteIdentifier hasSuffix:@"-Audio"] & 1) != 0 || (v8 = @"-screen", (objc_msgSend(MappedRouteIdentifier, "hasSuffix:", @"-screen")) || (v8 = @"-airplay", (objc_msgSend(MappedRouteIdentifier, "hasSuffix:", @"-airplay")) || (v8 = @"-LowLatencyAudio", objc_msgSend(MappedRouteIdentifier, "hasSuffix:", @"-LowLatencyAudio")))
      {
        MappedRouteIdentifier = [MappedRouteIdentifier substringToIndex:{objc_msgSend(MappedRouteIdentifier, "length") - -[__CFString length](v8, "length")}];
        v9 = [MappedRouteIdentifier rangeOfString:@"-" options:4];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          MappedRouteIdentifier = [MappedRouteIdentifier substringToIndex:v9];
        }
      }
    }

    v17 = 0;
    v18 = 0;
    v16 = v6;
    if (v3)
    {
      v17 = v3;
      v10 = 2;
      if (!MappedRouteIdentifier)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = 1;
      if (!MappedRouteIdentifier)
      {
LABEL_23:
        v11 = *MEMORY[0x1E695E480];
        v12 = CFArrayCreate(*MEMORY[0x1E695E480], &v16, v10, MEMORY[0x1E695E9C0]);
        if (v12)
        {
          v13 = v12;
          v14 = CFStringCreateByCombiningStrings(v11, v12, @"~");
          CFRelease(v13);
          return v14;
        }

        return 0;
      }
    }

    *(&v16 + v10++) = MappedRouteIdentifier;
    goto LABEL_23;
  }

  return CFRetain(cf);
}

float pvmGetVolumeLimitPref(void *a1)
{
  valuePtr = 1.0;
  v1 = 1.0;
  if (FigCFEqual())
  {
    v2 = *(sStorage + 32);
    if (v2)
    {
      Value = CFDictionaryGetValue(v2, @"Headphone");
      if (Value)
      {
        if (CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr))
        {
          return valuePtr;
        }

        else
        {
          return 1.0;
        }
      }
    }
  }

  return v1;
}

uint64_t CMSUtility_IsAllowedToStartPlaying(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (MX_CoreServices_GetDeviceManagementPolicyForBundleID([a1 displayID]) && !CMSMUtility_IsCarPlaySessionPresent())
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if ([a1 applicationState] == 8)
  {
    return 1;
  }

  if (![a1 applicationState])
  {
    return 1;
  }

  ApplicationStateForSession = CMSUtility_GetApplicationStateForSession(a1);
  CMSessionMgrSetApplicationStateFromPID([objc_msgSend(a1 "clientPID")], ApplicationStateForSession);
  if ([a1 applicationState] == 8 || !objc_msgSend(a1, "applicationState"))
  {
    return 1;
  }

  if ([a1 applicationState] != 4)
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (!CMSUtility_HasBackgroundEntitlement(a1) && !CMSUtility_IsReplayKitExtension(a1))
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if ([a1 stopsWhenDeviceLocks])
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (![a1 mixesWithEveryone] || cmsutility_hasAssertionsToStartMixablePlayback(a1))
  {
    return 1;
  }

  if (dword_1EB75DE40)
  {
LABEL_23:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

unint64_t MX_CoreServices_GetDeviceManagementPolicyForBundleID(void *key)
{
  valuePtr[22] = *MEMORY[0x1E69E9840];
  valuePtr[0] = 0;
  if (key && gCoreServicesIsInitialized)
  {
    if (CFDictionaryContainsKey(gDeviceManagementPolicyCache, key))
    {
      Value = CFDictionaryGetValue(gDeviceManagementPolicyCache, key);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberLongType, valuePtr);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      valuePtr[0] = [objc_msgSend(gLSApplicationProxyClass applicationProxyForIdentifier:{key), "deviceManagementPolicy"}];
      cmsmLSUpdateDeviceManagementCache(valuePtr[0], key);
    }
  }

  return valuePtr[0];
}

__CFString *MX_CoreServices_GetDMFPolicyString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"DMFPolicyUnknown";
  }

  else
  {
    return off_1E7AEAA90[a1];
  }
}

uint64_t CMSUtility_HasEntitlementForInterruptions(void *a1, __SecTask *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([a1 clientPriority] != 10)
  {
    return 1;
  }

  if (a2)
  {
    v3 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.coremedia.interruptions.phonecallpriority.allow", 0);
    if (FigCFEqual())
    {
      if (!dword_1EB75DE40)
      {
        v5 = 1;
        if (!v3)
        {
          return v5;
        }

        goto LABEL_12;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v5 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v3)
      {
LABEL_12:
        CFRelease(v3);
      }
    }

    else
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v5 = 0;
      if (v3)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return v5;
}

uint64_t cmsBeginInterruptionGuts(void *a1, void *a2, char a3)
{
  v5 = a1;
  v264 = *MEMORY[0x1E69E9840];
  v6 = MXGetPerformanceLog(a1, a2);
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Session activation", &unk_1B19E5B76, buf, 2u);
  }

  v194 = [+[MXSessionManager sharedInstance](MXSessionManager areBothBudsInEarForA2DPPort];
  v223 = 0;
  v222 = 0;
  v198 = [v5 currentlyControllingFlags];
  v7 = [v5 currentlyControllingFlags];
  v8 = [v5 hwControlFlags];
  v204 = [v5 hwControlFlags];
  v221 = 0;
  v220 = 0;
  cf = CMSMUtility_CopyCurrentRouteTypes();
  FigSimpleMutexLock();
  v193 = v7;
  v9 = (a3 & 8) != 0 || [v5 siriInputDeviceUUID] != 0;
  v195 = a2;
  [v5 setDontTakeOverHardware:v9];
  if ([v5 hasAudioCategory:@"Alarm"] && CMSMDeviceState_ItsAHomePod())
  {
    CMSUtility_UpdateAlarmBehaviorOnAccessory(v5);
  }

  CMSUtility_InterpretInterruptionStyle(v5, &v223 + 1, &v223, &v222);
  v10 = HIBYTE(v223);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v12 = [v5 timestampWhenMostRecentlyInterrupted];
  IsSiriRecording = CMSMUtility_IsSiriRecording();
  v14 = [+[MXSessionManager sharedInstance](MXSessionManager isSessionWithAudioCategoryActive:"isSessionWithAudioCategoryActive:", @"Alarm"];
  if (-[MXSessionManager wombatEnabled](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "wombatEnabled") && ([v5 prefersToPlayDuringWombat] & 1) == 0)
  {
    v22 = 0x1ED6D2000uLL;
    if (dword_1EB75DE40)
    {
      v226 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v32 = v226;
      v33 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v34 = v32;
      }

      else
      {
        v34 = v32 & 0xFFFFFFFE;
      }

      if (v34)
      {
        v35 = [v5 clientName];
        *v231 = 136315394;
        v232 = "cmsShouldSkipBeginInterruption";
        v233 = 2114;
        v234 = v35;
        _os_log_send_and_compose_impl(v34, 0, buf, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v33, "-CMSessionMgr- %s: Skipping begin interruption for %{public}@ because it is trying to go active in Wombat mode and prefersToPlayDuringWombat is false.", v231, 22);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CMSMDeviceState_ItsAniPad())
    {
      v57 = CMSUtility_HasPhoneCallBehaviour(v5) || CMSMUtility_IsRecordingCategory([v5 audioCategory]);
      -[MXSessionManager postDisallowedActivationDueToContinuityCaptureNotification:videoPlaybackWasIntended:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "postDisallowedActivationDueToContinuityCaptureNotification:videoPlaybackWasIntended:", v57, [objc_msgSend(v5 "audioMode")]);
    }

    v49 = 4294951610;
    goto LABEL_325;
  }

  v15 = (UpTimeNanoseconds - v12) / 1000000000.0;
  if (v15 <= 1.5)
  {
    v16 = [v5 timestampWhenMostRecentResumableEndInterruptionWasSent];
    if (v16 < [v5 timestampWhenMostRecentlyInterrupted] && !objc_msgSend(v5, "clientPriority") && (IsSiriRecording != 0) | v14 & 1)
    {
      if (dword_1EB75DE40)
      {
        v226 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v18 = v226;
        v19 = type;
        if (os_log_type_enabled(v17, type))
        {
          v20 = v18;
        }

        else
        {
          v20 = v18 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = [v5 clientName];
          *v231 = 136315394;
          v232 = "cmsShouldSkipBeginInterruption";
          v233 = 2114;
          v234 = v21;
          _os_log_send_and_compose_impl(v20, 0, buf, 128, &dword_1B17A2000, v17, v19, "-CMSessionMgr- %s: Skipping begin interruption for %{public}@ because it is trying to go active immediately after being interrupted and VoiceAssistant session is recording OR Alarm is active", v231, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_SendSessionReinterruptionDisallowedEventToAudioStatistics(v5, IsSiriRecording, v14, v15);
      v49 = 4294954311;
      v22 = 0x1ED6D2000;
      goto LABEL_325;
    }
  }

  if (v10)
  {
    v22 = 0x1ED6D2000uLL;
    v23 = v195;
    if (v195)
    {
      IsAllowedToStopThisSession = CMSUtility_IsAllowedToStopThisSession(v5, v195);
      if (!IsAllowedToStopThisSession)
      {
        if (dword_1EB75DE40)
        {
          v226 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v27 = v226;
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
            v30 = [v5 clientName];
            *v231 = 136315394;
            v232 = "cmsShouldSkipBeginInterruption";
            v233 = 2114;
            v234 = v30;
            _os_log_send_and_compose_impl(v29, 0, buf, 128, &dword_1B17A2000, v26, v28, "-CMSessionMgr- %s: Skipping begin interruption (single session) for %{public}@", v231, 22);
          }

LABEL_133:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_134;
        }

        goto LABEL_134;
      }
    }

    else
    {
      IsAllowedToStopThisSession = CMSUtility_IsAllowedToStopOthers(v5);
      if (!IsAllowedToStopThisSession)
      {
        if (dword_1EB75DE40)
        {
          v226 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v59 = v226;
          v60 = type;
          if (os_log_type_enabled(v58, type))
          {
            v61 = v59;
          }

          else
          {
            v61 = v59 & 0xFFFFFFFE;
          }

          if (v61)
          {
            v62 = [v5 clientName];
            *v231 = 136315394;
            v232 = "cmsShouldSkipBeginInterruption";
            v233 = 2114;
            v234 = v62;
            _os_log_send_and_compose_impl(v61, 0, buf, 128, &dword_1B17A2000, v58, v60, "-CMSessionMgr- %s: Skipping begin interruption for %{public}@", v231, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v49 = 4294954311;
        goto LABEL_325;
      }
    }
  }

  else
  {
    IsAllowedToStopThisSession = [v5 isTheAssistant];
    v22 = 0x1ED6D2000;
    v23 = v195;
    if ((IsAllowedToStopThisSession & 1) == 0)
    {
      IsAllowedToStopThisSession = CMSMUtility_IsSiriRecording();
      if (IsAllowedToStopThisSession)
      {
        IsAllowedToStopThisSession = CMSMUtility_DoesSiriAllowMixableAudioWhileRecording();
        if (!IsAllowedToStopThisSession)
        {
          IsAllowedToStopThisSession = [v5 doesntActuallyPlayAudio];
          if ((IsAllowedToStopThisSession & 1) == 0)
          {
            [v5 audioCategory];
            IsAllowedToStopThisSession = FigCFEqual();
            if (!IsAllowedToStopThisSession)
            {
              IsAllowedToStopThisSession = CMSMDeviceState_ItsAHomePod();
              if (!IsAllowedToStopThisSession)
              {
                if (dword_1EB75DE40)
                {
                  v226 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v37 = v226;
                  v38 = type;
                  if (os_log_type_enabled(v36, type))
                  {
                    v39 = v37;
                  }

                  else
                  {
                    v39 = v37 & 0xFFFFFFFE;
                  }

                  if (v39)
                  {
                    v40 = [v5 clientName];
                    *v231 = 136315394;
                    v232 = "cmsShouldSkipBeginInterruption";
                    v233 = 2114;
                    v234 = v40;
                    _os_log_send_and_compose_impl(v39, 0, buf, 128, &dword_1B17A2000, v36, v38, "-CMSessionMgr- %s: Skipping begin interruption for %{public}@ because VoiceAssistant is recording.", v231, 22);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v49 = 4294954307;
                goto LABEL_325;
              }
            }
          }
        }
      }
    }
  }

  v207 = v5;
  if (!CMSMVAUtility_IsAdditiveRoutingEnabled(IsAllowedToStopThisSession, v25) || ([objc_msgSend((v22 + 2272) "sharedInstance")] & 1) == 0)
  {
    if (v23)
    {
      if (!CMSUtility_HasHigherPriorityToInterrupt(v5, v23, v8))
      {
        if (dword_1EB75DE40)
        {
          v226 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v42 = v226;
          v43 = type;
          if (os_log_type_enabled(v41, type))
          {
            v44 = v42;
          }

          else
          {
            v44 = v42 & 0xFFFFFFFE;
          }

          if (v44)
          {
            v45 = [v5 clientName];
            *v231 = 136315394;
            v232 = "cmsShouldSkipBeginInterruption";
            v233 = 2114;
            v234 = v45;
            _os_log_send_and_compose_impl(v44, 0, buf, 128, &dword_1B17A2000, v41, v43, "-CMSessionMgr- %s: Skipping begin interruption for %{public}@ because of insufficient priority (single session).", v231, 22);
          }

          goto LABEL_133;
        }

LABEL_134:
        v49 = 4294954313;
LABEL_325:
        v171 = 0;
        v172 = 0;
        goto LABEL_352;
      }
    }

    else
    {
      v46 = [objc_msgSend((v22 + 2272) "sharedInstance")];
      memset(v241, 0, sizeof(v241));
      v47 = [v46 countByEnumeratingWithState:v241 objects:&valuePtr count:16];
      if (v47)
      {
        v48 = v47;
        v49 = 0;
        v50 = **&v241[1];
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (**&v241[1] != v50)
            {
              objc_enumerationMutation(v46);
            }

            if (!CMSUtility_HasHigherPriorityToInterrupt(v5, *(*(&v241[0] + 1) + 8 * i), v8))
            {
              if (dword_1EB75DE40)
              {
                v226 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v53 = v226;
                v54 = type;
                if (os_log_type_enabled(v52, type))
                {
                  v55 = v53;
                }

                else
                {
                  v55 = v53 & 0xFFFFFFFE;
                }

                if (v55)
                {
                  v56 = [v207 clientName];
                  *v231 = 136315394;
                  v232 = "cmsShouldSkipBeginInterruption";
                  v233 = 2114;
                  v234 = v56;
                  LODWORD(v191) = 22;
                  _os_log_send_and_compose_impl(v55, 0, buf, 128, &dword_1B17A2000, v52, v54, "-CMSessionMgr- %s: Skipping begin interruption for %{public}@ because of insufficient priority.", v231, v191);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v49 = 4294954313;
                v5 = v207;
              }

              else
              {
                v49 = 4294954313;
              }
            }
          }

          v48 = [v46 countByEnumeratingWithState:v241 objects:&valuePtr count:16];
        }

        while (v48);

        v22 = 0x1ED6D2000;
        v23 = v195;
        if (v49)
        {
          goto LABEL_325;
        }
      }

      else
      {
      }
    }
  }

  *v224 = 0;
  v63 = qword_1EB75E090;
  v64 = *MEMORY[0x1E695E480];
  v65 = [v5 audioCategory];
  v66 = [v5 audioMode];
  v67 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v67)
  {
    v67(v63, 0x1F289BAB0, v64, v65, v66, 0, v224);
  }

  if ([v5 hasInput] && *v224 == *MEMORY[0x1E695E4C0] && (objc_msgSend(v5, "hwControlFlags") & 2) != 0)
  {
    v22 = 0x1ED6D2000;
    if (dword_1EB75DE40)
    {
      v226 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v79 = v226;
      v80 = type;
      if (os_log_type_enabled(v78, type))
      {
        v81 = v79;
      }

      else
      {
        v81 = v79 & 0xFFFFFFFE;
      }

      if (v81)
      {
        v82 = [v5 clientName];
        if ([v5 hasInput])
        {
          v83 = "YES";
        }

        else
        {
          v83 = "NO";
        }

        if (*v224 == *MEMORY[0x1E695E4D0])
        {
          v84 = "YES";
        }

        else
        {
          v84 = "NO";
        }

        v85 = [v5 hwControlFlags];
        *v231 = 136316162;
        v232 = "cmsShouldSkipBeginInterruption";
        v233 = 2114;
        v234 = v82;
        v235 = 2082;
        v236 = v83;
        v22 = 0x1ED6D2000;
        v237 = 2082;
        v238 = v84;
        v239 = 1024;
        v240 = v85;
        LODWORD(v191) = 48;
        _os_log_send_and_compose_impl(v81, 0, buf, 128, &dword_1B17A2000, v78, v80, "-CMSessionMgr- %s: Skipping begin interruption for %{public}@ because input can't be made routable, session hasInput=%{public}s, hasInputDevice=%{public}s, session hwControlFlags=%d.", v231, v191);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v49 = 4294954310;
    goto LABEL_325;
  }

  v22 = 0x1ED6D2000uLL;
  if (CMSMDeviceState_ItsAHomePod())
  {
    if (CMSMUtility_IsPhoneCallActive() && ([v5 hasPhoneCallBehavior] & 1) == 0)
    {
      [v5 audioCategory];
      if (FigCFEqual() || ([v5 audioCategory], FigCFEqual()) || (objc_msgSend(v5, "audioCategory"), FigCFEqual()) || (objc_msgSend(v5, "audioCategory"), FigCFEqual()) || -[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(v5, "audioCategory")))
      {
        if (dword_1EB75DE40)
        {
          v226 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v74 = v226;
          v75 = type;
          if (os_log_type_enabled(v73, type))
          {
            v76 = v74;
          }

          else
          {
            v76 = v74 & 0xFFFFFFFE;
          }

          if (v76)
          {
            v77 = [v5 clientName];
            *v231 = 136315394;
            v232 = "cmsShouldSkipBeginInterruption";
            v233 = 2114;
            v234 = v77;
            LODWORD(v191) = 22;
            _os_log_send_and_compose_impl(v76, 0, buf, 128, &dword_1B17A2000, v73, v75, "-CMSessionMgr- %s: (HomePod) Skipping begin interruption for %{public}@ because a phone call is going on.", v231, v191);
          }

          goto LABEL_133;
        }

        goto LABEL_134;
      }
    }
  }

  if (CMSUtility_IsRemoteInterruptionRequired(v5))
  {
    v68 = CMSM_IDSClient_NotifyRemote_InterruptionStartAndCopyIdentifier(v5);
    [v5 setWaitingForRemoteInterruptionDoneIdentifier:v68];
    [v5 setTriggeredRemoteInterruption:1];
    [v5 setNeedToEndInterruption:1];
  }

  v69 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]))
  {
    if (qword_1EB75E178)
    {
      if (!byte_1EB75E180 && CMSUtility_PlaysToCarMainAudio(v5) && ([v5 isCarSession] & 1) == 0)
      {
        v70 = cmsmRequestCarMainAudioForSession(v5);
        if (v5)
        {
          if (v70)
          {
            if (CMSMDeviceState_ScreenIsBlanked())
            {
              if (!CMSMDeviceState_ScreenIsBlankedByProximitySensor())
              {
                [v5 audioCategory];
                if (FigCFEqual() || ([v5 audioCategory], FigCFEqual()))
                {
                  if (!byte_1EB75E180)
                  {
                    [v5 setWillSetScreenDarkModeOnVAD:1];
                  }
                }
              }
            }

            if ([+[MXSessionManager starkMainAudioIsOwnedByiOSButBorrowedByCar] sharedInstance]
            {
              [qword_1EB75E170 setHandsOverInterruptionsToInterruptor:1];
            }

            if (CMSUtility_GetIsActive(qword_1EB75E170))
            {
              cmsSetIsActive(qword_1EB75E170, 0, 0);
            }

            if (CMSUtility_ShouldSessionToInterruptHandOverInterruptions(qword_1EB75E170, v5))
            {
              CMSMUtility_HandOverInterruptionsToSession(qword_1EB75E170, v5);
            }

            v71 = +[MXSessionManager sharedInstance];
            if ([(MXSessionManager *)v71 shouldResetWaitingToResume:qword_1EB75E170 currentSession:v5])
            {
              v72 = +[MXSessionManager sharedInstance];
              [(MXSessionManager *)v72 resetWaitingToResume:qword_1EB75E170];
            }
          }

          else if (dword_1EB75DE40)
          {
            v86 = CMSMUtility_CopyCurrentRouteTypes();
            if (v86)
            {
              CFRelease(v86);
            }
          }
        }
      }
    }
  }

  if (!v23 || v23 == v5 || (objc_msgSend_isActive(v23) & 1) == 0)
  {
    v87 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v88 = [v87 countByEnumeratingWithState:&v216 objects:v230 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v217;
LABEL_159:
      v91 = 0;
      while (1)
      {
        if (*v217 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = *(*(&v216 + 1) + 8 * v91);
        if (v92 != v5 && (objc_msgSend_isActive(v92) & 1) != 0)
        {
          break;
        }

        if (v89 == ++v91)
        {
          v89 = [v87 countByEnumeratingWithState:&v216 objects:v230 count:16];
          if (!v89)
          {
            goto LABEL_166;
          }

          goto LABEL_159;
        }
      }

      v22 = 0x1ED6D2000;
    }

    else
    {
LABEL_166:

      if (([v5 dontTakeOverHardware] & 1) == 0 && CMSUtility_DoesSessionWantToPauseSpokenAudio(v5) && objc_msgSend(v5, "waitingToSendEndInterruptionToSpokenAudioApp"))
      {
        [v5 setDontTakeOverHardware:1];
        v93 = [+[MXSessionManager sharedInstance](MXSessionManager copyInterruptedSessions:"copyInterruptedSessions:", v5];
        v212 = 0u;
        v213 = 0u;
        v214 = 0u;
        v215 = 0u;
        v94 = [v93 countByEnumeratingWithState:&v212 objects:v229 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v213;
          while (2)
          {
            for (j = 0; j != v95; ++j)
            {
              if (*v213 != v96)
              {
                objc_enumerationMutation(v93);
              }

              v98 = *(*(&v212 + 1) + 8 * j);
              if (CMSUtility_IsDoingSpokenAudio(v98))
              {
                CMSUtility_GetCurrentAudioDestination(v98);
                CMSUtility_GetCurrentAudioDestination(v5);
                if (!FigCFEqual())
                {
                  [v5 setDontTakeOverHardware:0];
                  goto LABEL_183;
                }
              }
            }

            v95 = [v93 countByEnumeratingWithState:&v212 objects:v229 count:16];
            if (v95)
            {
              continue;
            }

            break;
          }
        }

LABEL_183:

        v23 = v195;
      }

      cmsSetIsActive(v5, 1, 0);
      v22 = 0x1ED6D2000uLL;
      if (([v5 dontTakeOverHardware] & 1) == 0)
      {
        cmsTakeControl(v5, HIWORD(v204) | v8);
      }

      if (!FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, v69))
      {
        v49 = 0;
        goto LABEL_325;
      }
    }
  }

  [objc_msgSend((v22 + 2272) "sharedInstance")];
  [v5 audioCategory];
  allocator = v64;
  if (FigCFEqual() && !CMSMDeviceState_RingerIsOn(1))
  {
    v99 = (CMSMUtility_GetNumberOfCurrentOutputPorts() == 0);
  }

  else
  {
    v99 = 0;
  }

  if (!HIBYTE(v223) && (v99 & 1) == 0 && !CMSUtility_DoesSessionWantToPauseSpokenAudio(v5) && ([v5 isTheAssistant] & 1) == 0 && (objc_msgSend(v5, "prefersToInterruptActiveRecordingSessions") & 1) == 0 && (!CMSMUtility_IsRecordingCategory(objc_msgSend(v5, "audioCategory")) || !objc_msgSend(objc_msgSend((v22 + 2272), "sharedInstance"), "doesAnyActiveSessionExistWhichPrefersToBeInterruptedByNextRecordingClient:", v5)))
  {
    LOBYTE(v100) = 0;
    goto LABEL_311;
  }

  if ([objc_msgSend(objc_msgSend((v22 + 2272) "sharedInstance")] >= 0x21)
  {
    v100 = MEMORY[0x1B2733FE0](allocator, 16 * [objc_msgSend(objc_msgSend((v22 + 2272) "sharedInstance")], 0x108004022EE8E53, 0);
    if (!v100)
    {
      goto LABEL_311;
    }

    if (v23)
    {
      goto LABEL_201;
    }

LABEL_203:
    v101 = [objc_msgSend((v22 + 2272) "sharedInstance")];
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v102 = [v101 countByEnumeratingWithState:&v208 objects:v227 count:16];
    if (v102)
    {
      v103 = v102;
      v104 = *v209;
      do
      {
        for (k = 0; k != v103; ++k)
        {
          if (*v209 != v104)
          {
            objc_enumerationMutation(v101);
          }

          cmsAddToListOfSessionsToInterruptIfNecessary(v5, *(*(&v208 + 1) + 8 * k), v99, 2, v100, &v221, &v220);
        }

        v103 = [v101 countByEnumeratingWithState:&v208 objects:v227 count:16];
      }

      while (v103);
    }

    goto LABEL_211;
  }

  v100 = buf;
  if (!v23)
  {
    goto LABEL_203;
  }

LABEL_201:
  cmsAddToListOfSessionsToInterruptIfNecessary(v5, v23, v99, 1, v100, &v221, &v220);
LABEL_211:
  FigSimpleMutexUnlock();
  if (v221 <= 0)
  {
    CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange();
    goto LABEL_308;
  }

  v200 = v221;
  v106 = 0;
  v107 = (v100 + 9);
  v199 = v100;
  v196 = v99;
  do
  {
    v203 = v106;
    v205 = v107;
    v108 = *(v107 - 9);
    v109 = *(v107 - 1);
    v202 = *v107;
    v110 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
    v111 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
    if ([objc_msgSend(v5 "clientPID")] == v110 || (objc_msgSend(objc_msgSend(v5, "displayID"), "isEqualToString:", v111) & 1) != 0 || CMSUtility_IsSessionTheDefaultMusicApp(v5))
    {
      v112 = 1;
LABEL_217:
      v201 = v112;
      goto LABEL_218;
    }

    if (CMSMUtility_IAPAppProcessIDIsUsingAccessory([v5 displayID]))
    {
      v112 = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v5) != 0;
      goto LABEL_217;
    }

    v201 = 0;
LABEL_218:
    v206 = [v108 copyCurrentActiveRoutes];
    if ([objc_msgSend(v108 "clientPID")] == v110 || objc_msgSend(objc_msgSend(v108, "displayID"), "isEqualToString:", v111))
    {
      if ([v108 isPlaying])
      {
        [v5 setNowPlayingAppWasStoppedOnMostRecentActivation:1];
        [v108 audioMode];
        if (FigCFEqual())
        {
          [v5 setNowPlayingAppThatWasStoppedOnMostRecentActivationWasDoingSpokenAudio:1];
        }
      }
    }

    if (v99)
    {
      valuePtr = 0;
      v113 = CFGetAllocator(v5);
      v114 = CFNumberCreate(v113, kCFNumberFloat32Type, &valuePtr);
    }

    else
    {
      v114 = CMSUtility_CopyFadeDuration(v5, 0, 0);
    }

    v116 = v114;
    v117 = MXGetSessionLog(v114, v115);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v118 = v109;
      v119 = v116;
      v120 = [v5 clientName];
      v121 = [v5 clientPriority];
      v122 = [v5 audioCategory];
      v123 = [v108 clientName];
      v124 = [v108 clientPriority];
      v125 = [v108 audioCategory];
      v126 = [v108 hasPhoneCallBehavior];
      v127 = "";
      if (v126)
      {
        isActive = objc_msgSend_isActive(v108);
        v127 = "";
        if (isActive)
        {
          v127 = " (PHONE CALL)";
        }
      }

      valuePtr = 136449026;
      v243 = "-CMSessionMgr-";
      v244 = 2082;
      v245 = "cmsInterruptSession";
      v246 = 1024;
      *v247 = 3091;
      *&v247[4] = 2114;
      *&v247[6] = v120;
      v248 = 2048;
      v249 = v207;
      v250 = 1024;
      v251 = v121;
      v252 = 2114;
      v253 = v122;
      v254 = 2114;
      v255 = v123;
      v256 = 2048;
      v257 = v108;
      v258 = 1024;
      v259 = v124;
      v260 = 2114;
      v261 = v125;
      v5 = v207;
      v262 = 2082;
      v263 = v127;
      _os_log_impl(&dword_1B17A2000, v117, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i '%{public}@'[%p] with priority [%d] and category '%{public}@' INTERRUPTING '%{public}@'[%p] with priority [%d] and category '%{public}@'%{public}s.", &valuePtr, 0x6Eu);
      v22 = 0x1ED6D2000uLL;
      v100 = v199;
      v116 = v119;
      v109 = v118;
      LODWORD(v99) = v196;
    }

    if (CMSMUtility_IsVoiceCallCategory([v5 audioCategory]) && CMSMUtility_IsPlayAndRecordCategory(objc_msgSend(v108, "audioCategory")) && (objc_msgSend(v108, "audioMode"), FigCFEqual()) || CMSMUtility_IsVoiceCallCategory(objc_msgSend(v108, "audioCategory")) && CMSMUtility_IsPlayAndRecordCategory(objc_msgSend(v5, "audioCategory")) && (objc_msgSend(v5, "audioMode"), FigCFEqual()))
    {
      [v5 setOverridePortsList:0];
      if ([v108 overridePortsList])
      {
        [v5 setOverridePortsList:{objc_msgSend(v108, "overridePortsList")}];
      }
    }

    [v5 setStarkBorrowCount:{objc_msgSend(v108, "starkBorrowCount") + objc_msgSend(v5, "starkBorrowCount")}];
    [v108 setStarkBorrowCount:0];
    v129 = v206;
    if (CMSUtility_ShouldSessionToInterruptHandOverInterruptions(v108, v5))
    {
      CMSMUtility_HandOverInterruptionsToSession(v108, v5);
    }

    if (CMSUtility_ShouldSessionToInterruptHandOverDucking(v108, v5))
    {
      v130 = CMSUtility_CopySessionsToDuck(1, 0, v5);
      [objc_msgSend((v22 + 2272) "sharedInstance")];
    }

    [v108 setWasInterruptedWhileSuspended:{objc_msgSend(v108, "applicationState") == 2}];
    [v108 setWasInterruptedWhileRecording:{objc_msgSend(v108, "isRecording")}];
    [v108 setTimestampWhenMostRecentResumableEndInterruptionWasSent:0];
    [objc_msgSend((v22 + 2272) "sharedInstance")];
    CMSUtility_ResetIsPlayingStates(v108);
    [v108 setInterruptingSession:v5];
    v131 = [objc_msgSend((v22 + 2272) "sharedInstance")];
    v132 = [v5 clientName];
    v133 = [v5 displayID];
    if (v131)
    {
      v134 = &unk_1F28AF788;
    }

    else
    {
      v134 = 0;
    }

    CMSUtility_PostInterruptionCommandNotification(v108, 0, v132, 0, 0, v116, v134, v133);
    [v108 setWasInterruptedByNowPlayingApp:{(objc_msgSend(v108, "applicationState") == 8) & v201}];
    [v108 setTimestampWhenMostRecentlyInterrupted:FigGetUpTimeNanoseconds()];
    if (![v108 extendBackgroundAppAssertionTimer] && objc_msgSend(v108, "playbackAssertionRef"))
    {
      CMSMSleep_ReleasePlaybackProcessAssertion(v108);
    }

    if (v202 | v109 || CMSUtility_IsSessionAlwaysExpectingEndInterruption(v108, v135))
    {
      [v108 setWasMutedBeforeInterruption:{objc_msgSend(v108, "userMuted")}];
      MXCoreSessionSetProperty(v108, @"UserMuted");
      v136 = FigEndpointCentralEntityOwnsResource(qword_1EB75E178, 0x1F288E5F0, @"MainAudio");
      if (CMSMUtility_IsCarPlaySessionPresent() && v136 && [v5 isCarSession])
      {
        if (dword_1EB75DE40)
        {
          v137 = v116;
          *v231 = 0;
          v224[0] = OS_LOG_TYPE_DEFAULT;
          v138 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v139 = *v231;
          v140 = v224[0];
          if (os_log_type_enabled(v138, v224[0]))
          {
            v141 = v139;
          }

          else
          {
            v141 = v139 & 0xFFFFFFFE;
          }

          if (v141)
          {
            LODWORD(v241[0]) = 136315138;
            *(v241 + 4) = "cmsInterruptSession";
            _os_log_send_and_compose_impl(v141, 0, &valuePtr, 128, &dword_1B17A2000, v138, v140, "-CMSessionMgr- %s: CarPlay: Car owns main audio, set resumable to false for interrupted clients", v241);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v116 = v137;
        }

        [v108 setWaitingToResume:0];
      }

      else
      {
        [v108 setWaitingToResume:1];
        if (CMSMUtility_IsCarPlaySessionPresent())
        {
          if ([v108 hasPhoneCallBehavior])
          {
            [objc_msgSend((v22 + 2272) "sharedInstance")];
            if (dword_1EB75DE40)
            {
              v142 = v116;
              *v231 = 0;
              v224[0] = OS_LOG_TYPE_DEFAULT;
              v143 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v144 = *v231;
              v145 = v224[0];
              if (os_log_type_enabled(v143, v224[0]))
              {
                v146 = v144;
              }

              else
              {
                v146 = v144 & 0xFFFFFFFE;
              }

              if (v146)
              {
                v147 = [v108 clientName];
                v148 = [v5 clientName];
                LODWORD(v241[0]) = 136315650;
                *(v241 + 4) = "cmsInterruptSession";
                WORD6(v241[0]) = 2114;
                *(v241 + 14) = v147;
                WORD3(v241[1]) = 2114;
                *(&v241[1] + 1) = v148;
                LODWORD(v191) = 32;
                _os_log_send_and_compose_impl(v146, 0, &valuePtr, 128, &dword_1B17A2000, v143, v145, "-CMSessionMgr- %s: PhoneCallBehavior session %{public}@ was interrupted by %{public}@, set phoneCallBehaviorSessionShouldResumeForCarPlay to YES", v241, v191);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v100 = v199;
              v116 = v142;
            }
          }
        }
      }

      v149 = [v108 setActiveRoutesWhenInterrupted:0];
      if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled(v149, v150) && (([v108 shadowingAudioSessionOptions] & 4) != 0 || (objc_msgSend(v108, "shadowingAudioSessionOptions") & 2) != 0))
      {
        v151 = [objc_msgSend((v22 + 2272) "sharedInstance")];
        v152 = v151;
        if (v151 && (objc_msgSend_isActive(v151) & 1) == 0 && [v152 interruptingSession] == v5)
        {
          [v108 setActiveRoutesWhenInterrupted:{objc_msgSend(v152, "activeRoutesWhenInterrupted")}];
          if (dword_1EB75DE40)
          {
            v158 = v116;
            *v231 = 0;
            v224[0] = OS_LOG_TYPE_DEFAULT;
            v159 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v160 = *v231;
            v161 = v224[0];
            if (os_log_type_enabled(v159, v224[0]))
            {
              v162 = v160;
            }

            else
            {
              v162 = v160 & 0xFFFFFFFE;
            }

            if (v162)
            {
              v163 = [v152 activeRoutesWhenInterrupted];
              LODWORD(v241[0]) = 136315394;
              *(v241 + 4) = "cmsInterruptSession";
              WORD6(v241[0]) = 2114;
              *(v241 + 14) = v163;
              LODWORD(v191) = 22;
              _os_log_send_and_compose_impl(v162, 0, &valuePtr, 128, &dword_1B17A2000, v159, v161, "-CMSessionMgr- %s: Session setting active routes when interrupted to %{public}@", v241, v191);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v100 = v199;
            v116 = v158;
          }
        }

        else
        {
          [v108 setActiveRoutesWhenInterrupted:v206];
        }

        v129 = v206;
      }

      else
      {
        [v108 setActiveRoutesWhenInterrupted:v206];
      }

      [v5 setNeedToEndInterruption:1];
    }

    if ([v5 isIDSMXCoreSession])
    {
      v153 = 0;
    }

    else
    {
      v153 = [v5 isHardwareSafetySession] ^ 1;
    }

    [v108 setDoNotResetAudioCategoryOnNextInactive:v153];
    cmsSetIsActive(v108, 0, v5);
    if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled(v154, v155))
    {
      -[MXSessionManagerIndependentAudioResource postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:](+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource, "sharedInstance"), "postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:", v108, 2, v5, [v108 waitingToResume]);
      -[MXSessionManagerIndependentAudioResource postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:](+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource, "sharedInstance"), "postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:", v108, 4, v5, [v108 waitingToResume]);
    }

    if (qword_1EB75E170 && [v108 duckCommandSentToCarSession])
    {
      v156 = -[MXDuckingSource initWithType:ID:duckVolume:duckFadeDuration:]([MXDuckingSource alloc], "initWithType:ID:duckVolume:duckFadeDuration:", 2, [objc_msgSend(v108 "ID")], 0.0, 0.0);
      v157 = [v22 + 2272 sharedInstance];
      [v157 unduckVolume:qword_1EB75E170 sessionCausingUnduck:v108 duckingSource:v156];

      [v108 setDuckCommandSentToCarSession:0];
    }

    [objc_msgSend((v22 + 2272) "sharedInstance")];
    CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded();
    if (v116)
    {
      CFRelease(v116);
    }

    if (v129)
    {
      CFRelease(v129);
    }

    v107 = v205 + 16;
    v106 = v203 + 1;
  }

  while (v203 + 1 < v200);
  CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange();
  v164 = v100;
  v23 = v195;
  v165 = v200;
  do
  {

    *v164 = 0;
    v164 += 2;
    --v165;
  }

  while (v165);
LABEL_308:
  if (v100 != buf)
  {
    CFAllocatorDeallocate(allocator, v100);
  }

  LOBYTE(v100) = 1;
LABEL_311:
  v166 = [objc_msgSend((v22 + 2272) "sharedInstance")];
  if ([v5 isTheAssistant] && objc_msgSend_isActive(v166))
  {
    CMSMUtility_HandOverInterruptionsToSession(v166, v5);
  }

  if ([v5 isCarSession] && dword_1EB75E168)
  {
    if (CMSMUtility_IsCarPlayVideoActive())
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v241[0]) = 0;
        v231[0] = OS_LOG_TYPE_DEFAULT;
        v167 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v168 = v241[0];
        v169 = v231[0];
        if (os_log_type_enabled(v167, v231[0]))
        {
          v170 = v168;
        }

        else
        {
          v170 = v168 & 0xFFFFFFFE;
        }

        if (v170)
        {
          valuePtr = 136315138;
          v243 = "cmsBeginInterruptionGuts";
          _os_log_send_and_compose_impl(v170, 0, buf, 128, &dword_1B17A2000, v167, v169, "-CMSessionMgr- %s: CarSession going active for AirPlay Video - do not make StarkMainAudio port unroutable", &valuePtr);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      vaeMakePortRoutable(dword_1EB75E168, 0, 0, qword_1EB75E190);
    }
  }

  v173 = CMSUtility_CopySessionsToDuck(v223, v23, v5);
  v171 = v173;
  if (v173)
  {
    CFArrayGetCount(v173);
    [v5 setNeedToEndInterruption:1];
  }

  cmsSetIsActive(v5, 1, 0);
  if ([v5 dontTakeOverHardware])
  {
    v175 = 0;
  }

  else
  {
    v175 = cmsTryToTakeControl(v5);
  }

  IsSharePlayCapableMediaSession = CMSUtility_IsSharePlayCapableMediaSession(v5, v174);
  if (IsSharePlayCapableMediaSession)
  {
    if (CMSMUtility_IsSharePlayCapableCallSessionActive(IsSharePlayCapableMediaSession, v177))
    {
      v178 = [v5 currentlyControllingFlags];
      if ((v178 & 0x10) == 0)
      {
        CMSMUtility_SetMediaPlaybackVolumeToCurrentPhoneCallVolume(v178, v179);
        CMSMUtility_TransferVolumeControlFlagToSharePlayCapableMediaSession(v180, v181);
      }
    }
  }

  if ((v175 & ~v193) != 0)
  {
    [v5 setNeedToEndInterruption:1];
  }

  if ((v100 & 1) == 0)
  {
    FigSimpleMutexUnlock();
  }

  if ([objc_msgSend((v22 + 2272) "sharedInstance")])
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v241[0]) = 0;
      v231[0] = OS_LOG_TYPE_DEFAULT;
      v182 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v183 = v241[0];
      v184 = v231[0];
      if (os_log_type_enabled(v182, v231[0]))
      {
        v185 = v183;
      }

      else
      {
        v185 = v183 & 0xFFFFFFFE;
      }

      if (v185)
      {
        v186 = [v5 clientName];
        valuePtr = 136315650;
        v243 = "cmsBeginInterruptionGuts";
        v244 = 2114;
        v245 = v186;
        v246 = 2048;
        *v247 = v5;
        LODWORD(v191) = 32;
        _os_log_send_and_compose_impl(v185, 0, buf, 128, &dword_1B17A2000, v182, v184, "-CMSessionMgr- %s: VoiceOver session %{public}@ [%p] ducking available sessions.", &valuePtr, v191);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v22 = 0x1ED6D2000uLL;
    }

    [objc_msgSend((v22 + 2272) "sharedInstance")];
    [objc_msgSend((v22 + 2272) "sharedInstance")];
    [objc_msgSend((v22 + 2272) "sharedInstance")];
  }

  else if (v171)
  {
    [objc_msgSend((v22 + 2272) "sharedInstance")];
  }

  v49 = 0;
  v172 = 1;
LABEL_352:
  if ([objc_msgSend((v22 + 2272) "sharedInstance")] && objc_msgSend(v5, "needToEndInterruption"))
  {
    [v5 setAreBothBudsInEarForA2DPPortBeforeInterrupting:v194];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v171)
  {
    CFRelease(v171);
  }

  if ((v198 & 2) == 0 && ([v5 currentlyControllingFlags] & 2) != 0)
  {
    if ((v172 & 1) == 0)
    {
      FigSimpleMutexUnlock();
    }

    cmsmUpdatePickableRouteDescriptionLists(1);
  }

  else if ((v172 & 1) == 0)
  {
    FigSimpleMutexUnlock();
  }

  v187 = CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded();
  v189 = MXGetPerformanceLog(v187, v188);
  if (os_signpost_enabled(v189))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v189, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Session activation", &unk_1B19E5B76, buf, 2u);
  }

  return v49;
}

id CMSUtility_CopyBundleID(void *a1)
{
  if (![a1 isMemberOfClass:objc_opt_class()] || (v2 = objc_msgSend(objc_msgSend(objc_msgSend(a1, "hostProcessAttribution"), "firstObject"), "valueForKey:", @"BundleID")) == 0 && (v2 = objc_msgSend(objc_msgSend(-[MXMediaEndowmentManager getHostProcessAttributions:](+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager, "sharedInstance"), "getHostProcessAttributions:", objc_msgSend(objc_msgSend(a1, "clientPID"), "unsignedIntValue")), "firstObject"), "valueForKey:", @"BundleID")) == 0)
  {
    v2 = [a1 displayID];
  }

  return v2;
}

uint64_t MX_FeatureFlags_IsHighQualityLocalRecordingEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_sIsHighQualityLocalRecordingEnabled;
}

uint64_t CMSMVAUtility_WillSessionWithDescriptionRouteToOnDemandVADOnActivation(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{a1, 0}];
    [v4 setObject:v5 forKey:0x1F28974D0];
    *&inAddress.mSelector = *"srdobolg";
    inAddress.mElement = 0;
    ioDataSize = 4;
    outData = 0;
    PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8u, v4, &ioDataSize, &outData);
    if (!PropertyData)
    {
      *a2 = outData;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954316;
  }

  return PropertyData;
}

uint64_t CMSUtility_HasHigherPriorityToInterrupt(void *a1, void *a2, int a3)
{
  valuePtr[35] = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isActive(a2))
  {
    return 1;
  }

  v6 = [a2 clientPriority];
  if (v6 <= [a1 clientPriority] || (objc_msgSend(a2, "currentlyControllingFlags") & a3) == 0)
  {
    return 1;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [objc_msgSend(a2 "reporterIDs")];
  if (result)
  {
    valuePtr[0] = 1;
    ValueAtIndex = CFArrayGetValueAtIndex([a2 reporterIDs], 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, valuePtr);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [a1 displayID];
    FigCFDictionarySetValue();
    [a2 displayID];
    FigCFDictionarySetValue();
    off_1EB75E028(valuePtr[0], Mutable, 11, 6);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  return result;
}

const __CFArray *vaemSystemHasAudioInputDeviceForRouteConfiguration(uint64_t a1, uint64_t a2)
{
  result = vaemCopyConnectedPortsListForRouteConfiguration(a1, a2, 0, 0, 1);
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    CFRelease(v3);
    return (Count > 0);
  }

  return result;
}

uint64_t CMSUtility_IsRemoteInterruptionRequired(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote();
  if (!result)
  {
    return result;
  }

  result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  if (!result)
  {
    return result;
  }

  if (!CMSUtility_IsSessionEligibleToPlayOverSharedAudioRoute(a1, 0))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  LocalSessionPriority = CMSM_GetLocalSessionPriority(a1, 0);
  HighestRemotePlayingSessionPriority = CMSM_GetHighestRemotePlayingSessionPriority();
  if ([a1 isIDSMXCoreSession])
  {
    return 0;
  }

  return CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote() && LocalSessionPriority > 0x64 && LocalSessionPriority >= HighestRemotePlayingSessionPriority;
}

void cmsSetIsActive(void *a1, int a2, void *a3)
{
  v101 = *MEMORY[0x1E69E9840];
  if (([a1 isPlaying] & 1) == 0 && (objc_msgSend(a1, "wasActiveWhenDeviceOwnershipRelinquished") & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
      v79 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [a1 setIsPlayingStartTime:0];
    [a1 setIsPlayingStopTime:0];
  }

  if (objc_msgSend_isActive(a1) != a2)
  {
    isActive = objc_msgSend_isActive(a1);
    v9 = MXGetSessionLog(isActive, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v75 = [a1 clientName];
      v74 = [a1 audioCategory];
      v73 = [a1 audioMode];
      v10 = a3;
      if (CMSUtility_SessionMixesWithOthers(a1))
      {
        v11 = "Mixable";
      }

      else
      {
        v11 = "NonMixable";
      }

      ContextString = FigRoutingManagerContextUtilities_GetContextString([a1 routingContextUUID]);
      v13 = [a1 siriInputDeviceUUID];
      if (a2)
      {
        v14 = "";
      }

      else
      {
        v14 = "in";
      }

      v15 = a2;
      if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
      {
        v16 = "YES";
      }

      else
      {
        v16 = "NO";
      }

      v17 = [a1 isSharedAVAudioSessionInstance];
      *buf = 136449026;
      *&buf[4] = "-CMSessionMgr-";
      *&buf[12] = 2082;
      *&buf[14] = "cmsSetIsActive";
      v81 = 1024;
      v82 = 5522;
      v83 = 2114;
      v84 = v75;
      v85 = 2114;
      v86 = v74;
      v87 = 2114;
      v88 = v73;
      v89 = 2082;
      v90 = v11;
      a3 = v10;
      v91 = 2114;
      v92 = ContextString;
      v93 = 2114;
      v94 = v13;
      v95 = 2082;
      v96 = v14;
      v97 = 2082;
      v98 = v16;
      a2 = v15;
      v99 = 1024;
      v100 = v17;
      _os_log_impl(&dword_1B17A2000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i '%{public}@' with [%{public}@/%{public}@] [%{public}s] [%{public}@] siriEndpointID: %{public}@ going %{public}sactive NowPlayingApp:%{public}s IsSharedAVAudioSessionInstance:%{BOOL}u", buf, 0x72u);
    }

    if ([a1 sessionAssertionAuditTimer])
    {
      dispatch_source_cancel([a1 sessionAssertionAuditTimer]);
      [a1 setSessionAssertionAuditTimer:0];
    }

    if (a2)
    {
      [a1 setIsActive:1];
      [a1 setDoNotResetAudioCategoryOnNextInactive:0];
      [a1 setDoNotNotifyOtherSessionsOnNextInactive:0];
      if ((isActive & 1) == 0)
      {
        cmsVibrateForSession(a1, 1);
      }

      [a1 setInterruptingSession:0];
      [a1 setWaitingToResume:0];
      v18 = [a1 setWasInterruptedWhileSuspended:0];
      CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded(v18, v19);
      if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(v20, v21))
      {
        CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 2);
      }

      v22 = [a1 hasPhoneCallBehavior];
      if (v22)
      {
        v22 = [+[MXSessionManager sharedInstance](MXSessionManager setPhoneCallIsAboutToGoActiveOverCarPlay:"setPhoneCallIsAboutToGoActiveOverCarPlay:", 0];
        if (dword_1EB75DE40)
        {
          v79 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          v22 = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(v22, v23);
      if (!IsSessionBasedMutingEnabled)
      {
        IsSessionBasedMutingEnabled = MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v27);
        if (IsSessionBasedMutingEnabled)
        {
          [+[MXSessionManager sharedInstance](MXSessionManager replaceMutedBundleIDwithHostID];
          [+[MXSessionManager sharedInstance](MXSessionManager applyUplinkMute:"applyUplinkMute:", a1];
          IsSessionBasedMutingEnabled = [+[MXSessionManager sharedInstance](MXSessionManager setUplinkMutedBundleID:"setUplinkMutedBundleID:", 0];
        }
      }

      if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(IsSessionBasedMutingEnabled, v27) && [a1 isOutputMuted])
      {
        [+[MXSessionManager sharedInstance](MXSessionManager muteOutputForSession:"muteOutputForSession:", a1];
      }

      [+[MXSessionManager sharedInstance](MXSessionManager updateSupportedOutputChannelLayouts];
      CMSUtility_CreateReporterIDIfNeeded(a1);
      if ([a1 hasAudioMode:@"VoicePrompt"])
      {
        if ([a1 sessionDeactivateTimer])
        {
          dispatch_source_cancel([a1 sessionDeactivateTimer]);
        }

        [objc_msgSend(MEMORY[0x1E695DF00] "now")];
        v29 = v28;
        v30 = [a1 deactivateTimerDelay];
        v31 = v30;
        v33 = MXGetSerialQueue(v30, v32);
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __cmsSetIsActive_block_invoke;
        v77[3] = &unk_1E7AEBCA0;
        v77[4] = a1;
        v77[5] = v29;
        [a1 setSessionDeactivateTimer:{MXDispatchUtilityCreateOneShotTimer("cmsSetIsActive", "CMSessionManager.m", 5611, 0, 0, v33, v77, 0, v31, 0)}];
      }

LABEL_79:
      v56 = objc_msgSend_isActive(a1);
      v57 = [a1 activeOSTransaction];
      if (v56)
      {
        if (!v57)
        {
          if ([a1 clientName])
          {
            v59 = [a1 clientName];
          }

          else
          {
            v59 = @"MXSessionManager";
          }

          if ([a1 displayID])
          {
            v60 = [a1 displayID];
          }

          else
          {
            v60 = @"MXSessionDefaultID";
          }

          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", v59, v60];
          [v61 UTF8String];
          [objc_msgSend(a1 "clientPID")];
          [a1 setActiveOSTransaction:FigOSTransactionCreate()];
        }

        if (MX_FeatureFlags_IsSessionBasedMutingEnabled(v57, v58))
        {
          CMSMNotificationUtility_PostIsRecordingMutedDidChange(a1);
        }
      }

      else
      {
        if (v57)
        {
        }

        [a1 setActiveOSTransaction:0];
      }

      [+[MXSessionManager sharedInstance](MXSessionManager updateSomeAirPlayCapableVideoClientIsActive];
      CMSMUtility_UpdateVoiceAssistantActiveStateForCarPlay(a1);
      CMSMUtility_UpdatePlayAndRecordAppSpeechState(a3);
      CMSMNotificationUtility_PostVoicePromptStyleDidChange();
      if (a1)
      {
        v62 = CFRetain(a1);
      }

      v64 = MXGetNotificationSenderQueue(v62, v63);
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __cmsSetIsActive_block_invoke_147;
      v76[3] = &unk_1E7AE7CE0;
      v76[4] = a1;
      MXDispatchAsync("cmsSetIsActive", "CMSessionManager.m", 5866, 0, 0, v64, v76);
      v65 = [a1 audioSessionID];
      v66 = objc_msgSend_isActive(a1);
      CMSMNotificationUtility_PostSomeClientIsActiveDidChange(v65, v66, [a1 audioCategory], objc_msgSend(a1, "audioMode"));
      if (MX_FeatureFlags_IsSharePlayEnabled(v67, v68) && (([a1 isSharePlayMediaSession] & 1) != 0 || objc_msgSend(a1, "isSharePlayCapableCallSession")))
      {
        v69 = objc_msgSend_isActive(a1);
        CMSMNotificationUtility_PostSomeSharePlayCapableCallSessionIsActiveDidChange(v69);
      }

      CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics(a1, 0, 0xEu, 0, 0, 0);
      CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 0);
      [a1 sendSessionConfigurationInfoToVA];
      CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
      if (!a2 && ([a1 doNotResetAudioCategoryOnNextInactive] & 1) == 0 && !vaemIsDefaultVADInItsDefaultConfiguration() && !-[MXSessionManager isSiriSessionActiveAndRoutedToSiriOutputVAD](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSiriSessionActiveAndRoutedToSiriOutputVAD"))
      {
        IsSomeOtherNonIDSClientActiveOnDestination = CMSUtility_IsSomeOtherNonIDSClientActiveOnDestination(0, 0x1F2893B50);
        if (!IsSomeOtherNonIDSClientActiveOnDestination)
        {
          v72 = MXGetSessionLog(IsSomeOtherNonIDSClientActiveOnDestination, v71);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            *&buf[4] = "-CMSessionMgr-";
            *&buf[12] = 2082;
            *&buf[14] = "cmsSetIsActive";
            v81 = 1024;
            v82 = 5904;
            _os_log_impl(&dword_1B17A2000, v72, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Resetting Default VAD to Audio/Video as no other non IDS client is active on VAD", buf, 0x1Cu);
          }

          vaemResetVADCategoryToStandardAVAndDefaultMode();
        }
      }

      return;
    }

    cmsVibrateForSession(a1, 0);
    if (([a1 hasPhoneCallBehavior] & 1) != 0 || CMSMUtility_PhoneCallOrRingtoneExists())
    {
      [+[MXSessionManager sharedInstance](MXSessionManager setPhoneCallIsAboutToGoActiveOverCarPlay:"setPhoneCallIsAboutToGoActiveOverCarPlay:", 0];
      if (dword_1EB75DE40)
      {
        v79 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:a1, 1];
    if (([a1 doNotResetAudioCategoryOnNextInactive] & 1) != 0 || (objc_msgSend(a1, "currentlyControllingFlags") & 2) == 0 && (objc_msgSend(objc_msgSend(a1, "interruptingSession"), "isHardwareSafetySession") & 1) == 0 && !objc_msgSend(objc_msgSend(a1, "interruptingSession"), "isIDSMXCoreSession"))
    {
LABEL_60:
      if ([a1 sessionDeactivateTimer])
      {
        dispatch_source_cancel([a1 sessionDeactivateTimer]);
        [a1 setSessionDeactivateTimer:0];
        if (dword_1EB75DE40)
        {
          v79 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (-[MXSessionManager isAirPlaySession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAirPlaySession:", a1) && ([a1 reporterStarted] & 1) == 0 && !objc_msgSend(a1, "sessionDeactivateTimer"))
      {
        CMSUtility_StartReporterWithAudioStatistics(a1);
      }

      v46 = [a1 isDucked];
      if (v46)
      {
        [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
        v48 = -[MXDuckingSource initWithType:ID:duckVolume:duckFadeDuration:]([MXDuckingSource alloc], "initWithType:ID:duckVolume:duckFadeDuration:", 3, [objc_msgSend(a1 "ID")], 0.0, 0.0);
        [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:a1 duckingSource:a1, v48];
        [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperationForSession:"endAsyncDuckingOperationForSession:", a1];
      }

      if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(v46, v47) && [a1 isOutputMuted])
      {
        [+[MXSessionManager sharedInstance](MXSessionManager unmuteOutputForSession:"unmuteOutputForSession:", a1];
      }

      CMSUtility_ResetIsPlayingStates(a1);
      [a1 setIsActive:0];
      [a1 setTookControlOfStarkMainAudio:0];
      [a1 setCurrentlyControllingFlags:0];
      [a1 setWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground:0];
      [a1 setNowPlayingAppWasStoppedOnMostRecentActivation:0];
      [a1 setNowPlayingAppThatWasStoppedOnMostRecentActivationWasDoingSpokenAudio:0];
      v49 = [a1 setSystemSoundHasModifiedCurrentlyControllingFlags:0];
      CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded(v49, v50);
      if ([a1 orientationOverride] != 5)
      {
        [a1 setOrientationOverride:5];
        vaemSetOrientationOverride([a1 orientationOverride]);
        *buf = 0;
        *buf = [a1 orientationOverride];
        *&buf[8] = 0;
        vaemSetCaptureOrientationOverride(buf);
      }

      [a1 setWasActiveWhenDeviceOwnershipRelinquished:0];
      v51 = [+[MXSessionManager sharedInstance](MXSessionManager cleanupSessionAssertionsIfNeeded:"cleanupSessionAssertionsIfNeeded:cleanupReason:" cleanupReason:a1, 0];
      IsAudioFormatArbitrationEnabled = MX_FeatureFlags_IsAudioFormatArbitrationEnabled(v51, v52);
      if (((IsAudioFormatArbitrationEnabled != 0) & isActive) == 1)
      {
        IsAudioFormatArbitrationEnabled = cmsmUpdateDeviceAudioFormatConfigIfNeeded(1);
      }

      IsHighQualityLocalRecordingEnabled = MX_FeatureFlags_IsHighQualityLocalRecordingEnabled(IsAudioFormatArbitrationEnabled, v54);
      if (!a3 && IsHighQualityLocalRecordingEnabled)
      {
        [+[MXSessionManager sharedInstance](MXSessionManager postStopCommandToShadowingSessionsForSession:"postStopCommandToShadowingSessionsForSession:withShadowingOptions:" withShadowingOptions:a1, 4];
        -[MXSessionManagerIndependentAudioResource postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:](+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource, "sharedInstance"), "postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:", a1, 4, 0, [a1 waitingToResume]);
      }

      goto LABEL_79;
    }

    if (!vaemIsDefaultVADInItsDefaultConfiguration())
    {
      [a1 setIsActive:0];
      [a1 setCurrentlyControllingFlags:0];
      if (CMSUtility_IsSomeOtherNonIDSClientActiveOnDestination(a1, 0x1F2893B50))
      {
        IsSomeOtherNonIDSClientActiveWithNonDefaultVADConfiguration = CMSUtility_IsSomeOtherNonIDSClientActiveWithNonDefaultVADConfiguration(a1, 0x1F2893B50);
        if (IsSomeOtherNonIDSClientActiveWithNonDefaultVADConfiguration)
        {
          goto LABEL_52;
        }

        v36 = MXGetSessionLog(IsSomeOtherNonIDSClientActiveWithNonDefaultVADConfiguration, v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "-CMSessionMgr-";
          *&buf[12] = 2082;
          *&buf[14] = "cmsSetIsActive";
          v81 = 1024;
          v82 = 5673;
          _os_log_impl(&dword_1B17A2000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Resetting Default VAD to Audio/Video as there are no ther non IDS clients active on VAD with non Default VAD configuration", buf, 0x1Cu);
        }
      }

      vaemResetVADCategoryToStandardAVAndDefaultMode();
    }

LABEL_52:
    if ([a1 disallowAudioFormatChanges])
    {
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v38)
      {
        v38(CMBaseObject, 0x1F289B7B0, *MEMORY[0x1E695E4C0]);
      }
    }

    NumberOfChannelsForVADIDAndScope = vaemGetNumberOfChannelsForVADIDAndScope([+[MXSessionManager defaultVADID] sharedInstance];
    v40 = NumberOfChannelsForVADIDAndScope;
    if (!MX_FeatureFlags_IsAudioFormatArbitrationEnabled(NumberOfChannelsForVADIDAndScope, v41))
    {
      CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a1);
      IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([a1 audioCategory]);
      if (vaemIsNotCurrentDeviceFormat(CurrentOutputVADID, IsCategoryInputOnly, @"LPCM") || v40 != 2)
      {
        if ([+[MXSessionManager shouldSetDeviceFormatAndSampleRate:"shouldSetDeviceFormatAndSampleRate:"]
        {
          v44 = CMSUtility_GetCurrentOutputVADID(a1);
          vaemSetDeviceFormat(v44, @"LPCM", 1);
        }
      }
    }

    goto LABEL_60;
  }
}

uint64_t cmsVibrateForSession(void *a1, const char *a2)
{
  v2 = a2;
  v16 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_isActive(a1);
  if (result)
  {
    result = [a1 isVibrating];
    if (v2)
    {
      if ((result & 1) == 0)
      {
        result = [a1 vibrationData];
        if (result)
        {
          result = CMSystemSoundMgr_DeviceIsAllowedToVibrateIfConnectedToStark();
          if (result)
          {
            if (CMSMDeviceState_IsVibrationDisabled() && (result = [a1 prefersToVibeWhenVibrationsAreDisabled], (result & 1) == 0))
            {
              if (dword_1EB75DE40)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                return fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              if (dword_1EB75DE40)
              {
                v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (![a1 vibratingOSTransaction])
              {
                *v14 = 0;
                [a1 clientName];
                CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
                [a1 displayID];
                v10 = FigCFStringGetCStringPtrAndBufferToFree();
                v11 = "CMSessionManager";
                if (CStringPtrAndBufferToFree)
                {
                  v11 = CStringPtrAndBufferToFree;
                }

                v12 = "CMSessionDefaultID";
                if (v10)
                {
                  v12 = v10;
                }

                snprintf(__str, 0x80uLL, "%s-%s", v11, v12);
                free(*v14);
                free(0);
                [objc_msgSend(a1 "clientPID")];
                [a1 setVibratingOSTransaction:FigOSTransactionCreate()];
              }

              [a1 setIsVibrating:1];
              v13 = MX_FeatureFlags_IsHapticEngineCPMSEnabled() != 0;
              return FigVibratorPlayVibrationWithDictionary([a1 vibrationData], 0, 0, 0, 0, 1, v13, 1.0);
            }
          }
        }
      }
    }

    else if (result)
    {
      if (dword_1EB75DE40)
      {
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigVibratorStopWithOptions(0);
      [a1 setIsVibrating:0];
      v7 = [a1 vibratingOSTransaction];
      if (v7)
      {
      }

      return [a1 setVibratingOSTransaction:0];
    }
  }

  return result;
}

uint64_t CMSUtility_IsAudioModeCameraRelated(uint64_t result)
{
  if (result)
  {
    v1 = result;
    [result audioMode];
    if (FigCFEqual())
    {
      return 1;
    }

    [v1 audioMode];
    if (FigCFEqual())
    {
      return 1;
    }

    [v1 audioMode];
    if (FigCFEqual())
    {
      return 1;
    }

    [v1 audioMode];
    if (FigCFEqual())
    {
      return 1;
    }

    [v1 audioMode];
    result = FigCFEqual();
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL CMSMUtility_IsIndirectCarPlaySpeechModeTransitionsRequired()
{
  cf[20] = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  v1 = FigRoutingManagerCopyActivatedCarPlayEndpoint(v0);
  if (v1)
  {
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E6962308], *MEMORY[0x1E695E480], cf);
      v4 = cf[0];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 == *MEMORY[0x1E695E4D0];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v4 = cf[0];
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v5;
}

void CMSMNotificationUtility_PostVoicePromptStyleDidChange()
{
  v9 = *MEMORY[0x1E69E9840];
  VoicePromptStyle = CMSMUtility_GetVoicePromptStyle();
  if (VoicePromptStyle != qword_1EB75E148)
  {
    if (dword_1EB75DE40)
    {
      v8 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{VoicePromptStyle, @"VoicePromptStyle", 0}];
    [MXSystemController notifyAll:@"VoicePromptStyleDidChange" payload:v2 dontPostIfSuspended:0];
    v3 = v2;
    v5 = MXGetNotificationSenderQueue(v3, v4);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CMSMNotificationUtility_PostVoicePromptStyleDidChange_block_invoke;
    v6[3] = &unk_1E7AE7CE0;
    v6[4] = v2;
    MXDispatchAsync("CMSMNotificationUtility_PostVoicePromptStyleDidChange", "CMSessionManager_NotificationUtilities.m", 1072, 0, 0, v5, v6);
  }

  qword_1EB75E148 = VoicePromptStyle;
}

uint64_t CMSMUtility_PhoneCallOrRingtoneExists()
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
        if (([v4 isIDSMXCoreSession] & 1) == 0 && objc_msgSend_isActive(v4) && ((objc_msgSend(v4, "hasPhoneCallBehavior") & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v4)))
        {
          v1 = 1;
          goto LABEL_14;
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

LABEL_14:

  return v1;
}

void CMSMNotificationUtility_PostSomeClientIsActiveDidChange(unsigned int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (![+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a1];
    v10 = [v8 initWithObjectsAndKeys:{v9, @"AudioSessionID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a2 != 0), @"IsActive", a3, @"AudioCategory", a4, @"AudioMode", 0}];
    [MXSystemController notifyAll:@"SomeClientIsActiveDidChange" payload:v10 dontPostIfSuspended:0 remoteDeviceID:0];
  }
}

void CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = [objc_msgSend(a1 "reporterIDs")];
  if (v8 >= 1)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      valuePtr = 1;
      ValueAtIndex = CFArrayGetValueAtIndex([a1 reporterIDs], i);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      if (a5)
      {
        if (a1)
        {
          if ([a1 reporterStarted])
          {
            off_1EB75E028(valuePtr, a2, a3, a4);
          }

          else
          {
            if (dword_1EB75DE40)
            {
              LODWORD(v40) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v14 = v40;
              v15 = type[0];
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
              {
                v16 = v14;
              }

              else
              {
                v16 = v14 & 0xFFFFFFFE;
              }

              if (v16)
              {
                v17 = [a1 clientName];
                v43 = 136315650;
                v44 = "CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics";
                v45 = 2114;
                v46 = v17;
                v47 = 2048;
                v48 = valuePtr;
                LODWORD(v34) = 32;
                _os_log_send_and_compose_impl(v16, 0, v49, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v15, "-CMSUtilities- %s: Starting reporter for session : %{public}@, reporter id = %lld", &v43, v34);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            off_1EB75E000(valuePtr);
            [a1 setReporterStarted:1];
            off_1EB75E028(valuePtr, a2, a3, a4);
            [a1 setReporterStarted:0];
            off_1EB75E008(valuePtr);
            if (dword_1EB75DE40)
            {
              LODWORD(v40) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v30 = v40;
              v31 = type[0];
              if (os_log_type_enabled(v29, type[0]))
              {
                v32 = v30;
              }

              else
              {
                v32 = v30 & 0xFFFFFFFE;
              }

              if (v32)
              {
                v33 = [a1 clientName];
                v43 = 136315650;
                v44 = "CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics";
                v45 = 2114;
                v46 = v33;
                v47 = 2048;
                v48 = valuePtr;
                LODWORD(v34) = 32;
                _os_log_send_and_compose_impl(v32, 0, v49, 128, &dword_1B17A2000, v29, v31, "-CMSUtilities- %s: Stopping reporter for session : %{public}@, reporter id = %lld", &v43, v34);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      else
      {
        v41 = 0.0;
        v40 = 0;
        if ([a1 displayID])
        {
          [a1 displayID];
          CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        }

        else
        {
          CStringPtrAndBufferToFree = 0;
        }

        *type = 0;
        if (CMSMDeviceState_ItsAHomePod())
        {
          PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]), 0, type, 0);
        }

        CMSUtility_ComputePlaybackVolume(a1, &v41);
        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v19 = MX_RunningBoardServices_CopyAssertionReasonsStringForPID([objc_msgSend(a1 "clientPID")]);
        v20 = objc_alloc(MEMORY[0x1E696AEC0]);
        v21 = [v20 initWithString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", objc_msgSend(MEMORY[0x1E695DF00], "now"))}];
        if (a1)
        {
          v22 = [a1 displayID];
        }

        else
        {
          v22 = 0;
        }

        if (objc_msgSend_isActive(a1))
        {
          v23 = @"active";
        }

        else
        {
          v23 = @"inactive";
        }

        [v18 setObject:v23 forKey:0x1F2898C30];
        if (a1)
        {
          [v18 setObject:objc_msgSend(a1 forKey:{"audioCategory"), 0x1F2898BD0}];
          v24 = [a1 audioMode];
        }

        else
        {
          [v18 setObject:0 forKey:0x1F2898BD0];
          v24 = 0;
        }

        [v18 setObject:v24 forKey:0x1F2898BF0];
        [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a1, "prefersNoInterruptionsByRingtonesAndAlerts")), 0x1F2898C10}];
        [v18 setObject:v21 forKey:0x1F2898C50];
        if (v22)
        {
          v25 = v22;
        }

        else
        {
          v25 = @"UnknownDisplayID";
        }

        [v18 setObject:v25 forKey:0x1F2898C70];
        [v18 setObject:CMSMUtility_GetStringForApplicationState(objc_msgSend(a1 forKey:{"applicationState")), 0x1F2898C90}];
        [v18 setObject:v19 forKey:0x1F2898CB0];
        if ([a1 prefersInterruptionOnRouteDisconnectSetByClient])
        {
          [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a1, "prefersInterruptionOnRouteDisconnect")), 0x1F2898CD0}];
        }

        v26 = cmsutility_createVolumeChangeMessageForAudioStatistics(CStringPtrAndBufferToFree, *type, 0, 0, a6, v41);
        if (objc_msgSend_isActive(a1))
        {
          CMSUtility_SetAudioServiceTypeForReporterID(a1, valuePtr);
          if (([a1 reporterStarted] & 1) == 0)
          {
            if (dword_1EB75DE40)
            {
              v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            off_1EB75E000(valuePtr);
            off_1EB75E028(valuePtr, v26, 14, 5);
            [a1 setReporterStarted:1];
          }

          off_1EB75E028(valuePtr, v18, 1, 5);
        }

        else if ([a1 reporterStarted])
        {
          off_1EB75E028(valuePtr, v18, 1, 5);
          off_1EB75E028(valuePtr, v26, 14, 5);
          [a1 setReporterStarted:0];
          off_1EB75E008(valuePtr);
          if (dword_1EB75DE40)
          {
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (*type)
        {
          CFRelease(*type);
          *type = 0;
        }

        free(v40);
      }
    }
  }
}

float pvmGetDefaultVolume()
{
  valuePtr = 0.0;
  Value = *(sStorage + 224);
  if (!Value)
  {
    goto LABEL_25;
  }

  v1 = *(sStorage + 272);
  if (v1)
  {
    Value = CFDictionaryGetValue(Value, v1);
    v2 = Value;
  }

  else
  {
    v2 = 0;
  }

  if (MX_FeatureFlags_IsOnenessEnabled(Value, v1) && FigCFEqual() && *(sStorage + 288) && !FigCFEqual())
  {
    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    v3 = vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex) != 1885565807;
  }

  else
  {
    v3 = 1;
  }

  if (!FigCFEqual() || !*(sStorage + 324))
  {
    v5 = *(sStorage + 296);
    if (v5 && CFStringHasPrefix(v5, @"AudioAccessory"))
    {
      v6 = 1050253722;
      return *&v6;
    }

    if (!v3)
    {
      v6 = 1065353216;
      return *&v6;
    }

    if (v2)
    {
      v7 = v2;
LABEL_24:
      CFNumberGetValue(v7, kCFNumberFloat32Type, &valuePtr);
      return valuePtr;
    }

    v7 = CFDictionaryGetValue(*(sStorage + 224), @"Default");
    if (v7)
    {
      goto LABEL_24;
    }

LABEL_25:
    v6 = 1056964608;
    return *&v6;
  }

  v4 = 0.3;
  if (*(sStorage + 325))
  {
    return 0.5;
  }

  return v4;
}

void cmsmCopyCurrentActiveRoutesInfoForVADUID(uint64_t a1, CFArrayRef *a2, __CFArray **a3, __CFArray **a4)
{
  if (a2 || a3 || a4)
  {
    v7 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, a1);
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7))
      {
        v9 = CFGetTypeID(v8);
        if (v9 == CFArrayGetTypeID())
        {
          CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(v8, 0, a2, a3, 0, a4);
        }
      }

      CFRelease(v8);
    }
  }
}

void cmsmCopyCurrentActiveRouteInfoAtIndexForVADUID(uint64_t a1, CFIndex a2, void *a3, void *a4, void *a5)
{
  v19 = 0;
  theArray = 0;
  v18 = 0;
  cmsmCopyCurrentActiveRoutesInfoForVADUID(a1, &theArray, &v19, &v18);
  Count = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  if (a3)
  {
    if (Count > a2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
      v11 = CFRetain(ValueAtIndex);
      *a3 = v11;
      if (CFEqual(v11, &stru_1F2890CF0))
      {
        *a3 = 0;
      }
    }
  }

  v12 = v19;
  if (v19)
  {
    v12 = CFArrayGetCount(v19);
  }

  if (a4)
  {
    if (v12 > a2)
    {
      v13 = CFArrayGetValueAtIndex(v19, a2);
      v14 = CFRetain(v13);
      *a4 = v14;
      if (CFEqual(v14, &stru_1F2890CF0))
      {
        *a4 = 0;
      }
    }
  }

  v15 = v18;
  if (v18)
  {
    v15 = CFArrayGetCount(v18);
  }

  if (a5)
  {
    if (v15 > a2)
    {
      v16 = CFArrayGetValueAtIndex(v18, a2);
      v17 = CFRetain(v16);
      *a5 = v17;
      if (CFEqual(v17, &stru_1F2890CF0))
      {
        *a5 = 0;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
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

void vautility_copyRoutesInfoFromPorts(const __CFArray *a1, __CFArray **a2, __CFArray **a3, __CFArray **a4)
{
  if (!a1)
  {
    return;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return;
  }

  v9 = Count;
  v24 = a3;
  v25 = a4;
  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v13 = CFArrayCreateMutable(v10, 0, v11);
  v14 = CFArrayCreateMutable(v10, 0, v11);
  if (v9 < 2)
  {
    if (v9 != 1)
    {
      goto LABEL_24;
    }

LABEL_7:
    for (i = 0; i != v9; ++i)
    {
      FigCFArrayGetInt64AtIndex();
      v16 = vaeCopyFigOutputDeviceNameFromVADPort(0);
      v17 = vaeCopyDeviceIdentifierFromVADPort(0);
      v18 = vaeCopyRouteSubtypeFromVADPort(0);
      if (v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(Mutable, v19);
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(v13, v20);
      if (v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(v14, v21);
      if (v16)
      {
        CFRelease(v16);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    goto LABEL_24;
  }

  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(a1))
  {
    goto LABEL_7;
  }

  CFArrayAppendValue(Mutable, @"broadcast");
  CFArrayAppendValue(v13, &stru_1F2890CF0);
  CFArrayAppendValue(v14, &stru_1F2890CF0);
LABEL_24:
  if (a2)
  {
    *a2 = Mutable;
    v23 = v24;
    v22 = v25;
  }

  else
  {
    v23 = v24;
    v22 = v25;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v23)
  {
    *v23 = v13;
  }

  else if (v13)
  {
    CFRelease(v13);
  }

  if (v22)
  {
    *v22 = v14;
  }

  else if (v14)
  {
    CFRelease(v14);
  }
}

id pvmCreateSeparateCategoryAndModeStrings(id result, void *a2, void *a3)
{
  if (!result)
  {
    v6 = 0;
LABEL_6:
    v7 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = [result componentsSeparatedByString:@"~"];
  v6 = [v5 objectAtIndexedSubscript:0];
  result = [v5 count];
  if (result < 2)
  {
    goto LABEL_6;
  }

  result = [v5 objectAtIndexedSubscript:1];
  v7 = result;
  if (a2)
  {
LABEL_7:
    result = v6;
    *a2 = result;
  }

LABEL_8:
  if (a3)
  {
    result = v7;
    *a3 = result;
  }

  return result;
}

float pvmGetMaximumCategoryVolume(const __CFString *a1, const void *a2)
{
  valuePtr = 1.0;
  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  v3 = *(sStorage + 216);
  v4 = 1.0;
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, MappedCategoryWithModeAppended);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
      v4 = valuePtr;
      if (valuePtr > 1.0)
      {
        return 1.0;
      }
    }
  }

  return v4;
}

float PVMGetRawVolumeForCurrentRouteFromVolume(const __CFString *a1, const void *a2, float a3)
{
  PVMInitialize();
  v15 = 0;
  if (a1)
  {
    cf[0] = 0;
    MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
    pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, &v15, cf);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    v7 = *(sStorage + 232);
    v15 = v7;
    if (v7)
    {
      CFRetain(v7);
    }
  }

  FigSimpleMutexLock();
  v8 = v15;
  v9 = *(sStorage + 280);
  v16[0] = *(sStorage + 264);
  v16[1] = v9;
  v17 = *(sStorage + 296);
  v10 = *(sStorage + 280);
  *cf = *(sStorage + 264);
  v19 = v10;
  v20 = *(sStorage + 296);
  VolumeLimitPref = pvmGetVolumeLimitPref(cf);
  CurrentVolumeLimitForRoute = pvmGetCurrentVolumeLimitForRoute(v16, v8);
  FigSimpleMutexUnlock();
  if (v15)
  {
    CFRelease(v15);
  }

  v13 = 1.0;
  if (a3 <= 1.0)
  {
    v13 = a3;
  }

  return v13 * (VolumeLimitPref * CurrentVolumeLimitForRoute);
}

__CFString *MX_RunningBoardServices_CopyAssertionReasonsStringForPID(uint64_t a1)
{
  v1 = MX_RunningBoardServices_CopyAssertionReasonsForPID(a1);
  if ([v1 count] >= 2)
  {
    v1 = [objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{v1), "allObjects"}];
  }

  if ([v1 count])
  {
    v2 = [v1 componentsJoinedByString:{@", "}];
  }

  else
  {
    v2 = &stru_1F2890CF0;
  }

  return v2;
}

void *MX_RunningBoardServices_CopyAssertionReasonsForPID(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(mx_runningBoardServices_getProcessHandleForPID(a1) "currentState")];
  v2 = [v1 count];
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v1);
          }

          [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(*(*(&v8 + 1) + 8 * v6++), "reason"))}];
        }

        while (v4 != v6);
        v4 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  return v2;
}

uint64_t CMSUtility_SetAudioServiceTypeForReporterID(void *a1, uint64_t a2)
{
  if ([a1 isTheAssistant])
  {
    v4 = off_1EB75E010;
    v5 = a2;
    v6 = 1;
  }

  else
  {
    [a1 audioCategory];
    if (FigCFEqual())
    {
      v4 = off_1EB75E010;
      v5 = a2;
      v6 = 4;
    }

    else
    {
      result = [a1 isMemberOfClass:objc_opt_class()];
      if (result)
      {
        return result;
      }

      if (CMSUtility_HasPhoneCallBehaviour(a1))
      {
        v4 = off_1EB75E010;
        v5 = a2;
        v6 = 2;
      }

      else
      {
        [a1 audioCategory];
        if (FigCFEqual())
        {
          v4 = off_1EB75E010;
          v5 = a2;
          v6 = 3;
        }

        else if (CMSUtility_IsAudioCategoryNonLongFormPlayback(a1))
        {
          v4 = off_1EB75E010;
          v5 = a2;
          v6 = 8;
        }

        else if (CMSUtility_IsAudioCategoryLongFormPlayback(a1))
        {
          v4 = off_1EB75E010;
          v5 = a2;
          v6 = 7;
        }

        else
        {
          IsAudioCategoryAlertType = CMSUtility_IsAudioCategoryAlertType(a1);
          v4 = off_1EB75E010;
          if (IsAudioCategoryAlertType)
          {
            v5 = a2;
            v6 = 10;
          }

          else
          {
            v5 = a2;
            v6 = 0;
          }
        }
      }
    }
  }

  return v4(v5, v6);
}

void cmsTakeControl(void *a1, int a2)
{
  v48[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (([a1 dontTakeOverHardware] & 1) == 0)
  {
    v4 = qword_1EB75E090;
    v5 = [a1 audioCategory];
    v6 = [a1 audioMode];
    v7 = *(*(CMBaseObjectGetVTable() + 24) + 16);
    if (v7)
    {
      v7(v4, 0x1F289BAB0, *MEMORY[0x1E695E480], v5, v6, 0, &cf);
    }

    if ([a1 hasInput] && *MEMORY[0x1E695E4C0] == cf)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      a2 &= ~2u;
    }

    IsPlayingToDefaultVAD = CMSUtility_IsPlayingToDefaultVAD(a1);
    if (!IsPlayingToDefaultVAD)
    {
      IsPlayingToDefaultVAD = [a1 clientPriority];
      if (!IsPlayingToDefaultVAD)
      {
        if (dword_1EB75DE40)
        {
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          IsPlayingToDefaultVAD = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        a2 &= ~2u;
      }
    }

    if (CMSMVAUtility_IsAdditiveRoutingEnabled(IsPlayingToDefaultVAD, v10) && [a1 willRouteToOnDemandVADOnActivation])
    {
      if (dword_1EB75DE40)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [a1 setCurrentlyControllingFlags:0];
      a2 = 0;
    }

    if (([a1 prefersToTakeHWControlFlagsFromAnotherSession] & 1) == 0 && CMSystemSoundManager_GetNumberOfSystemSoundsPlayingAudio())
    {
      a2 &= ~0x10u;
    }

    if ([a1 isIDSMXCoreSession] && a2)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a2 = 0;
    }

    v14 = [a1 setCurrentlyControllingFlags:{objc_msgSend(a1, "currentlyControllingFlags") | a2}];
    if (dword_1EB75DE40)
    {
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      v14 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    IsSmartRoutingOnActivationEnabled = MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(v14, v15);
    if (IsSmartRoutingOnActivationEnabled)
    {
      CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 11);
    }

    if (MX_FeatureFlags_IsAudioFormatArbitrationEnabled(IsSmartRoutingOnActivationEnabled, v18))
    {
      cmsmUpdateDeviceAudioFormatConfigIfNeeded(0);
    }

    if (([a1 currentlyControllingFlags] & 2) != 0)
    {
      if ([a1 waitingForRemoteInterruptionDoneIdentifier])
      {
        CMSM_IDSConnection_WaitForReply([a1 waitingForRemoteInterruptionDoneIdentifier]);
        [a1 setWaitingForRemoteInterruptionDoneIdentifier:0];
      }

      if ([+[MXSessionManager carPlayIsConnected] sharedInstance]
      {
        if (dword_1EB75DE40)
        {
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        IsSessionEligibleToPlayOverSharedAudioRoute = CMSUtility_IsSessionEligibleToPlayOverSharedAudioRoute(a1, 0);
        if (IsSessionEligibleToPlayOverSharedAudioRoute)
        {
          v22 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
          A2DPPort = cmsmGetA2DPPort(v22);
          if (v22)
          {
            CFRelease(v22);
          }

          if (cmsmShouldRequestOwnershipOnSharedAudioRoute(a1, A2DPPort))
          {
            IsSessionEligibleToPlayOverSharedAudioRoute = vaeRequestOwnershipOnBTPort(A2DPPort, 6);
            if (!IsSessionEligibleToPlayOverSharedAudioRoute)
            {
              IsSessionEligibleToPlayOverSharedAudioRoute = [a1 setAddSharedAudioRouteToRoutablePorts:1];
            }
          }

          else
          {
            IsSessionEligibleToPlayOverSharedAudioRoute = vaeGetBTPortOwnsSharedAudioConnection(A2DPPort);
            if (IsSessionEligibleToPlayOverSharedAudioRoute)
            {
              v25 = vaeCopyDeviceIdentifierFromVADPort(A2DPPort);
              IsSystemAudioRoutingToDeviceID = FigRoutingManagerUtilities_IsSystemAudioRoutingToDeviceID(v25);
              if (!IsSystemAudioRoutingToDeviceID || !vaeDoesBTPortSupportInEarDetection(A2DPPort) || (IsSessionEligibleToPlayOverSharedAudioRoute = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(A2DPPort), IsSessionEligibleToPlayOverSharedAudioRoute))
              {
                IsSessionEligibleToPlayOverSharedAudioRoute = [a1 setAddSharedAudioRouteToRoutablePorts:IsSystemAudioRoutingToDeviceID];
              }

              if (v25)
              {
                CFRelease(v25);
              }
            }
          }
        }

        else if (dword_1EB75DE40)
        {
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          IsSessionEligibleToPlayOverSharedAudioRoute = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (!MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(IsSessionEligibleToPlayOverSharedAudioRoute, v21) && [a1 shouldAttemptSmartRoutingHijackForMusicApp])
        {
          CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 10);
        }
      }

      cmsSetCategoryOnPVMAndAudioDevice(a1, ([a1 currentlyControllingFlags] & 0x10) != 0, 0);
      v27 = [a1 reapplyDeviceSampleRateAndBufferSizeOnVADIfNeeded];
      if (!MX_FeatureFlags_IsAudioFormatArbitrationEnabled(v27, v28))
      {
        CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a1);
        IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([a1 audioCategory]);
        if (vaemIsNotCurrentDeviceFormat(CurrentOutputVADID, IsCategoryInputOnly, [a1 preferredHardwareFormat]))
        {
          v34 = CMSUtility_GetCurrentOutputVADID(a1);
          if (vaemSetDeviceFormat(v34, [a1 preferredHardwareFormat], 0))
          {
            v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      if ([a1 disallowAudioFormatChanges])
      {
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v30)
        {
          v30(CMBaseObject, 0x1F289B7B0, *MEMORY[0x1E695E4D0]);
        }
      }

      if ([a1 hasInput] && FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B650))
      {
        if ([a1 desiredInputGainScalar])
        {
          [objc_msgSend(a1 "desiredInputGainScalar")];
          FigVAEndpointManagerSetPropertyFloat32(qword_1EB75E090, 0x1F289B770, v31);
        }

        else
        {
          vaemSetInputGainFromPreferenceIfPresent();
        }
      }

      if ([a1 orientationOverride] == 5)
      {
        if ([a1 preferredStereoInputOrientation])
        {
          vaemSetStereoInputOrientation([a1 preferredStereoInputOrientation]);
        }
      }

      else
      {
        vaemSetOrientationOverride([a1 orientationOverride]);
        v48[0] = 0;
        LODWORD(v48[0]) = [a1 orientationOverride];
        v48[1] = 0;
        vaemSetCaptureOrientationOverride(v48);
      }
    }

    v36 = [a1 sendSessionConfigurationInfoToVA];
    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded(v36, v37);
    if (([a1 currentlyControllingFlags] & 0x10) != 0 || (updated = CMSUtility_IsPlayingToDefaultVAD(a1), !updated))
    {
      if ([a1 wasMutedBeforeInterruption])
      {
        MXCoreSessionSetProperty(a1, @"UserMuted");
      }

      [a1 setWasMutedBeforeInterruption:0];
      updated = [a1 doesntActuallyPlayAudio];
      if ((updated & 1) == 0)
      {
        updated = CMSUtility_UpdatePlaybackVolume(a1, 0.0, 0.0);
      }
    }

    if (!MX_FeatureFlags_IsAudioFormatArbitrationEnabled(updated, v39) && (([a1 currentlyControllingFlags] & 2) != 0 || -[MXSessionManager shouldSetDeviceFormatAndSampleRate:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "shouldSetDeviceFormatAndSampleRate:", a1) || FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]) && CMSUtility_IsPlayingToSystemSoundRemoteVAD(a1)))
    {
      ShouldSessionSetInputSampleRate = CMSUtility_ShouldSessionSetInputSampleRate(a1);
      if (ShouldSessionSetInputSampleRate)
      {
        [a1 preferredInputSampleRate];
      }

      else
      {
        [a1 preferredOutputSampleRate];
      }

      v43 = v42;
      PreferredIOBufferFrames = CMSUtility_GetPreferredIOBufferFrames(a1, v41);
      PreferredIOBufferDuration = CMSUtility_GetPreferredIOBufferDuration(a1, v45);
      cmsSetDeviceSampleRateAndBufferSize(a1, PreferredIOBufferFrames, ShouldSessionSetInputSampleRate != 0, v43, *&PreferredIOBufferDuration);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigRoutingContextXPCRemoteGetObjectID(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return CMBaseObjectGetVTable();
}

uint64_t cmsmRouteDescriptionEqual(CFDictionaryRef theDict, const __CFDictionary *a2)
{
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"RouteType");
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    CFDictionaryGetValue(a2, @"RouteType");
  }

LABEL_5:
  result = FigCFEqual();
  if (result)
  {
    if (FigCFEqual() && FigCFEqual())
    {
      return 1;
    }

    else if (FigCFEqual())
    {
      CFDictionaryGetValue(theDict, @"RouteUID");
      CFDictionaryGetValue(a2, @"RouteUID");
      result = FigCFEqual();
      if (result)
      {
        CFDictionaryGetValue(theDict, @"RouteSubtype");
        CFDictionaryGetValue(a2, @"RouteSubtype");
        result = FigCFEqual();
        if (result)
        {
          CFDictionaryGetValue(theDict, @"RouteSupportsAirPlayVideo");
          CFDictionaryGetValue(a2, @"RouteSupportsAirPlayVideo");
          result = FigCFEqual();
          if (result)
          {
            CFDictionaryGetValue(theDict, @"RouteSupportsAirPlayScreen");
            CFDictionaryGetValue(a2, @"RouteSupportsAirPlayScreen");
            return FigCFEqual() != 0;
          }
        }
      }
    }

    else
    {
      CFDictionaryGetValue(theDict, @"AVAudioRouteName");
      CFDictionaryGetValue(a2, @"AVAudioRouteName");

      return FigCFEqual();
    }
  }

  return result;
}

BOOL vaemIsContinuityScreenOutputPortPresentInConnectedOutputPorts(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsOnenessEnabled(a1, a2))
  {
    v2 = dword_1EB75D1B8 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t vaemGetDeviceBufferNumPCMFrames(AudioObjectID a1, AudioObjectPropertyScope a2)
{
  outData = 0;
  inAddress.mSelector = 1718839674;
  inAddress.mScope = a2;
  inAddress.mElement = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return 0;
  }

  else
  {
    return outData;
  }
}

CFMutableArrayRef CMSMUtility_CopyPickableRoutes()
{
  v0 = CMSUtility_CopyNonNULLCategoryForPickingRoutes(0);
  v1 = CMSUtility_CopyNonNULLModeForPickingRoutes(0);
  v2 = CMSUtility_CopyAllowedPortTypesArrayForPickingRoutes(0);
  v3 = CMSUtility_CopyActivationContextForPickingRoutes(0);
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveCoreSessionControllingRouting];
  v5 = cmsmCopyPickableRoutesForRouteConfiguration(v0, v1, v3, v2, [v4 prefersBluetoothHighQualityContentCapture]);
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

NSString *CMSUtility_CopyNonNULLCategoryForPickingRoutes(void *a1)
{
  if (a1)
  {
    result = [a1 audioCategory];
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = CMSMUtility_CopyCurrentlyActiveCategory();
    if (result)
    {
      return result;
    }
  }

  return CFRetain(@"Audio/Video");
}

NSString *CMSUtility_CopyNonNULLModeForPickingRoutes(void *a1)
{
  if (a1)
  {
    result = [a1 audioMode];
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = CMSMUtility_CopyCurrentlyActiveMode();
    if (result)
    {
      return result;
    }
  }

  return CFRetain(@"Default");
}

CFTypeRef CMSUtility_CopyAllowedPortTypesArrayForPickingRoutes(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [a1 allowedPortTypes];
    if (v1)
    {
      return CFRetain(v1);
    }
  }

  else
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v1 = [v3 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v1)
    {
      v4 = *v7;
      while (2)
      {
        for (i = 0; i != v1; i = (i + 1))
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v3);
          }

          if (objc_msgSend_isActive(*(*(&v6 + 1) + 8 * i)))
          {
            v1 = [+[MXSessionManager sharedInstance](MXSessionManager currentAllowedPortTypes];
            goto LABEL_14;
          }
        }

        v1 = [v3 countByEnumeratingWithState:&v6 objects:v10 count:16];
        if (v1)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if (v1)
    {
      return CFRetain(v1);
    }
  }

  return 0;
}

CFPropertyListRef cmsmDeepCopyPickedRouteDescription(const __CFArray *a1)
{
  context = 0;
  if (a1)
  {
    v5.length = CFArrayGetCount(a1);
    v5.location = 0;
    CFArrayApplyFunction(a1, v5, cmsmGetPickedRouteApplierFunction, &context);
    v2 = context;
  }

  else
  {
    v2 = 0;
  }

  return CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v2, 0);
}

__CFString *CMSMUtility_CopyMappedMXSessionAudioCategory(__CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CMSMUtility_CopyMappedMXSessionAudioCategory_onceToken != -1)
    {
      CMSMUtility_CopyMappedMXSessionAudioCategory_cold_1();
    }

    v2 = [CMSMUtility_CopyMappedMXSessionAudioCategory_sAudioSessionToMXCategoryMap objectForKey:v1];
    if (!v2)
    {
      if ([(__CFString *)v1 hasPrefix:@"AVAudioSessionCategory"])
      {
        v2 = @"MediaPlayback";
      }

      else
      {
        v2 = v1;
      }
    }

    return v2;
  }

  return result;
}

__CFString *CMSMUtility_CopyMappedMXSessionAudioMode(__CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CMSMUtility_CopyMappedMXSessionAudioMode_onceTokenTwo != -1)
    {
      CMSMUtility_CopyMappedMXSessionAudioMode_cold_1();
    }

    v2 = [CMSMUtility_CopyMappedMXSessionAudioMode_sAudioSessionToMXModeMap objectForKey:v1];
    if (!v2)
    {
      if ([(__CFString *)v1 hasPrefix:@"AVAudioSessionMode"])
      {
        v1 = @"Default";
      }

      if ([(__CFString *)v1 isEqualToString:@"AVAudioSessionModeShortFormVideo"])
      {
        v2 = @"ShortFormVideo";
      }

      else if ([(__CFString *)v1 containsString:@"WebCam"])
      {
        v2 = @"WebCam";
      }

      else
      {
        v2 = v1;
      }
    }

    return v2;
  }

  return result;
}

uint64_t vaeIsQuiesceableWiredPort(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v13 = *MEMORY[0x1E69E9840];
  outData = 0;
  IsQuiesceableWiredConnectionEnabled = MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(a1, a2);
  if (!IsQuiesceableWiredConnectionEnabled && !MX_FeatureFlags_IsSystemInputPickerEnabled(IsQuiesceableWiredConnectionEnabled, v4))
  {
    return 0;
  }

  if (!v2)
  {
    inAddress.mSelector = 0;
    v11[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_8;
  }

  inAddress.mElement = 0;
  *&inAddress.mSelector = *"rwqpbolg";
  ioDataSize = 4;
  *v11 = AudioObjectGetPropertyData(v2, &inAddress, 0, 0, &ioDataSize, &outData);
  if (*v11)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
LABEL_8:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return outData;
}

CFMutableArrayRef cmsmCopyWirelessPortsArrayForRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, int a4)
{
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
  v9 = vaemCopyConnectedPortsListForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, a4, 0);
  if (v9)
  {
    v10 = v9;
    Count = CFArrayGetCount(v9);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (vaeGetConnectionTypeForPort(valuePtr) == 1885544823)
        {
          v15 = vaeCopyNameForPort(valuePtr);
          PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
          if (FigCFEqual())
          {
            v17 = 1;
          }

          else
          {
            v17 = PortTypeFromPortID == 1885433975;
          }

          if (!v17)
          {
            v18 = CFArrayGetValueAtIndex(v10, i);
            CFArrayAppendValue(Mutable, v18);
          }

          if (v15)
          {
            CFRelease(v15);
          }
        }
      }
    }

    CFRelease(v10);
    if (Mutable)
    {
      CFArrayGetCount(Mutable);
    }

    return Mutable;
  }

  else
  {
    v20 = *MEMORY[0x1E695E480];
    v21 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(v20, 0, v21);
  }
}

uint64_t CMSessionMgrCopyPickableRoutesForCategoryAndMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_3(&v9);
    return v9;
  }

  if (!a2)
  {
    CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_2(&v9);
    return v9;
  }

  if (!a3)
  {
    CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_1(&v9);
    return v9;
  }

  v6 = MXGetSerialQueue(a1, a2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CMSessionMgrCopyPickableRoutesForCategoryAndMode_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  MXDispatchAsyncAndWait("CMSessionMgrCopyPickableRoutesForCategoryAndMode", "CMSessionManager.m", 15708, 0, 0, v6, v8);
  return 0;
}

uint64_t _VAEndpointManager_CopyPropertyForRouteConfiguration(uint64_t a1, const void *a2, uint64_t a3, NSDictionary *a4, uint64_t a5, uint64_t a6, void *a7)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (a2 && a7)
  {
    *a7 = 0;
    if (CFEqual(a2, *MEMORY[0x1E69618A8]))
    {
      v12 = vaemCopyAvailableEndpointsForRouteConfiguration(@"Audio/Video", &cfstr_Default.isa, 0, 0, 0);
    }

    else if (CFEqual(a2, @"VAEM_InputDeviceIsAvailableForRouteConfiguration"))
    {
      VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a4);
      VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a5);
      v15 = vaemSystemHasAudioInputDeviceForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName);
      v16 = MEMORY[0x1E695E4C0];
      if (v15)
      {
        v16 = MEMORY[0x1E695E4D0];
      }

      v12 = CFRetain(*v16);
    }

    else
    {
      result = CFEqual(a2, @"VAEM_ActiveInputRouteNamesForRouteConfiguration");
      if (!result)
      {
        return result;
      }

      v12 = vaemCopyActiveInputRouteNamesForRouteConfiguration(a4, a5, 0, 0);
    }

    return OUTLINED_FUNCTION_6_3(v12);
  }

  return result;
}

void CMSMNotificationUtility_PostIsRecordingMutedDidChange(void *a1)
{
  location[16] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a1, "isRecordingMuted")), @"Muted"}];
  if ([a1 hasExternalMuteNotificationContext])
  {
    if (dword_1EB75DE40)
    {
      v10 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v2 setObject:@"External" forKey:@"Context"];
    [a1 setHasExternalMuteNotificationContext:0];
  }

  inited = objc_initWeak(location, a1);
  v6 = MXGetNotificationSenderQueue(inited, v5);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CMSMNotificationUtility_PostIsRecordingMutedDidChange_block_invoke;
  v7[3] = &unk_1E7AEAD68;
  objc_copyWeak(&v8, location);
  v7[4] = a1;
  v7[5] = v2;
  MXDispatchAsync("CMSMNotificationUtility_PostIsRecordingMutedDidChange", "CMSessionManager_NotificationUtilities.m", 1482, 0, 0, v6, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

void sub_1B17FDE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CMSMUtility_UpdatePlayAndRecordAppSpeechState(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = dword_1EB75E13C;
  FigSimpleMutexLock();
  v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v4)
  {

    goto LABEL_18;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v15;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v14 + 1) + 8 * i);
      if (objc_msgSend_isActive(v9) && CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(v9))
      {
        if ([v9 isRecording] && ((objc_msgSend(v9, "isTheAssistant") & 1) != 0 || (objc_msgSend(v9, "hasPhoneCallBehavior") & 1) == 0))
        {
          dword_1EB75E13C = 11;

          goto LABEL_21;
        }

        dword_1EB75E13C = 10;
        v6 = 1;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  if (!v6)
  {
LABEL_18:
    if (!CMSMUtility_IsIndirectCarPlaySpeechModeTransitionsRequired())
    {
      if (a1 && CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(a1))
      {
        v10 = 10;
        goto LABEL_20;
      }

      if ((v2 & 0xFFFFFFFE) != 0xA)
      {
        dword_1EB75E13C = 0;
        goto LABEL_21;
      }
    }

    v10 = -1;
LABEL_20:
    dword_1EB75E13C = v10;
  }

LABEL_21:
  result = FigSimpleMutexUnlock();
  if (v2 != dword_1EB75E13C)
  {
    result = FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]);
    if (result)
    {
      v12 = dword_1EB75E13C;
      if (CMSMUtility_IsIndirectCarPlaySpeechModeTransitionsRequired())
      {
        v13 = 0;
      }

      else if (([a1 hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(a1) || CMSMUtility_PhoneCallOrRingtoneExists())
      {
        v13 = 1;
      }

      else if ([+[MXSessionManager phoneCallIsAboutToGoActiveOverCarPlay] sharedInstance]
      {
        v13 = 1;
      }

      else
      {
        v13 = 0xFFFFFFFFLL;
      }

      return FigEndpointCentralUpdateiOSDeviceState(qword_1EB75E178, v13, v12, @"PlayAndRecord category app activity", 0);
    }
  }

  return result;
}

uint64_t CMSMUtility_UpdateVoiceAssistantActiveStateForCarPlay(void *a1)
{
  if (!qword_1EB75E178 || ![a1 isTheAssistant])
  {
    return 0;
  }

  if (objc_msgSend_isActive(a1))
  {
    IsSiriActive = 1;
  }

  else
  {
    IsSiriActive = CMSMUtility_IsSiriActive();
  }

  v4 = qword_1EB75E178;

  return FigEndpointCentralUpdateIsVoiceAssistantActive(v4, IsSiriActive);
}

uint64_t CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(uint64_t result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ([+[MXSessionManager sessionUtilizesIndependentRecordingOnly:"sessionUtilizesIndependentRecordingOnly:"]
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 0;
    }

    if (CMSUtility_IsAudioModeCameraRelated(v1) || CMSUtility_IsAudioCategoryVoicemail(v1))
    {
      return 0;
    }

    if (CMSMUtility_IsPlayAndRecordCategory([v1 audioCategory]))
    {
      return 1;
    }

    else
    {
      return [v1 hasPhoneCallBehavior];
    }
  }

  return result;
}

void *CMSUtility_IsAudioCategoryVoicemail(void *result)
{
  if (result)
  {
    [result audioCategory];

    return FigCFEqual();
  }

  return result;
}

CFTypeRef CMSMUtility_CopySystemAudioRoutingContextUUID()
{
  result = qword_1EB75E190;
  if (qword_1EB75E190 || (FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&qword_1EB75E190), (result = qword_1EB75E190) != 0))
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef FigRoutingManagerCopyActivatedCarPlayEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  if (FigRoutingManagerContextUtilities_CopyActivatedEndpoints(a1, &cf))
  {
LABEL_3:
    v1 = 0;
    goto LABEL_4;
  }

  if (!cf)
  {
    return 0;
  }

  Count = CFArrayGetCount(cf);
  if (Count < 1)
  {
    goto LABEL_3;
  }

  v3 = Count;
  v4 = 0;
  v5 = *MEMORY[0x1E69626C0];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, v4);
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, v5))
    {
      break;
    }

    if (v3 == ++v4)
    {
      goto LABEL_3;
    }
  }

  if (!ValueAtIndex)
  {
    goto LABEL_3;
  }

  v1 = CFRetain(ValueAtIndex);
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

__CFString *CMSMUtility_GetVoicePromptStyle()
{
  FigSimpleMutexLock();
  IsDoingActivity = FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E5F0, @"PhoneCall");
  v1 = FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E5F0, @"Speech");
  FigSimpleMutexUnlock();
  if ([+[MXSessionManager isSessionWithAudioModeRecording:"isSessionWithAudioModeRecording:"]
  {
    v2 = kCMSessionVoicePromptStyle_None;
  }

  else if ([+[MXSessionManager sharedInstance](MXSessionManager areSessionsWithAudioModesActive:"areSessionsWithAudioModesActive:", [+[MXSessionManager audioModesWithShortVoicePromptStyle] sharedInstance]]
  {
    v2 = kCMSessionVoicePromptStyle_Short;
  }

  else
  {
    v2 = kCMSessionVoicePromptStyle_Short;
    if (!CMSMUtility_PhoneCallOrRingtoneExists() && !IsDoingActivity && !v1 && ![+[MXSessionManager sharedInstance](MXSessionManager isSessionWithAudioCategoryActive:"isSessionWithAudioCategoryActive:", @"Voicemail"]&& ![+[MXSessionManager isSessionWithAudioModePlaying:"isSessionWithAudioModePlaying:"]
    {
      v2 = kCMSessionVoicePromptStyle_Normal;
    }
  }

  return *v2;
}

uint64_t FigEndpointCentralEntityIsDoingActivity(uint64_t result, uint64_t a2, const void *a3)
{
  memset(v6, 0, sizeof(v6));
  if (result)
  {
    result = CMBaseObjectGetDerivedStorage();
    if (result)
    {
      v5 = result;
      result = 0;
      if (a2)
      {
        if (a3)
        {
          fsmcontroller_GetCurrentMode(*(v5 + 24), v6);
          if (CFEqual(a3, @"PhoneCall"))
          {
            return FigCFEqual();
          }

          if (CFEqual(a3, @"Speech"))
          {
            return FigCFEqual();
          }

          result = CFEqual(a3, @"TurnByTurnNavigation");
          if (result)
          {
            return FigCFEqual();
          }
        }
      }
    }
  }

  return result;
}

void *CMSUtility_IsAudioCategoryRingtone(void *result)
{
  if (result)
  {
    [result audioCategory];

    return FigCFEqual();
  }

  return result;
}

void CMSUtility_ComputePlaybackVolume(void *a1, float *a2)
{
  if ([a1 userMuted] && !PVMIsOKToMuteCurrentCategory())
  {
    [a1 setUserMuted:0];
  }

  v4 = 0.0;
  if (([a1 userMuted] & 1) == 0)
  {
    v5 = PVMGetCurrentPreferredRawVolume();
    v6 = [a1 audioDestinationPriority];
    v7 = @"VirtualAudioDevice_Default";
    if (a1)
    {
      v7 = @"VirtualAudioDevice_Default";
      if (v6)
      {
        v7 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v6];
      }
    }

    if (!FigCFEqual() || ([a1 isTheAssistant] & 1) != 0 || (objc_msgSend(a1, "audioCategory"), FigCFEqual()))
    {
      v21 = 0;
      *cf = 0u;
      *v20 = 0u;
      cmsmCopyCurrentActiveRouteInfoAtIndexForVADUID(v7, 0, &cf[1], &v20[1], v20);
      v8 = -[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]);
      v9 = [a1 audioMode];
      *number = *cf;
      v17 = *v20;
      v18 = v21;
      v10 = PVMGetVolumePreference(v8, v9, number);
      v5 = PVMGetRawVolumeForCurrentRouteFromVolume(v8, [a1 audioMode], v10);
      if ([a1 isTheAssistant])
      {
        if (!PVMVolumePrefExistsForRouteAndCategory(cf[1], v20[1], v20[0], 0, 0))
        {
          v11 = FigRoutingManagerCopyEndpointWithDeviceID(v20[1], 1, *MEMORY[0x1E69618F8], 0);
          if (v11)
          {
            v12 = v11;
            number[0] = 0;
            valuePtr = 0;
            CMBaseObject = FigEndpointGetCMBaseObject();
            v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v14)
            {
              v14(CMBaseObject, 0x1F289CDB0, *MEMORY[0x1E695E480], number);
              if (number[0])
              {
                CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
                if (number[0])
                {
                  CFRelease(number[0]);
                  number[0] = 0;
                }

                if (vaeDoesPortSupportDoAP(valuePtr))
                {
                  v5 = 0.5;
                }
              }
            }

            CFRelease(v12);
          }
        }
      }

      if (cf[1])
      {
        CFRelease(cf[1]);
      }

      if (v20[1])
      {
        CFRelease(v20[1]);
      }

      if (v20[0])
      {
        CFRelease(v20[0]);
      }
    }

    if (v5 >= 0.0)
    {
      v4 = v5;
      if (v5 > 1.0)
      {
        v4 = 1.0;
      }
    }
  }

  if (a2)
  {
    *a2 = v4;
  }
}

float PVMGetCurrentPreferredRawVolume()
{
  DefaultVolume = pvmGetDefaultVolume();
  if (!PVMInitialize())
  {
    FigSimpleMutexLock();
    v1 = *(sStorage + 308);
    v2 = *(sStorage + 232);
    v3 = *(sStorage + 280);
    v8[0] = *(sStorage + 264);
    v8[1] = v3;
    v9 = *(sStorage + 296);
    if (v1 <= 1.0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = *(sStorage + 280);
    v10[0] = *(sStorage + 264);
    v10[1] = v5;
    v11 = *(sStorage + 296);
    VolumeLimitPref = pvmGetVolumeLimitPref(v10);
    DefaultVolume = v4 * (VolumeLimitPref * pvmGetCurrentVolumeLimitForRoute(v8, v2));
    FigSimpleMutexUnlock();
  }

  return DefaultVolume;
}

__CFString *pvmGetMappedCategoryWithModeAppended(const __CFString *a1, const void *a2)
{
  if (!a1)
  {
    return @"Audio/Video";
  }

  FigSimpleMutexLock();
  if (a2)
  {
    CategoryStringWithModeAppended = pvmCreateCategoryStringWithModeAppended(a1, a2);
  }

  else
  {
    CFRetain(a1);
    CategoryStringWithModeAppended = a1;
  }

  v6 = sStorage;
  v7 = *(sStorage + 192);
  if (v7)
  {
    Value = CFDictionaryGetValue(v7, CategoryStringWithModeAppended);
    if (Value)
    {
      goto LABEL_28;
    }

    v6 = sStorage;
  }

  v8 = *(v6 + 184);
  if (v8)
  {
    v9 = CFDictionaryGetValue(v8, CategoryStringWithModeAppended);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      goto LABEL_20;
    }

    v12 = CFDictionaryGetValue(*(sStorage + 184), a1);
    v11 = v12;
    if (v12)
    {
      if (CFStringFind(v12, @"~", 0).length)
      {
        if (!a2)
        {
          v10 = CFDictionaryGetValue(*(sStorage + 184), v11);
          goto LABEL_20;
        }
      }

      else
      {
        v13 = pvmCreateCategoryStringWithModeAppended(v11, a2);
        if (v13)
        {
          v14 = v13;
          v10 = CFDictionaryGetValue(*(sStorage + 184), v13);
          CFRelease(v14);
          goto LABEL_20;
        }
      }
    }

    v10 = 0;
LABEL_20:
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      Value = v15;
    }

    else
    {
      Value = a1;
    }

    v16 = *(sStorage + 192);
    if (v16)
    {
      CFDictionarySetValue(v16, CategoryStringWithModeAppended, Value);
    }

    goto LABEL_28;
  }

  Value = 0;
LABEL_28:
  if (CategoryStringWithModeAppended)
  {
    CFRelease(CategoryStringWithModeAppended);
  }

  FigSimpleMutexUnlock();
  return Value;
}

CFStringRef pvmCreateCategoryStringWithModeAppended(CFTypeRef cf, const void *a2)
{
  if (!cf)
  {
    return 0;
  }

  if (a2)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, cf);
    CFArrayAppendValue(Mutable, a2);
    v6 = CFStringCreateByCombiningStrings(v4, Mutable, @"~");
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v6;
  }

  return CFRetain(cf);
}

float pvmGetMinimumCategoryVolume(const __CFString *a1, const void *a2)
{
  valuePtr = 0.0;
  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  v3 = *(sStorage + 208);
  if (!v3 || (Value = CFDictionaryGetValue(v3, MappedCategoryWithModeAppended)) == 0 || (CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr), result = valuePtr, valuePtr <= 0.0))
  {
    v6 = FigCFEqual();
    result = valuePtr;
    if (v6)
    {
      return 0.0625;
    }
  }

  return result;
}

uint64_t systemController_notificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (FigCFEqual())
  {
    v6 = kMXSystemControllerNotificationKey_SomeClientIsPlayingDidChange_IsPlaying;
  }

  else if (FigCFEqual())
  {
    v6 = kMXSystemControllerNotificationKey_NowPlayingAppIsPlayingDidChange_State;
  }

  else if (FigCFEqual())
  {
    v6 = kMXSystemControllerNotificationKey_SpeechDetectionDevicePresentDidChange_Present;
  }

  else if (FigCFEqual())
  {
    v6 = kMXSystemControllerNotificationKey_CurrentRouteHasVolumeControlDidChange_HasVolumeControl;
  }

  else
  {
    if (!FigCFEqual())
    {
      goto LABEL_13;
    }

    v6 = kMXSystemControllerNotificationKey_CallIsActiveDidChange_CallActive;
  }

  v7 = *v6;
  if (!CFDictionaryGetValue(a5, *v6))
  {
    CFDictionarySetValue(a5, v7, *MEMORY[0x1E695E4C0]);
  }

LABEL_13:
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t figConnection_notificationCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ([a3 isEqualToString:{AVSystemController_FullMuteDidChangeNotification, a4}])
  {
    [a2 postFullMuteDidChangeNotification:a5];

    return [a2 postEffectiveVolumeNotification:a5];
  }

  else
  {
    if ([a3 isEqualToString:AVSystemController_SystemVolumeDidChangeNotification])
    {
      [a2 postEffectiveVolumeNotification:a5];
    }

    return [AVSystemControllerCommon postNotificationOnMainQueue:a5 notification:a3 object:a2];
  }
}

__CFDictionary *cmsutility_createVolumeChangeMessageForAudioStatistics(const char *a1, const void *a2, const void *a3, int a4, uint64_t a5, float a6)
{
  v6 = a5;
  valuePtr = a6;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = CFNumberCreate(v11, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"MXSessionVolume", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  v20 = FigGetUpTimeNanoseconds() / 1000000000;
  v14 = CFNumberCreate(v11, kCFNumberSInt64Type, &v20);
  CFDictionarySetValue(Mutable, @"MXSessionVolumeOperationTime", v14);
  if (v14)
  {
    CFRelease(v14);
  }

  if (a1)
  {
    v15 = CFStringCreateWithCString(v11, a1, 0x8000100u);
    CFDictionarySetValue(Mutable, @"MXSessionVolumeOperationProcess", v15);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  if (a2)
  {
    CFDictionarySetValue(Mutable, @"MXSessionVolumeCategory", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, @"MXSessionVolumeRoute", a3);
  }

  v19 = a4;
  v16 = CFNumberCreate(v11, kCFNumberSInt32Type, &v19);
  CFDictionarySetValue(Mutable, @"MXSessionVolumePlayingState", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  StringForVolumeOperationType = CMSMUtility_GetStringForVolumeOperationType(v6);
  CFDictionarySetValue(Mutable, @"MXSessionVolumeOperationType", StringForVolumeOperationType);
  return Mutable;
}

__CFString *CMSMUtility_GetStringForVolumeOperationType(int a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Automatic";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"UserInitiated";
  }
}

uint64_t CMSUtility_IsPlayingToDefaultVAD(void *a1)
{
  v2 = [a1 audioDestinationPriority];
  if (a1 && v2)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v2];
  }

  return FigCFEqual();
}

uint64_t vaeGetConnectionTypeForPort(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    *&inAddress.mSelector = 0x676C6F6270637470;
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
      return outData;
    }
  }

  return result;
}

__CFArray *cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(uint64_t a1, void *a2, int a3, const __CFDictionary *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration([*(*(&v23 + 1) + 8 * i) unsignedIntValue], 0, 0, 0, 0, 0);
        CFArrayAppendValue(Mutable, v12);
        if (v12)
        {
          CFRelease(v12);
        }
      }

      v9 = [a2 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v9);
  }

  if (FigCFEqual())
  {
    v13 = Mutable == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count >= 2)
    {
      v15 = Count;
      v33 = 0;
      v34 = 0;
      cmsmCopyHFPOrA2DPBTDeviceDetails(a4, &v33, &v34, 0);
      v16 = 0;
      while (1)
      {
        v31 = 0;
        v32 = 0;
        v30 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v16);
        cmsmCopyHFPOrA2DPBTDeviceDetails(ValueAtIndex, &v32, &v31, &v30);
        v18 = v31;
        if (!v31)
        {
          goto LABEL_40;
        }

        v19 = v16 + 1;
        if (v16 + 1 >= v15)
        {
          goto LABEL_39;
        }

        do
        {
          cf = 0;
          v29 = 0;
          v27 = 0;
          v20 = CFArrayGetValueAtIndex(Mutable, v19);
          cmsmCopyHFPOrA2DPBTDeviceDetails(v20, &v29, &cf, &v27);
          if (FigCFEqual())
          {
            if (FigCFEqual() && FigCFEqual())
            {
              if (FigCFEqual())
              {
                v21 = v19;
              }

              else
              {
                v21 = v16;
              }

LABEL_29:
              CFArrayRemoveValueAtIndex(Mutable, v21);
              --v15;
              goto LABEL_31;
            }

            if (FigCFEqual() && FigCFEqual())
            {
              if (FigCFEqual())
              {
                v21 = v16;
              }

              else
              {
                v21 = v19;
              }

              goto LABEL_29;
            }
          }

          ++v19;
LABEL_31:
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v27)
          {
            CFRelease(v27);
            v27 = 0;
          }

          if (v29)
          {
            CFRelease(v29);
          }
        }

        while (v19 < v15);
        v18 = v31;
        if (v31)
        {
LABEL_39:
          CFRelease(v18);
          v31 = 0;
        }

LABEL_40:
        if (v30)
        {
          CFRelease(v30);
          v30 = 0;
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (++v16 >= v15)
        {
          if (v34)
          {
            CFRelease(v34);
            v34 = 0;
          }

          if (v33)
          {
            CFRelease(v33);
          }

          break;
        }
      }
    }
  }

  if (a3)
  {
    v37.length = CFArrayGetCount(Mutable);
    v37.location = 0;
    CFArraySortValues(Mutable, v37, routeDescriptionComparator, 0x20);
  }

  return Mutable;
}

uint64_t CMSUtility_GetCurrentOutputVADID(void *a1)
{
  if (a1)
  {
    v1 = [a1 audioDestinationPriority];
    if (v1)
    {
      v2 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v1];
    }

    else
    {
      v2 = @"VirtualAudioDevice_Default";
    }

    return CMSMUtility_GetVADIDForVADName(v2);
  }

  else
  {
    v3 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v3 defaultVADID];
  }
}

uint64_t CMSMUtility_GetVADIDForVADName(uint64_t a1)
{
  if (a1 && ((v2 = [(NSDictionary *)[+[MXSessionManager sharedInstance](MXSessionManager audioDeviceInfo] objectForKey:a1)]!= 0 || CMSMVAUtility_IsAdditiveRoutingEnabled(0, v3) && (v2 = [(NSDictionary *)[+[MXAdditiveRoutingManager vadNameToID] objectForKey:a1 sharedInstance]]!= 0))
  {

    return [v2 unsignedIntValue];
  }

  else
  {
    v5 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v5 defaultVADID];
  }
}

const void *CMSUtility_CopyActivationContextForPickingRoutes(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [a1 activationContext];
    if (v1)
    {
LABEL_3:
      CFRetain(v1);
    }
  }

  else
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v1)
    {
      v4 = *v8;
      while (2)
      {
        for (i = 0; i != v1; i = i + 1)
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v3);
          }

          v6 = *(*(&v7 + 1) + 8 * i);
          if (objc_msgSend_isActive(v6) && ([v6 currentlyControllingFlags] & 2) != 0)
          {
            v1 = [v6 activationContext];
            goto LABEL_16;
          }
        }

        v1 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v1)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return v1;
}

CFPropertyListRef cmsDeepCopyPickedRoute(void *a1)
{
  v2 = CMSUtility_CopyNonNULLCategoryForPickingRoutes(a1);
  v3 = CMSUtility_CopyNonNULLModeForPickingRoutes(a1);
  v4 = CMSUtility_CopyAllowedPortTypesArrayForPickingRoutes(a1);
  v5 = CMSUtility_CopyActivationContextForPickingRoutes(a1);
  v6 = cmsmCopyPickableRoutesForRouteConfiguration(v2, v3, v5, v4, [a1 prefersBluetoothHighQualityContentCapture]);
  v7 = cmsmDeepCopyPickedRouteDescription(v6);
  if (v6)
  {
    CFRelease(v6);
  }

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

  return v7;
}

const __CFDictionary *cmsmGetPickedRouteApplierFunction(const __CFDictionary *result, const __CFDictionary **a2)
{
  if (!*a2)
  {
    v3 = result;
    result = CFDictionaryGetValue(result, @"RouteCurrentlyPicked");
    if (result)
    {
      result = CFBooleanGetValue(result);
      if (result)
      {
        *a2 = v3;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return [v28 countByEnumeratingWithState:&a11 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_18_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return volumeControllerRemote_getObjectID(a1, va);
}

void OUTLINED_FUNCTION_18_3(const void *a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, char *a12)
{

  routingSessionManager_updateCurrentSession(a1, a2, a3, a4, a5, 1, 0, 0, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_35_0@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return volumeControllerRemote_getObjectID(a1, va);
}

void routingContextResilientRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    routingContextResilientRemote_stopObservingRemoteContext(a1, v3);
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    (*(v4 + 16))();
    v5 = *(DerivedStorage + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  FigSimpleMutexDestroy();
  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(DerivedStorage + 40);
  if (v8)
  {

    dispatch_release(v8);
  }
}

uint64_t routingContextResilientRemote_stopObservingRemoteContext(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  for (i = 0; i != 24; i += 8)
  {
    FigNotificationCenterRemoveWeakListener();
  }

  for (j = 0; j != 48; j += 8)
  {
    FigNotificationCenterRemoveWeakListener();
  }

  return FigNotificationCenterRemoveWeakListener();
}

void *CMSUtility_GetPrefersNoDucking(void *result)
{
  if (result)
  {
    return [result prefersNoDucking];
  }

  return result;
}

uint64_t _CMSessionCopyProperty(void *a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v8 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v9 = [a1 copyPropertyForKey:a2 valueOut:a4];
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      v11 = a1[2];
    }

    else
    {
      v11 = 0;
    }

    v9 = MXCoreSessionCopyProperty(v11, a2, a3, a4);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_CMSessionCopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

id CMSMUtility_CreateAudioQueueOptionsDictionary(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  FadeInDurationForPlaybackHandoff = 0.0;
  if (MX_FeatureFlags_IsHandoffEnabled() && CMSUtility_IsAllowedToFadeInTemporarily(a1))
  {
    FadeInDurationForPlaybackHandoff = CMSMUtility_GetFadeInDurationForPlaybackHandoff();
  }

  if ([a1 isDucked] && (objc_msgSend(a1, "duckedOnVAD") & 1) == 0)
  {
    [a1 audioQueueDuckVolume];
    v4 = v16;
    [a1 audioQueueFadeDuration];
    FadeInDurationForPlaybackHandoff = v17;
    v5 = 0.0;
  }

  else
  {
    v4 = 1.0;
    v5 = 0.0;
    if (CMSUtility_IsAudioCategoryRingtone(a1))
    {
      if (vaemStarkAudioPortIsCurrentlyActive())
      {
        v6 = CMSMUtility_CopyCarPlaySession();
        if (v6)
        {

          if (MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled(v7, v8))
          {
            FigGetCFPreferenceDoubleWithDefault();
            *&v9 = v9;
            FadeInDurationForPlaybackHandoff = 10.0;
            if (*&v9 < 10.0)
            {
              FigGetCFPreferenceDoubleWithDefault();
              FadeInDurationForPlaybackHandoff = v10;
            }

            FigGetCFPreferenceDoubleWithDefault();
            *&v11 = v11;
            v5 = 1.0;
            if (*&v11 < 1.0)
            {
              FigGetCFPreferenceDoubleWithDefault();
              v5 = v12;
            }

            v13 = objc_alloc(MEMORY[0x1E696AD98]);
            *&v14 = v5;
            v15 = [v13 initWithFloat:v14];
            [v2 setObject:v15 forKey:@"AsyncFadeInitialVolume"];
          }
        }
      }
    }
  }

  v18 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v19 = FadeInDurationForPlaybackHandoff;
  v20 = [v18 initWithFloat:v19];
  v21 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v22 = v4;
  v23 = [v21 initWithFloat:v22];
  [v2 setObject:v20 forKey:@"FadeDuration"];
  [v2 setObject:v23 forKey:@"DuckVolume"];
  v24 = [a1 silentMuted];
  v25 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(a1, "silentMuted")}];
  [v2 setObject:v25 forKey:@"IsSilentMuted"];

  if (v4 != 1.0 || FadeInDurationForPlaybackHandoff != 0.0 || (v5 != 0.0 ? (v26 = 1) : (v26 = v24), v26 == 1))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v2;
}

NSString *CMSUtility_IsAllowedToFadeInTemporarily(void *a1)
{
  IsHandoffEnabled = MX_FeatureFlags_IsHandoffEnabled();
  result = 0;
  if (a1)
  {
    if (IsHandoffEnabled)
    {
      result = [a1 displayID];
      if (result)
      {
        result = [+[MXSessionManager sharedInstance](MXSessionManager appAllowedToFadeInTemporarily];
        if (result)
        {
          [a1 displayID];
          [+[MXSessionManager sharedInstance](MXSessionManager appAllowedToFadeInTemporarily];
          result = FigCFEqual();
          if (result)
          {
            [a1 audioCategory];
            return (FigCFEqual() != 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMSessionCopyProperty(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v9 = [a1 copyPropertyForKey:a2 valueOut:a4];
    *(v17 + 6) = v9;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v12 = MXGetSerialQueue(UpTimeNanoseconds, v11);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __CMSessionCopyProperty_block_invoke;
    v15[3] = &unk_1E7AE79A8;
    v15[4] = &v16;
    v15[5] = a1;
    v15[6] = a2;
    v15[7] = a3;
    v15[8] = a4;
    MXDispatchAsyncAndWait("CMSessionCopyProperty", "CMSession_CInterface.m", 549, 0, 0, v12, v15);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionCopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  }

  objc_autoreleasePoolPop(v8);
  v13 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_1B1800434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionCopyProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = MXCoreSessionCopyProperty(v3, *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CMSMUtility_IsCarPlaySessionPresent()
{
  result = CMSMUtility_CopyCarPlaySession();
  if (result)
  {

    return 1;
  }

  return result;
}

id CMSMUtility_CopyCarPlaySession()
{
  FigSimpleMutexLock();
  v0 = qword_1EB75E170;
  FigSimpleMutexUnlock();
  return v0;
}

void cmsmCopyVADPickedRouteDescriptionForRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, const void *a4, int a5, __CFDictionary **a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  if (a1)
  {
    VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
    v13 = VADModeFromFigModeName;
    v14 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, a4, a5, 0, 0x1F2893B50);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }

    v16 = CFGetTypeID(v14);
    if (v16 != CFArrayGetTypeID())
    {
      goto LABEL_34;
    }

    Count = CFArrayGetCount(v15);
    if (Count != 1 && (Count < 2 || !CMSMVAUtility_IsBluetoothSharingSessionEnabled(v15)))
    {
      goto LABEL_34;
    }

    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    ConnectionTypeForPort = vaeGetConnectionTypeForPort(valuePtr);
    if (ConnectionTypeForPort == 1885544823 || (v21 = ConnectionTypeForPort, vaeIsQuiesceableWiredPort(valuePtr, v20)))
    {
LABEL_25:
      HIDWORD(v41) = 0;
      v33 = CFArrayGetValueAtIndex(v15, 0);
      CFNumberGetValue(v33, kCFNumberSInt32Type, &v41 + 4);
      v24 = HIDWORD(v41);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    else
    {
      if (v21 == 1885561449)
      {
        v40 = a3;
        LODWORD(v41) = a5;
        v22 = cmsmCopyBuiltinPortsListForRouteConfigurationScopeAndDevice(VADCategoryFromFigCategoryName, v13, a4);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v23 = [v22 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v23)
        {
          v29 = v23;
          v30 = *v43;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v43 != v30)
              {
                objc_enumerationMutation(v22);
              }

              v32 = valuePtr;
              if (v32 == [*(*(&v42 + 1) + 8 * i) unsignedIntValue])
              {

                a5 = v41;
                goto LABEL_25;
              }
            }

            v29 = [v22 countByEnumeratingWithState:&v42 objects:v47 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        a5 = v41;
      }

      v24 = OUTLINED_FUNCTION_0_20();
    }

    v34 = CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration(v24, v25, v26, v27, v28, 0);
    if (v34)
    {
      if (!a6)
      {
LABEL_29:
        if (v15)
        {
          CFRelease(v15);
        }

        if (v34)
        {
          CFRelease(v34);
        }

        return;
      }
    }

    else
    {
LABEL_34:
      v35 = OUTLINED_FUNCTION_0_20();
      v34 = CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration(v35, v36, v37, v38, v39, a5);
      if (!a6)
      {
        goto LABEL_29;
      }
    }

    *a6 = v34;
    v34 = 0;
    goto LABEL_29;
  }
}

void __FigRoutingContextResilientRemoteCopySystemMusicContext_block_invoke_2(uint64_t a1)
{
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

void routingContextRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10[5] = 0;
  v2 = *(DerivedStorage + 8);
  FigXPCRemoteClientDisassociateObject();
  if (v2)
  {
    v3 = *DerivedStorage == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendSyncMessage();
    FigXPCRelease();
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(DerivedStorage + 48);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (*(DerivedStorage + 72))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __routingContextRemoteXPC_Finalize_block_invoke;
    v10[3] = &__block_descriptor_40_e5_v8__0l;
    v10[4] = DerivedStorage;
    MXDispatchSync("routingContextRemoteXPC_Finalize", "FigRoutingContextRemoteXPC.m", 580, 0, 0, gFigRoutingContextRemoteObject_1, v10);
    CFRelease(*(DerivedStorage + 72));
  }
}

uint64_t CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  if (byte_1EB75CCA0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  if (byte_1EB75CCA1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToLocalAndRemoteOldValue != v3 || CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToLocalOldValue != byte_1EB75CCA0 || CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToRemoteOldValue != byte_1EB75CCA1)
  {
    CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToLocalOldValue = byte_1EB75CCA0 != 0;
    CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToRemoteOldValue = byte_1EB75CCA1 != 0;
    CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToLocalAndRemoteOldValue = v3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v3;
}

void __CMSessionMgrCopyPickableRoutesForCategoryAndMode_block_invoke(uint64_t a1)
{
  v2 = CMSMUtility_CopyMappedMXSessionAudioCategory(*(a1 + 32));
  v3 = CMSMUtility_CopyMappedMXSessionAudioMode(*(a1 + 40));
  v4 = cmsmCopyPickableRoutesForRouteConfiguration([[MXSessionManager getBluetoothCustomizedAlternateCategory:"getBluetoothCustomizedAlternateCategory:enableBluetooth:" enableBluetooth:v2 sharedInstance:v3];
  **(a1 + 48) = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v4, 0);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t CMSUtility_GetCurrentInputVADID(void *a1)
{
  if (a1)
  {
    CurrentInputVADUID = CMSUtility_GetCurrentInputVADUID(a1);

    return CMSMUtility_GetVADIDForVADName(CurrentInputVADUID);
  }

  else
  {
    v3 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v3 defaultVADID];
  }
}

void DisposeRoutingContextServerState(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1 + 1;
    if (a1[1])
    {
      DisposeRoutingContextServerState_cold_1(a1, a1 + 1);
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
      a1[2] = 0;
    }

    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }

    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void *isCoreSessionSidekick(void *result)
{
  if (result)
  {
    return [result isMemberOfClass:objc_opt_class()];
  }

  return result;
}

void vaemPostAvailableEndpointsChangedNotification(char a1)
{
  if (qword_1EB75E090)
  {
    v2 = CFRetain(qword_1EB75E090);
    v4 = MXGetNotificationSenderQueue(v2, v3);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __vaemPostAvailableEndpointsChangedNotification_block_invoke;
    v5[3] = &__block_descriptor_33_e5_v8__0l;
    v6 = a1;
    MXDispatchAsync("vaemPostAvailableEndpointsChangedNotification", "CMSessionManager_VAEndpointManager.m", 12192, 0, 0, v4, v5);
  }
}

void __vaemVADCurrentBufferFrameSizeListenerGuts_f_block_invoke(uint64_t a1, uint64_t a2)
{
  CMSMNotificationUtility_PostCurrentOutputDeviceBufferSizeDidChange(a1, a2);

  CMSMNotificationUtility_PostCurrentInputDeviceBufferSizeChange(v2, v3);
}

void CMSMNotificationUtility_PostCurrentOutputDeviceBufferSizeDidChange(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled(a1, a2))
  {

    CMSMUtility_NotifyEachMatchingSession(0, 0, 0, @"CurrentOutputDeviceBufferSizeDidChange", 0, 0);
  }
}

uint64_t MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_sHangsAudioSessionClientCachingEnabled;
}

void CMSMNotificationUtility_PostCurrentInputDeviceBufferSizeChange(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled(a1, a2))
  {

    CMSMUtility_NotifyEachMatchingSession(0, 0, 0, @"CurrentInputDeviceBufferSizeDidChange", 0, 0);
  }
}

void *CMSUtility_GetWantsToBeVolumeButtonClient(void *result)
{
  if (result)
  {
    return [result wantsToBeVolumeButtonClient];
  }

  return result;
}

CFTypeRef cmsmCopyUpdatedVolumeOperationCategoryForNullDefaultCategory(int a1)
{
  if (CMSMDeviceState_ButtonsCanChangeRingerVolume() || (a1 - 1) >= 6 && a1 != 14)
  {
    v2 = qword_1ED6D2FF0;
    if (!qword_1ED6D2FF0)
    {
      return 0;
    }
  }

  else
  {
    v2 = @"Audio/Video";
    if (!@"Audio/Video")
    {
      return 0;
    }
  }

  return CFRetain(v2);
}

void *mx_runningBoardServices_createAssertionForTarget(uint64_t a1, __CFString *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  if (mx_runningBoardServices_createAssertionForTarget_onceToken != -1)
  {
    mx_runningBoardServices_createAssertionForTarget_cold_1();
  }

  v11 = [MEMORY[0x1E69C7560] attributeWithDomain:a3 name:a4];
  if (v11)
  {
    v12 = v11;
    v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v14 = [v13 setDateFormat:@"YYYY.MM.dd_HH:mm:ss:ms"];
    v15 = MEMORY[0x1E696AEC0];
    if (CMSMDeviceState_IsAudiomxd(v14, v16))
    {
      v17 = @"audiomxd";
    }

    else
    {
      v17 = a2;
    }

    v18 = [v15 stringWithFormat:@"%@(%d).%@.%@", v17, mx_runningBoardServices_createAssertionForTarget_pid, objc_msgSend(v13, "stringFromDate:", objc_msgSend(MEMORY[0x1E695DF00], "date")), a2];
    v19 = objc_alloc(MEMORY[0x1E69C7548]);
    v33 = v12;
    v20 = [v19 initWithExplanation:v18 target:a1 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v33, 1)}];
    v21 = v20;
    if (v20)
    {
      [v20 setInvalidationHandler:a5];
      v32 = 0;
      if (([v21 acquireWithError:&v32] & 1) == 0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v25 = +[MXAudioStatistics sharedInstance];
      v26 = [v21 explanation];
      v27 = [(MXAudioStatistics *)v25 sendSinglePerformanceMessageForAssertion:"mx_runningBoardServices_createAssertionForTarget" explanation:v26 activity:kMXAudioStatistics_AssertionActivity_AssertionCreated];
      v29 = MXGetAssertionLog(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v21 explanation];
        *buf = 136447490;
        v35 = "-MX_RunningBoardServices-";
        v36 = 2082;
        v37 = "mx_runningBoardServices_createAssertionForTarget";
        v38 = 1024;
        v39 = 721;
        v40 = 2048;
        v41 = v21;
        v42 = 2114;
        v43 = v30;
        v44 = 2114;
        v45 = a1;
        _os_log_impl(&dword_1B17A2000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Created assertion %p %{public}@ for target %{public}@", buf, 0x3Au);
      }
    }

    else
    {
      LODWORD(v32) = 0;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    LODWORD(v32) = 0;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v21 = 0;
  }

  objc_autoreleasePoolPop(v10);
  return v21;
}

void *mx_runningBoardServices_createMXAssertionForPID(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69C7640] targetWithPid:a1];
  if (v5)
  {

    return mx_runningBoardServices_createAssertionForTarget(v5, a2, @"com.apple.mediaexperience", @"MediaPlayback", a3);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }
}

const void *MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID(uint64_t a1, __CFString *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    return 0;
  }

  if (dword_1EB75DE60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (mx_runningBoardServices_initializeGlobalAssertionProperties_onceToken != -1)
  {
    MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID_cold_1();
  }

  MXAssertionForPID = mx_runningBoardServices_createMXAssertionForPID(a1, a2, &__block_literal_global_40);
  v5 = MXAssertionForPID;
  if (MXAssertionForPID)
  {
    if ([MXAssertionForPID isValid])
    {
      FigSimpleMutexLock();
      CFArrayAppendValue(gProcessAssertionArray, v5);
      FigSimpleMutexUnlock();
      if (FigCFEqual())
      {
        v7 = [objc_msgSend(mx_runningBoardServices_getProcessHandleForPID(a1) "hostProcess")];
        if (v7)
        {
          v8 = v7;
          v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:a2];
          v10 = v9;
          if (v9)
          {
            [(__CFString *)v9 appendString:@"MediaPlayback"];
            [(__CFString *)v10 appendString:@"ForHostProcess"];
            -[__CFString appendString:](v10, "appendString:", [MEMORY[0x1E696AEC0] stringWithFormat:@".(%d)", v8]);
            v11 = mx_runningBoardServices_createMXAssertionForPID(v8, v10, 0);
            v12 = v11;
            if (v11 && [v11 isValid])
            {
              FigSimpleMutexLock();
              CFDictionarySetValue(gHostProcessAssertionDictionary, v5, v12);
              FigSimpleMutexUnlock();
            }
          }
        }
      }
    }
  }

  return v5;
}

void CMSMSleep_FetchPlaybackProcessAssertion(void *a1)
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"MediaExperience.%d.%@.%@.%@.isPlayingProcessAssertion", [objc_msgSend(a1 "clientPID")], objc_msgSend(a1, "displayID"), objc_msgSend(a1, "clientName"), objc_msgSend(a1, "audioCategory"));
  if (![a1 playbackAssertionRef] || !MX_RunningBoardServices_IsAssertionValid(objc_msgSend(a1, "playbackAssertionRef")))
  {
    PlaybackProcessAssertionForPID = MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID([objc_msgSend(a1 "clientPID")], v2);
    [a1 setPlaybackAssertionRef:PlaybackProcessAssertionForPID];
    if (PlaybackProcessAssertionForPID)
    {
      CFRelease(PlaybackProcessAssertionForPID);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if ([a1 isMemberOfClass:objc_opt_class()])
  {

    CMSMSleep_FetchPlaybackProcessAssertionsForHostProcesses(a1);
  }
}

uint64_t cmsmUpdatePickableRouteDescriptionLists(char a1)
{
  v21 = *MEMORY[0x1E69E9840];
  -[NSRecursiveLock lock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "lock");
  if ([(NSMutableDictionary *)[+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions] count]
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:-[MXSessionManager pickableRoutesDescriptions](+[MXSessionManager sharedInstance](MXSessionManager copyItems:{"sharedInstance"), "pickableRoutesDescriptions"), 1}];
  }

  else
  {
    v13 = 0;
  }

  -[NSMutableDictionary removeAllObjects]([+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions], "removeAllObjects");
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_isActive(v6))
        {
          if (!-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v6 audioCategory]))
          {
            v7 = cmsmCopyPickableRoutesForRouteConfiguration([v6 audioCategory], objc_msgSend(v6, "audioMode"), objc_msgSend(v6, "activationContext"), objc_msgSend(v6, "allowedPortTypes"), objc_msgSend(v6, "prefersBluetoothHighQualityContentCapture"));
            if (v7)
            {
              CFRelease(v7);
            }
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v8 = -[NSMutableDictionary count]([+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions], "count");
  if (!v8 || (v8 = [(NSMutableDictionary *)[+[MXSessionManager pickableRoutesDescriptions] isEqualToDictionary:v13 sharedInstance], (v8 & 1) == 0])
  {
    v10 = MXGetNotificationSenderQueue(v8, v9);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __cmsmUpdatePickableRouteDescriptionLists_block_invoke;
    v14[3] = &__block_descriptor_33_e5_v8__0l;
    v15 = a1;
    MXDispatchAsync("cmsmUpdatePickableRouteDescriptionLists", "CMSessionManager_VARouting.m", 222, 0, 0, v10, v14);
  }

  return -[NSRecursiveLock unlock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "unlock");
}

void CMSMNotificationUtility_PostSessionIsActiveDidChange(void *a1, const char *a2)
{
  isActive = objc_msgSend_isActive(a1, a2);
  BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"CMSessionIsActive", isActive);
  if (BooleanPayload)
  {
    v4 = BooleanPayload;
    CMSMUtility_PostNotificationToSession(a1, @"CMSessionIsActiveDidChange", BooleanPayload);
    CFRelease(v4);
  }
}

uint64_t cmsmUpdateDeviceAudioFormatConfigIfNeeded(int a1)
{
  v87 = *MEMORY[0x1E69E9840];
  if (vaemGetDisallowAudioFormatChanges())
  {
    return 4294954309;
  }

  v69 = a1;
  *v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v4 = [obj countByEnumeratingWithState:v75 objects:v86 count:16];
  v5 = &qword_1EB75D000;
  if (!v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v70 = 0;
    goto LABEL_97;
  }

  v6 = v4;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v70 = 0;
  v10 = *v76;
  v72 = *v76;
  do
  {
    v11 = 0;
    v71 = v6;
    do
    {
      if (*v76 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*&v75[8] + 8 * v11);
      if (objc_msgSend_isActive(v12) && CMSUtility_IsPlayingToDefaultVAD(v12))
      {
        v74 = [v12 preferredHardwareFormat];
        if (![v12 isPlaying] || (v13 = v70, objc_msgSend(v12, "doesntActuallyPlayAudio")))
        {
          if ([v12 doesntActuallyPlayAudio])
          {
            v13 = v8;
          }

          else
          {
            v13 = v9;
          }
        }

        v14 = v12;
        if (!v13)
        {
          goto LABEL_54;
        }

        if (*(v5 + 912))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v10 = v72;
        }

        v16 = [v13 preferredHardwareFormat];
        if ([v74 isEqualToString:v16])
        {
          v17 = [v13 preferredNumberOfOutputChannels];
          if (v17 > [v12 preferredNumberOfOutputChannels])
          {
            if (*(v5 + 912))
            {
              goto LABEL_49;
            }

LABEL_37:
            v14 = v13;
LABEL_54:
            if ([v12 isPlaying] && !objc_msgSend(v12, "doesntActuallyPlayAudio"))
            {
              v70 = v14;
              if (!v7)
              {
                goto LABEL_63;
              }
            }

            else
            {
              if ([v12 doesntActuallyPlayAudio])
              {
                v8 = v14;
              }

              else
              {
                v9 = v14;
              }

              if (!v7)
              {
LABEL_63:
                v7 = v12;
                v6 = v71;
                goto LABEL_91;
              }
            }

            if (*(v5 + 912))
            {
              v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v5 = &qword_1EB75D000;
              v10 = v72;
            }

            if (([v7 currentlyControllingFlags] & 2) != 0)
            {
              v6 = v71;
              if (!*(v5 + 912))
              {
                goto LABEL_91;
              }

              goto LABEL_89;
            }

            v6 = v71;
            if (([v12 currentlyControllingFlags] & 2) != 0)
            {
              if (!*(v5 + 912))
              {
                goto LABEL_81;
              }

              goto LABEL_87;
            }

            v30 = [v7 preferredIOBufferFrames];
            if (v30 > [v12 preferredIOBufferFrames])
            {
              if (!*(v5 + 912))
              {
                goto LABEL_91;
              }

              goto LABEL_89;
            }

            v31 = [v12 preferredIOBufferFrames];
            if (v31 > [v7 preferredIOBufferFrames])
            {
              if (!*(v5 + 912))
              {
                goto LABEL_81;
              }

              goto LABEL_87;
            }

            [v7 preferredIOBufferDuration];
            v33 = v32;
            [v12 preferredIOBufferDuration];
            if (v33 > v34)
            {
              if (!*(v5 + 912))
              {
                goto LABEL_91;
              }

              goto LABEL_89;
            }

            [v12 preferredIOBufferDuration];
            v36 = v35;
            [v7 preferredIOBufferDuration];
            if (v36 <= v37)
            {
              [v7 preferredOutputSampleRate];
              v39 = v38;
              [v12 preferredOutputSampleRate];
              if (v39 <= v40)
              {
                [v12 preferredOutputSampleRate];
                v42 = v41;
                [v7 preferredOutputSampleRate];
                v43 = *(v5 + 912);
                if (v42 <= v44)
                {
                  if (v43)
                  {
                    goto LABEL_89;
                  }
                }

                else
                {
                  if (v43)
                  {
                    goto LABEL_87;
                  }

                  v7 = v12;
                }
              }

              else
              {
                if (!*(v5 + 912))
                {
                  goto LABEL_91;
                }

LABEL_89:
                v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v5 = &qword_1EB75D000;
              }
            }

            else
            {
              if (!*(v5 + 912))
              {
LABEL_81:
                v7 = v12;
                goto LABEL_91;
              }

LABEL_87:
              v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v7 = v12;
              v5 = &qword_1EB75D000;
            }

            v10 = v72;
            goto LABEL_91;
          }

          v18 = [v12 preferredNumberOfOutputChannels];
          if (v18 > [v13 preferredNumberOfOutputChannels])
          {
            v14 = v12;
            if (!*(v5 + 912))
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          [v13 preferredOutputSampleRate];
          v20 = v19;
          [v12 preferredOutputSampleRate];
          if (v20 > v21)
          {
            if (*(v5 + 912))
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          }

          [v12 preferredOutputSampleRate];
          v23 = v22;
          [v13 preferredOutputSampleRate];
          if (v23 > v24)
          {
            v14 = v12;
            if (!*(v5 + 912))
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (([v13 currentlyControllingFlags] & 2) != 0)
          {
            if (*(v5 + 912))
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          }

          v25 = [v12 currentlyControllingFlags];
          v26 = *(v5 + 912);
          if ((v25 & 2) != 0)
          {
            v14 = v12;
            if (!v26)
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!v26)
          {
LABEL_50:
            v14 = v13;
            goto LABEL_54;
          }

LABEL_49:
          v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = v13;
        }

        else
        {
          if ([v16 isEqualToString:@"MATAtmos"])
          {
            if (!*(v5 + 912))
            {
              goto LABEL_37;
            }

            goto LABEL_49;
          }

          if ([v74 isEqualToString:@"MATAtmos"])
          {
            v14 = v12;
            if (!*(v5 + 912))
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if ([v16 isEqualToString:@"AC-3"])
          {
            if (!*(v5 + 912))
            {
              goto LABEL_37;
            }

            goto LABEL_49;
          }

          v14 = v13;
          if (![v74 isEqualToString:@"AC-3"])
          {
            goto LABEL_54;
          }

          v14 = v12;
          if (!*(v5 + 912))
          {
            goto LABEL_54;
          }

LABEL_52:
          v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = v12;
          v5 = &qword_1EB75D000;
        }

        v10 = v72;
        goto LABEL_54;
      }

LABEL_91:
      ++v11;
    }

    while (v6 != v11);
    v47 = [obj countByEnumeratingWithState:v75 objects:v86 count:16];
    v6 = v47;
  }

  while (v47);
LABEL_97:

  if (*(v5 + 912))
  {
    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v9)
  {
    v49 = v9;
  }

  else
  {
    v49 = v8;
  }

  if (v70)
  {
    v50 = v70;
  }

  else
  {
    v50 = v49;
  }

  if (!v50 || !v7)
  {
    v2 = vaemSetDeviceFormat([+[MXSessionManager defaultVADID] sharedInstance];
    if (v2)
    {
      v79 = 0;
      v75[0] = OS_LOG_TYPE_DEFAULT;
      v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v61 = v79;
      v62 = v75[0];
      if (os_log_type_enabled(v60, v75[0]))
      {
        v63 = v61;
      }

      else
      {
        v63 = v61 & 0xFFFFFFFE;
      }

      if (v63)
      {
        v80 = 136315650;
        v81 = "cmsmUpdateDeviceAudioFormatConfigIfNeeded";
        v82 = 1024;
        v83 = v2;
        v84 = 2114;
        v85 = @"LPCM";
        _os_log_send_and_compose_impl(v63, 0, v86, 128, &dword_1B17A2000, v60, v62, "-CMSessionMgr- %s: Error %d while setting device format to %{public}@", &v80, 28);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return v2;
  }

  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(v50);
  IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([v50 audioCategory]);
  if (!vaemIsNotCurrentDeviceFormat(CurrentOutputVADID, IsCategoryInputOnly, [v50 preferredHardwareFormat]))
  {
    v2 = 0;
LABEL_121:
    if (v69)
    {
      goto LABEL_125;
    }

    return v2;
  }

  v53 = CMSUtility_GetCurrentOutputVADID(v50);
  v2 = vaemSetDeviceFormat(v53, [v50 preferredHardwareFormat], 0);
  if (!v2)
  {
    goto LABEL_121;
  }

  v54 = v7;
  v79 = 0;
  v75[0] = OS_LOG_TYPE_DEFAULT;
  v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v56 = v79;
  v57 = v75[0];
  if (os_log_type_enabled(v55, v75[0]))
  {
    v58 = v56;
  }

  else
  {
    v58 = v56 & 0xFFFFFFFE;
  }

  if (v58)
  {
    v59 = [v50 preferredHardwareFormat];
    v80 = 136315650;
    v81 = "cmsmUpdateDeviceAudioFormatConfigIfNeeded";
    v82 = 1024;
    v83 = v2;
    v84 = 2114;
    v85 = v59;
    _os_log_send_and_compose_impl(v58, 0, v86, 128, &dword_1B17A2000, v55, v57, "-CMSessionMgr- %s: Error %d while setting device format to %{public}@", &v80, 28);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v7 = v54;
  if (v69)
  {
LABEL_125:
    ShouldSessionSetInputSampleRate = CMSUtility_ShouldSessionSetInputSampleRate(v7);
    if (ShouldSessionSetInputSampleRate)
    {
      [v7 preferredInputSampleRate];
    }

    else
    {
      [v7 preferredOutputSampleRate];
    }

    v66 = v65;
    v67 = [v7 preferredIOBufferFrames];
    [v7 preferredIOBufferDuration];
    cmsSetDeviceSampleRateAndBufferSize(v7, v67, ShouldSessionSetInputSampleRate != 0, v66, v68);
  }

  return v2;
}

uint64_t MX_FeatureFlags_IsAudioFormatArbitrationEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAudioFormatArbitrationEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAudioFormatArbitrationEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAudioFormatArbitrationEnabled_sAudioFormatArbitrationEnabled;
}

void vaemGetDeviceFormatID(AudioObjectID a1, int a2, _DWORD *a3)
{
  outData = 0;
  if (a3 && !vaemGetStream0(a1, a2, &outData) && outData)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    vaemGetStreamASBD(outData, v5);
    if (!v4)
    {
      *a3 = DWORD2(v5[0]);
    }
  }
}

void vaemCopyDeviceFormat(AudioObjectID a1, int a2, CFTypeRef *a3)
{
  if (a3)
  {
    v11 = v3;
    v12 = v4;
    v10[0] = 0;
    vaemGetDeviceFormatID(a1, a2, v10);
    if (!v6)
    {
      if (v10[0] > 1836343850)
      {
        if (v10[0] == 1836343851 || v10[0] == 1836344107)
        {
          v7 = kMXSessionAudioHardwareFormat_MATAtmos;
          goto LABEL_12;
        }
      }

      else
      {
        if (v10[0] == 1667326771)
        {
          v7 = kMXSessionAudioHardwareFormat_AC3;
          goto LABEL_12;
        }

        if (v10[0] == 1819304813)
        {
          v7 = kMXSessionAudioHardwareFormat_LPCM;
LABEL_12:
          *a3 = CFRetain(*v7);
          return;
        }
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10[1]);
    }
  }
}

BOOL vaemIsNotCurrentDeviceFormat(AudioObjectID a1, int a2, uint64_t a3)
{
  cf = 0;
  vaemCopyDeviceFormat(a1, a2, &cf);
  v3 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3 == 0;
}

uint64_t vaemGetStream0(AudioObjectID a1, int a2, _DWORD *outData)
{
  if (a2 == 1)
  {
    v4 = 1768845428;
  }

  else
  {
    v4 = 1869968496;
  }

  inAddress.mSelector = 1937009955;
  inAddress.mScope = v4;
  inAddress.mElement = 0;
  v6 = 4;
  *outData = 0;
  result = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &v6, outData);
  if (result)
  {
    *outData = 0;
  }

  return result;
}

double vaemGetStreamASBD(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_1();
  if (!AudioObjectGetPropertyData(v3, v4, v5, v6, v7, v8))
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t cmsmGetA2DPPort(CFArrayRef theArray)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!theArray || (Count = CFArrayGetCount(theArray), (v3 = Count) == 0))
  {
LABEL_6:
    v6 = 0;
LABEL_7:
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return v6;
  }

  v4 = 0;
  while (1)
  {
    valuePtr[0] = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
    if (vaeGetPortTypeFromPortID(valuePtr[0]) == 1885892674)
    {
      break;
    }

    if (v3 == ++v4)
    {
      goto LABEL_6;
    }
  }

  v6 = valuePtr[0];
  if (!valuePtr[0])
  {
    goto LABEL_7;
  }

  return v6;
}

CFArrayRef CMSM_IDSConnection_CopySharedAudioRoutePortIDs()
{
  if (qword_1EB75CC98)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], qword_1EB75CC98);
  }

  else
  {
    return 0;
  }
}

uint64_t cmsmShouldRequestOwnershipOnSharedAudioRoute(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2 || !vaeDoesPortSupportMultipleConnections(a2))
  {
    return 0;
  }

  if (CMSM_IDSConnection_IsNearbyPairedDevicePresent())
  {
    if (a1)
    {
      memset(v17, 0, sizeof(v17));
      PartnersForPort = vaeGetPartnersForPort(a2, v17);
      v5 = cmsmCopyWirelessPortsArrayForRouteConfiguration([a1 audioCategory], objc_msgSend(a1, "audioMode"), objc_msgSend(a1, "allowedPortTypes"), objc_msgSend(a1, "prefersBluetoothHighQualityContentCapture"));
      v6 = v5;
      if (v5)
      {
        Count = CFArrayGetCount(v5);
        UInt32 = FigCFNumberCreateUInt32();
        if (Count >= 1)
        {
          v20.location = 0;
          v20.length = Count;
          if (!CFArrayContainsValue(v6, v20, UInt32))
          {
            if (!PartnersForPort)
            {
              goto LABEL_23;
            }

            v13 = PartnersForPort;
            v14 = v17;
            while (1)
            {
              v14 = (v14 + 4);
              v15 = FigCFNumberCreateUInt32();
              v21.location = 0;
              v21.length = Count;
              v16 = CFArrayContainsValue(v6, v21, v15);
              if (v15)
              {
                CFRelease(v15);
              }

              if (v16)
              {
                break;
              }

              if (!--v13)
              {
                goto LABEL_23;
              }
            }
          }

          LocalSessionPriority = CMSM_GetLocalSessionPriority(a1, 0);
          HighestRemotePlayingSessionPriority = CMSM_GetHighestRemotePlayingSessionPriority();
          ShouldSetupForCoordinatedInterruptions = 0;
          if (LocalSessionPriority < 0x65 || LocalSessionPriority < HighestRemotePlayingSessionPriority)
          {
            goto LABEL_24;
          }

          if (([a1 isIDSMXCoreSession] & 1) == 0)
          {
            ShouldSetupForCoordinatedInterruptions = cmsmShouldSetupForCoordinatedInterruptions(a2, 1);
LABEL_24:
            if (UInt32)
            {
              CFRelease(UInt32);
            }

            if (v6)
            {
              CFRelease(v6);
            }

            return ShouldSetupForCoordinatedInterruptions;
          }
        }
      }

      else
      {
        UInt32 = FigCFNumberCreateUInt32();
      }

LABEL_23:
      ShouldSetupForCoordinatedInterruptions = 0;
      goto LABEL_24;
    }

    if (cmsmShouldSetupForCoordinatedInterruptions(a2, 0) && !CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote() && !CMSM_IDSServer_IsAutomaticOwnershipTransferToPhoneTimerCreated())
    {
      return CMSM_IDSConnection_IsWaitingForGizmoPlayingInfo() == 0;
    }

    return 0;
  }

  if (vaeGetBTPortOwnsSharedAudioConnection(a2))
  {
    return 0;
  }

  if (!vaeDoesBTPortSupportInEarDetection(a2))
  {
    return 1;
  }

  return CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(a2);
}

uint64_t CMSMNotificationUtility_PostPickableRoutesDidChange(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = MXGetNotificationSenderQueue(a1, a2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMNotificationUtility_PostPickableRoutesDidChange_block_invoke;
  v5[3] = &__block_descriptor_33_e5_v8__0l;
  v6 = v2;
  MXDispatchAsync("CMSMNotificationUtility_PostPickableRoutesDidChange", "CMSessionManager_NotificationUtilities.m", 1184, 0, 0, v3, v5);
  return [MXSystemController notifyAll:@"PickableRoutesDidChange" payload:0 dontPostIfSuspended:1];
}

BOOL vaeGetBTPortOwnsSharedAudioConnection(AudioObjectID inObjectID)
{
  v20 = *MEMORY[0x1E69E9840];
  inAddress.mElement = 0;
  *&inAddress.mSelector = 0;
  if (inObjectID)
  {
    *&inAddress.mSelector = 0x676C6F626F736163;
    if (AudioObjectHasProperty(inObjectID, &inAddress))
    {
      ioDataSize = 4;
      outData = 0;
      if (!AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        v3 = outData != 0;
        goto LABEL_7;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v3 = 0;
LABEL_7:
  if (dword_1EB75DE40)
  {
    outData = 0;
    LOBYTE(ioDataSize) = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = outData;
    v6 = ioDataSize;
    if (os_log_type_enabled(v4, ioDataSize))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = "YES";
      v14 = "vaeGetBTPortOwnsSharedAudioConnection";
      v13 = 136315650;
      if (!v3)
      {
        v8 = "NO";
      }

      v15 = 1024;
      v16 = inObjectID;
      v17 = 2082;
      v18[0] = v8;
      _os_log_send_and_compose_impl(v7, 0, v19, 128, &dword_1B17A2000, v4, v6, "-CMVAEndpoint- %s: port=%u, isOwner=%{public}s", &v13, 28);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

uint64_t cmsSetCategoryOnPVMAndAudioDevice(void *a1, char a2, int a3)
{
  v161 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v4 = [a1 audioCategory];
  v5 = [a1 audioMode];
  cf = CMSUtility_CopyDeviceHintsForSession(a1, v6);
  PVMSetEnabled(1);
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = @"Audio/Video";
  }

  if (!v5)
  {
    v5 = @"Default";
  }

  v8 = dword_1EB75E11C;
  if (![+[MXSessionManager carPlayIsConnected] sharedInstance]
  {
    v10 = 0;
LABEL_15:
    v94 = 0;
    v13 = v8 & 1;
    v14 = 1;
    goto LABEL_16;
  }

  CurrentConnectedPortToRoute = cmsmGetCurrentConnectedPortToRoute(0);
  v10 = CurrentConnectedPortToRoute;
  if (vaeGetPortTypeFromPortID(CurrentConnectedPortToRoute) != 1886614639 || ![a1 tookControlOfStarkMainAudio] || byte_1EB75E180 || !vaeDoesPortSupportRoutability(v10) || vaeIsPortRoutable(v10))
  {
    goto LABEL_15;
  }

  v11 = vaeCopyDeviceIdentifierFromVADPort(v10);
  v94 = [+[MX_BannerManager sharedInstance](MX_BannerManager isCarPlayPortRoutableFromCustomizedRoutingPerspective:"isCarPlayPortRoutableFromCustomizedRoutingPerspective:", v11];
  if (dword_1EB75DE40)
  {
    *&v159[7] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v14 = !v94;
  v13 = v8 & 1;
  if (v94 && !v13)
  {
    [a1 setOverridePortsList:0];
    v14 = 0;
    v94 = 1;
  }

LABEL_16:
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v7);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v5);
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioCategory:"setCurrentAudioCategory:", v7];
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioMode:"setCurrentAudioMode:", v5];
  v15 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (![a1 addSharedAudioRouteToRoutablePorts])
  {
    goto LABEL_43;
  }

  v105 = v14;
  v107 = v13;
  v109 = v10;
  v17 = CMSMUtility_CopyCurrentOutputPorts();
  v18 = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
  if (v17)
  {
    Count = CFArrayGetCount(v17);
    if (Count >= 1)
    {
      v20 = Count;
      for (i = 0; i != v20; ++i)
      {
        PortAtIndex = CMSMVAUtility_GetPortAtIndex(v17, i);
        v23 = PortAtIndex;
        if (vaeDoesPortSupportMultipleConnections(PortAtIndex) && vaeDoesPortSupportRoutability(v23) && !vaeIsPortRoutable(v23))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
          CFArrayAppendValue(v18, ValueAtIndex);
        }
      }
    }
  }

  Routable = cmsmCopyPartnerPortsToMakeRoutable(v18);
  v26 = Routable;
  if (Routable && CFArrayGetCount(Routable) > 0)
  {
    v162.length = CFArrayGetCount(v26);
    v162.location = 0;
    CFArrayAppendArray(Mutable, v26, v162);
  }

  else
  {
    v27 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
    if (v27)
    {
      v28 = v27;
      v29 = CFArrayGetCount(v27);
      if (v29 >= 1)
      {
        v30 = v29;
        for (j = 0; j != v30; ++j)
        {
          v32 = CMSMVAUtility_GetPortAtIndex(v28, j);
          if (vaeDoesPortSupportRoutability(v32) && !vaeIsPortRoutable(v32))
          {
            v33 = CFArrayGetValueAtIndex(v28, j);
            CFArrayAppendValue(Mutable, v33);
          }
        }
      }

      CFRelease(v28);
    }

    if (!v26)
    {
      goto LABEL_38;
    }
  }

  CFRelease(v26);
LABEL_38:
  v10 = v109;
  v13 = v107;
  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  [a1 setAddSharedAudioRouteToRoutablePorts:0];
  v14 = v105;
LABEL_43:
  memset(&v160[8], 0, 32);
  *type = 0;
  *&type[3] = 0;
  v122[0] = 0;
  *(v122 + 3) = 0;
  v120 = 0;
  v121 = 0;
  v119[0] = 0;
  *(v119 + 3) = 0;
  v110 = [a1 activationContext];
  v108 = [a1 cameraParameters];
  v106 = [a1 vpBlockConfiguration];
  v104 = [a1 subPortPreferences];
  v100 = [a1 willSetScreenDarkModeOnVAD];
  v102 = [a1 createSpeakerDevice];
  v101 = [a1 excludedPortsList];
  v99 = [a1 ignoreRingerSwitch];
  v98 = [a1 preferredDecoupledInputOutput];
  v97 = [a1 allowedPortTypes];
  v96 = [a1 reporterIDs];
  v34 = [a1 overridePortsList];
  v103 = v34 != 0;
  if (v34)
  {
    v35 = CFArrayGetCount([a1 overridePortsList]);
    v36 = v35;
    if (v35)
    {
      v37 = 0;
      do
      {
        valuePtr[0] = 0;
        v38 = CFArrayGetValueAtIndex([a1 overridePortsList], v37);
        CFNumberGetValue(v38, kCFNumberSInt32Type, valuePtr);
        if (vaeDoesPortSupportRoutability(valuePtr[0]) && !vaeIsPortRoutable(valuePtr[0]))
        {
          CFArrayAppendValue(Mutable, v38);
        }

        ++v37;
      }

      while (v36 != v37);
    }

    if (v13 & v94)
    {
      valuePtr[0] = v10;
      v39 = CFNumberCreate(v15, kCFNumberSInt32Type, valuePtr);
      CFArrayAppendValue(Mutable, v39);
      if (v39)
      {
        CFRelease(v39);
      }
    }

    v95 = [a1 overridePortsList];
  }

  else
  {
    if ((v14 & 1) == 0)
    {
      v40 = MXCFNumberCreateFromSInt64(v10);
      CFArrayAppendValue(Mutable, v40);
      if (v40)
      {
        CFRelease(v40);
      }
    }

    v95 = 0;
  }

  if ([a1 preferredPersistentRoute])
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration([a1 audioCategory], objc_msgSend(a1, "audioMode"), objc_msgSend(a1, "allowedPortTypes"), 1);
    v43 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration([a1 audioCategory], objc_msgSend(a1, "audioMode"), objc_msgSend(a1, "allowedPortTypes"), 0);
    [v41 addObjectsFromArray:v42];
    [v41 addObjectsFromArray:v43];
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v44 = [v41 countByEnumeratingWithState:&v115 objects:v160 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v116;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v116 != v46)
          {
            objc_enumerationMutation(v41);
          }

          v48 = *(*(&v115 + 1) + 8 * k);
          v49 = [v48 unsignedIntValue];
          if (vaeDoesPortSupportRoutability(v49) && !vaeIsPortRoutable(v49))
          {
            CFArrayAppendValue(Mutable, v48);
          }
        }

        v45 = [v41 countByEnumeratingWithState:&v115 objects:v160 count:16];
      }

      while (v45);
    }

    v50 = [a1 preferredPersistentRoute];
  }

  else
  {
    v50 = 0;
  }

  v51 = CFArrayGetCount(Mutable);
  if (!v51 && Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  IsSystemInputPickerEnabled = MX_FeatureFlags_IsSystemInputPickerEnabled(v51, v52);
  if (IsSystemInputPickerEnabled)
  {
    if (dword_1EB75DE40)
    {
      v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    IsSystemInputPickerEnabled = [a1 copyUserPreferredInputPort];
    v56 = IsSystemInputPickerEnabled;
    v57 = IsSystemInputPickerEnabled == 0;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v93 = v57;
  if (!MX_FeatureFlags_IsSharePlayEnabled(IsSystemInputPickerEnabled, v54) || ([a1 isSharePlayMediaSession] & 1) == 0 && !objc_msgSend(a1, "isSharePlayCallSession"))
  {
    v61 = v50;
    v92 = 0;
    goto LABEL_85;
  }

  v58 = [a1 isSharePlayCallSession];
  v60 = (v58 & 1) != 0 || CMSMUtility_IsSharePlayCallSessionActive(v58, v59) != 0;
  v92 = v60;
  v63 = [a1 isSharePlayMediaSession];
  if (v63)
  {
    v61 = v50;
    v62 = CMSMVAUtility_GetVADModeFromFigModeName([a1 audioMode]);
    goto LABEL_89;
  }

  if (!a3)
  {
    v61 = v50;
    goto LABEL_85;
  }

  v61 = v50;
  SharePlayCapableActiveMediaSession = CMSMUtility_GetSharePlayCapableActiveMediaSession(v63, v64);
  if (!SharePlayCapableActiveMediaSession)
  {
LABEL_85:
    v62 = 0;
LABEL_89:
    v65 = 0;
    goto LABEL_90;
  }

  v78 = SharePlayCapableActiveMediaSession;
  v62 = CMSMVAUtility_GetVADModeFromFigModeName([SharePlayCapableActiveMediaSession audioMode]);
  v65 = [v78 aggregateDeviceClockUID];
LABEL_90:
  v66 = [a1 aggregateDeviceClockUID];
  if (v66)
  {
    v66 = [a1 aggregateDeviceClockUID];
    v65 = v66;
  }

  IsOverdubRecordingEnabled = MX_FeatureFlags_IsOverdubRecordingEnabled(v66, v67);
  if (IsOverdubRecordingEnabled)
  {
    IsOverdubRecordingEnabled = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(a1, "prefersEchoCancelledInput")}];
    v70 = IsOverdubRecordingEnabled;
  }

  else
  {
    v70 = 0;
  }

  IsAirPodsStudioVoiceMicEnabled = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(IsOverdubRecordingEnabled, v69);
  if (IsAirPodsStudioVoiceMicEnabled)
  {
    IsAirPodsStudioVoiceMicEnabled = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(a1, "prefersBluetoothHighQualityContentCapture")}];
    v73 = IsAirPodsStudioVoiceMicEnabled;
  }

  else
  {
    v73 = 0;
  }

  IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(IsAirPodsStudioVoiceMicEnabled, v72);
  if (IsAdditiveRoutingEnabled && (IsAdditiveRoutingEnabled = MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(IsAdditiveRoutingEnabled, v75), !IsAdditiveRoutingEnabled))
  {
    IsAdditiveRoutingEnabled = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyActiveSessionsInfo];
    v76 = IsAdditiveRoutingEnabled;
  }

  else
  {
    v76 = 0;
  }

  if (MX_FeatureFlags_IsPersonalTranslatorEnabled(IsAdditiveRoutingEnabled, v75))
  {
    v79 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(a1, "prefersBluetoothFarFieldCapture")}];
  }

  else
  {
    v79 = 0;
  }

  v131 = v160[8];
  valuePtr[0] = VADCategoryFromFigCategoryName;
  valuePtr[1] = VADModeFromFigModeName;
  v125 = 0;
  v126 = v110;
  v127 = v108;
  v128 = v106;
  v129 = v95;
  v130 = Mutable;
  v132 = v160[9];
  v133 = v104;
  v134 = v100;
  *v135 = *type;
  *&v135[3] = *&type[3];
  v136 = cf;
  v137 = v102;
  *v138 = v122[0];
  *&v138[3] = *(v122 + 3);
  v139 = v101;
  v140 = v99;
  v141 = v98;
  v142 = v120;
  v143 = v121;
  v144 = v97;
  v145 = v96;
  v146 = a2;
  v147 = v92;
  v148 = 0;
  v149 = v62;
  v150 = v65;
  v151 = 0;
  v152 = v76;
  v153 = v61;
  v154 = v70;
  v155 = v73;
  v156 = v79;
  v157 = v56;
  v158 = v93;
  *&v159[3] = *(v119 + 3);
  *v159 = v119[0];
  cmsmSetVADRouteConfiguration(valuePtr, v103, qword_1EB75E190);
  [a1 setWillSetScreenDarkModeOnVAD:0];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v81 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  v82 = MX_FeatureFlags_IsSystemInputPickerEnabled(v81, v80);
  if (v82 && v56)
  {
    CFRelease(v56);
  }

  v84 = MX_FeatureFlags_IsOverdubRecordingEnabled(v82, v83);
  if (v84 && v70)
  {
    CFRelease(v70);
  }

  v86 = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(v84, v85);
  if (v86 && v73)
  {
    CFRelease(v73);
  }

  v88 = CMSMVAUtility_IsAdditiveRoutingEnabled(v86, v87);
  if (v88 && v76)
  {
    CFRelease(v76);
  }

  if (MX_FeatureFlags_IsPersonalTranslatorEnabled(v88, v89) && v79)
  {
    CFRelease(v79);
  }

  return FigSimpleMutexUnlock();
}

__CFArray *CMSUtility_CopyDeviceHintsForSession(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  memset(bytes, 0, sizeof(bytes));
  v22 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  memset(v19, 0, sizeof(v19));
  preferredBufferDuration = 0;
  IsHangsBufferedSizeHintEnabled = MX_FeatureFlags_IsHangsBufferedSizeHintEnabled(a1, a2);
  v4 = 0;
  if (a1 && IsHangsBufferedSizeHintEnabled)
  {
    [a1 preferredIOBufferDuration];
    v4 = v5 != 0.0;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (([a1 currentlyControllingFlags] & 2) != 0)
  {
    [a1 preferredOutputSampleRate];
    if (v9 != 0.0)
    {
      *bytes = CMSUtility_GetVADType(a1);
      *&bytes[4] = xmmword_1B19D90C0;
      *&bytes[24] = 0;
      LODWORD(v24) = 8;
      *(&v24 + 1) = [a1 getPreferredOutputSampleRatePointer];
      v10 = CFDataCreate(v6, bytes, 48);
      CFArrayAppendValue(Mutable, v10);
      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (v4)
    {
      [a1 preferredIOBufferDuration];
      if (v11 != 0.0)
      {
        [a1 preferredIOBufferDuration];
        *&preferredBufferDuration = v12;
        v19[0] = xmmword_1B19D90D0;
        LODWORD(v20) = 8;
        *(&v20 + 1) = &preferredBufferDuration;
        v13 = v19;
        goto LABEL_23;
      }
    }

    [a1 preferredOutputSampleRate];
    if (v14 != 0.0)
    {
      [a1 preferredIOBufferDuration];
      if (v15 != 0.0 && ![a1 preferredIOBufferFrames])
      {
        [a1 preferredIOBufferDuration];
        [a1 preferredOutputSampleRate];
        [a1 setPreferredIOBufferFrames:FigUInt32NearestPowerOfTwo()];
        [a1 setPreferredIOBufferDuration:0.0];
      }
    }

    if ([a1 preferredIOBufferFrames])
    {
      v16 = [a1 preferredIOBufferFrames];
      if (!FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B3F0) || !(v16 % 0x18) || !(v16 % 0x1E) || (v16 & 0x1F) == 0)
      {
        *v21 = CMSUtility_GetVADType(a1);
        *&v21[4] = xmmword_1B19D90E0;
        *&v21[24] = 0;
        LODWORD(v22) = 4;
        *(&v22 + 1) = [a1 getPreferredIOBufferFramesPointer];
        v13 = v21;
LABEL_23:
        v17 = CFDataCreate(v6, v13, 48);
        CFArrayAppendValue(Mutable, v17);
        if (v17)
        {
          CFRelease(v17);
        }
      }
    }
  }

  return Mutable;
}

uint64_t MX_FeatureFlags_IsHangsBufferedSizeHintEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_cold_1();
  }

  return MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_sHangsBufferedSizeHintEnabled;
}

uint64_t CMSUtility_GetVADType(void *a1)
{
  if (!a1)
  {
    return 1986291046;
  }

  v1 = [a1 audioDestinationPriority];
  if (v1)
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v1];
  }

  else
  {
    v2 = @"VirtualAudioDevice_Default";
  }

  VADIDForVADName = CMSMUtility_GetVADIDForVADName(v2);

  return vaemGetVirtualAudioDeviceType(VADIDForVADName);
}

uint64_t vaemGetVirtualAudioDeviceType(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = 1986291046;
  ioDataSize = 4;
  outData = 1986291046;
  *&inAddress.mSelector = *"ptdvbolg";
  inAddress.mElement = 0;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return outData;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v1;
}

BOOL FigVAEndpointManagerGetPropertyBoolean(uint64_t a1, uint64_t a2)
{
  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 0;
  }

  v4(CMBaseObject, a2, *MEMORY[0x1E695E480], &cf);
  if (!cf)
  {
    return 0;
  }

  v5 = cf == *MEMORY[0x1E695E4D0];
  CFRelease(cf);
  return v5;
}

uint64_t vaemBufferFrameSizeShouldBeRestricted(AudioObjectID a1, int a2)
{
  outData = 1;
  if (a2 == 1)
  {
    v2 = 1768845428;
  }

  else
  {
    v2 = 1869968496;
  }

  inAddress.mSelector = 1650881394;
  inAddress.mScope = v2;
  inAddress.mElement = 0;
  ioDataSize = 4;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  v4 = outData;
  if (PropertyData)
  {
    return 1;
  }

  return v4;
}

uint64_t PVMSetEnabled(int a1)
{
  FigSimpleMutexLock();
  *(sStorage + 8) = a1 == 0;

  return FigSimpleMutexUnlock();
}

uint64_t MX_FeatureFlags_IsOverdubRecordingEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsOverdubRecordingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsOverdubRecordingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsOverdubRecordingEnabled_isOverdubRecordingEnabled;
}

uint64_t cmsmSetVADRouteConfiguration(uint64_t a1, unsigned int a2, const void *a3)
{
  v130 = *MEMORY[0x1E69E9840];
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  theDict = Mutable;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    Mutable = fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      Mutable = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  IsOverdubRecordingEnabled = MX_FeatureFlags_IsOverdubRecordingEnabled(Mutable, v5);
  if (IsOverdubRecordingEnabled && dword_1EB75DE40)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    IsOverdubRecordingEnabled = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  IsAirPodsStudioVoiceMicEnabled = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(IsOverdubRecordingEnabled, v9);
  if (IsAirPodsStudioVoiceMicEnabled && dword_1EB75DE40)
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    IsAirPodsStudioVoiceMicEnabled = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(IsAirPodsStudioVoiceMicEnabled, v12);
  if (IsAdditiveRoutingEnabled && dword_1EB75DE40)
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    IsAdditiveRoutingEnabled = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  IsSystemInputPickerEnabled = MX_FeatureFlags_IsSystemInputPickerEnabled(IsAdditiveRoutingEnabled, v15);
  v18 = dword_1EB75DE40;
  if (IsSystemInputPickerEnabled && dword_1EB75DE40)
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v18 = dword_1EB75DE40;
  }

  if (v18)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v21 = *a1;
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = *(a1 + 80);
  v122 = *(a1 + 72);
  v123 = *(a1 + 56);
  v127 = (a1 + 156);
  v25 = *(a1 + 153);
  v26 = *(a1 + 216);
  v27 = *(a1 + 224);
  if (*a1 && v21 != dword_1EB75E09C)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v29 = *(a1 + 4);
  if (v29 && v29 != dword_1EB75E0A0)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v121 = *(a1 + 96);
  v119 = *(a1 + 128);
  v120 = *(a1 + 112);
  v117 = *(a1 + 153);
  v118 = *(a1 + 129);
  v115 = *(a1 + 168);
  v116 = *(a1 + 156);
  v22 = FigCFEqual();
  if (!v22)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v22 = FigCFEqual();
  if (!v22)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  vaemGetCurrentActivationContext();
  v22 = FigCFEqual();
  if (!v22)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v22 = FigCFEqual();
  if (!v22)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v22 = FigCFEqual();
  if (!v22)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v22 = FigCFEqual();
  if (!v22)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (v23)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (v123)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v22 = MX_FeatureFlags_IsSystemInputPickerEnabled(v22, v25);
  v30 = v121;
  if (v22)
  {
    v25 = qword_1EB75D1D8;
    if (v27 && qword_1EB75D1D8)
    {
      v28 = &qword_1EB75D000;
      if (dword_1EB75DE40)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    if (v26)
    {
      v22 = FigCFEqual();
      v30 = v121;
      if (!v22)
      {
        v28 = &qword_1EB75D000;
        if (!dword_1EB75DE40)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }
    }
  }

  if (v122)
  {
    v28 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v28 = &qword_1EB75D000;
  if (v24)
  {
    if (dword_1EB75DE40)
    {
LABEL_62:
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      v22 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_63:
    v32 = theDict;
    if (*a1)
    {
      v22 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1);
      if (v22)
      {
        v33 = v22;
        CFDictionarySetValue(theDict, @"category", v22);
        CFRelease(v33);
      }
    }

    if (!*(a1 + 4))
    {
      if (!*a1)
      {
        goto LABEL_71;
      }

      *(a1 + 4) = 1768776806;
    }

    v22 = CFNumberCreate(allocator, kCFNumberSInt32Type, (a1 + 4));
    if (v22)
    {
      v34 = v22;
      CFDictionarySetValue(theDict, @"mode", v22);
      CFRelease(v34);
    }

LABEL_71:
    v35 = *(a1 + 16);
    if (v35)
    {
      CFDictionarySetValue(theDict, @"initiation context", v35);
    }

    v36 = *(a1 + 32);
    if (v36)
    {
      CFDictionarySetValue(theDict, @"voice processing configuration", v36);
    }

    else if (*a1)
    {
      v53 = CFDictionaryCreate(allocator, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(theDict, @"voice processing configuration", v53);
      if (v53)
      {
        CFRelease(v53);
      }
    }

    v37 = *(a1 + 40);
    if (v37)
    {
      CFDictionarySetValue(theDict, @"overridden ports", v37);
    }

    v38 = *(a1 + 88);
    if (v38)
    {
      CFDictionarySetValue(theDict, @"sub-port preferences", v38);
    }

    else if (*a1)
    {
      v54 = CFArrayCreate(0, 0, 0, 0);
      CFDictionarySetValue(theDict, @"sub-port preferences", v54);
      if (v54)
      {
        CFRelease(v54);
      }
    }

    v39 = *(a1 + 72);
    if (v39)
    {
      CFDictionarySetValue(theDict, @"aggregated ports", v39);
    }

    v40 = *(a1 + 80);
    if (v40)
    {
      CFDictionarySetValue(theDict, @"deaggregated ports", v40);
    }

    v41 = *(a1 + 48);
    if (v41)
    {
      CFDictionarySetValue(theDict, @"routable ports", v41);
    }

    v42 = MEMORY[0x1E695E4D0];
    if (*(a1 + 64))
    {
      CFDictionarySetValue(theDict, @"add fallback device", *MEMORY[0x1E695E4D0]);
    }

    v43 = *(a1 + 144);
    if (v43)
    {
      CFDictionarySetValue(theDict, @"reporter IDs", v43);
    }

    v44 = *(a1 + 56);
    if (v44)
    {
      CFDictionarySetValue(theDict, @"unroutable ports", v44);
    }

    if (*(a1 + 96))
    {
      CFDictionarySetValue(theDict, @"screen dark policy enabled", *v42);
    }

    v45 = *(a1 + 104);
    if (v45)
    {
      CFDictionarySetValue(theDict, @"device hints", v45);
    }

    v46 = MEMORY[0x1E695E4C0];
    if (byte_1EB75D130 | *(a1 + 112))
    {
      if (*(a1 + 112))
      {
        v47 = v42;
      }

      else
      {
        v47 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(theDict, @"create speaker vad", *v47);
    }

    if (*a1 && byte_1EB75D132 | *(a1 + 129))
    {
      if (*(a1 + 129))
      {
        v48 = v42;
      }

      else
      {
        v48 = v46;
      }

      CFDictionarySetValue(theDict, @"decoupled input/output", *v48);
    }

    if (byte_1EB75D131 | *(a1 + 128))
    {
      if (*(a1 + 128))
      {
        v49 = v42;
      }

      else
      {
        v49 = v46;
      }

      CFDictionarySetValue(theDict, @"ignore ringer switch", *v49);
    }

    v50 = *(a1 + 120);
    if (v50)
    {
      CFDictionarySetValue(theDict, @"disallowed ports", v50);
    }

    v51 = *(a1 + 136);
    if (v51)
    {
      CFDictionarySetValue(theDict, @"allowed port types", v51);
    }

    v52 = *(a1 + 24);
    if (v52)
    {
      CFDictionarySetValue(theDict, @"camera parameters", v52);
    }

    if (*(a1 + 153) || *a1)
    {
      UInt32 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(theDict, @"expanse session", UInt32);
      if (UInt32)
      {
        CFRelease(UInt32);
      }
    }

    if (*v127)
    {
      v56 = CFNumberCreate(allocator, kCFNumberSInt32Type, v127);
      CFDictionarySetValue(theDict, @"optional output mode", v56);
      if (v56)
      {
        CFRelease(v56);
      }
    }

    v57 = *(a1 + 160);
    if (v57)
    {
      CFDictionarySetValue(theDict, @"aggregate device clock device", v57);
    }

    if (*(a1 + 168))
    {
      v58 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(theDict, @"route to builtinspeaker", v58);
      if (v58)
      {
        CFRelease(v58);
      }
    }

    if (*a1)
    {
      dword_1EB75E09C = *a1;
    }

    v59 = *(a1 + 184);
    if (v59)
    {
      v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v61 = [v59 objectForKey:@"InputPortUIDs"];
      v62 = [v59 objectForKey:@"OutputPortUIDs"];
      if (v61)
      {
        [v60 setObject:v61 forKey:0x1F28973F0];
      }

      if (v62)
      {
        [v60 setObject:v62 forKey:0x1F2897410];
      }

      CFDictionarySetValue(theDict, @"persistent route", v60);
    }

    v63 = MX_FeatureFlags_IsSystemInputPickerEnabled(v22, v25);
    if (v63)
    {
      if (*(a1 + 224))
      {
        v65 = *MEMORY[0x1E695E738];
LABEL_148:
        CFDictionarySetValue(theDict, @"user preferred input", v65);
        goto LABEL_149;
      }

      v65 = *(a1 + 216);
      if (v65)
      {
        goto LABEL_148;
      }
    }

LABEL_149:
    v66 = MX_FeatureFlags_IsOverdubRecordingEnabled(v63, v64);
    if (v66)
    {
      v68 = *(a1 + 192);
      if (v68)
      {
        CFDictionarySetValue(theDict, @"echo cancelled input", v68);
      }
    }

    v69 = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(v66, v67);
    if (v69)
    {
      v71 = *(a1 + 200);
      if (v71)
      {
        CFDictionarySetValue(theDict, @"studio mic input", v71);
      }
    }

    v72 = CMSMVAUtility_IsAdditiveRoutingEnabled(v69, v70);
    if (v72)
    {
      v74 = *(a1 + 176);
      if (v74)
      {
        CFDictionarySetValue(theDict, @"session routing information", v74);
        if (*(v28 + 912))
        {
          v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
          v72 = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    if (MX_FeatureFlags_IsPersonalTranslatorEnabled(v72, v73))
    {
      v76 = *(a1 + 208);
      if (v76)
      {
        CFDictionarySetValue(theDict, @"far field input", v76);
      }
    }

    v129 = 0;
    v77 = vaemSetRouteConfigurationDictionaryOnVAD(theDict, a2, a3, &v129);
    if (v77)
    {
      goto LABEL_246;
    }

    if (*a1)
    {
      dword_1EB75E09C = *a1;
      if (qword_1EB75D108)
      {
        CFRelease(qword_1EB75D108);
        qword_1EB75D108 = 0;
      }

      if (qword_1EB75D100)
      {
        CFRelease(qword_1EB75D100);
        qword_1EB75D100 = 0;
      }

      vaemSetCurrentActivationContext(0);
      if (qword_1EB75D120)
      {
        CFRelease(qword_1EB75D120);
        qword_1EB75D120 = 0;
      }

      if (qword_1EB75D128)
      {
        CFRelease(qword_1EB75D128);
        qword_1EB75D128 = 0;
      }

      if (qword_1EB75D138)
      {
        CFRelease(qword_1EB75D138);
        qword_1EB75D138 = 0;
      }

      if (qword_1EB75D140)
      {
        CFRelease(qword_1EB75D140);
        qword_1EB75D140 = 0;
      }

      [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAllowedPortTypes:"setCurrentAllowedPortTypes:", 0];
      if (qword_1EB75D110)
      {
        CFRelease(qword_1EB75D110);
        qword_1EB75D110 = 0;
      }

      byte_1EB75D130 = *(a1 + 112);
      *&byte_1EB75D131 = *(a1 + 128);
      byte_1EB75D1A0 = *(a1 + 153);
      dword_1EB75D1B0 = *(a1 + 156);
      if (qword_1EB75D1A8)
      {
        CFRelease(qword_1EB75D1A8);
        qword_1EB75D1A8 = 0;
      }
    }

    v78 = *(a1 + 40);
    if (v78)
    {
      v79 = qword_1EB75D100;
      qword_1EB75D100 = *(a1 + 40);
      CFRetain(v78);
      if (v79)
      {
        CFRelease(v79);
      }
    }

    if (*(a1 + 4))
    {
      dword_1EB75E0A0 = *(a1 + 4);
      vaemSetCurrentActivationContext(0);
      if (qword_1EB75D140)
      {
        CFRelease(qword_1EB75D140);
        qword_1EB75D140 = 0;
      }
    }

    v80 = *(a1 + 88);
    if (v80)
    {
      if (qword_1EB75D108)
      {
        CFRelease(qword_1EB75D108);
        qword_1EB75D108 = 0;
        v80 = *(a1 + 88);
      }

      qword_1EB75D108 = CFArrayCreateCopy(allocator, v80);
    }

    v81 = *(a1 + 16);
    if (v81)
    {
      vaemSetCurrentActivationContext(v81);
    }

    v82 = *(a1 + 104);
    if (v82)
    {
      v83 = qword_1EB75D120;
      qword_1EB75D120 = *(a1 + 104);
      CFRetain(v82);
      if (v83)
      {
        CFRelease(v83);
      }
    }

    v84 = *(a1 + 32);
    if (v84)
    {
      v85 = qword_1EB75D128;
      qword_1EB75D128 = *(a1 + 32);
      CFRetain(v84);
      if (v85)
      {
        CFRelease(v85);
      }
    }

    v86 = *(a1 + 120);
    if (v86)
    {
      v87 = qword_1EB75D138;
      qword_1EB75D138 = *(a1 + 120);
      CFRetain(v86);
      if (v87)
      {
        CFRelease(v87);
      }
    }

    v88 = *(a1 + 24);
    if (v88)
    {
      v89 = qword_1EB75D140;
      qword_1EB75D140 = *(a1 + 24);
      CFRetain(v88);
      if (v89)
      {
        CFRelease(v89);
      }
    }

    if (*(a1 + 136))
    {
      [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAllowedPortTypes:"setCurrentAllowedPortTypes:", *(a1 + 136)];
    }

    v90 = *(a1 + 184);
    if (v90)
    {
      v91 = qword_1EB75D110;
      qword_1EB75D110 = *(a1 + 184);
      CFRetain(v90);
      if (v91)
      {
        CFRelease(v91);
      }
    }

    if (*(a1 + 153))
    {
      byte_1EB75D1A0 = *(a1 + 153);
      v32 = theDict;
    }

    else
    {
      v32 = theDict;
      if (*a1)
      {
        byte_1EB75D1A0 = 0;
        v92 = *v127;
        dword_1EB75D1B0 = *v127;
        if (!qword_1EB75D1A8)
        {
          goto LABEL_212;
        }

        CFRelease(qword_1EB75D1A8);
        qword_1EB75D1A8 = 0;
      }
    }

    v92 = *v127;
LABEL_212:
    if (v92)
    {
      dword_1EB75D1B0 = v92;
    }

    v93 = *(a1 + 160);
    if (v93)
    {
      v94 = qword_1EB75D1A8;
      qword_1EB75D1A8 = *(a1 + 160);
      v93 = CFRetain(v93);
      if (v94)
      {
        CFRelease(v94);
      }
    }

    v95 = MX_FeatureFlags_IsOverdubRecordingEnabled(v93, v80);
    if (v95)
    {
      v95 = *(a1 + 192);
      if (v95)
      {
        v97 = qword_1EB75D1C0;
        qword_1EB75D1C0 = *(a1 + 192);
        v95 = CFRetain(v95);
        if (v97)
        {
          CFRelease(v97);
        }
      }
    }

    v98 = MX_FeatureFlags_IsSystemInputPickerEnabled(v95, v96);
    if (v98)
    {
      if (*(a1 + 224))
      {
        v98 = qword_1EB75D1D8;
        if (qword_1EB75D1D8)
        {
          CFRelease(qword_1EB75D1D8);
          qword_1EB75D1D8 = 0;
        }
      }

      else
      {
        v98 = *(a1 + 216);
        if (v98)
        {
          v100 = qword_1EB75D1D8;
          qword_1EB75D1D8 = *(a1 + 216);
          v98 = CFRetain(v98);
          if (v100)
          {
            CFRelease(v100);
          }
        }
      }
    }

    v101 = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(v98, v99);
    if (v101)
    {
      v101 = *(a1 + 200);
      if (v101)
      {
        v103 = qword_1EB75D1C8;
        qword_1EB75D1C8 = *(a1 + 200);
        v101 = CFRetain(v101);
        if (v103)
        {
          CFRelease(v103);
        }
      }
    }

    IsInputAudioCoexistenceSupportEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(v101, v102);
    if (IsInputAudioCoexistenceSupportEnabled)
    {
      IsInputAudioCoexistenceSupportEnabled = MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(IsInputAudioCoexistenceSupportEnabled, v105);
      if (!IsInputAudioCoexistenceSupportEnabled)
      {
        if (*(a1 + 176))
        {
          IsInputAudioCoexistenceSupportEnabled = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager setMostRecentActiveSessions:"setMostRecentActiveSessions:", *(a1 + 176)];
        }
      }
    }

    if (MX_FeatureFlags_IsPersonalTranslatorEnabled(IsInputAudioCoexistenceSupportEnabled, v105))
    {
      v106 = *(a1 + 208);
      if (v106)
      {
        v107 = qword_1EB75D1D0;
        qword_1EB75D1D0 = *(a1 + 208);
        CFRetain(v106);
        if (v107)
        {
          CFRelease(v107);
        }
      }
    }

    if (*(a1 + 152) && v129 == 1920099684)
    {
      vaemConfigurePVMSettings([+[MXSessionManager currentAudioMode] sharedInstance];
    }

LABEL_246:
    v108 = 0;
    goto LABEL_247;
  }

  if (v30)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v120 != byte_1EB75D130)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v119 != byte_1EB75D131)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v22 = FigCFEqual();
  if (!v22)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v118 != byte_1EB75D132)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  [+[MXSessionManager sharedInstance](MXSessionManager currentAllowedPortTypes];
  v22 = FigCFEqual();
  if (!v22)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v117)
  {
    if (v117 != byte_1EB75D1A0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v116 && v116 != dword_1EB75D1B0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v22 = FigCFEqual();
    if (!v22)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  else if (v21)
  {
    if (byte_1EB75D1A0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (dword_1EB75D1B0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (qword_1EB75D1A8)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  if (v115)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v22 = FigCFEqual();
  if (!v22)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v22 = MX_FeatureFlags_IsOverdubRecordingEnabled(v22, v25);
  if (v22)
  {
    v22 = FigCFEqual();
    if (!v22)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  v22 = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(v22, v25);
  if (v22)
  {
    v22 = FigCFEqual();
    if (!v22)
    {
      if (dword_1EB75DE40)
      {
        v114 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
        v22 = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v28 = &qword_1EB75D000;
      }

      goto LABEL_63;
    }
  }

  v22 = CMSMVAUtility_IsAdditiveRoutingEnabled(v22, v25);
  if (v22)
  {
    v22 = MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v22, v25);
    if (!v22)
    {
      [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager mostRecentActiveSessions];
      v22 = FigCFEqual();
      if (!v22)
      {
        if (!dword_1EB75DE40)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }
    }
  }

  if (MX_FeatureFlags_IsPersonalTranslatorEnabled(v22, v25))
  {
    v22 = FigCFEqual();
    if (!v22)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  if (*(a1 + 152))
  {
    vaemConfigurePVMSettings([+[MXSessionManager currentAudioMode] sharedInstance];
  }

  v77 = 0;
  v108 = 1;
  v32 = theDict;
LABEL_247:
  FigSimpleMutexUnlock();
  if (v32)
  {
    CFRelease(v32);
  }

  if (v77)
  {
    v109 = 1;
  }

  else
  {
    v109 = v108;
  }

  if ((v109 & 1) == 0)
  {
    v110 = *a1;
    v111 = 1;
    if (*a1 > 1668313714)
    {
      if (v110 != 1668313715 && v110 != 1668440898)
      {
        v112 = 1668441443;
LABEL_260:
        if (v110 != v112)
        {
          v111 = 0;
        }
      }
    }

    else if (v110 != 1668301427 && v110 != 1668309362)
    {
      v112 = 1668313666;
      goto LABEL_260;
    }

    byte_1EB75D148 = v111;
  }

  return v77;
}