void figRouteDiscoveryManager_stopTimerForActivityMonitoring(int a1)
{
  cf[19] = *MEMORY[0x1E69E9840];
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v2 = &unk_1EB75D590;
  }

  else
  {
    v2 = 288;
  }

  v3 = *v2;
  if (*v2)
  {
    if (dword_1EB75DF60)
    {
      LODWORD(cf[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v3 = *v2;
    }

    dispatch_source_cancel(v3);
    if (*v2)
    {
      dispatch_release(*v2);
      *v2 = 0;
    }
  }

  if (a1)
  {
    if (discoverManager_getSharedManager_onceToken != -1)
    {
      FigRouteDiscoveryManagerStart_cold_2();
    }

    v5 = 0;
    if (qword_1EB75D478)
    {
      v6 = &qword_1EB75D588;
    }

    else
    {
      v6 = 280;
    }

    v7 = *MEMORY[0x1E695E480];
    while (1)
    {
      Count = *v6;
      if (*v6)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v5 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*v6, v5);
      v10 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
      if (v10)
      {
        v11 = v10;
        cf[0] = 0;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(v11, @"DiscoveryMode", v7, cf);
        }

        if (FigCFEqual())
        {
          if (dword_1EB75DF60)
          {
            v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRouteDiscovererSetDiscoveryModeNoneOnDiscoverer(v11);
          FigRouteDiscoveryManagerUpdateDiscoveryMode();
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        CFRelease(v11);
      }

      ++v5;
    }
  }

  else if (dword_1EB75DF60)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

double __figRouteDiscoveryManager_setDiscoveryModeDetailedOnCachedDiscoverers_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  return result;
}

void sub_1B184AB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BiomeStreamsLibraryCore()
{
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return BiomeStreamsLibraryCore_frameworkLibrary;
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t BiomeLibraryLibraryCore(uint64_t a1)
{
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return BiomeLibraryLibraryCore_frameworkLibrary;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBMDeviceSilentModeClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMDeviceSilentMode");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getBMDeviceSilentModeClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getBMDeviceSilentModeClass_block_invoke_cold_1();
    return BiomeLibraryLibrary();
  }

  return result;
}

uint64_t BiomeLibraryLibrary()
{
  v3 = 0;
  v0 = BiomeLibraryLibraryCore(&v3);
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

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CFMutableDictionaryRef FigRoutingContextUtilities_CreateRouteConfigUpdatedFailedPayload(const __CFDictionary *a1, uint64_t a2, int a3, const __CFArray *a4)
{
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (a4)
  {
    Count = CFArrayGetCount(a4);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      v13 = *MEMORY[0x1E69620F8];
      do
      {
        value = 0;
        CFArrayGetValueAtIndex(a4, v12);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v15)
        {
          v15(CMBaseObject, v13, v7, &value);
        }

        if (value)
        {
          CFArrayAppendValue(v9, value);
          if (value)
          {
            CFRelease(value);
          }
        }

        ++v12;
      }

      while (v11 != v12);
    }
  }

  if (a1)
  {
    v16 = CFDictionaryGetValue(a1, @"clientRouteRequestID");
    if (v16)
    {
      v17 = CFRetain(v16);
      CFDictionaryGetValue(a1, @"initiator");
      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      CFDictionaryGetValue(a1, @"initiator");
    }
  }

  v18 = mach_absolute_time();
  v17 = CFStringCreateWithFormat(v7, 0, @"%d", v18);
LABEL_16:
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (a3 == -72276)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

void FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(uint64_t a1, const __CFDictionary *a2, CFDictionaryRef theDict)
{
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"initiator");
  }

  if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, a2, @"configUpdateReasonEndedNoop");

    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a1, @"currentRouteChanged", 0);
  }
}

void FigRoutingManagerContextUtilities_Create(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __FigRoutingManagerContextUtilities_Create_block_invoke;
      v4[3] = &unk_1E7AE79D0;
      v4[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
      v4[6] = a1;
      v4[4] = a2;
      MXDispatchSync("FigRoutingManagerContextUtilities_Create", "FigRoutingManagerContextUtilities.m", 930, 0, 0, qword_1EB75CF98, v4);
    }
  }
}

uint64_t FigRoutingContextUtilities_SetLeaderUUIDForContext(const void *a1, uint64_t a2, __CFString *a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingContextUtilities_SetLeaderUUIDForContext_block_invoke;
    v8[3] = &unk_1E7AE79F8;
    v8[6] = a1;
    v8[7] = a2;
    v8[4] = &v13;
    v8[5] = &v9;
    v8[8] = &routingContextUtilities_getSharedContextUtilities_contextState;
    MXDispatchSync("FigRoutingContextUtilities_SetLeaderUUIDForContext", "FigRoutingManagerContextUtilities.m", 1020, 0, 0, qword_1EB75CF98, v8);
    if (a3)
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, 0, a3);
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a2, @"currentRouteChanged", 0);
    }

    if (qword_1EB75CFC0 == a1)
    {
      CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID(a1);
      routingContextUtilities_setRoutingContextDetailsForVolumeControl(v10[3], a1);
    }

    v6 = *(v14 + 6);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }

  return v6;
}

void sub_1B184C228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _routingContextUtilities_setLeaderUUIDForContext(void *a1, void *key)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v4 = &qword_1EB75CF80;
  }

  else
  {
    v4 = 480;
  }

  CFDictionaryGetValue(*v4, key);
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFDictionaryGetValue(*v4, a1);
  v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*v4, key);
  v8 = _routingContextUtilities_getContextForUUIDFromDict(*v4, a1);
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v11 = v8;
    if (_routingContextUtilities_getIndexOfFollower(ContextForUUIDFromDict, v8) < 0)
    {
      CFArrayAppendValue(*(ContextForUUIDFromDict + 11), v6);
    }

    if (!v11)
    {
LABEL_25:
      CFRelease(v6);
      if (!v5)
      {
        return v11;
      }

      goto LABEL_13;
    }

    v12 = *(v11 + 80);
    if (*v11 == 10)
    {
      _routingContextUtilities_pruneLeaders(v12);
    }

    else
    {
      Count = CFArrayGetCount(v12);
      if (Count)
      {
        if (Count != 1)
        {
LABEL_24:
          v11 = 0;
          goto LABEL_25;
        }

        CFArrayRemoveValueAtIndex(*(v11 + 80), 0);
      }
    }

    CFArrayAppendValue(*(v11 + 80), v5);
    goto LABEL_24;
  }

  v11 = 4294949876;
  if (v6)
  {
    goto LABEL_25;
  }

  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

  return v11;
}

uint64_t FigRoutingContextUtilities_SetLeaderToSystemAudioContext(const void *a1, __CFString *a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (!byte_1EB75CFA8)
  {
    return 4294949876;
  }

  v4 = qword_1EB75CFB0;

  return FigRoutingContextUtilities_SetLeaderUUIDForContext(a1, v4, a2);
}

uint64_t FigRoutingContextUtilities_UnfollowUUIDFromLeader(const void *a1, __CFString *a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingContextUtilities_UnfollowUUIDFromLeader_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[7] = a1;
    v6[4] = &v7;
    v6[5] = &v11;
    MXDispatchSync("FigRoutingContextUtilities_UnfollowUUIDFromLeader", "FigRoutingManagerContextUtilities.m", 1071, 0, 0, qword_1EB75CF98, v6);
    if (a2)
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, 0, a2);
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a1, @"currentRouteChanged", 0);
    }

    if (qword_1EB75CFC0 == a1)
    {
      CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID(a1);
      routingContextUtilities_setRoutingContextDetailsForVolumeControl(v8[3], a1);
    }

    v4 = *(v12 + 6);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
  }

  return v4;
}

void sub_1B184C5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

CFIndex _routingContextUtilities_getIndexOfFollower(uint64_t a1, uint64_t a2)
{
  v2 = -1;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 88);
      if (v4)
      {
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v6 = Count;
          v2 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v2);
            if (_routingContextUtilities_getContextFromWeakRef(ValueAtIndex))
            {
              if (FigCFEqual())
              {
                break;
              }
            }

            if (v6 == ++v2)
            {
              return -1;
            }
          }
        }
      }
    }
  }

  return v2;
}

void _routingContextUtilities_removeLeader(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2 && CFArrayGetCount(v2) == 1)
    {
      v3 = *(a1 + 80);

      CFArrayRemoveValueAtIndex(v3, 0);
    }

    else if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t FigRoutingManagerContextUtilities_AddContext(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  result = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    FeatureString = routingContextUtilities_getFeatureString(a3);
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 216);
    CFDataSetLength(Mutable, 216);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __FigRoutingManagerContextUtilities_AddContext_block_invoke;
    v12[3] = &__block_descriptor_92_e5_v8__0l;
    v12[4] = a1;
    v12[5] = FeatureString;
    v12[6] = a4;
    v12[7] = MutableBytePtr;
    v13 = a3;
    v12[8] = a2;
    v12[9] = Mutable;
    v12[10] = &routingContextUtilities_getSharedContextUtilities_contextState;
    MXDispatchSync("FigRoutingManagerContextUtilities_AddContext", "FigRoutingManagerContextUtilities.m", 1169, 0, 0, qword_1EB75CF98, v12);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  return result;
}

uint64_t FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  result = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    cf = 0;
    v18 = 0;
    if (a2)
    {
      v7 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, *MEMORY[0x1E69620F8], v7, &v18);
      }

      v10 = FigEndpointGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(v10, *MEMORY[0x1E69621E8], v7, &cf);
      }
    }

    if (dword_1EB75DF20)
    {
      v16 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v18)
    {
      CFRelease(v18);
      v18 = 0;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo_block_invoke;
    v14[3] = &unk_1E7AE79A8;
    v14[6] = a1;
    v14[7] = a2;
    v14[4] = &v19;
    v14[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v14[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo", "FigRoutingManagerContextUtilities.m", 1345, 0, 0, qword_1EB75CF98, v14);
    v13 = v20[3];
    if (v13)
    {
      CFRelease(v13);
    }

    _Block_object_dispose(&v19, 8);
    return 0;
  }

  return result;
}

void sub_1B184D2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v10 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v35 = 0;
    cf = 0;
    v33 = 0;
    v34 = 0;
    v11 = MEMORY[0x1E69620F8];
    v12 = MEMORY[0x1E695E480];
    v13 = MEMORY[0x1E69621E8];
    if (a2)
    {
      v14 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v16)
      {
        v16(CMBaseObject, *v11, v14, &cf);
      }

      v17 = FigEndpointGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v18(v17, *v13, v14, &v35);
      }
    }

    if (a3)
    {
      v19 = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v21 = *v12;
      v22 = *(*(VTable + 8) + 48);
      if (v22)
      {
        v22(v19, *v11, v21, &v34);
      }

      v23 = FigEndpointGetCMBaseObject();
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v24)
      {
        v24(v23, *v13, v21, &v33);
      }
    }

    if (dword_1EB75DF20)
    {
      v32 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v35)
    {
      CFRelease(v35);
      v35 = 0;
    }

    if (v34)
    {
      CFRelease(v34);
      v34 = 0;
    }

    if (v33)
    {
      CFRelease(v33);
      v33 = 0;
    }

    LOBYTE(v37) = 0;
    LOBYTE(v32) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo_block_invoke;
    v28[3] = &unk_1E7AE7A90;
    v28[4] = &v38;
    v28[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v28[6] = a1;
    v28[7] = a2;
    v29 = v37;
    v30 = 0;
    v28[8] = a3;
    v28[9] = a5;
    v28[10] = a4;
    MXDispatchSync("FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo", "FigRoutingManagerContextUtilities.m", 1438, 0, 0, qword_1EB75CF98, v28);
    v10 = *(v39 + 6);
    _Block_object_dispose(&v38, 8);
  }

  return v10;
}

void sub_1B184D9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _routingContextUtilities_postRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(void *a1, const __CFDictionary *a2, uint64_t a3)
{
  RouteConfigUpdatedPayload = routingContextUtilities_createRouteConfigUpdatedPayload(a2, a3);
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(qword_1EB75CF80, a1);
      _routingContextUtilities_postNotificationToContextAndItsFollowers(ContextForUUIDFromDict, @"routeConfigUpdated", RouteConfigUpdatedPayload);
    }
  }

  if (RouteConfigUpdatedPayload)
  {

    CFRelease(RouteConfigUpdatedPayload);
  }
}

uint64_t FigRoutingManagerContextUtilities_SaveCommChannelUUID(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_SaveCommChannelUUID_block_invoke;
    v6[3] = &unk_1E7AE7A48;
    v6[4] = &v7;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SaveCommChannelUUID", "FigRoutingManagerContextUtilities.m", 1543, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

void sub_1B184DD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v10 = 4294949876;
  if (a2 && byte_1EB75CFA8)
  {
    cf = 0;
    v22 = 0;
    if (a3)
    {
      v11 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(CMBaseObject, *MEMORY[0x1E69620F8], v11, &v22);
      }

      v14 = FigEndpointGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, *MEMORY[0x1E69621E8], v11, &cf);
      }
    }

    if (dword_1EB75DF20)
    {
      v20 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v22)
    {
      CFRelease(v22);
      v22 = 0;
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint_block_invoke;
    v18[3] = &unk_1E7AE7AB8;
    v18[4] = &v23;
    v18[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v18[6] = a2;
    v18[7] = a3;
    v18[8] = a1;
    v18[9] = a4;
    v18[10] = a5;
    MXDispatchSync("FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint", "FigRoutingManagerContextUtilities.m", 1584, 0, 0, qword_1EB75CF98, v18);
    v10 = *(v24 + 6);
    _Block_object_dispose(&v23, 8);
  }

  return v10;
}

void sub_1B184E18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _routingContextUtilities_checkActivationTimeout(uint64_t a1, const void *a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v3 = &AVSystemController_EUVolumeLimitNotificationParameter;
    Count = CFDictionaryGetCount(qword_1EB75CF80);
    v5 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(qword_1EB75CF80, v5, 0);
    if (Count >= 1)
    {
      v6 = 0;
      v19 = Count;
      v18 = v5;
      do
      {
        ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(v3[496], v5[v6]);
        v8 = *(ContextForUUIDFromDict + 14);
        if (v8)
        {
          v9 = CFRetain(v8);
          if (v9)
          {
            v10 = v9;
            v11 = CFArrayGetCount(v9);
            if (v11 >= 1)
            {
              v12 = v11;
              for (i = 0; i != v12; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
                Value = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint");
                if (Value == a2)
                {
                  v16 = Value;
                  v17 = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
                  if (v17)
                  {
                    CFDictionaryGetValue(v17, @"clientRouteRequestID");
                  }

                  if (FigCFEqual() && *(ContextForUUIDFromDict + 14))
                  {
                    off_1EB75CF88(*(ContextForUUIDFromDict + 1), v16);
                  }
                }
              }
            }

            CFRelease(v10);
            v3 = &AVSystemController_EUVolumeLimitNotificationParameter;
            v5 = v18;
            Count = v19;
          }
        }

        ++v6;
      }

      while (v6 != Count);
    }

    free(v5);
  }
}

uint64_t FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v7 = 4294949876;
  if (a2 && byte_1EB75CFA8)
  {
    v19 = 0;
    cf = 0;
    if (a3)
    {
      v8 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, *MEMORY[0x1E69620F8], v8, &cf);
      }

      v11 = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, *MEMORY[0x1E69621E8], v8, &v19);
      }
    }

    if (dword_1EB75DF20)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
      v14 = cf;
    }

    else
    {
      v14 = 0;
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint_block_invoke;
    v16[3] = &unk_1E7AE79A8;
    v16[4] = &v21;
    v16[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v16[6] = a2;
    v16[7] = a4;
    v16[8] = v14;
    MXDispatchSync("FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint", "FigRoutingManagerContextUtilities.m", 1687, 0, 0, qword_1EB75CF98, v16);
    v7 = *(v22 + 6);
    _Block_object_dispose(&v21, 8);
  }

  return v7;
}

void sub_1B184EAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _routingContextUtilities_removeCurrentlyActivatingEndpointWithID(void *key, const __CFString *a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = &qword_1EB75CF80;
  if (!byte_1EB75CFA8)
  {
    v4 = 480;
  }

  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*v4, key);
  if (ContextForUUIDFromDict)
  {
    v6 = ContextForUUIDFromDict;
    v7 = *(ContextForUUIDFromDict + 14);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        v11 = *MEMORY[0x1E69620F8];
        v12 = *MEMORY[0x1E695E480];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 14), v10);
          if (CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint"))
          {
            prefix = 0;
            CMBaseObject = FigEndpointGetCMBaseObject();
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v15)
            {
              v15(CMBaseObject, v11, v12, &prefix);
            }

            v16 = prefix;
            if (a2 && prefix)
            {
              if (CFStringHasPrefix(a2, prefix) && !FigCFEqual())
              {
                CFArrayRemoveValueAtIndex(*(v6 + 14), v10);
                if (prefix)
                {
                  CFRelease(prefix);
                }

                return;
              }

              v16 = prefix;
            }

            if (v16)
            {
              CFRelease(v16);
            }
          }

          ++v10;
        }

        while (v9 != v10);
      }
    }
  }
}

uint64_t FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoint(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 4294949876;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a3);
  v11 = FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints(a1, a2, Mutable, a4, a5);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

uint64_t FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints(uint64_t a1, uint64_t a2, CFArrayRef theArray, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    v22 = a2;
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    a2 = v22;
  }

  if (byte_1EB75CFA8)
  {
    v6 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v6 = 0;
  }

  v7 = 4294949876;
  if (a1 && a2 && byte_1EB75CFA8)
  {
    v23 = v6;
    v26 = a2;
    v35 = 0;
    v36 = 0;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    v28 = *MEMORY[0x1E69620F8];
    v9 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, v28, v9, &v36);
    }

    v12 = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v27 = *MEMORY[0x1E69621E8];
    v14 = *(*(VTable + 8) + 48);
    if (v14)
    {
      v14(v12, v27, v9, &v35);
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v33 = 0;
        cf = 0;
        CFArrayGetValueAtIndex(theArray, i);
        v16 = FigEndpointGetCMBaseObject();
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17)
        {
          v17(v16, v28, v9, &cf);
        }

        v18 = FigEndpointGetCMBaseObject();
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v19(v18, v27, v9, &v33);
        }

        if (dword_1EB75DF20)
        {
          v32 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v33)
        {
          CFRelease(v33);
        }
      }
    }

    if (v36)
    {
      CFRelease(v36);
      v36 = 0;
    }

    if (v35)
    {
      CFRelease(v35);
      v35 = 0;
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints_block_invoke;
    v30[3] = &unk_1E7AE7AB8;
    v30[4] = &v37;
    v30[5] = v23;
    v30[6] = a1;
    v30[7] = a4;
    v30[8] = theArray;
    v30[9] = a5;
    v30[10] = v26;
    MXDispatchSync("FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints", "FigRoutingManagerContextUtilities.m", 1754, 0, 0, qword_1EB75CF98, v30);
    FigRouteDiscoveryManagerLowerBTDiscoveryModeFromDetailed();
    v7 = *(v38 + 6);
    _Block_object_dispose(&v37, 8);
  }

  return v7;
}

