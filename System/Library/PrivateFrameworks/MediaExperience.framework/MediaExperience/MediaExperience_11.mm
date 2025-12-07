uint64_t FigRoutingManagerPickEndpointForContext(const void *a1, const void *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  cf[20] = *MEMORY[0x1E69E9840];
  if (FigRoutingManagerIsEndpointOfType(a2, *MEMORY[0x1E69626C0]))
  {
    if (dword_1EB75DF20)
    {
      LODWORD(cf[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMUtility_SetDoNotMakeStarkAudioPortRoutableFlag(0);
  }

  else if (FigRoutingManagerIsEndpointOfType(a2, *MEMORY[0x1E69626D8]))
  {
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], cf);
      v11 = cf[0];
    }

    else
    {
      v11 = 0;
    }

    if (CMSMVAUtility_GetPortFromCFNumber(v11) == 1886614639)
    {
      if (dword_1EB75DF20)
      {
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMUtility_SetDoNotMakeStarkAudioPortRoutableFlag(0);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  return routingManager_preprocessPickEndpoint(a2, a1, a1, a3, a4);
}

uint64_t routingManager_preprocessPickEndpoint(const void *a1, uint64_t a2, const void *a3, const __CFDictionary *a4, const __CFDictionary *a5)
{
  value[16] = *MEMORY[0x1E69E9840];
  FigRoutingContextUtilities_LogCurrentState();
  v91 = 0;
  v10 = MEMORY[0x1E695E480];
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69621E8], *v10, &v91);
    }
  }

  v13 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a4);
  FigRoutingManagerLogRoutingRequestDetails(@"preprocessPickEndpoint - ", a1, 0, 0, a3, v13);
  theArray = 0;
  v84 = a3;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(a3, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v15 = Count;
      if (CFArrayGetValueAtIndex(theArray, 0) == a1)
      {
        v19 = 0;
LABEL_30:
        if (dword_1EB75DF20)
        {
          LODWORD(v89) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        value[0] = 0;
        FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(a3, v19, value);
        FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(a3, v19);
        FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(a3, value[0]);
        FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a3, v13, a5);
        if (value[0])
        {
          CFRelease(value[0]);
        }

        v48 = 0;
        goto LABEL_127;
      }

      v16 = 1;
      while (1)
      {
        v17 = v16;
        if (v15 == v16)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
        v16 = v17 + 1;
        if (ValueAtIndex == a1)
        {
          v19 = v17;
          goto LABEL_29;
        }
      }

      v19 = 0;
LABEL_29:
      if (v17 < v15)
      {
        goto LABEL_30;
      }
    }
  }

  v89 = 0;
  v20 = a3;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a3, &v89);
  allocator = *v10;
  Mutable = CFArrayCreateMutable(*v10, 0, MEMORY[0x1E695E9C0]);
  v22 = Mutable;
  if (a1)
  {
    CFArrayAppendValue(Mutable, a1);
  }

  v23 = FigCFEqual();
  if (v22)
  {
    CFRelease(v22);
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (FigRoutingManagerContextUtilities_GetContextType(a3) != 1)
  {
LABEL_64:
    FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v20, v13, a5);
    v48 = 0;
    goto LABEL_125;
  }

  v81 = a2;
  v24 = CMSMUtility_CopyCurrentRouteIdentifiers();
  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  if (v89)
  {
    v26 = CFArrayGetCount(v89);
    v27 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (v26 >= 1)
    {
      v28 = a5;
      v29 = v13;
      v30 = 0;
      v31 = *MEMORY[0x1E69620F8];
      do
      {
        CFArrayGetValueAtIndex(v89, v30);
        value[0] = 0;
        v32 = FigEndpointGetCMBaseObject();
        v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v33)
        {
          v33(v32, v31, allocator, value);
        }

        if (value[0])
        {
          CFArrayAppendValue(v27, value[0]);
          if (value[0])
          {
            CFRelease(value[0]);
          }
        }

        ++v30;
      }

      while (v26 != v30);
      v13 = v29;
      a5 = v28;
      v20 = v84;
    }
  }

  else
  {
    v27 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  }

  if (FigCFEqual())
  {
    v35 = 0;
    LODWORD(v36) = 0;
    v37 = 1;
    goto LABEL_57;
  }

  v78 = v13;
  v79 = a5;
  v38 = NumberOfCurrentOutputPorts;
  v82 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (NumberOfCurrentOutputPorts)
  {
    v39 = 0;
    v40 = *MEMORY[0x1E69618F8];
    v41 = *MEMORY[0x1E69618D0];
    do
    {
      v42 = CFArrayGetValueAtIndex(v24, v39);
      v43 = FigRoutingManagerCopyEndpointWithDeviceID(v42, 0, v40, v20);
      if (v43)
      {
        v44 = v43;
        value[0] = 0;
        v45 = FigEndpointGetCMBaseObject();
        v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v46)
        {
          v46(v45, 0x1F289CEF0, allocator, value);
        }

        PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(value[0]);
        if (PortFromCFNumber == 1885433971 || PortFromCFNumber == 1885433953)
        {
          CFRelease(v44);
          v20 = v84;
          v44 = FigRoutingManagerCopyEndpointWithDeviceID(v42, 1, v41, v84);
        }

        else
        {
          v20 = v84;
        }

        if (value[0])
        {
          CFRelease(value[0]);
        }

        if (v44)
        {
          CFArrayAppendValue(v82, v44);
          CFRelease(v44);
        }
      }

      ++v39;
    }

    while (v38 != v39);
  }

  v35 = v82;
  if (!v82)
  {
    LODWORD(v36) = 0;
    v37 = 1;
    goto LABEL_56;
  }

  if (FigCFEqual())
  {
    v37 = 0;
    LODWORD(v36) = 1;
LABEL_56:
    v13 = v78;
    a5 = v79;
    goto LABEL_57;
  }

  v36 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v82, 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(v20, v82, 0, 0, v36);
  if (dword_1EB75DF20)
  {
    *type = 0;
    LOBYTE(v87) = 0;
    v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v35 = v82;
  }

  v13 = v78;
  a5 = v79;
  if (v36)
  {
    CFRelease(v36);
    v37 = 0;
    LODWORD(v36) = 0;
  }

  else
  {
    v37 = 0;
  }

LABEL_57:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if ((v37 & 1) == 0)
  {
    CFRelease(v35);
  }

  a2 = v81;
  if (v36)
  {
    goto LABEL_64;
  }

LABEL_65:
  FigRoutingManagerContextUtilities_SetPickingState(v20, 1);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(a2, v20, a1, v13, a5);
  if (a1)
  {
    *type = 0;
    v49 = *MEMORY[0x1E69626D8];
    if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D8]))
    {
      v50 = FigEndpointGetCMBaseObject();
      v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v51)
      {
        v51(v50, 0x1F289D050, allocator, type);
      }
    }

    v52 = *MEMORY[0x1E69626A8];
    if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]) && (!FigRoutingManagerIsEndpointOfType(a1, v49) || !FigCFEqual()))
    {
      if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]) && !FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C8]))
      {
        if (FigRoutingManagerIsEndpointOfType(a1, v49) || FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B8]))
        {
          v48 = routingManager_processPickEndpoint(a1, v20, v13, a5);
        }

        else
        {
          v48 = 0;
        }

LABEL_123:
        if (*type)
        {
          CFRelease(*type);
        }

        goto LABEL_125;
      }

      value[0] = 0;
      *cf = 0;
      FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(cf);
      FigRoutingManagerCopyPickedEndpointForRoutingContext(*cf, value);
      if (FigRoutingManagerIsEndpointOfType(value[0], *MEMORY[0x1E69626B0]))
      {
        FigRoutingManagerLogEndpointID(@"PreprocessPickEndpoint - Calling to remove all sub-endpoints from the aggregate", value[0], @"before calling to activate CarPlay/Nero", 1);
        FigRoutingManagerRemoveAllSubEndpointsFromAggregate(value[0], *cf, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
        CMSMVAUtility_DestroyMusicVADIfNeeded(*cf);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(*cf, 0, @"configUpdateReasonEndedSuccess", v13, 0);
      }

      v48 = routingManager_processPickEndpoint(a1, v20, v13, a5);
      if (*cf)
      {
        CFRelease(*cf);
        *cf = 0;
      }

      v60 = value[0];
      if (!value[0])
      {
        goto LABEL_123;
      }

LABEL_122:
      CFRelease(v60);
      goto LABEL_123;
    }

    v86 = 0;
    v87 = 0;
    FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(&v86, &v87, 0);
    if (FigRoutingManagerContextUtilities_GetContextType(v20) == 5 && v86)
    {
      v85 = 0;
      v53 = FigEndpointGetCMBaseObject();
      v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v54)
      {
        v54(v53, *MEMORY[0x1E69621E8], allocator, &v85);
      }

      FigRoutingManagerContextUtilities_SetPickingState(v20, 2);
      if (CMSMVAUtility_CreatePerAppAirPlayVADWithHandOffPort(v20))
      {
        v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v20 = v84;
      }

      if (dword_1EB75DF20)
      {
        v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v20 = v84;
      }

      value[0] = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v87, v86, value);
      FigRoutingManager_iOSDeactivateEndpoint(v86, value[0], 1);
LABEL_118:
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v87, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
      goto LABEL_119;
    }

    ContextType = FigRoutingManagerContextUtilities_GetContextType(v20);
    if (ContextType == 7)
    {
      value[0] = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v20, 0, value);
      if (value[0])
      {
        FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate endpoint with name=", value[0], @"because current picked endpoint is AirPlay", 1);
        *cf = 0;
        FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v20, value[0], cf);
        FigRoutingManager_iOSDeactivateEndpoint(value[0], *cf, 1);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(v20, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
      }

      if (FigRoutingManagerIsEndpointActivated(a1))
      {
        FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate/remove endpoint with name=", value[0], @"because is activated for another routing context", 1);
        if (MXSystemRemotePool_RemoveEndpoint(a1) == -13002)
        {
          *cf = 0;
          FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v20, a1, cf);
          FigRoutingManager_iOSDeactivateEndpoint(a1, *cf, 1);
        }
      }

      v48 = routingManager_processPickEndpoint(a1, v20, v13, a5);
      v59 = value[0];
      if (!value[0])
      {
        goto LABEL_121;
      }
    }

    else
    {
      if (v86)
      {
        ContextType = FigRoutingManagerUtilities_IsCurrentRouteHandoff(ContextType, v58);
        if (!ContextType)
        {
          FigRoutingManagerContextUtilities_SetPickingState(v20, 2);
          CMSMAP_MakeAirPlayHandOffPortRoutable(1, v20);
          v85 = 0;
          v74 = *MEMORY[0x1E69621E8];
          v75 = FigEndpointGetCMBaseObject();
          CMBaseObjectCopyProperty(v75, v74, allocator, &v85);
          if (FigRoutingManagerIsEndpointOfType(v86, v52))
          {
            if (dword_1EB75DF20)
            {
              v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v20 = v84;
            }

            value[0] = 0;
            FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v87, v86, value);
            FigRoutingManager_iOSDeactivateEndpoint(v86, value[0], 1);
            if (FigRoutingManagerContextUtilities_GetContextType(v87) != 1)
            {
              goto LABEL_118;
            }
          }

          else if (FigRoutingManagerIsEndpointOfType(v86, *MEMORY[0x1E69626B0]))
          {
            if (dword_1EB75DF20)
            {
              v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v20 = v84;
            }

            FigRoutingManagerRemoveAllSubEndpointsFromAggregate(v86, v87, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
            CMSMVAUtility_DestroyMusicVADIfNeeded(v87);
            goto LABEL_118;
          }

LABEL_119:
          v48 = routingManager_processPickEndpoint(a1, v20, v13, a5);
          v59 = v85;
          if (!v85)
          {
            goto LABEL_121;
          }

          goto LABEL_120;
        }
      }

      v80 = a5;
      v61 = v13;
      value[0] = 0;
      *cf = 0;
      FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(ContextType, value, cf, 0, 0);
      if (value[0])
      {
        v62 = CFArrayGetCount(value[0]);
        if (v62 >= 1)
        {
          v63 = v62;
          for (i = 0; i != v63; ++i)
          {
            v65 = CFArrayGetValueAtIndex(value[0], i);
            v66 = CFArrayGetValueAtIndex(*cf, i);
            if (v65 != a1 || v66 != v20)
            {
              v68 = v66;
              FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(v65, v66);
              v70 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              FigCFDictionarySetValue();
              v85 = 0;
              FigRoutingManagerCreateEndpointDeactivateCompletionContext(v68, &v85);
              FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate endpoint with name=", v65, 0, 1);
              FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(v68, v65, @"configUpdateReasonEndedUserCancelled");
              FigRoutingManagerEndpointDeactivateWithCompletionCallback(v65, FigEndpointFeatures, v70, FigRoutingManager_iOSEndpointDeactivateCompletionCallback, v85);
              if (v70)
              {
                CFRelease(v70);
              }

              v20 = v84;
            }
          }
        }
      }

      v13 = v61;
      v48 = routingManager_processPickEndpoint(a1, v20, v61, v80);
      if (value[0])
      {
        CFRelease(value[0]);
        value[0] = 0;
      }

      v59 = *cf;
      if (!*cf)
      {
LABEL_121:
        v60 = v87;
        if (!v87)
        {
          goto LABEL_123;
        }

        goto LABEL_122;
      }
    }

LABEL_120:
    CFRelease(v59);
    goto LABEL_121;
  }

  v56 = FigRoutingManagerContextUtilities_GetContextType(v20);
  if (v56 <= 0xD && ((1 << v56) & 0x2012) != 0)
  {
    v48 = 4294954296;
  }

  else
  {
    v48 = routingManager_processPickEndpoint(0, v20, v13, a5);
  }

LABEL_125:
  if (v89)
  {
    CFRelease(v89);
  }

LABEL_127:
  FigRoutingContextUtilities_LogCurrentState();
  if (v13)
  {
    CFRelease(v13);
  }

  if (v91)
  {
    CFRelease(v91);
    v91 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v48;
}

uint64_t FigRoutingManagerPickRouteDescriptorForContext(uint64_t Value, CFDictionaryRef theDict, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v6 = Value;
  cf[16] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"RouteName");
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    Value = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!MX_FeatureFlags_IsSystemInputPickerEnabled(Value, theDict) || FigRoutingManagerContextUtilities_GetContextType(v6) != 13)
  {
LABEL_10:
    if (FigRoutingManagerContextUtilities_GetContextType(v6) == 3 || FigRoutingManagerContextUtilities_GetContextType(v6) == 9)
    {
      goto LABEL_12;
    }

    if (theDict && FigCFDictionaryGetCount())
    {
      v13 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(theDict, v6);
      if (!v13)
      {
LABEL_12:
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_13:
        v11 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v6, v11, @"configUpdateReasonEndedFailed");
        if (v11)
        {
          CFRelease(v11);
        }

        return 4294954296;
      }

      v14 = v13;
      cf[0] = 0;
      routingManager_validateAndCopyLeaderContextForPickingRouteDescriptor(v6, theDict, cf);
      if (cf[0])
      {
        v12 = routingManager_preprocessPickEndpoint(v14, v6, cf[0], a3, a4);
        if (FigRoutingManagerContextUtilities_GetContextType(v6) == 5 && !FigCFEqual())
        {
          v12 = routingManager_preprocessPickEndpoint(0, v6, v6, a3, a4);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v16 = v14;
    }

    else
    {
      cf[0] = 0;
      routingManager_validateAndCopyLeaderContextForPickingRouteDescriptor(v6, theDict, cf);
      if (!cf[0])
      {
        v12 = 0;
        goto LABEL_38;
      }

      v12 = routingManager_preprocessPickEndpoint(0, v6, cf[0], a3, a4);
      v16 = cf[0];
      if (!cf[0])
      {
LABEL_38:
        if (v12 != -13000)
        {
          return v12;
        }

        goto LABEL_13;
      }
    }

    CFRelease(v16);
    goto LABEL_38;
  }

  v8 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveCoreSessionControllingRouting];
  v9 = v8;
  if (v8 && CMSMUtility_IsInputAllowedForCategory([v8 audioCategory]))
  {

    goto LABEL_10;
  }

  if (dword_1EB75DF20)
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v6, v17, @"configUpdateReasonEndedSuccess");
  if (v17)
  {
    CFRelease(v17);
  }

  return 0;
}

CFTypeRef routingManager_validateAndCopyLeaderContextForPickingRouteDescriptor(CFTypeRef result, const __CFDictionary *a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return result;
  }

  v5 = result;
  if (FigRoutingManagerContextUtilities_GetContextType(result) != 5)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"RouteSupportsAirPlayVideo");
    v7 = *MEMORY[0x1E695E4D0];
    IsFollowingAnotherContext = FigRoutingContextUtilities_IsFollowingAnotherContext(v5);
    if (Value != v7)
    {
      if (IsFollowingAnotherContext)
      {
        FigRoutingContextUtilities_CopyLeaderUUIDForContext(v5, a3);
      }

      else
      {
        FigRoutingContextUtilities_SetLeaderToSystemAudioContext(v5, 0);
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(a3);
      }

LABEL_15:
      result = *a3;
      if (*a3)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (!IsFollowingAnotherContext)
    {
      goto LABEL_15;
    }

    FigRoutingContextUtilities_UnfollowUUIDFromLeader(v5, 0);
  }

  if (v5)
  {
    result = CFRetain(v5);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  if (!result)
  {
LABEL_16:
    if (v5)
    {
      result = CFRetain(v5);
    }

    else
    {
      result = 0;
    }

    *a3 = result;
  }

  return result;
}

uint64_t FigRoutingManagerPickEndpointsForContext(const void *a1, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  FigRoutingManagerLogEndpointIDs(@"Picking routes with IDs: ", a2, 0, 1);
  if (FigRoutingManagerContextUtilities_GetContextType(a1) == 4)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v9 = 0;
    v10 = *MEMORY[0x1E6962620];
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_11:
    for (i = 0; v9 < i; i = CFArrayGetCount(a2))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
      if ((!CMSMDeviceState_IsHomePodHub() || !FigRoutingManagerIsEndpointLocal(ValueAtIndex) || !FigRoutingManagerIsEndpointOfSubtype(ValueAtIndex, v10)) && FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      ++v9;
      if (!a2)
      {
        goto LABEL_11;
      }

LABEL_10:
      ;
    }
  }

  else
  {
    if (!a2)
    {
      Mutable = 0;
      v13 = 1;
      v15 = 1;
      goto LABEL_30;
    }

    Mutable = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
  }

  v13 = Mutable == 0;
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
  }

  else
  {
    Count = 0;
  }

  v15 = a2 == 0;
  if (a2)
  {
    v16 = CFArrayGetCount(a2);
  }

  else
  {
    v16 = 0;
  }

  if (Count != v16)
  {
    if (Mutable && CFArrayGetCount(Mutable))
    {
      FigRoutingManagerLogEndpointIDs(@"Picking filtered routes with ID: ", a2, 0, 1);
      v13 = 0;
    }

    else
    {
      if (dword_1EB75DF20)
      {
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, a3, @"configUpdateReasonStarted");
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, a3, @"configUpdateReasonEndedFailed");
    }
  }

