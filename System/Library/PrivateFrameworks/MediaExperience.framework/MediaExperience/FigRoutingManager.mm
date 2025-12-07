@interface FigRoutingManager
@end

@implementation FigRoutingManager

void __FigRoutingManager_CloseRelayCommChannels_block_invoke(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyFigEndpointFromAggregateEndpointForClientUse(*(a1 + 32), cf);
  v1 = cf[0];
  if (cf[0])
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = *(*(CMBaseObjectGetVTable() + 24) + 144);
      if (v3)
      {
        v3(v1);
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

dispatch_queue_t __FigRoutingManager_GetDataTransmissionQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mx.datatransmissionqueue", v0);
  FigRoutingManager_GetDataTransmissionQueue_dataTransmissionQueue = result;
  return result;
}

void __FigRoutingManager_iOSEndpointActivateCompletionCallback_block_invoke(uint64_t a1)
{
  v55[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  if (*(a1 + 40))
  {
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], v2, &v53);
    }

    v5 = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, *MEMORY[0x1E69620F8], v2, &v52);
    }

    v7 = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(v7, *MEMORY[0x1E6961FD0], v2, &v51);
    }

    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *MEMORY[0x1E69621B0], v2, &v50);
    }
  }

  if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(*(a1 + 72), &cf);
  v12 = *(a1 + 104);
  if (v12 == -16727)
  {
    goto LABEL_93;
  }

  if (v12)
  {
    FigRoutingManagerCrossfadePlayback(*(a1 + 40), *(a1 + 64), 0, 0);
    if (FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626A8]))
    {
      FigEndpointUIAgentHelper_CleanupPrompt(v53, v52, v50, 0);
    }

    v22 = *(a1 + 40);
    if (cf == v22)
    {
      if (FigRoutingManagerIsEndpointOfType(v22, *MEMORY[0x1E69626C0]))
      {
        FigRoutingManagerProcessCarPlayEndpointDeactivation(1, *(a1 + 40));
      }

      FigRoutingManager_iOSHandleEndpointActivationError(*(a1 + 40), *(a1 + 56), *(a1 + 104), *(a1 + 48), *(a1 + 72), *(a1 + 64));
    }

    goto LABEL_93;
  }

  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626A8]))
  {
    v14 = v52;
    v13 = v53;
    v15 = v50;
    v16 = FigCFEqual();
    FigEndpointUIAgentHelper_CleanupPrompt(v13, v14, v15, v16);
  }

  v17 = *(a1 + 40);
  if (cf != v17 && !FigRoutingManagerIsEndpointOfType(v17, *MEMORY[0x1E69626B0]))
  {
    *type = 0;
    if (cf)
    {
      v25 = FigEndpointGetCMBaseObject();
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26)
      {
        v26(v25, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], type);
      }
    }

    if (!FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626C0]))
    {
      if (dword_1EB75DF20)
      {
        LODWORD(theArray) = 0;
        v45[0] = OS_LOG_TYPE_DEFAULT;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManager_iOSDeactivateEndpoint(*(a1 + 40), *(a1 + 48), 1);
      FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(*(a1 + 72), *(a1 + 40), @"configUpdateReasonEndedUserCancelled");
    }

    if (*type)
    {
      CFRelease(*type);
      *type = 0;
    }

    FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 0);
    goto LABEL_93;
  }

  FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 7);
  FigRoutingManagerRegisterForFigEndpointNotifications(*(a1 + 40));
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626C8]))
  {
    v55[0] = 0;
    v18 = *(a1 + 56);
    *valuePtr = v18;
    v19 = FigEndpointGetCMBaseObject();
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(v19, *MEMORY[0x1E6961F58], *MEMORY[0x1E695E480], v55);
      if (v55[0])
      {
        CFNumberGetValue(v55[0], kCFNumberSInt64Type, valuePtr);
        LOBYTE(v18) = valuePtr[0];
      }
    }

    FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(*(a1 + 40), v18, *(a1 + 48), *(a1 + 72), *(a1 + 64));
    FigRoutingManagerContextUtilities_AddActivatedEndpoint(*(a1 + 72), *(a1 + 40), *valuePtr, *(a1 + 48), *(a1 + 64), *(a1 + 80));
    v21 = v55[0];
    if (!v55[0])
    {
      goto LABEL_93;
    }