uint64_t FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v19[16] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695E480];
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, a2);
  }

  else
  {
    Mutable = 0;
  }

  if (FigRoutingManagerIsEndpointOfType(a2, *MEMORY[0x1E69626B0]))
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v10 = byte_1EB75CFA8;
    v11 = CFArrayCreateMutable(*v8, 0, MEMORY[0x1E695E9C0]);
    v12 = v11;
    if (a1 && a2)
    {
      v13 = &routingContextUtilities_getSharedContextUtilities_contextState;
      v14 = &qword_1EB75CF98;
      if (!v10)
      {
        v14 = 504;
      }

      v15 = *v14;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __routingContextUtilities_copyIndividualEndpointsFromAggregate_block_invoke;
      v19[3] = &__block_descriptor_56_e5_v8__0l;
      if (!v10)
      {
        v13 = 0;
      }

      v19[4] = a2;
      v19[5] = v13;
      v19[6] = v11;
      MXDispatchSync("routingContextUtilities_copyIndividualEndpointsFromAggregate", "FigRoutingManagerContextUtilities.m", 2926, 0, 0, v15, v19);
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v12, 0);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v16 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(Mutable, 0);
  }

  FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, Mutable, a3, a4, v16);
  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t FigRoutingContextUtilities_DoesArrayOfEndpointsContainEndpoint(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  v5 = 0;
  if (!a2 || !Count)
  {
    return v5;
  }

  if (FigCFArrayContainsValue())
  {
    return 1;
  }

  prefix = 0;
  v6 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8 || (v8(CMBaseObject, *MEMORY[0x1E69620F8], v6, &prefix), !prefix))
  {
    v21 = 0;
    v15 = FigEndpointGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v15, *MEMORY[0x1E69621E8], v6, &v21);
    }

    cf = 0;
    v17 = FigEndpointGetCMBaseObject();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18)
    {
      v18(v17, *MEMORY[0x1E69622F8], v6, &cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (v21)
    {
      CFRelease(v21);
    }

    return 0;
  }

  v9 = routingContextUtilities_copyEndpointIDs(a1);
  v10 = v9;
  if (v9 && (v11 = CFArrayGetCount(v9), v11 >= 1))
  {
    v12 = v11;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
      if (CFStringHasPrefix(ValueAtIndex, prefix))
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_13;
      }
    }

    v5 = 1;
  }

  else
  {
LABEL_13:
    v5 = 0;
  }

  if (prefix)
  {
    CFRelease(prefix);
    prefix = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v5;
}

uint64_t FigRoutingManagerContextUtilities_AddActivatedEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v11 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v12 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(CMBaseObject, *MEMORY[0x1E69622F0], v12, &v24);
    }

    FigCFDictionarySetValue();
    if (v24)
    {
      CFRelease(v24);
      v24 = 0;
    }

    FigCFDictionarySetValue();
    SInt64 = FigCFNumberCreateSInt64();
    FigCFDictionarySetValue();
    v17 = FigCFNumberCreateSInt64();
    FigCFDictionarySetValue();
    if (v17)
    {
      CFRelease(v17);
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __FigRoutingManagerContextUtilities_AddActivatedEndpoint_block_invoke;
    v19[3] = &unk_1E7AE7B08;
    v19[4] = &v20;
    v19[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v19[6] = a1;
    v19[7] = Mutable;
    v19[8] = a5;
    v19[9] = a6;
    v19[10] = a2;
    v19[11] = a4;
    v19[12] = SInt64;
    MXDispatchSync("FigRoutingManagerContextUtilities_AddActivatedEndpoint", "FigRoutingManagerContextUtilities.m", 2294, 0, 0, qword_1EB75CF98, v19);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (SInt64)
    {
      CFRelease(SInt64);
    }

    v11 = *(v21 + 6);
    _Block_object_dispose(&v20, 8);
  }

  return v11;
}

void sub_1B184FD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingManagerContextUtilities_RemoveActivatedEndpoint_block_invoke;
    v8[3] = &unk_1E7AE79A8;
    v8[4] = &v9;
    v8[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v8[6] = a1;
    v8[7] = a2;
    v8[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_RemoveActivatedEndpoint", "FigRoutingManagerContextUtilities.m", 2372, 0, 0, qword_1EB75CF98, v8);
    v6 = *(v10 + 6);
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

uint64_t FigRoutingManagerContextUtilities_GetPickingState(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_GetPickingState_block_invoke;
    v6[3] = &unk_1E7AE7A48;
    v6[4] = &v7;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_GetPickingState", "FigRoutingManagerContextUtilities.m", 2428, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

void sub_1B1850270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_SetPickingState(uint64_t a1, int a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a1 && byte_1EB75CFA8)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_SetPickingState_block_invoke;
    v6[3] = &unk_1E7AE7B30;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[4] = &v8;
    v7 = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SetPickingState", "FigRoutingManagerContextUtilities.m", 2499, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
  }

  return v4;
}

void sub_1B18503E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext_block_invoke;
    v6[3] = &unk_1E7AE7A48;
    v6[4] = &v7;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext", "FigRoutingManagerContextUtilities.m", 2528, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

void sub_1B185055C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  result = 4294949876;
  if (a2 && a1)
  {
    if (byte_1EB75CFA8)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID_block_invoke;
      v5[3] = &__block_descriptor_56_e5_v8__0l;
      v5[4] = &routingContextUtilities_getSharedContextUtilities_contextState;
      v5[5] = a1;
      v5[6] = a2;
      MXDispatchSync("FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID", "FigRoutingManagerContextUtilities.m", 2555, 0, 0, qword_1EB75CF98, v5);
      return 0;
    }
  }

  return result;
}

uint64_t FigRoutingManagerContextUtilities_CopyAllAudioContexts(CFMutableArrayRef *a1)
{
  if (!a1)
  {
    return 4294949876;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v3 = &routingContextUtilities_getSharedContextUtilities_contextState;
  v4 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v4 = 504;
  }

  v5 = *v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FigRoutingManagerContextUtilities_CopyAllAudioContexts_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v3 = 0;
  }

  v7[4] = v3;
  v7[5] = Mutable;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyAllAudioContexts", "FigRoutingManagerContextUtilities.m", 2675, 0, 0, v5, v7);
  result = 0;
  *a1 = Mutable;
  return result;
}

uint64_t FigRoutingManagerContextUtilities_CopyPickedEndpointNames(uint64_t a1, CFMutableArrayRef *a2)
{
  v2 = 4294949876;
  if (a1)
  {
    if (a2)
    {
      cf = 0;
      v2 = FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &cf);
      *a2 = routingContextUtilities_copyEndpointNames(cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v2;
}

BOOL FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalAirPlayEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  if (CFArrayGetCount(theArray) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    IsEndpointLocal = FigRoutingManagerIsEndpointLocal(ValueAtIndex);
  }

  else
  {
    IsEndpointLocal = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return IsEndpointLocal;
}

BOOL FigRoutingManagerContextUtilities_IsOnlyRoutedToSelf(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  v2 = CFArrayGetCount(theArray) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex)) && FigRoutingManagerIsEndpointOfType(ValueAtIndex, *MEMORY[0x1E69626D8]) != 0;
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v2;
}

BOOL FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalStereoPair(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  v2 = CFArrayGetCount(theArray) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), FigRoutingManagerIsEndpointLocal(ValueAtIndex)) && FigRoutingManagerIsEndpointOfSubtype(ValueAtIndex, *MEMORY[0x1E6962628]) != 0;
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v2;
}

uint64_t FigRoutingManagerContextUtilities_CopyPickedEndpointForRemoteControl(uint64_t a1, uint64_t a2)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = 4294949876;
  if (a2 && a1 && byte_1EB75CFA8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_CopyPickedEndpointForRemoteControl_block_invoke;
    v6[3] = &unk_1E7AE7A48;
    v6[4] = &v7;
    v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v6[6] = a1;
    v6[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyPickedEndpointForRemoteControl", "FigRoutingManagerContextUtilities.m", 3095, 0, 0, qword_1EB75CF98, v6);
    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

void sub_1B1850BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = 4294949876;
  if (a1 && a3 && a2 && byte_1EB75CFA8)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures_block_invoke;
    v8[3] = &unk_1E7AE79A8;
    v8[4] = &v9;
    v8[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v8[6] = a1;
    v8[7] = a2;
    v8[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures", "FigRoutingManagerContextUtilities.m", 3138, 0, 0, qword_1EB75CF98, v8);
    v6 = *(v10 + 6);
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

uint64_t FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = 4294949876;
  if (a1 && a3 && a2 && byte_1EB75CFA8)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint_block_invoke;
    v8[3] = &unk_1E7AE79A8;
    v8[4] = &v9;
    v8[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
    v8[6] = a1;
    v8[7] = a2;
    v8[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint", "FigRoutingManagerContextUtilities.m", 3216, 0, 0, qword_1EB75CF98, v8);
    v6 = *(v10 + 6);
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294949876;
  if (a1 && a3)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v7 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v7 = 0;
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v8 = 504;
    }

    v9 = *v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex_block_invoke;
    v11[3] = &unk_1E7AE79A8;
    v11[4] = &v12;
    v11[5] = v7;
    v11[6] = a1;
    v11[7] = a2;
    v11[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex", "FigRoutingManagerContextUtilities.m", 3292, 0, 0, v9, v11);
    v3 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  return v3;
}

uint64_t FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(uint64_t a1, uint64_t a2)
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
  v9[2] = __FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex", "FigRoutingManagerContextUtilities.m", 3325, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(uint64_t a1, uint64_t a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v5 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v5 = 0;
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v6 = 504;
    }

    v7 = *v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo", "FigRoutingManagerContextUtilities.m", 3356, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B1851748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(uint64_t a1, void *a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    theArray = 0;
    v2 = FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(a1, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, Count - 1)) != 0)
      {
        v6 = CFRetain(ValueAtIndex);
      }

      else
      {
        v6 = 0;
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6;
  }

  return v2;
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(uint64_t a1, uint64_t a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v5 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v5 = 0;
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v6 = 504;
    }

    v7 = *v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints", "FigRoutingManagerContextUtilities.m", 3481, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B1851978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpointInfo(uint64_t a1, void *a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    theArray = 0;
    v2 = FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsInfo(a1, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, Count - 1)) != 0)
      {
        v6 = CFRetain(ValueAtIndex);
      }

      else
      {
        v6 = 0;
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6;
  }

  return v2;
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsInfo(uint64_t a1, uint64_t a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v5 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v5 = 0;
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v6 = 504;
    }

    v7 = *v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsInfo_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsInfo", "FigRoutingManagerContextUtilities.m", 3506, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B1851B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsForContextType(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&cf);
  }

  else
  {
    if (a1 != 1)
    {
      return 0;
    }

    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  }

  v3 = FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294949876;
  if (a1 && a3)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    v7 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v8 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v8 = 504;
    }

    v9 = *v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints_block_invoke;
    v11[3] = &unk_1E7AE79A8;
    if (!byte_1EB75CFA8)
    {
      v7 = 0;
    }

    v11[4] = &v12;
    v11[5] = v7;
    v11[6] = a1;
    v11[7] = a2;
    v11[8] = a3;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints", "FigRoutingManagerContextUtilities.m", 3533, 0, 0, v9, v11);
    v3 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  return v3;
}

uint64_t FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(uint64_t a1, uint64_t a2)
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
    v9[2] = __FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    if (!byte_1EB75CFA8)
    {
      v5 = 0;
    }

    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo", "FigRoutingManagerContextUtilities.m", 3613, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B185206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyActivatedEndpointsForContextType(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954296;
  }

  if (a1 == 2)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&cf);
  }

  else
  {
    if (a1 != 1)
    {
      return 0;
    }

    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  }

  v3 = FigRoutingManagerContextUtilities_CopyActivatedEndpoints(cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294954296;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = &routingContextUtilities_getSharedContextUtilities_contextState;
  v7 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v7 = 504;
  }

  v8 = *v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint_block_invoke;
  v10[3] = &__block_descriptor_64_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v6 = 0;
  }

  v10[4] = v6;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint", "FigRoutingManagerContextUtilities.m", 3672, 0, 0, v8, v10);
  return 0;
}

uint64_t FigRoutingManagerContextUtilities_RemoveContext(const void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294949876;
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v4 = 0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  LOBYTE(v22) = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  *type = 0;
  v12 = type;
  v13 = 0x2020000000;
  v14 = 0;
  if (byte_1EB75CFA8)
  {
    v5 = &qword_1EB75CF98;
  }

  else
  {
    v5 = 504;
  }

  v6 = *v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingManagerContextUtilities_RemoveContext_block_invoke;
  v10[3] = &unk_1E7AE7B80;
  v10[8] = v4;
  v10[9] = a1;
  v10[4] = &v15;
  v10[5] = &v23;
  v10[6] = type;
  v10[7] = &v19;
  MXDispatchSync("FigRoutingManagerContextUtilities_RemoveContext", "FigRoutingManagerContextUtilities.m", 3847, 0, 0, v6, v10);
  if (*(v20 + 24))
  {
    FigVolumeControllerSaveRoutingContextState(a1);
  }

  if (v16[3])
  {
    v7 = *v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_RemoveContext_block_invoke_2;
    v9[3] = &unk_1E7AE7A20;
    v9[4] = &v15;
    v9[5] = type;
    v9[6] = v4;
    v9[7] = a1;
    MXDispatchSync("FigRoutingManagerContextUtilities_RemoveContext", "FigRoutingManagerContextUtilities.m", 3936, 0, 0, v7, v9);
  }

  v3 = *(v24 + 6);
  _Block_object_dispose(type, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v3;
}

uint64_t FigRoutingManagerContextUtilities_CopyHijackID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopyHijackID_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = v2;
    v6[7] = v1;
    v6[4] = v11;
    v6[5] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyHijackID", "FigRoutingManagerContextUtilities.m", 4020, 0, 0, v4, v6);
    v1 = v8[3];
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v11, 8);
  }

  return v1;
}

void sub_1B1852E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_SetAggregateEndpoint(uint64_t a1, uint64_t a2)
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
  v9[2] = __FigRoutingManagerContextUtilities_SetAggregateEndpoint_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_SetAggregateEndpoint", "FigRoutingManagerContextUtilities.m", 4048, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(uint64_t a1, uint64_t a2)
{
  v2 = 4294949876;
  if (a1 && a2)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v5 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v5 = 0;
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v6 = 504;
    }

    v7 = *v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate", "FigRoutingManagerContextUtilities.m", 4076, 0, 0, v7, v9);
    v2 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B18532CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(uint64_t a1)
{
  if (!a1)
  {
    return 4294949876;
  }

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
  v6[2] = __FigRoutingManagerContextUtilities_CopyNonControlPickedContexts_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v2 = 0;
  }

  v6[4] = v2;
  v6[5] = a1;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyNonControlPickedContexts", "FigRoutingManagerContextUtilities.m", 4189, 0, 0, v4, v6);
  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopySidePlayContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySidePlayContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySidePlayContextUUID", "FigRoutingManagerContextUtilities.m", 4614, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID", "FigRoutingManagerContextUtilities.m", 4629, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopySystemVideoContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemVideoContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemVideoContextUUID", "FigRoutingManagerContextUtilities.m", 4655, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopyAudioContextUUIDs(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopyAudioContextUUIDs_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyAudioContextUUIDs", "FigRoutingManagerContextUtilities.m", 4681, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopyPerAppSecondDisplayContextUUIDs(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopyPerAppSecondDisplayContextUUIDs_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyPerAppSecondDisplayContextUUIDs", "FigRoutingManagerContextUtilities.m", 4694, 0, 0, v4, v6);
  }

  return 0;
}

uint64_t FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs(uint64_t a1, uint64_t a2)
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
  v9[2] = __FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs", "FigRoutingManagerContextUtilities.m", 4767, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_IsContextSidePlay(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_IsContextSidePlay_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = v2;
    v6[7] = v1;
    v6[4] = v11;
    v6[5] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_IsContextSidePlay", "FigRoutingManagerContextUtilities.m", 4948, 0, 0, v4, v6);
    v1 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v11, 8);
  }

  return v1;
}

void sub_1B1853ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerContextUtilities_IsContextSystemAudio(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_IsContextSystemAudio_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = v2;
    v6[7] = v1;
    v6[4] = v11;
    v6[5] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_IsContextSystemAudio", "FigRoutingManagerContextUtilities.m", 5010, 0, 0, v4, v6);
    v1 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v11, 8);
  }

  return v1;
}

void sub_1B1854074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints(uint64_t a1, CFArrayRef theArray)
{
  v2 = -1;
  if (a1 && theArray && CFArrayGetCount(theArray))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = -1;
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
    v9[2] = __FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    if (!byte_1EB75CFA8)
    {
      v5 = 0;
    }

    v9[4] = &v10;
    v9[5] = v5;
    v9[6] = a1;
    v9[7] = theArray;
    MXDispatchSync("FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints", "FigRoutingManagerContextUtilities.m", 5376, 0, 0, v7, v9);
    v2 = v11[3];
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

void sub_1B1854224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float FigRoutingManagerContextUtilities_GetMainVolumeScaleFactorForEndpointID(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1065353216;
  v2 = 1.0;
  if (a1 && a2)
  {
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
    v9[2] = __FigRoutingManagerContextUtilities_GetMainVolumeScaleFactorForEndpointID_block_invoke;
    v9[3] = &unk_1E7AE7A48;
    if (!byte_1EB75CFA8)
    {
      v5 = 0;
    }

    v9[6] = a1;
    v9[7] = a2;
    v9[4] = &v10;
    v9[5] = v5;
    MXDispatchSync("FigRoutingManagerContextUtilities_GetMainVolumeScaleFactorForEndpointID", "FigRoutingManagerContextUtilities.m", 5527, 0, 0, v7, v9);
    v2 = v11[6];
  }

  _Block_object_dispose(&v10, 8);
  return v2;
}

void sub_1B1854400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FigRoutingManagerContextUtilities_SetMainVolumeScaleFactorForEndpointID(uint64_t a1, uint64_t a2, float a3)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v6 = &routingContextUtilities_getSharedContextUtilities_contextState;
  v7 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v7 = 504;
  }

  v8 = *v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerContextUtilities_SetMainVolumeScaleFactorForEndpointID_block_invoke;
  v9[3] = &__block_descriptor_60_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v6 = 0;
  }

  v9[4] = v6;
  v9[5] = a1;
  v10 = a3;
  v9[6] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_SetMainVolumeScaleFactorForEndpointID", "FigRoutingManagerContextUtilities.m", 5555, 0, 0, v8, v9);
}

void FigRoutingManagerContextUtilities_SetScreenEndpoint(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v5 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v5 = 504;
    }

    v6 = *v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigRoutingManagerContextUtilities_SetScreenEndpoint_block_invoke;
    v7[3] = &__block_descriptor_56_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v4 = 0;
    }

    v7[4] = v4;
    v7[5] = a1;
    v7[6] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SetScreenEndpoint", "FigRoutingManagerContextUtilities.m", 5639, 0, 0, v6, v7);
  }
}