LABEL_30:
  v60 = 0;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType != 3)
  {
    if (ContextType == 1 && !v15 && CFArrayGetCount(a2) >= 2 && !FigRoutingManagerAreAllEndpointsBluetoothShareable(a2))
    {
LABEL_61:
      *type = 0;
      v58[0] = OS_LOG_TYPE_DEFAULT;
      v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v36 = 4294954296;
      goto LABEL_66;
    }

LABEL_65:
    v36 = 0;
LABEL_66:
    v37 = v60;
    if (v60)
    {
      goto LABEL_67;
    }

    goto LABEL_80;
  }

  if (v15 || (v19 = CFArrayGetCount(a2), v19 < 1))
  {
    FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
    if (dword_1EB75DF20)
    {
      *type = 0;
      v58[0] = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_65;
  }

  v20 = v19;
  if (!FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(a2))
  {
    if (v20 != 1 && !FigRoutingManagerAreAllEndpointsBluetoothShareable(a2))
    {
      goto LABEL_61;
    }

    if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
    {
      goto LABEL_62;
    }

    v24 = CFArrayGetValueAtIndex(a2, 0);
    if (FigRoutingManagerIsEndpointOfType(v24, *MEMORY[0x1E69626B8]))
    {
      v25 = a4;
      v26 = *MEMORY[0x1E695E4C0];
      cf[0] = *MEMORY[0x1E695E4C0];
      v27 = *MEMORY[0x1E6962130];
      v28 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      CMBaseObjectCopyProperty(CMBaseObject, v27, v28, cf);
      v30 = cf[0];
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v31 = v30 == v26;
      a4 = v25;
      if (v31)
      {
        if (dword_1EB75DF20)
        {
          *type = 0;
          v58[0] = OS_LOG_TYPE_DEFAULT;
          v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a4 = v25;
        }

        goto LABEL_64;
      }
    }

    if (!dword_1EB75DF20)
    {
LABEL_63:
      FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
LABEL_64:
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v60);
      goto LABEL_65;
    }

LABEL_53:
    *type = 0;
    v58[0] = OS_LOG_TYPE_DEFAULT;
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_63;
  }

  shouldSystemMusicFollowSystemAudio = routingManager_shouldSystemMusicFollowSystemAudio(a2, 0);
  if (!FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
  {
    if (!shouldSystemMusicFollowSystemAudio)
    {
      if (dword_1EB75DF20)
      {
        *type = 0;
        v58[0] = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_76;
    }

    if (!dword_1EB75DF20)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  if (shouldSystemMusicFollowSystemAudio)
  {
    if (dword_1EB75DF20)
    {
      *type = 0;
      v58[0] = OS_LOG_TYPE_DEFAULT;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_62:
    FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v60);
    goto LABEL_65;
  }

  if (dword_1EB75DF20)
  {
    *type = 0;
    v58[0] = OS_LOG_TYPE_DEFAULT;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingContextUtilities_UnfollowUUIDFromLeader(a1, 0);
LABEL_76:
  if (a1)
  {
    v37 = CFRetain(a1);
  }

  else
  {
    v37 = 0;
  }

  v36 = 0;
  v60 = v37;
  if (v37)
  {
LABEL_67:
    if (v36)
    {
      goto LABEL_68;
    }

    goto LABEL_84;
  }

LABEL_80:
  if (a1)
  {
    v37 = CFRetain(a1);
  }

  else
  {
    v37 = 0;
  }

  v60 = v37;
  if (v36)
  {
LABEL_68:
    if (!v37)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_84:
  v40 = a4;
  v41 = !v13 && CFArrayGetCount(Mutable) > 0;
  v42 = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (v42 == 1)
  {
    goto LABEL_90;
  }

  if (v42 == 4)
  {
    if (CMSMDeviceState_IsHomePodHub())
    {
      v47 = MXAudioContext_HandlePickEndpoints(Mutable, a1, a3, v40);
      goto LABEL_129;
    }

    if (dword_1EB75DF20)
    {
      *type = 0;
      v58[0] = OS_LOG_TYPE_DEFAULT;
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_113:
    v36 = 0;
    goto LABEL_130;
  }

  if (v42 != 3)
  {
    goto LABEL_113;
  }

LABEL_90:
  if (!v41)
  {
    v48 = 0;
    v49 = a1;
    v50 = a3;
    v51 = v40;
LABEL_127:
    v54 = 0;
    goto LABEL_128;
  }

  if (FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(Mutable))
  {
    v43 = v40;
    if (FigRoutingManagerDoEndpointsContainLocalAirPlayEndpoint(Mutable))
    {
      *type = 0;
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(type);
      *v58 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(*type, 0, v58);
      if (!FigRoutingManagerIsEndpointWHAGroupable(*v58) && !FigRoutingManagerUtilities_IsSystemAudioRouteNull() && !FigRoutingManagerIsEndpointLowLatencyAirPlay(*v58))
      {
        IsSystemAudioRouteAirPlayLowLatency = FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency();
        v45 = FigRoutingManagerDoEndpointsContainOdeonEndpoint(Mutable);
        if (!IsSystemAudioRouteAirPlayLowLatency && v45 && CMSMDeviceState_ItsAnAppleTV())
        {
          if (dword_1EB75DF20)
          {
            v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v43 = v40;
          }

          routingManager_routeToLowLatencyAirPlay(a3);
        }

        else
        {
          if (dword_1EB75DF20)
          {
            v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v43 = v40;
          }

          if (!v13 && CFArrayGetCount(Mutable) == 1)
          {
            FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, @"configUpdateReasonEndedSuccess");
          }

          v57 = FigRoutingManagerCopyWHAGroupableVAEndpoint();
          FigRoutingManagerPickEndpointForContext(*type, v57, 0, 0);
          if (v57)
          {
            CFRelease(v57);
          }
        }
      }

      if (*type)
      {
        CFRelease(*type);
        *type = 0;
      }

      if (*v58)
      {
        CFRelease(*v58);
      }
    }

    v48 = Mutable;
    v49 = a1;
    v50 = a3;
    v51 = v43;
    goto LABEL_127;
  }

  v53 = !FigRoutingManagerAreAllEndpointsBluetoothShareable(Mutable) || v13;
  if ((v53 & 1) == 0 && CFArrayGetCount(Mutable) >= 2)
  {
    v49 = v60;
    v48 = Mutable;
    v50 = a3;
    v51 = v40;
    v54 = 1;
LABEL_128:
    v47 = routingManager_preprocessPickEndpoints(v48, v49, v50, v51, v54);
    goto LABEL_129;
  }

  v55 = CFArrayGetValueAtIndex(Mutable, 0);
  routingManager_emptyAggregateEndpointIfNecessary(v55, a1);
  v47 = routingManager_preprocessPickEndpoint(v55, a1, v60, a3, v40);
LABEL_129:
  v36 = v47;
LABEL_130:
  v37 = v60;
  if (v60)
  {
LABEL_69:
    CFRelease(v37);
    v60 = 0;
  }

LABEL_70:
  if (!v13)
  {
    CFRelease(Mutable);
  }

  return v36;
}

void routingManager_routeToLowLatencyAirPlay(uint64_t a1)
{
  v9[20] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(v9);
  if (CMSMVAUtility_MakeLowLatencyAirPlayPortRoutable(v9[0]))
  {
    v3 = CMSMUtility_CopyCurrentRouteIdentifiers();
    v4 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v3, v9[0]);
    v5 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v4, 0);
    FigRoutingManagerContextUtilities_SetPickedEndpoints(v9[0], v4, @"configUpdateReasonEndedSuccess", a1, v5);
    *type = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(type);
    cf = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(*type, &cf);
    FigRoutingManagerAggregateAddLocalAirPlayEndpoint(*type, cf);
    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*type, cf, @"configUpdateReasonEndedBottomUpRouteChange", 0);
    if (dword_1EB75DF20)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingContextUtilities_UnfollowUUIDFromLeader(*type, @"configUpdateReasonEndedBottomUpRouteChange");
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (*type)
    {
      CFRelease(*type);
    }
  }

  if (v9[0])
  {
    CFRelease(v9[0]);
  }
}

uint64_t routingManager_preprocessPickEndpoints(const __CFArray *a1, const void *a2, const __CFDictionary *a3, const void *a4, int a5)
{
  cf[20] = *MEMORY[0x1E69E9840];
  FigRoutingContextUtilities_LogCurrentState();
  v10 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  FigRoutingManagerLogRoutingRequestDetails(@"preprocessPickEndpoints - ", 0, a1, 0, a2, v10);
  FigRoutingManagerContextUtilities_SetPickingState(a2, 1);
  if (a5)
  {
    routingManager_processPickEndpoints(a1, a2, v10, a4, 1);
    v11 = 0;
  }

  else
  {
    v22 = 0;
    cf[0] = 0;
    FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(cf, &v22, 0);
    if (cf[0] && v22 && !FigCFEqual())
    {
      v21 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v17 = *(VTable + 8);
      v16 = VTable + 8;
      v18 = *(v17 + 48);
      if (v18)
      {
        v16 = v18(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v21);
      }

      if (FigRoutingManagerUtilities_IsCurrentRouteHandoff(v16, v15))
      {
        v11 = 0;
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickingState(a2, 2);
        CMSMAP_MakeAirPlayHandOffPortRoutable(1, a2);
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManagerDeactivateEndpointFromPickedContexts(cf[0], v19, 1, @"configUpdateReasonEndedSuccess");
        v11 = routingManager_processPickEndpoints(a1, a2, v10, a4, 0);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    else
    {
      v11 = routingManager_processPickEndpoints(a1, a2, v10, a4, 0);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  FigRoutingContextUtilities_LogCurrentState();
  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

void routingManager_emptyAggregateEndpointIfNecessary(uint64_t a1, const void *a2)
{
  v17[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    cf = 0;
    theArray = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, &cf);
    v4 = MEMORY[0x1E695E480];
    if (cf && (CMBaseObject = FigEndpointGetCMBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(CMBaseObject, *MEMORY[0x1E6962270], *v4, &theArray), theArray))
    {
      v8 = CFArrayGetCount(theArray) != 1 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), !FigRoutingManagerIsEndpointOfSubtype(ValueAtIndex, *MEMORY[0x1E6962620])) || CMSMDeviceState_ItsAnAppleTV() == 0;
      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    else
    {
      v8 = 1;
    }

    if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B8]))
    {
      goto LABEL_14;
    }

    v9 = *MEMORY[0x1E695E4C0];
    v17[0] = *MEMORY[0x1E695E4C0];
    v10 = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, *MEMORY[0x1E6962130], *v4, v17);
      v12 = v17[0];
      if (!v17[0])
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = v9;
      if (!v9)
      {
LABEL_13:
        if (v12 == v9)
        {
          if (dword_1EB75DF20)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          goto LABEL_24;
        }

LABEL_14:
        if (v8)
        {
          Mutable = CFDictionaryCreateMutable(*v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(Mutable, @"initiator", @"SelectRouteInitiator_EmptyAggregateEndpoint");
          routingManager_processPickEndpoints(0, a2, 0, Mutable, 0);
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

LABEL_24:
        if (cf)
        {
          CFRelease(cf);
        }

        return;
      }
    }

    CFRelease(v12);
    goto LABEL_13;
  }
}

uint64_t FigRoutingManagerPickRouteDescriptorsForContext(__CFArray *a1, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"RouteName");
        if (Value)
        {
          CFArrayAppendValue(Mutable, Value);
        }
      }
    }
  }

  if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    FigRoutingManagerPickEndpointsForContext(a1, 0, a3, a4);
    goto LABEL_70;
  }

  v46 = v8;
  v16 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  v17 = CFArrayGetCount(a2);
  if (v17 < 1)
  {
    goto LABEL_60;
  }

  v18 = v17;
  v43 = a4;
  v44 = a3;
  v45 = Mutable;
  v19 = 0;
  v48 = *MEMORY[0x1E69626C0];
  v49 = *MEMORY[0x1E69626D8];
  v47 = v16;
  do
  {
    v20 = CFArrayGetValueAtIndex(a2, v19);
    v21 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(v20, a1);
    if (v21)
    {
      v22 = v21;
      if (FigRoutingManagerIsEndpointOfType(v21, v48))
      {
        if (dword_1EB75DF20)
        {
          LODWORD(cf) = 0;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v24 = cf;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
          }

          else
          {
            v25 = v24 & 0xFFFFFFFE;
          }

          if (v25)
          {
            v51 = 136315138;
            v52 = "FigRoutingManagerPickRouteDescriptorsForContext";
            _os_log_send_and_compose_impl(v25, 0, v55, 128, &dword_1B17A2000, v23, 0, "-FigRoutingManager_iOS- %s: User picked CarPlay route; reset the flag doNotMakeStarkAudioPortRoutable", &v51);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMUtility_SetDoNotMakeStarkAudioPortRoutableFlag(0);
      }

      else if (FigRoutingManagerIsEndpointOfType(v22, v49))
      {
        cf = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v30)
        {
          v30(CMBaseObject, 0x1F289CEF0, v46, &cf);
        }

        if (CMSMVAUtility_GetPortFromCFNumber(cf) == 1886614639)
        {
          if (dword_1EB75DF20)
          {
            v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSMUtility_SetDoNotMakeStarkAudioPortRoutableFlag(0);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (FigRoutingManagerIsEndpointOfType(v22, v49) && FigRoutingManagerIsEndpointWHAGroupable(v22))
      {
        v32 = FigRoutingManagerCopyLocalAirPlayEndpoint();
        if (dword_1EB75DF20)
        {
          LODWORD(cf) = 0;
          v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v34 = cf;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v34;
          }

          else
          {
            v35 = v34 & 0xFFFFFFFE;
          }

          if (v35)
          {
            v51 = 136315138;
            v52 = "FigRoutingManagerPickRouteDescriptorsForContext";
            _os_log_send_and_compose_impl(v35, 0, v55, 128, &dword_1B17A2000, v33, 0, "-FigRoutingManager_iOS- %s: Client requested to pick local VA endpoint, use local AirPlay endpoint instead", &v51);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v16 = v47;
        }

        if (v32)
        {
          CFArrayAppendValue(v16, v32);
          CFRelease(v32);
        }

        else
        {
          LODWORD(cf) = 0;
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
            v51 = 136315138;
            v52 = "FigRoutingManagerPickRouteDescriptorsForContext";
            _os_log_send_and_compose_impl(v38, 0, v55, 128, &dword_1B17A2000, v36, 0, "-FigRoutingManager_iOS- %s: Local AirPlay endpoint was not found", &v51);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        CFArrayAppendValue(v16, v22);
      }

      CFRelease(v22);
    }

    else
    {
      LODWORD(cf) = 0;
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = cf;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        v51 = 136315138;
        v52 = "FigRoutingManagerPickRouteDescriptorsForContext";
        _os_log_send_and_compose_impl(v28, 0, v55, 128, &dword_1B17A2000, v26, 0, "-FigRoutingManager_iOS- %s: Unable to find endpoint for descriptor", &v51);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ++v19;
  }

  while (v18 != v19);
  a3 = v44;
  Mutable = v45;
  a4 = v43;
  if (v16)
  {
    if (CFArrayGetCount(v16))
    {
LABEL_60:
      FigRoutingManagerPickEndpointsForContext(a1, v16, a3, a4);
      if (!v16)
      {
        goto LABEL_70;
      }

LABEL_69:
      CFRelease(v16);
      goto LABEL_70;
    }
  }

  LODWORD(cf) = 0;
  v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v40 = cf;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v40;
  }

  else
  {
    v41 = v40 & 0xFFFFFFFE;
  }

  if (v41)
  {
    v51 = 136315394;
    v52 = "FigRoutingManagerPickRouteDescriptorsForContext";
    v53 = 2114;
    v54 = v45;
    _os_log_send_and_compose_impl(v41, 0, v55, 128, &dword_1B17A2000, v39, 0, "-FigRoutingManager_iOS- %s: Failed to find all endpoints for %{public}@", &v51, 22);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v44, @"configUpdateReasonStarted");
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v44, @"configUpdateReasonEndedFailed");
  v16 = v47;
  if (v47)
  {
    goto LABEL_69;
  }

LABEL_70:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

void routingManager_preprocessAddBluetoothEndpoint(const void *a1, uint64_t a2, const void *a3, CFDictionaryRef theDict, const __CFDictionary *a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v9 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(theDict);
  FigRoutingManagerLogRoutingRequestDetails(@"preprocessAddBluetoothEndpoint - ", a1, 0, 0, a3, v9);
  v33 = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a3, &v33);
  if (FigCFArrayContainsValue())
  {
    FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a3, v9, a5);
    goto LABEL_55;
  }

  FigRoutingManagerContextUtilities_SetPickingState(a3, 1);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(a2, a3, a1, v9, a5);
  FigEndpointDescriptorUtilitySetUserManualRoute(a1, v9);
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(a1, a3, v9, a5);
  FigRoutingManagerGetFigEndpointFeatures(a1, a3);
  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B8]))
  {
    FigRoutingManagerContextUtilities_SetPickingState(a3, 4);
    FigRoutingManager_iOSActivateEndpoint(a1, a3, v9, a5);
    v11 = *MEMORY[0x1E695E4C0];
    v37 = *MEMORY[0x1E695E4C0];
    v12 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(CMBaseObject, *MEMORY[0x1E6962130], v12, &v37);
      v11 = v37;
    }

    if (v11 == *MEMORY[0x1E695E4D0])
    {
      v36 = 0;
      v16 = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, *MEMORY[0x1E69620F8], v12, &v36);
      }

      v18 = FigRoutingManagerCopyEndpointWithDeviceID(v36, 0, *MEMORY[0x1E69618F8], 0);
      if (v18)
      {
        v19 = v18;
        FigRoutingManagerContextUtilities_SetPickingState(a3, 6);
        if (FigEndpointActivate())
        {
          FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a3, a1, @"routeChangeEndedFailed");
          FigRoutingManagerContextUtilities_SetPickingState(a3, 0);
        }

        else
        {
          v29 = CMSMUtility_CopyCurrentRouteIdentifiers();
          v30 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v29, a3);
          v31 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v30, 0);
          FigRoutingManagerContextUtilities_SetPickedEndpoints(a3, v30, @"configUpdateReasonEndedSuccess", v9, v31);
          if (!FigRoutingContextUtilities_DoesArrayOfEndpointsContainEndpoint(v30, a1))
          {
            FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a3, a1, @"routeChangeEndedSuccess");
          }

          cf[0] = 0;
          FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(a3, cf);
          if (FigRoutingManagerIsEndpointBluetoothShareable(cf[0]))
          {
            v32 = 5;
          }

          else
          {
            v32 = 0;
          }

          FigRoutingManagerContextUtilities_SetPickingState(a3, v32);
          if (cf[0])
          {
            CFRelease(cf[0]);
            cf[0] = 0;
          }

          if (v31)
          {
            CFRelease(v31);
          }

          if (v30)
          {
            CFRelease(v30);
          }

          if (v29)
          {
            CFRelease(v29);
          }
        }

        CFRelease(v19);
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickingState(a3, 5);
        if (dword_1EB75DF20)
        {
          v35 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v26 = v35;
          v27 = type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v28 = v26;
          }

          else
          {
            v28 = v26 & 0xFFFFFFFE;
          }

          if (v28)
          {
            v38 = 136315395;
            v39 = "routingManager_processAddBluetoothEndpoint";
            v40 = 2113;
            v41 = v36;
            _os_log_send_and_compose_impl(v28, 0, cf, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v27, "-FigRoutingManager_iOS- %s: Call was made to activate Bluetooth endpoint with endpointID=%{private}@. Port will be made routable when it is published", &v38, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }

    else
    {
      FigRoutingManagerContextUtilities_SetPickingState(a3, 5);
    }

    v24 = v37;
    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D8]))
    {
      goto LABEL_53;
    }

    FigRoutingManagerContextUtilities_SetPickingState(a3, 6);
    v15 = FigEndpointActivate();
    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a3, 0, cf);
    if (v15)
    {
      FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a3, a1, @"routeChangeEndedFailed");
      FigRoutingManagerContextUtilities_SetPickingState(a3, 0);
    }

    else
    {
      if (FigRoutingManagerIsEndpointOfType(cf[0], *MEMORY[0x1E69626A8]))
      {
        FigRoutingManagerDeactivateEndpointFromPickedContexts(cf[0], v20, 1, @"configUpdateReasonEndedSuccess");
      }

      v21 = CMSMUtility_CopyCurrentRouteIdentifiers();
      v22 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v21, a3);
      v23 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v22, 0);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a3, v22, @"configUpdateReasonEndedSuccess", v9, v23);
      if (!FigRoutingContextUtilities_DoesArrayOfEndpointsContainEndpoint(v22, a1))
      {
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a3, a1, @"routeChangeEndedSuccess");
      }

      FigRoutingManagerContextUtilities_SetPickingState(a3, 0);
      if (v23)
      {
        CFRelease(v23);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    v24 = cf[0];
    if (!cf[0])
    {
      goto LABEL_53;
    }
  }

  CFRelease(v24);
LABEL_53:
  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

LABEL_55:
  if (v33)
  {
    CFRelease(v33);
    v33 = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t FigRoutingManager_iOSRemoveEndpointFromContext(const void *a1, const void *a2, CFDictionaryRef theDict)
{
  v79[16] = *MEMORY[0x1E69E9840];
  v3 = 4294954296;
  if (!a1 || !a2)
  {
    return v3;
  }

  v6 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(theDict);
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsRemoveOperation", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", v9);
  FigRoutingManagerLogEndpointID(@"Removing endpoint=", a2, 0, 1);
  v10 = *MEMORY[0x1E695E4C0];
  v67 = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, *MEMORY[0x1E6962190], v7, &v67);
  }

  v66 = v10;
  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x1E6962110], v7, &v66);
  }

  v65 = 0;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 4)
  {
LABEL_10:
    v65 = CFRetain(a1);
    if (v65)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (ContextType == 3)
  {
    if (FigRoutingManagerIsEndpointWHAGroupable(a2))
    {
      goto LABEL_10;
    }

    if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
    {
      FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v65);
    }

    else
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v73) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v37 = v73;
        v38 = type[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
        {
          v39 = v37;
        }

        else
        {
          v39 = v37 & 0xFFFFFFFE;
        }

        if (v39)
        {
          *cf = 136315395;
          *&cf[4] = "routingManager_validateAndCopyLeaderContextForRemovingEndpoint";
          v75 = 2113;
          v76 = a1;
          _os_log_send_and_compose_impl(v39, 0, v79, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v38, "-FigRoutingManager_iOS- %s: '%{private}@' System music context now following systemAudio because a user is trying to remove a non WHA groupable route.", cf, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v65);
    }
  }

  if (!v65)
  {
LABEL_11:
    v65 = CFRetain(a1);
  }

