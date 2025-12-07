uint64_t _FigEndpointCentralSendCommand(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v11 = *(DerivedStorage + 8);
  if (v11 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()) && (v12 = *(*(CMBaseObjectGetVTable() + 24) + 72)) != 0)
  {
    v13 = v12(v11, a2, a3, a4, a5);
  }

  else
  {
    v13 = 4294954514;
  }

  v15 = v13 == -12782 || v13 == -12785;
  if (a4 && v15)
  {
    a4(a1, v13, 0, a5);
  }

  return v13;
}

uint64_t fsm_getFigStarkModeStateEncoding(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_1B19D88F8[v1];
  }

  v3 = a1[2];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1B19D8904[v3];
  }

  v5 = a1[4];
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1B19D8910[v5];
  }

  v8 = a1[5];
  v7 = a1[6];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 512;
  }

  if (v8 == 10)
  {
    v10 = 1024;
  }

  else
  {
    v10 = v9;
  }

  if (v8 == 11)
  {
    v11 = 2048;
  }

  else
  {
    v11 = v10;
  }

  if (v7 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_1B19D891C[v7];
  }

  v13 = a1[7];
  if (v13 > 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_1B19D8928[v13];
  }

  return v4 | v2 | v6 | v11 | v12 | v14;
}

CFIndex __fsm_postStateChanged_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 120);
  v4.length = CFArrayGetCount(v2);
  v4.location = 0;
  result = CFArrayGetFirstIndexOfValue(v2, v4, *(a1 + 48));
  if (result != -1 && *(*(a1 + 48) + 16) == *(a1 + 56))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t fsm_getFigStarkModeChangeActionFromDict(const __CFDictionary *a1, int a2, int a3, uint64_t a4, int a5)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"PreviousModeEncoding");
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v11 = valuePtr & a2;
  v12 = (valuePtr & a2 & 7) != 0;
  if ((valuePtr & a2 & 0x38) == 0)
  {
    v12 = 0;
  }

  if ((v11 & 0x1C0) == 0)
  {
    v12 = 0;
  }

  if ((v11 & 0xE00) == 0)
  {
    v12 = 0;
  }

  if ((v11 & 0x7000) == 0)
  {
    v12 = 0;
  }

  v13 = (v11 & 0x38000) != 0 && v12;
  v29 = 0;
  v14 = CFDictionaryGetValue(a1, @"CurrentModeEncoding");
  CFNumberGetValue(v14, kCFNumberSInt32Type, &v29);
  v15 = v29 & a3;
  v16 = (v29 & a3 & 7) != 0;
  if ((v29 & a3 & 0x38) == 0)
  {
    v16 = 0;
  }

  if ((v15 & 0x1C0) == 0)
  {
    v16 = 0;
  }

  if ((v15 & 0xE00) == 0)
  {
    v16 = 0;
  }

  if ((v15 & 0x7000) == 0)
  {
    v16 = 0;
  }

  v17 = (v15 & 0x38000) != 0 && v16;
  v28 = 0;
  v18 = CFDictionaryGetValue(a1, @"ModeRequestEncoding");
  CFNumberGetValue(v18, kCFNumberSInt64Type, &v28);
  v19 = v28 & a4;
  v20 = v28 & a4 & 7;
  if ((a5 & 2) != 0)
  {
    if (!v20 || (v19 & 0x780000) == 0 || (v19 & 0x78000) == 0 || (v19 & 0x7800) == 0 || (v19 & 0xF8) == 0 || (v19 & 0x700) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v21 = vdupq_n_s64(v19);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v21, xmmword_1B19D8870)), vceqzq_s64(vandq_s8(v21, xmmword_1B19D8880))), vuzp1q_s32(vceqzq_s64(vandq_s8(v21, xmmword_1B19D8890)), vceqzq_s64(vandq_s8(v21, xmmword_1B19D88A0)))))) & 1) != 0 || !v20)
    {
LABEL_34:
      v22 = 0;
      goto LABEL_35;
    }
  }

  v22 = 1;
LABEL_35:
  v27 = 0;
  v23 = CFDictionaryGetValue(a1, @"RequestType");
  CFNumberGetValue(v23, kCFNumberSInt32Type, &v27);
  result = 0;
  if (v13 && v17 && v22)
  {
    if ((v27 & a5) != 0)
    {
      v26 = 0;
      v25 = CFDictionaryGetValue(a1, @"ModeChangeAction");
      CFNumberGetValue(v25, kCFNumberSInt64Type, &v26);
      return v26;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigRoutingManager_iOSIsCarPlayAuxStreamSupported()
{
  v0 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  v1 = FigRoutingManagerCopyActivatedCarPlayEndpoint(v0);
  if (v1)
  {
    FigEndpointCopyStreamsForTypeAndSubType();
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  return 0;
}

void *MXEndpointDescriptorLogRouteDelta(uint64_t a1, const __CFArray *a2, uint64_t a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = @"The following endpoints went away for endpointManager=%@\n";
  }

  else
  {
    v5 = @"The following endpoints are newly available for endpointManager=%@\n";
  }

  v24 = v5;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  v7 = 0;
  v8 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = CFArrayGetCount(a2); v7 < i; i = 0)
  {
    CFArrayGetValueAtIndex(a2, v7);
    FigCFDictionaryGetValue();
    if (FigCFArrayContainsValue())
    {
      FigCFDictionaryGetValue();
      Value = FigCFDictionaryGetValue();
      v11 = FigCFDictionaryGetValue();
      v12 = FigCFDictionaryGetValue();
      if (v12)
      {
        LOBYTE(v12) = FigCFNumberGetUInt64();
      }

      v13 = FigRoutingManagerCopyEndpointFeaturesAsString(v12);
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t[%ld] Endpoint=%@, routeUID = %@, supportedFeatures=%@\n", v8, Value, v11, v13];
      v15 = [v6 length];
      if (([v14 length] + v15) > 0x3FF)
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:v24, a1];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t[%ld] Endpoint=%@, routeUID = %@, supportedFeatures=%@\n", v20, v8, Value, v11, v13];
      }

      else
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, v14, v21, v22, v23];
      }

      v6 = v16;
      ++v8;
      if (v13)
      {
        CFRelease(v13);
      }
    }

    ++v7;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  result = [v6 length];
  if (result && dword_1EB75DE40)
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void figEndpointDescriptorUtility_setAirPlayFeatures(uint64_t a1, __CFDictionary *a2)
{
  if (a2)
  {
    SupportedFeatures = FigEndpointGetSupportedFeatures();
    v4 = *MEMORY[0x1E695E4D0];
    v5 = *MEMORY[0x1E695E4C0];
    if ((SupportedFeatures & 2) != 0)
    {
      v6 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v6 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(a2, @"RouteSupportsAudio", v6);
    if ((FigEndpointGetSupportedFeatures() & 4) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    CFDictionarySetValue(a2, @"RouteSupportsAirPlayVideo", v7);
    if (FigEndpointGetSupportedFeatures())
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    CFDictionarySetValue(a2, @"RouteSupportsAirPlayScreen", v8);
    if ((FigEndpointGetSupportedFeatures() & 8) != 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = v5;
    }

    CFDictionarySetValue(a2, @"RouteSupportsAirPlayMusic", v9);
  }
}

void figEndpointDescriptorUtility_setAirPlayRouteSubType(uint64_t a1, __CFDictionary *a2)
{
  if (a2)
  {
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E6962278], *MEMORY[0x1E695E480], &cf);
    }

    if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_Unknown;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_AppleTV;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_HomePod;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_iOS;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_Mac;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_ThirdPartyTV;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_ThirdPartySetTopBox;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_LowFidelitySpeaker;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_ThirdPartyTVStick;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_ThirdPartySpeaker;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_ClusterStereoPair;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_ClusterHomeTheater;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_ClusterGeneric;
    }

    else if (FigCFEqual())
    {
      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_ClusterGenericAudio;
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_35;
      }

      v5 = kFigEndpointDescriptorKey_AudioRouteSubType_visionOS;
    }

    CFDictionarySetValue(a2, @"AudioRouteSubType", *v5);
LABEL_35:
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

BOOL FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v11 = *MEMORY[0x1E695E4C0];
  v1 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962158], v1, &v11);
  }

  cf = 0;
  v4 = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, *MEMORY[0x1E6962278], v1, &cf);
    v6 = cf;
  }

  else
  {
    v6 = 0;
  }

  if (v11 != *MEMORY[0x1E695E4D0])
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = FigCFEqual();
  v6 = cf;
  if (v8)
  {
    v7 = 1;
    if (!cf)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = FigCFEqual() != 0;
  v6 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(v6);
    cf = 0;
  }

LABEL_14:
  if (v11)
  {
    CFRelease(v11);
  }

  return v7;
}

void FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache(const void *a1, const void *a2, const void *a3)
{
  SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
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

  v7 = *(SharedManager + 1);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  MXDispatchAsync("FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache", "FigRoutingManager_EndpointHelpers.m", 925, 0, 0, v7, v8);
}

void __FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache_block_invoke(void *a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E4C0];
  v34 = *MEMORY[0x1E695E4C0];
  v3 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E6962100], v3, &v34);
    v2 = v34;
  }

  if (v2 == *MEMORY[0x1E695E4D0])
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs(theArray);
    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
    }

    else
    {
      Count = 0;
    }

    *prefix = 0;
    v7 = *MEMORY[0x1E69620F8];
    v8 = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(v8, v7, v3, prefix);
    }

    if (Count >= 1)
    {
      v10 = 0;
      v11 = *MEMORY[0x1E69626B0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v10);
        if (!MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(ValueAtIndex, v13) || !FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay(ValueAtIndex, v14))
        {
          break;
        }

        FigRoutingManagerHandleDescriptionChangedForRemoteDisplay(a1[4], a1[5], a1[6]);
LABEL_38:
        if (Count == ++v10)
        {
          goto LABEL_39;
        }
      }

      v39 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(ValueAtIndex, 0, &v39);
      theString = 0;
      if (v39)
      {
        v15 = FigEndpointGetCMBaseObject();
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          v16(v15, v7, v3, &theString);
        }
      }

      v17 = v39;
      if (v39 != a1[4])
      {
        if (!*prefix || !theString)
        {
          goto LABEL_22;
        }

        if (!CFStringHasPrefix(theString, *prefix))
        {
          v17 = v39;
LABEL_22:
          if (!FigRoutingManagerIsEndpointOfType(v17, v11))
          {
            goto LABEL_31;
          }

          v18 = a1[4];
          v19 = v39;
          if (!v39 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
          {
            v19 = 0;
          }

          if (!FigRoutingManagerIsEndpointPresentInAggregate(v18, v19))
          {
            goto LABEL_31;
          }
        }
      }

      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(ValueAtIndex, 0, @"configUpdateReasonEndpointDescriptorChanged");
      cf = 0;
      FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(ValueAtIndex, &cf);
      v20 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf, 0);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(ValueAtIndex, v20);
      if (v20)
      {
        CFRelease(v20);
      }

LABEL_31:
      if (FigRoutingManagerContextUtilities_GetContextType(ValueAtIndex) == 1 && FigPredictedRouting_IsEndpointThePredictedRoute(a1[4], ValueAtIndex))
      {
        FigPredictedRouting_UpdatePredictedRoute(11);
      }

      if (theString)
      {
        CFRelease(theString);
        theString = 0;
      }

      if (v39)
      {
        CFRelease(v39);
      }

      goto LABEL_38;
    }

LABEL_39:
    if (*prefix)
    {
      CFRelease(*prefix);
      *prefix = 0;
    }

    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }
  }

  if (FigRoutingManagerIsEndpointOfType(a1[4], *MEMORY[0x1E69626B8]))
  {
    v39 = 0;
    v21 = FigEndpointGetCMBaseObject();
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v22(v21, *MEMORY[0x1E69621E8], v3, &v39);
    }

    theString = 0;
    v23 = FigEndpointGetCMBaseObject();
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v24(v23, *MEMORY[0x1E6961FE0], v3, &theString);
    }

    cf = 0;
    v25 = FigEndpointGetCMBaseObject();
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v26)
    {
      v26(v25, *MEMORY[0x1E69621D8], v3, &cf);
    }

    if (dword_1EB75DF20)
    {
      v36 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v28 = v36;
      v29 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v30 = v28;
      }

      else
      {
        v30 = v28 & 0xFFFFFFFE;
      }

      if (v30)
      {
        *prefix = 136315906;
        *&prefix[4] = "routingManager_logBluetoothInfo";
        v41 = 2114;
        v42 = v39;
        v43 = 2114;
        v44 = theString;
        v45 = 2114;
        v46 = cf;
        _os_log_send_and_compose_impl(v30, 0, theArray, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v29, "-FigRoutingManager- %s: EndpointName=%{public}@, batteryLevels=%{public}@, model=%{public}@", prefix, 42);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (theString)
    {
      CFRelease(theString);
      theString = 0;
    }

    if (v39)
    {
      CFRelease(v39);
    }
  }

  if (v34)
  {
    CFRelease(v34);
    v34 = 0;
  }

  v31 = a1[4];
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = a1[5];
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = a1[6];
  if (v33)
  {
    CFRelease(v33);
  }
}

void central_endpointNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }

  else if (FigCFEqual() || FigCFEqual())
  {

    central_deactivateEndpoint(a2);
  }
}

uint64_t MXEndpointDescriptorEndpointDescriptionDidChangeHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a2 _getCacheMutex];
  FigSimpleMutexLock();
  [a2 _endpointDescriptionDidChangeForEndpoint:a4 notificationName:a3 payload:a5];
  [a2 _getCacheMutex];

  return FigSimpleMutexUnlock();
}

__CFDictionary *FigEndpointDescriptorUtility_CopyDescriptorForNonVirtualAudioEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  IsBulkCopyOfRouteDescriptorEnabled = MX_FeatureFlags_IsBulkCopyOfRouteDescriptorEnabled();
  v3 = MEMORY[0x1E69626A8];
  v4 = MEMORY[0x1E695E480];
  if (IsBulkCopyOfRouteDescriptorEnabled)
  {
    IsEndpointOfType = FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]);
    v6 = *v4;
    if (IsEndpointOfType)
    {
      v48 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x1E6962060], v6, &v48);
        if (v48)
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          CFDictionarySetValue(MutableCopy, @"IsBTRoute", *MEMORY[0x1E695E4C0]);
          CFDictionarySetValue(MutableCopy, @"AudioRouteName", @"AirTunes");
          figEndpointDescriptorUtility_setAirPlayFeatures(a1, MutableCopy);
          figEndpointDescriptorUtility_setAirPlayRouteSubType(a1, MutableCopy);
          IsEndpointSelfOnlyLocalAirPlay = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a1);
          v11 = kFigEndpointDescriptor_RouteType_Default;
          if (!IsEndpointSelfOnlyLocalAirPlay)
          {
            v11 = kFigEndpointDescriptor_RouteType_Wireless;
          }

          CFDictionarySetValue(MutableCopy, @"RouteType", *v11);
          if (FigEndpointGetSupportedFeatures())
          {
            CFDictionarySetValue(MutableCopy, @"SupportsScreenMirroringControls", *MEMORY[0x1E695E4D0]);
          }

          goto LABEL_58;
        }
      }
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695E480];
  }

  MutableCopy = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  v12 = *MEMORY[0x1E69621E8];
  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, v12, v6, &cf);
  }

  v42 = v12;
  FigCFDictionarySetValue();
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v46 = 0;
  v15 = *MEMORY[0x1E69620F8];
  v16 = FigEndpointGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17)
  {
    v17(v16, v15, v6, &v46);
  }

  FigCFDictionarySetValue();
  if (v46)
  {
    CFRelease(v46);
    v46 = 0;
  }

  v45 = 0;
  v18 = *MEMORY[0x1E69621B0];
  v19 = FigEndpointGetCMBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, v18, v6, &v45);
  }

  FigCFDictionarySetValue();
  if (v45)
  {
    CFRelease(v45);
    v45 = 0;
  }

  valuePtr = 0;
  number = 0;
  v21 = FigEndpointGetCMBaseObject();
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v22)
  {
    v22(v21, *MEMORY[0x1E6961F58], v6, &number);
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  }

  if (FigEndpointGetSupportedFeatures() & 1) != 0 || (valuePtr)
  {
    v48 = 0;
    v23 = FigEndpointGetCMBaseObject();
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v24(v23, @"subType", v6, &v48);
    }

    v25 = FigCFEqual();
    v26 = MEMORY[0x1E695E4C0];
    if (!v25)
    {
      v26 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(MutableCopy, @"SupportsScreenMirroringControls", *v26);
    if (v48)
    {
      CFRelease(v48);
    }
  }

  if (number)
  {
    CFRelease(number);
    number = 0;
  }

  if (FigRoutingManagerIsEndpointOfType(a1, *v3))
  {
    figEndpointDescriptorUtility_addAirPlayDetailsToDescriptor(a1, MutableCopy);
    return MutableCopy;
  }

  v27 = FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B8]);
  if (v27)
  {
    figEndpointDescriptorUtility_addBTDetailsToDescriptor(a1, MutableCopy);
    return MutableCopy;
  }

  if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(v27, v28) && FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]))
  {
    v48 = 0;
    v29 = *MEMORY[0x1E6962100];
    v30 = FigEndpointGetCMBaseObject();
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v31)
    {
      v31(v30, v29, v6, &v48);
    }

    v32 = *MEMORY[0x1E695E4D0];
    if (FigCFEqual())
    {
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620D0], MutableCopy, @"HIDs");
    }

    SupportedFeatures = FigEndpointGetSupportedFeatures();
    v34 = *MEMORY[0x1E6962120];
    if ((SupportedFeatures & 4) != 0)
    {
      v40 = FigEndpointGetCMBaseObject();
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v36)
      {
        v38 = v40;
        v39 = v34;
        v37 = v32;
        goto LABEL_56;
      }
    }

    else
    {
      v35 = FigEndpointGetCMBaseObject();
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v36)
      {
        v37 = *MEMORY[0x1E695E4C0];
        v38 = v35;
        v39 = v34;
LABEL_56:
        v36(v38, v39, v37);
      }
    }

    FigCFDictionarySetValue();
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D8], MutableCopy, @"RouteModel");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621B8], MutableCopy, @"Manufacturer");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620B0], MutableCopy, @"FirmwareVersion");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962248], MutableCopy, @"SerialNumber");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962358], MutableCopy, @"iOSEntityIsDoingTurnByTurn");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962240], MutableCopy, @"ScreenInfo");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962208], MutableCopy, @"OEMIcons");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621F8], MutableCopy, @"OEMIconLabel");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962200], MutableCopy, @"OEMIconVisible");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621F0], MutableCopy, @"NightMode");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962230], MutableCopy, @"RightHandDrive");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621A0], MutableCopy, @"LimitedUIElements");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962198], MutableCopy, @"LimitedUI");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FF8], MutableCopy, @"CarEntityIsDoingTurnByTurn");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962010], MutableCopy, @"CarEntityOwnsScreen");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962000], MutableCopy, @"CarEntityIsDoingVoiceRecognition");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962328], MutableCopy, @"VehicleInformation");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622F0], MutableCopy, @"TransportType");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FC8], MutableCopy, @"AuthenticationType");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FC0], MutableCopy, @"AuthenticationData");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962330], MutableCopy, @"VoiceActivationType");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962008], MutableCopy, @"CarEntityOwnsMainAudio");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962070], MutableCopy, @"ExtendedFeatures");
    figEndpointDescriptorUtility_setDescriptorKey(a1, v29, MutableCopy, @"IsActivated");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FB0], MutableCopy, @"AlternateSiri");
LABEL_58:
    if (v48)
    {
      CFRelease(v48);
    }

    return MutableCopy;
  }

  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D0]) && MutableCopy)
  {
    figEndpointDescriptorUtility_setDescriptorKey(a1, v42, MutableCopy, @"RouteName");
    figEndpointDescriptorUtility_setDescriptorKey(a1, v15, MutableCopy, @"RouteUID");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962278], MutableCopy, @"RouteSubtype");
    figEndpointDescriptorUtility_setDescriptorKey(a1, v18, MutableCopy, @"MACAddress");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D8], MutableCopy, @"RouteModel");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621B8], MutableCopy, @"Manufacturer");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620B0], MutableCopy, @"FirmwareVersion");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962248], MutableCopy, @"SerialNumber");
  }

  return MutableCopy;
}

uint64_t central_TakeScreen(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v14 = 0;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  *&v10 = 0x200000002;
  DWORD2(v10) = 20;
  v9 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x1E6962310], *MEMORY[0x1E695E480], &v9);
  }

  HIDWORD(v10) = 500;
  *(&v11 + 1) = 0x64000001F4;
  if (FigCFEqual() && v9 == *MEMORY[0x1E695E4C0])
  {
    HIDWORD(v10) = 100;
    *(&v11 + 1) = 0x6400000064;
  }

  central_requestCarModeChange(a1, &v10, a2, a3);
  return 0;
}

void fsm_requestResourceModeChangeTake(int a1, int *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  CurrentBorrower = fsm_getCurrentBorrower(a3);
  if (!CurrentBorrower || CurrentBorrower == a1)
  {
    if (*a3 == a1)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a3 + 4);
    }
  }

  else
  {
    v7 = *(a3 + 24);
  }

  if (a2[1] >= v7)
  {
    *a3 = a1;
    *(a3 + 4) = a2[4];
    *(a3 + 8) = a2[5];
    *(a3 + 24) = 0;
    v9 = *(a3 + 16);
    if (v9)
    {

      CFArrayRemoveAllValues(v9);
    }
  }

  else if (dword_1EB75E258)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t CMScreenResumeStream(const void *a1)
{
  if (!a1)
  {
    return 4294954316;
  }

  OUTLINED_FUNCTION_1_17(a1);
  if (v3)
  {
    CFRetain(v3);
  }

  if (v2)
  {
    CFRetain(v2);
  }

  if (v1)
  {
    CFRetain(v1);
  }

  OUTLINED_FUNCTION_0_24();
  v7[1] = 3221225472;
  v7[2] = __CMScreenResumeStream_block_invoke;
  v7[3] = &__block_descriptor_64_e5_v8__0l;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  v7[7] = v1;
  MXDispatchAsync("CMScreenResumeStream", "CMSessionManager_Screen.m", 417, 0, 0, v5, v7);
  return 0;
}

uint64_t FigRoutingManagerFigEndpointCentralCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void __CMScreenResumeStream_block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[6];
    if (FigCFEqual() || FigCFEqual())
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (cmscreenEndpointIsStarkWiFi(v2, v3) && !sCMScreenStarkWiFiIdleSleepPreventor)
      {
        if (dword_1EB75DE40)
        {
          v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v6 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v8 = CFDateCreate(v6, Current);
        PowerLogDataForStarkWiFi = CMSMPowerLogCreatePowerLogDataForStarkWiFi(@"WiFiCarPlayScreenResume", sCMScreenStarkWiFiIdleSleepPreventor, @"com.apple.cmsession.WiFiCarPlay.IsConnected", v8);
        CMSMSleep_CreateIdleSleepPreventor(@"com.apple.cmsession.WiFiCarPlay.IsConnected", @"WiFiCarPlayScreen", PowerLogDataForStarkWiFi, &sCMScreenStarkWiFiIdleSleepPreventor);
        if (v8)
        {
          CFRelease(v8);
        }

        if (PowerLogDataForStarkWiFi)
        {
          CFRelease(PowerLogDataForStarkWiFi);
        }
      }

      if (FigEndpointStreamResume())
      {
        if (dword_1EB75DE40)
        {
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        cmscreenSetCurrentState(@"ScreenState_Activated");
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
    }
  }

  v11 = a1[4];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[5];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[6];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[7];
  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs(uint64_t a1)
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
  v6[2] = __FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v2 = 0;
  }

  v6[4] = v2;
  v6[5] = a1;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs", "FigRoutingManagerContextUtilities.m", 4499, 0, 0, v4, v6);
  return 0;
}