uint64_t FigRoutingManagerContextUtilities_CopyScreenEndpointUUID(uint64_t a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_CopyScreenEndpointUUID_block_invoke;
    v6[3] = &unk_1E7AE7140;
    v6[5] = v2;
    v6[6] = v1;
    v6[4] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyScreenEndpointUUID", "FigRoutingManagerContextUtilities.m", 5673, 0, 0, v4, v6);
    v1 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  return v1;
}

void FigRoutingManagerContextUtilities_SetAudioEndpoint(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v5 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v5 = 504;
    }

    v6 = *v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigRoutingManagerContextUtilities_SetAudioEndpoint_block_invoke;
    v7[3] = &__block_descriptor_56_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v4 = 0;
    }

    v7[4] = v4;
    v7[5] = a1;
    v7[6] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_SetAudioEndpoint", "FigRoutingManagerContextUtilities.m", 5703, 0, 0, v6, v7);
  }
}

uint64_t FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v1 = 1;
  v12 = 1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v3 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v3 = 0;
    }

    v4 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v4 = 504;
    }

    v5 = *v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver_block_invoke;
    v8[3] = &unk_1E7AE7140;
    v8[5] = v3;
    v8[6] = a1;
    v8[4] = &v9;
    MXDispatchSync("FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver", "FigRoutingManagerContextUtilities.m", 5762, 0, 0, v5, v8);
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v1 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v1;
}

void FigRoutingManagerContextUtilities_StopDiscoveryTimer(uint64_t a1)
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
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigRoutingManagerContextUtilities_StopDiscoveryTimer_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v2 = 0;
  }

  v5[4] = v2;
  v5[5] = a1;
  MXDispatchSync("FigRoutingManagerContextUtilities_StopDiscoveryTimer", "FigRoutingManagerContextUtilities.m", 5818, 0, 0, v4, v5);
}

void FigRoutingManagerContextUtilities_StopMirroringTimer(uint64_t a1)
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
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __FigRoutingManagerContextUtilities_StopMirroringTimer_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v5[4] = v2;
    v5[5] = a1;
    MXDispatchSync("FigRoutingManagerContextUtilities_StopMirroringTimer", "FigRoutingManagerContextUtilities.m", 5940, 0, 0, v4, v5);
  }
}

void FigRoutingManagerContextUtilities_CacheSupportedOutputChannelLayouts(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v5 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v5 = 504;
    }

    v6 = *v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigRoutingManagerContextUtilities_CacheSupportedOutputChannelLayouts_block_invoke;
    v7[3] = &__block_descriptor_56_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v4 = 0;
    }

    v7[4] = v4;
    v7[5] = a1;
    v7[6] = a2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CacheSupportedOutputChannelLayouts", "FigRoutingManagerContextUtilities.m", 5977, 0, 0, v6, v7);
  }
}

uint64_t FigRoutingManagerContextUtilities_CopySupportedOutputChannelLayouts(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigRoutingManagerContextUtilities_CopySupportedOutputChannelLayouts_block_invoke;
    v7[3] = &unk_1E7AE7140;
    v7[5] = v2;
    v7[6] = a1;
    v7[4] = &v8;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySupportedOutputChannelLayouts", "FigRoutingManagerContextUtilities.m", 6004, 0, 0, v4, v7);
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

id FigRoutingContextUtilities_CreateStateInfoStringForContext(uint64_t a1)
{
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v2 = byte_1EB75CFA8;
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = v3;
  v5 = &qword_1EB75CF98;
  if (!v2)
  {
    v5 = 504;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextUtilities_CreateStateInfoStringForContext_block_invoke;
  v9[3] = &unk_1E7AE79D0;
  if (v2)
  {
    v7 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v7 = 0;
  }

  v9[5] = v7;
  v9[6] = a1;
  v9[4] = v3;
  MXDispatchSync("FigRoutingContextUtilities_CreateStateInfoStringForContext", "FigRoutingManagerContextUtilities.m", 6261, 0, 0, v6, v9);
  return v4;
}

void __routingContextUtilities_getSharedContextUtilities_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1EB75CF98 = dispatch_queue_create("com.apple.mediaexperience.RoutingContextUtilitiesSerializationQueue", v0);
  if (qword_1EB75CF98)
  {
    v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    qword_1EB75CFA0 = dispatch_queue_create("com.apple.mediaexperience.RoutingContextUtilitiesNotificationQueue", v1);
    if (qword_1EB75CFA0)
    {
      CMSMDeviceState_AddQueueToWatchDogMonitoring(qword_1EB75CF98);
      CMSMDeviceState_AddQueueToWatchDogMonitoring(qword_1EB75CFA0);
      v2 = *MEMORY[0x1E695E480];
      qword_1EB75CF80 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (qword_1EB75CF80)
      {
        qword_1EB75CFF8 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
        if (qword_1EB75CFF8)
        {
          qword_1EB75D000 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
          if (qword_1EB75D000)
          {
            qword_1EB75D008 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
            if (qword_1EB75D008)
            {
              v3 = 0;
              v4 = MEMORY[0x1E695E9D8];
              v5 = MEMORY[0x1E695E9E8];
              v6 = &qword_1EB75CDB0;
              v7 = MEMORY[0x1E695E9C0];
              while (1)
              {
                *(v6 - 4) = v3;
                Mutable = CFDictionaryCreateMutable(v2, 0, v4, v5);
                *(v6 - 1) = Mutable;
                if (!Mutable)
                {
                  break;
                }

                v9 = CFArrayCreateMutable(v2, 0, v7);
                v6[1] = v9;
                if (!v9)
                {
                  break;
                }

                *v6 = 0;
                v6 += 4;
                if (++v3 == 15)
                {
                  byte_1EB75CFA8 = 1;
                  return;
                }
              }
            }
          }
        }
      }
    }
  }

  __routingContextUtilities_getSharedContextUtilities_block_invoke_cold_1();
}

void _routingContextUtilities_pruneLeaders(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        if (ValueAtIndex)
        {
          if (!_routingContextUtilities_getContextFromWeakRef(ValueAtIndex))
          {
            CFArrayRemoveValueAtIndex(a1, v4--);
            --v3;
          }

          ++v4;
        }

        else
        {
          CFArrayRemoveValueAtIndex(a1, v4);
          --v3;
        }
      }

      while (v4 < v3);
    }
  }
}

void __routingContextUtilities_copyIndividualEndpointsFromAggregate_block_invoke(void *a1)
{
  theArray = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E480];
    v3(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    if (theArray)
    {
      MutableCopy = CFArrayCreateMutableCopy(v4, 0, theArray);
      if (theArray)
      {
        if (FigRoutingManagerIsEndpointOfSubtype(a1[4], *MEMORY[0x1E6962600]))
        {
          v6 = FigRoutingManagerCopyLocalAirPlayEndpoint();
          if (v6)
          {
            v7 = v6;
            if (!FigRoutingManagerIsClusterLocalEndpoint(v6))
            {
              v9 = theArray;
              v19.length = CFArrayGetCount(theArray);
              v19.location = 0;
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v9, v19, v7);
              if (FirstIndexOfValue != -1)
              {
                v11 = FirstIndexOfValue;
                v12 = a1[5];
                v13 = *(v12 + 528);
                if (v13)
                {
                  v14 = CFRetain(v13);
                  v12 = a1[5];
                }

                else
                {
                  v14 = 0;
                }

                v17 = 0;
                ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(v12 + 480), v14);
                _routingContextUtilities_copyPickedEndpointAtIndex(ContextForUUIDFromDict, 0, &v17);
                v16 = v17;
                if (v17)
                {
                  if (FigRoutingManagerIsEndpointWHAGroupable(v17))
                  {
                    CFArraySetValueAtIndex(MutableCopy, v11, v16);
                  }

                  CFRelease(v16);
                }

                if (v14)
                {
                  CFRelease(v14);
                }
              }
            }

            CFRelease(v7);
          }
        }

        v8 = a1[6];
        v20.length = CFArrayGetCount(theArray);
        v20.location = 0;
        CFArrayAppendArray(v8, MutableCopy, v20);
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }
  }
}

uint64_t FigRouteDiscovererStartServer()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v1 = FigXPCServerStart();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t PowerManager_Initialize()
{
  v6 = *MEMORY[0x1E69E9840];
  IsCPMSSupportedForClient = powerManager_IsCPMSSupportedForClient(5);
  result = powerManager_IsCPMSSupportedForClient(6);
  if (IsCPMSSupportedForClient | result)
  {
    v2 = result;
    sCMSMPowerManager_0 = 1;
    if (IsCPMSSupportedForClient)
    {
      result = PowerManager_InitializeCPMSForAudio();
      IsCPMSSupportedForClient = result;
    }

    if (v2)
    {
      result = PowerManager_InitializeCPMSForHaptics();
      v3 = result;
    }

    else
    {
      v3 = 0;
    }

    if (IsCPMSSupportedForClient)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t powerManager_IsCPMSSupportedForClient(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E6991F30] isCPMSSupportedForClient:a1])
  {
    if (a1 == 5)
    {
      v2 = 1;
      PowerManager_SetCPMSSupportedForAudio(1);
      goto LABEL_10;
    }

    if (!MX_FeatureFlags_IsHapticEngineCPMSEnabled())
    {
      v2 = 1;
      PowerManager_SetCPMSSupportedForHaptics(1);
      goto LABEL_10;
    }

    PowerManager_SetCPMSSupportedForHaptics(0);
    if (!dword_1EB75DE40)
    {
      return 0;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = 0;
LABEL_10:
  if (dword_1EB75DE40)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

uint64_t FigRoutingManager_GetDataTransmissionQueue()
{
  if (FigRoutingManager_GetDataTransmissionQueue_once != -1)
  {
    FigRoutingManager_GetDataTransmissionQueue_cold_1();
  }

  return FigRoutingManager_GetDataTransmissionQueue_dataTransmissionQueue;
}

uint64_t __FigRoutingManagerGetSharedManager_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  v0 = fig_note_initialize_category_with_default_work();
  if (dword_1EB75DF20 < 0x100)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v0 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    dword_1EB75DF20 = 0;
  }

  v3 = MXGetSerialQueue(v0, v1);
  qword_1ED6D2E28 = v3;
  if (v3)
  {
    FigRoutingManagerContextUtilities_Create(routingManager_pickingTimeoutCallback, v3);
    unk_1ED6D2E58 = FigSimpleMutexCreate();
    byte_1ED6D2E49 = 0;
    unk_1ED6D2E68 = 0;
    unk_1ED6D2E60 = 0;
  }

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1ED6D2E30 = dispatch_queue_create("com.apple.coremedia.routingManager.notificationQueue", v4);
  return FigRoutingManagerCreateEndpointManagers();
}

void routingManager_pickingTimeoutCallback(CFTypeRef cf, CFTypeRef a2)
{
  if (_MergedGlobals != -1)
  {
    FigRoutingManagerGetSharedQueue_cold_1();
  }

  v4 = qword_1ED6D2E28;
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    v5 = &qword_1ED6D2E28;
  }

  else
  {
    v5 = 8;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerHandleActivationTimeoutCallback_block_invoke;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  v9[4] = a2;
  v9[5] = cf;
  MXDispatchAsync("FigRoutingManagerHandleActivationTimeoutCallback", "FigRoutingManager.m", 2481, 0, 0, v6, v9);
  v7 = *v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingManagerHandleActivationTimeoutCallback_block_invoke_2;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  v8[4] = cf;
  MXDispatchAsync("FigRoutingManagerHandleActivationTimeoutCallback", "FigRoutingManager.m", 2515, 0, 0, v7, v8);
}