LABEL_12:
  v16 = FigRoutingManagerContextUtilities_GetContextType(a1);
  v3 = 0;
  if (v16 > 3)
  {
    if (v16 == 4)
    {
      if (!CMSMDeviceState_IsHomePodHub())
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v73) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v33 = v73;
          v34 = type[0];
          if (os_log_type_enabled(v32, type[0]))
          {
            v35 = v33;
          }

          else
          {
            v35 = v33 & 0xFFFFFFFE;
          }

          if (v35)
          {
            *cf = 136315138;
            *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
            _os_log_send_and_compose_impl(v35, 0, v79, 128, &dword_1B17A2000, v32, v34, "-FigRoutingManager_iOS- %s: Multiple Now Players is not supported", cf);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_114;
      }

      v21 = MXAudioContext_HandleRemoveEndpoint(a2, a1, v6, Mutable);
    }

    else
    {
      if (v16 != 13)
      {
        goto LABEL_126;
      }

      v21 = routingManager_processRemoveVirtualAudioEndpoint(a2, a1, v65, v6, Mutable);
    }

    v3 = v21;
    goto LABEL_126;
  }

  if (v16 == 1)
  {
    if (v66 != v9)
    {
      if (!FigRoutingManagerIsEndpointOfType(a2, *MEMORY[0x1E69626A8]))
      {
        LODWORD(v73) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v41 = v73;
        v42 = type[0];
        if (os_log_type_enabled(v40, type[0]))
        {
          v43 = v41;
        }

        else
        {
          v43 = v41 & 0xFFFFFFFE;
        }

        if (v43)
        {
          *cf = 136315138;
          *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
          _os_log_send_and_compose_impl(v43, 0, v79, 128, &dword_1B17A2000, v40, v42, "-FigRoutingManager_iOS- %s: Removing non-Bluetooth and non-AirPlay endpoint on system audio. This is NOT supported.", cf);
        }

        goto LABEL_66;
      }

      v22 = FigRoutingManagerCopyRoutingContextUUIDForEndpoint(a2);
      if (FigCFEqual())
      {
        v73 = 0;
        FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v22, a2, &v73);
        FigRoutingManagerLogEndpointID(@"FigRoutingManager_iOSRemoveEndpointFromContext deactivate endpoint with name=", a2, 0, 1);
        v3 = FigRoutingManager_iOSDeactivateEndpoint(a2, v73, 1);
        if (v3)
        {
          *type = 0;
          v71[0] = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v24 = *type;
          v25 = v71[0];
          if (os_log_type_enabled(v23, v71[0]))
          {
            v26 = v24;
          }

          else
          {
            v26 = v24 & 0xFFFFFFFE;
          }

          if (v26)
          {
            *cf = 136315394;
            *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
            v75 = 1024;
            LODWORD(v76) = v3;
            _os_log_send_and_compose_impl(v26, 0, v79, 128, &dword_1B17A2000, v23, v25, "-FigRoutingManager_iOS- %s: Deactivating the endpoint failed with err: %d", cf, 18);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v22, v6, @"configUpdateReasonEndedSuccess");
        }

        goto LABEL_110;
      }

      LODWORD(v73) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v45 = v73;
      v46 = type[0];
      if (os_log_type_enabled(v44, type[0]))
      {
        v47 = v45;
      }

      else
      {
        v47 = v45 & 0xFFFFFFFE;
      }

      if (v47)
      {
        *cf = 136315138;
        *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
        _os_log_send_and_compose_impl(v47, 0, v79, 128, &dword_1B17A2000, v44, v46, "-FigRoutingManager_iOS- %s: Endpoint has not been picked on this routing context. Removing is NOT supported.", cf);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_109;
    }

    goto LABEL_40;
  }

  if (v16 == 3)
  {
    if (v67 != v9)
    {
      if (v66 != v9)
      {
        if (v67 != v10)
        {
          LODWORD(v73) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v18 = v73;
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
            *cf = 136315138;
            *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
            _os_log_send_and_compose_impl(v20, 0, v79, 128, &dword_1B17A2000, v17, v19, "-FigRoutingManager_iOS- %s: Client requested to remove a non WHA-groupable and a non Bluetooth shareable device on system music.", cf);
          }

LABEL_66:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v3 = 4294954296;
          goto LABEL_126;
        }

        v22 = FigRoutingManagerCopyRoutingContextUUIDForEndpoint(a2);
        if (!FigCFEqual())
        {
          v79[0] = 0;
          FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v22, a2, v79);
          FigRoutingManagerLogEndpointID(@"FigRoutingManager_iOSRemoveEndpointFromContext deactivate endpoint with name=", a2, 0, 1);
          v3 = FigRoutingManager_iOSDeactivateEndpoint(a2, v79[0], 1);
          *cf = 0;
          FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v22, 0, cf);
          if (!v3 && FigCFEqual())
          {
            if (FigRoutingManagerIsEndpointOfType(*cf, *MEMORY[0x1E69626A8]))
            {
              FigRoutingManagerContextUtilities_SetPickedEndpoints(v22, 0, @"configUpdateReasonEndedSuccess", v6, 0);
            }

            else
            {
              FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v22, v6, @"configUpdateReasonEndedSuccess");
            }
          }

          if (*cf)
          {
            CFRelease(*cf);
          }

          goto LABEL_110;
        }

LABEL_109:
        v3 = 0;
LABEL_110:
        if (!v22)
        {
          goto LABEL_126;
        }

        v62 = v22;
LABEL_125:
        CFRelease(v62);
        goto LABEL_126;
      }

LABEL_40:
      routingManager_processRemoveBluetoothAndVAEndpoint(a2, a1, v65, v6, Mutable);
LABEL_114:
      v3 = 0;
      goto LABEL_126;
    }

    v27 = v65;
    FigRoutingManagerLogRoutingRequestDetails(@"processRemoveAirPlayEndpoint - ", a2, 0, 0, v65, v6);
    v73 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v27, 0, &v73);
    if (FigRoutingManagerIsEndpointOfType(v73, *MEMORY[0x1E69626B0]))
    {
      v28 = v73;
      if (!v73 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v28 = 0;
      }

      if (FigRoutingManagerIsEndpointPresentInAggregate(a2, v28))
      {
        *type = 0;
        v29 = FigEndpointGetCMBaseObject();
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        v31 = v30 && (v30(v29, *MEMORY[0x1E6962270], v7, type), *type) && CFArrayGetCount(*type) == 1;
        if (FigRoutingManagerIsEndpointLocal(a2) && FigRoutingManagerDoesDeviceAlwaysHaveAggregateForLocalPlayback() != 0 && v31 && (ValueAtIndex = CFArrayGetValueAtIndex(*type, 0), FigRoutingManagerIsEndpointLocal(ValueAtIndex)))
        {
          FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v27, v6, @"configUpdateReasonEndedFailed");
        }

        else
        {
          FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint(a1, v27, a2, v6);
          v53 = v73;
          if (!v73 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
          {
            v53 = 0;
          }

          v3 = FigRoutingManagerRemoveEndpointFromAggregate(v53, a2, v27, v6, Mutable, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
          if (v3)
          {
LABEL_124:
            v62 = *type;
            if (!*type)
            {
              goto LABEL_126;
            }

            goto LABEL_125;
          }

          *v71 = 0;
          v54 = FigEndpointGetCMBaseObject();
          v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v55)
          {
            v55(v54, *MEMORY[0x1E69620F8], v7, v71);
          }

          v70 = 0;
          v56 = FigEndpointGetCMBaseObject();
          v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v57)
          {
            v57(v56, *MEMORY[0x1E69621E8], v7, &v70);
          }

          if (dword_1EB75DF20)
          {
            v69 = 0;
            v68 = OS_LOG_TYPE_DEFAULT;
            v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v59 = v69;
            v60 = v68;
            if (os_log_type_enabled(v58, v68))
            {
              v61 = v59;
            }

            else
            {
              v61 = v59 & 0xFFFFFFFE;
            }

            if (v61)
            {
              *cf = 136315650;
              *&cf[4] = "routingManager_processRemoveAirPlayEndpoint";
              v75 = 2114;
              v76 = *v71;
              v77 = 2114;
              v78 = v70;
              LODWORD(v64) = 32;
              _os_log_send_and_compose_impl(v61, 0, v79, 128, &dword_1B17A2000, v58, v60, "-FigRoutingManager_iOS- %s: CMSession: Successfully called to remove endpoint with ID=%{public}@ and name=%{public}@", cf, v64);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (v70)
          {
            CFRelease(v70);
            v70 = 0;
          }

          if (*v71)
          {
            CFRelease(*v71);
          }
        }

        v3 = 0;
        goto LABEL_124;
      }

      FigRoutingManagerLogEndpointID(@"endpoint=", a2, @" is already removed", 1);
    }

    else
    {
      *type = 0;
      v71[0] = OS_LOG_TYPE_DEFAULT;
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v49 = *type;
      v50 = v71[0];
      if (os_log_type_enabled(v48, v71[0]))
      {
        v51 = v49;
      }

      else
      {
        v51 = v49 & 0xFFFFFFFE;
      }

      if (v51)
      {
        *cf = 136315138;
        *&cf[4] = "routingManager_processRemoveAirPlayEndpoint";
        _os_log_send_and_compose_impl(v51, 0, v79, 128, &dword_1B17A2000, v48, v50, "-FigRoutingManager_iOS- %s: Nothing to do because picked endpoint is not aggregate", cf);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v27, v6, @"configUpdateReasonEndedNoop");
    goto LABEL_114;
  }

LABEL_126:
  if (v65)
  {
    CFRelease(v65);
    v65 = 0;
  }

  if (v66)
  {
    CFRelease(v66);
    v66 = 0;
  }

  if (v67)
  {
    CFRelease(v67);
    v67 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

void routingManager_processRemoveBluetoothAndVAEndpoint(uint64_t a1, uint64_t a2, const void *a3, const __CFDictionary *a4, uint64_t a5)
{
  FigRoutingManagerLogRoutingRequestDetails(@"processRemoveBluetoothEndpoint - ", a1, 0, 0, a3, a4);
  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B8]))
  {
    FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint(a2, a3, a1, a4);
    v10 = *MEMORY[0x1E695E4C0];
    v23 = *MEMORY[0x1E695E4C0];
    v11 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(CMBaseObject, *MEMORY[0x1E6962130], v11, &v23);
      v10 = v23;
    }

    if (v10 == *MEMORY[0x1E695E4D0])
    {
      cf = 0;
      v16 = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, *MEMORY[0x1E69620F8], v11, &cf);
        v18 = cf;
      }

      else
      {
        v18 = 0;
      }

      v19 = FigRoutingManagerCopyEndpointWithDeviceID(v18, 0, *MEMORY[0x1E69618F8], 0);
      if (v19)
      {
        v20 = v19;
        EndpointDeactivateOptions = FigRoutingManagerCreateEndpointDeactivateOptions(a1, a3, a4, a5);
        FigEndpointDeactivate();
        routingManager_updatePickedEndpoints(a3, a4);
        if (EndpointDeactivateOptions)
        {
          CFRelease(EndpointDeactivateOptions);
        }

        v15 = v20;
        goto LABEL_18;
      }
    }

    else
    {
      cf = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpoints(a3, &cf);
      v14 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf, 0);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a3, cf, @"configUpdateReasonEndedSuccess", a4, v14);
      if (v14)
      {
        v15 = v14;
LABEL_18:
        CFRelease(v15);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    return;
  }

  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D8]))
  {

    routingManager_processRemoveVirtualAudioEndpoint(a1, a2, a3, a4, a5);
  }
}

uint64_t routingManager_processRemoveVirtualAudioEndpoint(uint64_t a1, uint64_t a2, const void *a3, const __CFDictionary *a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D8]))
  {
    FigRoutingManagerLogRoutingRequestDetails(@"processRemoveVirtualAudioEndpoint - ", a1, 0, 0, a3, a4);
    FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint(a2, a3, a1, a4);
    EndpointDeactivateOptions = FigRoutingManagerCreateEndpointDeactivateOptions(a1, a3, a4, a5);
    FigEndpointDeactivate();
    routingManager_updatePickedEndpoints(a3, a4);
    if (EndpointDeactivateOptions)
    {
      CFRelease(EndpointDeactivateOptions);
    }

    return 0;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954296;
  }
}

_BYTE *FigRoutingManagerUpdateFadeInUponMusicVADCreation(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  result = FigRoutingManagerGetSharedManager(a1, a2);
  result[40] = v2;
  return result;
}

uint64_t FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty(CFTypeRef a1, uint64_t a2, char a3)
{
  v4 = a1;
  cf[22] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v5 = MEMORY[0x1E695E480];
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E6962238], *v5, cf);
      a1 = cf[0];
    }

    else
    {
      a1 = 0;
    }
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 3)
  {
    SharedManager = FigRoutingManagerGetSharedManager(ContextType, v9);
    theArray = 0;
    v11 = *v5;
    v12 = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, *MEMORY[0x1E6962270], v11, &theArray);
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(ValueAtIndex))
        {
          *type = 0;
          FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(type);
          if (dword_1EB75DF20)
          {
            *v28 = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingContextUtilities_SetLeaderToSystemAudioContext(*type, @"configUpdateReasonEndedSuccess");
          v27 = *type;
          if (!*type)
          {
            goto LABEL_19;
          }
        }

        else
        {
          *type = 0;
          v22 = FigEndpointGetCMBaseObject();
          v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v23)
          {
            v23(v22, *MEMORY[0x1E69621E8], v11, type);
          }

          *v28 = 0;
          v24 = FigEndpointGetCMBaseObject();
          v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v25)
          {
            v25(v24, *MEMORY[0x1E69622F8], v11, v28);
          }

          if (dword_1EB75DF20)
          {
            v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (*type)
          {
            CFRelease(*type);
            *type = 0;
          }

          v27 = *v28;
          if (!*v28)
          {
            goto LABEL_19;
          }
        }

        CFRelease(v27);
LABEL_19:
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }

        goto LABEL_21;
      }

      if (Count)
      {
        if (dword_1EB75DF20)
        {
          *type = 0;
          v28[0] = OS_LOG_TYPE_DEFAULT;
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_19;
      }
    }

    if (v4)
    {
      CFRetain(v4);
    }

    if (cf[0])
    {
      CFRetain(cf[0]);
      v15 = cf[0];
    }

    else
    {
      v15 = 0;
    }

    v17 = *(SharedManager + 1);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty_block_invoke;
    v30[3] = &__block_descriptor_49_e5_v8__0l;
    v31 = a3;
    v30[4] = v15;
    v30[5] = v4;
    MXDispatchAsync("FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty", "FigRoutingManager_iOS.m", 4806, 0, 0, v17, v30);
    goto LABEL_19;
  }

  if (dword_1EB75DF20)
  {
    LODWORD(theArray) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_21:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return 0;
}

void __FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty_block_invoke(uint64_t a1)
{
  theArray[23] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (dword_1EB75DF20)
    {
      LODWORD(theArray[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMUtility_InterruptSessionsWithRoutingContextUUID(*(a1 + 32));
  }

  v3 = FigRoutingManagerCopyLocalAirPlayEndpoint();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(Mutable, @"initiator", @"SelectRouteInitiator_CleanupSystemMusic");
  if (v3)
  {
    theArray[0] = 0;
    FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(v5, theArray, 0, 0, 0);
    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      IsSystemAudioRouteWHAGroupableLocal = FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal();
      if (Count)
      {
        FigRoutingManagerLogEndpointIDs(@"The following AirPlay endpoints are activating: ", theArray[0], 0, 1);
LABEL_20:
        if (theArray[0])
        {
          CFRelease(theArray[0]);
        }

        goto LABEL_22;
      }
    }

    else
    {
      IsSystemAudioRouteWHAGroupableLocal = FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal();
    }

    if (IsSystemAudioRouteWHAGroupableLocal || FigRoutingManagerUtilities_IsSystemAudioRouteNull() || FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency())
    {
      if (dword_1EB75DF20)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ArrayFromEndpoint = FigRoutingManagerCreateArrayFromEndpoint(v3);
      FigRoutingManagerPickEndpointsForContext(*(a1 + 32), ArrayFromEndpoint, 0, Mutable);
      if (ArrayFromEndpoint)
      {
        CFRelease(ArrayFromEndpoint);
      }
    }

    else if (dword_1EB75DF20)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_20;
  }

  if (dword_1EB75DF20)
  {
    LODWORD(theArray[0]) = 0;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingManagerPickRouteDescriptorsForContext(*(a1 + 32), 0, 0, Mutable);
LABEL_22:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    CFRelease(v12);
  }
}

void FigRoutingManagerPrintPickedRoutesForAllRoutingContexts()
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v16 = 0;
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v16);
  FigRoutingManagerCopyPickedEndpointsForRoutingContext(v16, &cf);
  FigRoutingManagerLogEndpointIDs(@"System audio routes:", cf, 0, 1);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (CMSMDeviceState_IsHomePodHub())
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyAudioContextUUIDs(theArray);
    v0 = 0;
    v1 = *MEMORY[0x1E695E480];
    while (1)
    {
      v2 = theArray[0] ? CFArrayGetCount(theArray[0]) : 0;
      v3 = theArray[0];
      if (v0 >= v2)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v0);
      FigRoutingManagerCopyPickedEndpointsForRoutingContext(ValueAtIndex, &cf);
      v5 = CFStringCreateWithFormat(v1, 0, @"Audio context routes for UUID=%@", ValueAtIndex);
      FigRoutingManagerLogEndpointIDs(v5, cf, 0, 1);
      if (v5)
      {
        CFRelease(v5);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v0;
    }
  }

  else
  {
    v15 = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v15);
    FigRoutingManagerCopyPickedEndpointsForRoutingContext(v15, &cf);
    FigRoutingManagerLogEndpointIDs(@"System music routes:", cf, 0, 1);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v6 = FigRoutingManagerCopyLocalAirPlayEndpoint();
    if (v6)
    {
      v14 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v14);
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      LODWORD(v14) = 0;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v15, theArray);
    *v18 = 0;
    if (theArray[0] && (v11 = FigEndpointGetCMBaseObject(), (v12 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
    {
      v12(v11, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], v18);
      v13 = *v18;
    }

    else
    {
      v13 = 0;
    }

    FigRoutingManagerLogEndpointIDs(@"SubEndpoints in the system music aggregate:", v13, 0, 1);
    if (*v18)
    {
      CFRelease(*v18);
      *v18 = 0;
    }

    if (theArray[0])
    {
      CFRelease(theArray[0]);
      theArray[0] = 0;
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v3 = v15;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

BOOL routingManager_isSystemMusicOnlyRoutedToLocalHomeTheaterEndpoint()
{
  v7 = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v7);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v7, &cf);
  theArray = 0;
  if (cf)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v1 && (v1(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray), theArray))
    {
      if (CFArrayGetCount(theArray) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        IsLocalHomeTheaterEndpoint = FigRoutingManagerIsLocalHomeTheaterEndpoint(ValueAtIndex);
      }

      else
      {
        IsLocalHomeTheaterEndpoint = 0;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    else
    {
      IsLocalHomeTheaterEndpoint = 0;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
    IsLocalHomeTheaterEndpoint = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return IsLocalHomeTheaterEndpoint;
}

void __routingManager_handleBottomUpRouteChange_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", *MEMORY[0x1E695E4C0]);
  FigRoutingManagerPickRouteDescriptorsForContext(*(a1 + 32), 0, 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t routingManager_processPickEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v35[16] = *MEMORY[0x1E69E9840];
  v8 = FigRoutingManagerContextUtilities_SetPickingState(a2, 3);
  v9 = v8;
  if (a1)
  {
    if (!v8)
    {
      v9 = FigRoutingManager_iOSActivateEndpoint(a1, a2, a3, a4);
    }

    goto LABEL_32;
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
  v11 = ContextType;
  if ((ContextType - 5) < 2)
  {
    goto LABEL_7;
  }

  if (!ContextType)
  {
    goto LABEL_32;
  }

  if (ContextType == 2)
  {
LABEL_7:
    v33 = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v33);
    v32 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, &v32);
    v31 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v33, 0, &v31);
    cf = 0;
    if (v32)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
      }
    }

    if (v31 == v32 && FigRoutingManagerIsEndpointOfType(v32, *MEMORY[0x1E69626A8]))
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v9 = FigRoutingManager_RouteAwayFromAirPlayEndpoint(v32, a2, 1u);
      v29 = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, v32, &v29);
      FigRoutingManagerLogEndpointID(@"Going to deactivate endpoint with name=", v32, @"because most recent currently activating endpoint is NULL", 1);
      FigRoutingManager_iOSDeactivateEndpoint(v32, v29, 1);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, @"configUpdateReasonEndedSuccess", a3, 0);
      v18 = CMSMUtility_CopyCurrentRouteIdentifiers();
      NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
      if (NumberOfCurrentOutputPorts)
      {
        v20 = NumberOfCurrentOutputPorts;
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v22 = 0;
        v23 = *MEMORY[0x1E69618F8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, v22);
          v25 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v23, v33);
          if (v25)
          {
            v26 = v25;
            CFArrayAppendValue(Mutable, v25);
            CFRelease(v26);
          }

          ++v22;
        }

        while (v20 != v22);
      }

      else
      {
        Mutable = 0;
      }

      v27 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(Mutable, 0);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v33, Mutable, @"configUpdateReasonEndedSuccess", a3, v27);
      FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
      if (v27)
      {
        CFRelease(v27);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v33)
      {
        CFRelease(v33);
        v33 = 0;
      }

      if (v9)
      {
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v29) = 0;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v11 == 5)
      {
        CMSMVAUtility_DestroyPerAppAirPlayVAD(a2);
      }

      FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, @"configUpdateReasonEndedSuccess", a3, 0);
      v35[0] = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, v32, v35);
      FigRoutingManager_iOSDeactivateEndpoint(v32, v35[0], 1);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v31)
    {
      CFRelease(v31);
      v31 = 0;
    }

    if (v32)
    {
      CFRelease(v32);
      v32 = 0;
    }

    v16 = v33;
    if (v33)
    {
LABEL_31:
      CFRelease(v16);
    }
  }

  else
  {
    v35[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, v35);
    if (v35[0])
    {
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, @"configUpdateReasonEndedSuccess", a3, 0);
      *v34 = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, v35[0], v34);
      if (FigRoutingManagerIsEndpointOfType(v35[0], *MEMORY[0x1E69626A8]))
      {
        FigRoutingManagerLogEndpointID(@"Going to deactivate endpoint with name=", v35[0], @"because user selected NULL", 1);
        FigRoutingManager_iOSDeactivateEndpoint(v35[0], *v34, 1);
      }

      v16 = v35[0];
      if (v35[0])
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  FigRoutingContextUtilities_LogCurrentState();
  return v9;
}