uint64_t FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v3 = byte_1EB75CFA8;
    if (byte_1EB75CFA8)
    {
      v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v4 = 0;
    }

    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(a1, a2))
    {
      v5 = &qword_1EB75CF98;
      if (!v3)
      {
        v5 = 504;
      }

      v6 = *v5;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay_block_invoke;
      v8[3] = &unk_1E7AE7A20;
      v8[6] = v4;
      v8[7] = v2;
      v8[4] = v13;
      v8[5] = &v9;
      MXDispatchSync("FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay", "FigRoutingManagerContextUtilities.m", 5042, 0, 0, v6, v8);
    }

    v2 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(v13, 8);
  }

  return v2;
}

void sub_1B181E3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t FigPredictedRouting_IsEndpointThePredictedRoute(uint64_t a1, uint64_t a2)
{
  if (!FigPredictedRouting_IsSupported(a2))
  {
    return 0;
  }

  v3 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(a1, 0);
  FigSimpleMutexLock();
  if (gPRS_1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    FigSimpleMutexUnlock();
    v5 = 1;
    if (!v3)
    {
      return v5;
    }
  }

  else
  {
    if (FigCFDictionaryGetCount() && FigCFDictionaryGetCount())
    {
      Value = CFDictionaryGetValue(v3, @"RouteUID");
      if (Value)
      {
        v7 = [objc_msgSend(Value componentsSeparatedByString:{@"-", "firstObject"}];
      }

      else
      {
        v7 = 0;
      }

      v8 = CFDictionaryGetValue(gPRS_1, @"RouteUID");
      if (v8)
      {
        v8 = [objc_msgSend(v8 componentsSeparatedByString:{@"-", "firstObject"}];
      }

      v5 = CFEqual(v8, v7);
    }

    else
    {
      v5 = 1;
    }

    FigSimpleMutexUnlock();
  }

  CFRelease(v3);
  return v5;
}

uint64_t FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID", "FigRoutingManagerContextUtilities.m", 4599, 0, 0, v4, v6);
  }

  return 0;
}

void FigRoutingManagerHandleDescriptionChangedForRemoteDisplay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  if (a1 && a2)
  {
    FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID(&v17);
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v17, 0, &v16);
    v5 = *MEMORY[0x1E69620F8];
    v6 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, v5, v6, &v19);
    }

    if (v16)
    {
      v9 = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(v9, v5, v6, &v18);
      }
    }

    if (FigCFEqual() || MXCFStringHasCaseInsensitivePrefix(v18, v19))
    {
      cf = 0;
      FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors(v17, &cf);
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v12 = CFRetain(ValueAtIndex);
      }

      else
      {
        v12 = 0;
      }

      v13 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v16, 0);
      v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v13, 0}];
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(v17, v14);

      FigRoutingManagerContextUtilities_PostNotificationAndRouteDescriptorChangeToClientsOfContextWithUUIDAndItsFollowers(v17, a2, a3, v13);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

  if (v17)
  {
    CFRelease(v17);
    v17 = 0;
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

BOOL MXCFStringHasCaseInsensitivePrefix(const __CFString *a1, CFStringRef theString)
{
  result = 0;
  if (a1 && theString)
  {
    Length = CFStringGetLength(theString);
    if (Length <= CFStringGetLength(a1))
    {
      v6.length = CFStringGetLength(theString);
      v6.location = 0;
      return CFStringCompareWithOptions(a1, theString, v6, 1uLL) == kCFCompareEqualTo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_isSystemRemoteDisplayContextEnabled;
}

void ___routingContextUtilities_postNotificationToContextAndItsFollowers_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (FigCFEqual())
  {
    v2 = 1;
  }

  else
  {
    v2 = dword_1EB75DF20 == 0;
  }

  v3 = &qword_1EB75D000;
  if (!v2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 64);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
    CFDictionaryGetValue(ValueAtIndex, @"routingContextUUID");
    CFDictionaryGetValue(ValueAtIndex, @"routingContext");
    if (dword_1EB75DF20)
    {
      v8 = v3;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      v3 = v8;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  CFRelease(*(a1 + 56));
  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    CFRelease(v13);
  }
}

BOOL FigRoutingManagerIsEndpointDissociated(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, @"IsDissociated", *MEMORY[0x1E695E480], &cf);
  }

  v3 = FigCFEqual() != 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t _fsmcontroller_GetCurrentMode(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    return 4294950566;
  }

  if (!a2)
  {
    return 4294949645;
  }

  if (_FigIsNotCurrentDispatchQueue())
  {
    MXSimulateCrash("This method should only be called from controller queue! Please file a radar against 'MediaExperience Session | All'");
  }

  fsm_getCurrentMode(a1, a2, 0);
  return 0;
}

uint64_t _FigEndpointCentralEntityHoldsResource(uint64_t result, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v53 = 0u;
  v54 = 0u;
  if (!result)
  {
    return result;
  }

  result = 0;
  if (!a2 || !a3)
  {
    return result;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v15 = OUTLINED_FUNCTION_3_3(0, v7, v8, v9, v10, v11, v12, v13, v35, v38, v41, v44, SBYTE2(v44), SBYTE3(v44), SHIDWORD(v44));
    if (OUTLINED_FUNCTION_17(v15, v16, v17, v18, v19, v20, v21, v22, v36, v39, v42, v45, v47, v49, v51))
    {
      v23 = v3;
    }

    else
    {
      v23 = v3 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v55 = 136315138;
      OUTLINED_FUNCTION_4_7();
      _os_log_send_and_compose_impl(v24, 0, v56, 128, &dword_1B17A2000, a2, a3, "-endpoint_central- %s: Endpoint storage is NULL");
    }

    goto LABEL_22;
  }

  v14 = DerivedStorage;
  if (*DerivedStorage)
  {
    v25 = OUTLINED_FUNCTION_3_3(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v35, v38, v41, v44, SBYTE2(v44), SBYTE3(v44), SHIDWORD(v44));
    if (OUTLINED_FUNCTION_17(v25, v26, v27, v28, v29, v30, v31, v32, v37, v40, v43, v46, v48, v50, v52))
    {
      v33 = v14;
    }

    else
    {
      v33 = v14 & 0xFFFFFFFE;
    }

    if (v33)
    {
      v55 = 136315138;
      OUTLINED_FUNCTION_4_7();
      _os_log_send_and_compose_impl(v34, 0, v56, 128, &dword_1B17A2000, a2, a3, "-endpoint_central- %s: Endpoint is invalidated");
    }

LABEL_22:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  if (_FigIsNotCurrentDispatchQueue())
  {
    MXSimulateCrash("This method should only be called from controller queue! Please file a radar against 'MediaExperience Session | All'");
  }

  _fsmcontroller_GetCurrentMode(v14[3], &v53);
  if (FigCFEqual())
  {
    return FigCFEqual();
  }

  result = FigCFEqual();
  if (result)
  {
    return FigCFEqual();
  }

  return result;
}

uint64_t remoteXPCFigRoutingContext_NotificationFilter(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"didReceiveData"))
  {
    if (a4)
    {
      Value = CFDictionaryGetValue(a4, @"commChannelUUID");
      v8 = CFDictionaryGetValue(a4, @"deviceID");
      if (Value)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v13 = *(DerivedStorage + 40);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __remoteXPCFigRoutingContext_NotificationFilter_block_invoke;
        v20[3] = &__block_descriptor_56_e5_v8__0l;
        v20[4] = DerivedStorage;
        v20[5] = Value;
        v20[6] = v8;
        v14 = v20;
        v15 = 444;
LABEL_19:
        MXDispatchSync("remoteXPCFigRoutingContext_NotificationFilter", "FigRoutingContextRemoteXPC.m", v15, 0, 0, v13, v14);
        return 0;
      }

      if (Value)
      {
        v13 = *(DerivedStorage + 40);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __remoteXPCFigRoutingContext_NotificationFilter_block_invoke_2;
        v19[3] = &__block_descriptor_48_e5_v8__0l;
        v19[4] = DerivedStorage;
        v19[5] = Value;
        v14 = v19;
        v15 = 455;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v10 = CFEqual(a2, @"commChannelDidClose");
    if (a4 && v10)
    {
      v11 = CFDictionaryGetValue(a4, @"commChannelUUID");
      if (CFDictionaryGetValue(a4, @"deviceID"))
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = *(DerivedStorage + 40);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __remoteXPCFigRoutingContext_NotificationFilter_block_invoke_3;
        v18[3] = &__block_descriptor_48_e5_v8__0l;
        v18[4] = DerivedStorage;
        v18[5] = v11;
        v14 = v18;
        v15 = 471;
        goto LABEL_19;
      }

      if (v11)
      {
        v13 = *(DerivedStorage + 40);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __remoteXPCFigRoutingContext_NotificationFilter_block_invoke_4;
        v17[3] = &__block_descriptor_48_e5_v8__0l;
        v17[4] = DerivedStorage;
        v17[5] = v11;
        v14 = v17;
        v15 = 478;
        goto LABEL_19;
      }
    }
  }

  return 0;
}

double routingContextResilientRemote_forwardNotificationFromRemoteContext(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef a4, uint64_t a5)
{
  v6 = FigRoutingContextResilientRemoteCopyRemoteContext(a2);
  v8 = v6;
  if (v6 == a4)
  {
    CMNotificationCenterPostNotification();
    if (!v8)
    {
      return result;
    }
  }

  else if (!v6)
  {
    return result;
  }

  CFRelease(v8);
  return result;
}

uint64_t FigRoutingContextServerNotificationFilter(uint64_t a1, int a2, int a3, CFDictionaryRef theDict, __CFDictionary **a5)
{
  result = 0;
  if (a1 && theDict)
  {
    if (*(a1 + 3))
    {
      return 0;
    }

    Value = CFDictionaryGetValue(theDict, @"routeConfigUpdateReasonEndedFailed_DeviceID");
    if (!(Value | CFDictionaryGetValue(theDict, @"routeConfigUpdateReasonEndedFailed_CurrentRoutes")))
    {
      return 0;
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
      CFDictionaryRemoveValue(MutableCopy, @"routeConfigUpdateReasonEndedFailed_DeviceID");
      CFDictionaryRemoveValue(MutableCopy, @"routeConfigUpdateReasonEndedFailed_CurrentRoutes");
      *a5 = MutableCopy;
      return 4;
    }
  }

  return result;
}

uint64_t central_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __central_SetProperty_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  MXDispatchSync("central_SetProperty", "FigEndpoint_Central.m", 1329, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1B181F6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _FigEndpointCentralGetEntityDoingActivity(uint64_t result, const void *a2)
{
  v4 = 0u;
  v5 = 0u;
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    result = 0;
    if (a2)
    {
      if (DerivedStorage)
      {
        if (_FigIsNotCurrentDispatchQueue())
        {
          MXSimulateCrash("This method should only be called from controller queue! Please file a radar against 'MediaExperience Session | All'");
        }

        _fsmcontroller_GetCurrentMode(*(DerivedStorage + 24), &v4);
        if (CFEqual(a2, @"PhoneCall"))
        {
          return DWORD2(v5);
        }

        else if (CFEqual(a2, @"Speech"))
        {
          return v5;
        }

        else
        {
          result = CFEqual(a2, @"TurnByTurnNavigation");
          if (result)
          {
            return HIDWORD(v5);
          }
        }
      }
    }
  }

  return result;
}

void FigRoutingManagerContextUtilities_PostNotificationAndRouteDescriptorChangeToClientsOfContextWithUUIDAndItsFollowers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a1, @"routeDescriptionEvent", Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2020000000;
      v7[3] = 0;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_block_invoke;
      v6[3] = &unk_1E7AE79A8;
      v6[4] = v7;
      v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
      v6[6] = a1;
      v6[7] = a2;
      v6[8] = a3;
      MXDispatchSync("FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers", "FigRoutingManagerContextUtilities.m", 426, 0, 0, qword_1EB75CF98, v6);
      _Block_object_dispose(v7, 8);
    }
  }
}

uint64_t FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294949876;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
  }

  v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
  v5 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v5 = 504;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  if (!byte_1EB75CFA8)
  {
    v4 = 0;
  }

  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext", "FigRoutingManagerContextUtilities.m", 5283, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void _routingContextUtilities_postNotificationToContextAndItsFollowers(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v18 = byte_1EB75CFA8;
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v21 = FigCFWeakReferenceHolderCopyReferencedObject();
    v6 = *(a1 + 88);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), i);
          if (ValueAtIndex)
          {
            if (_routingContextUtilities_getContextFromWeakRef(ValueAtIndex))
            {
              v11 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v11)
              {
                v12 = v11;
                v13 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                CFArrayAppendValue(Mutable, v13);
                if (v13)
                {
                  CFRelease(v13);
                }

                CFRelease(v12);
              }
            }
          }
        }
      }
    }

    if (v21)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = CFRetain(v14);
      }

      else
      {
        v15 = 0;
      }

      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      if (Mutable)
      {
        CFRetain(Mutable);
      }

      v16 = &qword_1EB75CFA0;
      if (!v18)
      {
        v16 = 512;
      }

      v17 = *v16;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = ___routingContextUtilities_postNotificationToContextAndItsFollowers_block_invoke;
      v22[3] = &__block_descriptor_72_e5_v8__0l;
      v22[4] = a2;
      v22[5] = v15;
      v22[6] = a3;
      v22[7] = v21;
      v22[8] = Mutable;
      MXDispatchAsync("_routingContextUtilities_postNotificationToContextAndItsFollowers", "FigRoutingManagerContextUtilities.m", 240, 0, 0, v17, v22);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

BOOL CMSMSleep_ReleaseIdleSleepPreventor(IOPMAssertionID a1, const void *a2, const void *a3)
{
  v5 = IOPMAssertionRelease(a1);
  v6 = v5;
  if (a2 && !v5)
  {
    CMSMPowerLogPostPowerLogData(a2, a3);
  }

  return v6 == 0;
}

void CMSMSleep_ReleasePrewarmIdleSleepPreventor(int a1, int a2)
{
  if (!FigAtomicCompareAndSwap32())
  {
    return;
  }

  if ((a1 - 1200) >= 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"touchtone";
  }

  if ((a1 - 1103) >= 3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"keypress";
  }

  PowerLogDataForSystemSound = CMSMPowerLogCreatePowerLogDataForSystemSound(v5, a2, @"SystemSoundPlayback_Stop", sCMSessionMgrPrewarmIdleSleepPreventor, sCMSessionMgrPrewarmIdleSleepPreventorName, sCMSessionMgrPrewarmIdleSleepPreventorCreationTime);
  if (!CMSMSleep_ReleaseIdleSleepPreventor(sCMSessionMgrPrewarmIdleSleepPreventor, @"CoreMedia_SystemSoundPlayback", PowerLogDataForSystemSound))
  {
    sCMSessionMgrPrewarmIdleSleepPreventorAllocated = 1;
    if (!PowerLogDataForSystemSound)
    {
      return;
    }

    goto LABEL_14;
  }

  sCMSessionMgrPrewarmIdleSleepPreventor = 0;
  if (sCMSessionMgrPrewarmIdleSleepPreventorName)
  {
    CFRelease(sCMSessionMgrPrewarmIdleSleepPreventorName);
    sCMSessionMgrPrewarmIdleSleepPreventorName = 0;
  }

  if (sCMSessionMgrPrewarmIdleSleepPreventorCreationTime)
  {
    CFRelease(sCMSessionMgrPrewarmIdleSleepPreventorCreationTime);
    sCMSessionMgrPrewarmIdleSleepPreventorCreationTime = 0;
  }

  if (PowerLogDataForSystemSound)
  {
LABEL_14:

    CFRelease(PowerLogDataForSystemSound);
  }
}

void vaemVADSerializationListener(uint64_t a1, uint64_t a2)
{
  v3 = MXGetSerialQueue(a1, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __vaemVADSerializationListener_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a1;
  MXDispatchAsync("vaemVADSerializationListener", "CMSessionManager_VAEndpointManager.m", 8664, 0, 0, v3, v4);
}

void vaemVADRouteChangeListener(unsigned int a1, void *a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  [+[MXSessionManager decoupledInputVADID:a3]];
  [+[MXSessionManager sharedInstance](MXSessionManager musicVADID];
  [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
  MXVW_CreateVectorCMSRouteInfo();
}

BOOL vaeIsVoiceProcessingSupportedOnVADPort(AudioObjectID a1)
{
  inAddress.mElement = 0;
  *&inAddress.mSelector = *"rpvpbolg";
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

__CFArray *vaeCopyChannelNamesForPortAndNumberOfChannels(uint64_t a1, const void *a2, CFIndex capacity)
{
  v3 = capacity;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
  v8 = Mutable;
  if (!v3)
  {
    return v8;
  }

  if (v3 != 2)
  {
    if (v3 == 1)
    {
      if (a2)
      {
        CFArrayAppendValue(Mutable, a2);
      }

      return v8;
    }

LABEL_20:
    v16 = CFLocaleCopyCurrent();
    v24 = CFNumberFormatterCreate(0, v16, kCFNumberFormatterDecimalStyle);
    if (v24)
    {
      v25 = 1;
      do
      {
        valuePtr = v25;
        v26 = CFNumberFormatterCreateStringWithValue(0, v24, kCFNumberSInt32Type, &valuePtr);
        v27 = CFStringCreateWithFormat(v6, 0, @"%@ %@", a2, v26);
        if (v27)
        {
          v28 = v27;
          CFArrayAppendValue(v8, v27);
          CFRelease(v28);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        ++v25;
        --v3;
      }

      while (v3);
      if (!v16)
      {
        goto LABEL_29;
      }
    }

    else
    {
      vaeCopyChannelNamesForPortAndNumberOfChannels_cold_1(0, v17, v18, v19, v20, v21, v22, v23, v30, v31, SHIDWORD(v31), v32);
      if (!v16)
      {
        goto LABEL_29;
      }
    }

    CFRelease(v16);
LABEL_29:
    if (!v24)
    {
      return v8;
    }

    v15 = v24;
LABEL_31:
    CFRelease(v15);
    return v8;
  }

  if (vaeGetPortTypeFromPortID(a1) != 1885892727 && vaeGetPortTypeFromPortID(a1) != 1885892674)
  {
    goto LABEL_20;
  }

  v9 = vaeCopyLocalizedString(@"mclf");
  v10 = vaeCopyLocalizedString(@"mcrt");
  v11 = @"Left";
  if (v9)
  {
    v11 = v9;
  }

  v12 = CFStringCreateWithFormat(v6, 0, @"%@ %@", a2, v11);
  CFArrayAppendValue(v8, v12);
  v13 = @"Right";
  if (v10)
  {
    v13 = v10;
  }

  v14 = CFStringCreateWithFormat(v6, 0, @"%@ %@", a2, v13);
  CFArrayAppendValue(v8, v14);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    v15 = v10;
    goto LABEL_31;
  }

  return v8;
}

void vaemCopyNewRoutesInfoFromRouteChangeDescription(const __CFDictionary *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, const __CFDictionary **a8, uint64_t a9)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v27 = 0;
    theArray = 0;
    vaemGetPortsInfoFromRouteChangeDescription(a1, &theArray, &v27, a4, a5, a6, a7, a8, a9);
    if (theArray)
    {
      CFArrayGetCount(theArray);
    }

    if (v27)
    {
      CFArrayGetCount(v27);
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *v29 = 0;
    *type = 0;
    v26 = 0;
    v24 = 0;
    CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(v27, theArray, v29, &v26, &v24, type);
    if (*v29)
    {
      Count = CFArrayGetCount(*v29);
      *a3 = Count;
      if (Count)
      {
        v13 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*v29, v13);
          if (FigCFEqual())
          {
            v15 = 0;
          }

          else
          {
            v15 = ValueAtIndex;
          }

          v16 = CFArrayGetValueAtIndex(v26, v13);
          if (FigCFEqual())
          {
            v17 = 0;
          }

          else
          {
            v17 = v16;
          }

          if (v24)
          {
            v18 = CFArrayGetValueAtIndex(v24, v13);
            if (FigCFEqual())
            {
              v19 = 0;
            }

            else
            {
              v19 = v18;
            }
          }

          else
          {
            v19 = 0;
          }

          v20 = CFArrayGetValueAtIndex(*type, v13);
          if (FigCFEqual())
          {
            v21 = 0;
          }

          else
          {
            v21 = v20;
          }

          FigCFArrayGetInt64AtIndex();
          ConnectionTypeForPort = vaeGetConnectionTypeForPort(0);
          v23 = vaeCopyVADEndpointTypeForPort(0);
          *&v30 = v15;
          *(&v30 + 1) = v21;
          v31 = v17;
          v32 = v23;
          v33 = v19;
          v34 = ConnectionTypeForPort;
          v35 = 0;
          MXVW_VectorVARouteInfoPushBack(a2, &v30);
          if (v23)
          {
            CFRelease(v23);
          }

          ++v13;
        }

        while (v13 < *a3);
      }

      if (*v29)
      {
        CFRelease(*v29);
        *v29 = 0;
      }
    }

    else
    {
      *a3 = 0;
    }

    if (v26)
    {
      CFRelease(v26);
      v26 = 0;
    }

    if (*type)
    {
      CFRelease(*type);
      *type = 0;
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }
}

id CMSMVAUtility_CopyFigIODeviceNameFromVADPortTypes(int a1, unsigned int a2)
{
  if (a1 == 1886216809 && a2 == 1886545251)
  {
    return CFRetain(@"ReceiverAndMicrophone");
  }

  if (a1 == 1886222185 && a2 == 1885892727)
  {
    return CFRetain(@"HeadsetInOut");
  }

  if (a1 == 1886216809 && a2 == 1885892727)
  {
    return CFRetain(@"HeadphonesAndMicrophone");
  }

  if (a1 == 1886216809 && a2 == 1886613611)
  {
    return CFRetain(@"SpeakerAndMicrophone");
  }

  if (a1 == 1886216820 && a2 == 1885892706)
  {
    return CFRetain(@"HeadsetBT");
  }

  if (a1 == 1886680169 && a2 == 1886680175)
  {
    return CFRetain(@"TTY");
  }

  if (a1 == 1886153070 && a2 == 1886154613)
  {
    return CFRetain(@"LineInOut");
  }

  return CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(a2);
}

const __CFDictionary *vaemGetPortsInfoFromRouteChangeDescription(const __CFDictionary *result, const void **a2, const void **a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, const __CFDictionary **a8, uint64_t a9)
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v16 = result;
    Value = CFDictionaryGetValue(result, @"active devices");
    if (Value)
    {
      vaemGetPortListForDevice(Value, a9, a2, a3);
      if (a3)
      {
        if (*a3)
        {
          Count = CFArrayGetCount(*a3);
          if (Count >= 1)
          {
            v19 = Count;
            v20 = 0;
            while (([qword_1EB75D0E0 containsObject:{CFArrayGetValueAtIndex(*a3, v20)}] & 1) != 0)
            {
              if (v19 == ++v20)
              {
                goto LABEL_9;
              }
            }

            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            vaemConnectedPortsPropertyListenerGuts();
          }
        }
      }

LABEL_9:
      v24 = 0;
      FigCFDictionaryGetInt64IfPresent();
      if (a6)
      {
        *a6 = v24;
      }

      *v23 = 0;
      FigCFDictionaryGetInt64IfPresent();
      if (a4)
      {
        *a4 = *v23;
      }

      FigCFDictionaryGetInt64IfPresent();
      if (a5)
      {
        *a5 = 0;
      }

      FigCFDictionaryGetInt64IfPresent();
      if (a7)
      {
        *a7 = 0;
      }

      result = CFDictionaryGetValue(v16, @"siri input source UUID");
      if (a8)
      {
        if (result)
        {
          *a8 = result;
        }
      }
    }

    else
    {
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void MXVW_VectorVARouteInfoPushBack(uint64_t a1, __int128 *a2)
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

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4);
    v13 = v12 + 1;
    if (v12 + 1 > 0x555555555555555)
    {
      std::vector<CMSRouteInfo>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<VARouteInfo>>(a1, v15);
    }

    v16 = 48 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v11 = 48 * v12 + 48;
    v19 = *(a1 + 8) - *a1;
    v20 = v16 - v19;
    memcpy((v16 - v19), *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v9 = *a2;
    v10 = a2[2];
    v7[1] = a2[1];
    v7[2] = v10;
    *v7 = v9;
    v11 = (v7 + 3);
  }

  *(a1 + 8) = v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<VARouteInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

CFMutableDictionaryRef vaemCopyDetailedRouteDescription(uint64_t a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFNumberCreate(v2, kCFNumberSInt32Type, &dword_1EB75E0D0);
  FigCFDictionarySetValue();
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = vaemCopyCurrentSiriInputDeviceUUID();
  FigCFDictionarySetValue();
  if (v5)
  {
    CFRelease(v5);
  }

  v24 = 0;
  v6 = vaemCopyAudioStreamIDsForScope(v1, 0, &v24);
  v7 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v23 = v7;
  if (v24)
  {
    for (i = 0; i < v24; ++i)
    {
      v9 = v6[i];
      v10 = vaemCopyAssociatedPortsForStreamID(v9);
      if (v10)
      {
        v11 = v10;
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v11))
        {
          vaemCopyPortDescriptions(v1, v9, v11, 0, &v23);
        }

        CFRelease(v11);
      }
    }
  }

  FigCFDictionarySetValue();
  free(v6);
  if (v7)
  {
    CFRelease(v7);
  }

  v22 = 0;
  v13 = vaemCopyAudioStreamIDsForScope(v1, 1, &v22);
  v14 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v21 = v14;
  if (v22)
  {
    for (j = 0; j < v22; ++j)
    {
      v16 = v13[j];
      v17 = vaemCopyAssociatedPortsForStreamID(v16);
      if (v17)
      {
        v18 = v17;
        v19 = CFArrayGetTypeID();
        if (v19 == CFGetTypeID(v18))
        {
          vaemCopyPortDescriptions(v1, v16, v18, 1, &v21);
        }

        CFRelease(v18);
      }
    }
  }

  FigCFDictionarySetValue();
  free(v13);
  if (v14)
  {
    CFRelease(v14);
  }

  return Mutable;
}