LABEL_73:
    CFRelease(v21);
    goto LABEL_93;
  }

  v23 = *MEMORY[0x1E69626B8];
  if (!FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626B8]))
  {
    if (!FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626B0]) || CMSMDeviceState_IsHomePodHub())
    {
LABEL_89:
      FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(*(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 72), *(a1 + 64));
      FigRoutingManagerContextUtilities_AddActivatedEndpoint(*(a1 + 72), *(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 64), *(a1 + 80));
      IsEndpointOfType = FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626C0]);
      if (IsEndpointOfType)
      {
        if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(IsEndpointOfType, v39))
        {
          FigRoutingManagerNotifyClientsOfCarPlayActivation();
        }

        CMSMNotificationUtility_PostCarPlayIsConnectedDidChange(1);
        notify_post("com.apple.coremedia.carplayisconnected");
        v40 = FigRoutingManager_iOSIsCarPlayAuxStreamSupported();
        CMSMNotificationUtility_PostCarPlayAuxStreamSupportDidChange(v40);
        FigRoutingManagerUtilities_RegisterAirPlayStreamCapabilitiesDidChangeListener(0, *(a1 + 40));
      }

      goto LABEL_93;
    }

    *type = 0;
    v28 = *MEMORY[0x1E6962270];
    v29 = *MEMORY[0x1E695E480];
    v30 = FigEndpointGetCMBaseObject();
    CMBaseObjectCopyProperty(v30, v28, v29, type);
    theArray = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 72), *(a1 + 40), &theArray);
    if ((!theArray || !CFArrayGetCount(theArray)) && (!*type || !CFArrayGetCount(*type)))
    {
      if (dword_1EB75DF20)
      {
        *v45 = 0;
        v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerAggregateAddLocalAirPlayEndpoint(*(a1 + 72), *(a1 + 40));
      goto LABEL_85;
    }

    if (theArray && CFArrayGetCount(theArray))
    {
      v31 = theArray;
      v32 = @"There are currently activating SubEndpoints: ";
    }

    else
    {
      if (!*type || !CFArrayGetCount(*type))
      {
        goto LABEL_85;
      }

      v31 = *type;
      v32 = @"There are activated SubEndpoints: ";
    }

    FigRoutingManagerLogEndpointIDs(v32, v31, 0, 1);
LABEL_85:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (*type)
    {
      CFRelease(*type);
    }

    goto LABEL_89;
  }

  *type = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(*(a1 + 72), type);
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(*(a1 + 72), &theArray);
  if (!CMSMVAUtility_IsA2DPPortAvailableForEndpoint(*(a1 + 40), 0))
  {
    FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 8);
    goto LABEL_70;
  }

  v46 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  *v45 = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(*(a1 + 72), 0, v45);
  if (dword_1EB75DF20)
  {
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v34 = Mutable;
  if (Mutable)
  {
    if (*v45)
    {
      CFArrayAppendValue(Mutable, *v45);
    }

    CFArrayAppendValue(v34, *(a1 + 40));
  }

  if (!v46)
  {
    goto LABEL_64;
  }

  if (!*type || CFArrayGetCount(*type) < 2 || !FigRoutingManagerAreAllEndpointsBluetoothShareable(*type))
  {
    if (v34 && FigRoutingManagerIsEndpointBluetoothShareable(*v45) && FigRoutingManagerIsEndpointBluetoothShareable(*(a1 + 40)))
    {
      v35 = *(a1 + 72);
      v36 = v34;
      goto LABEL_63;
    }

LABEL_64:
    if (FigRoutingManagerIsEndpointOfType(theArray, v23))
    {
      FigRoutingManagerRouteToBluetoothDevice(*(a1 + 72), theArray);
    }

    goto LABEL_66;
  }

  v35 = *(a1 + 72);
  v36 = *type;
LABEL_63:
  FigRoutingManagerEnableBluetoothSharingSession(v35, v36);
LABEL_66:
  if (*v45)
  {
    CFRelease(*v45);
    *v45 = 0;
  }

  if (v34)
  {
    CFRelease(v34);
  }

LABEL_70:
  if (*type)
  {
    CFRelease(*type);
    *type = 0;
  }

  v21 = theArray;
  if (theArray)
  {
    goto LABEL_73;
  }

LABEL_93:
  FigRoutingManagerDestroyEndpointActivateCompletionContext(*(a1 + 96));
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v53)
  {
    CFRelease(v53);
    v53 = 0;
  }

  if (v51)
  {
    CFRelease(v51);
    v51 = 0;
  }

  if (v50)
  {
    CFRelease(v50);
    v50 = 0;
  }

  if (v52)
  {
    CFRelease(v52);
    v52 = 0;
  }

  v41 = *(a1 + 72);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(a1 + 40);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(a1 + 64);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(a1 + 80);
  if (v44)
  {
    CFRelease(v44);
  }
}