uint64_t FigRoutingManagerCreateEndpointManagers()
{
  v29 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsExplicitInitializationForFigEndpointManagersEnabled();
  if (!result)
  {
    return result;
  }

  if (AirPlaySenderLibraryCore(0))
  {
    if (FigRouteDiscoveryManagerShouldRegisterEndpointManager(*MEMORY[0x1E69618D0]))
    {
      cf = 0;
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2020000000;
      v1 = getAPGetEndpointManagerSymbolLoc_ptr;
      v28 = getAPGetEndpointManagerSymbolLoc_ptr;
      if (!getAPGetEndpointManagerSymbolLoc_ptr)
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __getAPGetEndpointManagerSymbolLoc_block_invoke;
        v25 = &unk_1E7AE73A0;
        v26 = v27;
        v2 = AirPlaySenderLibrary();
        *(v27[1] + 24) = dlsym(v2, "APGetEndpointManager");
        getAPGetEndpointManagerSymbolLoc_ptr = *(v26[1] + 24);
        v1 = *(v27[1] + 24);
      }

      _Block_object_dispose(v27, 8);
      if (!v1)
      {
        __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
        goto LABEL_40;
      }

      if (!v1(&cf))
      {
        FigRouteDiscoveryManagerRegisterEndpointManager(cf, v3);
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    if (FigRouteDiscoveryManagerShouldRegisterEndpointManager(*MEMORY[0x1E69618E0]))
    {
      cf = 0;
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2020000000;
      v5 = getAPGetEndpointManagerCarPlaySymbolLoc_ptr;
      v28 = getAPGetEndpointManagerCarPlaySymbolLoc_ptr;
      if (!getAPGetEndpointManagerCarPlaySymbolLoc_ptr)
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __getAPGetEndpointManagerCarPlaySymbolLoc_block_invoke;
        v25 = &unk_1E7AE73A0;
        v26 = v27;
        v6 = AirPlaySenderLibrary();
        v7 = dlsym(v6, "APGetEndpointManagerCarPlay");
        *(v26[1] + 24) = v7;
        getAPGetEndpointManagerCarPlaySymbolLoc_ptr = *(v26[1] + 24);
        v5 = *(v27[1] + 24);
      }

      _Block_object_dispose(v27, 8);
      if (!v5)
      {
        goto LABEL_39;
      }

      if (!v5(&cf))
      {
        FigRouteDiscoveryManagerRegisterEndpointManager(cf, v8);
        if (dword_1EB75DF20)
        {
          v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    if (!FigRouteDiscoveryManagerShouldRegisterEndpointManager(*MEMORY[0x1E69618F0]))
    {
      goto LABEL_24;
    }

    cf = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v10 = getSPGetEndpointManagerSymbolLoc_ptr;
    v28 = getSPGetEndpointManagerSymbolLoc_ptr;
    if (!getSPGetEndpointManagerSymbolLoc_ptr)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __getSPGetEndpointManagerSymbolLoc_block_invoke;
      v25 = &unk_1E7AE73A0;
      v26 = v27;
      v11 = AirPlaySenderLibrary();
      v12 = dlsym(v11, "SPGetEndpointManager");
      *(v26[1] + 24) = v12;
      getSPGetEndpointManagerSymbolLoc_ptr = *(v26[1] + 24);
      v10 = *(v27[1] + 24);
    }

    _Block_object_dispose(v27, 8);
    if (v10)
    {
      if (!v10(&cf))
      {
        FigRouteDiscoveryManagerRegisterEndpointManager(cf, v13);
        if (dword_1EB75DF20)
        {
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      goto LABEL_24;
    }

LABEL_39:
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
LABEL_40:
    __break(1u);
  }

LABEL_24:
  result = MediaToolboxLibraryCore(0);
  if (!result)
  {
    return result;
  }

  result = FigRouteDiscoveryManagerShouldRegisterEndpointManager(*MEMORY[0x1E69618E8]);
  if (!result)
  {
    return result;
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v15 = getFigEndpointManagerForNeroGetSharedSymbolLoc_ptr;
  v28 = getFigEndpointManagerForNeroGetSharedSymbolLoc_ptr;
  if (!getFigEndpointManagerForNeroGetSharedSymbolLoc_ptr)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __getFigEndpointManagerForNeroGetSharedSymbolLoc_block_invoke;
    v25 = &unk_1E7AE73A0;
    v26 = v27;
    __getFigEndpointManagerForNeroGetSharedSymbolLoc_block_invoke(&v22);
    v15 = *(v27[1] + 24);
  }

  _Block_object_dispose(v27, 8);
  if (!v15)
  {
    goto LABEL_39;
  }

  result = v15();
  v17 = result;
  if (result)
  {
    result = FigRouteDiscoveryManagerRegisterEndpointManager(result, v16);
    if (dword_1EB75DF20)
    {
      LODWORD(cf) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = cf;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LODWORD(v27[0]) = 136315394;
        *(v27 + 4) = "FigRoutingManagerCreateEndpointManagers";
        WORD2(v27[1]) = 2048;
        *(&v27[1] + 6) = v17;
        _os_log_send_and_compose_impl(v20, 0, &v22, 128, &dword_1B17A2000, v18, 0, "-FigRoutingManager- %s: MediaExperience created NeroEndpointManager (%p)", v27, 22);
      }

      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void FigRoutingMangerCreateBluetoothEndpointManager()
{
  v12 = *MEMORY[0x1E69E9840];
  cf = 0;
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.routingManager.bluetooth", v0);
  routingManager_createBluetoothEndpointManager_queue = v1;
  if (v1)
  {
    v2 = v1;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v3 = getBluetoothEndpointManagerCreateSymbolLoc_ptr;
    v11 = getBluetoothEndpointManagerCreateSymbolLoc_ptr;
    if (!getBluetoothEndpointManagerCreateSymbolLoc_ptr)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getBluetoothEndpointManagerCreateSymbolLoc_block_invoke;
      v7[3] = &unk_1E7AE73A0;
      v7[4] = &v8;
      __getBluetoothEndpointManagerCreateSymbolLoc_block_invoke(v7);
      v3 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v3)
    {
      __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
      __break(1u);
    }

    if (!(v3)(*MEMORY[0x1E695E480], v2, 0, &cf))
    {
      FigRouteDiscoveryManagerRegisterEndpointManager(cf, v4);
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t MXRegisterEndpointManager(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  FigRouteDiscoveryManagerInit();
  FigRouteDiscoveryManagerRegisterEndpointManager(a1, v3);
  FigRouteDiscoveryManagerStart();
  FigRoutingManagerInit();
  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t FigRoutingManagerCreateAndActivateAggregateEndpointForContext(const void *a1)
{
  cf = 0;
  v2 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:", *MEMORY[0x1E69618D0]];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 9)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  AggregateEndpoint = MXAggregateEndpointCreateAggregateEndpoint(v3, a1, v5, &cf);
  if (!AggregateEndpoint)
  {
    if (cf)
    {
      FigRoutingManagerContextUtilities_SetAggregateEndpoint(a1, cf);
      v2 = cf;
    }

    else
    {
      v2 = 0;
    }

    if (ContextType != 9)
    {
      v7 = FigRoutingManager_iOSActivateEndpoint(v2, a1, 0, 0);
      goto LABEL_11;
    }

LABEL_9:
    v7 = MXSystemRemotePool_ActivateAggregateEndpoint(v2, a1);
LABEL_11:
    v8 = v7;
    goto LABEL_12;
  }

  v8 = AggregateEndpoint;
  FigRoutingManagerContextUtilities_SetAggregateEndpoint(a1, 0);
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigRoutingManagerRegisterAndCopyContext(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFStringRef *a4)
{
  v5 = a3;
  if (a3 - 1) < 0xE && ((0x3F07u >> (a3 - 1)))
  {
    return 4294955276;
  }

  if (_MergedGlobals != -1)
  {
    FigRoutingManagerGetSharedQueue_cold_1();
  }

  if (qword_1ED6D2E28)
  {
    v9 = &unk_1ED6D2E20;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (!v11)
  {
    return 4294955275;
  }

  v12 = v11;
  v13 = CFUUIDCreateString(v10, v11);
  CFRelease(v12);
  if (!v13)
  {
    return 4294955275;
  }

  v8 = routingManager_registerContextInternal(v9, v13, a1, v5, a2);
  if (!v8)
  {
    if (a4)
    {
      *a4 = v13;
      FigRoutingContextUtilities_LogCurrentState();
      return 0;
    }

    FigRoutingContextUtilities_LogCurrentState();
  }

  CFRelease(v13);
  return v8;
}

void __FigRoutingManagerUnregisterContext_block_invoke(uint64_t a1)
{
  routingManager_notifyRoutingContextChanged(*(a1 + 32), @"RoutingContextRemoved");
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void routingManager_notifyRoutingContextChanged(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void FigRoutingManagerCopyCurrentGroupUUID(uint64_t a1, void *a2)
{
  if (a2)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
    if (FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626B0]))
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v4)
      {
        v4(CMBaseObject, *MEMORY[0x1E69620C8], *MEMORY[0x1E695E480], a2);
      }
    }

    else
    {
      *a2 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t FigRoutingManagerIsConfigurationWHASilentPrimary(uint64_t a1)
{
  if (!FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(a1))
  {
    return 0;
  }

  theArray = 0;
  FigRoutingManagerCopyPickedEndpointsForRoutingContext(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v3 = Count;
  if (Count)
  {
    if (Count < 1)
    {
LABEL_9:
      v3 = 1;
    }

    else
    {
      v4 = 0;
      v5 = *MEMORY[0x1E69626D8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (FigRoutingManagerIsEndpointLocal(ValueAtIndex) || FigRoutingManagerIsEndpointOfType(ValueAtIndex, v5))
        {
          break;
        }

        if (v3 == ++v4)
        {
          goto LABEL_9;
        }
      }

      v3 = 0;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v3;
}

uint64_t routingManager_createSystemContext(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = 0;
  cf = 0;
  if (a2 <= 9)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v7 = @"577E1BCA-2D9B-41C2-A8F8-C515CE8072D4";
        v8 = FigRoutingContextCreateSystemMusicContextInternal(@"577E1BCA-2D9B-41C2-A8F8-C515CE8072D4", &cf);
      }

      else
      {
        v7 = 0;
        if (a2 != 9)
        {
          goto LABEL_23;
        }

        v7 = @"0099C187-7408-4602-A91A-AD16480F63A6";
        v8 = FigRoutingContextCreateSystemRemotePoolContextInternal(@"0099C187-7408-4602-A91A-AD16480F63A6", &cf);
      }
    }

    else if (a2 == 1)
    {
      v7 = @"9FF3A19E-9347-44BE-9999-3527693EBD42";
      v8 = FigRoutingContextCreateSystemAudioContextInternal(@"9FF3A19E-9347-44BE-9999-3527693EBD42", &cf);
    }

    else
    {
      v7 = 0;
      if (a2 != 2)
      {
        goto LABEL_23;
      }

      v7 = @"AE0596F4-FE8D-41DC-B2AC-CB0C10793AFB";
      v8 = FigRoutingContextCreateSystemMirroringContextInternal(@"AE0596F4-FE8D-41DC-B2AC-CB0C10793AFB", &cf);
    }
  }

  else if (a2 <= 11)
  {
    if (a2 == 10)
    {
      v7 = @"EE613C90-4977-407B-830E-615886FFD46B";
      v8 = FigRoutingContextCreateSystemVideoDisplayMenu(@"EE613C90-4977-407B-830E-615886FFD46B", &cf);
    }

    else
    {
      v7 = @"3C4D0FD7-378E-43FA-9D62-8F7873D548C7";
      v8 = FigRoutingContextCreateSystemVideoContextInternal(@"3C4D0FD7-378E-43FA-9D62-8F7873D548C7", &cf);
    }
  }

  else if (a2 == 12)
  {
    v7 = @"1631DE8A-D3C9-463D-B86F-95DB6C143A72";
    v8 = FigRoutingContextCreateSidePlayContextInternal(@"1631DE8A-D3C9-463D-B86F-95DB6C143A72", &cf);
  }

  else if (a2 == 13)
  {
    v7 = @"7D6934D3-F9A8-4C49-9F66-83AB896A0C99";
    v8 = FigRoutingContextCreateSystemInputContextInternal(@"7D6934D3-F9A8-4C49-9F66-83AB896A0C99", &cf);
  }

  else
  {
    v7 = 0;
    if (a2 != 14)
    {
      goto LABEL_23;
    }

    v7 = @"1E27F250-0404-42B1-BF7E-AE233EA5DBC8";
    v8 = FigRoutingContextCreateSystemRemoteDisplayInternal(@"1E27F250-0404-42B1-BF7E-AE233EA5DBC8", &cf);
  }

  v9 = v8;
  if (v8)
  {
    goto LABEL_32;
  }

  v6 = cf;
LABEL_23:
  v10 = routingManager_registerContextInternal(a1, v7, v6, v4, 0);
  if (!v10)
  {
    if (!a3)
    {
      return 0;
    }

    if (v7)
    {
      v11 = CFRetain(v7);
    }

    else
    {
      v11 = 0;
    }

    v9 = 0;
    *a3 = v11;
    return v9;
  }

  v9 = v10;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void __FigRoutingManagerInit_block_invoke()
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

  v1 = *v0;

  MXDispatchAsync("FigRoutingManagerInit_block_invoke", "FigRoutingManager.m", 1843, 0, 0, v1, &__block_literal_global_24);
}

uint64_t FigRoutingManagerDoesDeviceAlwaysHaveAggregateForLocalPlayback()
{
  if (!CMSMDeviceState_ItsAHomePod())
  {
    CMSMDeviceState_ItsAnAppleTV();
  }

  return FigGetCFPreferenceNumberWithDefault();
}

CFTypeRef FigRoutingManagerCopyWHAGroupableVAEndpoint()
{
  cf = 0;
  [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:", *MEMORY[0x1E69618F8]];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v1 && !v1(CMBaseObject, *MEMORY[0x1E69618A8], *MEMORY[0x1E695E480], &cf))
  {
    v4 = 0;
    while (1)
    {
      Count = cf;
      if (cf)
      {
        Count = CFArrayGetCount(cf);
      }

      if (v4 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(cf, v4++);
      if (FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex))
      {
        if (!ValueAtIndex)
        {
          break;
        }

        v2 = CFRetain(ValueAtIndex);
        goto LABEL_4;
      }
    }
  }

  v2 = 0;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

CFTypeRef FigRoutingManagerCopyLocalAirPlayEndpoint()
{
  if (![+[MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:"]
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v1 && !v1(CMBaseObject, *MEMORY[0x1E69618A8], *MEMORY[0x1E695E480], &cf))
  {
    v4 = 0;
    while (1)
    {
      Count = cf;
      if (cf)
      {
        Count = CFArrayGetCount(cf);
      }

      if (v4 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(cf, v4++);
      if (FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(ValueAtIndex))
      {
        if (!ValueAtIndex)
        {
          break;
        }

        v2 = CFRetain(ValueAtIndex);
        goto LABEL_5;
      }
    }
  }

  v2 = 0;
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

CFTypeRef FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint(uint64_t a1)
{
  theArray = 0;
  [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:", *MEMORY[0x1E69618D8]];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  if (v2(CMBaseObject, *MEMORY[0x1E69618A8], *MEMORY[0x1E695E480], &theArray))
  {
    return 0;
  }

  theString = 0;
  v6 = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = *MEMORY[0x1E69620F8];
    v7(v6, *MEMORY[0x1E69620F8], v3, &theString);
    if (theString)
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
          goto LABEL_19;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        stringToFind = 0;
        v12 = FigEndpointGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v13)
        {
          goto LABEL_15;
        }

        v14 = v13(v12, v8, v3, &stringToFind);
        v15 = stringToFind;
        if (stringToFind)
        {
          if (!v14)
          {
            break;
          }
        }

LABEL_16:
        if (v15)
        {
          CFRelease(v15);
        }
      }

      if (CFStringFind(theString, stringToFind, 0).location != -1)
      {
        if (ValueAtIndex)
        {
          v4 = CFRetain(ValueAtIndex);
        }

        else
        {
          v4 = 0;
        }

        if (stringToFind)
        {
          CFRelease(stringToFind);
        }

        goto LABEL_20;
      }

LABEL_15:
      v15 = stringToFind;
      goto LABEL_16;
    }
  }

LABEL_19:
  v4 = 0;
LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v4;
}

CFTypeRef FigRoutingManagerCopySelectedBufferedEndpointForTesting(uint64_t a1, uint64_t a2)
{
  v13[24] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13[0] = 0;
  cf = 0;
  if (a2 && FigRoutingManagerContextUtilities_IsContextSidePlay(a1))
  {
    v4 = routingMangager_copySelectedBufferedEndpointForSidePlay(a2);
    v5 = 0;
    v13[0] = v4;
  }

  else
  {
    FigRoutingManagerCopyPickedEndpointForRoutingContext(a1, &cf);
    v4 = 0;
    v5 = cf;
  }

  if (FigRoutingManagerIsEndpointOfType(v5, *MEMORY[0x1E69626A8]) || FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626B0]))
  {
    v6 = cf;
    v13[0] = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else if (FigRoutingManagerContextUtilities_GetContextType(a1) - 3 > 2)
  {
    v6 = v4;
  }

  else
  {
    if (v4)
    {
      CFRelease(v4);
      v13[0] = 0;
    }

    FigRoutingManagerContextUtilities_CopyFigEndpointFromAggregateEndpointForClientUse(a1, v13);
    v6 = v13[0];
  }

  if (v6)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v12);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
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

  return v13[0];
}

CFTypeRef routingMangager_copySelectedBufferedEndpointForSidePlay(uint64_t a1)
{
  cf[21] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigRoutingManagerUtilities_CopySidePlayEndpoints();
  v4 = 0;
  v5 = 0;
  v6 = *MEMORY[0x1E69620F8];
  v24 = *MEMORY[0x1E69621E8];
  v7 = &qword_1EB75D000;
  v23 = v1;
  if (!v3)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(v3); ; i = 0)
  {
    if (v5 >= i)
    {
      v20 = 0;
      goto LABEL_37;
    }

    v9 = v7;
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, v6, v1, cf);
    }

    v25 = 0;
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, v24, v1, &v25);
    }

    CFStringAppendFormat(Mutable, 0, @"\t[%ld] endpointName=%@, endpointID=%@\n", v5, v25, cf[0]);
    v7 = v9;
    if (!FigCFEqual())
    {
      v15 = v9[257];
      if (v15)
      {
        CFRelease(v15);
        v9[257] = 0;
      }

      if (v3)
      {
        v9[257] = CFRetain(v3);
        v16 = CFArrayGetCount(v3) - 1;
      }

      else
      {
        v9[257] = 0;
        v16 = -1;
      }

      if (v5 == v16)
      {
        if (dword_1EB75DF20)
        {
          v17 = v6;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          v1 = v23;
          v6 = v17;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v7 = v9;
        }
      }

      else if (v5 && !(v4 + 5 * (v5 / 5uLL)))
      {
        if (dword_1EB75DF20)
        {
          v22 = v6;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v1 = v23;
          v6 = v22;
          v7 = v9;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        Mutable = CFStringCreateMutable(v1, 0);
      }
    }

    if (FigCFEqual())
    {
      break;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v25)
    {
      CFRelease(v25);
    }

    ++v5;
    --v4;
    if (v3)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v20 = CFRetain(ValueAtIndex);
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

LABEL_37:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v20;
}

void FigRoutingManagerLogEndpointID(__CFString *a1, uint64_t a2, __CFString *a3, int a4)
{
  cf[24] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }

    if (a4 && dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

void FigRoutingManagerLogEndpointIDs(__CFString *a1, const __CFArray *a2, __CFString *a3, int a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (CFArrayGetCount(a2) >= 1)
    {
      v8 = 0;
      v9 = *MEMORY[0x1E69621E8];
      do
      {
        CFArrayGetValueAtIndex(a2, v8);
        cf[0] = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(CMBaseObject, v9, v6, cf);
        }

        CFStringAppendFormat(Mutable, 0, @"[%d]. %@ ", v8, cf[0]);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        ++v8;
      }

      while (v8 < CFArrayGetCount(a2));
    }

    if (a4 && dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void FigRoutingManagerLogRoutingRequestDetails(__CFString *a1, uint64_t a2, const __CFArray *a3, int a4, uint64_t a5, const __CFDictionary *a6)
{
  v28[16] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a2)
  {
    v28[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69621E8], v9, v28);
      v13 = v28[0];
    }

    else
    {
      v13 = 0;
    }

    IsEndpointWHAGroupable = FigRoutingManagerIsEndpointWHAGroupable(a2);
    v15 = "YES";
    if (!IsEndpointWHAGroupable)
    {
      v15 = "NO";
    }

    CFStringAppendFormat(Mutable, 0, @"%@(isWHAGroupable=%s)", v13, v15);
    if (v28[0])
    {
      CFRelease(v28[0]);
    }
  }

  else if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v17 = Count;
      v18 = 0;
      v19 = *MEMORY[0x1E69621E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v18);
        v28[0] = 0;
        v21 = FigEndpointGetCMBaseObject();
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v22)
        {
          v22(v21, v19, v9, v28);
        }

        v23 = v28[0];
        if (v28[0])
        {
          v24 = FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex);
          v25 = "YES";
          if (!v24)
          {
            v25 = "NO";
          }

          if (v17 == 1)
          {
            CFStringAppendFormat(Mutable, 0, @"%@(isWHAGroupable=%s)", v23, v25);
          }

          else
          {
            CFStringAppendFormat(Mutable, 0, @"%@(isWHAGroupable=%s), ", v23, v25);
          }

          if (v28[0])
          {
            CFRelease(v28[0]);
          }
        }

        ++v18;
        --v17;
      }

      while (v17);
    }
  }

  FigCFDictionaryGetInt32IfPresent();
  v26 = FigRoutingManagerCopyClientNameFromPID(0);
  if (a6)
  {
    CFDictionaryGetValue(a6, @"initiator");
    CFDictionaryGetValue(a6, @"avoidAuthPrompt");
    CFDictionaryGetValue(a6, @"silentSender");
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

CFStringRef FigRoutingManagerCopyClientNameFromPID(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  if (a1 >= 1)
  {
    v1 = proc_name(a1, v3, 0x80u);
    if ((v1 & 0x80000000) == 0)
    {
      *(v3 + v1) = 0;
    }
  }

  return CFStringCreateWithCString(*MEMORY[0x1E695E480], v3, 0x8000100u);
}

__CFDictionary *FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(CFDictionaryRef theDict)
{
  v1 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v3 = MutableCopy;
  if (MutableCopy)
  {
    Value = CFDictionaryGetValue(MutableCopy, @"clientRouteRequestID");
    if (Value)
    {
      v5 = CFRetain(Value);
      if (v5)
      {
        v6 = v5;
LABEL_9:
        CFRelease(v6);
        return v3;
      }
    }

    v7 = mach_absolute_time();
    v6 = CFStringCreateWithFormat(v1, 0, @"%lld", v7);
    CFDictionarySetValue(v3, @"clientRouteRequestID", v6);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  return v3;
}

__CFArray *FigRoutingManagerCreateArrayFromEndpoint(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a1);
  return Mutable;
}

void __FigRoutingManagerHandleActivationTimeoutCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(*(a1 + 40), v2, @"configUpdateReasonEndedFailed");
    if (FigRoutingManagerIsEndpointActivated(*(a1 + 32)))
    {
      FigRoutingManagerLogEndpointID(@"CMSession/Routing: HandleActivationTimeoutCallback - Going to deactivate endpoint with name=", *(a1 + 32), 0, 1);
      v5 = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(*(a1 + 40), *(a1 + 32), &v5);
      FigRoutingManager_iOSDeactivateEndpoint(*(a1 + 32), v5, 0);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }
}

void *__getBluetoothEndpointManagerCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BluetoothAudioLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BluetoothAudioLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7AE7C50;
    v7 = 0;
    BluetoothAudioLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = BluetoothAudioLibraryCore_frameworkLibrary;
    if (BluetoothAudioLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = BluetoothAudioLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BluetoothEndpointManagerCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBluetoothEndpointManagerCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BluetoothAudioLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BluetoothAudioLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t AirPlaySenderLibraryCore(uint64_t a1)
{
  if (!AirPlaySenderLibraryCore_frameworkLibrary)
  {
    AirPlaySenderLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AirPlaySenderLibraryCore_frameworkLibrary;
}

uint64_t __AirPlaySenderLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AirPlaySenderLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAPGetEndpointManagerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirPlaySenderLibrary();
  result = dlsym(v2, "APGetEndpointManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPGetEndpointManagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AirPlaySenderLibrary()
{
  v3 = 0;
  v0 = AirPlaySenderLibraryCore(&v3);
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

void *__getAPGetEndpointManagerCarPlaySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirPlaySenderLibrary();
  result = dlsym(v2, "APGetEndpointManagerCarPlay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPGetEndpointManagerCarPlaySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSPGetEndpointManagerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirPlaySenderLibrary();
  result = dlsym(v2, "SPGetEndpointManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetEndpointManagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaToolboxLibraryCore(uint64_t a1)
{
  if (!MediaToolboxLibraryCore_frameworkLibrary)
  {
    MediaToolboxLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return MediaToolboxLibraryCore_frameworkLibrary;
}

uint64_t __MediaToolboxLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaToolboxLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFigEndpointManagerForNeroGetSharedSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = MediaToolboxLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "FigEndpointManagerForNeroGetShared");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigEndpointManagerForNeroGetSharedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __routingManager_registerContextInternal_block_invoke(uint64_t a1)
{
  routingManager_notifyRoutingContextChanged(*(a1 + 32), @"RoutingContextAdded");
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t MXSystemAudio_PickRouteDescriptor(const __CFDictionary *a1, CFDictionaryRef theDict, const __CFDictionary *a3, const __CFDictionary *a4)
{
  value[16] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"RouteName");
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v110) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigCFDictionaryGetCount())
  {
    v9 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(theDict, a1);
    if (!v9)
    {
      LODWORD(v110) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v9 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v9, @"configUpdateReasonEndedFailed");
      v13 = 4294954296;
      goto LABEL_150;
    }
  }

  else
  {
    v9 = 0;
  }

  v101 = 0;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (theDict && ContextType == 3)
  {
    v12 = CFDictionaryGetValue(theDict, @"RouteSupportsAirPlayMusic");
    if (v12 != *MEMORY[0x1E695E4D0])
    {
      if (dword_1EB75DF20)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (CFDictionaryGetValue(theDict, @"IsWHAGroupable") != v12)
    {
      if (dword_1EB75DF20)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (!FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
    {
      if (dword_1EB75DF20)
      {
LABEL_21:
        LODWORD(v110) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_22:
      FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v101);
      goto LABEL_23;
    }

    if (dword_1EB75DF20)
    {
      LODWORD(v110) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v101);
  }

LABEL_23:
  v16 = v101;
  if (!v101)
  {
    if (!a1 || (v16 = CFRetain(a1), (v101 = v16) == 0))
    {
      v13 = 0;
      goto LABEL_150;
    }
  }

  FigRoutingContextUtilities_LogCurrentState();
  v110 = 0;
  v17 = MEMORY[0x1E695E480];
  if (v9)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(CMBaseObject, *MEMORY[0x1E69621E8], *v17, &v110);
    }
  }

  v20 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  FigRoutingManagerLogRoutingRequestDetails(@"preprocessPickEndpoint - ", v9, 0, 0, v16, v20);
  *type = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(v16, type);
  if (!*type)
  {
    goto LABEL_46;
  }

  Count = CFArrayGetCount(*type);
  if (Count < 1)
  {
    goto LABEL_46;
  }

  v22 = Count;
  if (CFArrayGetValueAtIndex(*type, 0) != v9)
  {
    v23 = 1;
    while (1)
    {
      v24 = v23;
      if (v22 == v23)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*type, v23);
      v23 = v24 + 1;
      if (ValueAtIndex == v9)
      {
        v26 = v24;
        goto LABEL_39;
      }
    }

    v26 = 0;
LABEL_39:
    if (v24 < v22)
    {
      goto LABEL_40;
    }

LABEL_46:
    theArray = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v16, &theArray);
    allocator = *v17;
    Mutable = CFArrayCreateMutable(*v17, 0, MEMORY[0x1E695E9C0]);
    v32 = Mutable;
    if (v9)
    {
      CFArrayAppendValue(Mutable, v9);
    }

    v33 = FigCFEqual();
    if (v32)
    {
      CFRelease(v32);
    }

    if (!v33)
    {
      goto LABEL_95;
    }

    if (FigRoutingManagerContextUtilities_GetContextType(v16) != 1)
    {
LABEL_94:
      FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v16, v20, a4);
      v13 = 0;
      goto LABEL_140;
    }

    v94 = v20;
    v96 = a4;
    v34 = CMSMUtility_CopyCurrentRouteIdentifiers();
    NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
    if (theArray)
    {
      v36 = CFArrayGetCount(theArray);
      v37 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (v36 >= 1)
      {
        v92 = a1;
        v38 = a3;
        v39 = 0;
        v40 = *MEMORY[0x1E69620F8];
        do
        {
          CFArrayGetValueAtIndex(theArray, v39);
          value[0] = 0;
          v41 = FigEndpointGetCMBaseObject();
          v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v42)
          {
            v42(v41, v40, allocator, value);
          }

          if (value[0])
          {
            CFArrayAppendValue(v37, value[0]);
            if (value[0])
            {
              CFRelease(value[0]);
            }
          }

          ++v39;
        }

        while (v36 != v39);
        a3 = v38;
        a1 = v92;
      }
    }

    else
    {
      v37 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    }

    if (FigCFEqual())
    {
      v43 = 0;
      LODWORD(v44) = 0;
      v45 = 1;
      goto LABEL_87;
    }

    v91 = a3;
    v93 = a1;
    v46 = NumberOfCurrentOutputPorts;
    v99 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (NumberOfCurrentOutputPorts)
    {
      v47 = 0;
      v48 = *MEMORY[0x1E69618F8];
      v98 = *MEMORY[0x1E69618D0];
      do
      {
        v49 = CFArrayGetValueAtIndex(v34, v47);
        v50 = FigRoutingManagerCopyEndpointWithDeviceID(v49, 0, v48, v16);
        if (v50)
        {
          v51 = v50;
          value[0] = 0;
          v52 = FigEndpointGetCMBaseObject();
          v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v53)
          {
            v53(v52, 0x1F289CEF0, allocator, value);
          }

          PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(value[0]);
          if (PortFromCFNumber == 1885433971 || PortFromCFNumber == 1885433953)
          {
            CFRelease(v51);
            v51 = FigRoutingManagerCopyEndpointWithDeviceID(v49, 1, v98, v16);
          }

          if (value[0])
          {
            CFRelease(value[0]);
          }

          if (v51)
          {
            CFArrayAppendValue(v99, v51);
            CFRelease(v51);
          }
        }

        ++v47;
      }

      while (v46 != v47);
    }

    v43 = v99;
    if (v99)
    {
      if (!FigCFEqual())
      {
        v44 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v99, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(v16, v99, 0, 0, v44);
        if (dword_1EB75DF20)
        {
          *v107 = 0;
          LOBYTE(cf) = 0;
          v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v83 = *v107;
          v84 = cf;
          if (os_log_type_enabled(v82, cf))
          {
            v85 = v83;
          }

          else
          {
            v85 = v83 & 0xFFFFFFFE;
          }

          if (v85)
          {
            *v111 = 136315138;
            *&v111[4] = "mxSystemAudio_preprocessPickEndpoint";
            _os_log_send_and_compose_impl(v85, 0, value, 128, &dword_1B17A2000, v82, v84, "-MXSystemAudio_Embedded- %s: Setting picked endpoint to current endpoints on systemAudio. This is needed to make sure we don't end up in a no-op picking request.", v111);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v43 = v99;
        }

        a3 = v91;
        a1 = v93;
        if (v44)
        {
          CFRelease(v44);
          v45 = 0;
          LODWORD(v44) = 0;
        }

        else
        {
          v45 = 0;
        }

LABEL_87:
        if (v37)
        {
          CFRelease(v37);
        }

        if (v34)
        {
          CFRelease(v34);
        }

        v20 = v94;
        if ((v45 & 1) == 0)
        {
          CFRelease(v43);
        }

        a4 = v96;
        if (v44)
        {
          goto LABEL_94;
        }

LABEL_95:
        FigRoutingManagerContextUtilities_SetPickingState(v16, 1);
        FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(a1, v16, v9, v20, a4);
        if (!v9)
        {
          if (FigRoutingManagerContextUtilities_GetContextType(v16) == 1)
          {
            v13 = 4294954296;
          }

          else
          {
            v13 = mxSystemAudio_processPickEndpoint(0, v16, v20, a4);
          }

LABEL_140:
          if (theArray)
          {
            CFRelease(theArray);
          }

          goto LABEL_142;
        }

        *v107 = 0;
        v55 = *MEMORY[0x1E69626D8];
        if (FigRoutingManagerIsEndpointOfType(v9, *MEMORY[0x1E69626D8]))
        {
          v56 = FigEndpointGetCMBaseObject();
          v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v57)
          {
            v57(v56, 0x1F289D050, allocator, v107);
          }
        }

        v58 = *MEMORY[0x1E69626A8];
        if (!FigRoutingManagerIsEndpointOfType(v9, *MEMORY[0x1E69626A8]) && (!FigRoutingManagerIsEndpointOfType(v9, v55) || !FigCFEqual()))
        {
          if (FigRoutingManagerIsEndpointOfType(v9, v55) || FigRoutingManagerIsEndpointOfType(v9, *MEMORY[0x1E69626B8]))
          {
            v13 = mxSystemAudio_processPickEndpoint(v9, v16, v20, a4);
          }

          else
          {
            v13 = 0;
          }

LABEL_138:
          if (*v107)
          {
            CFRelease(*v107);
          }

          goto LABEL_140;
        }

        v105 = 0;
        cf = 0;
        FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(&v105, &cf, 0);
        v59 = FigRoutingManagerContextUtilities_GetContextType(cf);
        IsMirroringScreenAudioSeperateFunctionalityAllowed = MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed();
        v61 = v105;
        if (IsMirroringScreenAudioSeperateFunctionalityAllowed && v105 && v59 == 2)
        {
          IsMirroringScreenAudioSeperateFunctionalityAllowed = FigCFEqual();
          if (IsMirroringScreenAudioSeperateFunctionalityAllowed)
          {
            if (dword_1EB75DF20)
            {
              LODWORD(v104) = 0;
              v103[0] = OS_LOG_TYPE_DEFAULT;
              v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v63 = v104;
              v64 = v103[0];
              if (os_log_type_enabled(v62, v103[0]))
              {
                v65 = v63;
              }

              else
              {
                v65 = v63 & 0xFFFFFFFE;
              }

              if (v65)
              {
                *v111 = 136315394;
                *&v111[4] = "mxSystemAudio_preprocessPickEndpoint";
                v112 = 2114;
                v113 = v110;
                _os_log_send_and_compose_impl(v65, 0, value, 128, &dword_1B17A2000, v62, v64, "-MXSystemAudio_Embedded- %s: Endpoint with name=%{public}@ already activated on mirroring context, route System Audio / System Music to it.", v111, 22);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            value[0] = 0;
            FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v16, v9, value);
            FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(v9, v16);
            MXSystemMirroring_iOSHandleEndpointAudioActivation(v9, FigEndpointFeatures, value[0], v16, a3);
            FigRoutingContextUtilities_LogCurrentState();
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (v110)
            {
              CFRelease(v110);
              v110 = 0;
            }

            if (*type)
            {
              CFRelease(*type);
            }

            v13 = 0;
            goto LABEL_148;
          }

          v95 = v20;
          v97 = a4;
          v61 = v105;
        }

        else
        {
          v95 = v20;
          v97 = a4;
        }

        if (!v61 || FigRoutingManagerUtilities_IsCurrentRouteHandoff(IsMirroringScreenAudioSeperateFunctionalityAllowed, v61))
        {
          value[0] = 0;
          *v111 = 0;
          FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(-1, value, v111, 0, 0);
          if (value[0])
          {
            v66 = CFArrayGetCount(value[0]);
            if (v66 >= 1)
            {
              v67 = v66;
              for (i = 0; i != v67; ++i)
              {
                v69 = CFArrayGetValueAtIndex(value[0], i);
                v70 = CFArrayGetValueAtIndex(*v111, i);
                if (v69 != v9 || v70 != v16)
                {
                  v72 = v70;
                  v73 = FigRoutingManagerGetFigEndpointFeatures(v69, v70);
                  v74 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  FigCFDictionarySetValue();
                  v104 = 0;
                  FigRoutingManagerCreateEndpointDeactivateCompletionContext(v72, &v104);
                  FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate endpoint with name=", v69, 0, 1);
                  FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(v72, v69, @"configUpdateReasonEndedUserCancelled");
                  FigRoutingManagerEndpointDeactivateWithCompletionCallback(v69, v73, v74, FigRoutingManager_iOSEndpointDeactivateCompletionCallback, v104);
                  if (v74)
                  {
                    CFRelease(v74);
                  }
                }
              }
            }
          }

          v20 = v95;
          v13 = mxSystemAudio_processPickEndpoint(v9, v16, v95, v97);
          if (value[0])
          {
            CFRelease(value[0]);
            value[0] = 0;
          }

          v75 = *v111;
          if (!*v111)
          {
            goto LABEL_136;
          }

          goto LABEL_135;
        }

        FigRoutingManagerContextUtilities_SetPickingState(v16, 2);
        CMSMAP_MakeAirPlayHandOffPortRoutable(1, v16);
        v104 = 0;
        FigEndpointCopyProperty(v105, *MEMORY[0x1E69621E8], allocator, &v104);
        if (FigRoutingManagerIsEndpointOfType(v105, v58))
        {
          v20 = v95;
          v77 = v97;
          if (dword_1EB75DF20)
          {
            *v103 = 0;
            v102 = OS_LOG_TYPE_DEFAULT;
            v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v79 = *v103;
            v80 = v102;
            if (os_log_type_enabled(v78, v102))
            {
              v81 = v79;
            }

            else
            {
              v81 = v79 & 0xFFFFFFFE;
            }

            if (v81)
            {
              *v111 = 136315650;
              *&v111[4] = "mxSystemAudio_preprocessPickEndpoint";
              v112 = 2114;
              v113 = v104;
              v114 = 2114;
              v115 = v110;
              _os_log_send_and_compose_impl(v81, 0, value, 128, &dword_1B17A2000, v78, v80, "-MXSystemAudio_Embedded- %s: Going to deactivate endpoint with name=%{public}@ before activating endpoint with name=%{public}@", v111, 32);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          value[0] = 0;
          FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(cf, v105, value);
          FigRoutingManager_iOSDeactivateEndpoint(v105, value[0], 1);
          if (v59 == 1)
          {
LABEL_195:
            v13 = mxSystemAudio_processPickEndpoint(v9, v16, v20, v77);
            v75 = v104;
            if (!v104)
            {
LABEL_136:
              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_138;
            }

LABEL_135:
            CFRelease(v75);
            goto LABEL_136;
          }
        }

        else
        {
          v20 = v95;
          v77 = v97;
          if (!FigRoutingManagerIsEndpointOfType(v105, *MEMORY[0x1E69626B0]))
          {
            goto LABEL_195;
          }

          if (dword_1EB75DF20)
          {
            *v103 = 0;
            v102 = OS_LOG_TYPE_DEFAULT;
            v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v88 = *v103;
            v89 = v102;
            if (os_log_type_enabled(v87, v102))
            {
              v90 = v88;
            }

            else
            {
              v90 = v88 & 0xFFFFFFFE;
            }

            if (v90)
            {
              *v111 = 136315394;
              *&v111[4] = "mxSystemAudio_preprocessPickEndpoint";
              v112 = 2114;
              v113 = v110;
              _os_log_send_and_compose_impl(v90, 0, value, 128, &dword_1B17A2000, v87, v89, "-MXSystemAudio_Embedded- %s: Going to remove all sub-endpoints from the aggregate endpoint before activating endpoint with name=%{public}@", v111, 22);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingManagerRemoveAllSubEndpointsFromAggregate(v105, cf, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
          CMSMVAUtility_DestroyMusicVADIfNeeded(cf);
        }

        FigRoutingManagerContextUtilities_SetPickedEndpoints(cf, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
        goto LABEL_195;
      }

      v45 = 0;
      LODWORD(v44) = 1;
    }

    else
    {
      LODWORD(v44) = 0;
      v45 = 1;
    }

    a3 = v91;
    a1 = v93;
    goto LABEL_87;
  }

  v26 = 0;
LABEL_40:
  if (dword_1EB75DF20)
  {
    LODWORD(theArray) = 0;
    v107[0] = OS_LOG_TYPE_DEFAULT;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = theArray;
    v29 = v107[0];
    if (os_log_type_enabled(v27, v107[0]))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 0xFFFFFFFE;
    }

    if (v30)
    {
      *v111 = 136315394;
      *&v111[4] = "mxSystemAudio_preprocessPickEndpoint";
      v112 = 2114;
      v113 = v110;
      _os_log_send_and_compose_impl(v30, 0, value, 128, &dword_1B17A2000, v27, v29, "-MXSystemAudio_Embedded- %s: endpoint %{public}@ is already currently being activated, move the endpoint to the end of the list of currently activating endpoints and notify client this is a no-op request", v111, 22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  value[0] = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(v16, v26, value);
  FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(v16, v26);
  FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(v16, value[0]);
  FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v16, v20, a4);
  if (value[0])
  {
    CFRelease(value[0]);
  }

  v13 = 0;
LABEL_142:
  FigRoutingContextUtilities_LogCurrentState();
  if (v20)
  {
    CFRelease(v20);
  }

  if (v110)
  {
    CFRelease(v110);
    v110 = 0;
  }

  if (*type)
  {
    CFRelease(*type);
  }

LABEL_148:
  if (v101)
  {
    CFRelease(v101);
  }

LABEL_150:
  if (v9)
  {
    CFRelease(v9);
  }

  return v13;
}

uint64_t FigEndpointCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(CMBaseObject, a2, a3, a4);
  }

  return result;
}

uint64_t mxSystemAudio_processPickEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v8 = FigRoutingManagerContextUtilities_SetPickingState(a2, 3);
  v9 = v8;
  if (a1)
  {
    if (!v8)
    {
      v9 = FigRoutingManager_iOSActivateEndpoint(a1, a2, a3, a4);
    }
  }

  else if (FigRoutingManagerContextUtilities_GetContextType(a2))
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, &cf);
    if (cf)
    {
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, @"configUpdateReasonEndedSuccess", a3, 0);
      v11 = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, cf, &v11);
      if (FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626A8]))
      {
        FigRoutingManagerLogEndpointID(@"Going to deactivate endpoint with name=", cf, @"because user selected NULL", 1);
        FigRoutingManager_iOSDeactivateEndpoint(cf, v11, 1);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  FigRoutingContextUtilities_LogCurrentState();
  return v9;
}

void sub_1B185C548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B185CF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMSMStrings_Check()
{
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();
  FigCFEqual();

  return FigCFEqual();
}

void sub_1B1861584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFDictionary *FVIOKit_CreateIntensityDictionary(float a1)
{
  valuePtr = vcvts_n_s32_f32(a1, 0x10uLL);
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = CFNumberCreate(v1, kCFNumberSInt32Type, &valuePtr);
  v4 = v3;
  if (Mutable)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CFDictionarySetValue(Mutable, @"intensity", v3);
LABEL_9:
    CFRelease(v4);
    return Mutable;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  Mutable = 0;
  result = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  return result;
}

__CFArray *FVIOKit_VibePatternArrayCreateDefault(float a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
  IntensityDictionary = FVIOKit_CreateIntensityDictionary(a1);
  v4 = IntensityDictionary;
  if (Mutable)
  {
    v5 = IntensityDictionary == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CFArrayAppendValue(Mutable, IntensityDictionary);
    CFArrayAppendValue(Mutable, *MEMORY[0x1E695E4D0]);
    v7 = *MEMORY[0x1E695E4C0];
    CFArrayAppendValue(Mutable, *MEMORY[0x1E695E4C0]);
    CFArrayAppendValue(Mutable, v7);
LABEL_9:
    CFRelease(v4);
    return Mutable;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  Mutable = 0;
  result = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  return result;
}

CMTimeValue FVIOKit_ConvertFigTimeToMillisec(CMTime *a1)
{
  memset(&v3, 0, sizeof(v3));
  v2 = *a1;
  CMTimeConvertScale(&v3, &v2, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  if ((v3.flags & 0x1D) != 1)
  {
    return 0;
  }

  if ((v3.value & ~(v3.value >> 63)) >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  return v3.value & ~(v3.value >> 63);
}

uint64_t FVIOKit_StartIOServiceVibration(uint64_t a1, int a2, int a3, int a4, float a5)
{
  if (!*(a1 + 24))
  {
    FVIOKit_StartIOServiceVibration_cold_5(&v21);
    return v21;
  }

  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  if (a3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  v19 = v7;
  valuePtr = v6;
  if (!*(a1 + 32))
  {
    FVIOKit_StartIOServiceVibration_cold_4(&v21);
    return v21;
  }

  Default = FVIOKit_VibePatternArrayCreateDefault(a5);
  if (!Default)
  {
    FVIOKit_StartIOServiceVibration_cold_3(&v21);
    return v21;
  }

  v10 = Default;
  CFDictionarySetValue(*(a1 + 32), @"hertz_millisecs", Default);
  v11 = *MEMORY[0x1E695E480];
  v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (v12)
  {
    v13 = v12;
    CFArraySetValueAtIndex(v10, 1, v12);
    CFRelease(v13);
    v14 = CFNumberCreate(v11, kCFNumberIntType, &v19);
    if (v14)
    {
      v15 = v14;
      CFArraySetValueAtIndex(v10, 3, v14);
      CFRelease(v15);
      v16 = MEMORY[0x1E695E4C0];
      if (a4)
      {
        v16 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(*(a1 + 32), @"repeat", *v16);
      if (*(a1 + 20))
      {
        notify_set_state(*(a1 + 16), 1uLL);
        notify_post("com.apple.coremedia.vibration");
      }

      FigVibratorPostNotification(@"VibeWillStart");
      IORegistryEntrySetCFProperties(*(a1 + 24), *(a1 + 32));
      v17 = 0;
      goto LABEL_17;
    }

    FVIOKit_StartIOServiceVibration_cold_1(&v21);
  }

  else
  {
    FVIOKit_StartIOServiceVibration_cold_2(&v21);
  }

  v17 = v21;
LABEL_17:
  CFRelease(v10);
  return v17;
}

uint64_t FVIOKit_StartIOServiceVibrationWithPattern(uint64_t a1, void *value)
{
  if (value)
  {
    if (*(a1 + 24))
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        CFDictionarySetValue(v3, @"hertz_millisecs", value);
        CFDictionarySetValue(*(a1 + 32), @"repeat", *MEMORY[0x1E695E4C0]);
        if (*(a1 + 20))
        {
          notify_set_state(*(a1 + 16), 1uLL);
          notify_post("com.apple.coremedia.vibration");
        }

        FigVibratorPostNotification(@"VibeWillStart");
        IORegistryEntrySetCFProperties(*(a1 + 24), *(a1 + 32));
        return 0;
      }

      else
      {
        FVIOKit_StartIOServiceVibrationWithPattern_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      FVIOKit_StartIOServiceVibrationWithPattern_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FVIOKit_StartIOServiceVibrationWithPattern_cold_3(&v7);
    return v7;
  }
}

const void *FVIOKit_StopVibrator(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    IORegistryEntrySetCFProperties(v2, *(a1 + 40));
    if (*(a1 + 20))
    {
      notify_set_state(*(a1 + 16), 0);
      notify_post("com.apple.coremedia.vibration");
    }

    FigVibratorPostNotification(@"VibeWillStop");
    if (*(a1 + 112) && *(a1 + 120))
    {
      v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigVibratorNotificationKey_VibeStopped_Context, (a1 + 120), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v4 = *(a1 + 8);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __FVIOKit_StopVibrator_block_invoke;
      v6[3] = &__block_descriptor_48_e5_v8__0l;
      v6[4] = a1;
      v6[5] = v3;
      MXDispatchAsync("FVIOKit_StopVibrator", "FigVibrator_IOKit.m", 250, 0, 0, v4, v6);
      result = *(a1 + 120);
      if (result)
      {
        CFRelease(result);
        result = 0;
        *(a1 + 120) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FVIOKit_StopVibrator_cold_1(&v7);
    return v7;
  }

  return result;
}

const __CFDictionary *FVIOKit_GetVibrationPatternFromDictionary(const __CFDictionary *result, int *a2, float *a3, float *a4, float *a5, const __CFDictionary **a6, char *a7, char *a8)
{
  valuePtr = 0x3ECCCCCD3DCCCCCDLL;
  v31 = 0.85;
  v32 = 0.5;
  v30 = 1056964608;
  if (result)
  {
    v14 = result;
    v29 = a6;
    Value = CFDictionaryGetValue(result, @"Intensity");
    result = CFDictionaryGetValue(v14, @"VibePattern");
    v16 = result;
    if (result)
    {
      v17 = 0;
      v18 = 0;
      valuePtr = 0;
      v19 = 0.0;
      v32 = 0.0;
      v20 = 0.0;
      v21 = 0;
      v30 = 0;
    }

    else
    {
      v27 = a7;
      v28 = a8;
      v23 = CFDictionaryGetValue(v14, @"OnDuration");
      v24 = CFDictionaryGetValue(v14, @"OffDuration");
      v25 = CFDictionaryGetValue(v14, @"Period");
      result = CFDictionaryGetValue(v14, @"TotalDuration");
      v18 = result;
      v19 = 0.5;
      v21 = 1053609165;
      if (v23 && v24 | v25)
      {
        result = CFNumberGetValue(v23, kCFNumberFloatType, &valuePtr + 4);
        if (v24)
        {
          result = CFNumberGetValue(v24, kCFNumberFloatType, &valuePtr);
        }

        a8 = v28;
        if (v25)
        {
          result = CFNumberGetValue(v25, kCFNumberFloatType, &v32);
          v21 = HIDWORD(valuePtr);
          v17 = 1;
          v20 = v32;
        }

        else
        {
          v21 = HIDWORD(valuePtr);
          v20 = *(&valuePtr + 1) + *&valuePtr;
          v32 = *(&valuePtr + 1) + *&valuePtr;
          v17 = 1;
        }
      }

      else
      {
        v17 = 0;
        v20 = 0.5;
        a8 = v28;
      }

      a7 = v27;
    }

    *a2 = v21;
    *a3 = v20;
    if (Value)
    {
      result = CFNumberGetValue(Value, kCFNumberFloatType, &v31);
      v26 = v31;
      if (v31 <= 1.0)
      {
        if (v31 < 0.0)
        {
          v31 = 0.0;
          v26 = 0.0;
        }
      }

      else
      {
        v31 = 1.0;
        v26 = 1.0;
      }
    }

    else
    {
      v26 = 0.85;
    }

    *a5 = v26;
    if (v18)
    {
      result = CFNumberGetValue(v18, kCFNumberFloatType, &v30);
      v22 = 1;
      v19 = *&v30;
    }

    else
    {
      v22 = 0;
    }

    a6 = v29;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v22 = 0;
    *a2 = 1053609165;
    *a3 = 0.5;
    v19 = 0.5;
    *a5 = 0.85;
  }

  *a4 = v19;
  *a7 = v17;
  *a8 = v22;
  *a6 = v16;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
}

uint64_t remoteXPCStarkModeController_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

uint64_t remoteFigStarkModeController_Finalize(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  if (dword_1EB75E1F8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigXPCRemoteClientDisassociateObject();
  if (*(DerivedStorage + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    if (FigXPCCreateBasicMessage() || (v5 = FigXPCRemoteClientSendSyncMessage(), FigXPCRemoteClientKillServerOnTimeout(), v5))
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return FigXPCRelease();
}

uint64_t remoteFigStarkModeController_CopyDebugDescription(const void *a1)
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

  return [v3 initWithFormat:@"<FigStarkModeControllerRemote %p retainCount: %ld objectID: %016llx%s>", a1, v4, *DerivedStorage, v5];
}

void __mxsmInteruptionActionMapper_setUpInterruptionPriorityDictionaries_block_invoke()
{
  CelestialGetModelSpecificName();
  v0 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 objectForKey:@"AudioCategoryMap"];
    v3 = [v1 objectForKey:@"InterruptionPriorityMap"];

    sCategoryToCategoryMapForTriangle = v2;
    sCategoryToPriorityMapForTriangle = v3;
  }

  CelestialGetModelSpecificName();
  v4 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v4)
  {
    v7 = v4;
    v5 = [v4 objectForKey:@"AudioCategoryMap"];
    v6 = [v7 objectForKey:@"InterruptionPriorityMap"];

    sCategoryToCategoryMapForTipi = v5;
    sCategoryToPriorityMapForTipi = v6;
  }
}

void sub_1B1868B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FigRoutingManager_iOSEndpointActivateCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
  if (a5)
  {
    v11 = *a5;
    v12 = *(a5 + 8);
    [*(a5 + 32) timeIntervalSinceNow];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    [0 timeIntervalSinceNow];
  }

  v14 = v13;
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

  if (v18)
  {
    CFRetain(v18);
  }

  v15 = fabs(v14) * 1000.0;
  v16 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v17 = *(SharedManager + 1);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __FigRoutingManager_iOSEndpointActivateCompletionCallback_block_invoke;
  v19[3] = &unk_1E7AEA460;
  v19[4] = v16;
  v19[5] = a1;
  v22 = a4;
  v19[6] = a3;
  v19[7] = a2;
  v23 = v15;
  v19[8] = v12;
  v19[9] = v11;
  v20 = v18;
  v21 = a5;
  MXDispatchAsync("FigRoutingManager_iOSEndpointActivateCompletionCallback", "FigRoutingManager_iOSEndpointHelpers.m", 153, 0, 0, v17, v19);
}

uint64_t FigRoutingManagerRegisterForFigEndpointNotifications(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (FigRoutingManagerIsEndpointOfType(result, *MEMORY[0x1E69626C8]))
  {
    v2 = *MEMORY[0x1E69626A8];
LABEL_7:
    IsEndpointOfType = FigRoutingManagerIsEndpointOfType(v1, v2);
    if (IsEndpointOfType)
    {
      FigRoutingManagerGetSharedManager(IsEndpointOfType, v5);
      CMNotificationCenterGetDefaultLocalCenter();
      v6 = CMNotificationCenterAddListener();
      routingManager_handleAirPlayVolumeControlDidChange(v6, v7, v8, v1);
    }

    FigRoutingManagerGetSharedManager(IsEndpointOfType, v5);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    goto LABEL_10;
  }

  v3 = FigRoutingManagerIsEndpointOfType(v1, *MEMORY[0x1E69626B0]);
  v2 = *MEMORY[0x1E69626A8];
  if (v3 || FigRoutingManagerIsEndpointOfType(v1, *MEMORY[0x1E69626A8]) || FigRoutingManagerIsEndpointOfType(v1, *MEMORY[0x1E69626C0]))
  {
    goto LABEL_7;
  }

LABEL_10:
  result = FigRoutingManagerIsEndpointOfType(v1, v2);
  if (!result)
  {
    result = FigRoutingManagerIsEndpointOfType(v1, *MEMORY[0x1E69626B0]);
    if (!result)
    {
      FigRoutingManagerGetSharedManager(result, v9);
      CMNotificationCenterGetDefaultLocalCenter();
      v10 = CMNotificationCenterAddListener();
      FigRoutingManagerGetSharedManager(v10, v11);
      CMNotificationCenterGetDefaultLocalCenter();
      v12 = CMNotificationCenterAddListener();
      FigRoutingManagerGetSharedManager(v12, v13);
      CMNotificationCenterGetDefaultLocalCenter();

      return CMNotificationCenterAddListener();
    }
  }

  return result;
}

void FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(const void *a1, char a2, uint64_t a3, const void *a4, uint64_t a5)
{
  if (a1)
  {
    if ((a2 & 2) != 0)
    {
      if (!MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed() || !MXSystemMirroring_IsDefaultRouteAirPlayReceiver())
      {
        goto LABEL_8;
      }

      cf = 0;
      FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&cf);
      IsRoutedToLocalAirplayReceiver = FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver(cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (IsRoutedToLocalAirplayReceiver)
      {
LABEL_8:
        FigRoutingManagerHandleEndpointAudioActivation(a1, v10, a3, a4, a5);
      }
    }

    if (a2)
    {
      FigRoutingManagerHandleEndpointScreenActivation(a1, a4, a5);
    }

    if ((a2 & 4) != 0)
    {
      FigRoutingManagerHandleEndpointPlaybackActivation(a1, a4, a5);
      if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]))
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v13)
        {
          v13(CMBaseObject, *MEMORY[0x1E6962118], *MEMORY[0x1E695E4D0]);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }
    }

    if ((a2 & 0x10) != 0)
    {
      FigRoutingManagerHandleEndpointControlActivation(a1, a4, a5);
    }
  }
}

uint64_t FigRoutingManager_iOSDeactivateEndpoint(const void *a1, uint64_t a2, int a3)
{
  v26[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294954315;
  }

  IsEndpointOfType = FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B0]);
  if (IsEndpointOfType)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  SharedManager = FigRoutingManagerGetSharedManager(IsEndpointOfType, v6);
  cf = 0;
  v10 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, *MEMORY[0x1E69621E8], v10, &cf);
  }

  if (dword_1EB75DF20)
  {
    *type = 0;
    v23 = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v26[0] = 0;
  v14 = FigEndpointGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(v14, *MEMORY[0x1E6962100], v10, v26);
    v16 = v26[0];
  }

  else
  {
    v16 = 0;
  }

  if (v16 != *MEMORY[0x1E695E4D0])
  {
    v8 = 0;
    if (!v16)
    {
      return v8;
    }

LABEL_18:
    CFRelease(v16);
    return v8;
  }

  CFRetain(a1);
  v18 = *(SharedManager + 1);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __FigRoutingManager_iOSDeactivateEndpoint_block_invoke;
  v22[3] = &__block_descriptor_40_e5_v8__0l;
  v22[4] = a1;
  MXDispatchAsync("FigRoutingManager_iOSDeactivateEndpoint", "FigRoutingManager_iOSEndpointHelpers.m", 1127, 0, 0, v18, v22);
  *v25 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint(a1, a2, v25);
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(a1, *v25);
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigRoutingManagerUnregisterFromFigEndpointNotifications(a1);
  *type = 0;
  FigRoutingManagerCreateEndpointDeactivateCompletionContext(*v25, type);
  v8 = FigRoutingManagerEndpointDeactivateWithCompletionCallback(a1, FigEndpointFeatures, Mutable, FigRoutingManager_iOSEndpointDeactivateCompletionCallback, *type);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*v25)
  {
    CFRelease(*v25);
  }

  v16 = v26[0];
  if (v26[0])
  {
    goto LABEL_18;
  }

  return v8;
}