CFTypeRef vaemCopyCurrentSiriInputDeviceUUID()
{
  if ((dword_1EB75E0D0 == 1936024681 || dword_1EB75E0D0 == 1936679529) && qword_1EB75E0D8)
  {
    return CFRetain(qword_1EB75E0D8);
  }

  else
  {
    return 0;
  }
}

void *vaemCopyAudioStreamIDsForScope(AudioObjectID a1, int a2, unsigned int *a3)
{
  if (a2 == 1)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1869968496;
  }

  v9 = v5;
  v10 = 0;
  size = 0x73746D2300000004;
  v6 = 0;
  if (!AudioObjectGetPropertyDataSize(a1, (&size + 4), 0, 0, &size))
  {
    v6 = malloc_type_malloc(size, 0xA83E168BuLL);
    if (!AudioObjectGetPropertyData(a1, (&size + 4), 0, 0, &size, v6) && v6 && size)
    {
      if (a3)
      {
        *a3 = size >> 2;
      }
    }

    else
    {
      free(v6);
      return 0;
    }
  }

  return v6;
}

uint64_t vaemCopyAssociatedPortsForStreamID(AudioObjectID a1)
{
  outData = 0;
  inQualifierData = 1935895670;
  *&inAddress.mSelector = 0x676C6F6273617073;
  inAddress.mElement = 0;
  v2 = 8;
  if (AudioObjectGetPropertyData(a1, &inAddress, 4u, &inQualifierData, &v2, &outData))
  {
    return 0;
  }

  else
  {
    return outData;
  }
}

void vaemCopyPortDescriptions(AudioObjectID a1, AudioObjectID a2, CFArrayRef theArray, int a4, CFMutableArrayRef *a5)
{
  if (*a5)
  {
    v5 = theArray == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v8 = 0;
      v47 = *MEMORY[0x1E695E480];
      if (a4 == 1)
      {
        v9 = 1768845428;
      }

      else
      {
        v9 = 1869968496;
      }

      v40 = v9;
      v41 = a1;
      v39 = a4;
      do
      {
        FigCFArrayGetInt64AtIndex();
        Mutable = CFDictionaryCreateMutable(v47, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (a4 == 1)
        {
          v11 = vaeCopyFigInputDeviceNameFromVADPort(0);
        }

        else
        {
          v11 = vaeCopyFigOutputDeviceNameFromVADPort(0);
        }

        v12 = v11;
        FigCFDictionarySetValue();
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = vaeCopySpecificNameForPort(0);
        if (FigCFEqual())
        {
          CFRetain(@"AirPlay");
          if (v13)
          {
            CFRelease(v13);
          }

          v14 = @"AirPlay";
        }

        else
        {
          v14 = v13;
        }

        v46 = v14;
        FigCFDictionarySetValue();
        v15 = vaeCopyDeviceIdentifierFromVADPort(0);
        FigCFDictionarySetValue();
        if (v15)
        {
          CFRelease(v15);
        }

        vaeIsHeadphonesPort(0);
        FigCFDictionarySetValue();
        vaeIsVoiceProcessingSupportedOnVADPort(0);
        FigCFDictionarySetValue();
        vaeIsLiveListenSupportedOnVADPort(0);
        FigCFDictionarySetValue();
        if (vaeGetPortTypeFromPortID(0) == 1885892674)
        {
          vaeDoesPortSupportDoAP(0);
          FigCFDictionarySetValue();
        }

        vaeDoesPortSupportSoftwareVolume(0);
        FigCFDictionarySetValue();
        vaeDoesPortSupportSoftwareVolume(0);
        v16 = FigCFDictionarySetValue();
        IsPersonalTranslatorEnabled = MX_FeatureFlags_IsPersonalTranslatorEnabled(v16, v17);
        if (IsPersonalTranslatorEnabled)
        {
          vaeDoesPortSupportFarFieldCapture(0, v19);
          FigCFDictionarySetValue();
          vaeIsFarFieldCaptureEnabled(0, v20);
          IsPersonalTranslatorEnabled = FigCFDictionarySetValue();
        }

        if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(IsPersonalTranslatorEnabled, v19))
        {
          vaeDoesPortSupportBluetoothHighQualityContentCapture(0);
          FigCFDictionarySetValue();
          vaeIsBluetoothHighQualityContentCaptureEnabled(0);
          FigCFDictionarySetValue();
        }

        v21 = vaeCopyVADEndpointTypeForPort(0);
        FigCFDictionarySetValue();
        if (v21)
        {
          CFRelease(v21);
        }

        SInt64 = FigCFNumberCreateSInt64();
        FigCFDictionarySetValue();
        if (SInt64)
        {
          CFRelease(SInt64);
        }

        v23 = vaeCopySubPortDescriptionsForPortAndRouteConfiguration(0, 0, 0, 0, 0);
        FigCFDictionarySetValue();
        if (v23)
        {
          CFRelease(v23);
        }

        v24 = vaeCopyHiddenSubPortDescriptionsForPort(0);
        FigCFDictionarySetValue();
        if (v24)
        {
          CFRelease(v24);
        }

        v25 = vaeCopySelectedDataSourceForPortAndRouteConfiguration(0, 0, 0, 0);
        FigCFDictionarySetValue();
        if (v25)
        {
          CFRelease(v25);
        }

        v52 = 0;
        outData = 0u;
        v51 = 0u;
        *&inAddress.mSelector = 0x676C6F6273666D74;
        inAddress.mElement = 0;
        ioDataSize = 40;
        if (AudioObjectGetPropertyData(a2, &inAddress, 0, 0, &ioDataSize, &outData))
        {
          v26 = 0;
        }

        else
        {
          v26 = HIDWORD(v51);
        }

        v27 = FigCFNumberCreateSInt64();
        FigCFDictionarySetValue();
        if (v27)
        {
          CFRelease(v27);
        }

        if (!v26)
        {
          goto LABEL_61;
        }

        v45 = v8;
        v28 = CFArrayCreateMutable(v47, 0, MEMORY[0x1E695E9C0]);
        inAddress.mSelector = 0;
        LODWORD(outData) = 1936876644;
        *(&outData + 4) = v40;
        if (AudioObjectGetPropertyDataSize(a1, &outData, 0, 0, &inAddress.mSelector))
        {
          v29 = 0;
        }

        else
        {
          v29 = malloc_type_malloc(inAddress.mSelector, 0xE6E780F3uLL);
          if (AudioObjectGetPropertyData(a1, &outData, 0, 0, &inAddress.mSelector, v29))
          {
            v30 = v47;
            if (v29)
            {
              free(v29);
              v29 = 0;
            }

            goto LABEL_47;
          }
        }

        v30 = v47;
LABEL_47:
        v31 = vaeCopyChannelNamesForPortAndNumberOfChannels(0, v46, v26);
        if (v31)
        {
          v32 = v31;
          v33 = CFArrayGetCount(v31);
          if (v33 >= 1)
          {
            v34 = v33;
            v35 = 0;
            for (i = 0; i != v34; ++i)
            {
              v37 = CFDictionaryCreateMutable(v30, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFArrayGetValueAtIndex(v32, i);
              FigCFDictionarySetValue();
              if (v29 && v35 < v29[2])
              {
                v38 = FigCFNumberCreateSInt64();
                FigCFDictionarySetValue();
                if (v38)
                {
                  CFRelease(v38);
                }

                ++v35;
                v30 = v47;
              }

              if (v37)
              {
                CFArrayAppendValue(v28, v37);
                CFRelease(v37);
              }
            }
          }

          CFRelease(v32);
          a4 = v39;
        }

        free(v29);
        FigCFDictionarySetValue();
        a1 = v41;
        v8 = v45;
        if (v28)
        {
          CFRelease(v28);
        }

LABEL_61:
        if (v46)
        {
          CFRelease(v46);
        }

        if (Mutable)
        {
          CFArrayAppendValue(*a5, Mutable);
          CFRelease(Mutable);
        }

        ++v8;
      }

      while (v8 != Count);
    }
  }
}

void vaemVADAvailableSampleRatesListenerGuts_f(uint64_t a1, uint64_t a2)
{
  cmsmReassertPreferredSampleRate(a1, a2);
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager refreshDeviceSampleRateCache];
  v4 = MXGetNotificationSenderQueue(v2, v3);

  MXDispatchAsyncFunction("vaemVADAvailableSampleRatesListenerGuts_f", "CMSessionManager_VAEndpointManager.m", 5639, 0, 0, v4, 0, CMSMNotificationUtility_PostAvailableSampleRatesDidChange_f);
}

uint64_t CMSUtility_IsPlayingToSystemSoundRemoteVAD(void *a1)
{
  v2 = [a1 audioDestinationPriority];
  if (a1 && v2)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v2];
  }

  return FigCFEqual();
}

uint64_t CMSUtility_ShouldSessionSetInputSampleRate(void *a1)
{
  if (CMSMUtility_IsCategoryInputOnly([a1 audioCategory]))
  {
    return 1;
  }

  result = [a1 preferredDecoupledInputOutput];
  if (result)
  {
    return vaemDecoupledInputVADExists();
  }

  return result;
}

void cmsmReassertPreferredSampleRate(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAudioFormatArbitrationEnabled(a1, a2))
  {

    cmsmUpdateDeviceAudioFormatConfigIfNeeded(1);
  }

  else
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      ShouldSessionSetInputSampleRate = 0;
      v7 = 0;
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v2);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          if (([v10 currentlyControllingFlags] & 2) != 0)
          {

            v5 = v10;
            ShouldSessionSetInputSampleRate = CMSUtility_ShouldSessionSetInputSampleRate(v10);
            CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(v10);
            IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([v10 audioCategory]);
            if (vaemIsNotCurrentDeviceFormat(CurrentOutputVADID, IsCategoryInputOnly, [v10 preferredHardwareFormat]))
            {
              v14 = CMSUtility_GetCurrentOutputVADID(v10);
              v15 = [v10 preferredHardwareFormat];
              if (v15)
              {
                v13 = CFRetain(v15);
              }

              else
              {
                v13 = 0;
              }

              vaemSetDeviceFormat(v14, v13, 0);
LABEL_23:
              if (ShouldSessionSetInputSampleRate)
              {
                [v5 preferredInputSampleRate];
              }

              else
              {
                [v5 preferredOutputSampleRate];
              }

              v17 = v16;
              v18 = [v5 preferredIOBufferFrames];
              [v5 preferredIOBufferDuration];
              cmsSetDeviceSampleRateAndBufferSize(v5, v18, ShouldSessionSetInputSampleRate != 0, v17, v19);

              if (v13)
              {
                CFRelease(v13);
              }

              return;
            }

            v7 = 1;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }

      if (v7)
      {
        v13 = 0;
        goto LABEL_23;
      }
    }

    else
    {

      v5 = 0;
    }
  }
}

uint64_t CMSMNotificationUtility_PostAvailableVirtualAudioDevicesDidChange(void *a1)
{
  result = [a1 isEqualToArray:CMSMNotificationUtility_PostAvailableVirtualAudioDevicesDidChange_mostRecentAvailableVADUIDs];
  if ((result & 1) == 0)
  {
    +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"AvailableVirtualAudioDevicesDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a1, @"AvailableVADUIDs", 0}], 0);

    result = a1;
    CMSMNotificationUtility_PostAvailableVirtualAudioDevicesDidChange_mostRecentAvailableVADUIDs = result;
  }

  return result;
}

void *CMSMNotificationUtility_PostSpeechDetectionDevicePresentDidChange(void *result)
{
  if (CMSMNotificationUtility_PostSpeechDetectionDevicePresentDidChange_cachedSpeechDetectionDevicePresent != result)
  {
    v1 = result;
    result = +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"SpeechDetectionDevicePresentDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", result != 0), @"Present", 0}], 0);
    CMSMNotificationUtility_PostSpeechDetectionDevicePresentDidChange_cachedSpeechDetectionDevicePresent = v1;
  }

  return result;
}

uint64_t vaemAddVADVolumeRampStatusChangeListener(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v9 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled(a1, a2);
  if (result)
  {
    *&inAddress.mSelector = *"spmrptuo";
    inAddress.mElement = 0;
    result = AudioObjectAddPropertyListener(v2, &inAddress, vaemVADVolumeRampStatusChangeListener, 0);
    v4 = result;
    v8 = result;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v4)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_isAirPodsInEarRoutingWithCarsAndSpeakersEnabled;
}