void __FigRoutingManager_iOSEndpointDeactivateCompletionCallback_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v20 = 0;
  v2 = MEMORY[0x1E695E480];
  if (*(a1 + 40))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], *v2, &v20);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *(a1 + 64);
  v7 = MEMORY[0x1E69626C0];
  if (v6)
  {
    cf[0] = *v6;
    if (cf[0])
    {
LABEL_8:
      v8 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    cf[0] = 0;
  }

  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626C0]))
  {
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
    FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(0, *(a1 + 40));
  }

  else
  {
    if (!FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626C8]))
    {
      goto LABEL_8;
    }

    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(cf);
  }

  v8 = 1;
LABEL_15:
  v9 = *(a1 + 40);
  if (v9)
  {
    FigEndpointAggregateGetClassID();
    IsMemberOfClass = CMBaseObjectIsMemberOfClass();
    v11 = *(a1 + 40);
    if (!IsMemberOfClass)
    {
      goto LABEL_26;
    }

    *theArray = 0;
    v12 = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, *MEMORY[0x1E6962270], *v2, theArray);
      if (!*theArray)
      {
LABEL_24:
        v11 = *(a1 + 40);
        goto LABEL_26;
      }

      Count = CFArrayGetCount(*theArray);
      if (Count >= 1)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*theArray, i);
          FigRoutingManagerRemoveEndpointFromAggregate(v9, ValueAtIndex, 0, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
        }
      }
    }

    if (*theArray)
    {
      CFRelease(*theArray);
    }

    goto LABEL_24;
  }

  v11 = 0;