BOOL routingManager_shouldSystemMusicFollowSystemAudio(const __CFArray *a1, uint64_t a2)
{
  if (a1 && CFArrayGetCount(a1))
  {
    if (CFArrayGetCount(a1) != 1)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    result = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(ValueAtIndex);
    if (!result)
    {
      return result;
    }
  }

  if (!a2)
  {
    return 1;
  }

  result = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a2);
  if (result)
  {
    return 1;
  }

  return result;
}

void routingManager_routeToWHAGroupableVAEndpoint(const __CFDictionary *a1, uint64_t a2)
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  v4 = FigRoutingManagerCopyWHAGroupableVAEndpoint();
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(v4, cf, a1, a2);
  FigRoutingManagerGetFigEndpointFeatures(v4, cf);
  FigEndpointActivate();
  v6 = CMSMUtility_CopyCurrentRouteIdentifiers();
  v7 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v6, cf);
  v8 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v7, 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(cf, v7, @"configUpdateReasonEndedSuccess", a1, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t routingManager_processAddAirPlayEndpoint(const void *a1, const char *a2, const void *a3, const __CFDictionary *a4, const void *a5)
{
  cf[22] = *MEMORY[0x1E69E9840];
  FigRoutingManagerContextUtilities_SetPickingState(a3, 4);
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, cf);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoint(a3, cf[0], a1, a4, a5);
  if (FigRoutingManagerIsEndpointActivated(a1))
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v10)
    {
      v10(a1, 0);
    }

    FigEndpointDeactivate();
  }

  IsSystemAudioRouteAirPlayLowLatency = FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency();
  if (FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal())
  {
    theArray = 0;
    if (!cf[0])
    {
      goto LABEL_45;
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    }

    if (!theArray || !CFArrayGetCount(theArray))
    {
LABEL_45:
      if (!FigRoutingManagerIsEndpointLocal(a1) && !CMSMDeviceState_IsHomePodHub())
      {
        if (dword_1EB75DF20)
        {
          *v26 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManagerAggregateAddLocalAirPlayEndpoint(a2, cf[0]);
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else if (FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a1))
  {
    if (dword_1EB75DF20)
    {
      LODWORD(theArray) = 0;
      v26[0] = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    routingManager_routeToWHAGroupableVAEndpoint(a4, a5);
  }

  else if (!FigRoutingManagerIsClusterLocalEndpoint(a1) && !IsSystemAudioRouteAirPlayLowLatency)
  {
    if (dword_1EB75DF20)
    {
      LODWORD(theArray) = 0;
      v26[0] = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingManagerAggregateRemoveLocalAirPlayEndpoint();
  }

  v17 = cf[0];
  if (!cf[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v17 = 0;
  }

  v18 = FigRoutingManagerAddEndpointToAggregate(v17, a1, a3, a4, a5, FigRoutingManagerAggregateAddEndpointCompletionCallback);
  if (!v18)
  {
    theArray = 0;
    v19 = *MEMORY[0x1E695E480];
    v20 = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(v20, *MEMORY[0x1E69620F8], v19, &theArray);
    }

    *v26 = 0;
    v22 = FigEndpointGetCMBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, *MEMORY[0x1E69621E8], v19, v26);
    }

    if (dword_1EB75DF20)
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*v26)
    {
      CFRelease(*v26);
      *v26 = 0;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v18;
}

void routingManager_updatePickedEndpoints(const void *a1, uint64_t a2)
{
  v14[20] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(v14);
  if (FigCFEqual())
  {
    v4 = CMSMUtility_CopyCurrentInputRouteIdentifiers();
  }

  else
  {
    v4 = CMSMUtility_CopyCurrentRouteIdentifiers();
  }

  v5 = v4;
  v6 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v4, a1);
  v7 = v6;
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
    if (Count >= 1)
    {
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
        if (FigRoutingManagerIsEndpointLowLatencyAirPlay(ValueAtIndex))
        {
          if (FigRoutingContextUtilities_IsFollowingAnotherContext(cf))
          {
            break;
          }
        }

        if (Count == ++v9)
        {
          goto LABEL_15;
        }
      }

      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingContextUtilities_UnfollowUUIDFromLeader(cf, @"configUpdateReasonEndedSuccess");
    }
  }

  else
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
  }

LABEL_15:
  v12 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v7, 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, v7, @"configUpdateReasonEndedSuccess", a2, v12);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v14[0])
  {
    CFRelease(v14[0]);
  }
}

uint64_t FigVolumeControllerStartServer()
{
  v3 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (dword_1EB75DEC0 >= 0x100)
  {
    dword_1EB75DEC0 = 0;
  }

  v0 = FigXPCServerStart();
  if (v0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v0;
}

_xpc_connection_s *volumeControllerServer_getClientInfo(_xpc_connection_s *result, _DWORD *a2, void *a3)
{
  if (a2 && a3)
  {
    result = xpc_connection_get_pid(result);
    v5 = result;
    if (result >= 1)
    {
      result = proc_name(result, a3, 0x80u);
      if ((result & 0x80000000) == 0)
      {
        *(a3 + result) = 0;
      }
    }

    *a2 = v5;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigVibratorIsVibratorAvailable()
{
  if (_MergedGlobals_6 != -1)
  {
    FigVibratorIsVibratorAvailable_cold_1();
  }

  result = gvVibeSynthIsAvailable;
  if (!gvVibeSynthIsAvailable)
  {
    v1 = *MEMORY[0x1E696CD60];
    v2 = IOServiceNameMatching("vibrator");
    result = IOServiceGetMatchingService(v1, v2);
    if (result)
    {
      IOObjectRelease(result);
      return 1;
    }
  }

  return result;
}

uint64_t fvGetVibeSynthIsAvailable()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libVibeSynthEngine.dylib", 4);
  qword_1ED6D2F20 = result;
  if (result)
  {
    result = dlsym(result, "VibeSynthEngineHasHardwareSupport");
    if (result)
    {
      result = (result)();
      gvVibeSynthIsAvailable = result;
      if (result)
      {
        return result;
      }

      goto LABEL_4;
    }

    if (!gvVibeSynthIsAvailable)
    {
LABEL_4:
      result = dlclose(qword_1ED6D2F20);
      qword_1ED6D2F20 = 0;
    }
  }

  return result;
}

void FigVibratorPostNotification(const __CFString *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, a1, 0, 0, 1u);
}

CFArrayRef vaeCreatePortListArrayFromPortID(int a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v1 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v2 = CFArrayCreate(v1, values, 1, MEMORY[0x1E695E9C0]);
  if (values[0])
  {
    CFRelease(values[0]);
  }

  return v2;
}

CFTypeRef vaeCopyBluetoothShareablePortsForPort(AudioObjectID a1)
{
  outData[22] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  if (!a1)
  {
    return 0;
  }

  inAddress.mElement = 0;
  *&inAddress.mSelector = *"gaswbolg";
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    return 0;
  }

  ioDataSize = 8;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (outData[0])
    {
      CFRelease(outData[0]);
      outData[0] = 0;
    }
  }

  if (dword_1EB75DE40)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return outData[0];
}