void vaemConnectedPortsPropertyListenerGuts()
{
  IsConnected = vaemHeadphoneJackIsConnected(0);
  HasInput = vaemHeadphoneJackHasInput(0);
  v2 = vaemGetVADPortIDFromVADPortType(1886154613) != 0;
  v3 = FigSimpleMutexLock();
  if (byte_1EB75D17A != v2)
  {
    v3 = PVMRemoveVolumesForDeviceRoute(@"LineOut", 0, 0);
    byte_1EB75D17A = v2;
    if (dword_1EB75DE40)
    {
      v11 = OUTLINED_FUNCTION_10_1(v3, v4, v5, v6, v7, v8, v9, v10, v36, v37, v38, v39, SBYTE2(v39), SBYTE3(v39), SHIDWORD(v39));
      if (os_log_type_enabled(v11, BYTE3(v39)))
      {
        v12 = HIDWORD(v39);
      }

      else
      {
        v12 = HIDWORD(v39) & 0xFFFFFFFE;
      }

      if (v12)
      {
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl(v13, v14, v15, v16, v17, v11, BYTE3(v39), v18);
      }

      OUTLINED_FUNCTION_0_0();
      v3 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (byte_1EB75D178 != IsConnected || byte_1EB75D179 != HasInput)
  {
    byte_1EB75D178 = IsConnected;
    byte_1EB75D179 = HasInput;
    if (dword_1EB75DE40)
    {
      v20 = OUTLINED_FUNCTION_10_1(v3, v4, v5, v6, v7, v8, v9, v10, v36, v37, v38, v39, SBYTE2(v39), SBYTE3(v39), SHIDWORD(v39));
      v21 = os_log_type_enabled(v20, type);
      if (OUTLINED_FUNCTION_3_0(v21))
      {
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v20, type, v27);
      }

      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_13(v28, v29, v30, v31, v32);
    }

    CMSMNotificationUtility_PostHeadphoneJackIsConnectedDidChange();
  }

  FigSimpleMutexUnlock();
  vaemUpdateConnectedOutputPortsList();
  vaemUpdateConnectedInputPortsList(v33, v34);
  cmsmUpdatePickableRouteDescriptionLists(1);
  if (byte_1EB75D158)
  {
    vaemUpdateSystemHasAudioInputDeviceState();
    v35 = vaemCopyActiveInputRouteNamesForRouteConfiguration(@"PlayAndRecord", @"Default", 0, 0);
    if (!FigCFEqual())
    {
      if (qword_1EB75D150)
      {
        CFRelease(qword_1EB75D150);
        qword_1EB75D150 = 0;
      }

      if (v35)
      {
        qword_1EB75D150 = CFRetain(v35);
      }

      CMSMNotificationUtility_PostActiveInputRouteForPlayAndRecordNoBluetoothDidChange();
    }

    if (v35)
    {
      CFRelease(v35);
    }
  }
}

void vaemUpdateConnectedOutputPortsList()
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  obj = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
  if (![obj count])
  {

    return;
  }

  FigSimpleMutexLock();
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v3 = &qword_1EB75D000;
  v4 = [qword_1EB75D0E0 allObjects];
  v5 = [v4 countByEnumeratingWithState:&v141 objects:v166 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v142;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v142 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v141 + 1) + 8 * i);
        if (([obj containsObject:v9] & 1) == 0)
        {
          [v2 addObject:v9];
          [qword_1EB75D0E0 removeObject:v9];
          v10 = +[MXAudioAccessoryServices sharedInstance];
          v11 = [v9 unsignedIntValue];
          v12 = v10;
          v3 = &qword_1EB75D000;
          [(MXAudioAccessoryServices *)v12 handlePortDisconnected:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v141 objects:v166 count:16];
    }

    while (v6);
  }

  v116 = v2;
  v128 = v1;
  v117 = v0;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v13 = [obj countByEnumeratingWithState:&v137 objects:v165 count:16];
  v14 = theArray;
  if (v13)
  {
    v15 = v13;
    v131 = *v138;
    do
    {
      v16 = 0;
      v130 = v15;
      do
      {
        if (*v138 != v131)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v137 + 1) + 8 * v16);
        v18 = [v17 unsignedIntValue];
        v19 = vaeCopyNameForPort(v18);
        v20 = vaeCopyDeviceIdentifierFromVADPort(v18);
        PortTypeFromPortID = vaeGetPortTypeFromPortID(v18);
        ConnectionTypeForPort = vaeGetConnectionTypeForPort(v18);
        if (ConnectionTypeForPort == 1885566825)
        {
          if (([v3[28] containsObject:v17] & 1) == 0)
          {
            [v128 addObject:v17];
            if (dword_1EB75DE40)
            {
              v146 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v29 = v146;
              v30 = type;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v31 = v29;
              }

              else
              {
                v31 = v29 & 0xFFFFFFFE;
              }

              if (v31)
              {
                v32 = HIBYTE(PortTypeFromPortID);
                v124 = BYTE2(PortTypeFromPortID);
                v126 = PortTypeFromPortID;
                v120 = BYTE1(PortTypeFromPortID);
                DoesPortSupportRoutability = vaeDoesPortSupportRoutability(v18);
                IsPortRoutable = vaeIsPortRoutable(v18);
                IsQuiesceableWiredPort = vaeIsQuiesceableWiredPort(v18, v34);
                *cf = 136317699;
                *&cf[4] = "vaemUpdateConnectedOutputPortsList";
                v149 = 2113;
                *v150 = v19;
                *&v150[8] = 2113;
                *&v150[10] = v20;
                *&v150[18] = 1024;
                *&v150[20] = v32;
                *&v150[24] = 1024;
                *v151 = v124;
                *&v151[4] = 1024;
                *v152 = v120;
                *&v152[4] = 1024;
                *&v152[6] = v126;
                v153 = 1024;
                v154 = v18;
                v155 = 1024;
                v156 = DoesPortSupportRoutability;
                v157 = 1024;
                v158 = IsPortRoutable;
                v159 = 1024;
                v160 = IsQuiesceableWiredPort;
                LODWORD(v114) = 80;
                _os_log_send_and_compose_impl(v31, 0, valuePtr, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v30, "-CMVAEndptMgr- %s: New wired port: Name='%{private}@' UID='%{private}@' PortType='%c%c%c%c' PortID='%u' SupportsRoutability='%{BOOL}u' IsRoutable='%{BOOL}u' IsQuiesceableWiredPort='%{BOOL}u'", cf, v114);
              }

              goto LABEL_33;
            }
          }
        }

        else
        {
          v23 = ConnectionTypeForPort;
          if (ConnectionTypeForPort == 1885544823 && !FigCFEqual())
          {
            v36 = [v3[28] containsObject:v17];
            if ((v36 & 1) == 0)
            {
              if (!MX_FeatureFlags_IsOnenessEnabled(v36, v37) || PortTypeFromPortID != 1885565807)
              {
                [v117 addObject:v17];
              }

              if (dword_1EB75DE40)
              {
                v146 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v39 = v146;
                v40 = type;
                if (os_log_type_enabled(v38, type))
                {
                  v41 = v39;
                }

                else
                {
                  v41 = v39 & 0xFFFFFFFE;
                }

                if (v41)
                {
                  v121 = HIBYTE(PortTypeFromPortID);
                  v125 = BYTE2(PortTypeFromPortID);
                  v127 = PortTypeFromPortID;
                  v119 = BYTE1(PortTypeFromPortID);
                  DoesBTPortSupportInEarDetection = vaeDoesBTPortSupportInEarDetection(v18);
                  HasUserEnabledInEarDetectionForBTPort = vaeHasUserEnabledInEarDetectionForBTPort(v18, 0);
                  DoesPortSupportMultipleConnections = vaeDoesPortSupportMultipleConnections(v18);
                  DoesPortSupportStereoHFP = vaeDoesPortSupportStereoHFP(v18);
                  DoesPortSupportHighQualityBiDirectionalAudio = vaeDoesPortSupportHighQualityBiDirectionalAudio(v18);
                  *cf = 136318211;
                  *&cf[4] = "vaemUpdateConnectedOutputPortsList";
                  v149 = 2113;
                  *v150 = v19;
                  *&v150[8] = 2113;
                  *&v150[10] = v20;
                  *&v150[18] = 1024;
                  *&v150[20] = v121;
                  *&v150[24] = 1024;
                  *v151 = v125;
                  *&v151[4] = 1024;
                  *v152 = v119;
                  *&v152[4] = 1024;
                  *&v152[6] = v127;
                  v153 = 1024;
                  v154 = v18;
                  v155 = 1024;
                  v156 = DoesBTPortSupportInEarDetection;
                  v157 = 1024;
                  v158 = HasUserEnabledInEarDetectionForBTPort;
                  v159 = 1024;
                  v160 = DoesPortSupportMultipleConnections;
                  v161 = 1024;
                  v162 = DoesPortSupportStereoHFP;
                  v163 = 1024;
                  v164 = DoesPortSupportHighQualityBiDirectionalAudio;
                  LODWORD(v114) = 92;
                  _os_log_send_and_compose_impl(v41, 0, valuePtr, 128, &dword_1B17A2000, v38, v40, "-CMVAEndptMgr- %s: New wireless port: Name='%{private}@' UID='%{private}@' PortType='%c%c%c%c' PortID='%u' IEDSupported='%{BOOL}u' IEDEnabled='%{BOOL}u' SupportsMultipleConnections='%{BOOL}u' SupportsStereoHFP='%{BOOL}u' SupportsHighQualityBiDirectionalAudio='%{BOOL}u'", cf, v114);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v14 = theArray;
                v15 = v130;
                v3 = &qword_1EB75D000;
              }

              -[MXAudioAccessoryServices handleNewWirelessPortConnected:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "handleNewWirelessPortConnected:", [v17 unsignedIntValue]);
            }
          }

          else if (([v3[28] containsObject:v17] & 1) == 0 && dword_1EB75DE40)
          {
            v146 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v25 = v146;
            v26 = type;
            if (os_log_type_enabled(v24, type))
            {
              v27 = v25;
            }

            else
            {
              v27 = v25 & 0xFFFFFFFE;
            }

            if (v27)
            {
              *cf = 136317955;
              *&cf[4] = "vaemUpdateConnectedOutputPortsList";
              v149 = 2113;
              *v150 = v19;
              *&v150[8] = 1024;
              *&v150[10] = HIBYTE(v23);
              *&v150[14] = 1024;
              *&v150[16] = BYTE2(v23);
              *&v150[20] = 1024;
              *&v150[22] = BYTE1(v23);
              *v151 = 1024;
              *&v151[2] = v23;
              *v152 = 2113;
              *&v152[2] = v20;
              v153 = 1024;
              v154 = HIBYTE(PortTypeFromPortID);
              v155 = 1024;
              v156 = BYTE2(PortTypeFromPortID);
              v157 = 1024;
              v158 = BYTE1(PortTypeFromPortID);
              v159 = 1024;
              v160 = PortTypeFromPortID;
              v161 = 1024;
              v162 = v18;
              LODWORD(v114) = 86;
              _os_log_send_and_compose_impl(v27, 0, valuePtr, 128, &dword_1B17A2000, v24, v26, "-CMVAEndptMgr- %s: New port: Name='%{private}@' ConnectionType='%c%c%c%c' UID='%{private}@' PortType='%c%c%c%c' PortID='%u'", cf, v114);
            }

LABEL_33:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v14 = theArray;
            v15 = v130;
            v3 = &qword_1EB75D000;
          }
        }

        if (([v3[28] containsObject:v17] & 1) == 0)
        {
          [v3[28] addObject:v17];
          [(__CFArray *)v14 addObject:v17];
        }

        if (v19)
        {
          CFRelease(v19);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        ++v16;
      }

      while (v15 != v16);
      v45 = [obj countByEnumeratingWithState:&v137 objects:v165 count:16];
      v15 = v45;
    }

    while (v45);
  }

  v46 = v117;
  v47 = v128;
  if (!dword_1EB75E0B8)
  {
    if (obj && (Count = CFArrayGetCount(obj), Count >= 1))
    {
      v49 = Count;
      v50 = 0;
      v51 = 0;
      v52 = obj;
      do
      {
        LODWORD(valuePtr[0]) = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v52, v50);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
        v54 = vaeCopyDeviceIdentifierFromVADPort(valuePtr[0]);
        if (v54)
        {
          v55 = v54;
          if (FigCFEqual())
          {
            v56 = vaeCopyNameForPort(valuePtr[0]);
            if (FigCFEqual())
            {
              v51 = valuePtr[0];
            }

            if (v56)
            {
              CFRelease(v56);
            }
          }

          CFRelease(v55);
        }

        ++v50;
        v52 = obj;
      }

      while (v49 != v50);
    }

    else
    {
      v51 = 0;
    }

    dword_1EB75E0B8 = v51;
    v14 = theArray;
  }

  vaemUpdatePortIDEndpointCache(v116, v14);
  vaemUpdatePortListeners(v14);
  FigSimpleMutexUnlock();
  if (vaemUpdateSharedAudioRouteState(v116, v14))
  {
    if (CMSM_IDSConnection_IsTimerForRemotePlayingInfoReplyExpired())
    {
      if (dword_1EB75DE40)
      {
        v146 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v58 = v146;
        v59 = type;
        if (os_log_type_enabled(v57, type))
        {
          v60 = v58;
        }

        else
        {
          v60 = v58 & 0xFFFFFFFE;
        }

        if (v60)
        {
          *cf = 136315138;
          *&cf[4] = "vaemUpdateConnectedOutputPortsList";
          _os_log_send_and_compose_impl(v60, 0, valuePtr, 128, &dword_1B17A2000, v57, v59, "-CMVAEndptMgr- %s: Trying to take ownership for new ports because timer for remote playing info reply expired", cf);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v69 = v14;
      v70 = 13;
    }

    else if (CMSMDeviceState_ItsAnAppleWatch() || !byte_1EB75E138)
    {
      if (CMSMDeviceState_ItsAnAppleWatch() || CMSM_IDSConnection_IsPairedToAnotherDevice())
      {
        if (CMSM_IDSConnection_IsNearbyPairedDevicePresent())
        {
          if (dword_1EB75DE40)
          {
            v146 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v66 = v146;
            v67 = type;
            if (os_log_type_enabled(v65, type))
            {
              v68 = v66;
            }

            else
            {
              v68 = v66 & 0xFFFFFFFE;
            }

            if (v68)
            {
              *cf = 136315138;
              *&cf[4] = "vaemUpdateConnectedOutputPortsList";
              _os_log_send_and_compose_impl(v68, 0, valuePtr, 128, &dword_1B17A2000, v65, v67, "-CMVAEndptMgr- %s: Delaying taking ownership for new ports until remote sends initial playing info", cf);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived(v14);
        }

        goto LABEL_103;
      }

      if (dword_1EB75DE40)
      {
        v146 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v110 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v111 = v146;
        v112 = type;
        if (os_log_type_enabled(v110, type))
        {
          v113 = v111;
        }

        else
        {
          v113 = v111 & 0xFFFFFFFE;
        }

        if (v113)
        {
          *cf = 136315138;
          *&cf[4] = "vaemUpdateConnectedOutputPortsList";
          _os_log_send_and_compose_impl(v113, 0, valuePtr, 128, &dword_1B17A2000, v110, v112, "-CMVAEndptMgr- %s: Trying to take ownership for new ports because phone is standalone", cf);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v69 = v14;
      v70 = 15;
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v146 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v62 = v146;
        v63 = type;
        if (os_log_type_enabled(v61, type))
        {
          v64 = v62;
        }

        else
        {
          v64 = v62 & 0xFFFFFFFE;
        }

        if (v64)
        {
          *cf = 136315138;
          *&cf[4] = "vaemUpdateConnectedOutputPortsList";
          _os_log_send_and_compose_impl(v64, 0, valuePtr, 128, &dword_1B17A2000, v61, v63, "-CMVAEndptMgr- %s: Trying to take ownership for new ports because phone is playing", cf);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v69 = v14;
      v70 = 14;
    }

    vaemTakeOwnershipOnSharedAudioRoute(v69, v70);
  }

LABEL_103:
  if ([v117 count])
  {
    FigRoutingManagerNewWirelessPortsAdded(v117);
  }

  if ([v128 count])
  {
    FigRoutingManagerNewWiredPortsAdded(v128);
  }

  PortOfTypeInArray = CMSMVAUtility_GetPortOfTypeInArray(1886614639, v14);
  v72 = CMSMVAUtility_GetPortOfTypeInArray(1886745455, obj);
  if (v72 && PortOfTypeInArray)
  {
    v74 = v72;
    v146 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v76 = v146;
    v77 = type;
    if (os_log_type_enabled(v75, type))
    {
      v78 = v76;
    }

    else
    {
      v78 = v76 & 0xFFFFFFFE;
    }

    if (v78)
    {
      *cf = 136315650;
      *&cf[4] = "vaemUpdateConnectedOutputPortsList";
      v149 = 1024;
      *v150 = v74;
      *&v150[4] = 1024;
      *&v150[6] = PortOfTypeInArray;
      _os_log_send_and_compose_impl(v78, 0, valuePtr, 128, &dword_1B17A2000, v75, v77, "-CMVAEndptMgr- %s: CarPlay Headunit published both ports (USB audio(port %u) & Stark(port %u)) for main audio.", cf, 24, v115);
    }

    v72 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled(v72, v73))
  {
    if (dword_1EB75DE40)
    {
      v146 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v80 = v146;
      v81 = type;
      if (os_log_type_enabled(v79, type))
      {
        v82 = v80;
      }

      else
      {
        v82 = v80 & 0xFFFFFFFE;
      }

      if (v82)
      {
        v83 = [(__CFArray *)v14 count];
        *cf = 136315394;
        *&cf[4] = "vaemProcessCarPlayCustomizedRouting";
        v149 = 2048;
        *v150 = v83;
        LODWORD(v114) = 22;
        _os_log_send_and_compose_impl(v82, 0, valuePtr, 128, &dword_1B17A2000, v79, v81, "-CMVAEndptMgr- %s: portsToAdd count = %lu", cf, v114);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(__CFArray *)v14 count])
    {
      v84 = 0;
      do
      {
        v85 = vaeCopyNameForPort([-[__CFArray objectAtIndex:](v14 objectAtIndex:{v84), "intValue"}]);
        if (dword_1EB75DE40)
        {
          v146 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v87 = v146;
          v88 = type;
          if (os_log_type_enabled(v86, type))
          {
            v89 = v87;
          }

          else
          {
            v89 = v87 & 0xFFFFFFFE;
          }

          if (v89)
          {
            v90 = [(__CFArray *)theArray objectAtIndex:v84];
            *cf = 136315906;
            *&cf[4] = "vaemProcessCarPlayCustomizedRouting";
            v149 = 1024;
            *v150 = v84;
            *&v150[4] = 2114;
            *&v150[6] = v90;
            *&v150[14] = 2114;
            *&v150[16] = v85;
            LODWORD(v114) = 38;
            _os_log_send_and_compose_impl(v89, 0, valuePtr, 128, &dword_1B17A2000, v86, v88, "-CMVAEndptMgr- %s: portsToAdd[%d]  = %{public}@, name = %{public}@", cf, v114);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = theArray;
        }

        if (v85)
        {
          CFRelease(v85);
        }

        ++v84;
      }

      while ([(__CFArray *)v14 count]> v84);
    }

    v91 = CMSMVAUtility_GetPortOfTypeInArray(1886614639, v14);
    if (v91)
    {
      v92 = v91;
      v46 = v117;
      v47 = v128;
      if (dword_1EB75DE40)
      {
        v146 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v93 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v94 = v146;
        v95 = type;
        if (os_log_type_enabled(v93, type))
        {
          v96 = v94;
        }

        else
        {
          v96 = v94 & 0xFFFFFFFE;
        }

        if (v96)
        {
          *cf = 136315394;
          *&cf[4] = "vaemProcessCarPlayCustomizedRouting";
          v149 = 1024;
          *v150 = v92;
          _os_log_send_and_compose_impl(v96, 0, valuePtr, 128, &dword_1B17A2000, v93, v95, "-CMVAEndptMgr- %s: starkPort = %u", cf, 18);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      valuePtr[0] = [MEMORY[0x1E696AD98] numberWithInt:v92];
      v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:valuePtr count:1];
      *cf = 0;
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
      FigRoutingManagerProcessCustomizedRouting(v101, *cf);
      if (*cf)
      {
        CFRelease(*cf);
      }
    }

    else
    {
      v46 = v117;
      v47 = v128;
      if (dword_1EB75DE40)
      {
        v146 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v98 = v146;
        v99 = type;
        if (os_log_type_enabled(v97, type))
        {
          v100 = v98;
        }

        else
        {
          v100 = v98 & 0xFFFFFFFE;
        }

        if (v100)
        {
          *cf = 136315138;
          *&cf[4] = "vaemProcessCarPlayCustomizedRouting";
          _os_log_send_and_compose_impl(v100, 0, valuePtr, 128, &dword_1B17A2000, v97, v99, "-CMVAEndptMgr- %s: portstoAdd does NOT contain a starkPort", cf);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  else
  {
    CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(v14, 1);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v102 = [(__CFArray *)v14 countByEnumeratingWithState:&v133 objects:v147 count:16];
  if (v102)
  {
    v103 = v102;
    v104 = *v134;
    while (2)
    {
      for (j = 0; j != v103; ++j)
      {
        if (*v134 != v104)
        {
          objc_enumerationMutation(v14);
        }

        v106 = -[MXAudioAccessoryServices isPortManaged:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "isPortManaged:", [*(*(&v133 + 1) + 8 * j) unsignedIntValue]);
        if (v106)
        {
          if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(v106, v107))
          {
            v108 = [+[MXSessionManager sharedInstance](MXSessionManager copyHighestPriorityActiveSession:"copyHighestPriorityActiveSession:deviceIdentifier:" deviceIdentifier:0x1F2893B50, 0];
          }

          else
          {
            v108 = CMSM_CopyHighestPriorityLocalPlayingSession(1);
          }

          v109 = v108;
          if (v108)
          {
            CMSUtility_RouteToPreferredRouteIfRequired(v108, 0, 9);
          }

          goto LABEL_168;
        }
      }

      v103 = [(__CFArray *)v14 countByEnumeratingWithState:&v133 objects:v147 count:16];
      if (v103)
      {
        continue;
      }

      break;
    }
  }

LABEL_168:
  FigPredictedRouting_UpdatePredictedRoute(1);
  [+[MXSessionManager sharedInstance](MXSessionManager updateCachedContinuityScreenOutputPortID];
}

void vaemCancelOutputVolumeChangeTimer()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = qword_1EB75D0B0;
  if (qword_1EB75D0B0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v0 = qword_1EB75D0B0;
    }

    dispatch_source_cancel(v0);
    if (qword_1EB75D0B0)
    {
      dispatch_release(qword_1EB75D0B0);
      qword_1EB75D0B0 = 0;
    }
  }

  byte_1EB75D0B8 = 0;
}

const void *CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(CFIndex a1)
{
  FigSimpleMutexLock();
  Count = qword_1EB75E0B0;
  if (qword_1EB75E0B0)
  {
    Count = CFArrayGetCount(qword_1EB75E0B0);
  }

  if (Count <= a1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1EB75E0B0, a1);
  }

  FigSimpleMutexUnlock();
  return ValueAtIndex;
}

void CMSMUtility_UpdateSharePlayVolumeBehaviours(uint64_t a1, uint64_t a2)
{
  IsSharePlayEnabled = MX_FeatureFlags_IsSharePlayEnabled(a1, a2);
  if (IsSharePlayEnabled)
  {
    v4 = MXGetSerialQueue(IsSharePlayEnabled, v3);

    MXDispatchAsync("CMSMUtility_UpdateSharePlayVolumeBehaviours", "CMSessionManager_Utilities.m", 6433, 0, 0, v4, &__block_literal_global_417);
  }
}

void CMSMUtility_UpdateCurrentRoutesInfo(const __CFArray *a1, const __CFArray *a2, void *a3, int a4)
{
  if (a1)
  {
    VectorCMSRouteInfoSize = MXVW_GetVectorCMSRouteInfoSize(qword_1EB75E0C0);
    Count = CFArrayGetCount(a1);
    dword_1EB75E0CC = Count;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v43 = 0;
        FigCFArrayGetInt64AtIndex();
        if (i >= VectorCMSRouteInfoSize)
        {
          *cf = 0u;
          memset(v49, 0, 28);
          v49[1].i32[3] = v43;
          MXVW_VectorCMSRouteInfoPushBack(qword_1EB75E0C0, cf);
        }

        else
        {
          *(MXVW_GetCMSRouteInfoPtrAt(qword_1EB75E0C0, i) + 44) = v43;
        }
      }
    }
  }

  if (a2)
  {
    v11 = MXVW_GetVectorCMSRouteInfoSize(qword_1EB75E0C0);
    v12 = CFArrayGetCount(a2);
    dword_1EB75E0C8 = v12;
    if (v12 >= 1)
    {
      for (j = 0; j != v12; ++j)
      {
        v43 = 0;
        FigCFArrayGetInt64AtIndex();
        v14 = vaeCopyVADEndpointTypeForPort(0);
        if (j >= v11)
        {
          memset(v49, 0, sizeof(v49));
          cf[0] = 0;
          cf[1] = v14;
          MXVW_VectorCMSRouteInfoPushBack(qword_1EB75E0C0, cf);
        }

        else
        {
          CMSRouteInfoPtrAt = MXVW_GetCMSRouteInfoPtrAt(qword_1EB75E0C0, j);
          *(CMSRouteInfoPtrAt + 40) = 0;
          v16 = *(CMSRouteInfoPtrAt + 8);
          *(CMSRouteInfoPtrAt + 8) = v14;
          if (v14)
          {
            CFRetain(v14);
          }

          if (v16)
          {
            CFRelease(v16);
          }
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }

  v17 = MXVW_GetVectorCMSRouteInfoSize(qword_1EB75E0C0);
  if (a3 && a4)
  {
    v18 = v17;
    v19 = 0;
    do
    {
      memset(v49, 0, sizeof(v49));
      *cf = 0u;
      MXVW_GetCMSRouteInfoAt(a3, v19, cf);
      if (v18 <= v19)
      {
        v46 = 0;
        v47 = 0;
        v43 = cf[0];
        v44 = vextq_s8(v49[0], v49[0], 8uLL);
        v45 = cf[1];
        MXVW_VectorCMSRouteInfoPushBack(qword_1EB75E0C0, &v43);
      }

      else
      {
        v20 = MXVW_GetCMSRouteInfoPtrAt(qword_1EB75E0C0, v19);
        v21 = *v20;
        v22 = cf[0];
        *v20 = cf[0];
        if (v22)
        {
          CFRetain(v22);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        v23 = *(v20 + 16);
        v24 = v49[0].i64[0];
        *(v20 + 16) = v49[0].i64[0];
        if (v24)
        {
          CFRetain(v24);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        v25 = *(v20 + 24);
        v26 = cf[1];
        *(v20 + 24) = cf[1];
        if (v26)
        {
          CFRetain(v26);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        v27 = *(v20 + 8);
        v28 = v49[0].i64[1];
        *(v20 + 8) = v49[0].i64[1];
        if (v28)
        {
          CFRetain(v28);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        v29 = *(v20 + 32);
        if (v29)
        {
          CFRelease(v29);
          *(v20 + 32) = 0;
        }
      }

      ++v19;
    }

    while (a4 != v19);
  }

  v30 = CMSMUtility_CopyCurrentRouteTypes();
  if (FigCFArrayContainsValue() && a4)
  {
    v31 = 0;
    v32 = *MEMORY[0x1E69618D0];
    v33 = *MEMORY[0x1E69621D8];
    v34 = *MEMORY[0x1E695E480];
    do
    {
      CFArrayGetValueAtIndex(v30, v31);
      if (FigCFEqual() || FigCFEqual())
      {
        MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v31, v42);
        v35 = FigRoutingManagerCopyEndpointWithDeviceID(v42[2], 1, v32, qword_1EB75E190);
        if (v35)
        {
          v36 = v35;
          cf[0] = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v38)
          {
            v38(CMBaseObject, v33, v34, cf);
          }

          v39 = MXVW_GetCMSRouteInfoPtrAt(qword_1EB75E0C0, v31);
          v40 = *(v39 + 32);
          v41 = cf[0];
          *(v39 + 32) = cf[0];
          if (v41)
          {
            CFRetain(v41);
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          CFRelease(v36);
        }
      }

      ++v31;
    }

    while (a4 != v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }
}

void vaemCopyVARoutesInfoAsCFArrays(void *a1, int a2, void *a3, void *a4, CFTypeRef *a5)
{
  if (a1 && a2)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v13 = CFArrayCreateMutable(v10, 0, v11);
    v14 = CFArrayCreateMutable(v10, 0, v11);
    v15 = 0;
    do
    {
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      MXVW_GetCMSRouteInfoAt(a1, v15, &v21);
      if (v21)
      {
        v16 = v21;
      }

      else
      {
        v16 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(Mutable, v16);
      if (v22)
      {
        v17 = v22;
      }

      else
      {
        v17 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(v13, v17);
      if (*(&v21 + 1))
      {
        v18 = *(&v21 + 1);
      }

      else
      {
        v18 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(v14, v18);
      ++v15;
    }

    while (a2 != v15);
    if (a3)
    {
      if (Mutable)
      {
        v19 = CFRetain(Mutable);
      }

      else
      {
        v19 = 0;
      }

      *a3 = v19;
    }

    if (a4)
    {
      if (v13)
      {
        v20 = CFRetain(v13);
      }

      else
      {
        v20 = 0;
      }

      *a4 = v20;
    }

    if (v14)
    {
      *a5 = CFRetain(v14);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }
}

uint64_t MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_cold_1();
  }

  return MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_sIsInterruptingPlayingSessionsInOnenessEnabled;
}

uint64_t vaemUpdateThermalGainAdjustment()
{
  inAddress.mElement = 0;
  *&inAddress.mSelector = *"#vedbolg";
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(1u, &inAddress, 0, 0, &outDataSize);
  if (!PropertyDataSize)
  {
    if (outDataSize >= 4)
    {
      v1 = outDataSize >> 2;
      v2 = malloc_type_calloc(v1, 4uLL, 0x100004052888210uLL);
      PropertyDataSize = AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &outDataSize, v2);
      v3 = 0;
      v4 = 4 * v1;
      do
      {
        v5 = *&v2[v3];
        *&inAddress.mSelector = 0x6F7574707473636CLL;
        inAddress.mElement = 0;
        if (AudioObjectHasProperty(v5, &inAddress))
        {
          *&inAddress.mSelector = 0x676C6F6275696420;
          inAddress.mElement = 0;
          ioDataSize = 8;
          outData = 0;
          PropertyDataSize = AudioObjectGetPropertyData(v5, &inAddress, 0, 0, &ioDataSize, &outData);
          if (!PropertyDataSize)
          {
            v6 = FigCFEqual();
            v7 = &qword_1EB75D188 + 1;
            if (!v6)
            {
              v7 = &qword_1EB75D188;
            }

            v9 = *v7;
            if (v9 <= 1.0)
            {
              *&inAddress.mSelector = 0x6F7574707473636CLL;
              inAddress.mElement = 0;
              PropertyDataSize = CMSMVAUtility_AudioObjectSetPropertyData(v5, &inAddress, 0, 0, 4, &v9);
            }

            else
            {
              PropertyDataSize = 0;
            }
          }

          if (outData)
          {
            CFRelease(outData);
          }
        }

        v3 += 4;
      }

      while (v4 != v3);
      free(v2);
    }

    else
    {
      return 0;
    }
  }

  return PropertyDataSize;
}

uint64_t cmsmRequestCarMainAudioForSession(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if ([a1 isActiveOverAirPlayVideo] && CMSMUtility_IsCarPlayVideoActive())
  {
    if (!dword_1EB75DE40)
    {
      return 0;
    }

LABEL_5:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  if ([+[MXSessionManager sessionUtilizesIndependentRecordingOnly:"sessionUtilizesIndependentRecordingOnly:"]
  {
    if (!dword_1EB75DE40)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (([a1 hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(a1))
  {
    if (CMSMUtility_IsPhoneCallActive())
    {
      v3 = 1;
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = 1;
      [+[MXSessionManager sharedInstance](MXSessionManager setPhoneCallIsAboutToGoActiveOverCarPlay:"setPhoneCallIsAboutToGoActiveOverCarPlay:", 1];
    }
  }

  else if (CMSMUtility_IsPhoneCallActive())
  {
    v3 = 0;
  }

  else
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager phoneCallIsAboutToGoActiveOverCarPlay]- 1;
  }

  if (CMSUtility_IsAudioCategoryRingtone(a1))
  {
    v6 = -1;
  }

  else if (CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(a1))
  {
    v6 = 10;
  }

  else
  {
    v6 = 0;
  }

  *v10 = 0x1F288E750;
  if (CMSUtility_ShouldBorrowCarMainAudio(a1))
  {
    *v10 = @"Borrow";
    [a1 setNeedToEndInterruption:1];
  }

  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Connected to car; Requesting main audio for session, %@ '%@'", [a1 clientName], objc_msgSend(a1, "displayID"));
  v8 = [a1 audioCategory];
  v11[0] = 0;
  v11[1] = 0;
  v12 = v3;
  v13 = 0;
  v14 = v6;
  v15 = 0;
  v16 = v8;
  FigEndpointCentralRequestResource(qword_1EB75E178, 0x1F2899C50, v11, v7, v10);
  if (FigCFEqual())
  {
    [a1 setStarkBorrowCount:{objc_msgSend(a1, "starkBorrowCount") + 1}];
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v4 = FigEndpointCentralEntityHoldsResource(qword_1EB75E178, 0x1F288E610, 0x1F2899C50);
  [a1 setTookControlOfStarkMainAudio:v4 != 0];
  return v4;
}

BOOL CMSMUtility_IsPhoneCallActive()
{
  v0 = CMSMUtility_CopyActivePhoneCallInfo();
  v1 = v0 != 0;

  return v1;
}

uint64_t __FigEndpointCentralEntityHoldsResource_block_invoke(void *a1)
{
  result = _FigEndpointCentralEntityHoldsResource(a1[5], a1[6], a1[7]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t routingContextRemoteXPC_CopySelectedRouteDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_6_7(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22);
  if (v9 || (OUTLINED_FUNCTION_8(), v9 = FigXPCCreateBasicMessage(), v9) || (OUTLINED_FUNCTION_12_4(), v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v9))
  {
    v8 = v9;
  }

  else
  {
    v10 = FigXPCMessageCopyCFDictionary();
    OUTLINED_FUNCTION_10_4(v10, v11, v12, v13, v14, v15, v16, v17, 0);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

BOOL vaemIsMATAtmosEnabled()
{
  outData = 0;
  if (vaemGetStream0([+[MXSessionManager defaultVADID] sharedInstance])
  {
    v0 = 1;
  }

  else
  {
    v0 = outData == 0;
  }

  result = 0;
  if (!v0)
  {
    v2 = vaemStreamSupportsFormat();
    if (v2 || vaemStreamSupportsFormat())
    {
      return 1;
    }
  }

  return result;
}

uint64_t vaemStreamSupportsFormat()
{
  vaemCopySupportedStreamFormats();
  free(0);
  return 0;
}

uint64_t FigVAEndpointManagerCopyPropertyForScope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v12)
  {
    return 4294954514;
  }

  return v12(a1, a2, a3, a4, a5, a6);
}

uint64_t _VAEndpointManager_CopyPropertyForScope(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (a2 && a6)
  {
    *a6 = 0;
    if (CFEqual(a2, @"VAEM_NumberOfStreams"))
    {
      v9 = OUTLINED_FUNCTION_14_1();
      NumberOfStreams = vaemGetNumberOfStreams(v9, v10, 0);
    }

    else
    {
      result = CFEqual(a2, @"VAEM_MaximumNumberOfChannels");
      if (!result)
      {
        return result;
      }

      v12 = OUTLINED_FUNCTION_14_1();
      NumberOfStreams = vaemGetMaximumNumberOfChannels(v12, v13, 0);
    }

    v14 = MXCFNumberCreateFromSInt64(NumberOfStreams);
    return OUTLINED_FUNCTION_6_3(v14);
  }

  return result;
}

uint64_t vaemGetMaximumNumberOfChannels(int a1, AudioObjectID inObjectID, int a3)
{
  if (a1 == 1)
  {
    v6 = 1768845428;
  }

  else
  {
    v6 = 1869968496;
  }

  inAddress.mSelector = 1937009955;
  inAddress.mScope = v6;
  inAddress.mElement = 0;
  if (!a3)
  {
    inObjectID = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  }

  NumberOfStreams = vaemGetNumberOfStreams(a1, inObjectID, a3);
  ioDataSize = 4 * NumberOfStreams;
  v8 = malloc_type_malloc((4 * NumberOfStreams), 0x36049085uLL);
  PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, v8);
  if (v8)
  {
    v10 = PropertyData == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && NumberOfStreams != 0)
  {
    v12 = 0;
    do
    {
      if (vaemCopySupportedStreamFormats())
      {
        break;
      }

      ++v12;
    }

    while (v12 != NumberOfStreams);
  }

  free(v8);
  return 0;
}

uint64_t vaemGetNumberOfStreams(int a1, AudioObjectID inObjectID, int a3)
{
  outDataSize = 4;
  if (!a3)
  {
    inObjectID = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  }

  if (a1 == 1)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1869968496;
  }

  v7.mSelector = 1937009955;
  v7.mScope = v5;
  v7.mElement = 0;
  if (AudioObjectGetPropertyDataSize(inObjectID, &v7, 0, 0, &outDataSize))
  {
    return 0;
  }

  else
  {
    return outDataSize >> 2;
  }
}

__CFArray *vaemCopyAllEndpoints()
{
  v0 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
  v1 = vaemCopyEndpointsForListOfPorts(v0, 0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t FigRoutingManagerShouldSkipEndpointManager(uint64_t a1)
{
  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return 0;
}

OpaqueFigEndpoint *FigRoutingManagerCopyEndpointWithDeviceID(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v8 copyEndpointWithDeviceID:a1 isStreamID:a2 != 0 managerType:a3 routingContextUUID:a4];
}

BOOL PVMVolumePrefExistsForRouteAndCategory(const void *a1, unint64_t a2, uint64_t a3, const __CFString *a4, const void *a5)
{
  if (PVMInitialize())
  {
    return 0;
  }

  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  if (!DeviceRouteString)
  {
    return 0;
  }

  v12 = DeviceRouteString;
  FigSimpleMutexLock();
  if (!*(sStorage + 16))
  {
    goto LABEL_14;
  }

  v13 = *(sStorage + 184);
  if (v13)
  {
    Value = CFDictionaryGetValue(v13, a4);
    if (Value)
    {
      a4 = Value;
    }
  }

  if (!a4)
  {
    a4 = *(sStorage + 232);
  }

  if (!a5)
  {
    a5 = *(sStorage + 240);
  }

  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a4, a5);
  v16 = CFDictionaryGetValue(*(sStorage + 16), v12);
  if (v16)
  {
    v10 = CFDictionaryGetValue(v16, MappedCategoryWithModeAppended) != 0;
  }

  else
  {
LABEL_14:
    v10 = 0;
  }

  FigSimpleMutexUnlock();
  CFRelease(v12);
  return v10;
}

void routingSessionManager_routeConfigUpdated(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a5, @"routeConfigUpdateReason");
  cf = 0;
  v10 = *DerivedStorage;
  if (v10 == a4)
  {
    v11 = Value;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v12 || v12(v10, &cf))
    {
      goto LABEL_11;
    }

    if (FigCFEqual() || FigCFEqual())
    {
      goto LABEL_8;
    }

    if (FigCFEqual())
    {
      if (!routingSessionManager_routeIsBuiltIn(cf))
      {
LABEL_8:
        routingSessionManager_establishRoutingSessionFromCurrentRoutes(a2, cf, v11);
        goto LABEL_11;
      }
    }

    else if (!FigCFEqual())
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_19_2(v13, v14, v15, v16, v17, v18, v19, v20, 0, 0, v11, 0);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CMSMUtility_ShouldChangeMainVolume(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  theArray[20] = *MEMORY[0x1E69E9840];
  ContextType = FigRoutingManagerContextUtilities_GetContextType([a1 routingContextUUID]);
  if (ContextType > 4 || ((1 << ContextType) & 0x1A) == 0)
  {
    return 0;
  }

  theArray[0] = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints([a1 routingContextUUID], theArray);
  if (!theArray[0])
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray[0]);
  if (Count == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 0);
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, *MEMORY[0x1E69626B0]))
    {
      v26 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &v26);
      }

      v14 = v26;
      if (!v26 || (v14 = CFArrayGetCount(v26), v14 != 1))
      {
        if (a4)
        {
          v19 = 1;
        }

        else
        {
          v19 = v14 < 2;
        }

        v20 = v19;
LABEL_28:
        if (v26)
        {
          CFRelease(v26);
        }

        if (v20)
        {
          goto LABEL_31;
        }

LABEL_37:
        v26 = 0;
        PVMCopyVolumeCategoryAndMode([[MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:" sharedInstance:0];
        if (CMSessionMgrIsVolumeChangeTriggered(v6) && dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if ((v6 - 11) < 2)
        {
          v17 = FigCFEqual();
        }

        else
        {
          v17 = (v6 - 1) <= 1;
        }

        if (v26)
        {
          CFRelease(v26);
        }

        goto LABEL_45;
      }

      v15 = CFArrayGetValueAtIndex(v26, 0);
      IsEndpointSelfOnlyLocalAirPlay = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(v15);
      if (!a4 && IsEndpointSelfOnlyLocalAirPlay)
      {
        if (dword_1EB75DE40)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      }

      IsClusterLocalEndpoint = FigRoutingManagerIsClusterLocalEndpoint(v15);
      if (a4 || !IsClusterLocalEndpoint)
      {
        if (a4)
        {
          goto LABEL_49;
        }

        if (dword_1EB75DE40)
        {
LABEL_55:
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (FigRoutingManagerIsEndpointOfSubtype(v15, *MEMORY[0x1E6962628]))
        {
          if (dword_1EB75DE40)
          {
            goto LABEL_58;
          }

          goto LABEL_49;
        }

        if (!FigRoutingManagerIsEndpointOfSubtype(v15, *MEMORY[0x1E6962620]))
        {
          goto LABEL_49;
        }

        if (!CMSMDeviceState_ItsAnAppleTV())
        {
          if (dword_1EB75DE40)
          {
LABEL_58:
            v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            v20 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_28;
          }

LABEL_49:
          v20 = 1;
          goto LABEL_28;
        }

        if (dword_1EB75DE40)
        {
          goto LABEL_55;
        }
      }

      v20 = 0;
      goto LABEL_28;
    }

LABEL_31:
    v17 = 0;
    goto LABEL_45;
  }

  v17 = 0;
  if (!a4 && Count >= 2)
  {
    if (FigRoutingManagerAreAllEndpointsBluetoothShareable(theArray[0]))
    {
      if (dword_1EB75DE40)
      {
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_45:
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  return v17;
}

__CFDictionary *frcXPCServer_copySanitizedRouteDescriptor(const __CFDictionary *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"RouteSupportsAudio");
  CFArrayAppendValue(Mutable, @"RouteSupportsAirPlayVideo");
  CFArrayAppendValue(Mutable, @"RouteSupportsAirPlayScreen");
  CFArrayAppendValue(Mutable, @"AudioRouteName");
  CFArrayAppendValue(Mutable, @"AudioRouteSubType");
  CFArrayAppendValue(Mutable, @"RouteSupportsAirPlayMusic");
  CFArrayAppendValue(Mutable, @"RouteHasAirPlayCloudConnectivity");
  CFArrayAppendValue(Mutable, @"ExternalPlaybackCannotFetchMediaFromSender");
  CFArrayAppendValue(Mutable, @"ExternalPlaybackDoesNotSupportEncryptedCRABS");
  CFArrayAppendValue(Mutable, @"ExternalPlaybackDoesNotShowProperUIForAudioOnlyAssets");
  CFArrayAppendValue(Mutable, @"BTDetails_HighQualityContentCaptureSupported");
  CFArrayAppendValue(Mutable, @"BTDetails_HighQualityContentCaptureEnabled");
  CFArrayAppendValue(Mutable, @"RouteName");
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
  }

  else
  {
    Count = 0;
  }

  v5 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(v5, @"RouteUID");
  CFArrayAppendValue(v5, @"RouteName");
  CFArrayAppendValue(v5, @"GroupUUID");
  CFArrayAppendValue(v5, @"TightSyncUUID");
  if (a1)
  {
    v6 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (Count >= 1)
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v7);
        Value = CFDictionaryGetValue(a1, ValueAtIndex);
        if (Value)
        {
          break;
        }

        if (FigCFArrayContainsValue())
        {
          v11 = v6;
          v12 = ValueAtIndex;
          v10 = @"*** Missing entitlement ***";
          goto LABEL_11;
        }

LABEL_12:
        if (Count == ++v7)
        {
          goto LABEL_13;
        }
      }

      v10 = Value;
      v11 = v6;
      v12 = ValueAtIndex;
LABEL_11:
      CFDictionarySetValue(v11, v12, v10);
      goto LABEL_12;
    }

LABEL_13:
    if (!CFDictionaryContainsKey(v6, @"RouteName"))
    {
      CFDictionarySetValue(v6, @"RouteName", @"*** Missing entitlement ***");
    }
  }

  else
  {
    v6 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t FigRoutingManagerIsNonSelfOnlyLocalAirPlayEndpointPicked(uint64_t a1)
{
  if (FigRoutingManagerContextUtilities_GetContextType(a1) != 3)
  {
    return 0;
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
  if (FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626B0]))
  {
    theArray = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    }

    v4 = 0;
    while (1)
    {
      v5 = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        v5 = theArray;
      }

      else
      {
        Count = 0;
      }

      if (v4 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v5, v4++);
      if (!FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(ValueAtIndex))
      {
        v8 = 1;
        v5 = theArray;
        if (!theArray)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v8 = 0;
    if (!v5)
    {
      goto LABEL_17;
    }

LABEL_16:
    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t vaemIsAC3EncodingSupported()
{
  vaemGetAC3IsSupported();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t vaemGetAC3IsSupported()
{
  outData = 0;
  if (vaemGetStream0([+[MXSessionManager defaultVADID] sharedInstance])
  {
    return 0;
  }

  result = outData;
  if (outData)
  {
    return vaemStreamSupportsFormat();
  }

  return result;
}

uint64_t FigRoutingManagerContextUtilities_DoesContextSupportWHAMultiDeviceRouting(uint64_t a1)
{
  if (a1)
  {
    ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
    v2 = 0x1000000000101uLL >> (8 * (ContextType - 3));
    if ((ContextType - 3) > 6)
    {
      LOBYTE(v2) = 0;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

uint64_t remoteSystemController_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v5 = " SERVER DIED";
  }

  else
  {
    v5 = "";
  }

  return [v3 initWithFormat:@"<FigSystemControllerRemote %p retainCount: %ld objectID: %016llx%s>", a1, v4, *DerivedStorage, v5];
}

__CFString *FigRoutingManagerCopyEndpointFeaturesAsString(char a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  if (a1)
  {
    CFStringAppend(Mutable, @"screen");
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (v3 && CFStringGetLength(v3) >= 1)
  {
    v4 = @"+audio";
  }

  else
  {
    v4 = @"audio";
  }

  CFStringAppend(v3, v4);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_14:
  if (v3 && CFStringGetLength(v3) >= 1)
  {
    v5 = @"+playback";
  }

  else
  {
    v5 = @"playback";
  }

  CFStringAppend(v3, v5);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_19:
  if (v3 && CFStringGetLength(v3) >= 1)
  {
    v6 = @"+music";
  }

  else
  {
    v6 = @"music";
  }

  CFStringAppend(v3, v6);
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_29;
  }

LABEL_24:
  if (v3 && CFStringGetLength(v3) >= 1)
  {
    v7 = @"+control";
  }

  else
  {
    v7 = @"control";
  }

  CFStringAppend(v3, v7);
  if ((a1 & 0x20) != 0)
  {
LABEL_29:
    if (v3 && CFStringGetLength(v3) >= 1)
    {
      v8 = @"+low latency audio";
    }

    else
    {
      v8 = @"low latency audio";
    }

    CFStringAppend(v3, v8);
  }

  return v3;
}

uint64_t FigEndpointDescriptorUtility_IsEndpointOfType(uint64_t a1, uint64_t a2)
{
  v2 = FigEndpointUtility_CopyEndpointType();
  v3 = FigCFEqual();
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

BOOL FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(uint64_t a1)
{
  IsEndpointLocal = FigRoutingManagerIsEndpointLocal(a1);
  v2 = *MEMORY[0x1E695E4C0];
  v3 = *MEMORY[0x1E695E4C0];
  v8 = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E6962180], *MEMORY[0x1E695E480], &v8);
    v3 = v8;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return IsEndpointLocal && v3 == v2;
}

BOOL FigRoutingManagerIsEndpointLocal(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E4C0];
  v6 = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962158], *MEMORY[0x1E695E480], &v6);
    v1 = v6;
  }

  v4 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

void __discoverer_postRoutePresentChangedIfNecessary_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t vaemVADAvailableSampleRatesListener(uint64_t a1, uint64_t a2)
{
  v2 = MXGetSerialQueue(a1, a2);
  MXDispatchAsyncFunction("vaemVADAvailableSampleRatesListener", "CMSessionManager_VAEndpointManager.m", 5666, 0, 0, v2, 0, vaemVADAvailableSampleRatesListenerGuts_f);
  return 0;
}

uint64_t vaemCurrentRouteHasVolumeControlListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = (a3 + 4);
    do
    {
      if (*(v4 - 1) == 1986229104)
      {
        if (*v4 == 1869968496)
        {
          v5 = MXGetSerialQueue(a1, a2);
          v6 = 5402;
          v7 = &__block_literal_global_93;
          goto LABEL_8;
        }

        if (*v4 == 1768845428)
        {
          v5 = MXGetSerialQueue(a1, a2);
          v6 = 5395;
          v7 = &__block_literal_global_91;
LABEL_8:
          MXDispatchAsync("vaemCurrentRouteHasVolumeControlListener", "CMSessionManager_VAEndpointManager.m", v6, 0, 0, v5, v7);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return 0;
}

void vaemAQMERouteChanged(const __CFDictionary *a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (unk_1EB75E040)
  {
    IsContextVideoAndIndependent = FigRoutingManagerContextUtilities_IsContextVideoAndIndependent(a2);
    if (IsContextVideoAndIndependent)
    {
      CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID(a2);
      v8 = *MEMORY[0x1E695E480];
      values = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v9 = CFArrayCreate(v8, &values, 1, MEMORY[0x1E695E9C0]);
      if (values)
      {
        CFRelease(values);
        values = 0;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, a1);
      v11 = MutableCopy;
      if (v9)
      {
        v12 = MutableCopy == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (!v9)
        {
LABEL_24:
          unk_1EB75E040(v11);
          if (v11)
          {
            CFRelease(v11);
          }

          return;
        }
      }

      else
      {
        CFDictionarySetValue(MutableCopy, @"SessionAudioBehaviors", v9);
      }

      CFRelease(v9);
      goto LABEL_24;
    }

    if (CMSMVAUtility_IsAdditiveRoutingEnabled(IsContextVideoAndIndependent, v7) && [a3 count])
    {
      v23 = a1;
      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [a3 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(a3);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(v17, "audioSessionID")), @"AudioSessionID"}];
            [v18 setObject:objc_msgSend(v17 forKey:{"audioBehaviour"), @"AudioBehavior"}];
            [v24 addObject:v18];
          }

          v14 = [a3 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v14);
      }

      v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v23];
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v19 setObject:v24 forKey:@"SessionAudioBehaviors"];
      if (dword_1EB75DE40)
      {
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      unk_1EB75E040(v19);
    }

    else
    {
      v21 = unk_1EB75E040;

      v21(a1);
    }
  }
}

FigResilientRemoteRoutingContextFactory *FigResilientRemoteRoutingContextFactoryGetCurrent()
{
  v0 = objc_alloc_init(FigResilientRemoteRoutingContextFactory);

  return v0;
}

BOOL CMSUtilityPredicate_IsSessionUsingRoutingContext(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 routingContextUUID];

  return CMSUtility_AreRoutingContextsEquivalent(a3, v4);
}

__CFDictionary *routingSessionManager_createDestinationWithRouteDescriptors(const __CFArray *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v3 = routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(a1);
  v4 = *MEMORY[0x1E695E4D0];
  v5 = *MEMORY[0x1E695E4C0];
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_RouteDescriptors", a1);
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  CFDictionarySetValue(Mutable, @"routingSessionDestination_ProvidesExternalVideoPlayback", v6);
  return Mutable;
}

uint64_t routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(CFArrayRef theArray)
{
  for (i = 0; ; ++i)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (i >= v3)
    {
      break;
    }

    CFArrayGetValueAtIndex(theArray, i);
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t routingSession_createInternal(uint64_t a1, uint64_t a2, char a3, char a4, const void *a5, void *a6)
{
  if (a6)
  {
    v10 = a2;
    FigRoutingSessionGetClassID(a1, a2);
    v11 = CMDerivedObjectCreate();
    if (!v11)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a5)
      {
        v13 = CFRetain(a5);
      }

      else
      {
        v13 = 0;
      }

      *DerivedStorage = v13;
      *(DerivedStorage + 8) = v10;
      *(DerivedStorage + 9) = a3;
      *(DerivedStorage + 10) = a4;
      *a6 = 0;
    }
  }

  else
  {
    routingSession_createInternal_cold_1(&v15);
    return v15;
  }

  return v11;
}

uint64_t FigRoutingSessionGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_11 != -1)
  {
    FigRoutingSessionGetClassID_cold_1();
  }

  return qword_1ED6D2FB0;
}

void routingSessionManager_updateCurrentSession(const void *a1, const void *a2, void *a3, char a4, int a5, int a6, char a7, int a8, uint64_t a9, char a10, void *a11, char *a12)
{
  values[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isVideoOnScreen = routingSessionManager_isVideoOnScreen(a1);
  FigSimpleMutexLock();
  v22 = *(DerivedStorage + 72);
  if ((!a8 || v22 == a9) && routingSessionManager_shouldUpdateCurrentSession(*(DerivedStorage + 24), v22, *(DerivedStorage + 88), *(DerivedStorage + 96), a2, a3, a5, a6, a7, isVideoOnScreen))
  {
    v24 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    v25 = *(DerivedStorage + 88);
    if (v25 != a3)
    {

      *(DerivedStorage + 88) = a3;
    }

    v26 = *(DerivedStorage + 80);
    if (v26)
    {
      CFRelease(v26);
      *(DerivedStorage + 80) = 0;
    }

    if (!a10)
    {
      *(DerivedStorage + 96) = a4;
    }

    FigSimpleMutexUnlock();
    if (v24 != a2)
    {
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      values[0] = a11;
      v28 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigRoutingSessionManagerPayloadValue_Reason, values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v28)
      {
        CFRelease(v28);
      }

      routingSessionManager_updateSessionExpiration(a1);
      if (!a2)
      {
        if (dword_1EB75DF00)
        {
          v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        routingSessionManager_updateSessionFromLatestInEarHeadphones(a1);
        if (dword_1EB75DF00)
        {
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession(a1);
      }
    }

    v23 = 1;
  }

  else
  {
    FigSimpleMutexUnlock();
    v23 = 0;
  }

  if (a12)
  {
    *a12 = v23;
  }
}

uint64_t routingSessionManager_isVideoOnScreen(uint64_t a1)
{
  v5 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v2 || v2(a1, &v5))
  {
    return 0;
  }

  v3 = [*(CMBaseObjectGetDerivedStorage() + 16) someLongFormVideoClientIsPlaying];
  return (v5 != 0) | v3 & 1u;
}

uint64_t routingSessionManager_getAirPlayVideoActive(uint64_t a1, unsigned __int8 *a2)
{
  v3 = [*(CMBaseObjectGetDerivedStorage() + 16) someLongFormVideoClientIsActiveOverAirPlayVideo];
  if (a2)
  {
    v4 = v3;
    result = 0;
    *a2 = v4;
  }

  else
  {
    routingSessionManager_getAirPlayVideoActive_cold_1(&v6);
    return v6;
  }

  return result;
}

void routingSessionManager_establishRoutingSessionFromCurrentRoutes(const void *a1, const __CFArray *a2, void *a3)
{
  cf = 0;
  DestinationWithRouteDescriptors = routingSessionManager_createDestinationWithRouteDescriptors(a2);
  v6 = *MEMORY[0x1E695E480];
  if (!FigRoutingSessionCreate(*MEMORY[0x1E695E480], 0, DestinationWithRouteDescriptors, &cf))
  {
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_19_2(v7, v8, v9, v10, v11, v12, v13, v14, 0, 0, a3, 0);
    v15 = cf;
    Current = CFAbsoluteTimeGetCurrent();
    routingSessionManager_getConfiguration(&v27);
    v17 = CFDateCreate(v6, Current - v28);
    if (a1)
    {
      CFRetain(a1);
    }

    if (v15)
    {
      CFRetain(v15);
    }

    routingSessionManager_getConfiguration(v26);
    OUTLINED_FUNCTION_13_5();
    v21 = 3221225472;
    v22 = __routingSessionManager_updatePredictionContextForSession_block_invoke;
    v23 = &__block_descriptor_48_e42_v24__0__NSArray_8__ARPPredictionContext_16l;
    v24 = a1;
    v25 = v15;
    routingSessionManager_waitForRecentPredictions(a1, v17, v20, v18);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (DestinationWithRouteDescriptors)
  {
    CFRelease(DestinationWithRouteDescriptors);
  }
}

__CFString *routingSession_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  cf = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5 && (v5(a1, &cf), cf))
  {
    v6 = FigRoutingSessionDestinationCopyDescription(v3, cf);
  }

  else
  {
    v6 = 0;
  }

  v7 = "Y";
  if (DerivedStorage[8])
  {
    v8 = "Y";
  }

  else
  {
    v8 = "N";
  }

  if (DerivedStorage[9])
  {
    v9 = "Y";
  }

  else
  {
    v9 = "N";
  }

  if (!DerivedStorage[10])
  {
    v7 = "N";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigRoutingSession = %p: establishedAutomaticallyFromLikelyDestination %s, establishedBasedOnInEarStatusOfConnectedHeadphones %s, establishedBasedOnActiveSharePlayCapableCallSession %s, chosenDestination = %@>", a1, v8, v9, v7, v6);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

CFStringRef FigRoutingSessionDestinationCopyDescription(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"routingSessionDestination_RouteDescriptors");
  v4 = FigRouteDescriptorArrayCopySuccinctDescription(a1, Value);
  FigCFDictionaryGetFloatIfPresent();
  v5 = CFStringCreateWithFormat(a1, 0, @"<FigRoutingDestination: probability = %f, routeNames = %@>", 0.0, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

__CFString *FigRouteDescriptorArrayCopySuccinctDescription(const __CFAllocator *a1, const __CFArray *a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v4 = 0;
  if (!a2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a2); v4 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v4);
    Value = CFDictionaryGetValue(ValueAtIndex, @"RouteName");
    CFStringAppendFormat(Mutable, 0, @"%@", Value);
    if (a2)
    {
      v8 = CFArrayGetCount(a2) - 1;
    }

    else
    {
      v8 = -1;
    }

    if (v4 < v8)
    {
      CFStringAppend(Mutable, @", ");
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

void routingSessionManager_updateSessionExpiration(const void *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Current = CFAbsoluteTimeGetCurrent();
  FigSimpleMutexLock();
  v4 = DerivedStorage[9];
  if (!v4)
  {
    FigSimpleMutexUnlock();
    goto LABEL_10;
  }

  cf[0] = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    v5(v4, cf);
    v6 = cf[0];
  }

  else
  {
    v6 = 0;
  }

  Value = CFDictionaryGetValue(v6, @"routingSessionDestination_RouteDescriptors");
  v8 = routingSessionManager_routeIsBuiltIn(Value);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
LABEL_10:
    v9 = [*(CMBaseObjectGetDerivedStorage() + 16) someLongFormVideoClientIsPlaying];
    FigSimpleMutexLock();
    if (v9)
    {
      v10 = DerivedStorage[10];
      if (v10)
      {
        CFRelease(v10);
        DerivedStorage[10] = 0;
        if (dword_1EB75DF00)
        {
          v25 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      if (!DerivedStorage[9])
      {
        goto LABEL_19;
      }

      if (!DerivedStorage[10])
      {
        v12 = *MEMORY[0x1E695E480];
        routingSessionManager_getConfiguration(cf);
        FigGetCFPreferenceDoubleWithDefault();
        DerivedStorage[10] = CFDateCreate(v12, Current + v13);
      }
    }

    v14 = DerivedStorage[9];
    if (v14)
    {
      v15 = CFRetain(v14);
      goto LABEL_20;
    }

LABEL_19:
    v15 = 0;
LABEL_20:
    v16 = DerivedStorage[10];
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    FigSimpleMutexUnlock();
    if (v15 && v17)
    {
      v18 = MEMORY[0x1B2734210](v17);
      if (Current <= v18)
      {
        v19 = v18;
        if (dword_1EB75DF00)
        {
          v25 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v21 = dispatch_time(0, ((v19 - Current) * 1000000000.0));
        v22 = DerivedStorage[4];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __routingSessionManager_updateSessionExpiration_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a1;
        dispatch_after(v21, v22, block);
      }

      else
      {
        routingSessionManager_updateCurrentSession(a1, 0, 0, 0, 0, 0, 0, 1, v15, 0, @"Session expiration after playback end", 0);
      }
    }

    else if (!v15)
    {
      if (!v17)
      {
        return;
      }

      goto LABEL_29;
    }

    CFRelease(v15);
    if (!v17)
    {
      return;
    }

LABEL_29:
    CFRelease(v17);
  }
}

uint64_t CMSMUtility_IsAnyLongFormVideoSessionPlaying()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75E0AA;
  FigSimpleMutexUnlock();
  return v0;
}

BOOL routingSessionManager_shouldUpdateCurrentSession(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, int a8, char a9, char a10)
{
  v512[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(a2 | a5))
  {
    if (dword_1EB75DF00)
    {
      OUTLINED_FUNCTION_12_6();
      v18 = OUTLINED_FUNCTION_8_8(qword_1EB75DEF8, v11, v12, v13, v14, v15, v16, v17, v360, v381, v402, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
      v26 = OUTLINED_FUNCTION_4_13(v18, v19, v20, v21, v22, v23, v24, v25, v361, v382, v403, v427, v447, v467, type, cf, v508);
      if (OUTLINED_FUNCTION_3_0(v26))
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v10 = a2;
  if (routingSession_isFromForcedPrediction(a2))
  {
    v34 = routingSession_establishedAutomaticallyFromLikelyDestination(v10);
    if (a4)
    {
      if (v34)
      {
        if (dword_1EB75DF00)
        {
          OUTLINED_FUNCTION_12_6();
          v42 = OUTLINED_FUNCTION_8_8(qword_1EB75DEF8, v35, v36, v37, v38, v39, v40, v41, v360, v381, v402, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
          v50 = OUTLINED_FUNCTION_4_13(v42, v43, v44, v45, v46, v47, v48, v49, v362, v383, v404, v428, v448, v468, typea, cf, v508);
          if (OUTLINED_FUNCTION_3_0(v50))
          {
LABEL_10:
            *theDict = 136315138;
            OUTLINED_FUNCTION_0_29();
            OUTLINED_FUNCTION_2();
            _os_log_send_and_compose_impl(v51, v52, v53, v54, v55, v56, v10, v57);
            OUTLINED_FUNCTION_15_6();
          }

LABEL_15:
          OUTLINED_FUNCTION_0_0();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_16:
        a3 = 0;
        goto LABEL_17;
      }
    }
  }

  if (!routingSession_isFromForcedPrediction(a5))
  {
    v512[0] = @"RouteUID";
    v512[1] = @"RouteName";
    v512[2] = @"AudioRouteName";
    v512[3] = @"RouteSupportsAirPlayVideo";
    v508 = 0;
    *theDict = 0;
    v406 = a3;
    if (v10)
    {
      v89 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v89 || v89(v10, theDict))
      {
        v91 = 0;
        goto LABEL_32;
      }

      Value = CFDictionaryGetValue(*theDict, @"routingSessionDestination_RouteDescriptors");
      v91 = routingSessionManager_copyFilteredRouteDescriptors(Value, v512);
      if (!a5)
      {
LABEL_24:
        v92 = 0;
LABEL_31:
        a3 = FigCFEqual() == 0;
        goto LABEL_33;
      }
    }

    else
    {
      v91 = 0;
      if (!a5)
      {
        goto LABEL_24;
      }
    }

    v93 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v93 && !v93(a5, &v508))
    {
      v94 = CFDictionaryGetValue(v508, @"routingSessionDestination_RouteDescriptors");
      v92 = routingSessionManager_copyFilteredRouteDescriptors(v94, v512);
      goto LABEL_31;
    }

LABEL_32:
    v92 = 0;
    a3 = 1;
LABEL_33:
    if (*theDict)
    {
      CFRelease(*theDict);
    }

    v95 = v508;
    if (v508)
    {
      CFRelease(v508);
    }

    if (v91)
    {
      CFRelease(v91);
    }

    if (v92)
    {
      CFRelease(v92);
    }

    if ((a3 & 1) == 0)
    {
      if (!dword_1EB75DF00)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_12_6();
      v119 = OUTLINED_FUNCTION_8_8(qword_1EB75DEF8, v112, v113, v114, v115, v116, v117, v118, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
      v127 = OUTLINED_FUNCTION_4_13(v119, v120, v121, v122, v123, v124, v125, v126, v365, v386, v408, v431, v451, v471, typed, cf, v508);
      if (OUTLINED_FUNCTION_3_0(v127))
      {
        *theDict = 136315138;
        OUTLINED_FUNCTION_0_29();
        OUTLINED_FUNCTION_2();
        _os_log_send_and_compose_impl(v128, v129, v130, v131, v132, v133, v10, v134);
        OUTLINED_FUNCTION_15_6();
      }

      goto LABEL_15;
    }

    if (a7 && a10)
    {
      if (!dword_1EB75DF00)
      {
        goto LABEL_16;
      }

      v96 = OUTLINED_FUNCTION_1_20(v95, v82, v83, v84, v85, v86, v87, v88, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
      v104 = OUTLINED_FUNCTION_4_13(v96, v97, v98, v99, v100, v101, v102, v103, v364, v385, v407, v430, v450, v470, typec, cf, v508);
      if (!OUTLINED_FUNCTION_3_0(v104))
      {
        goto LABEL_15;
      }

      *theDict = 136315138;
      OUTLINED_FUNCTION_0_29();
      goto LABEL_47;
    }

    if (!v10)
    {
      if (!dword_1EB75DF00)
      {
        goto LABEL_128;
      }

      v148 = OUTLINED_FUNCTION_1_20(v95, v82, v83, v84, v85, v86, v87, v88, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
      v156 = OUTLINED_FUNCTION_4_13(v148, v149, v150, v151, v152, v153, v154, v155, v366, v387, v409, v432, v452, v472, typee, cf, v508);
      if (OUTLINED_FUNCTION_3_0(v156))
      {
        *theDict = 136315138;
        OUTLINED_FUNCTION_0_29();
LABEL_90:
        OUTLINED_FUNCTION_2();
        _os_log_send_and_compose_impl(v234, v235, v236, v237, v238, v239, v10, v240);
        OUTLINED_FUNCTION_15_6();
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    if (FigRoutingSessionCopyDestination(v10, &cf))
    {
      goto LABEL_16;
    }

    v135 = CFDictionaryGetValue(cf, @"routingSessionDestination_RouteDescriptors");
    a3 = v406;
    if (a7)
    {
      v143 = v135;
      if (v406 && a6)
      {
        v144 = [a6 microLocationProbabilityVector];
        v145 = [v406 microLocationProbabilityVector];
        v146 = sARPMicroLocationSimilarityFunction(v144, v145);
        [a1 microLocationSimilarityThreshold];
        a3 = v146 >= v147;
      }

      else if (dword_1EB75DF00)
      {
        v174 = OUTLINED_FUNCTION_1_20(v135, v136, v137, v138, v139, v140, v141, v142, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
        v175 = v508;
        if (os_log_type_enabled(v174, HIBYTE(v426)))
        {
          v176 = v175;
        }

        else
        {
          v176 = v175 & 0xFFFFFFFE;
        }

        if (v176)
        {
          *theDict = 136315138;
          OUTLINED_FUNCTION_0_29();
          OUTLINED_FUNCTION_7_9();
          _os_log_send_and_compose_impl(v177, v178, v179, v180, v181, v174, HIBYTE(v426), v182);
        }

        OUTLINED_FUNCTION_9_8();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        a3 = 1;
      }

      v217 = routingSession_establishedAutomaticallyFromLikelyDestination(v10);
      if (a4 && v217)
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_128;
        }

        v225 = OUTLINED_FUNCTION_1_20(v217, v218, v219, v220, v221, v222, v223, v224, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
        v233 = OUTLINED_FUNCTION_4_13(v225, v226, v227, v228, v229, v230, v231, v232, v370, v391, v413, v436, v456, v476, typei, cf, v508);
        if (OUTLINED_FUNCTION_3_0(v233))
        {
          goto LABEL_89;
        }

LABEL_25:
        OUTLINED_FUNCTION_9_8();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_17;
      }

      if (!a5)
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_16;
        }

        v251 = OUTLINED_FUNCTION_1_20(v217, v218, v219, v220, v221, v222, v223, v224, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
        OUTLINED_FUNCTION_16_4(v251, v252, v253, v254, v255, v256, v257, v258, v372, v393, v416, v438, v458, v478, typek, cf, v508);
        goto LABEL_15;
      }

      if (a3)
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_16;
        }

        v241 = OUTLINED_FUNCTION_1_20(v217, v218, v219, v220, v221, v222, v223, v224, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
        if (OUTLINED_FUNCTION_16_4(v241, v242, v243, v244, v245, v246, v247, v248, v371, v392, v414, v437, v457, v477, typej, cf, v508))
        {
          v249 = a5;
        }

        else
        {
          v249 = a5 & 0xFFFFFFFE;
        }

        if (v249)
        {
          v250 = "NULL";
          if (v415)
          {
            v250 = "non-NULL";
          }

          *theDict = 136315394;
          *&theDict[4] = "routingSessionManager_shouldUpdateCurrentSession";
          v510 = 2082;
          v511 = v250;
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_7_9();
          _os_log_send_and_compose_impl(v259, v260, v261, v262, v263, v241, a4, v264);
        }

        goto LABEL_15;
      }

      Count = routingSessionManager_routeIsBuiltIn(v143);
      if (Count || (Count = routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(v143), Count) && v143 && (Count = CFArrayGetCount(v143), Count == 1))
      {
        if (dword_1EB75DF00)
        {
          v273 = OUTLINED_FUNCTION_1_20(Count, v266, v267, v268, v269, v270, v271, v272, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
          if (OUTLINED_FUNCTION_16_4(v273, v274, v275, v276, v277, v278, v279, v280, v373, v394, v417, v439, v459, v479, typel, cf, v508))
          {
            v281 = a5;
          }

          else
          {
            v281 = a5 & 0xFFFFFFFE;
          }

          if (v281)
          {
            v282 = "NULL";
            if (v418)
            {
              v282 = "non-NULL";
            }

            *theDict = 136315394;
            *&theDict[4] = "routingSessionManager_shouldUpdateCurrentSession";
            v510 = 2082;
            v511 = v282;
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_7_9();
            _os_log_send_and_compose_impl(v283, v284, v285, v286, v287, v273, a4, v288);
          }

          goto LABEL_25;
        }

        goto LABEL_128;
      }

      if (!dword_1EB75DF00)
      {
        goto LABEL_16;
      }

      v298 = OUTLINED_FUNCTION_1_20(Count, v266, v267, v268, v269, v270, v271, v272, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
      v306 = OUTLINED_FUNCTION_4_13(v298, v299, v300, v301, v302, v303, v304, v305, v375, v396, v420, v441, v461, v481, typen, cf, v508);
      if (!OUTLINED_FUNCTION_3_0(v306))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!a8)
      {
        if (a9)
        {
          v183 = routingSession_establishedBasedOnActiveSharePlayCapableCallSession();
          if (v183)
          {
            if (!dword_1EB75DF00)
            {
              goto LABEL_128;
            }

            v191 = OUTLINED_FUNCTION_1_20(v183, v184, v185, v186, v187, v188, v189, v190, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
            v199 = OUTLINED_FUNCTION_4_13(v191, v192, v193, v194, v195, v196, v197, v198, v368, v389, v411, v434, v454, v474, typeg, cf, v508);
            if (OUTLINED_FUNCTION_3_0(v199))
            {
              goto LABEL_89;
            }

            goto LABEL_25;
          }

          if (!a5)
          {
            if (!dword_1EB75DF00)
            {
              goto LABEL_16;
            }

            v342 = OUTLINED_FUNCTION_1_20(v183, v184, v185, v186, v187, v188, v189, v190, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
            v350 = OUTLINED_FUNCTION_4_13(v342, v343, v344, v345, v346, v347, v348, v349, v379, v400, v424, v445, v465, v485, typer, cf, v508);
            if (!OUTLINED_FUNCTION_3_0(v350))
            {
              goto LABEL_15;
            }

            goto LABEL_142;
          }

          v307 = routingSession_establishedAutomaticallyFromLikelyDestination(v10);
          if (!a4 || !v307)
          {
            if (!dword_1EB75DF00)
            {
              goto LABEL_16;
            }

            v351 = OUTLINED_FUNCTION_1_20(v307, v308, v309, v310, v311, v312, v313, v314, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
            v359 = OUTLINED_FUNCTION_4_13(v351, v352, v353, v354, v355, v356, v357, v358, v380, v401, v425, v446, v466, v486, types, cf, v508);
            if (!OUTLINED_FUNCTION_3_0(v359))
            {
              goto LABEL_15;
            }

            goto LABEL_142;
          }

          if (!dword_1EB75DF00)
          {
            goto LABEL_128;
          }

          v315 = OUTLINED_FUNCTION_1_20(v307, v308, v309, v310, v311, v312, v313, v314, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
          v323 = OUTLINED_FUNCTION_4_13(v315, v316, v317, v318, v319, v320, v321, v322, v376, v397, v421, v442, v462, v482, typeo, cf, v508);
          if (!OUTLINED_FUNCTION_3_0(v323))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (!dword_1EB75DF00)
          {
            goto LABEL_128;
          }

          v289 = OUTLINED_FUNCTION_1_20(v135, v136, v137, v138, v139, v140, v141, v142, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
          v297 = OUTLINED_FUNCTION_4_13(v289, v290, v291, v292, v293, v294, v295, v296, v374, v395, v419, v440, v460, v480, typem, cf, v508);
          if (!OUTLINED_FUNCTION_3_0(v297))
          {
            goto LABEL_25;
          }
        }

LABEL_89:
        *theDict = 136315138;
        OUTLINED_FUNCTION_0_29();
        goto LABEL_90;
      }

      v157 = routingSession_establishedBasedOnInEarStatusOfConnectedHeadphones();
      if (v157)
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_128;
        }

        v165 = OUTLINED_FUNCTION_1_20(v157, v158, v159, v160, v161, v162, v163, v164, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
        v173 = OUTLINED_FUNCTION_4_13(v165, v166, v167, v168, v169, v170, v171, v172, v367, v388, v410, v433, v453, v473, typef, cf, v508);
        if (OUTLINED_FUNCTION_3_0(v173))
        {
          goto LABEL_89;
        }

        goto LABEL_25;
      }

      if (a5)
      {
        v200 = routingSession_establishedAutomaticallyFromLikelyDestination(v10);
        if (a4 && v200)
        {
          if (!dword_1EB75DF00)
          {
            goto LABEL_128;
          }

          v208 = OUTLINED_FUNCTION_1_20(v200, v201, v202, v203, v204, v205, v206, v207, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
          v216 = OUTLINED_FUNCTION_4_13(v208, v209, v210, v211, v212, v213, v214, v215, v369, v390, v412, v435, v455, v475, typeh, cf, v508);
          if (OUTLINED_FUNCTION_3_0(v216))
          {
            goto LABEL_89;
          }

          goto LABEL_25;
        }

        if (!dword_1EB75DF00)
        {
          goto LABEL_16;
        }

        v333 = OUTLINED_FUNCTION_1_20(v200, v201, v202, v203, v204, v205, v206, v207, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
        v341 = OUTLINED_FUNCTION_4_13(v333, v334, v335, v336, v337, v338, v339, v340, v378, v399, v423, v444, v464, v484, typeq, cf, v508);
        if (!OUTLINED_FUNCTION_3_0(v341))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_16;
        }

        v324 = OUTLINED_FUNCTION_1_20(v157, v158, v159, v160, v161, v162, v163, v164, v360, v381, v406, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
        v332 = OUTLINED_FUNCTION_4_13(v324, v325, v326, v327, v328, v329, v330, v331, v377, v398, v422, v443, v463, v483, typep, cf, v508);
        if (!OUTLINED_FUNCTION_3_0(v332))
        {
          goto LABEL_15;
        }
      }
    }

LABEL_142:
    *theDict = 136315138;
    OUTLINED_FUNCTION_0_29();
LABEL_47:
    OUTLINED_FUNCTION_2();
    _os_log_send_and_compose_impl(v105, v106, v107, v108, v109, v110, v10, v111);
    OUTLINED_FUNCTION_15_6();
    goto LABEL_15;
  }

  if (dword_1EB75DF00)
  {
    OUTLINED_FUNCTION_12_6();
    v65 = OUTLINED_FUNCTION_8_8(qword_1EB75DEF8, v58, v59, v60, v61, v62, v63, v64, v360, v381, v402, v426, SWORD2(v426), SBYTE6(v426), SHIBYTE(v426), cf, v508);
    v73 = OUTLINED_FUNCTION_4_13(v65, v66, v67, v68, v69, v70, v71, v72, v363, v384, v405, v429, v449, v469, typeb, cf, v508);
    if (OUTLINED_FUNCTION_3_0(v73))
    {
      *theDict = 136315138;
      OUTLINED_FUNCTION_0_29();
      OUTLINED_FUNCTION_2();
      _os_log_send_and_compose_impl(v74, v75, v76, v77, v78, v79, v10, v80);
      OUTLINED_FUNCTION_15_6();
    }

    goto LABEL_25;
  }

LABEL_128:
  a3 = 1;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return a3;
}

uint64_t routingSession_isFromForcedPrediction(uint64_t a1)
{
  v7 = 0;
  cf = 0;
  if (a1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v2)
    {
      v3 = v2(a1, &cf);
      v4 = cf;
      if (!v3)
      {
        FigCFDictionaryGetBooleanIfPresent();
        v4 = cf;
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  return v7;
}

uint64_t routingSession_CopyDestination(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *DerivedStorage;
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    routingSession_CopyDestination_cold_1(&v7);
    return v7;
  }

  return result;
}

__CFSet *routingSessionManager_copyFilteredRouteDescriptors(const __CFArray *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v6 = 0;
  v7 = MEMORY[0x1E695E9E8];
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v6 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    v10 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E528], v7);
    for (j = 0; j != 32; j += 8)
    {
      v12 = *(a2 + j);
      Value = CFDictionaryGetValue(ValueAtIndex, v12);
      if (Value)
      {
        CFDictionarySetValue(v10, v12, Value);
      }
    }

    CFSetAddValue(Mutable, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    ++v6;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return Mutable;
}

uint64_t routingSessionManager_getConfiguration@<X0>(_OWORD *a1@<X8>)
{
  if (FigRoutingSessionManager_ensureConfigurationInitialized_onceToken != -1)
  {
    routingSessionManager_getConfiguration_cold_1();
  }

  FigSimpleMutexLock();
  v2 = xmmword_1EB75D7A8;
  a1[2] = xmmword_1EB75D798;
  a1[3] = v2;
  a1[4] = xmmword_1EB75D7B8;
  v3 = xmmword_1EB75D788;
  *a1 = gConfiguration;
  a1[1] = v3;

  return FigSimpleMutexUnlock();
}

void routingSessionManager_waitForRecentPredictions(const void *a1, const void *a2, uint64_t a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.coremedia.routing-session-manager.route-prediction", v9);
  v11 = FigNotificationListenerCreate(*(DerivedStorage + 24), sARPRoutePredictorPredictionsForCurrentContextUpdatedNotificationName);
  v12 = [[FigRoutePredictionFetchOneShotCompletion alloc] initWithCompletionHandler:a3];
  routingSessionManager_updatePredictedDestinations(a1, &__block_literal_global_188);
  if (v11)
  {
    CFRetain(v11);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __routingSessionManager_waitForRecentPredictions_block_invoke_2;
  v24[3] = &unk_1E7AECFB0;
  v24[4] = v12;
  v24[5] = DerivedStorage;
  v24[6] = a2;
  v24[7] = v11;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __routingSessionManager_waitForRecentPredictions_block_invoke_3;
  v23[3] = &__block_descriptor_48_e10_v16__0r_v8l;
  v23[4] = v11;
  v23[5] = a2;
  if (FigNotificationListenerStartNotifications(v11, v10, v24, v23))
  {
    [(FigRoutePredictionFetchOneShotCompletion *)v12 invokeWithRoutePredictions:0 predictionContext:0];
  }

  else
  {
    if (v11)
    {
      CFRetain(v11);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    OUTLINED_FUNCTION_13_5();
    v16 = 3221225472;
    v17 = __routingSessionManager_waitForRecentPredictions_block_invoke_4;
    v18 = &unk_1E7AE7230;
    v19 = v12;
    v20 = DerivedStorage;
    v21 = a2;
    v22 = v11;
    MXDispatchAsync("routingSessionManager_waitForRecentPredictions", "FigRoutingSessionManager.m", 2891, 0, 0, v10, v15);
    if (v11)
    {
      CFRetain(v11);
    }

    v13 = dispatch_time(0, (a4 * 1000000000.0));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __routingSessionManager_waitForRecentPredictions_block_invoke_5;
    v14[3] = &unk_1E7AEBCA0;
    v14[4] = v12;
    v14[5] = v11;
    dispatch_after(v13, v10, v14);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

__CFDictionary *FigNotificationListenerCreate(const void *a1, const void *a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.coremedia.notification-listener.serialization", v4);
  Mutable = 0;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CFDictionarySetValue(Mutable, @"notificationCenter", DefaultLocalCenter);
    CFDictionarySetValue(Mutable, @"observedObject", a1);
    CFDictionarySetValue(Mutable, @"notificationName", a2);
    CFDictionarySetValue(Mutable, @"serializationQueue", v5);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  return Mutable;
}

void routingSessionManager_updatePredictedDestinations(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Current = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(&v13);
  v6 = v14;
  cf = 0;
  v7 = *DerivedStorage;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v8(v7, &cf);
  }

  v9 = Current + v6;
  if (a1)
  {
    CFRetain(a1);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __routingSessionManager_updatePredictedDestinations_block_invoke;
  v11[3] = &__block_descriptor_48_e20_C16__0____CFArray__8l;
  v11[4] = a1;
  v11[5] = DerivedStorage;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __routingSessionManager_updatePredictedDestinations_block_invoke_276;
  v10[3] = &unk_1E7AECE58;
  v10[4] = a2;
  v10[5] = a1;
  routingSessionManager_discoverRoutes(v11, v10, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

void routingSessionManager_discoverRoutes(uint64_t a1, uint64_t a2, double a3)
{
  cf = 0;
  v6 = *MEMORY[0x1E695E480];
  getpid();
  SInt32 = FigCFNumberCreateSInt32();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.coremedia.routing-session-manager.discovery", v8);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = FigCFNumberCreateSInt32();
  CFDictionarySetValue(Mutable, @"discovererType", v11);
  v12 = FigRouteDiscovererCreate(v6, Mutable, &cf);
  if (v12)
  {
    goto LABEL_35;
  }

  v13 = cf;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v14)
  {
    goto LABEL_19;
  }

  v12 = v14(v13, @"clientPID", SInt32);
  if (v12)
  {
    goto LABEL_35;
  }

  v15 = cf;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v16)
  {
LABEL_19:
    v29 = 4294954514;
    if (!a2)
    {
LABEL_21:
      v18 = 0;
      goto LABEL_22;
    }

LABEL_20:
    (*(a2 + 16))(a2, v29);
    goto LABEL_21;
  }

  v12 = v16(v15, @"clientName", @"FigRoutingSessionManager");
  if (v12)
  {
LABEL_35:
    v29 = v12;
    if (!a2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v17 = cf;
  v18 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v18, @"RouteDiscoverer", v17);
  if (v18)
  {
    CFRetain(v18);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __routingSessionManager_discoverRoutes_block_invoke;
  v35[3] = &unk_1E7AECE80;
  v35[4] = a1;
  v35[5] = v18;
  v30 = a1;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __routingSessionManager_discoverRoutes_block_invoke_2;
  v34[3] = &unk_1E7AECE58;
  v34[4] = a2;
  v34[5] = v18;
  Value = CFDictionaryGetValue(v18, @"RouteDiscoverer");
  v20 = FigNotificationListenerCreate(Value, @"Discoverer_AvailableRoutesChanged");
  v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v9);
  Current = CFAbsoluteTimeGetCurrent();
  CFDictionarySetValue(v18, @"NotificationListener", v20);
  if (v18)
  {
    CFRetain(v18);
  }

  v38[10] = MEMORY[0x1E69E9820];
  v38[11] = 3221225472;
  v38[12] = __routingSessionManager_startDiscovery_block_invoke;
  v38[13] = &__block_descriptor_40_e5_v8__0l;
  v38[14] = v18;
  DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
  v38[5] = MEMORY[0x1E69E9820];
  v38[6] = 3221225472;
  v38[7] = __routingSessionManager_startDiscovery_block_invoke_129;
  v38[8] = &__block_descriptor_40_e5_v8__0l;
  v38[9] = v18;
  v24 = FigDispatchCreateDispatchSourceBlock();
  v25 = dispatch_time(0, ((a3 - Current) * 1000000000.0));
  dispatch_source_set_timer(v21, v25, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(v21, DispatchSourceBlock);
  dispatch_source_set_mandatory_cancel_handler();
  dispatch_resume(v21);
  CFDictionarySetValue(v18, @"TimeoutTimer", v21);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __routingSessionManager_startDiscovery_block_invoke_2;
  v38[3] = &unk_1E7AECEA8;
  v38[4] = v35;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __routingSessionManager_startDiscovery_block_invoke_3;
  v37[3] = &unk_1E7AECED0;
  v37[4] = v34;
  started = FigNotificationListenerStartNotifications(v20, v9, v38, v37);
  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_release(DispatchSourceBlock);
  _Block_release(v24);
  if (!started)
  {
    if (v18)
    {
      CFRetain(v18);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __routingSessionManager_discoverRoutes_block_invoke_3;
    v33[3] = &unk_1E7AECE80;
    v33[4] = v30;
    v33[5] = v18;
    v27 = v33;
    v28 = 3024;
    goto LABEL_18;
  }

  if (v18)
  {
    CFRetain(v18);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __routingSessionManager_discoverRoutes_block_invoke_4;
    v31[3] = &__block_descriptor_44_e5_v8__0l;
    v31[4] = v18;
    v32 = started;
    v27 = v31;
    v28 = 3032;
LABEL_18:
    MXDispatchAsync("routingSessionManager_discoverRoutes", "FigRoutingSessionManager.m", v28, 0, 0, v9, v27);
  }

LABEL_22:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v9)
  {
    dispatch_release(v9);
  }
}

uint64_t CMSMUtility_DoesCarPlaySupportMixableSiri()
{
  v6[20] = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  v1 = FigRoutingManagerCopyActivatedCarPlayEndpoint(v0);
  v6[0] = *MEMORY[0x1E695E4C0];
  if (v1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69622B8], *MEMORY[0x1E695E480], v6);
    }
  }

  if (FigCFEqual())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_9;
    }
  }

  else if (!dword_1EB75DE40)
  {
    goto LABEL_9;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  return FigCFEqual();
}

uint64_t vaemUpdateSharedAudioRouteState(const __CFArray *a1, CFArrayRef theArray)
{
  if (!theArray || (Count = CFArrayGetCount(theArray), Count < 1))
  {
    v6 = 0;
    if (!a1)
    {
      return v6;
    }

    goto LABEL_12;
  }

  v5 = Count;
  v6 = 0;
  for (i = 0; i != v5; ++i)
  {
    PortAtIndex = CMSMVAUtility_GetPortAtIndex(theArray, i);
    if (vaeDoesPortSupportMultipleConnections(PortAtIndex))
    {
      if (![+[MXAudioAccessoryServices isPortManaged:"isPortManaged:"]
      {
        v6 = 1;
        CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs(PortAtIndex, 0, 1);
        CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToLocal(1);
        global_queue = dispatch_get_global_queue(0, 0);
        MXDispatchAsync("vaemUpdateSharedAudioRouteState", "CMSessionManager_VAEndpointManager.m", 10586, 0, 0, global_queue, &__block_literal_global_69);
        if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote())
        {
          CMSMNotificationUtility_PostPickableRoutesDidChange(1, v10);
        }
      }
    }
  }

  if (a1)
  {
LABEL_12:
    v11 = CFArrayGetCount(a1);
    if (v11 >= 1)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = CMSMVAUtility_GetPortAtIndex(a1, j);
        v15 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
        ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
        if (v15)
        {
          v17 = ValueAtIndex;
          v23.length = CFArrayGetCount(v15);
          v23.location = 0;
          if (CFArrayContainsValue(v15, v23, v17))
          {
            CMSM_IDSConnection_RemovePortFromSharedAudioRoutePortIDs(v14);
          }

          CFRelease(v15);
        }

        v18 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
        v19 = v18;
        if (v18 && CFArrayGetCount(v18))
        {
          goto LABEL_23;
        }

        CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToLocal(0);
        CMSM_IDSConnection_ResetRemotePlayingInfo();
        CMSM_IDSConnection_StopWaitForRemoteToReplyWithInitialPlayingInfoTimer();
        v20 = dispatch_get_global_queue(0, 0);
        MXDispatchAsync("vaemUpdateSharedAudioRouteState", "CMSessionManager_VAEndpointManager.m", 10647, 0, 0, v20, &__block_literal_global_71);
        cmsmUpdateEnableSharedAudioRouteSyntheticMute(0, 0, 0, 0, 1, 0);
        if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote())
        {
          CMSMNotificationUtility_PostPickableRoutesDidChange(1, v21);
        }

        if (v19)
        {
LABEL_23:
          CFRelease(v19);
        }
      }
    }
  }

  return v6;
}

const __CFArray *CMSMVAUtility_GetPortOfTypeInArray(int a1, CFArrayRef theArray)
{
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (vaeGetPortTypeFromPortID(valuePtr) == a1)
        {
          break;
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }

      v2 = valuePtr;
      if (valuePtr)
      {
        v9 = vaeCopyNameForPort(valuePtr);
        if (v9)
        {
          CFRelease(v9);
        }
      }
    }
  }

  return v2;
}

uint64_t FigRouteDiscoveryManagerGetNotificationQueue()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = &qword_1EB75D480;
  if (!qword_1EB75D478)
  {
    v0 = 16;
  }

  return *v0;
}

uint64_t __vaemVADSerializationListener_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  theDict = 0;
  v15 = 0;
  p_theDict = 0;
  FigSimpleMutexLock();
  v14 = *(a1 + 32);
  LODWORD(v15) = 8;
  p_theDict = &theDict;
  LODWORD(v17) = 8;
  v12 = 0x676C6F6269757064;
  v13 = 0;
  if (CMSMVAUtility_AudioObjectSetPropertyData(dword_1EB75E0AC, &v12, 0, 0, 32, &v14))
  {
    v2 = 1;
  }

  else
  {
    v2 = theDict == 0;
  }

  if (v2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    Value = CFDictionaryGetValue(theDict, @"route change reason");
    if (Value)
    {
      valuePtr[0] = 0;
      CFNumberGetValue(Value, kCFNumberSInt32Type, valuePtr);
      v5 = CMSMVAUtility_MapVADReasonToCMSReason(valuePtr[0]);
      if (v5 != 9)
      {
        IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(v5, v6);
        if (IsAdditiveRoutingEnabled && !MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(IsAdditiveRoutingEnabled, v8))
        {
          v9 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyAndUpdateSessionInformation:"copyAndUpdateSessionInformation:", [(__CFDictionary *)theDict objectForKey:0x1F2897690]];
        }

        else
        {
          v9 = 0;
        }

        vaemAQMERouteChanged(theDict, qword_1EB75E190, v9);
        vaemVADRouteChangeListener(0, theDict, v10, 0, qword_1EB75E190, 1);
      }
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return FigSimpleMutexUnlock();
}

void CMSMNotificationUtility_PostAvailableVirtualFormatsDidChange(uint64_t a1, uint64_t a2)
{
  v2 = MXGetNotificationSenderQueue(a1, a2);

  MXDispatchAsync("CMSMNotificationUtility_PostAvailableVirtualFormatsDidChange", "CMSessionManager_NotificationUtilities.m", 1296, 0, 0, v2, &__block_literal_global_39_0);
}

CFArrayRef vaemCopyVirtualFormatsSupported()
{
  outData = 0;
  Copy = 0;
  if (vaemGetStream0([+[MXSessionManager defaultVADID] sharedInstance])
  {
    Mutable = 0;
  }

  else
  {
    Mutable = 0;
    if (outData)
    {
      if (vaemCopySupportedStreamFormats())
      {
        Copy = 0;
        Mutable = 0;
      }

      else
      {
        v2 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        Copy = CFArrayCreateCopy(v2, Mutable);
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

BOOL vaemIsVolumeRampInProgress(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v8 = *MEMORY[0x1E69E9840];
  if (vaemDeviceSupportsVolumeRamp(a1, a2))
  {
    inAddress = *"spmrptuo";
    ioDataSize = 4;
    if (!AudioObjectGetPropertyData(v2, &inAddress, 0, 0, &ioDataSize, &inAddress + 12))
    {
      return HIDWORD(inAddress) == 1;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_7;
  }

  if (dword_1EB75DE40)
  {
    LODWORD(inAddress) = 0;
    BYTE12(inAddress) = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
LABEL_7:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t CMSUtility_ResetIsPlayingStates(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [a1 setClientIsPlaying:0];
  [a1 setHapticEngineIsPlaying:0];
  v2 = [a1 copyMXSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 getIsPlaying])
        {
          [v7 resetIsPlayingStates];
        }

        if ([v7 getIsPlayingOutput])
        {
          [v7 setIsPlayingOutput:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [a1 setSomeMXSessionIsPlaying:0];
  [a1 setIsPlayingOutput:0];
  [a1 setDoesntActuallyPlayAudio:0];
  [a1 restoreSavedHWControlFlagsForClientThatDoesActuallyPlayAudio];
  return cmsSetIsPlaying(a1, 0);
}

uint64_t CMSMDeviceState_ScreenIsBlankedByProximitySensor()
{
  if (byte_1EB75D360)
  {
    return byte_1EB75D358;
  }

  state64[1] = v0;
  state64[2] = v1;
  state64[0] = 0;
  if (notify_get_state(dword_1EB75D35C, state64))
  {
    v3 = 1;
  }

  else
  {
    v3 = state64[0] == 0;
  }

  return !v3;
}

void cmsmGetAndSetVolumePreferencesForNonActiveVolumeClient(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, CFTypeRef *a6, const void *a7, _BYTE *a8, float a9, _BYTE *a10, float *a11, _BYTE *a12, _BYTE *a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a8)
  {
    return;
  }

  if (!a11 || a12 == 0)
  {
    return;
  }

  v17 = a8;
  v46 = 0;
  cf = 0;
  v45 = 0;
  *v43 = 0u;
  *v44 = 0u;
  CMSUtility_CopyCurrentCategoryAndDeviceRoute(a1, &cf, &v46, &v43[1], &v44[1], v44);
  v23 = +[MXSessionManager sharedInstance];
  v24 = [(MXSessionManager *)v23 getUncustomizedCategory:cf];
  if (v24)
  {
    v24 = CFRetain(v24);
  }

  cf = v24;
  v48 = *v43;
  v49 = *v44;
  v50 = v45;
  v43[0] = PVMGetMappedEndpointType(&v48);
  if (a3 > 7)
  {
    if (a3 <= 10)
    {
      if (a3 == 8)
      {
        if (!a13)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (a3 == 9)
        {
          v48 = *v43;
          v49 = *v44;
          v50 = v45;
          if (!PVMIsCurrentDeviceRoute(&v48))
          {
            goto LABEL_55;
          }

          goto LABEL_48;
        }

        if (!a13)
        {
          goto LABEL_55;
        }

        v48 = *v43;
        v49 = *v44;
        v50 = v45;
        if (!PVMIsCurrentDeviceRoute(&v48))
        {
          *a13 = 0;
          goto LABEL_55;
        }
      }

      *a13 = [a1 userMuted];
      goto LABEL_55;
    }

    if ((a3 - 11) >= 3)
    {
      if (a3 != 14)
      {
        goto LABEL_55;
      }

      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      v32 = PVMGetVolumePreference(cf, v46, &v48);
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      PVMSetRawVolumePreference(cf, v46, &v48, a2, a14, a16, a9);
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      v33 = PVMGetVolumePreference(cf, v46, &v48);
      *a11 = v33;
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xEu, a16, v32, v33);
      v17 = a10;
      if (!dword_1EB75DE40)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (!a7)
    {
      goto LABEL_55;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v46)
    {
      CFRelease(v46);
      v46 = 0;
    }

    v27 = CFRetain(a7);
    cf = v27;
    if (a3 == 12)
    {
      v30 = a10;
      if (!a15)
      {
        vaemUnmuteFullMuteIfMuted();
        v27 = cf;
      }

      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      v41 = PVMGetVolumePreference(v27, v46, &v48);
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      PVMSetVolumePreference(cf, v46, a16, &v48, a2, a14, a9, 0.0, 0.0);
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xCu, a16, v41, a9);
      if (!dword_1EB75DE40)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (a3 != 11)
      {
LABEL_54:
        v48 = *v43;
        v49 = *v44;
        v50 = v45;
        *a11 = PVMGetVolumePreference(cf, v46, &v48);
        goto LABEL_55;
      }

      vaemUnmuteFullMuteIfMuted();
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      v28 = PVMGetVolumePreference(cf, v46, &v48);
      *a11 = v28 + a9;
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      PVMSetVolumePreference(cf, v46, a16, &v48, a2, a14, v28 + a9, 0.0, 0.0);
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      v29 = PVMGetVolumePreference(cf, v46, &v48);
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xBu, a16, v28, v29);
      v30 = a10;
      if (!dword_1EB75DE40)
      {
LABEL_53:
        *v30 = 1;
        goto LABEL_54;
      }
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_53;
  }

  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        vaemUnmuteFullMuteIfMuted();
        v48 = *v43;
        v49 = *v44;
        v50 = v45;
        v34 = PVMGetVolumePreference(cf, v46, &v48);
        v48 = *v43;
        v49 = *v44;
        v50 = v45;
        PVMSetVolumePreference(cf, v46, a16, &v48, a2, a14, v34 + a9, 0.0, 0.0);
        v48 = *v43;
        v49 = *v44;
        v50 = v45;
        v35 = PVMGetVolumePreference(cf, v46, &v48);
        *a11 = v35;
        MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(4u, a16, v34, v35);
        v17 = a10;
        if (dword_1EB75DE40)
        {
LABEL_40:
          v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        vaemUnmuteFullMuteIfMuted();
        v48 = *v43;
        v49 = *v44;
        v50 = v45;
        v25 = PVMGetVolumePreference(cf, v46, &v48);
        v48 = *v43;
        v49 = *v44;
        v50 = v45;
        PVMSetVolumePreference(cf, v46, a16, &v48, a2, a14, a9, 0.0, 0.0);
        v48 = *v43;
        v49 = *v44;
        v50 = v45;
        v26 = PVMGetVolumePreference(cf, v46, &v48);
        *a11 = v26;
        MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(5u, a16, v25, v26);
        v17 = a10;
        if (dword_1EB75DE40)
        {
          goto LABEL_40;
        }
      }

LABEL_49:
      *v17 = 1;
      goto LABEL_55;
    }

    if (a3 != 6)
    {
LABEL_48:
      v40 = [a1 userMuted];
      *a12 = v40 ^ (MXCoreSessionSetProperty(a1, @"UserMuted") == 0);
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  switch(a3)
  {
    case 1:
      vaemUnmuteFullMuteIfMuted();
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      v37 = PVMGetVolumePreference(cf, v46, &v48);
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      PVMSetVolumePreference(cf, v46, a16, &v48, a2, a14, v37 + a9, 0.0, 0.0);
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      *a11 = PVMGetVolumePreference(cf, v46, &v48);
      *a10 = 1;
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(1u, a16, v37, *a11);
      if (!dword_1EB75DE40)
      {
        break;
      }

      goto LABEL_42;
    case 2:
      vaemUnmuteFullMuteIfMuted();
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      v39 = PVMGetVolumePreference(cf, v46, &v48);
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      PVMSetVolumePreference(cf, v46, a16, &v48, a2, a14, a9, 0.0, 0.0);
      v48 = *v43;
      v49 = *v44;
      v50 = v45;
      *a11 = PVMGetVolumePreference(cf, v46, &v48);
      *a10 = 1;
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(2u, a16, v39, *a11);
      if (!dword_1EB75DE40)
      {
        break;
      }

LABEL_42:
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      break;
    case 3:
      goto LABEL_54;
  }

LABEL_55:
  if (a6)
  {
    *a6 = cf;
LABEL_59:
    cf = 0;
    goto LABEL_60;
  }

  if (cf)
  {
    CFRelease(cf);
    goto LABEL_59;
  }

LABEL_60:
  if (v46)
  {
    CFRelease(v46);
    v46 = 0;
  }

  if (v44[1])
  {
    CFRelease(v44[1]);
    v44[1] = 0;
  }

  if (v43[1])
  {
    CFRelease(v43[1]);
    v43[1] = 0;
  }

  if (v44[0])
  {
    CFRelease(v44[0]);
  }
}

BOOL CMSUtility_PlaysToCarMainAudio(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  [a1 audioCategory];
  v2 = 0;
  if (!FigCFEqual())
  {
    [a1 audioCategory];
    if (!FigCFEqual() && !CMSUtility_PlaysToCarAltAudio(a1) && CMSUtility_DoesSessionActuallyPlayAudio(a1))
    {
      v2 = 1;
    }
  }

  if ([a1 isTheAssistant] && FigRoutingManager_iOSIsCarPlayAuxStreamSupported())
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  return v2;
}

uint64_t CMSUtility_DoesSessionActuallyPlayAudio(void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!a1 || ![a1 doesntActuallyPlayAudio])
  {
    return 1;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t FigEndpointCentralRequestResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  if (!a1)
  {
    goto LABEL_13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_13;
  }

  v9 = DerivedStorage;
  v10 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v10;
  v20 = *(a3 + 32);
  v11 = central_ConstructModeChangeRequestToGet(a5, a2, v19, v22);
  if (v11)
  {
    v16 = v11;
    goto LABEL_17;
  }

  v12 = *(v9 + 24);
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v14 = fsmcontroller_RequestModeChange(v12, v22, CStringPtrAndBufferToFree, v26, 0);
  if (FigCFEqual())
  {
    v15 = DWORD2(v26[0]);
  }

  else
  {
    if (!FigCFEqual())
    {
      v16 = 4294954311;
      goto LABEL_17;
    }

    v15 = v26[0];
  }

  v16 = 4294954311;
  if (!v14 && v15 == 2)
  {
    if (a5)
    {
      if ((v23 - 20) > 3)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(&off_1E7AEA590 + (v23 - 20));
      }

      v16 = 0;
      *a5 = v17;
      goto LABEL_17;
    }

LABEL_13:
    v16 = 0;
  }

LABEL_17:
  free(v21);
  return v16;
}

uint64_t fsmcontroller_RequestModeChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (a1)
  {
    v5 = *(a1 + 24);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __fsmcontroller_RequestModeChange_block_invoke;
    v8[3] = &unk_1E7AEA980;
    v8[4] = &v10;
    v8[5] = a1;
    v8[6] = a2;
    v8[7] = a3;
    v8[8] = a4;
    v9 = a5;
    MXDispatchSync("fsmcontroller_RequestModeChange", "FigStarkMode.m", 1340, 0, 0, v5, v8);
    v6 = *(v11 + 6);
  }

  else
  {
    v6 = 4294950566;
    v13 = -16730;
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t CMSUtility_ShouldBorrowCarMainAudio(void *a1)
{
  if (a1)
  {
    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    if (-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [a1 audioCategory]))
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioMode];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    if ([a1 hasPhoneCallBehavior])
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual() || ([a1 isTheAssistant] & 1) != 0)
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (!FigCFEqual())
    {
      [a1 audioCategory];
      if (!FigCFEqual())
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    v2 = [a1 interruptionStyle] - 1;
    if (v2 > 7)
    {
LABEL_29:
      LOBYTE(v3) = 1;
    }

    else
    {
      return (0x1010100010100uLL >> (8 * v2));
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

uint64_t central_ConstructModeChangeRequestToGet(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *(a3 + 16);
  v6 = *(a3 + 24);
  *a4 = 0x200000002;
  if (FigCFEqual())
  {
    v7 = 32;
  }

  else
  {
    if (!FigCFEqual())
    {
      return 4294949808;
    }

    v7 = 8;
  }

  v8 = (a4 + v7);
  if (a1)
  {
    if (FigCFEqual())
    {
      v9 = 500;
      v10 = 0x1F400000016;
    }

    else
    {
      FigCFEqual();
      v10 = 0x1F400000014;
      v9 = 0x6400000064;
    }

    *v8 = v10;
    v8[2] = v9;
  }

  *(a4 + 60) = v13;
  *(a4 + 56) = v6;
  if ((v6 & 0xFFFFFFFE) == 0xA)
  {
    *(v8 + 4) = 500;
    v11 = *(a4 + 60);
  }

  else
  {
    v11 = v13;
  }

  if (v11 == 1)
  {
    *(v8 + 4) = 1000;
  }

  if (FigCFEqual() || (result = FigCFEqual(), result))
  {
    result = 0;
    *(v8 + 4) = 1000;
  }

  return result;
}

void *CMSUtility_PlaysToCarAltAudio(void *result)
{
  if (result)
  {
    v1 = result;
    [result audioCategory];
    if (FigCFEqual() || ([v1 audioCategory], result = FigCFEqual(), result))
    {
      [v1 audioMode];
      return (FigCFEqual() != 0);
    }
  }

  return result;
}

uint64_t vaemConnectedPortsPropertyListener(uint64_t a1, uint64_t a2)
{
  v2 = MXGetSerialQueue(a1, a2);
  MXDispatchAsync("vaemConnectedPortsPropertyListener", "CMSessionManager_VAEndpointManager.m", 11139, 0, 0, v2, &__block_literal_global_135);
  return 0;
}

uint64_t fsmcontroller_GetCurrentMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294950566;
  }

  if (!a2)
  {
    return 4294949645;
  }

  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_15();
  MXDispatchSync(v2, v3, v4, v5, v6, v7, v8);
  return 0;
}

MXAudioStatistics *MXSessionBeginInterruption_WithSecTaskAndFlags(void *a1, uint64_t a2, MXAudioStatistics *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__6;
  v38 = __Block_byref_object_dispose__6;
  v39 = a1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (!a1)
  {
    a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    *(v41 + 6) = a3;
    goto LABEL_8;
  }

  v6 = objc_autoreleasePoolPush();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (isSessionSidekick(a1))
  {
    v8 = [a1 activate];
    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
LABEL_14:
    v17 = MXGetSerialQueue(isKindOfClass, v12);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __MXSessionBeginInterruption_WithSecTaskAndFlags_block_invoke;
    v23[3] = &unk_1E7AE7B80;
    v23[4] = &v40;
    v23[5] = &v34;
    v23[8] = a2;
    v23[9] = a3;
    v23[6] = &v26;
    v23[7] = &v30;
    MXDispatchAsyncAndWait("MXSessionBeginInterruption_WithSecTaskAndFlags", "MXSession_CInterfaceCommon.m", 794, 0, 0, v17, v23);
    a3 = +[MXAudioStatistics sharedInstance];
    v18 = [(MXAudioStatistics *)a3 sendSinglePerformanceMessageForRoutine:"MXSessionBeginInterruption_WithSecTaskAndFlags" operationTime:FigGetUpTimeNanoseconds() - UpTimeNanoseconds details:0];
    if (!MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v18, v19))
    {
      goto LABEL_5;
    }

    a3 = v35[5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    [v35[5] setInterruptionCalledOffAudioControlQueue:0];
    if (*(v41 + 6))
    {
      goto LABEL_5;
    }

    v8 = mxsession_handleAsyncDuckingSleep(v35[5], *(v27 + 24), v31[6]);
LABEL_4:
    *(v41 + 6) = v8;
LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v13 = +[MXSessionManager sharedInstance];
  v14 = -[MXSessionManager prepareSessionActivationBeforeACQDispatch:](v13, "prepareSessionActivationBeforeACQDispatch:", [v35[5] getCoreSession]);
  *(v41 + 6) = v14;
  if (!v14)
  {
    isKindOfClass = MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v14, v15);
    if (isKindOfClass)
    {
      isKindOfClass = [v35[5] setInterruptionCalledOffAudioControlQueue:1];
    }

    goto LABEL_14;
  }

  v25 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v9 = 0;
  a3 = *(v41 + 6);
LABEL_6:
  objc_autoreleasePoolPop(v6);
  if (v9)
  {
    a3 = *(v41 + 6);
  }

LABEL_8:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
  return a3;
}

void sub_1B18305B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContextResilientRemote_CopySelectedRouteDescriptor(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CopySelectedRouteDescriptor_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t FigRoutingContextXPCHandleCopySelectedRouteDescriptorMessage(uint64_t a1)
{
  if (*(*(OUTLINED_FUNCTION_30_1(a1) + 16) + 32))
  {
    v2 = OUTLINED_FUNCTION_26_1();
    v4 = v3(v2);
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      if (!*(v1 + 3))
      {
        v5 = frcXPCServer_copySanitizedRouteDescriptor(cf);
        v6 = v5;
        v7 = cf;
        cf = v5;
        if (v5)
        {
          CFRetain(v5);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }

      FigXPCMessageSetCFDictionary();
      v8 = 0;
    }
  }

  else
  {
    v8 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t routingContext_CopySelectedRouteDescriptor(uint64_t a1, void *a2)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    theArray = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    IsOperationOnSystemInputContextAllowedInternal = FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors(*(DerivedStorage + 8), &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        *a2 = ValueAtIndex;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    v7 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_CopySelectedRouteDescriptor" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v7);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

float CMSUtility_GetUserVolume(void *a1)
{
  v11 = 0;
  *v9 = 0u;
  *v10 = 0u;
  v7 = 0;
  cf = 0;
  v1 = 0.5;
  if (!CMSUtility_CopyCurrentCategoryAndDeviceRoute(a1, &cf, &v7, &v9[1], &v10[1], v10))
  {
    v2 = +[MXSessionManager sharedInstance];
    v3 = [(MXSessionManager *)v2 getUncustomizedCategory:cf];
    v5[0] = *v9;
    v5[1] = *v10;
    v6 = v11;
    v1 = PVMGetVolumePreference(v3, v7, v5);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v7)
  {
    CFRelease(v7);
    v7 = 0;
  }

  if (v9[1])
  {
    CFRelease(v9[1]);
    v9[1] = 0;
  }

  if (v10[1])
  {
    CFRelease(v10[1]);
    v10[1] = 0;
  }

  if (v10[0])
  {
    CFRelease(v10[0]);
  }

  return v1;
}

uint64_t FigRoutingManagerCopyActiveNeroVisualStream(uint64_t a1)
{
  theArray = 0;
  v8 = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpoints(a1, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v2 = Count;
      v3 = 0;
      v4 = *MEMORY[0x1E69626C8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, v4))
        {
          break;
        }

        if (v2 == ++v3)
        {
          goto LABEL_8;
        }
      }

      FigEndpointCopyFirstStreamOfType();
    }

LABEL_8:
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  return v8;
}

const void *FigRoutingManagerCopyActiveNeroVisualStreamInfo(uint64_t a1)
{
  v5 = 0;
  result = FigRoutingManagerCopyActiveNeroVisualStream(a1);
  if (result)
  {
    v2 = result;
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E6962580], *MEMORY[0x1E695E480], &v5);
    }

    CFRelease(v2);
    return v5;
  }

  return result;
}

uint64_t vaemGetDownlinkMute()
{
  v1 = 0;
  if (!qword_1EB75E070)
  {
    return 0;
  }

  qword_1EB75E070(0, &v1);
  return (v1 >> 1) & 1;
}

uint64_t central_UnborrowScreen(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v4 = 0x200000002;
  LODWORD(v5) = 23;
  central_requestCarModeChange(a1, &v4, a2, a3);
  return 0;
}

void fsm_requestResourceModeChangeUnborrowWithoutBorrowID(int a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  while (Count-- >= 1)
  {
    CFArrayGetValueAtIndex(*(a2 + 16), Count);
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    if (!a1)
    {
      CFArrayRemoveValueAtIndex(*(a2 + 16), Count);
      return;
    }
  }
}

uint64_t mxsession_handleAsyncDuckingSleep(void *a1, int a2, float a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0)
  {
    return 0;
  }

  v6 = +[MXSessionManager sharedInstance];
  *&v7 = a3;
  [(MXSessionManager *)v6 sleepForAsyncDucking:a2 != 0 duration:v7];
  if (objc_msgSend_isActive([a1 getCoreSession]))
  {
    return 0;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 4294951609;
}

void vaemUpdateSystemHasAudioInputDeviceState()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = vaemSystemHasAudioInputDeviceForRouteConfiguration(1668309362, 1768776806);
  v1 = vaemSystemHasAudioInputDeviceForRouteConfiguration(1668313666, 1768776806);
  v2 = v1;
  v3 = byte_1EB75D159;
  if (byte_1EB75D159 == v0)
  {
    if (byte_1EB75D15A == v1 || dword_1EB75DE40 == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!dword_1EB75DE40)
  {
    goto LABEL_10;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v3 = byte_1EB75D159;
LABEL_10:
  if (v3 != v0)
  {
    byte_1EB75D159 = v0;
    CMSMNotificationUtility_PostSystemHasAudioInputDeviceDidChange();
  }

LABEL_12:
  if (byte_1EB75D15A != v2)
  {
    byte_1EB75D15A = v2;
    CMSMNotificationUtility_PostSystemHasAudioInputDeviceExcludingBluetoothDidChange();
  }
}

void __FigRoutingContextResilientRemoteCopySystemAudioContext_block_invoke_2(uint64_t a1)
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

uint64_t CMSUtility_CopyCurrentCategoryAndDeviceRoute(void *a1, NSDictionary **a2, void *a3, CFTypeRef *a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v19 = 0;
  cf = 0;
  v18 = 0;
  if ([a1 audioCategory])
  {
    v12 = CFRetain([a1 audioCategory]);
    v13 = [a1 audioMode];
    v14 = [a1 activationContext];
    v15 = [a1 prefersBluetoothHighQualityContentCapture];
    if (v13)
    {
      CFRetain(v13);
    }
  }

  else
  {
    v12 = CFRetain(@"Audio/Video");
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  if (!objc_msgSend_isActive(a1))
  {
    v16 = CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(v12, v13, v14, v15, 0, &cf, &v19, &v18);
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  PVMCopyCurrentDeviceRoute(&cf, &v19, &v18);
  v16 = 0;
  if (a2)
  {
LABEL_9:
    *a2 = v12;
    v12 = 0;
  }

LABEL_10:
  if (a3)
  {
    *a3 = v13;
    v13 = 0;
  }

  if (a4)
  {
    *a4 = cf;
    cf = 0;
  }

  if (a5)
  {
    *a5 = v19;
    v19 = 0;
  }

  if (a6)
  {
    *a6 = v18;
    v18 = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t FigVAEndpointManagerCopyPropertyForAudioDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, 0, a5);
}

uint64_t _VAEndpointManager_CopyPropertyForAudioDevice(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  CMBaseObjectGetDerivedStorage();
  v10 = 4294950586;
  if (a2 && a4 && a6)
  {
    *a6 = 0;
    if (CFEqual(a2, @"VAEM_Stream0"))
    {
      LODWORD(outData) = 0;
      v11 = OUTLINED_FUNCTION_9_2();
      Stream0 = vaemGetStream0(v11, v12, v13);
LABEL_6:
      v10 = Stream0;
      v15 = MXCFNumberCreateFromSInt64(outData);
LABEL_14:
      *a6 = v15;
      return v10;
    }

    if (CFEqual(a2, @"VAEM_DeviceFormatID"))
    {
      LODWORD(outData) = 0;
      v25 = OUTLINED_FUNCTION_9_2();
      vaemGetDeviceFormatID(v25, v26, v27);
      goto LABEL_6;
    }

    if (CFEqual(a2, @"VAEM_DeviceVolume"))
    {
      outData = 0x6F757470766F6C6DLL;
      v35 = 0;
      OUTLINED_FUNCTION_7_1();
      AudioObjectGetPropertyData(v16, v17, v18, v19, v20, v21);
      CurrentLatencyForVADIDAndScope = 0.0;
LABEL_10:
      v15 = MXCFNumberCreateFromFloat32(CurrentLatencyForVADIDAndScope);
LABEL_11:
      v10 = 0;
      goto LABEL_14;
    }

    if (CFEqual(a2, @"VAEM_DecibelEquivalentInVAD"))
    {
      LODWORD(outData) = *a5;
      v10 = vaemConvertToDecibelInVAD(a4, &outData);
      v15 = MXCFNumberCreateFromFloat32(*&outData);
      goto LABEL_14;
    }

    if (CFEqual(a2, @"VAEM_DeviceSampleRate"))
    {
      SampleRateForDevice = vaemGetSampleRateForDevice(a4);
      v15 = MXCFNumberCreateFromFloat64(SampleRateForDevice);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"VAEM_DeviceFormat"))
    {
      outData = 0;
      v28 = OUTLINED_FUNCTION_9_2();
      vaemCopyDeviceFormat(v28, v29, v30);
    }

    else
    {
      if (!CFEqual(a2, @"VAEM_AudioClockDevice"))
      {
        if (CFEqual(a2, @"VAEM_DetailedActiveAudioRoute"))
        {
          v15 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", a4];
          goto LABEL_11;
        }

        if (CFEqual(a2, @"VAEM_CurrentInputLatency"))
        {
          v32 = a4;
          v33 = 1;
        }

        else
        {
          if (!CFEqual(a2, @"VAEM_CurrentOutputLatency"))
          {
            return 0;
          }

          v32 = OUTLINED_FUNCTION_14_1();
        }

        CurrentLatencyForVADIDAndScope = vaemGetCurrentLatencyForVADIDAndScope(v32, v33);
        goto LABEL_10;
      }

      outData = 0;
      v31 = vaemCopyClockDeviceForAudioDevice(a4, &outData);
    }

    v10 = v31;
    *a6 = outData;
  }

  return v10;
}

float vaemGetCurrentLatencyForVADIDAndScope(uint64_t a1, int a2)
{
  v6[24] = *MEMORY[0x1E69E9840];
  v6[0] = 0.0;
  if (off_1EB75E078)
  {
    VADNameForVADID = CMSMUtility_GetVADNameForVADID(a1);
    off_1EB75E078(VADNameForVADID, a2 == 1, v6);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v6[0];
}

uint64_t vaemSetDeviceFormat(uint64_t a1, const void *a2, int a3)
{
  v185 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (dword_1EB75DE40)
  {
    LODWORD(v180[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (byte_1EB75D184)
  {
    return 4294954309;
  }

  Stream0 = vaemGetStream0(a1, 0, &outData);
  if (!Stream0 && outData)
  {
    v184 = 0;
    memset(v183, 0, sizeof(v183));
    vaemGetStreamASBD(outData, v183);
    if (v8)
    {
      return v8;
    }

    if (!a2)
    {
      goto LABEL_28;
    }

    if (CFEqual(a2, @"MATAtmos"))
    {
      if ((v183[2] & 0xFFFFFEFF) != 0x6D74622B)
      {
        LODWORD(Stream0) = 1836344107;
        v9 = vaemStreamSupportsFormat();
        v10 = vaemStreamSupportsFormat();
        if (v9 || (Stream0 = 1836343851, v10))
        {
          *&v180[0] = 0x40E7700000000000;
          DWORD2(v180[0]) = Stream0;
          *(v180 + 12) = xmmword_1B19D8640;
          *(&v180[1] + 12) = 0x1000000020;
          DWORD1(v180[2]) = 0;
          v181 = 0x6F75747073666D74;
          v182 = 0;
          OUTLINED_FUNCTION_7_1();
          Stream0 = CMSMVAUtility_AudioObjectSetPropertyData(v18, v19, v20, v21, 40, v22);
          v23 = [+[MXSessionManager sharedInstance](MXSessionManager updateDeviceSampleRate:"updateDeviceSampleRate:", a1];
          if (Stream0)
          {
            return Stream0;
          }

          if (dword_1EB75DE40)
          {
            v31 = OUTLINED_FUNCTION_4_8(v23, v24, v25, v26, v27, v28, v29, v30, v150, v155, v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v172);
            v39 = OUTLINED_FUNCTION_16_1(v31, v32, v33, v34, v35, v36, v37, v38, v151, v156, v161, v165, v167, v169, v173);
            if (OUTLINED_FUNCTION_3_0(v39))
            {
              OUTLINED_FUNCTION_12_2();
              OUTLINED_FUNCTION_1_5();
              OUTLINED_FUNCTION_2_4();
              _os_log_send_and_compose_impl(v40, v41, v42, v43, v44, v45, Stream0, v46);
            }

            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_13(v73, v74, v75, v76, v77);
          }

          goto LABEL_32;
        }

        v78 = OUTLINED_FUNCTION_11_1(v10, v11, v12, v13, v14, v15, v16, v17, v150, v155, v160, v172, outData, *type);
        v86 = OUTLINED_FUNCTION_17_2(v78, v79, v80, v81, v82, v83, v84, v85, v152, v157, v162, v175, outData, *type);
        if (OUTLINED_FUNCTION_3_0(v86))
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      return 0;
    }

    if (CFEqual(a2, @"AC-3"))
    {
      if (v183[2] == 1667326771)
      {
        return 0;
      }

      v47 = vaemStreamSupportsFormat();
      if (!v47)
      {
        v87 = OUTLINED_FUNCTION_11_1(v47, v48, v49, v50, v51, v52, v53, v54, v150, v155, v160, v172, outData, *type);
        v95 = OUTLINED_FUNCTION_17_2(v87, v88, v89, v90, v91, v92, v93, v94, v153, v158, v163, v176, outData, *type);
        if (OUTLINED_FUNCTION_3_0(v95))
        {
LABEL_36:
          OUTLINED_FUNCTION_8_3();
          OUTLINED_FUNCTION_2_4();
          v103 = _os_log_send_and_compose_impl(v96, v97, v98, v99, v100, v101, Stream0, v102);
LABEL_38:
          OUTLINED_FUNCTION_13(qword_1EB75DE38, 0, 1, v103, v103 != &v181);
          return 0;
        }

LABEL_37:
        v103 = 0;
        goto LABEL_38;
      }

      *&v180[0] = 0x40E7700000000000;
      *(v180 + 8) = xmmword_1B19D8650;
      *(&v180[1] + 8) = xmmword_1B19D8660;
      v55 = vaemSetStreamASBD(outData, v180, 0, a1);
      Stream0 = v55;
      if (!v55)
      {
        if (dword_1EB75DE40)
        {
          v63 = OUTLINED_FUNCTION_4_8(v55, v56, v57, v58, v59, v60, v61, v62, v150, v155, v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v172);
          if (os_log_type_enabled(v63, v170))
          {
            v64 = v174;
          }

          else
          {
            v64 = v174 & 0xFFFFFFFE;
          }

          if (v64)
          {
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_1_5();
            OUTLINED_FUNCTION_2_4();
            _os_log_send_and_compose_impl(v65, v66, v67, v68, v69, v70, v170, v71);
          }

          OUTLINED_FUNCTION_0_0();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        HDMILatencyMgr_SetIsPlayingAtmos();
      }
    }

    else
    {
LABEL_28:
      if (!a3 && v183[2] == 1819304813)
      {
        return 0;
      }

      memset(v180, 0, 40);
      v181 = 0;
      *type = 0;
      v72 = vaemCopySupportedStreamFormats();
      if (v72)
      {
        Stream0 = v72;
        free(v181);
        return Stream0;
      }

      v105 = *type;
      if (*type)
      {
        v106 = 0;
        v107 = 0;
        v108 = v181;
        v109 = *type;
        do
        {
          if (*(v108 + 2) == 1819304813)
          {
            if (v107 && *(v108 + 7) != 2)
            {
              v107 = 1;
            }

            else
            {
              v110 = *v108;
              v111 = v108[1];
              *&v180[2] = *(v108 + 4);
              v180[0] = v110;
              v180[1] = v111;
              v112 = *v108;
              *&v180[0] = *v108;
              v106 = HIDWORD(v111);
              v107 = 1;
              if (HIDWORD(v111) == 2 && v112 == 44100.0)
              {
                goto LABEL_60;
              }
            }
          }

          v108 = (v108 + 56);
          --v109;
        }

        while (v109);
        if (v106 != 2)
        {
          v113 = v181;
          while (v113[2] != 1819304813 || *v113 != 44100.0)
          {
            v113 += 14;
            if (!--v105)
            {
              goto LABEL_60;
            }
          }

          v114 = *(v113 + 4);
          v115 = *(v113 + 1);
          *(&v180[0] + 1) = *(v113 + 1);
          v180[1] = v115;
          *&v180[2] = v114;
          *&v180[0] = 0x40E5888000000000;
        }
      }

LABEL_60:
      free(v181);
      v181 = 0x6F75747073666D74;
      v182 = 0;
      OUTLINED_FUNCTION_7_1();
      Stream0 = CMSMVAUtility_AudioObjectSetPropertyData(v116, v117, v118, v119, 40, v120);
      v121 = [+[MXSessionManager sharedInstance](MXSessionManager updateDeviceSampleRate:"updateDeviceSampleRate:", a1];
      if (!Stream0)
      {
        if (dword_1EB75DE40)
        {
          v129 = OUTLINED_FUNCTION_4_8(v121, v122, v123, v124, v125, v126, v127, v128, v150, v155, v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v172);
          v137 = OUTLINED_FUNCTION_16_1(v129, v130, v131, v132, v133, v134, v135, v136, v154, v159, v164, v166, v168, v171, v177);
          if (OUTLINED_FUNCTION_3_0(v137))
          {
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_1_5();
            OUTLINED_FUNCTION_2_4();
            _os_log_send_and_compose_impl(v138, v139, v140, v141, v142, v143, Stream0, v144);
          }

          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_13(v145, v146, v147, v148, v149);
        }

LABEL_32:
        HDMILatencyMgr_SetIsPlayingAtmos();
        return 0;
      }
    }
  }

  return Stream0;
}