LABEL_26:
  FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(v11, *(a1 + 56), cf[0]);
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40), *v7))
  {
    FigRoutingManagerProcessCarPlayEndpointDeactivation(1, *(a1 + 40));
  }

  FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(cf[0], *(a1 + 40), *(a1 + 48));
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626B0]) || FigRoutingManagerIsEndpointOfType(*(a1 + 40), *MEMORY[0x1E69626A8]))
  {
    FigRoutingManagerRemoveCachedDelegateContext(*(a1 + 40), cf[0]);
  }

  if (cf[0])
  {
    v18 = v8;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  FigRoutingManagerDestroyEndpointDeactivateCompletionContext(*(a1 + 72));
  v19 = *(a1 + 40);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

void __FigRoutingManager_iOSDeactivateEndpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  FigRoutingManagerStopDeactivateAirPlayEndpointTimer(a1, a2);
  FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer(v3, v4);
  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __FigRoutingManager_iOSHandleEndpointFailedDelegate_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v55 = 0;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *(a1 + 32);
  if (!v4)
  {
    Value = 0;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v4, @"EndpointDelegateContextKey_RoutingContextUUID");
  v6 = *(a1 + 32);
  if (!v6)
  {
LABEL_7:
    v7 = 0;
LABEL_8:
    MutableCopy = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_9;
  }

  v7 = CFDictionaryGetValue(v6, @"EndpointDelegateContextKey_ClientRouteChangeOptions");
  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = CFDictionaryGetValue(v8, @"EndpointDelegateContextKey_InternalRouteChangeOptions");
  if (!v9)
  {
    goto LABEL_8;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v9);
LABEL_9:
  v11 = MutableCopy;
  v12 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(MutableCopy, @"RouteChangeOptionKey_IsRemoveOperation", *MEMORY[0x1E695E4D0]);
  v54 = 0;
  FigCFDictionaryGetInt32IfPresent();
  v13 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6961848]);
  v14 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6961690]);
  IsAirPlayDaemonEnabled = MX_FeatureFlags_IsAirPlayDaemonEnabled(v14, v15);
  v17 = *MEMORY[0x1E69626B0];
  if (IsAirPlayDaemonEnabled && FigRoutingManagerIsEndpointOfType(*(a1 + 48), *MEMORY[0x1E69626B0]) && !v14)
  {
    FigRoutingManagerHandleAggregateFailure(*(a1 + 48));
    goto LABEL_60;
  }

  if (FigRoutingManagerIsEndpointOfType(*(a1 + 48), v17))
  {
    v53 = 0;
    FigCFDictionaryGetInt64IfPresent();
    if (!v14)
    {
      LODWORD(v52) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_60;
    }

    if (FigRoutingManagerIsEndpointActivated(v14))
    {
      v52 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(CMBaseObject, *MEMORY[0x1E69620F8], v2, &v52);
      }

      v20 = FigEndpointGetCMBaseObject();
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v21)
      {
        v21(v20, *MEMORY[0x1E69621E8], v2, &v55);
      }

      v22 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v14, 0);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v49 = v22;
      FigCFDictionarySetValue();
      if (v54)
      {
        cf[0] = 0;
        v23 = FigEndpointGetCMBaseObject();
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v24)
        {
          v24(v23, *MEMORY[0x1E6962270], v2, cf);
        }

        RouteConfigUpdatedFailedPayload = FigRoutingContextUtilities_CreateRouteConfigUpdatedFailedPayload(0, v52, v54, cf[0]);
        FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(Value, @"routeConfigUpdated", RouteConfigUpdatedFailedPayload);
        if (RouteConfigUpdatedFailedPayload)
        {
          CFRelease(RouteConfigUpdatedFailedPayload);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      *type = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(Value, type);
      if (*type)
      {
        v50 = 0;
        v26 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(v26, @"RouteChangeOptionKey_IsRemoveOperation", v12);
        FigRoutingManagerCreateAggregateAddEndpointCompletionContext(Value, v26, v26, &v50);
        v27 = FigRoutingManagerAggregateShouldEndpointRemovalInterruptSystemMusicSessions(*type, v14, v50);
        FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(v50);
        if (v26)
        {
          CFRelease(v26);
        }

        if (*(a1 + 32))
        {
          FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(Value, 0, @"configUpdateReasonEndedFailed");
          v28 = *type;
          v29 = v14;
          v30 = Value;
          v31 = v7;
          v32 = v11;
        }

        else
        {
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v28 = *type;
          v29 = v14;
          v30 = 0;
          v31 = 0;
          v32 = 0;
        }

        if (FigRoutingManagerRemoveEndpointFromAggregate(v28, v29, v30, v31, v32, FigRoutingManagerAggregateRemoveEndpointCompletionCallback))
        {
          v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          FigRoutingManagerLogEndpointID(@"HandleEndpointFailedDelegate: Removed endpoint with ID from aggregate: ", v14, 0, 0);
        }
      }

      else
      {
        v27 = 0;
      }

      FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty(*(a1 + 48), *(a1 + 56), v27);
      if (FigCFEqual())
      {
        FigRoutingManager_iOSHandleStartupFailed(v54, Mutable);
      }

      if (*type)
      {
        CFRelease(*type);
        *type = 0;
      }

      if (v52)
      {
        CFRelease(v52);
        v52 = 0;
      }

      v39 = v49;
      if (v49)
      {
        goto LABEL_59;
      }
    }
  }

  else if (FigRoutingManagerIsEndpointActivated(*(a1 + 48)))
  {
    cf[0] = 0;
    v33 = FigEndpointGetCMBaseObject();
    v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v34)
    {
      v34(v33, *MEMORY[0x1E69620F8], v2, cf);
    }

    v35 = FigEndpointGetCMBaseObject();
    v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v36)
    {
      v36(v35, *MEMORY[0x1E69621E8], v2, &v55);
    }

    v37 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(*(a1 + 48), 0);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigRoutingManager_iOSDeactivateEndpoint(*(a1 + 48), *(a1 + 56), 0);
    if (FigRoutingManagerContextUtilities_GetContextType(Value) == 1)
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(Value, 0, @"configUpdateReasonEndedFailed");
    }

    else
    {
      FigRoutingManagerContextUtilities_SetPickedEndpoints(Value, 0, @"configUpdateReasonEndedFailed", v7, 0);
    }

    if (FigCFEqual())
    {
      FigRoutingManager_iOSHandleStartupFailed(v54, Mutable);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v37)
    {
      v39 = v37;
LABEL_59:
      CFRelease(v39);
    }
  }