uint64_t FigRoutingManager_iOSHandleEndpointActivationError(CFTypeRef a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = a1;
  cf[21] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    LODWORD(cf[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    a1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3 > -15583)
  {
    if ((a3 + 15582) >= 2)
    {
      if (!a3)
      {
        goto LABEL_45;
      }

      if (a3 != 200453)
      {
LABEL_15:
        FigRoutingManager_HandleEndpointFailed(v11, a3, a4, 0, a6);
        goto LABEL_16;
      }
    }
  }

  else
  {
    v13 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedUserCancelled;
    if (a3 > -17602)
    {
      if (a3 == -17601)
      {
LABEL_16:
        v13 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed;
        goto LABEL_30;
      }

      if (a3 == -17600)
      {
        v13 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedUnauthorizedNoPrompt;
        goto LABEL_30;
      }

      v14 = -16728;
      goto LABEL_14;
    }

    if (a3 != -17608)
    {
      v14 = -17604;
LABEL_14:
      if (a3 == v14)
      {
LABEL_30:
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a5, v11, *v13);
        if (v10)
        {
          routingManager_resetScreenSettings(v11);
        }

        a1 = FigRoutingManagerContextUtilities_SetPickingState(a5, 0);
        goto LABEL_45;
      }

      goto LABEL_15;
    }
  }

  FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a5, v11, @"configUpdateReasonEndedFailed");
  FigRoutingManagerContextUtilities_SetPickingState(a5, 0);
  v15 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf[0] = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v18(CMBaseObject, *MEMORY[0x1E69620F8], v15, cf);
  }

  *type = 0;
  v19 = FigEndpointGetCMBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, *MEMORY[0x1E69621E8], v15, type);
  }

  v21 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v11, 0);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (a3 > -15582)
  {
    if (a3 != -15581)
    {
      if (a3 != 200453)
      {
        goto LABEL_37;
      }

      FigCFDictionarySetValue();
      if (!dword_1EB75DF20)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    FigCFDictionarySetValue();
    if (dword_1EB75DF20)
    {
LABEL_36:
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (a3 == -17608)
  {
    FigCFDictionarySetValue();
    if (dword_1EB75DF20)
    {
      goto LABEL_36;
    }
  }

  else
  {
    FigCFDictionarySetValue();
    if (dword_1EB75DF20)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  FigCFDictionaryGetValue();
  FigCFDictionarySetValue();
  FigEndpointUIAgentHelper_ShowError(Mutable);
  if (*type)
  {
    CFRelease(*type);
    *type = 0;
  }

  a1 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_45:
  if (FigRoutingManagerUtilities_IsCurrentRouteHandoff(a1, a2))
  {
    CMSMAP_MakeAirPlayHandOffPortRoutable(0, a5);
  }

  FigRoutingManagerRemoveCachedDelegateContext(v11, a5);
  return 0;
}

uint64_t FigRoutingManager_iOSHandleStartupFailed(uint64_t result, CFMutableDictionaryRef theDict)
{
  if (!result || !theDict)
  {
    return result;
  }

  if (result <= -15583)
  {
    if (result == -71891)
    {
      v3 = kFigEndpointUIAgentPromptInfo_ReasonStartErrorLowSignal;
      goto LABEL_15;
    }

    if (result == -17608)
    {
      v3 = kFigEndpointUIAgentPromptInfo_ReasonErrorAuthenticationFailed;
      goto LABEL_15;
    }

LABEL_19:
    CFDictionarySetValue(theDict, @"reason", @"startError");
    SInt32 = FigCFNumberCreateSInt32();
    FigCFDictionarySetValue();
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    goto LABEL_16;
  }

  if (result == -15582)
  {
    v3 = kFigEndpointUIAgentPromptInfo_ReasonErrorInfraRelayFailedMultiDFS;
    goto LABEL_15;
  }

  if (result == -15581)
  {
    v3 = kFigEndpointUIAgentPromptInfo_ReasonErrorInfraRelayFailed2G;
    goto LABEL_15;
  }

  if (result != 200453)
  {
    goto LABEL_19;
  }

  v3 = kFigEndpointUIAgentPromptInfo_ReasonErrorHijackFailed;
LABEL_15:
  CFDictionarySetValue(theDict, @"reason", *v3);
LABEL_16:

  return FigEndpointUIAgentHelper_ShowError(theDict);
}

void FigRoutingManagerHandleEndpointAudioActivation(const void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v25 = 0;
  v9 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E69622F8], v9, &v25);
  }

  v24 = 0;
  v12 = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, *MEMORY[0x1E69621E8], v9, &v24);
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v23) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      cf[0] = 0;
      if (FigRoutingManagerFindCarPlayMainAudioPortForEndpoint(a1, cf))
      {
        FigRoutingManagerContextUtilities_SetPickingState(a4, 9);
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a4, a1, @"configUpdateReasonEndedSuccess");
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickingState(a4, 8);
        FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer(a1, a4, 5.0);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    goto LABEL_33;
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a4);
  if (ContextType <= 6 && ((1 << ContextType) & 0x46) != 0)
  {
    FigRoutingManagerStartDeactivateAirPlayEndpointTimer(a1, a3, 5.0);
    AirPlayPortForEndpoint = CMSMAP_FindAirPlayPortForEndpoint(a1, *MEMORY[0x1E69625E8]);
    if (AirPlayPortForEndpoint)
    {
      v18 = AirPlayPortForEndpoint;
      FigRoutingManagerStopDeactivateAirPlayEndpointTimer(AirPlayPortForEndpoint, v17);
      FigRoutingManagerContextUtilities_SetPickingState(a4, 9);
      FigCFDictionaryGetValue();
      if (FigCFEqual())
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v23) = 0;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a5);
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        goto LABEL_32;
      }

      if (CMSMVAUtility_MakePortRoutable(v18, a4))
      {
        v23 = 0;
        FigRoutingManagerContextUtilities_CopyPickedEndpoints(a4, &v23);
        v20 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v23, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(a4, v23, @"configUpdateReasonEndedFailed", a5, v20);
        if (dword_1EB75DF20)
        {
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManager_iOSDeactivateEndpoint(a1, a3, 0);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        if (v20)
        {
          CFRelease(v20);
        }

        v22 = v23;
        if (!v23)
        {
          goto LABEL_32;
        }
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a4, a1, @"configUpdateReasonEndedSuccess", a5);
        cf[0] = 0;
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(cf[0], a1, @"configUpdateReasonEndedSuccess", a5);
        FigRoutingManagerPostProcessPickEndpoint(a1, a4);
        FigRoutingManagerContextUtilities_SetPickingState(a4, 0);
        v22 = cf[0];
        if (!cf[0])
        {
          goto LABEL_32;
        }
      }

      CFRelease(v22);