CFStringRef vaeCopyDeviceMacAddressFromVADPort(AudioObjectID a1)
{
  v1 = vaeCopyDeviceIdentifierFromVADPort(a1);
  v2 = MXCFCopyPrefixSubstring(v1, 17);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t vaeCopyDeviceAddressFromVADPort(AudioObjectID a1)
{
  v3 = 0;
  v1 = vaeCopyDeviceIdentifierFromVADPort(a1);
  CMSMUtility_CreateTokensFromDeviceUID(v1, &v3, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

CFTypeRef vaeCopyPersistentUID(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  outData = 0;
  *&inAddress.mSelector = *"dippbolg";
  inAddress.mElement = 0;
  ioDataSize = 8;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return outData;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  result = outData;
  if (outData)
  {
    CFRelease(outData);
    return 0;
  }

  return result;
}

CFTypeRef vaeCopyModelUIDForPort(AudioObjectID a1)
{
  outData[24] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  *&inAddress.mSelector = *"dimpbolg";
  inAddress.mElement = 0;
  ioDataSize = 8;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData))
  {
    return outData[0];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  result = outData[0];
  if (outData[0])
  {
    CFRelease(outData[0]);
    return 0;
  }

  return result;
}

CFTypeRef vaeCopyExclavesSensorStatusInfo()
{
  outData[22] = *MEMORY[0x1E69E9840];
  VADPortIDFromVADPortType = vaemGetVADPortIDFromVADPortType(1886216809);
  outData[0] = 0;
  *&inAddress.mSelector = *"SSxEbolg";
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(VADPortIDFromVADPortType, &inAddress))
  {
    return 0;
  }

  ioDataSize = 8;
  if (!AudioObjectGetPropertyData(VADPortIDFromVADPortType, &inAddress, 0, 0, &ioDataSize, outData))
  {
    return outData[0];
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  result = outData[0];
  if (outData[0])
  {
    CFRelease(outData[0]);
    return 0;
  }

  return result;
}

BOOL vaeIsAvailableForVoicePrompts(_BOOL8 result)
{
  v5 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    *&inAddress.mSelector = 0x676C6F6274627461;
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

uint64_t vaeGetPartnersForPort(AudioObjectID inObjectID, void *outData)
{
  result = 0;
  v7 = *MEMORY[0x1E69E9840];
  if (inObjectID && outData)
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"trppbolg";
    ioDataSize = 32;
    if (AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }

    else
    {
      return ioDataSize >> 2;
    }
  }

  return result;
}

uint64_t vaePartnerRouteRoutable(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  result = vaeGetPartnersForPort(a1, v3);
  if (result)
  {
    return vaeDoesBluetoothSupportFeature(a1, @"kBluetoothAudioDeviceFeatureHighQualityBiDirectionalAudio") == 0;
  }

  return result;
}

BOOL vaeIsSiblingRoutePresent(_BOOL8 result)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(outData, 0, sizeof(outData));
  if (result)
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"bispbolg";
    ioDataSize = 32;
    if (AudioObjectGetPropertyData(result, &inAddress, 0, 0, &ioDataSize, outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }

    else
    {
      return ioDataSize > 3;
    }
  }

  return result;
}

uint64_t vaeSignalOwnershipIsTaken()
{
  if (getOwnershipCondition_onceToken != -1)
  {
    vaeSignalOwnershipIsTaken_cold_1();
  }

  [getOwnershipCondition_sOwnershipCondition lock];
  if (getOwnershipCondition_onceToken != -1)
  {
    vaeSignalOwnershipIsTaken_cold_1();
  }

  [getOwnershipCondition_sOwnershipCondition broadcast];
  if (getOwnershipCondition_onceToken != -1)
  {
    vaeSignalOwnershipIsTaken_cold_1();
  }

  v0 = getOwnershipCondition_sOwnershipCondition;

  return [v0 unlock];
}

uint64_t vaeRequestOwnershipOnBTPort(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  SInt64 = FigCFNumberCreateSInt64();
  IsPortPresentInConnectedOutputPorts = vaemIsPortPresentInConnectedOutputPorts(SInt64);
  v6 = IsPortPresentInConnectedOutputPorts;
  if (MX_FeatureFlags_IsSystemInputPickerEnabled(IsPortPresentInConnectedOutputPorts, v7))
  {
    v8 = vaemIsPortPresentInConnectedInputPorts(SInt64) != 0;
    if (!SInt64)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (SInt64)
  {
LABEL_3:
    CFRelease(SInt64);
  }

LABEL_4:
  if (!a1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    MXSimulateCrash("Calling for ownership on unknown port is unexpected. Please file a bug to MediaExperience (New Bugs) | All.");
    return 4294954310;
  }

  *&inAddress.mSelector = 0x676C6F626F736163;
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    goto LABEL_8;
  }

  if (vaeGetBTPortOwnsSharedAudioConnection(a1))
  {
    if (!dword_1EB75DE40)
    {
      return 0;
    }

LABEL_8:
    valuePtr.mSelector = 0;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  if (v6 == 0 && !v8)
  {
    if (dword_1EB75DE40)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 4294954310;
  }

  if (vaeGetPortTypeFromPortID(a1) != 1885892674)
  {
    memset(&valuePtr, 0, 32);
    PartnersForPort = vaeGetPartnersForPort(a1, &valuePtr);
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    if (PartnersForPort)
    {
      v16 = PartnersForPort;
      p_valuePtr = &valuePtr;
      do
      {
        if (p_valuePtr->mSelector)
        {
          v18 = CFNumberCreate(v3, kCFNumberSInt32Type, p_valuePtr);
          CFArrayAppendValue(Mutable, v18);
          if (v18)
          {
            CFRelease(v18);
          }
        }

        p_valuePtr = (p_valuePtr + 4);
        --v16;
      }

      while (v16);
    }

    A2DPPort = cmsmGetA2DPPort(Mutable);
    if (dword_1EB75DE40)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (A2DPPort)
    {
      goto LABEL_32;
    }

    return 4294954310;
  }

  A2DPPort = a1;
LABEL_32:
  *type = 1;
  *&valuePtr.mSelector = 0x676C6F626F736163;
  valuePtr.mElement = 0;
  result = AudioObjectHasProperty(A2DPPort, &valuePtr);
  if (result)
  {
    [MEMORY[0x1E695DF00] now];
    if (getOwnershipCondition_onceToken != -1)
    {
      vaeRequestOwnershipOnBTPort_cold_1();
    }

    [getOwnershipCondition_sOwnershipCondition lock];
    *v24 = CMSMVAUtility_AudioObjectSetPropertyData(A2DPPort, &valuePtr, 0, 0, 4, type);
    if (*v24)
    {
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (getOwnershipCondition_onceToken != -1)
      {
        vaeRequestOwnershipOnBTPort_cold_1();
      }

      [getOwnershipCondition_sOwnershipCondition unlock];
      return *v24;
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (getOwnershipCondition_onceToken != -1)
      {
        vaeRequestOwnershipOnBTPort_cold_1();
      }

      v22 = [getOwnershipCondition_sOwnershipCondition waitUntilDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceNow:", 6.0)}];
      if (dword_1EB75DE40)
      {
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (getOwnershipCondition_onceToken != -1)
      {
        vaeRequestOwnershipOnBTPort_cold_1();
      }

      [getOwnershipCondition_sOwnershipCondition unlock];
      if (v22)
      {
        return 0;
      }

      else
      {
        return 4294954310;
      }
    }
  }

  return result;
}

__CFString *vaeGetOwnershipRequestReasonString(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return @"Not defined yet";
  }

  else
  {
    return off_1E7AEB680[a1 - 1];
  }
}

uint64_t vaeHasUserEnabledInEarDetectionForBTPort(AudioObjectID a1, _BYTE *a2)
{
  result = vaeDoesBTPortSupportInEarDetection(a1);
  v5 = result;
  if (result)
  {
    v6.mElement = 0;
    *&v6.mSelector = *"eitbbolg";
    result = AudioObjectHasProperty(a1, &v6) != 0;
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t vaeIsInEarStatusTrueForBTPort(AudioObjectID a1)
{
  v8 = *MEMORY[0x1E69E9840];
  outData = 0;
  result = vaeDoesBTPortSupportInEarDetection(a1);
  if (result)
  {
    if (a1)
    {
      *&inAddress.mSelector = 0x676C6F6262746965;
      inAddress.mElement = 0;
      ioDataSize = 4;
      if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        return outData != 0;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  return result;
}

uint64_t vaeGetBTPortInEarStatusForBud(AudioObjectID a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  outData = 0;
  v10 = 0;
  HasUserEnabledInEarDetectionForBTPort = vaeHasUserEnabledInEarDetectionForBTPort(a1, &v10);
  if (v10)
  {
    if (!HasUserEnabledInEarDetectionForBTPort)
    {
      return 1;
    }

    if (a2)
    {
      v5 = 1651796336;
    }

    else
    {
      v5 = 1651796339;
    }

    *&inAddress.mScope = 1735159650;
    ioDataSize = 4;
    inAddress.mSelector = v5;
    if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      return outData;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

__CFString *vaeGetBluetoothListeningModeString(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7AEB710[a1];
  }
}

__CFString *vaeGetBluetoothSpatialAudioModeString(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7AEB738[a1];
  }
}

__CFString *vaeGetBluetoothAlternateTransportString(int a1)
{
  v1 = @"AlternateTransportUSBc";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"AlternateTransportDefault";
  }
}

uint64_t vaeGetBluetoothListeningMode(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"mtslbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
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
  }

  return result;
}

uint64_t vaeGetBluetoothSpatialAudioMode(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"dmpsbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
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
  }

  return result;
}

uint64_t vaeGetBluetoothAlternateTransport(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"tlabbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
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
  }

  return result;
}

uint64_t vaeDoesPortSupportStereoHFP(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"pshsbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
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

uint64_t vaeGetSupportedBluetoothListeningModes(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"smslbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
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
  }

  return result;
}

CFStringRef vaeCopyLocalizedString(CFStringRef key)
{
  if (vaeCopyLocalizedString_kCMSession_LoadVirtualAudioBundleOnce != -1)
  {
    vaeCopyLocalizedString_cold_1();
  }

  v2 = vaeCopyLocalizedString_bundleRef;

  return CFBundleCopyLocalizedString(v2, key, key, @"Localizable");
}

BOOL vaeDoesPortSupportHeadTrackedSpatialAudio(AudioObjectID a1)
{
  v2.mElement = 0;
  *&v2.mSelector = *"nepsbolg";
  return AudioObjectHasProperty(a1, &v2) != 0;
}

uint64_t vaeIsHeadTrackedSpatialAudioActive(AudioObjectID a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"nepsbolg";
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
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

uint64_t vaeDoesPortAllowHeadTrackedSpatialAudio(AudioObjectID a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"shpsbolg";
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
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

uint64_t vaeDoesPortSupportSecureMicrophone(AudioObjectID a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"smcsbolg";
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
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

uint64_t vaeSetPortAvailableForVoicePrompts(uint64_t result, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a2;
  outIsSettable = 1;
  if (result)
  {
    v2 = result;
    *&inAddress.mSelector = 0x676C6F6274627461;
    inAddress.mElement = 0;
    AudioObjectIsPropertySettable(result, &inAddress, &outIsSettable);
    if (outIsSettable)
    {
      v4 = ![+[MXSessionManager sharedInstance](MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:", 0];
      result = CMSMVAUtility_AudioObjectSetPropertyData(v2, &inAddress, 4, &v4, 4, &v8);
      v6 = result;
      if (result)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vaeSetBTLowLatencyMode(uint64_t a1, int a2)
{
  v4.mElement = 0;
  v5 = a2;
  *&v4.mSelector = *"lltbbolg";
  result = AudioObjectHasProperty(a1, &v4);
  if (result)
  {
    return CMSMVAUtility_AudioObjectSetPropertyData(a1, &v4, 0, 0, 4, &v5);
  }

  return result;
}

float vaeGetDestinationVolumeScalarFactor(double a1, float a2)
{
  v2 = a2;
  inQualifierData[22] = *MEMORY[0x1E69E9840];
  *inQualifierData = a1;
  outData = a2;
  *&inAddress.mSelector = *"fsvdbolg";
  inAddress.mElement = 0;
  if (AudioObjectHasProperty([+[MXSessionManager defaultVADID] sharedInstance])
  {
    ioDataSize = 8;
    if (AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:8u])
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

  return v2;
}

uint64_t vaeMakePortRoutable(int a1, int a2, unsigned int a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  PortListArrayFromPortID = vaeCreatePortListArrayFromPortID(a1);
  if (a2 == 2 && dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(PortListArrayFromPortID, a2, a3, a4, 0);
  if (PortListArrayFromPortID)
  {
    CFRelease(PortListArrayFromPortID);
  }

  return ArrayOfPortsRoutable;
}

BOOL vaeCopyIfBluetoothEndpointSupportsConversationDetect(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  cf = 0;
  if (!MX_FeatureFlags_IsConversationDetectSupported(a1, a2))
  {
    return 0;
  }

  v3 = vaeCopyDeviceIdentifierFromVADPort(v2);
  v4 = FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager(v3);
  if (v4)
  {
    v5 = v4;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, @"SupportsConversationDetect", *MEMORY[0x1E695E480], &cf);
    }

    v9 = FigCFEqual();
    CFRelease(v5);
  }

  else
  {
    v9 = FigCFEqual();
  }

  v8 = v9 != 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

BOOL vaeCopyIfBluetoothEndpointHasConversationDetectEnabled(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  cf = 0;
  if (!MX_FeatureFlags_IsConversationDetectSupported(a1, a2))
  {
    return 0;
  }

  v3 = vaeCopyDeviceIdentifierFromVADPort(v2);
  v4 = FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager(v3);
  if (v4)
  {
    v5 = v4;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, @"ConversationDetectEnable", *MEMORY[0x1E695E480], &cf);
    }

    v9 = FigCFEqual();
    CFRelease(v5);
  }

  else
  {
    v9 = FigCFEqual();
  }

  v8 = v9 != 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t vaeUpdateBluetoothCallScreeningStatus(uint64_t result, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (result)
  {
    v2 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"sslcbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      v6 = CMSMVAUtility_AudioObjectSetPropertyData(v2, &inAddress, 0, 0, 4, &v7);
      if (v6)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return v6;
      }

      else
      {
        if (dword_1EB75DE40)
        {
          v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t vaeAddInEarBluetoothStatusListenerForPort(AudioObjectID a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = 0x676C6F6262746965;
  inAddress.mElement = 0;
  v7 = AudioObjectAddPropertyListener(a1, &inAddress, cmsmInEarBluetoothStatusListener, 0);
  if (v7)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *&inAddress.mSelector = 0x676C6F6262746970;
  inAddress.mElement = 0;
  v7 = AudioObjectAddPropertyListener(a1, &inAddress, cmsmPrimaryBudInEarBluetoothStatusListener, 0);
  if (v7)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *&inAddress.mSelector = 0x676C6F6262746973;
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmSecondaryBudInEarBluetoothStatusListener, 0);
  v7 = result;
  if (result)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t vaeAddOwnsSharedAudioConnectionListenerForPort(AudioObjectID a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"casobolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmOwnsSharedAudioConnectionListener, 0);
  v3 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t vaeAddSharedAudioConnectionFailedListenerForPort(AudioObjectID a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"fcasbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmSharedAudioConnectionFailedListener, 0);
  v3 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t vaeAddBluetoothListeningModeListenerForPort(AudioObjectID a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"mtslbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothListeningModeListener, 0);
  v3 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t vaeAddBluetoothSharingAggregationListenerForPort(AudioObjectID a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"gaswbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothSharingAggregationListener, 0);
  v3 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t vaeAddBluetoothSpatialAudioEnabledListenerForPort(AudioObjectID a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"nepsbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothSpatialAudioEnabledListener, 0);
  v3 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t vaeAddBluetoothSpatialAudioUserEnableFeatureListenerForPort(AudioObjectID a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"shpsbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothSpatialAudioUserEnableFeatureListener, 0);
  v3 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t vaeAddBluetoothSpatialAudioModeListenerForPort(AudioObjectID a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"dmpsbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothSpatialAudioModeListener, 0);
  v3 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t vaeAddBluetoothAlternateTransportListenerForPort(AudioObjectID a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"tlabbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothAlternateTransportListener, 0);
  v3 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t vaeAddExclavesStatusChangedNotificationListener()
{
  v4 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"SSxEbolg";
  inAddress.mElement = 0;
  VADPortIDFromVADPortType = vaemGetVADPortIDFromVADPortType(1886216809);
  result = AudioObjectAddPropertyListener(VADPortIDFromVADPortType, &inAddress, cmsmExclavesSensorStatusListener, 0);
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t FigVAEndpointCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a2;
    FigVAEndpointGetClassID(a1, a2);
    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      *CMBaseObjectGetDerivedStorage() = v4;
      *a3 = 0;
    }
  }

  else
  {
    FigVAEndpointCreate_cold_1(&v7);
    return v7;
  }

  return v5;
}

_DWORD *FigVAEndpointDisassociatePort(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 0;
  return result;
}

id __getOwnershipCondition_block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E696AB30]);
  getOwnershipCondition_sOwnershipCondition = result;
  return result;
}

void __vaeCopyLocalizedString_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  vaeCopyLocalizedString_bundleUrl = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/Library/Audio/Plug-Ins/HAL/VirtualAudio.plugin", kCFURLPOSIXPathStyle, 1u);
  v1 = CFBundleCreate(v0, vaeCopyLocalizedString_bundleUrl);
  vaeCopyLocalizedString_bundleRef = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  v2 = vaeCopyLocalizedString_bundleUrl;
  if (vaeCopyLocalizedString_bundleUrl)
  {

    CFRelease(v2);
  }
}

void _VAEndpoint_Finalize(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t _VAEndpoint_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v59[16] = *MEMORY[0x1E69E9840];
  result = 4294950586;
  if (a2 && a3)
  {
    v6 = *CMBaseObjectGetDerivedStorage();
    if (CFEqual(a2, *MEMORY[0x1E69621C0]))
    {
      v7 = CFGetTypeID(a3);
      if (v7 != CFNumberGetTypeID())
      {
        return 4294950586;
      }

      valuePtr.mSelector = 0;
      CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
      v8 = CMSMUtility_CopyCurrentRouteTypesAsCFString();
      if (dword_1EB75DE40)
      {
        LODWORD(v47) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v18 = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
      vaemSetDeviceVolumeIfNotSet(v18, 0, v8, 0, *&valuePtr.mSelector, 0.0, 0.0);
      if (!v8)
      {
        return 0;
      }

      v19 = v8;
LABEL_25:
      CFRelease(v19);
      return 0;
    }

    if (CFEqual(a2, *MEMORY[0x1E6962338]))
    {
      v10 = CFGetTypeID(a3);
      if (v10 != CFNumberGetTypeID())
      {
        return 0;
      }

      LODWORD(v47) = 0;
      CFNumberGetValue(a3, kCFNumberFloat32Type, &v47);
      if (vaeIsPortBluetoothShareable(v6) && CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
      {
        CMSMVAUtility_SetVolumePreferenceForPort(@"Audio/Video", @"Default", v6);
      }

      if (!vaeIsPortWHAGroupable(v6))
      {
        return 0;
      }

      IsPortActiveForCurrentRouteConfiguration = vaeIsPortActiveForCurrentRouteConfiguration(v6);
      *&valuePtr.mSelector = 0;
      FigSimpleMutexLock();
      PVMCopyVolumeCategoryAndMode([+[MXSessionManager sharedInstance](MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:", [+[MXSessionManager currentAudioCategory] sharedInstance], 0, &valuePtr, 0];
      FigSimpleMutexUnlock();
      if (!IsPortActiveForCurrentRouteConfiguration || !FigCFEqual())
      {
        CMSMVAUtility_SetVolumePreferenceForPort(@"Audio/Video", @"Default", v6);
      }

      CMSMVAUtility_SetCurrentPreferredVolume(*&v47);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(v6);
      v22 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
      if (dword_1EB75DE40)
      {
        *type = 0;
        v51[0] = OS_LOG_TYPE_DEFAULT;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v24 = *type;
        v25 = v51[0];
        if (os_log_type_enabled(v23, v51[0]))
        {
          v26 = v24;
        }

        else
        {
          v26 = v24 & 0xFFFFFFFE;
        }

        if (v26)
        {
          VADNameForVADID = CMSMUtility_GetVADNameForVADID([+[MXSessionManager defaultVADID] sharedInstance];
          v53 = 136315906;
          v54 = "_VAEndpoint_SetProperty";
          v55 = 2114;
          *v56 = VADNameForVADID;
          *&v56[8] = 2114;
          *v57 = v22;
          *&v57[8] = 2114;
          v58 = *&valuePtr.mSelector;
          _os_log_send_and_compose_impl(v26, 0, v59, 128, &dword_1B17A2000, v23, v25, "-CMVAEndpoint- %s: Setting volume on VAD: %{public}@ route: %{public}@ for WHA groupable port and mapped category %{public}@", &v53, 42);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v22)
      {
        CFRelease(v22);
      }

      v19 = *&valuePtr.mSelector;
      if (!*&valuePtr.mSelector)
      {
        return 0;
      }

      goto LABEL_25;
    }

    if (CFEqual(a2, *MEMORY[0x1E69621A8]))
    {
      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
        return 0;
      }

      v47 = 0;
      CFNumberGetValue(a3, kCFNumberSInt64Type, &v47);
      *type = v47;
      if (!v6)
      {
        return 0;
      }

      valuePtr.mElement = 0;
      *&valuePtr.mSelector = *"mtslbolg";
      result = AudioObjectHasProperty(v6, &valuePtr);
      if (!result)
      {
        return result;
      }

      v12 = CMSMVAUtility_AudioObjectSetPropertyData(v6, &valuePtr, 0, 0, 4, type);
      *v51 = v12;
      if (!v12)
      {
        if (dword_1EB75DE40)
        {
          v49 = 0;
          v48 = OS_LOG_TYPE_DEFAULT;
          v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v34 = v49;
          v35 = v48;
          if (os_log_type_enabled(v33, v48))
          {
            v36 = v34;
          }

          else
          {
            v36 = v34 & 0xFFFFFFFE;
          }

          if (v36)
          {
            if (*type > 4u)
            {
              v37 = 0;
            }

            else
            {
              v37 = off_1E7AEB710[*type];
            }

            v53 = 136315394;
            v54 = "vaeSetBluetoothListeningMode";
            v55 = 2114;
            *v56 = v37;
            _os_log_send_and_compose_impl(v36, 0, v59, 128, &dword_1B17A2000, v33, v35, "-CMVAEndpoint- %s: Called to set bluetooth listening mode to %{public}@", &v53, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }

      v13 = v12;
      v49 = 0;
      v48 = OS_LOG_TYPE_DEFAULT;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = v49;
      v16 = v48;
      if (os_log_type_enabled(v14, v48))
      {
        v17 = v15;
      }

      else
      {
        v17 = v15 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v53 = 136315906;
        v54 = "vaeSetBluetoothListeningMode";
        v55 = 1024;
        *v56 = v13;
        *&v56[4] = 1042;
        *&v56[6] = 4;
        *v57 = 2082;
        *&v57[2] = v51;
        _os_log_send_and_compose_impl(v17, 0, v59, 128, &dword_1B17A2000, v14, v16, "-CMVAEndpoint- %s: AudioObjectSetPropertyData( kVirtualAudioPortPropertyBluetoothListenMode) failed with err = %d = %{public}.4s", &v53, 34);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return *v51;
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x1E6962170]))
      {
        v28 = CFGetTypeID(a3);
        if (v28 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          vaemSetFullMute(Value);
        }

        return 0;
      }

      if (CFEqual(a2, *MEMORY[0x1E6961FA8]))
      {
        v30 = CFGetTypeID(a3);
        if (v30 == CFBooleanGetTypeID())
        {
          v31 = CFBooleanGetValue(a3) != 0;
          vaeSetBluetoothSpatialAudioUserEnableFeature(v6, v31);
        }

        return 0;
      }

      if (CFEqual(a2, *MEMORY[0x1E69620E8]))
      {
        v32 = CFGetTypeID(a3);
        if (v32 == CFNumberGetTypeID())
        {
          v59[0] = 0;
          CFNumberGetValue(a3, kCFNumberSInt64Type, v59);
          return vaeSetBluetoothSpatialAudioMode(v6, v59[0]);
        }

        return 0;
      }

      result = CFEqual(a2, @"ConversationDetectEnable");
      if (result)
      {
        v38 = CFGetTypeID(a3);
        TypeID = CFBooleanGetTypeID();
        if (v38 != TypeID)
        {
          return 0;
        }

        if (MX_FeatureFlags_IsConversationDetectSupported(TypeID, v40) && (v41 = CFBooleanGetValue(a3), v42 = vaeCopyDeviceIdentifierFromVADPort(v6), (v43 = FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager(v42)) != 0))
        {
          v44 = v43;
          v45 = MEMORY[0x1E695E4D0];
          if (!v41)
          {
            v45 = MEMORY[0x1E695E4C0];
          }

          v46 = FigEndpointSetProperty(v43, @"ConversationDetectEnable", *v45);
          CFRelease(v44);
          return v46;
        }

        else
        {
          return 4294954311;
        }
      }
    }
  }

  return result;
}

uint64_t vaeIsPortActiveForCurrentRouteConfiguration(int a1)
{
  v2 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, 0x1F2893B50);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (CMSMVAUtility_GetPortAtIndex(v3, v6) != a1)
    {
      if (v5 == ++v6)
      {
        goto LABEL_6;
      }
    }

    v7 = 1;
  }

  CFRelease(v3);
  return v7;
}

uint64_t vaeSetBluetoothSpatialAudioUserEnableFeature(uint64_t result, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (result)
  {
    v2 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"shpsbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      result = CMSMVAUtility_AudioObjectSetPropertyData(v2, &inAddress, 0, 0, 4, &v6);
      v5 = result;
      if (result || dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

uint64_t vaeSetBluetoothSpatialAudioMode(uint64_t result, unsigned int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (result)
  {
    v2 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"dmpsbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      v6 = CMSMVAUtility_AudioObjectSetPropertyData(v2, &inAddress, 0, 0, 4, &v7);
      if (v6)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return v6;
      }

      else
      {
        if (dword_1EB75DE40)
        {
          v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t FigEndpointSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

uint64_t _VAEndpoint_ActivateWithCompletionCallback(uint64_t a1, uint64_t a2, const void *a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *DerivedStorage;
  if (!v11)
  {
    return 4294950573;
  }

  v12 = DerivedStorage;
  v13 = *(DerivedStorage + 1);
  *(DerivedStorage + 1) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(v12 + 3) + 1;
  *(v12 + 2) = a2;
  *(v12 + 3) = v14;
  if (a3)
  {
    v15 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961678]);
    CFDictionaryGetValue(a3, *MEMORY[0x1E6961660]);
  }

  else
  {
    v15 = 0;
  }

  if (!FigCFEqual() || !vaeIsPortBluetoothShareable(v11))
  {
    goto LABEL_19;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  v16 = NumberOfCurrentOutputPorts;
  if (!NumberOfCurrentOutputPorts)
  {
    goto LABEL_20;
  }

  if (NumberOfCurrentOutputPorts == 1)
  {
    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    if (vaeIsPortBluetoothShareable(CurrentOutputPortAtIndex))
    {
      if (dword_1EB75DE40)
      {
        valuea = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(valuea, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      SInt64 = FigCFNumberCreateSInt64();
      CFArrayAppendValue(Mutable, SInt64);
      if (SInt64)
      {
        CFRelease(SInt64);
      }

      v31 = FigCFNumberCreateSInt64();
      CFArrayAppendValue(Mutable, v31);
      if (v31)
      {
        CFRelease(v31);
      }

      v16 = vaeRequestOwnershipOnBTPort(v11, 8);
      if (v16)
      {
        if (dword_1EB75DE40)
        {
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        vaemAggregatePorts(Mutable, 1u, 0, v15);
      }

      if (!Mutable)
      {
        goto LABEL_20;
      }

      v26 = Mutable;
      goto LABEL_53;
    }

LABEL_19:
    ControllingRoutingSession = CMSMUtility_GetControllingRoutingSession();
    v16 = vaeRouteToSelectedPort(v11, ControllingRoutingSession, v15);
    goto LABEL_20;
  }

  if (!CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    if (dword_1EB75DE40)
    {
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = 0;
    goto LABEL_20;
  }

  v22 = *MEMORY[0x1E695E480];
  CMSMUtility_GetCurrentOutputPortAtIndex(1);
  v23 = FigCFNumberCreateSInt64();
  value = FigCFNumberCreateSInt64();
  v24 = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
  v25 = v24;
  if (v23)
  {
    CFArrayAppendValue(v24, v23);
  }

  if (value)
  {
    CFArrayAppendValue(v25, value);
  }

  if (vaeGetBTPortOwnsSharedAudioConnection(v11))
  {
    vaemAggregatePorts(v25, 1u, 1, v15);
    v16 = 0;
  }

  else
  {
    v16 = vaeRequestOwnershipOnBTPort(v11, 8);
    if (v16)
    {
      if (dword_1EB75DE40)
      {
        v33 = a2;
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a2 = v33;
      }
    }

    else
    {
      vaemAggregatePorts(v25, 1u, 0, v15);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v25)
  {
    v26 = v25;
LABEL_53:
    CFRelease(v26);
  }

LABEL_20:
  if (a4)
  {
    a4(a1, a2, *(v12 + 3), v16, a5);
  }

  return v16;
}

uint64_t _VAEndpoint_DeactivateWithCompletionCallback(uint64_t a1, const __CFDictionary *a2, void (*a3)(uint64_t, void, void, uint64_t, uint64_t), uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *DerivedStorage;
  if (a2)
  {
    CFDictionaryGetValue(a2, *MEMORY[0x1E69617E8]);
    Value = CFDictionaryGetValue(a2, *MEMORY[0x1E69617F0]);
    v11 = CFDictionaryGetValue(a2, *MEMORY[0x1E69617E0]);
  }

  else
  {
    Value = 0;
    v11 = *MEMORY[0x1E695E4C0];
  }

  v12 = FigCFEqual();
  if (v11 != *MEMORY[0x1E695E4D0] || !vaeIsPortBluetoothShareable(v9))
  {
    goto LABEL_5;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  PortRoutable = NumberOfCurrentOutputPorts;
  if (NumberOfCurrentOutputPorts)
  {
    if (NumberOfCurrentOutputPorts == 1)
    {
      if (CMSMUtility_GetCurrentOutputPortAtIndex(0) != v9)
      {
        goto LABEL_35;
      }

LABEL_5:
      PortRoutable = vaeMakePortRoutable(v9, 0, v12, Value);
      goto LABEL_6;
    }

    if (!CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
    {
      if (dword_1EB75DE40)
      {
        v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_35;
    }

    if (PortRoutable != 2 || CMSMUtility_GetCurrentOutputPortAtIndex(0) != v9 && CMSMUtility_GetCurrentOutputPortAtIndex(1) != v9)
    {
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      PortRoutable = 4294954315;
      goto LABEL_6;
    }

    v17 = *MEMORY[0x1E695E480];
    PortRoutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    cf = FigCFNumberCreateSInt64();
    CFArrayAppendValue(PortRoutable, cf);
    MutableCopy = CFArrayCreateMutableCopy(v17, 0, PortRoutable);
    if (CMSMUtility_GetCurrentOutputPortAtIndex(0) == v9)
    {
      if (CMSMUtility_GetCurrentOutputPortAtIndex(1) == v9)
      {
        goto LABEL_29;
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    CMSMUtility_GetCurrentOutputPortAtIndex(v19);
    SInt64 = FigCFNumberCreateSInt64();
    CFArrayAppendValue(MutableCopy, SInt64);
    if (SInt64)
    {
      CFRelease(SInt64);
    }

LABEL_29:
    vaemDeaggregatePorts(MutableCopy, PortRoutable, v12, Value);
    if (cf)
    {
      CFRelease(cf);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (PortRoutable)
    {
      CFRelease(PortRoutable);
LABEL_35:
      PortRoutable = 0;
    }
  }

LABEL_6:
  if (a3)
  {
    a3(a1, *(DerivedStorage + 2), *(DerivedStorage + 3), PortRoutable, a4);
  }

  return PortRoutable;
}

uint64_t vaeRouteToSelectedPort(uint64_t a1, void *a2, const void *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = CMSMUtility_CopyNonNullCurrentlyActiveCategory();
  v8 = CMSMUtility_CopyNonNullCurrentlyActiveMode();
  v9 = CMSMUtility_CopyCurrentAllowedPortTypes();
  v10 = [a2 prefersBluetoothHighQualityContentCapture];
  ConnectionTypeForPort = vaeGetConnectionTypeForPort(a1);
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);
  v84 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(&v84);
  v75 = a3;
  v12 = FigCFEqual();
  v14 = v12;
  v76 = ConnectionTypeForPort;
  if (v9 || MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled(v12, v13) && ([a2 prefersBluetoothHighQualityContentCapture] & 1) != 0)
  {
    VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v7);
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v8);
    v18 = VADModeFromFigModeName;
    if (v14)
    {
      if (MX_FeatureFlags_IsSystemInputPickerEnabled(VADModeFromFigModeName, v17))
      {
        if (a2)
        {
          v19 = [a2 activationContext];
        }

        else
        {
          v19 = 0;
        }

        v22 = VADCategoryFromFigCategoryName;
        v23 = v18;
        v24 = v9;
        v25 = v10;
        v26 = 1;
LABEL_20:
        v27 = cmsmCopyActiveNonQuiesceablePortsForRouteConfigurationScopeAndDevice(v22, v23, v19, v24, v25, v26, 0x1F2893B50);
        goto LABEL_45;
      }

      if (a2)
      {
        v21 = [a2 activationContext];
      }

      else
      {
        v21 = 0;
      }

      v36 = VADCategoryFromFigCategoryName;
      v37 = v18;
      v38 = v9;
      v39 = 1;
    }

    else
    {
      if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(VADModeFromFigModeName, v17) && !vaemIsPersistentRouteActive())
      {
        if (a2)
        {
          v19 = [a2 activationContext];
        }

        else
        {
          v19 = 0;
        }

        v22 = VADCategoryFromFigCategoryName;
        v23 = v18;
        v24 = v9;
        v25 = v10;
        v26 = 0;
        goto LABEL_20;
      }

      if (a2)
      {
        v21 = [a2 activationContext];
      }

      else
      {
        v21 = 0;
      }

      v36 = VADCategoryFromFigCategoryName;
      v37 = v18;
      v38 = v9;
      v39 = 0;
    }

    v27 = cmsmCopyActiveNonWirelessPortsListForRouteConfigurationScopeAndDevice(v36, v37, v21, v38, v39, 0x1F2893B50);
LABEL_45:
    v40 = v27;
    if ([v27 count])
    {
      v35 = [objc_msgSend(v40 "firstObject")];
    }

    else
    {
      v35 = 0;
    }

    v28 = 0;
    if (!v14)
    {
      goto LABEL_52;
    }

LABEL_49:
    if (!MX_FeatureFlags_IsSystemInputPickerEnabled(v29, v30))
    {
      goto LABEL_52;
    }

    if (dword_1EB75DE40)
    {
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (([a2 hasInput] & 1) == 0)
    {
      v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      PortRoutable = 4294954296;
      if (!v7)
      {
        goto LABEL_133;
      }

LABEL_132:
      CFRelease(v7);
      goto LABEL_133;
    }

    v56 = vaemSendUserPreferredInputPortInRouteConfigToVA(1);
    if (dword_1EB75DE40)
    {
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v56 | vaeTakeOwnershipForSelectedPortIfRequired(a1, v75))
    {
      PortRoutable = 0;
      goto LABEL_145;
    }

    if (v35 == a1 || v76 != 1885561449)
    {
      if (v76 == 1885544823 || vaeIsQuiesceableWiredPort(a1, v60))
      {
        if (dword_1EB75DE40)
        {
          v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        PortRoutable = vaeMakePortRoutable(a1, 1, 1u, v75);
LABEL_145:
        vaemUpdateSystemHasAudioInputDeviceState();
        if (!v7)
        {
          goto LABEL_133;
        }

        goto LABEL_132;
      }

      v61 = v75;
      if (dword_1EB75DE40)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v61 = v75;
      if (dword_1EB75DE40)
      {
LABEL_143:
        v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    PortRoutable = cmsmUnrouteAllInputRoutes(v7, v8, v9, v61, a2);
    goto LABEL_145;
  }

  if (a2)
  {
    v20 = [a2 activationContext];
  }

  else
  {
    v20 = 0;
  }

  v28 = cmsmCopyPickableRoutesForRouteConfiguration(v7, v8, v20, 0, v10);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v29 = [(__CFArray *)v28 countByEnumeratingWithState:&v80 objects:v85 count:16];
  if (!v29)
  {
    v35 = 0;
    if (!v14)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v31 = v29;
  cf = v7;
  v72 = v8;
  v32 = *v81;
  while (2)
  {
    v33 = 0;
    do
    {
      if (*v81 != v32)
      {
        objc_enumerationMutation(v28);
      }

      v34 = *(*(&v80 + 1) + 8 * v33);
      if ([objc_msgSend(v34 objectForKey:{@"PortNumber", "unsignedIntValue"}] == a1)
      {
        v29 = [objc_msgSend(v34 objectForKey:{@"RouteType", "isEqualToString:", @"Default"}];
        if (v29)
        {
          v35 = a1;
        }

        else
        {
          v35 = 0;
        }

        goto LABEL_34;
      }

      ++v33;
    }

    while (v31 != v33);
    v29 = [(__CFArray *)v28 countByEnumeratingWithState:&v80 objects:v85 count:16];
    v31 = v29;
    if (v29)
    {
      continue;
    }

    break;
  }

  v35 = 0;
LABEL_34:
  v9 = 0;
  v8 = v72;
  v7 = cf;
  if (v14)
  {
    goto LABEL_49;
  }

LABEL_52:
  if (v35 == a1 || v76 != 1885561449)
  {
    v43 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsActive, 0);
    v44 = v43;
    if ((!v43 || !CFArrayGetCount(v43)) && v9)
    {
      CFRelease(v9);
      v9 = 0;
    }

    if (v44)
    {
      CFRelease(v44);
    }

    v50 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration(v7, v8, v9, 0);
    v51 = cmsmCopyWirelessPortsArrayForRouteConfiguration(v7, v8, v9, v10);
    IsOnenessEnabled = MX_FeatureFlags_IsOnenessEnabled(v51, v52);
    if (v76 != 1885544823 || IsOnenessEnabled && PortTypeFromPortID == 1885565807)
    {
      if (vaeIsQuiesceableWiredPort(a1, v54))
      {
        v77 = v50;
        if (dword_1EB75DE40)
        {
          v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXSessionManager sharedInstance](MXSessionManager setQuiesceableWiredPortPreference:"setQuiesceableWiredPortPreference:autoRouteOnConnect:" autoRouteOnConnect:a1, 1];
        PortRoutable = vaeMakePortRoutable(a1, 1, 1u, v75);
        if (PortRoutable)
        {
          v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
          v50 = v77;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          v50 = v77;
        }
      }

      else
      {
        if (v51 && CFArrayGetCount(v51))
        {
          PortRoutable = cmsmUnpickWirelessRoutes(v51, 0, 1u, v75);
        }

        else
        {
          PortRoutable = 0;
        }

        if ([v50 count])
        {
          cmsmUnpickQuiesceableWiredPortsRoutes(v50, 1, v75, 1, v14 != 0);
        }
      }

      goto LABEL_126;
    }

    if (dword_1EB75DE40)
    {
      v78 = v50;
      v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v50 = v78;
    }

    if (a1)
    {
      *&inAddress.mSelector = 0x676C6F626F736163;
      inAddress.mElement = 0;
      v64 = v75;
      if (AudioObjectHasProperty(a1, &inAddress))
      {
        vaeTakeOwnershipForSelectedPortIfRequired(a1, v75);
        goto LABEL_108;
      }
    }

    else
    {
      v64 = v75;
    }

    PortRoutable = vaeMakePortRoutable(a1, 1, 1u, v64);
    if (PortRoutable)
    {
LABEL_126:
      if ([objc_msgSend(a2 "overridePortsList")])
      {
        PortRoutable = MXCoreSessionSetProperty(a2, @"OverrideRoute");
      }

      if (!v51)
      {
LABEL_131:
        if (!v7)
        {
          goto LABEL_133;
        }

        goto LABEL_132;
      }

      v49 = v51;
LABEL_130:
      CFRelease(v49);
      goto LABEL_131;
    }

LABEL_108:
    if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1, *MEMORY[0x1E69626C0]))
    {
      v65 = v50;
      v66 = FigRoutingManagerCopyActivatedCarPlayEndpoint(qword_1EB75E190);
      *&inAddress.mSelector = 0;
      if (v66)
      {
        v67 = v66;
        v73 = v8;
        FigEndpointCopyProperty(v66, *MEMORY[0x1E69622F0], *MEMORY[0x1E695E480], &inAddress);
        if (FigCFEqual())
        {
          v68 = dword_1EB75E168 == 0;
        }

        else
        {
          v68 = 1;
        }

        v69 = v68;
        if (*&inAddress.mSelector)
        {
          CFRelease(*&inAddress.mSelector);
          *&inAddress.mSelector = 0;
        }

        CFRelease(v67);
        if (v69)
        {
          PortRoutable = 0;
        }

        else
        {
          PortRoutable = vaeMakePortRoutable(dword_1EB75E168, 0, 1u, v64);
        }

        v8 = v73;
      }

      else
      {
        PortRoutable = 0;
      }

      v50 = v65;
    }

    else
    {
      PortRoutable = 0;
    }

    goto LABEL_126;
  }

  if (a2)
  {
    v45 = vaeGetPortTypeFromPortID(a1);
    v46 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(v45);
    if (v46)
    {
      v47 = v46;
      PortRoutable = MXCoreSessionSetProperty(a2, @"OverrideRoute");
      v49 = v47;
      goto LABEL_130;
    }
  }

  PortRoutable = 0;
  if (v7)
  {
    goto LABEL_132;
  }

LABEL_133:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  return PortRoutable;
}

BOOL vaeTakeOwnershipForSelectedPortIfRequired(uint64_t a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (vaeGetConnectionTypeForPort(a1) != 1885544823)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  *&inAddress.mSelector = 0x676C6F626F736163;
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    return 0;
  }

  if (vaeRequestOwnershipOnBTPort(a1, 8))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  ArrayFromPortIDAndPartners = CMSMVAUtility_CreateArrayFromPortIDAndPartners(a1);
  ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(ArrayFromPortIDAndPartners, 1, 1u, a2, 0);
  if (ArrayOfPortsRoutable || dword_1EB75DE40)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = ArrayOfPortsRoutable == 0;

  return v7;
}

uint64_t CMSM_IDSServer_StartAutomaticOwnershipTransferToPhoneTimer()
{
  result = CMSMDeviceState_ItsAniPhone();
  if (result)
  {
    result = CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected();
    if (result)
    {
      result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
      if (!result)
      {
        CMSM_IDSServer_CancelAutomaticOwnershipTransferToPhoneTimer();
        v3 = MXGetSerialQueue(v1, v2);
        result = MXDispatchUtilityCreateOneShotTimer("CMSM_IDSServer_StartAutomaticOwnershipTransferToPhoneTimer", "CMSessionManager_IDSServer.m", 460, 0, 0, v3, &__block_literal_global_45, 0, 15.0, 0);
        sAutomaticOwnershipTransferToPhoneTimer = result;
      }
    }
  }

  return result;
}

void CMSM_IDSServer_CancelAutomaticOwnershipTransferToPhoneTimer()
{
  if (sAutomaticOwnershipTransferToPhoneTimer)
  {
    dispatch_source_cancel(sAutomaticOwnershipTransferToPhoneTimer);
    if (sAutomaticOwnershipTransferToPhoneTimer)
    {
      dispatch_release(sAutomaticOwnershipTransferToPhoneTimer);
      sAutomaticOwnershipTransferToPhoneTimer = 0;
    }
  }
}

void CMSM_IDSServer_Initialize()
{
  if (!gIDSServer)
  {
    gIDSServer = objc_alloc_init(CMSM_IDSServer);
  }

  sAutomaticOwnershipTransferToPhoneTimer = 0;
}

void *cmsm_IDSServer_ProcessBTDeviceConnectionStatusChangedMessage(const __CFDictionary *a1)
{
  v1 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_BTDeviceIsConnectedKey) == *MEMORY[0x1E695E4D0];

  return CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToRemote(v1);
}

void cmsm_IDSServer_ProcessRemotePlayingInfoQueryMessage()
{
  v0 = CMSMUtility_CopyPlayingSessionsInfo();
  CMSM_IDSClient_ReplyToRemote_PlayingInfo(v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

void cmsm_IDSServer_ProcessRemotePlayingInfoReplyMessage(const __CFDictionary *a1)
{
  CMSM_IDSConnection_StopWaitForRemoteToReplyWithInitialPlayingInfoTimer();
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_AllPlayingSessionsKey);
  v4 = Value;
  if (Value)
  {
    Value = CFRetain(Value);
  }

  v5 = MXGetSerialQueue(Value, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __cmsm_IDSServer_ProcessRemotePlayingInfoReplyMessage_block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = v4;
  MXDispatchAsync("cmsm_IDSServer_ProcessRemotePlayingInfoReplyMessage", "CMSessionManager_IDSServer.m", 140, 0, 0, v5, v9);
  v6 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_CurrentRouteIsSharedKey);
  CMSM_IDSConnection_UpdateRemoteIsUsingSharedAudioRoute((v6 == *MEMORY[0x1E695E4D0]));
  CMSM_IDSConnection_UpdateRemoteRepliedWithInitialPlayingInfo(1);
  CMSM_IDSConnection_ResetWaitingForGizmoPlayingInfo();
  v7 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_CurrentRouteUIDKey);
  CMSM_IDSConnection_UpdateRemoteCurrentRouteUID(v7);
  if (v6 == *MEMORY[0x1E695E4C0])
  {
    v8 = 4;
    goto LABEL_8;
  }

  if (!v4 && CMSMDeviceState_ItsAniPhone())
  {
    v8 = 3;
LABEL_8:
    CMSM_IDSConnection_RouteToSharedAudioRouteUponReceivingOwnership(v8);
  }
}

void cmsm_IDSServer_ProcessLocalIsPlayingStartMessage(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_PlayingSessionKey);
  if (Value)
  {
    v3 = Value;
    v4 = CFDictionaryGetValue(Value, @"CMSessionID");
    RemotePlayingInfo = CMSM_IDSConnection_GetRemotePlayingInfo();
    if (RemotePlayingInfo && (v6 = RemotePlayingInfo, CFArrayGetCount(RemotePlayingInfo) >= 1))
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        if (ValueAtIndex)
        {
          v9 = CFDictionaryGetValue(ValueAtIndex, @"CMSessionID");
          if (CFNumberCompare(v4, v9, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }

        if (++v7 >= CFArrayGetCount(v6))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      CMSM_IDSConnection_AddRemotePlayingInfo(v3);
    }

    v10 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_CurrentRouteIsSharedKey) == *MEMORY[0x1E695E4D0];
    CMSM_IDSConnection_UpdateRemoteIsUsingSharedAudioRoute(v10);
    v11 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_CurrentRouteUIDKey);
    CMSM_IDSConnection_UpdateRemoteCurrentRouteUID(v11);
  }

  if (CMSMDeviceState_ItsAniPhone())
  {

    CMSM_IDSServer_CancelAutomaticOwnershipTransferToPhoneTimer();
  }
}

NSObject *cmsm_IDSServer_ProcessLocalIsPlayingDoneMessage(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_PlayingSessionKey);
  if (Value)
  {
    v2 = CFDictionaryGetValue(Value, @"CMSessionID");
    RemotePlayingInfo = CMSM_IDSConnection_GetRemotePlayingInfo();
    if (RemotePlayingInfo)
    {
      v4 = RemotePlayingInfo;
      if (CFArrayGetCount(RemotePlayingInfo) >= 1)
      {
        v5 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
          if (ValueAtIndex)
          {
            v7 = CFDictionaryGetValue(ValueAtIndex, @"CMSessionID");
            if (CFNumberCompare(v2, v7, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }

          if (++v5 >= CFArrayGetCount(v4))
          {
            goto LABEL_10;
          }
        }

        CMSM_IDSConnection_RemoveRemotePlayingInfo(v5);
      }
    }
  }

LABEL_10:

  return CMSM_IDSServer_StartAutomaticOwnershipTransferToPhoneTimer();
}

uint64_t cmsm_IDSServer_ProcessLocalIsDoingEndInterruption(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_LocalEndInterruptionStatusKey);

  return CMSM_IDSConnection_DeactivateIDSMXCoreSession(Value);
}

void cmsm_IDSServer_ProcessUpdateSharedAudioRouteMacAddress(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_SharedAudioRouteMacAddress);
  v3 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_ClearSharedAudioRoute);
  v5 = v3;
  if (Value)
  {
    v3 = CFRetain(Value);
  }

  v6 = MXGetSerialQueue(v3, v4);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __cmsm_IDSServer_ProcessUpdateSharedAudioRouteMacAddress_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = Value;
  v7[5] = v5;
  MXDispatchAsync("cmsm_IDSServer_ProcessUpdateSharedAudioRouteMacAddress", "CMSessionManager_IDSServer.m", 530, 0, 0, v6, v7);
}

void sub_1B18F5A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FVSynthEngine_SendVibeStoppedNotification(uint64_t a1, void *a2)
{
  values = a2;
  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigVibratorNotificationKey_VibeStopped_Context, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *(a1 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FVSynthEngine_SendVibeStoppedNotification_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a1;
  v5[5] = v3;
  MXDispatchAsync("FVSynthEngine_SendVibeStoppedNotification", "FigVibrator_VibeSynthEngine.m", 135, 0, 0, v4, v5);
}

double HDMILatencyMgr_GetHDMILatencyForCurrentRefreshRate(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = llround(*(a1 + 16));
  v3 = *a1;
  if (a2)
  {
    v4 = *(a1 + 40);
    if (v2 - 24 <= 6)
    {
      if (*(a1 + 41))
      {
        v5 = v4 == 0;
      }

      else
      {
        v5 = 1;
      }

      v6 = @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency24Hz";
      v7 = @"MeasuredHDMILatency_MeasuredAudioHDMILatency24Hz";
LABEL_26:
      if (v5)
      {
        v12 = v7;
      }

      else
      {
        v12 = v6;
      }

      ValueDouble = MXCFDictionaryGetValueDouble(v3, v12);
      goto LABEL_30;
    }

    ValueDouble = 0.0;
    if (v2 - 50 <= 0xA)
    {
      if (*(a1 + 41))
      {
        v5 = v4 == 0;
      }

      else
      {
        v5 = 1;
      }

      v6 = @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency60Hz";
      v7 = @"MeasuredHDMILatency_MeasuredAudioHDMILatency60Hz";
      goto LABEL_26;
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 41);
    if (v2 - 24 > 6)
    {
      ValueDouble = 0.0;
      if (v2 - 61 < 0xFFFFFFF5 || v3 == 0)
      {
        goto LABEL_30;
      }

      FigCFDictionarySetDouble();
      if (v9)
      {
        v5 = v8 == 0;
      }

      else
      {
        v5 = 1;
      }

      v6 = @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency60Hz";
      v7 = @"MeasuredHDMILatency_MeasuredVideoHDMILatency60Hz";
      goto LABEL_26;
    }

    if (v3)
    {
      FigCFDictionarySetDouble();
      if (v9)
      {
        v5 = v8 == 0;
      }

      else
      {
        v5 = 1;
      }

      v6 = @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency24Hz";
      v7 = @"MeasuredHDMILatency_MeasuredVideoHDMILatency24Hz";
      goto LABEL_26;
    }

    ValueDouble = 0.0;
  }

LABEL_30:
  if (dword_1EB75E238)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return ValueDouble;
}

const __CFDictionary *copyMeasuredHDMILatencyFromDisk()
{
  v0 = CFPreferencesCopyValue(@"measuredHDMILatency", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v1 = v0;
  if (v0 && (!CFDictionaryContainsKey(v0, @"MeasuredHDMILatency_MeasuredAudioHDMILatency24Hz") || !CFDictionaryContainsKey(v1, @"MeasuredHDMILatency_MeasuredAudioHDMILatency60Hz") || !CFDictionaryContainsKey(v1, @"MeasuredHDMILatency_MeasuredVideoHDMILatency24Hz") || !CFDictionaryContainsKey(v1, @"MeasuredHDMILatency_MeasuredVideoHDMILatency60Hz")))
  {
    CFRelease(v1);
    return 0;
  }

  return v1;
}

uint64_t updateMeasuredHDMILatencyOnCoreAnimationAndHAL()
{
  v4 = xmmword_1ED6D2F50;
  v5 = *&qword_1ED6D2F60;
  v6 = xmmword_1ED6D2F70;
  HDMILatencyForCurrentRefreshRate = HDMILatencyMgr_GetHDMILatencyForCurrentRefreshRate(&v4, 0);
  FigCFDictionarySetDouble();
  if (!DisplayModeRefreshRateObserver_UpdateHDMILatencyOnCoreAnimation())
  {
    *&xmmword_1ED6D2F70 = HDMILatencyForCurrentRefreshRate;
  }

  v4 = xmmword_1ED6D2F50;
  v5 = *&qword_1ED6D2F60;
  v6 = xmmword_1ED6D2F70;
  v1 = HDMILatencyMgr_GetHDMILatencyForCurrentRefreshRate(&v4, 1);
  FigCFDictionarySetDouble();
  result = vaemSetHDMILatencyOverride((v1 * 1000000.0), v2);
  if (!result)
  {
    qword_1ED6D2F68 = *&v1;
  }

  return result;
}

uint64_t writeMeasuredHDMILatencyToDisk(const void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75E238)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"measuredHDMILatency", a1);
  MXCFPreferencesSetAndSynchronizeUserPreference(@"measuredHDMILatencyForCurrentRefreshRate", *(&xmmword_1ED6D2F50 + 1));
  return notify_post("com.apple.mediaexperience.measuredhdmilatencychanged");
}

uint64_t HDMILatencyMgr_CopyMeasuredHDMILatency()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  if (_MergedGlobals_8)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __HDMILatencyMgr_CopyMeasuredHDMILatency_block_invoke;
    v2[3] = &unk_1E7AE73A0;
    v2[4] = &v3;
    MXDispatchSync("HDMILatencyMgr_CopyMeasuredHDMILatency", "HDMILatencyManager.m", 431, 0, 0, _MergedGlobals_8, v2);
    v0 = v4[3];
  }

  else
  {
    v0 = 0;
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B18F8984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigRoutingContextRemoteCreateVideoContext_block_invoke(uint64_t a1)
{
  key = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = **(a1 + 32);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v3, @"contextUUID", *MEMORY[0x1E695E480], &key);
    if (key)
    {
      v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(gFigRoutingContextRemoteObject_0, key, v5);
        CFRelease(v6);
      }

      v7 = *(DerivedStorage + 72);
      v8 = key;
      *(DerivedStorage + 72) = key;
      if (v8)
      {
        CFRetain(v8);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      if (key)
      {
        CFRelease(key);
      }
    }
  }
}

uint64_t FigRoutingContextRemoteCopyAllAudioContexts(CFArrayRef *a1)
{
  if (!a1)
  {
    return 4294955276;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = routingContextRemoteXPC_EnsureClientEstablished();
  if (v4 || (v4 = FigXPCCreateBasicMessage(), v4) || (v4 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v4))
  {
    v5 = v4;
    if (!Mutable)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = FigXPCMessageCopyCFArray();
    if (!v5)
    {
      v5 = 0;
      *a1 = CFArrayCreateCopy(v2, Mutable);
    }

    if (!Mutable)
    {
      goto LABEL_9;
    }
  }

  CFRelease(Mutable);
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  return v5;
}

void remoteXPCRoutingContext_DeadConnectionCallback(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 72);
  *DerivedStorage = 1;
  v4 = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  LODWORD(context) = -16722;
  v5 = *(v4 + 16);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __remoteXPCRoutingContext_runAllCallbacks_block_invoke;
  v14 = &unk_1E7AE7168;
  v15 = &v22;
  v16 = v4;
  MXDispatchSync("remoteXPCRoutingContext_runAllCallbacks", "FigRoutingContextRemoteXPC.m", 246, 0, 0, v5, &v11);
  CFDictionaryApplyFunction(v23[3], remoteXPCRoutingContext_runOneCallback, &context);
  v6 = v23[3];
  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(&v22, 8);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  context = 0;
  p_context = &context;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = *(v7 + 40);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __remoteXPCRoutingContext_notifyAboutAllCommChannelsClosures_block_invoke;
  v14 = &unk_1E7AEB4F8;
  v16 = &context;
  v17 = v7;
  v15 = &v22;
  MXDispatchSync("remoteXPCRoutingContext_notifyAboutAllCommChannelsClosures", "FigRoutingContextRemoteXPC.m", 157, 0, 0, v8, &v11);
  v9 = v23[3];
  v26.length = CFArrayGetCount(v9);
  v26.location = 0;
  CFArrayApplyFunction(v9, v26, remoteXPCRoutingContext_notifyAboutCommChannelClosure, a1);
  CFDictionaryApplyFunction(p_context[3], remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID, a1);
  CFRelease(v23[3]);
  CFRelease(p_context[3]);
  _Block_object_dispose(&context, 8);
  _Block_object_dispose(&v22, 8);
  if (v3)
  {
    CFRetain(v3);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __remoteXPCRoutingContext_DeadConnectionCallback_block_invoke;
    v10[3] = &__block_descriptor_40_e5_v8__0l;
    v10[4] = v3;
    MXDispatchAsync("remoteXPCRoutingContext_DeadConnectionCallback", "FigRoutingContextRemoteXPC.m", 535, 0, 0, gFigRoutingContextRemoteObject_1, v10);
  }
}

uint64_t remoteXPCFigRoutingContext_HandleClientMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

void sub_1B18F92D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __remoteXPCRoutingContext_runAllCallbacks_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(*(a1 + 40) + 24));
  v2 = *(*(a1 + 40) + 24);

  CFDictionaryRemoveAllValues(v2);
}

void remoteXPCRoutingContext_runOneCallback(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  if (!a2)
  {
    return;
  }

  v4 = *a2;
  if (*a2 <= 1919316835)
  {
    if (v4 != 1635021668)
    {
      if (v4 == 1668246893)
      {
LABEL_10:
        v6 = a2[2];
        if (v6)
        {
          v7 = a2[1];
          v8 = *a3;
          v9 = a2[3];
          v10 = a2[4];

          v6(v7, v9, v8, v10);
        }

        return;
      }

      v5 = 1684108385;
LABEL_9:
      if (v4 != v5)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (v4 > 1936024690)
  {
    if (v4 != 1936024691 && v4 != 1936026724)
    {
      return;
    }
  }

  else if (v4 != 1919316836)
  {
    v5 = 1935959652;
    goto LABEL_9;
  }

  if (a2[2])
  {
    v12 = [[MXRoutingContextModificationResult alloc] initWithRouteConfigUpdatedReason:@"configUpdateReasonEndedFailed" modificationMetrics:0 previousRouteDescriptors:0 currentRouteDescriptors:0];
    (a2[2])(a2[3], v12);
  }
}

void __remoteXPCRoutingContext_notifyAboutAllCommChannelsClosures_block_invoke(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  *(*(a1[4] + 8) + 24) = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(a1[6] + 56));
  CFArrayRemoveAllValues(*(a1[6] + 56));
  *(*(a1[5] + 8) + 24) = CFDictionaryCreateCopy(v2, *(a1[6] + 64));
  v3 = *(a1[6] + 64);

  CFDictionaryRemoveAllValues(v3);
}

void remoteXPCRoutingContext_notifyAboutCommChannelClosure(void *a1, uint64_t a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"commChannelUUID";
  values = a1;
  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    CFRetain(v3);
  }

  v5 = *(DerivedStorage + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __remoteXPCRoutingContext_notifyAboutCommChannelClosure_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a2;
  v6[5] = v3;
  MXDispatchAsync("remoteXPCRoutingContext_notifyAboutCommChannelClosure", "FigRoutingContextRemoteXPC.m", 125, 0, 0, v5, v6);
  CFRelease(v3);
}

void remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID(void *a1, void *a2, uint64_t a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  keys[0] = @"deviceID";
  keys[1] = @"commChannelUUID";
  values[0] = a2;
  values[1] = a1;
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    CFRetain(v4);
  }

  v6 = *(DerivedStorage + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = a3;
  v7[5] = v4;
  MXDispatchAsync("remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID", "FigRoutingContextRemoteXPC.m", 144, 0, 0, v6, v7);
  if (v4)
  {
    CFRelease(v4);
  }
}

void __remoteXPCRoutingContext_notifyAboutCommChannelClosure_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __remoteXPCRoutingContext_handleCompletionCallback_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(*(a1 + 40) + 24), *(a1 + 48));
  if (Value)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *Value;
    v5 = Value[1];
    *(v3 + 64) = *(Value + 4);
    *(v3 + 32) = v4;
    *(v3 + 48) = v5;
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    if (v7)
    {
      CFRetain(v7);
      v6 = *(*(a1 + 32) + 8);
    }

    v8 = *(v6 + 56);
    if (v8)
    {
      CFRetain(v8);
    }
  }

  v9 = *(a1 + 48);
  v10 = *(*(a1 + 40) + 24);

  CFDictionaryRemoveValue(v10, v9);
}

uint64_t remoteXPCRoutingContext_cloneCompletionCallback(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1B2733FE0](a1, 40, 0x10E004005DA489DLL, 0);
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 8);
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *(v3 + 24);
  if (v7)
  {
    CFRetain(v7);
  }

  return v3;
}

void remoteXPCRoutingContext_freeCompletionCallback(CFAllocatorRef allocator, void *ptr)
{
  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[3];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t routingContextRemoteXPC_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  if (!a2)
  {
    v13 = 738;
LABEL_13:
    routingContextRemoteXPC_SendData_cold_1(v13, &v15);
    v10 = v15;
    goto LABEL_15;
  }

  if (!a3)
  {
    v13 = 739;
    goto LABEL_13;
  }

  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v14);
  if (ObjectID)
  {
    v10 = ObjectID;
    goto LABEL_15;
  }

  v10 = FigXPCCreateBasicMessage();
  if (v10)
  {
LABEL_15:
    FigXPCRelease();
    return v10;
  }

  FigXPCMessageSetCFString();
  FigXPCMessageSetCFData();
  if (a4)
  {
    v11 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v11[2] = a4;
    v11[3] = a2;
    v11[4] = a5;
    *v11 = 1684108385;
    v11[1] = a1;
  }

  else
  {
    v11 = 0;
  }

  v10 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v11);
  FigXPCRelease();
  if (v11)
  {
    free(v11);
  }

  return v10;
}

uint64_t routingContextRemoteXPC_CreateCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = 0;
  if (*(DerivedStorage + 80) != 9)
  {
    return 4294955271;
  }

  if (a2)
  {
    v8 = DerivedStorage;
    v17 = 0;
    v18 = 0;
    ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v17);
    if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (FigXPCMessageSetCFDictionary(), FigXPCMessageSetCFString(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID) || (ObjectID = FigXPCMessageCopyCFString(), ObjectID))
    {
      v12 = ObjectID;
    }

    else
    {
      v10 = v18;
      if (v18)
      {
        v11 = *(v8 + 40);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __routingContextRemoteXPC_CreateCommChannelForDeviceID_block_invoke;
        v16[3] = &__block_descriptor_56_e5_v8__0l;
        v16[4] = v8;
        v16[5] = v18;
        v16[6] = a2;
        MXDispatchSync("routingContextRemoteXPC_CreateCommChannelForDeviceID", "FigRoutingContextRemoteXPC.m", 710, 0, 0, v11, v16);
        v10 = v18;
      }

      v12 = 0;
      *a4 = v10;
    }

    v13 = v20;
    if (v20)
    {
      v20 = 0;
      xpc_release(v13);
    }
  }

  else
  {
    routingContextRemoteXPC_CreateCommChannelForDeviceID_cold_1(&v18);
    v12 = v18;
  }

  v14 = v19;
  if (v19)
  {
    v19 = 0;
    xpc_release(v14);
  }

  return v12;
}

uint64_t routingContextRemoteXPC_SendDataForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  object = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 80) != 9)
  {
    a4 = 0;
    v13 = 4294955271;
    goto LABEL_13;
  }

  if (!a3)
  {
    routingContextRemoteXPC_SendDataForDeviceID_cold_3(&v16);
LABEL_17:
    a4 = 0;
    goto LABEL_18;
  }

  if (!a4)
  {
    routingContextRemoteXPC_SendDataForDeviceID_cold_2(&v16);
LABEL_18:
    v13 = v16;
    goto LABEL_13;
  }

  if (!a2)
  {
    routingContextRemoteXPC_SendDataForDeviceID_cold_1(&v16);
    goto LABEL_17;
  }

  v16 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v16);
  if (ObjectID)
  {
    v13 = ObjectID;
    a4 = 0;
    goto LABEL_13;
  }

  v13 = FigXPCCreateBasicMessage();
  v14 = object;
  if (v13)
  {
    a4 = 0;
    if (!object)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  FigXPCMessageSetCFString();
  FigXPCMessageSetCFString();
  FigXPCMessageSetCFData();
  if (a5)
  {
    a4 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    a4[2] = a5;
    a4[3] = a3;
    a4[4] = a6;
    *a4 = 1935959652;
    a4[1] = a1;
  }

  else
  {
    a4 = 0;
  }

  v13 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, object, a4);
  v14 = object;
  if (object)
  {
LABEL_12:
    object = 0;
    xpc_release(v14);
  }

LABEL_13:
  free(a4);
  return v13;
}

uint64_t routingContextRemoteXPC_CloseCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  if (*(DerivedStorage + 80) != 9)
  {
    return 4294955271;
  }

  if (!a3)
  {
    routingContextRemoteXPC_CloseCommChannelForDeviceID_cold_2(&v14);
    return v14;
  }

  if (!a2)
  {
    routingContextRemoteXPC_CloseCommChannelForDeviceID_cold_1(&v14);
    return v14;
  }

  v7 = DerivedStorage;
  v14 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v9 = ObjectID;
  }

  else
  {
    FigXPCMessageSetCFString();
    FigXPCMessageSetCFString();
    v9 = FigXPCRemoteClientSendSyncMessage();
    if (!v9)
    {
      v10 = *(v7 + 40);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __routingContextRemoteXPC_CloseCommChannelForDeviceID_block_invoke;
      v13[3] = &__block_descriptor_48_e5_v8__0l;
      v13[4] = v7;
      v13[5] = a3;
      MXDispatchSync("routingContextRemoteXPC_CloseCommChannelForDeviceID", "FigRoutingContextRemoteXPC.m", 879, 0, 0, v10, v13);
    }
  }

  v11 = v15;
  if (v15)
  {
    v15 = 0;
    xpc_release(v11);
  }

  return v9;
}

uint64_t routingContextRemoteXPC_AddToSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v12);
  if (ObjectID)
  {
    v9 = ObjectID;
    goto LABEL_10;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
LABEL_10:
    FigXPCRelease();
    return v9;
  }

  FigXPCMessageSetCFDictionary();
  FigXPCMessageSetCFDictionary();
  if (a4)
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v10[1] = a1;
    v10[2] = a4;
    v10[4] = a5;
    *v10 = 1635021668;
  }

  else
  {
    v10 = 0;
  }

  v9 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v10);
  FigXPCRelease();
  if (v10)
  {
    free(v10);
  }

  return v9;
}

uint64_t routingContextRemoteXPC_RemoveFromSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v12);
  if (ObjectID)
  {
    v9 = ObjectID;
    goto LABEL_10;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
LABEL_10:
    FigXPCRelease();
    return v9;
  }

  FigXPCMessageSetCFDictionary();
  FigXPCMessageSetCFDictionary();
  if (a4)
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v10[1] = a1;
    v10[2] = a4;
    v10[4] = a5;
    *v10 = 1919316836;
  }

  else
  {
    v10 = 0;
  }

  v9 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v10);
  FigXPCRelease();
  if (v10)
  {
    free(v10);
  }

  return v9;
}

uint64_t routingContextRemoteXPC_SelectRouteDescriptorWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v12);
  if (ObjectID)
  {
    v9 = ObjectID;
    goto LABEL_10;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
LABEL_10:
    FigXPCRelease();
    return v9;
  }

  FigXPCMessageSetCFDictionary();
  FigXPCMessageSetCFDictionary();
  if (a4)
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v10[1] = a1;
    v10[2] = a4;
    v10[4] = a5;
    *v10 = 1936026724;
  }

  else
  {
    v10 = 0;
  }

  v9 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v10);
  FigXPCRelease();
  if (v10)
  {
    free(v10);
  }

  return v9;
}