LABEL_60:
  if (dword_1EB75DF20)
  {
    LODWORD(v53) = 0;
    LOBYTE(v52) = 0;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v43 = v53;
    v44 = v52;
    if (os_log_type_enabled(v42, v52))
    {
      v45 = v43;
    }

    else
    {
      v45 = v43 & 0xFFFFFFFE;
    }

    if (v45)
    {
      v56 = 136315906;
      v57 = "FigRoutingManager_iOSHandleEndpointFailedDelegate_block_invoke";
      v58 = 2114;
      v59 = v55;
      v60 = 1024;
      v61 = v54;
      v62 = 2114;
      v63 = v13;
      _os_log_send_and_compose_impl(v45, 0, cf, 128, &dword_1B17A2000, v42, v44, "-FigRoutingManager_iOSEndpointHelpers- %s: FigRoutingManager_iOSHandleEndpointFailedDelegate for %{public}@ with error=%d, failureType=%{public}@", &v56, 38);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v55)
  {
    CFRelease(v55);
    v55 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v46 = *(a1 + 48);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(a1 + 40);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(a1 + 32);
  if (v48)
  {
    CFRelease(v48);
  }
}

void __FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"EndpointDelegateContextKey_RoutingContextUUID");
    if (Value)
    {
      v4 = Value;
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (FigRoutingManagerContextUtilities_GetContextType(v4) == 9)
      {
        v16 = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v8(CMBaseObject, *MEMORY[0x1E69621E8], v5, &v16);
        }

        cf = 0;
        v9 = FigEndpointGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(v9, *MEMORY[0x1E69620F8], v5, &cf);
          v11 = cf;
        }

        else
        {
          v11 = 0;
        }

        CFDictionarySetValue(Mutable, @"deviceID", v11);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }

      CFDictionarySetValue(Mutable, @"commChannelUUID", *(a1 + 48));
      CFDictionarySetValue(Mutable, @"data", *(a1 + 56));
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(v4, @"didReceiveData", Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    CFRelease(v14);
  }
}

void __FigRoutingManager_HandleDidCloseCommChannelDelegate_block_invoke(void *a1)
{
  v15[24] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"EndpointDelegateContextKey_RoutingContextUUID");
    if (Value)
    {
      v4 = Value;
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (FigRoutingManagerContextUtilities_GetContextType(v4) == 9)
      {
        v15[0] = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v8(CMBaseObject, *MEMORY[0x1E69621E8], v5, v15);
        }

        cf = 0;
        v9 = FigEndpointGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(v9, *MEMORY[0x1E69620F8], v5, &cf);
        }

        FigCFDictionarySetValue();
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v15[0])
        {
          CFRelease(v15[0]);
        }
      }

      FigCFDictionarySetValue();
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(v4, @"commChannelDidClose", Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
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
}

@end