LABEL_32:
      MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed();
      FigRoutingManagerCrossfadePlayback(a1, a5, 0, 0);
      goto LABEL_33;
    }

    FigRoutingManagerContextUtilities_SetPickingState(a4, 8);
  }

LABEL_33:
  if (v24)
  {
    CFRelease(v24);
    v24 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

void FigRoutingManagerHandleEndpointScreenActivation(const void *a1, const void *a2, uint64_t a3)
{
  v23[16] = *MEMORY[0x1E69E9840];
  IsPropertyTrue = FigEndpointUtility_EndpointPredicate_IsPropertyTrue();
  v21 = 0;
  v22 = 0;
  v7 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, *MEMORY[0x1E69622F8], v7, &v22);
  }

  v10 = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, *MEMORY[0x1E69622F0], v7, &v21);
  }

  CMScreenHandleActivation(v22, v21);
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]) | IsPropertyTrue)
  {
    if (FigRoutingManagerIsEndpointOfType(a1, v13))
    {
      v14 = CMSMUtility_DoesiOSHaveCarPlayScreen();
      v15 = CMSMUtility_CopyStarkEndpointCentral();
      InitialModesReceived = FigEndpointCentralGetInitialModesReceived(v15);
      if (v14)
      {
        if (InitialModesReceived)
        {
          CMScreenGetScreenState();
          if (!FigCFEqual())
          {
            FigEndpointCopyFirstStreamOfType();
          }
        }
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  else
  {
    FigEndpointCopyFirstStreamOfType();
  }

  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C8]))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v23[0] = 0;
    v17 = FigEndpointGetCMBaseObject();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(v17, *MEMORY[0x1E69620B8], v7, v23);
      v20 = v23[0];
    }

    else
    {
      v20 = 0;
    }

    if (v20 == *MEMORY[0x1E695E4D0])
    {
      CMScreenSetMirroringMode(1);
      v20 = v23[0];
    }

    if (v20)
    {
      CFRelease(v20);
      v23[0] = 0;
    }

    CMSMNotificationUtility_PostActiveNeroVisualStreamDidChange(v20, v18);
    CMSMNotificationUtility_PostActiveNeroVisualStreamInfoDidChange();
    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a2, a1, @"configUpdateReasonEndedSuccess", a3);
    FigRoutingManagerPostProcessPickEndpoint(a1, a2);
    FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
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