uint64_t routingContextRemoteXPC_SelectRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v12);
  if (ObjectID)
  {
    v9 = ObjectID;
    goto LABEL_10;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
LABEL_10:
    FigXPCRelease();
    return v9;
  }

  FigXPCMessageSetCFArray();
  FigXPCMessageSetCFDictionary();
  if (a4)
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v10[1] = a1;
    v10[2] = a4;
    v10[4] = a5;
    *v10 = 1936024691;
  }

  else
  {
    v10 = 0;
  }

  v9 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v10);
  FigXPCRelease();
  if (v10)
  {
    free(v10);
  }

  return v9;
}

uint64_t remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(uint64_t a1, void *a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (a3)
  {
    v8 = *(DerivedStorage + 16);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
    v18[3] = &unk_1E7AE7A48;
    v18[4] = &v23;
    v18[5] = a1;
    v18[6] = DerivedStorage;
    v18[7] = a3;
    MXDispatchSync("remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback", "FigRoutingContextRemoteXPC.m", 387, 0, 0, v8, v18);
    xpc_dictionary_set_uint64(a2, kFigRoutingContextXPCMsgParam_CompletionID, v24[3]);
  }

  v9 = FigXPCRemoteClientSendSyncMessage();
  v10 = v9;
  if (a3)
  {
    if (v9)
    {
      v11 = *(v7 + 16);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2;
      v17[3] = &unk_1E7AE7A20;
      v17[6] = v7;
      v17[7] = a3;
      v17[4] = &v23;
      v17[5] = &v19;
      MXDispatchSync("remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback", "FigRoutingContextRemoteXPC.m", 403, 0, 0, v11, v17);
      if (*(v20 + 24))
      {
        v16 = v10;
        remoteXPCRoutingContext_runOneCallback(v12, a3, &v16);
        v13 = a3[1];
        if (v13)
        {
          CFRelease(v13);
        }

        v14 = a3[3];
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v10;
}

void sub_1B18FA788(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void __remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  v4 = 1;
  if ((v3 + 1) > 1)
  {
    v4 = v3 + 1;
  }

  *(DerivedStorage + 32) = v4;
  *(*(a1[4] + 8) + 24) = v3;
  v5 = a1[7];
  v6 = *(a1[6] + 24);
  v7 = *(*(a1[4] + 8) + 24);

  CFDictionarySetValue(v6, v7, v5);
}

void __remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2(void *a1)
{
  v2 = *(a1[6] + 24);
  if (v2)
  {
    if (CFDictionaryGetValueIfPresent(v2, *(*(a1[4] + 8) + 24), 0))
    {
      v3 = a1[7];
      v4 = *(v3 + 8);
      if (v4)
      {
        CFRetain(v4);
        v3 = a1[7];
      }

      v5 = *(v3 + 24);
      if (v5)
      {
        CFRetain(v5);
      }

      *(*(a1[5] + 8) + 24) = 1;
    }

    v6 = *(a1[6] + 24);
    v7 = *(*(a1[4] + 8) + 24);

    CFDictionaryRemoveValue(v6, v7);
  }
}

uint64_t FigRoutingContextResilientRemoteCreateAudioContext(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  v7 = routingContextResilientRemote_copyCreationOptionsEnsuringContextID(a1, a2);
  if (a1)
  {
    CFRetain(a1);
  }

  if (v7)
  {
    CFRetain(v7);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FigRoutingContextResilientRemoteCreateAudioContext_block_invoke;
  v11[3] = &unk_1E7AEB9C8;
  v11[4] = Current;
  v11[5] = a1;
  v11[6] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingContextResilientRemoteCreateAudioContext_block_invoke_2;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = v7;
  v8 = FigRoutingContextResilientRemoteCreate(v11, v10, a3);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

__CFDictionary *routingContextResilientRemote_copyCreationOptionsEnsuringContextID(const __CFAllocator *a1, uint64_t a2)
{
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!CFDictionaryContainsKey(MutableCopy, @"contextUUID"))
  {
    v4 = CFUUIDCreate(a1);
    v5 = CFUUIDCreateString(a1, v4);
    CFDictionarySetValue(MutableCopy, @"contextUUID", v5);
    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return MutableCopy;
}

void __FigRoutingContextResilientRemoteCreateAudioContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopyAllAudioContexts(uint64_t a1)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();

  return [(FigRemoteRoutingContextFactory *)Current copyAllAudioContexts:a1];
}

uint64_t FigRoutingContextResilientRemoteCreateVideoContext(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  v7 = routingContextResilientRemote_copyCreationOptionsEnsuringContextID(a1, a2);
  if (a1)
  {
    CFRetain(a1);
  }

  if (v7)
  {
    CFRetain(v7);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FigRoutingContextResilientRemoteCreateVideoContext_block_invoke;
  v11[3] = &unk_1E7AEB9C8;
  v11[4] = Current;
  v11[5] = a1;
  v11[6] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingContextResilientRemoteCreateVideoContext_block_invoke_2;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = v7;
  v8 = FigRoutingContextResilientRemoteCreate(v11, v10, a3);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void __FigRoutingContextResilientRemoteCreateVideoContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCreatePerAppSecondDisplayContext(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  v7 = routingContextResilientRemote_copyCreationOptionsEnsuringContextID(a1, a2);
  if (a1)
  {
    CFRetain(a1);
  }

  if (v7)
  {
    CFRetain(v7);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FigRoutingContextResilientRemoteCreatePerAppSecondDisplayContext_block_invoke;
  v11[3] = &unk_1E7AEB9C8;
  v11[4] = Current;
  v11[5] = a1;
  v11[6] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingContextResilientRemoteCreatePerAppSecondDisplayContext_block_invoke_2;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = v7;
  v8 = FigRoutingContextResilientRemoteCreate(v11, v10, a3);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void __FigRoutingContextResilientRemoteCreatePerAppSecondDisplayContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopySystemAudioInputContext(const void *a1, const void *a2, void *a3)
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
  v9[2] = __FigRoutingContextResilientRemoteCopySystemAudioInputContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySystemAudioInputContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopySystemAudioInputContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopySystemMirroringContext(const void *a1, const void *a2, void *a3)
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
  v9[2] = __FigRoutingContextResilientRemoteCopySystemMirroringContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySystemMirroringContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopySystemMirroringContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopySidePlayContext(const void *a1, const void *a2, void *a3)
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
  v9[2] = __FigRoutingContextResilientRemoteCopySidePlayContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySidePlayContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopySidePlayContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCreateRemoteMusicControllerContext(const void *a1, const void *a2, void *a3)
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
  v9[2] = __FigRoutingContextResilientRemoteCreateRemoteMusicControllerContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCreateRemoteMusicControllerContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCreateRemoteMusicControllerContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopySystemRemotePoolContext(const void *a1, const void *a2, void *a3)
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
  v9[2] = __FigRoutingContextResilientRemoteCopySystemRemotePoolContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySystemRemotePoolContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopySystemRemotePoolContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCreateControlChannelOnlyContext(const void *a1, const void *a2, void *a3)
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
  v9[2] = __FigRoutingContextResilientRemoteCreateControlChannelOnlyContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCreateControlChannelOnlyContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCreateControlChannelOnlyContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopyDisplayMenuVideoContext(const void *a1, const void *a2, void *a3)
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
  v9[2] = __FigRoutingContextResilientRemoteCopyDisplayMenuVideoContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopyDisplayMenuVideoContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopyDisplayMenuVideoContext_block_invoke_2(uint64_t a1)
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

uint64_t __FigRoutingContextResilientRemoteCopyContextForUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*(a1 + 40), 0, *(a1 + 48));
  CFDictionaryRemoveValue(MutableCopy, @"contextUUID");
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 > 4)
  {
    if (v5 > 11)
    {
      if (v5 == 12)
      {
        v8 = [v6 copySidePlayContextWithAllocator:v7 options:*(a1 + 48) context:a2];
        goto LABEL_20;
      }

      if (v5 == 13)
      {
        v8 = [v6 copySystemAudioInputContextWithAllocator:v7 options:MutableCopy context:a2];
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 == 5)
      {
        v8 = [v6 createVideoContextWithAllocator:v7 options:*(a1 + 48) context:a2];
        goto LABEL_20;
      }

      if (v5 == 6)
      {
        v8 = [v6 createPerAppSecondDisplayContextWithAllocator:v7 options:*(a1 + 48) context:a2];
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v8 = [v6 copySystemAudioContextWithAllocator:v7 options:MutableCopy context:a2];
      goto LABEL_20;
    }

    if (v5 == 2)
    {
      v8 = [v6 copySystemMirroringContextWithAllocator:v7 options:MutableCopy context:a2];
      goto LABEL_20;
    }

LABEL_19:
    v8 = [v6 copyContextForUUIDWithAllocator:v7 options:*(a1 + 48) context:a2];
    goto LABEL_20;
  }

  if (v5 == 3)
  {
    v8 = [v6 copySystemMusicContextWithAllocator:v7 options:MutableCopy context:a2];
  }

  else
  {
    v8 = [v6 createAudioContextWithAllocator:v7 options:*(a1 + 48) context:a2];
  }

LABEL_20:
  v9 = v8;
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v9;
}

void __FigRoutingContextResilientRemoteCopyContextForUUID_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopyDefaultContext(uint64_t a1, uint64_t a2, void *a3)
{
  if (!_CFMZEnabled())
  {
    goto LABEL_8;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __routingContextResilientRemote_copySharedAudioContext_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextOnce != -1)
  {
    dispatch_once(&routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextOnce, block);
  }

  v5 = routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr;
  if (routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr)
  {
    return v5;
  }

  if (!routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = CFRetain(routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext);
  v5 = routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr;
  if (!routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr)
  {
LABEL_9:
    if (!a3)
    {
      FigRoutingContextResilientRemoteCopyDefaultContext_cold_1(block);
      v5 = LODWORD(block[0]);
      if (!v6)
      {
        return v5;
      }

      goto LABEL_15;
    }

    if (v6)
    {
      v7 = CFRetain(v6);
    }

    else
    {
      v7 = 0;
    }

    v5 = 0;
    *a3 = v7;
  }

  if (v6)
  {
LABEL_15:
    CFRelease(v6);
  }

  return v5;
}

uint64_t routingContextResilientRemote_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SetProperty_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

void routingContextResilientRemote_serverConnectionDied(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v7 = *(DerivedStorage + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __routingContextResilientRemote_serverConnectionDied_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  v8[4] = DerivedStorage;
  v8[5] = a2;
  v8[6] = a4;
  MXDispatchAsync("routingContextResilientRemote_serverConnectionDied", "FigRoutingContextResilientRemote.m", 146, 0, 0, v7, v8);
}

void __routingContextResilientRemote_compareAndSwapRemoteContext_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 24; i += 8)
  {
    CMNotificationCenterPostNotification();
  }

  CFDictionarySetValue(Mutable, @"routeConfigUpdateReason", @"configUpdateReasonEndedFailed");
  CMNotificationCenterPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t routingContextResilientRemote_SelectRoute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SelectRoute_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_SelectRouteDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SelectRouteDescriptor_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_CopyRoute(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CopyRoute_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t routingContextResilientRemote_SelectRoutes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SelectRoutes_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_SelectRouteDescriptors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SelectRouteDescriptors_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_CopySelectedRouteForRemoteControl(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CopySelectedRouteForRemoteControl_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t routingContextResilientRemote_AddToSelectedRoutes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_AddToSelectedRoutes_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_AddToSelectedRouteDescriptors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_AddToSelectedRouteDescriptors_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_RemoveFromSelectedRoutes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_RemoveFromSelectedRoutes_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_RemoveFromSelectedRouteDescriptors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_RemoveFromSelectedRouteDescriptors_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CreateCommChannel_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = FigRoutingContextResilientRemoteCopyRemoteContext(a1);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v10)
  {
    v11 = v10(v9, a2, a3, a4, a5);
    if (!v9)
    {
      return v11;
    }

    goto LABEL_5;
  }

  v11 = 4294954514;
  if (v9)
  {
LABEL_5:
    CFRelease(v9);
  }

  return v11;
}

uint64_t routingContextResilientRemote_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CloseCommChannel_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t routingContextResilientRemote_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_SendCommand_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}

uint64_t routingContextResilientRemote_CopySelectedBufferedEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CopySelectedBufferedEndpoint_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_CreateCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __routingContextResilientRemote_CreateCommChannelForDeviceID_block_invoke;
  v5[3] = &__block_descriptor_56_e34_i16__0__OpaqueFigRoutingContext__8l;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  return routingContextResilientRemote_withRemoteContext(a1, v5);
}

uint64_t routingContextResilientRemote_SendDataForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = FigRoutingContextResilientRemoteCopyRemoteContext(a1);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v12)
  {
    v13 = v12(v11, a2, a3, a4, a5, a6);
    if (!v11)
    {
      return v13;
    }

    goto LABEL_5;
  }

  v13 = 4294954514;
  if (v11)
  {
LABEL_5:
    CFRelease(v11);
  }

  return v13;
}

uint64_t routingContextResilientRemote_CloseCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CloseCommChannelForDeviceID_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_ResetPredictedSelectedRouteDescriptor(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_ResetPredictedSelectedRouteDescriptor_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t routingContextResilientRemote_CopySelectedBufferedEndpointForTesting(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CopySelectedBufferedEndpointForTesting_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_AddToSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_AddToSelectedRouteDescriptorsWithCompletionCallback_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}

uint64_t routingContextResilientRemote_RemoveFromSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_RemoveFromSelectedRouteDescriptorsWithCompletionCallback_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}

uint64_t routingContextResilientRemote_SelectRouteDescriptorWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_SelectRouteDescriptorWithCompletionCallback_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}

uint64_t routingContextResilientRemote_SelectRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_SelectRouteDescriptorsWithCompletionCallback_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}

uint64_t routingContextResilientRemote_ReportModificationMetrics(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_ReportModificationMetrics_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

void __routingContextResilientRemote_copySharedAudioContext_block_invoke(uint64_t a1)
{
  routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr = FigRoutingContextResilientRemoteCreateAudioContext(*(a1 + 32), 0, &routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext);
  v1 = routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext;
  if (routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext)
  {
    cf = 0;
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v2)
    {
      v2(v1, @"contextUUID", *MEMORY[0x1E695E480], &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t cmsmDoesPortMatchCurrentEndpointID(AudioObjectID a1)
{
  v9 = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(qword_1EB75E190, 0, &v9);
  v8 = 0;
  if (v9)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &v8);
    }
  }

  v4 = vaeCopyDeviceIdentifierFromVADPort(a1);
  cf = 0;
  CMSMUtility_CreateTokensFromDeviceUID(v4, &cf, 0);
  v5 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v9)
  {
    CFRelease(v9);
    v9 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

id cmsmCopyQuiesceableWiredPortsForRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, int a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a4 != 1 || MX_FeatureFlags_IsSystemInputPickerEnabled(a1, a2))
    {
      goto LABEL_4;
    }
  }

  else if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(a1, a2))
  {
LABEL_4:
    VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
    v10 = vaemCopyConnectedPortsListForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, 0, a4);
    if (!v10)
    {
      return 0;
    }

    v11 = v10;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 unsignedIntValue];
          if (vaeIsQuiesceableWiredPort(v18, v19))
          {
            [v12 addObject:v17];
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    if (![v12 count])
    {

      v12 = 0;
    }

    return v12;
  }

  v20 = MEMORY[0x1E695DEC8];

  return objc_alloc_init(v20);
}

void *cmsmCopyPickableQuiesceableWiredPortsForRouteConfiguration(uint64_t a1, uint64_t a2)
{
  if (!MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(a1, a2))
  {
    return 0;
  }

  v2 = vaemCopyPickableQuiesceableWiredPortsList(0);
  if (![v2 count])
  {

    return 0;
  }

  return v2;
}

void cmsmAddBTDetailsFromBTEndpointToRouteDescription(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"RouteUID");
    if (a1)
    {
      theDicta = 0;
      v4 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, *MEMORY[0x1E6961FE0], v4, &theDicta);
        if (theDicta)
        {
          v7 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616D0]);
          if (v7)
          {
            CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelLeft", v7);
          }

          v8 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616D8]);
          if (v8)
          {
            CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelRight", v8);
          }

          v9 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616C8]);
          if (v9)
          {
            CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelCase", v9);
          }

          v10 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616E0]);
          if (v10)
          {
            CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelSingle", v10);
          }

          if (theDicta)
          {
            CFRelease(theDicta);
            theDicta = 0;
          }
        }
      }

      value = 0;
      v11 = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, *MEMORY[0x1E69621D8], v4, &value);
        if (value)
        {
          CFDictionarySetValue(theDict, @"BTDetails_ProductID", value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }
      }

      cf = 0;
      v13 = FigEndpointGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v14(v13, *MEMORY[0x1E6962138], v4, &cf);
        if (cf)
        {
          CFDictionarySetValue(theDict, @"IsGenuineAppleAccessory", cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }
  }
}