void FigRoutingManagerHandleEndpointPlaybackActivation(const void *a1, const void *a2, uint64_t a3)
{
  if (FigRoutingManagerContextUtilities_GetContextType(a2) == 5)
  {
    if (CMSMVAUtility_IsPortAvailableForEndpoint(a1, 0))
    {
      FigRoutingManagerContextUtilities_SetPickingState(a2, 9);
      CMSMVAUtility_CreatePerAppAirPlayVADIfNeeded(0, a1, a2);
      FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a2, a1, @"configUpdateReasonEndedSuccess", a3);
      FigRoutingManagerPostProcessPickEndpoint(a1, a2);
      v6 = 0;
    }

    else
    {
      v6 = 8;
    }

    FigRoutingManagerContextUtilities_SetPickingState(a2, v6);
  }

  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]))
  {

    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a2, @"currentRouteChanged", 0);
  }
}

uint64_t FigRoutingManagerHandleEndpointControlActivation(const void *a1, const void *a2, uint64_t a3)
{
  FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a2, a1, @"configUpdateReasonEndedSuccess", a3);
  FigRoutingManagerPostProcessPickEndpoint(a1, a2);

  return FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
}

uint64_t FigRoutingManager_iOSActivateEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(a1, a2, a3, a4);
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(a1, a2);
  cf = 0;
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
    }
  }

  FigEndpointDescriptorUtilitySetUserManualRoute(a1, a3);
  if (dword_1EB75DF20)
  {
    LODWORD(v42) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]) || FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B0]))
  {
    EndpointDelegateContext = FigRoutingManagerCreateEndpointDelegateContext(a2, a3, a4);
    v16 = malloc_type_malloc(0x18uLL, 0x60040149E097CuLL);
    if (a1)
    {
      v17 = CFRetain(a1);
    }

    else
    {
      v17 = 0;
    }

    v16[1] = v17;
    v16[2] = EndpointDelegateContext;
    *v16 = 0;
    SharedManager = FigRoutingManagerGetSharedManager(v17, v15);
    FigSimpleMutexLock();
    if (SharedManager[8])
    {
      *SharedManager[9] = v16;
    }

    else
    {
      SharedManager[8] = v16;
    }

    SharedManager[9] = v16;
    FigSimpleMutexUnlock();
    if (FigRoutingManagerIsEndpointOfSubtype(a1, *MEMORY[0x1E6962600]))
    {
      v45 = EndpointDelegateContext;
      v46 = 0;
      v47 = FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate;
      v48 = FigRoutingManager_HandleDidCloseCommChannelDelegate;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v19)
      {
        v19(a1, &v45);
      }
    }

    v48 = 0;
    v49 = 0;
    v45 = EndpointDelegateContext;
    v46 = FigRoutingManager_HandleAuthorizationRequiredDelegate;
    v47 = FigRoutingManager_iOSHandleEndpointFailedDelegate;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v20)
    {
      v20(a1, &v45);
    }
  }

  if (v8)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"authInfo");
    if (Value)
    {
      FigRoutingManager_SetAuthorizationOnEndpoint(a1, Value);
    }
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
  v43 = 0;
  FigRoutingManagerContextUtilities_GetPickingState(a2, &v43);
  if (!FigRoutingManagerIsEndpointOfType(a1, v13) && !FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B0]))
  {
    if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]) || FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C8]))
    {
      FigRoutingManagerContextUtilities_SetPickingState(a2, 5);
      v45 = 0;
      FigRoutingManagerCreateEndpointActivateCompletionContext(a2, a3, a4, EndpointActivateOptions, &v45);
      v8 = FigRoutingManagerEndpointActivateWithCompletionCallback(a1, FigEndpointFeatures, EndpointActivateOptions, FigRoutingManager_iOSEndpointActivateCompletionCallback, v45);
      goto LABEL_31;
    }

    if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D8]))
    {
      v8 = 0;
      if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B8]) && ContextType != 13)
      {
        v45 = 0;
        FigRoutingManagerCreateEndpointActivateCompletionContext(a2, a3, a4, EndpointActivateOptions, &v45);
        FigRoutingManagerEndpointActivateWithCompletionCallback(a1, FigEndpointFeatures, EndpointActivateOptions, FigRoutingManager_iOSEndpointActivateCompletionCallback, v45);
        v8 = 0;
      }

      goto LABEL_31;
    }

    FigRoutingManagerContextUtilities_SetPickingState(a2, 6);
    v8 = FigEndpointActivate();
    v42 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, &v42);
    if (v8)
    {
      FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a2, a1, @"configUpdateReasonEndedFailed");
      FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
      goto LABEL_73;
    }

    if (FigRoutingManagerIsEndpointOfType(v42, v13))
    {
      FigRoutingManagerDeactivateEndpointFromPickedContexts(v42, a2, 1, @"configUpdateReasonEndedSuccess");
    }

    if (ContextType == 13)
    {
      CurrentInputPortAtIndex = CMSMUtility_GetCurrentInputPortAtIndex(0);
      v27 = vaeCopyDeviceIdentifierFromVADPort(CurrentInputPortAtIndex);
      if (v27)
      {
        v40 = v27;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObject:v27];
LABEL_52:
        v38 = v27;
        v28 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v27, a2);
        v29 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v28, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, v28, @"configUpdateReasonEndedSuccess", a3, v29);
        FigRoutingManagerPostProcessPickEndpoint(a1, a2);
        if (ContextType == 13)
        {
          CurrentOutputPortAtIndex = CMSMUtility_GetCurrentInputPortAtIndex(0);
        }

        else
        {
          CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
        }

        v31 = CurrentOutputPortAtIndex;
        v32 = vaeCopySpecificNameForPort(CurrentOutputPortAtIndex);
        v33 = vaeCopyDeviceIdentifierFromVADPort(v31);
        *type = 0;
        v34 = *MEMORY[0x1E69620F8];
        v35 = *MEMORY[0x1E695E480];
        v36 = FigEndpointGetCMBaseObject();
        CMBaseObjectCopyProperty(v36, v34, v35, type);
        if (!FigCFEqual())
        {
          if (dword_1EB75DF20)
          {
            v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a2, a1, @"configUpdateReasonEndedFailed");
        }

        FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
        if (*type)
        {
          CFRelease(*type);
          *type = 0;
        }

        if (v33)
        {
          CFRelease(v33);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (v40)
        {
          CFRelease(v40);
        }

LABEL_73:
        v24 = v42;
        if (v42)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v27 = CMSMUtility_CopyCurrentRouteIdentifiers();
    }

    v40 = 0;
    goto LABEL_52;
  }

  if (ContextType <= 6 && ((1 << ContextType) & 0x6E) != 0)
  {
    FigRoutingManagerContextUtilities_SetPickingState(a2, 5);
  }

  v45 = 0;
  FigRoutingManagerCreateEndpointActivateCompletionContext(a2, a3, a4, EndpointActivateOptions, &v45);
  FigRoutingManagerCrossfadePlayback(a1, a3, 1, 1);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v8 = FigRoutingManagerEndpointActivateWithCompletionCallback(a1, FigEndpointFeatures, MutableCopy, FigRoutingManager_iOSEndpointActivateCompletionCallback, v45);
  if (MutableCopy)
  {
    v24 = MutableCopy;
LABEL_30:
    CFRelease(v24);
  }

LABEL_31:
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

void FigRoutingManager_iOSHandleEndpointFailedDelegate(const void *a1, uint64_t a2, const void *a3, const void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 && a3)
  {
    v7 = a1;
    if (dword_1EB75DF20)
    {
      v13 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      a1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
    CFRetain(v7);
    CFRetain(a3);
    if (a4)
    {
      CFRetain(a4);
    }

    v10 = *(SharedManager + 1);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __FigRoutingManager_iOSHandleEndpointFailedDelegate_block_invoke;
    v11[3] = &__block_descriptor_64_e5_v8__0l;
    v11[4] = a4;
    v11[5] = a3;
    v11[6] = v7;
    v11[7] = a2;
    MXDispatchAsync("FigRoutingManager_iOSHandleEndpointFailedDelegate", "FigRoutingManager_iOSEndpointHelpers.m", 1533, 0, 0, v10, v11);
  }
}

void FigRoutingManager_iOSEndpointDeactivateCompletionCallback(CFTypeRef cf, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a5)
  {
    v10 = *(a5 + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 timeIntervalSinceNow];
  v13 = fabs(v12) * 1000.0;
  SharedManager = FigRoutingManagerGetSharedManager(v11, v14);
  v16 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v17 = *(SharedManager + 1);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __FigRoutingManager_iOSEndpointDeactivateCompletionCallback_block_invoke;
  v18[3] = &unk_1E7AEA488;
  v18[4] = v16;
  v18[5] = cf;
  v19 = a4;
  v18[6] = a3;
  v18[7] = a2;
  v20 = v13;
  v18[8] = a5;
  v18[9] = a5;
  MXDispatchAsync("FigRoutingManager_iOSEndpointDeactivateCompletionCallback", "FigRoutingManager_iOSEndpointHelpers.m", 1016, 0, 0, v17, v18);
}

double FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(const void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    routingManager_resetScreenSettings(a1);
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E69622F8], *MEMORY[0x1E695E480], &cf);
    }

    theArray = 0;
    FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(a3, &theArray);
    if (!theArray)
    {
      goto LABEL_12;
    }

    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      goto LABEL_12;
    }

    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      if (CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint") == a1)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }

    Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_EndpointTransportType");
    if (Value)
    {
      v13 = CFRetain(Value);
    }

    else
    {
LABEL_12:
      v13 = 0;
    }

    CMScreenHandleDeactivation(cf, v13);
    if (FigCFEqual())
    {
      CMSMNotificationUtility_PostActiveNeroVisualStreamInfoDidChange();
      CMSMNotificationUtility_PostActiveNeroVisualStreamDidChange(v15, v16);
    }

    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if ((a2 & 4) != 0 && FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]))
  {
    v17 = FigEndpointGetCMBaseObject();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v18)
    {
      v18(v17, *MEMORY[0x1E6962118], *MEMORY[0x1E695E4C0]);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return result;
}

const void *FigRoutingManagerUnregisterFromFigEndpointNotifications(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(result, *MEMORY[0x1E69626B0]))
    {
      FigVolumeControllerRemoveAirPlayVolumeNotificationListeners(v1);
      v16 = 0;
      FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v16);
      cf = 0;
      v3 = FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v16, &cf);
      if (cf)
      {
        if (MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled(v3, v4))
        {
          FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(cf, v1);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    v5 = *MEMORY[0x1E69626A8];
    IsEndpointOfType = FigRoutingManagerIsEndpointOfType(v1, *MEMORY[0x1E69626A8]);
    if (IsEndpointOfType)
    {
      FigRoutingManagerGetSharedManager(IsEndpointOfType, v7);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
    }

    v8 = FigRoutingManagerIsEndpointOfType(v1, *MEMORY[0x1E69626C8]);
    if (v8 || (v8 = FigRoutingManagerIsEndpointOfType(v1, v2), v8))
    {
      FigRoutingManagerGetSharedManager(v8, v9);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
    }

    result = FigRoutingManagerIsEndpointOfType(v1, v5);
    if (!result)
    {
      result = FigRoutingManagerIsEndpointOfType(v1, v2);
      if (!result)
      {
        FigRoutingManagerGetSharedManager(result, v10);
        CMNotificationCenterGetDefaultLocalCenter();
        v11 = CMNotificationCenterRemoveListener();
        FigRoutingManagerGetSharedManager(v11, v12);
        CMNotificationCenterGetDefaultLocalCenter();
        v13 = CMNotificationCenterRemoveListener();
        FigRoutingManagerGetSharedManager(v13, v14);
        CMNotificationCenterGetDefaultLocalCenter();
        return CMNotificationCenterRemoveListener();
      }
    }
  }

  return result;
}

void routingManager_resetScreenSettings(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    theArray = 0;
    FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(1, &theArray, 0, &v1, 0);
    if ((!theArray || !CFArrayGetCount(theArray)) && (!v1 || !CFArrayGetCount(v1) || FigCFArrayContainsValue()))
    {
      CMScreenSetMirroringMode(0);
      CMScreenSetVirtualDisplayClientPID(0);
    }

    if (v1)
    {
      CFRelease(v1);
      v1 = 0;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }
}

void FigRoutingManagerSetMirroringModeOnBKSDisplayServices(const __CFDictionary *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a1)
  {
    CFDictionaryGetValue(a1, *MEMORY[0x1E6961670]);
    CFDictionaryGetValue(a1, *MEMORY[0x1E6961668]);
  }

  if (a3)
  {
    FigCFDictionaryGetInt32IfPresent();
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
  if (a4)
  {
    v9 = 1;
LABEL_7:
    CMScreenSetMirroringMode(v9);
    return;
  }

  if (ContextType == 6)
  {
    CMScreenSetMirroringMode(2);
    CMScreenSetVirtualDisplayClientPID(-1);
    return;
  }

  if (ContextType == 2)
  {
    v9 = 0;
    goto LABEL_7;
  }
}

void FigRoutingManagerResumeCurrentEndpointScreen(uint64_t a1)
{
  if (a1)
  {
    v9 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &v9);
    if (v9)
    {
      v8 = 0;
      v1 = *MEMORY[0x1E695E480];
      FigEndpointCopyFirstStreamOfType();
      cf = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v3)
      {
        v3(CMBaseObject, *MEMORY[0x1E69622F8], v1, &cf);
      }

      v6 = 0;
      v4 = FigEndpointGetCMBaseObject();
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v5)
      {
        v5(v4, *MEMORY[0x1E69622F0], v1, &v6);
      }

      if (v8)
      {
        CMScreenResumeStream(v8);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v6)
      {
        CFRelease(v6);
        v6 = 0;
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

void FigRoutingManagerSuspendCurrentEndpointScreen(uint64_t a1)
{
  if (a1)
  {
    v9 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &v9);
    if (v9)
    {
      v8 = 0;
      v1 = *MEMORY[0x1E695E480];
      FigEndpointCopyFirstStreamOfType();
      cf = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v3)
      {
        v3(CMBaseObject, *MEMORY[0x1E69622F8], v1, &cf);
      }

      v6 = 0;
      v4 = FigEndpointGetCMBaseObject();
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v5)
      {
        v5(v4, *MEMORY[0x1E69622F0], v1, &v6);
      }

      if (v8)
      {
        CMScreenSuspendStream(v8);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v6)
      {
        CFRelease(v6);
        v6 = 0;
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

void routingManager_handleFigEndpointDeactivatedNotification(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
  v13 = 0;
  FigCFDictionaryGetInt64IfPresent();
  v12 = 0;
  Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v9 = *(SharedManager + 1);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __routingManager_handleFigEndpointDeactivatedNotification_block_invoke;
  v10[3] = &__block_descriptor_65_e5_v8__0l;
  v11 = Int64IfPresent;
  v10[4] = a4;
  v10[5] = v13;
  v10[6] = v12;
  v10[7] = a3;
  MXDispatchAsync("routingManager_handleFigEndpointDeactivatedNotification", "FigRoutingManager_iOSEndpointHelpers.m", 1748, 0, 0, v9, v10);
}

void __routingManager_handleFigEndpointDeactivatedNotification_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695E480];
  if (!*(a1 + 64))
  {
    cf[0] = 0;
    if (*(a1 + 32))
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(CMBaseObject, *MEMORY[0x1E69622F8], *v2, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }
  }

  v19 = 0;
  v20 = 0;
  if (*(a1 + 32))
  {
    v3 = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(v3, *MEMORY[0x1E69621E8], *v2, &v19);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigRoutingManagerIsEndpointOfType(*(a1 + 32), *MEMORY[0x1E69626C0]))
  {
    v8 = CMSMUtility_CopySystemAudioRoutingContextUUID();
    v20 = v8;
    EndpointManager = FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618E0]);
    FigRoutingManagerProcessCarPlayEndpointDeactivation(0, *(a1 + 32));
    cf[0] = 0;
    v10 = FigEndpointManagerGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, *MEMORY[0x1E69618B8], *v2, cf);
    }

    v12 = FigRoutingManagerCopyEndpointToAutoConnect(EndpointManager);
    if (v12)
    {
      v13 = v12;
      FigRoutingManagerProcessEndpointToAutoconnect(v12, cf[0]);
      CFRelease(v13);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    active = FigEndpointServerSetActiveEndpoint();
    if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(active, v15))
    {
      FigRoutingManagerSetUpSystemRemoteDisplayContextWithEndpoint(0, *(a1 + 32));
    }

    routingManager_resetCurrentlyActivatingCarPlayEndpointIfNeeded(*(a1 + 32), @"configUpdateReasonEndedFailed");
    FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 32), *(a1 + 40), v8);
    FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v8, *(a1 + 32), *(a1 + 48));
    FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(0, *(a1 + 32));
  }

  else if (FigRoutingManagerIsEndpointOfType(*(a1 + 32), *MEMORY[0x1E69626C8]))
  {
    v16 = [+[MXSessionManager sharedInstance](MXSessionManager systemMirroringRoutingContextUUID];
    v20 = v16;
    FigRoutingManagerContextUtilities_SetPickedEndpoints(v16, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
    FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 32), *(a1 + 40), v16);
    FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v16, *(a1 + 32), *(a1 + 48));
  }

  else if (FigRoutingManagerIsEndpointOfType(*(a1 + 32), *MEMORY[0x1E69626A8]))
  {
    FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint(*(a1 + 32), *(a1 + 48), &v20);
    if (v20)
    {
      FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 32), *(a1 + 40), v20);
      FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v20, *(a1 + 32), *(a1 + 48));
      FigRoutingManagerRemoveCachedDelegateContext(*(a1 + 32), v20);
    }
  }

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (v20)
  {
    CFRelease(v20);
    v20 = 0;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    CFRelease(v18);
  }
}

void routingManager_resetCurrentlyActivatingCarPlayEndpointIfNeeded(const void *a1, uint64_t a2)
{
  v4 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(v4, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (CFArrayGetValueAtIndex(theArray, v7) != a1)
      {
        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(v4, a1, a2);
    }

LABEL_8:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void routingManager_handleEndpointFailedNotification(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v24 = 0;
    v25 = 0;
    v7 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, *MEMORY[0x1E69621E8], v7, &v24);
    }

    cf = 0;
    v10 = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, *MEMORY[0x1E69622F8], v7, &cf);
    }

    Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
    if (dword_1EB75DF20)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    IsEndpointOfType = FigRoutingManagerIsEndpointOfType(a4, *MEMORY[0x1E69626A8]);
    if (IsEndpointOfType)
    {
      MXSimulateCrash("This is unexpected. Please file a radar to MediaExperience (New Bugs) | All.");
    }

    else
    {
      SharedManager = FigRoutingManagerGetSharedManager(IsEndpointOfType, v15);
      CFRetain(a4);
      if (cf)
      {
        CFRetain(cf);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      if (v24)
      {
        CFRetain(v24);
        v17 = v24;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(SharedManager + 1);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __routingManager_handleEndpointFailedNotification_block_invoke;
      v19[3] = &__block_descriptor_73_e5_v8__0l;
      v20 = Int64IfPresent;
      v19[4] = a5;
      v19[5] = a4;
      v19[6] = v25;
      v19[7] = cf;
      v19[8] = v17;
      MXDispatchAsync("routingManager_handleEndpointFailedNotification", "FigRoutingManager_iOSEndpointHelpers.m", 1473, 0, 0, v18, v19);
    }

    if (v24)
    {
      CFRelease(v24);
      v24 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void __routingManager_handleEndpointFailedNotification_block_invoke(uint64_t a1)
{
  if (*(a1 + 72))
  {
    FigCFDictionaryGetInt64IfPresent();
    FigRoutingManager_HandleEndpointFailed(*(a1 + 40), *(a1 + 48), 0, 1, 0);
  }

  if (FigCFEqual())
  {
    routingManager_resetCurrentlyActivatingCarPlayEndpointIfNeeded(*(a1 + 40), @"configUpdateReasonEndedFailed");
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
  }
}

void routingManager_handleEndpointFeaturesChangedNotification(CFTypeRef a1, uint64_t a2, int a3, CFTypeRef cf, CFTypeRef a5)
{
  if (cf)
  {
    a1 = CFRetain(cf);
  }

  if (a5)
  {
    a1 = CFRetain(a5);
  }

  v7 = *(FigRoutingManagerGetSharedManager(a1, a2) + 1);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __routingManager_handleEndpointFeaturesChangedNotification_block_invoke;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a5;
  v8[5] = cf;
  MXDispatchAsync("routingManager_handleEndpointFeaturesChangedNotification", "FigRoutingManager_iOSEndpointHelpers.m", 1872, 0, 0, v7, v8);
}

void __routingManager_handleEndpointFeaturesChangedNotification_block_invoke(uint64_t a1)
{
  v18[16] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18[0] = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint(*(a1 + 40), v14, v18);
  *theArray = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(v18[0], theArray);
  if (*theArray && (Count = CFArrayGetCount(*theArray), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    Value = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*theArray, v7);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_ClientRouteChangeOptions");
        CFDictionaryGetValue(v10, @"ActivatedEndpointsInfo_InternalRouteChangeOptions");
      }

      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    Value = 0;
  }

  if (v15)
  {
    CMSMUtility_InformAirPlayOfAudioModeIfNecessary(v18[0]);
    FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(*(a1 + 40), v16, v14, v18[0], Value);
  }

  else
  {
    FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(*(a1 + 40), v16, v18[0]);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v18[0])
  {
    CFRelease(v18[0]);
    v18[0] = 0;
  }

  if (*theArray)
  {
    CFRelease(*theArray);
    *theArray = 0;
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

void routingManager_handleAirPlayVolumeControlDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  v7 = VTable + 8;
  v9 = *(v8 + 48);
  if (v9)
  {
    v7 = v9(CMBaseObject, *MEMORY[0x1E6962340], *MEMORY[0x1E695E480], cf);
  }

  if (dword_1EB75DF20)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v7 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  SharedManager = FigRoutingManagerGetSharedManager(v7, v6);
  if (cf[0])
  {
    CFRetain(cf[0]);
    v12 = cf[0];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(SharedManager + 1);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __routingManager_handleAirPlayVolumeControlDidChange_block_invoke;
  v14[3] = &__block_descriptor_40_e5_v8__0l;
  v14[4] = v12;
  MXDispatchAsync("routingManager_handleAirPlayVolumeControlDidChange", "FigRoutingManager_iOSEndpointHelpers.m", 1851, 0, 0, v13, v14);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

void __routingManager_handleAirPlayVolumeControlDidChange_block_invoke(uint64_t a1)
{
  vaemHandleVolumeControlDidChange(*(a1 + 32) == *MEMORY[0x1E695E4D0]);
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigEndpointCreateCentral(uint64_t IsEndpointOfType, const void *a2, void *a3, CFTypeRef *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 && !FigRoutingManagerIsEndpointOfType(a2, *MEMORY[0x1E69626C0]))
  {
    v17 = 4294954311;
    goto LABEL_19;
  }

  if (!a4)
  {
    if (FigEndpointCreateCentral_cold_1(v21))
    {
      return 0;
    }

    v17 = v21[0];
    goto LABEL_19;
  }

  FigEndpointExtendedGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    goto LABEL_12;
  }

  gFigEndpointCentralObjectWeakRef = FigCFWeakReferenceHolderCreateWithReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigStarkModeControllerCreate((DerivedStorage + 24));
  if (v7)
  {
    goto LABEL_12;
  }

  v9 = fsmcontroller_CopyCarModesQueue(*(DerivedStorage + 24));
  *(DerivedStorage + 48) = v9;
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(v9, v10))
  {
    goto LABEL_7;
  }

  v14 = *(DerivedStorage + 24);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v16)
  {
    v17 = 4294954514;
    goto LABEL_19;
  }

  v7 = v16(CMBaseObject, *MEMORY[0x1E6962258], v14);
  if (v7)
  {
LABEL_12:
    v17 = v7;
LABEL_19:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v17;
  }

LABEL_7:
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.coremedia.figEndpointcentral.modechangequeue", v11);
  *(DerivedStorage + 32) = v12;
  if (!v12)
  {
    v17 = 4294954314;
    goto LABEL_19;
  }

  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(DerivedStorage + 8) = v13;
  if (a3)
  {
    v18 = a3;
    *(DerivedStorage + 16) = v18;
    CMSessionGetNotificationCenter(v18);
    CMNotificationCenterAddListener();
  }

  *(DerivedStorage + 40) = FigStarkModeControllerAddStateChangedHandler(*(DerivedStorage + 24), *(DerivedStorage + 32), &__block_literal_global_9);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v17 = 0;
  *a4 = 0;
  return v17;
}

void central_interruptionNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v8 = DerivedStorage;
    if (FigCFEqual())
    {
      v9 = *(v8 + 48);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __central_interruptionNotificationCallback_block_invoke;
      v11[3] = &__block_descriptor_56_e5_v8__0l;
      v11[4] = v8;
      v11[5] = a4;
      v11[6] = a5;
      MXDispatchSync("central_interruptionNotificationCallback", "FigEndpoint_Central.m", 979, 0, 0, v9, v11);
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t FigEndpointCentralGetInitialModesReceived(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

uint64_t FigEndpointSessionHandleInterruption(void *DerivedStorage, __int128 *a2, uint64_t a3, void *a4, char a5)
{
  if (*a2 == 1)
  {
    v14 = *(a2 + 2);
    v15 = *(a2 + 6);
    v24 = 0u;
    v25 = 0u;
    v31 = 0u;
    memset(v32, 0, 24);
    v29 = 0u;
    v30 = 0u;
    if (DerivedStorage)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v17 = DerivedStorage;
        *&v29 = 0x200000002;
        if (!FigCFEqual())
        {
          if (FigCFEqual())
          {
            *(v32 + 12) = v14;
            DWORD2(v32[0]) = v15;
            if (a4)
            {
              if (FigCFEqual())
              {
                *&v31 = 23;
                LODWORD(v32[0]) = 0;
                v18 = v17[3];
                CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
                v12 = fsmcontroller_RequestModeChange(v18, &v29, CStringPtrAndBufferToFree, &v24, a5);
                DerivedStorage = 0;
                goto LABEL_25;
              }
            }
          }
        }

        DerivedStorage = 0;
      }
    }

    v12 = 0;
LABEL_25:
    free(DerivedStorage);
    CMSMNotificationUtility_PostVoicePromptStyleDidChange();
    return v12;
  }

  if (!*a2)
  {
    v21 = *a2;
    v22 = a2[1];
    v23 = *(a2 + 4);
    v28 = 0;
    if (DerivedStorage)
    {
      v6 = CMBaseObjectGetDerivedStorage();
      if (v6)
      {
        v7 = v6;
        memset(v27, 0, sizeof(v27));
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        memset(v32, 0, 24);
        v24 = v21;
        v25 = v22;
        v26 = v23;
        v8 = central_ConstructModeChangeRequestToGet(a4, @"MainAudio", &v24, &v29);
        if (v8)
        {
          v12 = v8;
          goto LABEL_24;
        }

        v9 = *(v7 + 24);
        v10 = FigCFStringGetCStringPtrAndBufferToFree();
        v11 = fsmcontroller_RequestModeChange(v9, &v29, v10, v27, 0);
        v12 = 4294954311;
        if (v11 || DWORD2(v27[0]) != 2)
        {
          goto LABEL_24;
        }

        if (a4)
        {
          if ((v31 - 20) > 3)
          {
            v13 = 0;
          }

          else
          {
            v13 = *(&off_1E7AEA590 + (v31 - 20));
          }

          v12 = 0;
          *a4 = v13;
          goto LABEL_24;
        }
      }
    }

    v12 = 0;
LABEL_24:
    DerivedStorage = v28;
    goto LABEL_25;
  }

  return 0;
}

uint64_t FigEndpointCentralGetResourceTypeBorrowConstraint(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v4 = *(DerivedStorage + 24);

  return FigStarkModeControllerGetCurrentResourceBorrowConstraint(v4, a2);
}

uint64_t FigEndpointCentralEntityOwnsResource(uint64_t a1, uint64_t a2, const void *a3)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = CMBaseObjectGetDerivedStorage();
        if (result)
        {
          memset(v6, 0, sizeof(v6));
          fsmcontroller_GetCurrentMode(*(result + 24), v6);
          if (CFEqual(a3, @"MainAudio"))
          {
            return FigCFEqual();
          }

          result = CFEqual(a3, @"Screen");
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

void __FigEndpointCentralUpdateiOSDeviceState_block_invoke(uint64_t a1, int a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t FigEndpointCentralCopyStarkModeController(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  result = 4294954316;
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v6 = *(DerivedStorage + 24);
      if (v6)
      {
        v7 = CFRetain(v6);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *a2 = v7;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 4294954315;
    }
  }

  return result;
}

void central_Finalize(uint64_t a1)
{
  central_deactivateEndpoint(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 32) = 0;
  }

  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *central_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigEndpointCentral %p>", a1);
  return Mutable;
}

void central_deactivateEndpoint(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __central_deactivateEndpoint_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = DerivedStorage;
  v4[5] = a1;
  MXDispatchSync("central_deactivateEndpoint", "FigEndpoint_Central.m", 1106, 0, 0, v3, v4);
}

void __central_deactivateEndpoint_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __central_deactivateEndpoint_block_invoke_2;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = *(a1 + 40);
  MXDispatchSync("central_deactivateEndpoint_block_invoke", "FigEndpoint_Central.m", 1107, 0, 0, v1, v2);
}

void __central_deactivateEndpoint_block_invoke_2(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    FigStarkModeControllerRemoveStateChangedHandler(*(DerivedStorage + 24), *(DerivedStorage + 40));
    *(v2 + 40) = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = FigNotificationCenterRemoveWeakListener();
    *(v2 + 1) = 0;
    *(v2 + 3) = 0;
    if (*(v2 + 16))
    {
      CMSessionGetNotificationCenter(v3);
      CMNotificationCenterRemoveListener();
      v4 = *(v2 + 16);
      *(v2 + 16) = 0;
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(v2 + 24) = 0;
    }

    v6 = *(v2 + 8);
    if (v6)
    {
      CFRelease(v6);
      *(v2 + 8) = 0;
    }
  }
}

uint64_t central_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __central_SetDelegateRemoteControl_block_invoke;
  v7[3] = &unk_1E7AE7140;
  v7[4] = &v8;
  v7[5] = DerivedStorage;
  v7[6] = a2;
  MXDispatchSync("central_SetDelegateRemoteControl", "FigEndpoint_Central.m", 1233, 0, 0, v4, v7);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t central_RequestCarUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __central_RequestCarUI_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  MXDispatchSync("central_RequestCarUI", "FigEndpoint_Central.m", 1340, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1B1870E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t central_SetHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __central_SetHIDInputMode_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  MXDispatchSync("central_SetHIDInputMode", "FigEndpoint_Central.m", 1470, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1B1870F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t central_CopyHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __central_CopyHIDInputMode_block_invoke;
  v11[3] = &unk_1E7AE79A8;
  v11[4] = &v12;
  v11[5] = DerivedStorage;
  v11[6] = a2;
  v11[7] = a3;
  v11[8] = a4;
  MXDispatchSync("central_CopyHIDInputMode", "FigEndpoint_Central.m", 1500, 0, 0, v8, v11);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t central_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(CMBaseObjectGetDerivedStorage() + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __central_SendCommand_block_invoke;
  v12[3] = &__block_descriptor_72_e5_v8__0l;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  v12[8] = a5;
  MXDispatchSync("central_SendCommand", "FigEndpoint_Central.m", 1530, 0, 0, v10, v12);
  return 0;
}

uint64_t central_CreateRemoteControlSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (!v6 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __central_CreateRemoteControlSession_block_invoke;
  v10[3] = &unk_1E7AE79A8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = v6;
  v10[7] = a2;
  v10[8] = a3;
  MXDispatchSync("central_CreateRemoteControlSession", "FigEndpoint_Central.m", 1582, 0, 0, v7, v10);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t central_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (!v6 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __central_CreateCommChannel_block_invoke;
  v10[3] = &unk_1E7AE79A8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = v6;
  v10[7] = a2;
  v10[8] = a3;
  MXDispatchSync("central_CreateCommChannel", "FigEndpoint_Central.m", 1609, 0, 0, v7, v10);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t central_SendData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t), uint64_t a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 8);
  if (!v11 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 48);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __central_SendData_block_invoke;
  v15[3] = &unk_1E7AE7AB8;
  v15[4] = &v16;
  v15[5] = DerivedStorage;
  v15[6] = v11;
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a4;
  v15[10] = a5;
  MXDispatchSync("central_SendData", "FigEndpoint_Central.m", 1636, 0, 0, v12, v15);
  v13 = *(v17 + 6);
  if (v13 == -12782)
  {
    if (!a4)
    {
      v13 = 4294954514;
      goto LABEL_10;
    }

LABEL_9:
    a4(a1, a2, *(v17 + 6), a5);
    v13 = *(v17 + 6);
    goto LABEL_10;
  }

  if (a4 && v13 == -12785)
  {
    goto LABEL_9;
  }

LABEL_10:
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_1B1871510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t central_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  if (!v4 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __central_CloseCommChannel_block_invoke;
  v8[3] = &unk_1E7AE7A48;
  v8[4] = &v9;
  v8[5] = DerivedStorage;
  v8[6] = v4;
  v8[7] = a2;
  MXDispatchSync("central_CloseCommChannel", "FigEndpoint_Central.m", 1666, 0, 0, v5, v8);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1B187162C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t central_RequestScreenViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (!v6 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __central_RequestScreenViewArea_block_invoke;
  v10[3] = &unk_1E7AE79A8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = v6;
  v10[7] = a2;
  v10[8] = a3;
  MXDispatchSync("central_RequestScreenViewArea", "FigEndpoint_Central.m", 1693, 0, 0, v7, v10);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t central_CopyCurrentScreenViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (!v6 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __central_CopyCurrentScreenViewArea_block_invoke;
  v10[3] = &unk_1E7AE79A8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = v6;
  v10[7] = a2;
  v10[8] = a3;
  MXDispatchSync("central_CopyCurrentScreenViewArea", "FigEndpoint_Central.m", 1720, 0, 0, v7, v10);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}