__CFDictionary *cmsmCreateNonConnectedBTRouteDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"RouteType", @"Wireless");
  v4 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RouteSupportsAudio", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, @"IsBTRoute", v4);
  value = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, *MEMORY[0x1E69620F8], v2, &value);
    if (value)
    {
      CFDictionarySetValue(Mutable, @"RouteUID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }
  }

  cf = 0;
  v7 = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(v7, *MEMORY[0x1E69621E8], v2, &cf);
    if (cf)
    {
      CFDictionarySetValue(Mutable, @"RouteName", cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  CFDictionarySetValue(Mutable, @"AVAudioRouteName", @"HeadphonesBT");
  cmsmAddBTDetailsFromBTEndpointToRouteDescription(a1, Mutable);
  return Mutable;
}

CFTypeRef cmsmCopyActiveNonQuiesceablePortsForRouteConfigurationScopeAndDevice(uint64_t a1, uint64_t a2, const void *a3, const void *a4, int a5, int a6, uint64_t a7)
{
  v12 = a2;
  v13 = a1;
  v28 = *MEMORY[0x1E69E9840];
  if (a6 == 1)
  {
    if (MX_FeatureFlags_IsSystemInputPickerEnabled(a1, a2))
    {
      v14 = 1768845428;
      goto LABEL_7;
    }
  }

  else if (a6 || MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(a1, a2))
  {
    v14 = 1869968496;
LABEL_7:
    cf = 0;
    outData = 0;
    RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(v13, v12, a3, a4, a5);
    inAddress.mSelector = 1634627954;
    inAddress.mScope = v14;
    inAddress.mElement = 0;
    ioDataSize = 8;
    PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
    if (!PropertyData && outData && (v16 = CFGetTypeID(outData), v16 == CFArrayGetTypeID()))
    {
      if (CFArrayGetCount(outData))
      {
        if (a6 == 1)
        {
          p_cf = &cf;
          v18 = a7;
          v19 = 0;
        }

        else
        {
          v19 = &cf;
          v18 = a7;
          p_cf = 0;
        }

        vaemGetPortListForDevice(outData, v18, p_cf, v19);
        if (cf)
        {
          CFRetain(cf);
        }
      }
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (outData)
    {
      CFRelease(outData);
    }

    if (RouteConfigurationDictionary)
    {
      CFRelease(RouteConfigurationDictionary);
    }

    return cf;
  }

  v20 = MEMORY[0x1E695DEC8];

  return objc_alloc_init(v20);
}

void cmsmUnpickQuiesceableWiredPortsRoutes(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = a2;
  v23 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (a5 == 1 && !MX_FeatureFlags_IsSystemInputPickerEnabled(a1, a2))
    {
      return;
    }

    v9 = 0;
  }

  else
  {
    if (!MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(a1, a2))
    {
      return;
    }

    v9 = 1;
  }

  if ([a1 count])
  {
    v17 = a3;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      if (a4)
      {
        v14 = v9;
      }

      else
      {
        v14 = 0;
      }

      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(a1);
          }

          v16 = [*(*(&v18 + 1) + 8 * v15) unsignedIntValue];
          if (vaeIsPortRoutable(v16))
          {
            if (v14)
            {
              [+[MXSessionManager sharedInstance](MXSessionManager setQuiesceableWiredPortPreference:"setQuiesceableWiredPortPreference:autoRouteOnConnect:" autoRouteOnConnect:v16, 0];
            }

            [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v16)}];
          }

          ++v15;
        }

        while (v12 != v15);
        v12 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    vaemMakeArrayOfPortsRoutable(v10, 0, v7, v17, 0);
  }
}

uint64_t cmsmUnrouteAllInputRoutes(NSDictionary *a1, uint64_t a2, const void *a3, const void *a4, void *a5)
{
  v10 = cmsmCopyWirelessPortsArrayForRouteConfiguration(a1, a2, a3, [a5 prefersBluetoothHighQualityContentCapture]);
  v11 = v10;
  if (!v10 || !CFArrayGetCount(v10))
  {
    Routable = 0;
    goto LABEL_7;
  }

  v12 = cmsmUnpickWirelessRoutes(v11, 0, 1u, a4);
  if (v12)
  {
    v15 = v12;
    Routable = 0;
    goto LABEL_13;
  }

  Routable = cmsmCopyPartnerPortsToMakeRoutable(v11);
  v14 = cmsmUnpickWirelessRoutes(Routable, 0, 1u, a4);
  if (!v14)
  {
LABEL_7:
    v16 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration(a1, a2, a3, 1);
    if ([v16 count])
    {
      cmsmUnpickQuiesceableWiredPortsRoutes(v16, 1, a4, 1, 1);
    }

    if ([objc_msgSend(a5 "overridePortsList")])
    {
      v15 = MXCoreSessionSetProperty(a5, @"OverrideRoute");
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v15 = 0;
      if (!v16)
      {
LABEL_12:
        if (!v11)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    CFRelease(v16);
    goto LABEL_12;
  }

  v15 = v14;
LABEL_13:
  CFRelease(v11);
LABEL_14:
  if (Routable)
  {
    CFRelease(Routable);
  }

  return v15;
}

uint64_t cmsmUnpickWirelessRoutes(const __CFArray *a1, int a2, unsigned int a3, const void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(a1);
  v10 = Count;
  if (a2)
  {
    if (Count >= 1)
    {
      v11 = 0;
      do
      {
        v17 = 0;
        FigCFArrayGetInt64AtIndex();
        vaeGetPortTypeFromPortID(0);
        ++v11;
      }

      while (v10 != v11);
    }
  }

  else if (Count >= 1)
  {
    v13 = 0;
    do
    {
      v17 = 0;
      FigCFArrayGetInt64AtIndex();
      ++v13;
    }

    while (v10 != v13);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(Mutable))
  {
    ArrayOfPortsRoutable = vaemDeaggregatePorts(Mutable, Mutable, a3, a4);
  }

  else
  {
    ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(Mutable, 0, a3, a4, 0);
  }

  v12 = ArrayOfPortsRoutable;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

CFTypeRef cmsmCopyCurrentActiveRouteTypeAtIndex(CFIndex a1)
{
  theArray = 0;
  cmsmCopyCurrentActiveRoutesInfoForVADUID(0x1F2893B50, &theArray, 0, 0);
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (Count > a1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, a1);
    if (ValueAtIndex)
    {
      v5 = CFRetain(ValueAtIndex);
      if (!v2)
      {
        return v5;
      }

      goto LABEL_9;
    }
  }

  v5 = 0;
  if (v2)
  {
LABEL_9:
    CFRelease(v2);
  }

  return v5;
}

uint64_t cmsmInputPortIsConnectedForRouteConfiguration(int a1, uint64_t a2, uint64_t a3, const void *a4, int a5)
{
  v6 = vaemCopyConnectedPortsListForRouteConfiguration(a2, a3, a4, a5, 1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
LABEL_6:
    v12 = 0;
  }

  else
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr == a1)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_6;
      }
    }

    v12 = 1;
  }

  CFRelease(v7);
  return v12;
}

uint64_t cmsmIsDeviceIDIncludedInCarBluetoothIDs(const __CFString *a1, uint64_t a2)
{
  v10 = 0;
  CMSMUtility_CreateTokensFromDeviceUID(a1, &v10, 0);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
LABEL_8:
      a2 = 0;
    }

    else
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
        cf = 0;
        CMSMUtility_CreateTokensFromDeviceUID(ValueAtIndex, &cf, 0);
        v7 = CMSMUtility_CFStringEqualCaseInsensitive(cf, v10);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v7)
        {
          break;
        }

        if (v4 == ++v5)
        {
          goto LABEL_8;
        }
      }

      a2 = 1;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return a2;
}

CFArrayRef cmsCopySubPortPreferencesAndInputOverride(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v24 = a1;
  v3 = [objc_msgSend(a1 "subPortPreferences")];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; v4 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex([v24 subPortPreferences], i);
      keys = 0;
      v30 = 0;
      v31 = 0;
      values = 0;
      v27 = 0;
      v28 = 0;
      v7 = CFDictionaryContainsKey(ValueAtIndex, @"polar pattern");
      Value = CFDictionaryGetValue(ValueAtIndex, @"sub-port id");
      v9 = CFDictionaryGetValue(ValueAtIndex, @"port id");
      if (v7)
      {
        v10 = CFDictionaryGetValue(ValueAtIndex, @"polar pattern");
        if (v9)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0;
        if (v9)
        {
LABEL_5:
          keys = @"SelectedRouteDescription_RouteID";
          values = v9;
          v11 = 1;
          if (!Value)
          {
            goto LABEL_7;
          }

LABEL_6:
          *(&keys + v11) = @"SelectedRouteDescription_DataSourceID";
          *(&values + v11++) = Value;
          goto LABEL_7;
        }
      }

      v11 = 0;
      if (Value)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (v10)
      {
        *(&keys + v11) = @"SelectedRouteDescription_MicrophonePolarPattern";
        *(&values + v11++) = v10;
LABEL_13:
        v12 = CFDictionaryCreate(allocator, &keys, &values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFArrayAppendValue(Mutable, v12);
        if (v12)
        {
          CFRelease(v12);
        }

        continue;
      }

      if (v11)
      {
        goto LABEL_13;
      }

      CFArrayAppendValue(Mutable, 0);
    }
  }

  if ([v24 overridePortsList])
  {
    v13 = [objc_msgSend(v24 "overridePortsList")];
    if (v13 >= 1)
    {
      v14 = v13;
      v15 = 0;
      v16 = MEMORY[0x1E695E9D8];
      v17 = MEMORY[0x1E695E9E8];
      do
      {
        v18 = CFArrayGetValueAtIndex([v24 overridePortsList], v15);
        valuePtr = 0;
        keys = 0;
        v30 = 0;
        v31 = 0;
        values = 0;
        v27 = 0;
        v28 = 0;
        if (v18)
        {
          v19 = v18;
          CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr);
          if (vaeIsPortAnInputPort(valuePtr))
          {
            keys = @"SelectedRouteDescription_RouteID";
            values = v19;
            v20 = CFDictionaryCreate(allocator, &keys, &values, 1, v16, v17);
            CFArrayAppendValue(Mutable, v20);
            if (v20)
            {
              CFRelease(v20);
            }
          }
        }

        else if (vaeIsPortAnInputPort(0))
        {
          CFArrayAppendValue(Mutable, 0);
        }

        ++v15;
      }

      while (v14 != v15);
    }
  }

  if (!Mutable)
  {
    return 0;
  }

  Copy = CFArrayCreateCopy(allocator, Mutable);
  CFRelease(Mutable);
  return Copy;
}

CFIndex cmsUpdateSubPortPreferences(CFIndex result, CFArrayRef theArray, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (theArray)
    {
      v9 = result;
      result = CFArrayGetCount(theArray);
      if (result >= 1)
      {
        for (i = 0; i < result; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v12 = [objc_msgSend(v9 "subPortPreferences")];
          if (v12 < 1)
          {
LABEL_9:
            v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(v9, "subPortPreferences")}];
            [v15 addObject:ValueAtIndex];
          }

          else
          {
            v13 = v12;
            v14 = 0;
            while (!cmsmSubPortPreferenceMatches([objc_msgSend(v9 "subPortPreferences")], ValueAtIndex))
            {
              if (v13 == ++v14)
              {
                goto LABEL_9;
              }
            }

            v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(v9, "subPortPreferences")}];
            [v15 setObject:ValueAtIndex atIndexedSubscript:v14];
          }

          [v9 setSubPortPreferences:v15];

          result = CFArrayGetCount(theArray);
        }
      }
    }

    else
    {
      return cmsUpdateSubPortPreferences_cold_1(result, 0, a3, a4, a5, a6, a7, a8, v16, v17, SHIDWORD(v17), v18);
    }
  }

  return result;
}

BOOL cmsmSubPortPreferenceMatches(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"port id");
  v5 = CFDictionaryGetValue(a2, @"port id");
  if (CFNumberCompare(Value, v5, 0))
  {
    return 0;
  }

  v7 = CFDictionaryContainsKey(a2, @"polar pattern");
  v8 = CFDictionaryContainsKey(a1, @"polar pattern");
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return (v7 | v8) == 0;
  }

  else
  {
    v10 = CFDictionaryGetValue(a1, @"sub-port id");
    v11 = CFDictionaryGetValue(a2, @"sub-port id");
    return CFNumberCompare(v10, v11, 0) == kCFCompareEqualTo;
  }
}