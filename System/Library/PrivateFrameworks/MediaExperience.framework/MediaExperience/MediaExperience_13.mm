void figEndpointDescriptorUtility_addBTDetailsToDescriptor(uint64_t a1, CFMutableDictionaryRef theDict)
{
  if (theDict)
  {
    v4 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(theDict, @"RouteSupportsAudio", *MEMORY[0x1E695E4D0]);
    cf = 0;
    v5 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E6962130], v5, &cf);
    }

    if (FigCFEqual())
    {
      CFDictionarySetValue(theDict, @"RouteType", @"Wireless");
      CFDictionarySetValue(theDict, @"IsBTRoute", v4);
      CFDictionarySetValue(theDict, @"AudioRouteName", @"HeadphonesBT");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962110], theDict, @"IsBluetoothShareable");
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v8 = *MEMORY[0x1E69621D8];
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D8], theDict, @"RouteModel");
    figEndpointDescriptorUtility_setDescriptorKey(a1, v8, theDict, @"BTDetails_ProductID");
    if (MX_FeatureFlags_IsCounterfeitDetectionEnabled(v9, v10))
    {
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962138], theDict, @"IsGenuineAppleAccessory");
    }

    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622C8], theDict, @"SupportsSmartRouting");
    if (MX_FeatureFlags_IsConversationDetectSupported(v11, v12))
    {
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962290], theDict, @"SupportsConversationDetect");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962058], theDict, @"ConversationDetectEnable");
    }

    theDicta = 0;
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, *MEMORY[0x1E6961FE0], v5, &theDicta);
      if (theDicta)
      {
        Value = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616D0]);
        if (Value)
        {
          CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelLeft", Value);
        }

        v16 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616D8]);
        if (v16)
        {
          CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelRight", v16);
        }

        v17 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616C8]);
        if (v17)
        {
          CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelCase", v17);
        }

        v18 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616E0]);
        if (v18)
        {
          CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelSingle", v18);
        }

        CFRelease(theDicta);
      }
    }
  }
}

void figEndpointDescriptorUtility_addMissingEntriesApplierFunction(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (!CFDictionaryContainsKey(theDict, key))
  {

    CFDictionarySetValue(theDict, key, a2);
  }
}

OpaqueFigEndpoint *FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(a1, a2) && FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay(a2, v4))
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, &cf);
    FigCFDictionaryGetValue();
    v10 = 0;
    if (cf)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &v10);
      }
    }

    if (FigCFEqual())
    {
      if (!cf)
      {
        v9 = 0;
LABEL_16:
        if (v10)
        {
          CFRelease(v10);
        }

        return v9;
      }

      v9 = CFRetain(cf);
    }

    else
    {
      v9 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_16;
  }

  v7 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v7 copyEndpointFromRouteDescriptor:a1 routingContextUUID:a2 retryCount:1];
}

id FigEndpointDescriptorUtility_CopyEndpointArrayFromDescriptors(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(*(*(&v12 + 1) + 8 * v8), a2);
        if (v9)
        {
          v10 = v9;
          [v4 addObject:v9];
          CFRelease(v10);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

void FigEndpointDescriptorUtilitySetUserManualRoute(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B8]))
    {
      v3 = MEMORY[0x1E6962318];
      if (dword_1EB75DF60)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v8 = MEMORY[0x1E695E4C0];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v10)
      {
        v10(CMBaseObject, *v3, *v8);
      }
    }

    else if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D8]))
    {
      v5 = FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint(a1);
      if (v5)
      {
        v6 = v5;
        if (dword_1EB75DF60)
        {
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v11 = MEMORY[0x1E695E4C0];
        v12 = FigEndpointGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v13)
        {
          v13(v12, *MEMORY[0x1E6962318], *v11);
        }

        CFRelease(v6);
      }
    }
  }
}

void sub_1B191C25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

os_log_t __MXGetAssertionLog_block_invoke()
{
  result = os_log_create("com.apple.mediaexperience", "Assertion");
  MXGetAssertionLog__log = result;
  return result;
}

os_log_t __MXGetSessionLog_block_invoke()
{
  result = os_log_create("com.apple.mediaexperience", "Session");
  MXGetSessionLog__log = result;
  return result;
}

os_log_t __MXGetPerformanceLog_block_invoke()
{
  result = os_log_create("com.apple.mediaexperience", "Performance");
  MXGetPerformanceLog__log = result;
  return result;
}

void MXDebugInstallSysdiagnoseBlock(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [+[MXDebugPlatform sharedInstance](MXDebugPlatform installSysdiagnoseBlock:"installSysdiagnoseBlock:blockToRun:" blockToRun:a1, a2];

  objc_autoreleasePoolPop(v4);
}

void MXSimulateCrash(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [+[MXDebugPlatform sharedInstance](MXDebugPlatform simulateCrash:"simulateCrash:", a1];

  objc_autoreleasePoolPop(v2);
}

void sub_1B1924AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAPSubjectClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("APSubject");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getAPSubjectClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getAPSubjectClass_block_invoke_cold_1();
    AppProtectionLibrary();
  }
}

void AppProtectionLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __AppProtectionLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7AEC7A8;
    v3 = 0;
    AppProtectionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppProtectionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAPApplicationClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  result = objc_getClass("APApplication");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getAPApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getAPApplicationClass_block_invoke_cold_1();
    return _CMSessionCreate(v3);
  }

  return result;
}

uint64_t _CMSessionCreate(uint64_t *a1)
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

uint64_t _CMSessionCreateForRemoteDeviceID(uint64_t a1, uint64_t *a2)
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
    v7 = _CMSessionCreate(a2);
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

void CMSessionFinalize(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(a1 + 24))
  {
    *(a1 + 24) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = FigNotificationCenterRemoveWeakListener();
    v5 = MXGetSerialQueue(v3, v4);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CMSessionFinalize_block_invoke;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = a1;
    MXDispatchAsyncAndWait("CMSessionFinalize", "CMSession_CInterface.m", 231, 0, 0, v5, v6);
  }
}

void __CMSessionFinalize_block_invoke(uint64_t a1)
{
  MXCoreSessionTeardown(*(*(a1 + 32) + 16));

  *(*(a1 + 32) + 16) = 0;
}

uint64_t CMSessionAddResource(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    return 0;
  }

  +[MXInitialization waitUntilMXIsFullyInitialized];
  v9 = isCoreSessionSidekick(a1);
  if (v9)
  {
    return 4294954309;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11 = MXGetSerialQueue(v9, v10);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __CMSessionAddResource_block_invoke;
  v13[3] = &unk_1E7AE79A8;
  v13[4] = &v14;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  MXDispatchAsyncAndWait("CMSessionAddResource", "CMSession_CInterface.m", 283, 0, 0, v11, v13);
  v8 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v8;
}

void sub_1B19267FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionAddResource_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = MXCoreSessionAddResource(v3, a1[6], a1[7], a1[8]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t CMSessionRemoveResource(void *a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    return 0;
  }

  +[MXInitialization waitUntilMXIsFullyInitialized];
  v5 = isCoreSessionSidekick(a1);
  if (v5)
  {
    return 4294954309;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = MXGetSerialQueue(v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CMSessionRemoveResource_block_invoke;
  v9[3] = &unk_1E7AE7140;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  MXDispatchAsyncAndWait("CMSessionRemoveResource", "CMSession_CInterface.m", 307, 0, 0, v7, v9);
  v4 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_1B192696C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionRemoveResource_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = MXCoreSessionRemoveResource(v3, a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t CMSessionBeginInterruption(void *a1)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v3 = [a1 activate];
    *(v11 + 6) = v3;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v6 = MXGetSerialQueue(UpTimeNanoseconds, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __CMSessionBeginInterruption_block_invoke;
    v9[3] = &unk_1E7AE7168;
    v9[4] = &v10;
    v9[5] = a1;
    MXDispatchAsyncAndWait("CMSessionBeginInterruption", "CMSession_CInterface.m", 339, 0, 0, v6, v9);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionBeginInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1B1926B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionBeginInterruption_block_invoke(uint64_t a1)
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

  result = MXCoreSessionBeginInterruption_WithSecTaskAndFlags(v3, 0, 0, 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CMSessionBeginInterruption_WithSecTaskAndFlags(void *a1, __SecTask *a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v7 = [a1 activate];
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      v9 = a1[2];
    }

    else
    {
      v9 = 0;
    }

    v7 = MXCoreSessionBeginInterruption_WithSecTaskAndFlags(v9, a2, a3, 0);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_CMSessionBeginInterruption_WithSecTaskAndFlags" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t CMSessionEndInterruption(void *a1, const __CFString *a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    if (a2)
    {
      v5 = CFStringHasPrefix(a2, @"resumable") != 0;
    }

    else
    {
      v5 = 0;
    }

    v9 = [a1 deactivate:v5 postInterruptionNotification:0];
    *(v14 + 6) = v9;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v8 = MXGetSerialQueue(UpTimeNanoseconds, v7);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __CMSessionEndInterruption_block_invoke;
    v12[3] = &unk_1E7AE7140;
    v12[4] = &v13;
    v12[5] = a1;
    v12[6] = a2;
    MXDispatchAsyncAndWait("CMSessionEndInterruption", "CMSession_CInterface.m", 400, 0, 0, v8, v12);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionEndInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1B1926DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionEndInterruption_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = MXCoreSessionEndInterruption_WithSecTaskAndStatus(v3, 0, a1[6], 1);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t CMSessionEndInterruption_WithInterruptionNotification(void *a1, const __CFString *a2, int a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    if (a2)
    {
      v7 = CFStringHasPrefix(a2, @"resumable") != 0;
    }

    else
    {
      v7 = 0;
    }

    v11 = [a1 deactivate:v7 postInterruptionNotification:a3 != 0];
    *(v16 + 6) = v11;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v10 = MXGetSerialQueue(UpTimeNanoseconds, v9);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __CMSessionEndInterruption_WithInterruptionNotification_block_invoke;
    v14[3] = &unk_1E7AE7140;
    v14[4] = &v15;
    v14[5] = a1;
    v14[6] = a2;
    MXDispatchAsyncAndWait("CMSessionEndInterruption_WithInterruptionNotification", "CMSession_CInterface.m", 429, 0, 0, v10, v14);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionEndInterruption_WithInterruptionNotification" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v6);
  v12 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v12;
}

void sub_1B1926FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CMSessionEndInterruption_WithSecTaskAndStatus(void *a1, __SecTask *a2, const __CFString *a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    if (a3)
    {
      v7 = CFStringHasPrefix(a3, @"resumable") != 0;
    }

    else
    {
      v7 = 0;
    }

    v10 = [a1 deactivate:v7 postInterruptionNotification:0];
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      v9 = a1[2];
    }

    else
    {
      v9 = 0;
    }

    v10 = MXCoreSessionEndInterruption_WithSecTaskAndStatus(v9, a2, a3, 0);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_CMSessionEndInterruption_WithSecTaskAndStatus" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v6);
  return v10;
}

uint64_t CMSessionSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v7 = [a1 setPropertyForKey:a2 value:a3];
    *(v15 + 6) = v7;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v10 = MXGetSerialQueue(UpTimeNanoseconds, v9);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __CMSessionSetProperty_block_invoke;
    v13[3] = &unk_1E7AE7A48;
    v13[4] = &v14;
    v13[5] = a1;
    v13[6] = a2;
    v13[7] = a3;
    MXDispatchAsyncAndWait("CMSessionSetProperty", "CMSession_CInterface.m", 492, 0, 0, v10, v13);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionSetProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  }

  objc_autoreleasePoolPop(v6);
  v11 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v11;
}

void sub_1B1927294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionSetProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  result = MXCoreSessionSetProperty(v3, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CMSessionSetProperty(void *a1, const void *a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v7 = [a1 setPropertyForKey:a2 value:a3];
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      v9 = a1[2];
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v7 = MXCoreSessionSetProperty(v9, a2);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_CMSessionSetProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

void HandleDispatchBlockException(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Exception thrown: %@, %s, %s:%d, %llu, %llu", a1, a2, a3, a4, a5, a6), "UTF8String"];
  v6 = abort_with_reason();
  MXDispatchSyncFunction(v6, v7, v8, v9, v10, v11, v12, v13);
}

void MXDispatchSyncFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  context = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MXDispatchSyncFunction_block_invoke;
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
      MEMORY[0x1B2733F40](&v33, 0, "MXDispatchSyncFunction", a1, a2, a3, a4, a5, context);
    }
  }

  objc_autoreleasePoolPop(context);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __MXDispatchSyncFunction_block_invoke_2;
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
  dispatch_barrier_async_and_wait(a6, v22);
}

void __MXDispatchSyncFunction_block_invoke_2(uint64_t a1)
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
      MEMORY[0x1B2733F40](a1 + 48, 1, "MXDispatchSyncFunction_block_invoke_2", v4, v5, v6, v7, v8);
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
      MEMORY[0x1B2733F40](a1 + 48, 2, "MXDispatchSyncFunction_block_invoke_2", v12, v13, v14, v15, v16);
    }
  }

  objc_autoreleasePoolPop(v2);
  v18 = *(a1 + 40);

  _Block_release(v18);
}

void MXSetSerialQueue(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MXSetSerialQueue_block_invoke;
  block[3] = &unk_1E7AE7CE0;
  block[4] = a1;
  if (MXSetSerialQueue_onceToken != -1)
  {
    dispatch_once(&MXSetSerialQueue_onceToken, block);
  }
}

void __MXSetSerialQueue_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) || dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (gSerialQueue)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    dispatch_release(gSerialQueue);
  }

  gSerialQueue = *(a1 + 32);
}

void __MXGetSerialQueue_block_invoke()
{
  if (!gSerialQueue)
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    gSerialQueue = dispatch_queue_create("com.apple.coremedia.mediaexperience.iAmNotACQ", v0);

    MXSimulateCrash("AudioControlQueue (ACQ) is being used before being set by AudioToolbox! Please file a radar against 'MediaExperience Framework | All'");
  }
}

dispatch_queue_t __MXGetNotificationSenderQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mediaexperience.NotificationSenderQueue", v0);
  MXGetNotificationSenderQueue_notificationSenderQueue = result;
  return result;
}

void MXDispatchUtilityCancelTimer(dispatch_source_t *a1)
{
  if (a1)
  {
    dispatch_source_cancel(*a1);
    if (*a1)
    {
      dispatch_release(*a1);
      *a1 = 0;
    }
  }
}

CFTypeRef PVMCopyMappedRoute(CFTypeRef key)
{
  if (key)
  {
    v1 = key;
    if (*(sStorage + 200))
    {
      key = CFDictionaryGetValue(*(sStorage + 200), key);
    }

    if (!key)
    {
      key = v1;
    }

    return CFRetain(key);
  }

  return key;
}

void __PVMInitialize_block_invoke()
{
  v144 = *MEMORY[0x1E69E9840];
  if (pvmInitializeLogging_onceToken != -1)
  {
    __PVMInitialize_block_invoke_cold_1();
  }

  MappedCategoryWithModeAppended = malloc_type_calloc(1uLL, 0x148uLL, 0x10E0040F6844ECDuLL);
  sStorage = MappedCategoryWithModeAppended;
  if (!MappedCategoryWithModeAppended)
  {
    goto LABEL_169;
  }

  v2 = FigReentrantMutexCreate();
  v3 = sStorage;
  *sStorage = v2;
  v4 = &AVSystemController_EUVolumeLimitNotificationParameter;
  if (!v2)
  {
    goto LABEL_147;
  }

  MXDebugInstallSysdiagnoseBlock(@"MXVolumePreferences", &__block_literal_global_120_0);
  CelestialGetModelSpecificName();
  *(sStorage + 184) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  *(sStorage + 200) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  *(sStorage + 208) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  *(sStorage + 216) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  *(sStorage + 80) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  v5 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v5)
  {
    v6 = v5;
    Value = CFDictionaryGetValue(v5, @"RouteDefaultVolumes");
    *(sStorage + 224) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (!FigCFDictionaryGetFloatIfPresent())
    {
      *(sStorage + 316) = 1065353216;
    }

    CFRelease(v6);
  }

  v8 = sStorage;
  *(sStorage + 324) = 0;
  v9 = *(v8 + 184);
  v10 = *MEMORY[0x1E695E480];
  if (v9)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v9);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v12 = sStorage;
  *(sStorage + 192) = MutableCopy;
  *(v12 + 160) = 0x3FC000003F000000;
  *(sStorage + 152) = CFRetain(@"Ringtone");
  CelestialGetModelSpecificName();
  v13 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v13)
  {
    v14 = v13;
    v15 = CFDictionaryGetValue(v13, @"Zero");
    v16 = CFDictionaryGetValue(v14, @"One");
    v17 = CFDictionaryGetValue(v14, @"Category");
    if (v15)
    {
      v18 = v17;
      v19 = CFGetTypeID(v15);
      if (v19 == CFNumberGetTypeID())
      {
        if (v16)
        {
          v20 = CFGetTypeID(v16);
          if (v20 == CFNumberGetTypeID())
          {
            if (v18)
            {
              v21 = CFGetTypeID(v18);
              if (v21 == CFStringGetTypeID())
              {
                valuePtr[0] = 0.0;
                LODWORD(v141[0]) = 0;
                CFNumberGetValue(v15, kCFNumberFloat32Type, valuePtr);
                CFNumberGetValue(v16, kCFNumberFloat32Type, v141);
                if (*v141 <= 5.0 && valuePtr[0] <= 1.0 && valuePtr[0] >= 0.0 && (*v141 - valuePtr[0]) >= 0.25)
                {
                  v22 = CFRetain(v18);
                  v23 = sStorage;
                  *(sStorage + 152) = v22;
                  v24 = v141[0];
                  *(v23 + 160) = valuePtr[0];
                  *(v23 + 164) = v24;
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v14);
  }

  *(sStorage + 168) = *(sStorage + 164) - *(sStorage + 160);
  v25 = *MEMORY[0x1E695E8B8];
  v26 = *MEMORY[0x1E695E898];
  v27 = CFPreferencesCopyValue(@"volumes", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  *(sStorage + 16) = 0;
  v28 = MEMORY[0x1E695E4D0];
  if (v27)
  {
    v29 = v27;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v29))
    {
      DeepCopy = CFPropertyListCreateDeepCopy(v10, v29, 1uLL);
      if (DeepCopy)
      {
        v32 = DeepCopy;
        v137 = v29;
        v129 = v10;
        Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v127 = v32;
        CFDictionaryApplyFunction(v32, pvmApplierFunction_ValidateVolumesForRoute, Mutable);
        cf = Mutable;
        if (Mutable)
        {
          v34 = CFRetain(Mutable);
          *(sStorage + 16) = v34;
          if (v34)
          {
            v35 = v34;
            v36 = CFPreferencesCopyValue(@"AirTunesEntriesDeleted", @"com.apple.mediaexperience", v25, v26);
            v37 = *v28;
            if (FigCFEqual())
            {
              goto LABEL_48;
            }

            v124 = v37;
            v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
            memset(v141, 0, sizeof(v141));
            v142 = 0u;
            v143 = 0u;
            v39 = [v35 countByEnumeratingWithState:v141 objects:valuePtr count:16];
            if (v39)
            {
              v40 = v39;
              v130 = v26;
              v41 = 0;
              v42 = *v141[2];
              do
              {
                for (i = 0; i != v40; ++i)
                {
                  if (*v141[2] != v42)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v44 = *(v141[1] + 8 * i);
                  v45 = [v35 objectForKey:v44];
                  if ([v44 hasPrefix:@"AirTunes"])
                  {
                    v41 = 1;
                  }

                  else
                  {
                    [v38 setObject:v45 forKey:v44];
                  }
                }

                v40 = [v35 countByEnumeratingWithState:v141 objects:valuePtr count:16];
              }

              while (v40);
              CFRelease(*(sStorage + 16));
              v46 = sStorage;
              *(sStorage + 16) = v38;
              v26 = v130;
              if (v41)
              {
                *(v46 + 24) = 1;
                pvmWritePrefs();
              }
            }

            else
            {
              CFRelease(*(sStorage + 16));
              *(sStorage + 16) = v38;
            }

            MXCFPreferencesSetAndSynchronizeUserPreference(@"AirTunesEntriesDeleted", v124);
            v4 = &AVSystemController_EUVolumeLimitNotificationParameter;
            v28 = MEMORY[0x1E695E4D0];
            if (v36)
            {
LABEL_48:
              CFRelease(v36);
            }
          }
        }

        else
        {
          *(sStorage + 16) = 0;
        }

        v47 = *(sStorage + 16);
        if (v47 && !MXCFPreferencesGetBooleanWithDefault(@"BluetoothA2DPAndHFPVolumesCombined", 0))
        {
          v131 = v26;
          v134 = v25;
          v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
          memset(v141, 0, sizeof(v141));
          v142 = 0u;
          v143 = 0u;
          v49 = [v47 countByEnumeratingWithState:v141 objects:valuePtr count:16];
          if (v49)
          {
            v50 = v49;
            v51 = 0;
            v52 = *v141[2];
            do
            {
              for (j = 0; j != v50; ++j)
              {
                if (*v141[2] != v52)
                {
                  objc_enumerationMutation(v47);
                }

                v54 = *(v141[1] + 8 * j);
                v55 = [v47 objectForKey:v54];
                MappedBluetoothRouteWithDeviceIDAppended = pvmGetMappedBluetoothRouteWithDeviceIDAppended(v54);
                if (MappedBluetoothRouteWithDeviceIDAppended)
                {
                  v57 = MappedBluetoothRouteWithDeviceIDAppended;
                  v58 = [v47 objectForKey:v54];
                  v59 = [objc_msgSend(v48 objectForKey:{v57), "mutableCopy"}];
                  if (!v59)
                  {
                    v59 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  }

                  [v59 addEntriesFromDictionary:v58];
                  [v48 setObject:v59 forKey:v57];

                  v51 = 1;
                }

                else
                {
                  [v48 setObject:v55 forKey:v54];
                }
              }

              v50 = [v47 countByEnumeratingWithState:v141 objects:valuePtr count:16];
            }

            while (v50);
          }

          else
          {
            v51 = 0;
          }

          v60 = *(sStorage + 16);
          *(sStorage + 16) = v48;
          if (v48)
          {
            CFRetain(v48);
          }

          v26 = v131;
          v25 = v134;
          if (v60)
          {
            CFRelease(v60);
          }

          if (v51)
          {
            *(sStorage + 24) = 1;
            pvmWritePrefs();
          }

          v28 = MEMORY[0x1E695E4D0];
          MXCFPreferencesSetAndSynchronizeUserPreference(@"BluetoothA2DPAndHFPVolumesCombined", *MEMORY[0x1E695E4D0]);
          v4 = &AVSystemController_EUVolumeLimitNotificationParameter;
        }

        v61 = *(sStorage + 16);
        if (v61)
        {
          v62 = CFPreferencesCopyValue(@"AirPlayLowLatencyEntriesDeleted", @"com.apple.mediaexperience", v25, v26);
          v63 = *v28;
          if (FigCFEqual())
          {
            goto LABEL_91;
          }

          v132 = v26;
          v135 = v25;
          v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
          memset(v141, 0, sizeof(v141));
          v142 = 0u;
          v143 = 0u;
          v65 = [v61 countByEnumeratingWithState:v141 objects:valuePtr count:16];
          if (v65)
          {
            v66 = v65;
            v67 = 0;
            v68 = *v141[2];
            do
            {
              for (k = 0; k != v66; ++k)
              {
                if (*v141[2] != v68)
                {
                  objc_enumerationMutation(v61);
                }

                v70 = *(v141[1] + 8 * k);
                v71 = [v61 objectForKey:v70];
                if ([v70 hasPrefix:@"AirPlayLowLatency"])
                {
                  v67 = 1;
                }

                else
                {
                  [v64 setObject:v71 forKey:v70];
                }
              }

              v66 = [v61 countByEnumeratingWithState:v141 objects:valuePtr count:16];
            }

            while (v66);
          }

          else
          {
            v67 = 0;
          }

          v72 = sStorage;
          v73 = *(sStorage + 16);
          if (v73)
          {
            CFRelease(v73);
            v72 = sStorage;
            *(sStorage + 16) = 0;
          }

          v26 = v132;
          v25 = v135;
          v28 = MEMORY[0x1E695E4D0];
          *(v72 + 16) = v64;
          if (v67)
          {
            *(v72 + 24) = 1;
            pvmWritePrefs();
          }

          MXCFPreferencesSetAndSynchronizeUserPreference(@"AirPlayLowLatencyEntriesDeleted", v63);
          v4 = &AVSystemController_EUVolumeLimitNotificationParameter;
          if (v62)
          {
LABEL_91:
            CFRelease(v62);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(v127);
        v10 = v129;
        v29 = v137;
      }
    }

    CFRelease(v29);
  }

  v74 = CFPreferencesCopyValue(@"inputVolumes", @"com.apple.mediaexperience", v25, v26);
  if (v74)
  {
    v75 = v74;
    v76 = CFDictionaryGetTypeID();
    if (v76 == CFGetTypeID(v75))
    {
      *(sStorage + 48) = CFPropertyListCreateDeepCopy(v10, v75, 1uLL);
    }

    CFRelease(v75);
  }

  v77 = CFPreferencesCopyValue(@"volumeLimits", @"com.apple.mediaexperience", v25, v26);
  *(sStorage + 32) = 0;
  if (v77)
  {
    v78 = v77;
    v79 = CFDictionaryGetTypeID();
    if (v79 == CFGetTypeID(v78))
    {
      v80 = CFPropertyListCreateDeepCopy(v10, v78, 1uLL);
      if (v80)
      {
        v81 = v80;
        v82 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionaryApplyFunction(v81, pvmApplierFunction_CopyValidatedVolumes, v82);
        if (v82)
        {
          *(sStorage + 32) = CFRetain(v82);
          CFRelease(v82);
        }

        else
        {
          *(sStorage + 32) = 0;
        }

        CFRelease(v81);
      }
    }

    CFRelease(v78);
  }

  v83 = CFPreferencesCopyValue(@"endpointTypeInfo", @"com.apple.mediaexperience", v25, v26);
  if (!v83)
  {
    goto LABEL_134;
  }

  v84 = v83;
  v85 = CFDictionaryGetTypeID();
  if (v85 != CFGetTypeID(v84))
  {
    goto LABEL_133;
  }

  v133 = v26;
  v136 = v25;
  v86 = CFPropertyListCreateDeepCopy(v10, v84, 1uLL);
  *(sStorage + 120) = v86;
  if (!v86)
  {
    goto LABEL_132;
  }

  v87 = v86;
  v88 = MXCFPreferencesCopyPreference(@"endpointTypeInfoEntriesDeleted");
  if ([v88 BOOLValue])
  {
    goto LABEL_131;
  }

  v128 = v84;
  v89 = objc_alloc_init(MEMORY[0x1E695DF90]);
  memset(v141, 0, sizeof(v141));
  v142 = 0u;
  v143 = 0u;
  v90 = [v87 countByEnumeratingWithState:v141 objects:valuePtr count:16];
  if (!v90)
  {
    CFRelease(*(sStorage + 120));
    *(sStorage + 120) = v89;
    goto LABEL_130;
  }

  v91 = v90;
  v138 = v89;
  cfa = v88;
  v92 = 0;
  v93 = *v141[2];
  do
  {
    v94 = 0;
    do
    {
      if (*v141[2] != v93)
      {
        objc_enumerationMutation(v87);
      }

      v95 = *(v141[1] + 8 * v94);
      v96 = [v87 objectForKey:v95];
      v97 = pvmGetMappedBluetoothRouteWithDeviceIDAppended(v95);
      if ([v95 hasPrefix:@"AirTunes"] & 1) != 0 || (objc_msgSend(v95, "hasPrefix:", @"CarAudioOutput") & 1) != 0 || (objc_msgSend(v95, "hasPrefix:", @"AirPlayLowLatency"))
      {
        goto LABEL_122;
      }

      if (v97)
      {
        [v138 setValue:v96 forKey:v97];
LABEL_122:
        v92 = 1;
        goto LABEL_123;
      }

      [v138 setValue:v96 forKey:v95];
LABEL_123:
      ++v94;
    }

    while (v91 != v94);
    v98 = [v87 countByEnumeratingWithState:v141 objects:valuePtr count:16];
    v91 = v98;
  }

  while (v98);
  CFRelease(*(sStorage + 120));
  v99 = sStorage;
  *(sStorage + 120) = v138;
  v4 = &AVSystemController_EUVolumeLimitNotificationParameter;
  v28 = MEMORY[0x1E695E4D0];
  v88 = cfa;
  if (v92)
  {
    *(v99 + 128) = 1;
    pvmWritePrefs();
  }

LABEL_130:
  MXCFPreferencesSetAndSynchronizeUserPreference(@"endpointTypeInfoEntriesDeleted", *v28);
  v84 = v128;
LABEL_131:

LABEL_132:
  v26 = v133;
  v25 = v136;
LABEL_133:
  CFRelease(v84);
LABEL_134:
  v4[245] = objc_alloc_init(MEMORY[0x1E695DF90]);
  v100 = CFPreferencesCopyValue(@"vibeIntensity", @"com.apple.mediaexperience", v25, v26);
  v101 = sStorage;
  *(sStorage + 64) = v100;
  CelesteGetRegionSpecificVolumeLimit(*(v101 + 80));
  *(sStorage + 88) = v102;
  v103 = MXCFPreferencesCopyPreference(@"isMaxVolumeLimitForBuiltInSpeakerEnabled");
  *(sStorage + 92) = FigCFEqual();
  if (v103)
  {
    CFRelease(v103);
  }

  v139 = 1065353216;
  v104 = MXCFPreferencesCopyPreference(@"maxVolumeLimitForBuiltInSpeaker");
  if (v104)
  {
    v105 = v104;
    CFNumberGetValue(v104, kCFNumberFloat32Type, &v139);
    *(sStorage + 96) = v139;
    CFRelease(v105);
  }

  else
  {
    *(sStorage + 96) = v139;
  }

  if (dword_1EB75DFE8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v107 = sStorage;
  *(sStorage + 312) = 1131413504;
  *(v107 + 320) = 1131413504;
  v108 = MXCFPreferencesCopyPreference(@"endpointDisconnectionTimeInfo");
  if (v108)
  {
    v109 = v108;
    v110 = CFDictionaryGetTypeID();
    if (v110 == CFGetTypeID(v109))
    {
      *(sStorage + 136) = CFPropertyListCreateDeepCopy(v10, v109, 1uLL);
    }

    CFRelease(v109);
  }

  pvmAssureCurrentCategoryAndDeviceRoute();
  v111 = sStorage;
  *(sStorage + 288) = 0;
  MappedCategoryWithModeAppended = pvmSetCurrentRouteInfo(@"Unspecified", *(v111 + 272), *(v111 + 280), 0, *(v111 + 296));
  if (MappedCategoryWithModeAppended)
  {
    v3 = sStorage;
    if (sStorage)
    {
LABEL_147:
      v112 = v3[2];
      if (v112)
      {
        CFRelease(v112);
        v3 = sStorage;
        *(sStorage + 16) = 0;
      }

      v113 = v3[4];
      if (v113)
      {
        CFRelease(v113);
        v3 = sStorage;
        *(sStorage + 32) = 0;
      }

      v114 = v3[15];
      if (v114)
      {
        CFRelease(v114);
        *(sStorage + 120) = 0;
      }

      v4[245] = 0;
      v115 = sStorage;
      if (*(sStorage + 272))
      {
        CFRelease(*(sStorage + 272));
        *(sStorage + 272) = 0;
        *(sStorage + 304) = FigCFEqual();
        v116 = FigCFEqual();
        v115 = sStorage;
        *(sStorage + 305) = v116;
      }

      if (v115[29])
      {
        CFRelease(v115[29]);
        v115 = sStorage;
        *(sStorage + 232) = 0;
      }

      if (v115[31])
      {
        CFRelease(v115[31]);
        v115 = sStorage;
        *(sStorage + 248) = 0;
      }

      if (*v115)
      {
        FigSimpleMutexDestroy();
        v115 = sStorage;
        *sStorage = 0;
      }

      free(v115);
      sStorage = 0;
    }
  }

  else
  {
    pvmRemoveVolumesForDeviceRoute(@"LineOut", 0, 0);
    v117 = *(sStorage + 104);
    if (v117)
    {
      CFRelease(v117);
      *(sStorage + 104) = 0;
    }

    v118 = CFPreferencesCopyValue(@"volumeMultiplier", @"com.apple.mediaexperience", v25, v26);
    if (v118)
    {
      v120 = v118;
      v121 = CFDictionaryGetTypeID();
      if (v121 == CFGetTypeID(v120))
      {
        *(sStorage + 104) = CFPropertyListCreateDeepCopy(v10, v120, 1uLL);
      }

      CFRelease(v120);
    }

    *(sStorage + 112) = 0;
    v122 = MXGetSerialQueue(v118, v119);
    notify_register_dispatch("HAENVolumeLimitStatusDidChange", &pvmAdd100dBVolumeLimitChangedListener_sHAENVolumeLimitNotifyToken, v122, &__block_literal_global_242);
    MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(@"MediaPlayback", @"VoicePrompt");
  }

LABEL_169:
  v123 = MXGetSerialQueue(MappedCategoryWithModeAppended, v1);
  MXDispatchAsync("PVMInitialize_block_invoke", "MXPreferredVolumeManager.m", 1896, 0, 0, v123, &__block_literal_global_52_1);
}

uint64_t __PVMInitialize_block_invoke_2()
{
  FigSimpleMutexLock();
  pvmUpdatePreferredVolumeAndLimit(@"CategoryChange", 0, *(sStorage + 232), *(sStorage + 240), 0, 1, 0, 0.0, 0.0);
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  *(sStorage + 8) = 0;
  FigSimpleMutexUnlock();
  v0 = FigGetCFPreferenceNumberWithDefault() != 0;

  return pvmUpdate100dBVolumeLimit(v0);
}

uint64_t pvmUpdate100dBVolumeLimit(uint64_t result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (g100dBVolumeLimitEnabled != result)
  {
    v1 = result;
    if (dword_1EB75DFE8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    g100dBVolumeLimitEnabled = v1;
    FigSimpleMutexLock();
    pvmReassertAllPreferredVolumesForRoute(0);
    pvmUpdatePreferredVolumeAndLimit(@"VolumeLimitChange", 0, *(sStorage + 232), *(sStorage + 240), 0, 1, 0, 0.0, 0.0);
    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t PVMSetCurrentPreferredVolumeWithRefCon(uint64_t a1, uint64_t a2, int a3, float a4)
{
  v8 = PVMInitialize();
  if (!v8 && !*(sStorage + 8))
  {
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    v9 = sStorage;
    if (*(sStorage + 308) != a4)
    {
      v10 = *(sStorage + 232);
      v11 = *(sStorage + 240);
      v12 = *(sStorage + 280);
      v15[0] = *(sStorage + 264);
      v15[1] = v12;
      v16 = *(sStorage + 296);
      pvmSetVolumePref(v10, v11, v15, 0, a4);
      v9 = sStorage;
    }

    if (a3)
    {
      v13 = @"ImplicitVolumeChange";
    }

    else
    {
      v13 = @"ExplicitVolumeChange";
    }

    pvmUpdatePreferredVolumeAndLimit(v13, a1, *(v9 + 232), *(v9 + 240), 0, 1, a2, 0.0, 0.0);
    FigSimpleMutexUnlock();
  }

  return v8;
}

void pvmSetVolumePref(const __CFString *a1, const void *a2, __int128 *a3, int a4, float a5)
{
  v10 = MEMORY[0x1E695E480];
  if (!*(sStorage + 16))
  {
    *(sStorage + 16) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (FigCFEqual())
  {
    v11 = *(sStorage + 200);
    if (v11)
    {
      Value = CFDictionaryGetValue(v11, @"broadcast");
    }

    else
    {
      Value = @"broadcast";
    }

    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    if (Value)
    {
      v13 = Value;
    }

    else
    {
      v13 = @"broadcast";
    }

    *(a3 + 1) = v13;
  }

  if (FigCFEqual() && !PVMInitialize())
  {
    pvmSetSystemSoundVolumeMultiplierForVolumeGuts(a5);
  }

  DeviceRouteString = pvmCreateDeviceRouteString(*(a3 + 1), *(a3 + 3), *(a3 + 2));
  if (DeviceRouteString)
  {
    v15 = DeviceRouteString;
    valuePtr = 0.0;
    if (a4)
    {
      v16 = a3[1];
      v33 = *a3;
      v34 = v16;
      v35 = *(a3 + 4);
      v17 = a3[1];
      v36 = *a3;
      v37 = v17;
      v38 = *(a3 + 4);
      VolumeLimitPref = pvmGetVolumeLimitPref(&v36);
      v19 = a5 / (VolumeLimitPref * pvmGetCurrentVolumeLimitForRoute(&v33, a1));
      if (v19 <= 1.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 1.0;
      }

      v21 = a3[1];
      v33 = *a3;
      v34 = v21;
      v35 = *(a3 + 4);
      v22 = a3[1];
      v36 = *a3;
    }

    else
    {
      v23 = a3[1];
      v33 = *a3;
      v34 = v23;
      v35 = *(a3 + 4);
      if (a5 <= 1.0)
      {
        v20 = a5;
      }

      else
      {
        v20 = 1.0;
      }

      v22 = a3[1];
      v36 = *a3;
    }

    v37 = v22;
    v38 = *(a3 + 4);
    v24 = pvmGetVolumeLimitPref(&v36);
    v25 = v20 * (v24 * pvmGetCurrentVolumeLimitForRoute(&v33, a1));
    valuePtr = v25;
    MinimumCategoryVolume = pvmGetMinimumCategoryVolume(a1, a2);
    if (v25 < MinimumCategoryVolume)
    {
      valuePtr = MinimumCategoryVolume;
      v25 = MinimumCategoryVolume;
    }

    MaximumCategoryVolume = pvmGetMaximumCategoryVolume(a1, a2);
    if (v25 > MaximumCategoryVolume)
    {
      valuePtr = MaximumCategoryVolume;
    }

    Mutable = CFDictionaryGetValue(*(sStorage + 16), v15);
    v29 = *v10;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(*(sStorage + 16), v15, Mutable);
      CFRelease(Mutable);
    }

    v30 = CFNumberCreate(v29, kCFNumberFloat32Type, &valuePtr);
    CategoryStringWithModeAppended = pvmCreateCategoryStringWithModeAppended(a1, a2);
    CFDictionarySetValue(Mutable, CategoryStringWithModeAppended, v30);
    CFRelease(v30);
    CFRelease(CategoryStringWithModeAppended);
    *(sStorage + 24) = 1;
    pvmWritePrefs();
    CFRelease(v15);
  }
}

uint64_t PVMSetCurrentPreferredVolumeForDeviceRoute(uint64_t a1, int a2, uint64_t a3, int a4, float a5)
{
  v10 = PVMInitialize();
  if (!v10 && !*(sStorage + 8))
  {
    FigSimpleMutexLock();
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = *(sStorage + 200);
      if (v12)
      {
        Value = CFDictionaryGetValue(v12, *(a1 + 8));
      }

      else
      {
        Value = *(a1 + 8);
      }

      if (Value)
      {
        v14 = Value;
      }

      else
      {
        v14 = v11;
      }
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 8) = v14;
    MappedRouteIdentifier = pvmGetMappedRouteIdentifier(*(a1 + 24), v14);
    v16 = 0;
    *(a1 + 24) = MappedRouteIdentifier;
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        if (([*(a1 + 8) hasPrefix:@"HeadphonesBT"] & 1) != 0 || (v19 = objc_msgSend(v18, "hasPrefix:", @"HeadsetBT"), v16 = v17, v19))
        {
          v16 = 0;
        }
      }
    }

    *(a1 + 16) = v16;
    v20 = *(a1 + 16);
    v26 = *a1;
    v27 = v20;
    v28 = *(a1 + 32);
    if (PVMIsCurrentDeviceRoute(&v26) | a2)
    {
      pvmAssureCurrentCategoryAndDeviceRoute();
      v21 = *(sStorage + 232);
      v22 = *(sStorage + 240);
      v23 = *(a1 + 16);
      v26 = *a1;
      v27 = v23;
      v28 = *(a1 + 32);
      pvmSetVolumePref(v21, v22, &v26, 0, a5);
      if (a4)
      {
        v24 = @"ImplicitVolumeChange";
      }

      else
      {
        v24 = @"ExplicitVolumeChange";
      }

      pvmUpdatePreferredVolumeAndLimit(v24, 0, *(sStorage + 232), *(sStorage + 240), 0, 1, a3, 0.0, 0.0);
    }

    FigSimpleMutexUnlock();
  }

  return v10;
}

float PVMGetCurrentPreferredVolumeForDeviceRoute(uint64_t a1)
{
  DefaultVolume = pvmGetDefaultVolume();
  if (!PVMInitialize())
  {
    if (!*(a1 + 8))
    {
      *(a1 + 8) = @"Speaker";
    }

    FigSimpleMutexLock();
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = *(sStorage + 200);
      if (v4)
      {
        Value = CFDictionaryGetValue(v4, *(a1 + 8));
      }

      else
      {
        Value = *(a1 + 8);
      }

      if (Value)
      {
        v6 = Value;
      }

      else
      {
        v6 = v3;
      }
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
    MappedRouteIdentifier = pvmGetMappedRouteIdentifier(*(a1 + 24), v6);
    v8 = 0;
    *(a1 + 24) = MappedRouteIdentifier;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        if (([*(a1 + 8) hasPrefix:@"HeadphonesBT"] & 1) != 0 || (v11 = objc_msgSend(v10, "hasPrefix:", @"HeadsetBT"), v8 = v9, v11))
        {
          v8 = 0;
        }
      }
    }

    *(a1 + 16) = v8;
    pvmAssureCurrentCategoryAndDeviceRoute();
    v12 = *(sStorage + 232);
    v13 = *(sStorage + 240);
    v14 = *(a1 + 16);
    v17[0] = *a1;
    v17[1] = v14;
    v18 = *(a1 + 32);
    pvmGetVolumePref(v12, v13, v17);
    DefaultVolume = v15;
    FigSimpleMutexUnlock();
  }

  return DefaultVolume;
}

uint64_t PVMSetCurrentCategoryAndMode(__CFString *a1, const void *a2, uint64_t a3)
{
  if (*(sStorage + 8))
  {
    return 0;
  }

  v14 = 0;
  cf = 0;
  result = PVMInitialize();
  if (!result)
  {
    if (!*(sStorage + 8))
    {
      if (!a1)
      {
        a1 = @"Audio/Video";
      }

      MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
      pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, &cf, &v14);
      FigSimpleMutexLock();
      pvmAssureCurrentCategoryAndDeviceRoute();
      if (!FigCFEqual() || !FigCFEqual())
      {
        v8 = *(sStorage + 232);
        v9 = cf;
        *(sStorage + 232) = cf;
        if (v9)
        {
          CFRetain(v9);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        v10 = *(sStorage + 240);
        v11 = v14;
        *(sStorage + 240) = v14;
        if (v11)
        {
          CFRetain(v11);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }

      v12 = *(sStorage + 248);
      *(sStorage + 248) = a1;
      CFRetain(a1);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = *(sStorage + 256);
      *(sStorage + 256) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      FigSimpleMutexUnlock();
    }

    FigSimpleMutexLock();
    pvmUpdatePreferredVolumeAndLimit(@"CategoryChange", 0, *(sStorage + 232), *(sStorage + 240), 0, 1, a3, 0.0, 0.0);
    FigSimpleMutexUnlock();
    return 0;
  }

  return result;
}

uint64_t PVMCopyCurrentState(_DWORD *a1, CFTypeRef *a2, void *a3, CFTypeRef *a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v12 = PVMInitialize();
  if (!v12)
  {
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    v13 = sStorage;
    if (a1)
    {
      *a1 = *(sStorage + 308);
    }

    if (a2)
    {
      *a2 = CFRetain(*(v13 + 232));
      v13 = sStorage;
    }

    if (a3)
    {
      v14 = *(v13 + 240);
      if (v14)
      {
        v14 = CFRetain(v14);
        v13 = sStorage;
      }

      *a3 = v14;
    }

    if (a4)
    {
      *a4 = CFRetain(*(v13 + 272));
      v13 = sStorage;
    }

    if (a5)
    {
      v15 = *(v13 + 288);
      if (!v15)
      {
        *a5 = 0;
        if (a6)
        {
LABEL_16:
          v16 = *(v13 + 280);
          if (v16)
          {
            *a6 = CFRetain(v16);
          }

          else
          {
            *a6 = 0;
          }
        }

LABEL_21:
        FigSimpleMutexUnlock();
        return v12;
      }

      *a5 = CFRetain(v15);
      v13 = sStorage;
    }

    if (a6)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  return v12;
}

uint64_t PVMRemoveVolumesForDeviceRoute(void *a1, void *a2, uint64_t a3)
{
  result = PVMInitialize();
  if (!result)
  {
    if (a1)
    {
      Value = a1;
      if (*(sStorage + 200))
      {
        Value = CFDictionaryGetValue(*(sStorage + 200), a1);
      }

      if (Value)
      {
        v8 = Value;
      }

      else
      {
        v8 = a1;
      }

      MappedRouteIdentifier = pvmGetMappedRouteIdentifier(a2, a1);
      if (!a3 || ([a1 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(a1, "hasPrefix:", @"HeadsetBT"))
      {
        goto LABEL_14;
      }
    }

    else
    {
      MappedRouteIdentifier = pvmGetMappedRouteIdentifier(a2, 0);
      v8 = 0;
    }

    a3 = 0;
LABEL_14:
    FigSimpleMutexLock();
    v10 = pvmRemoveVolumesForDeviceRoute(v8, MappedRouteIdentifier, a3);
    FigSimpleMutexUnlock();
    return v10;
  }

  return result;
}

uint64_t pvmRemoveVolumesForDeviceRoute(const void *a1, unint64_t a2, uint64_t a3)
{
  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  if (!DeviceRouteString)
  {
    return 4294938296;
  }

  v4 = DeviceRouteString;
  v5 = sStorage;
  v6 = *(sStorage + 16);
  if (v6)
  {
    CFDictionaryRemoveValue(v6, v4);
    v5 = sStorage;
    *(sStorage + 24) = 1;
  }

  v7 = *(v5 + 32);
  if (v7)
  {
    CFDictionaryRemoveValue(v7, v4);
    v5 = sStorage;
    *(sStorage + 56) = 1;
  }

  if (*(v5 + 24) || *(v5 + 56))
  {
    pvmWritePrefs();
  }

  CFRelease(v4);
  return 0;
}

uint64_t PVMSetVolumePreference(__CFString *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8, float a9)
{
  v9 = *(a4 + 16);
  v11[0] = *a4;
  v11[1] = v9;
  v12 = *(a4 + 32);
  return pvmSetVolumePreferenceInternal(a1, a2, a3, v11, 0, a5, a6, a7, a8, a9);
}

uint64_t pvmSetVolumePreferenceInternal(__CFString *a1, const void *a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, float a8, float a9, float a10)
{
  v20 = PVMInitialize();
  v38 = 0;
  cf = 0;
  if (v20)
  {
    return v20;
  }

  if (!a1)
  {
    a1 = @"Audio/Video";
  }

  if (!*(a4 + 8))
  {
    *(a4 + 8) = @"Speaker";
  }

  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, &cf, &v38);
  FigSimpleMutexLock();
  v22 = *(a4 + 16);
  v35 = *a4;
  v36 = v22;
  v37 = *(a4 + 32);
  pvmSetVolumePref(cf, v38, &v35, a5, a8);
  v23 = *(a4 + 16);
  v35 = *a4;
  v36 = v23;
  v37 = *(a4 + 32);
  v24 = PVMIsCategoryAndRouteInfoCurrent(a1, a2, &v35);
  if (v24)
  {
    *(sStorage + 308) = a8;
  }

  if (CMSMDeviceState_ItsAHomePod() && FigCFEqual())
  {
    if (a7)
    {
      v25 = @"ImplicitVolumeChange";
    }

    else
    {
      v25 = @"ExplicitVolumeChange";
    }

    v26 = @"VoiceCommand";
    v27 = 0;
    v28 = a9;
    v29 = a10;
    v30 = a3;
    v31 = 0;
  }

  else
  {
    v32 = *(a4 + 16);
    v35 = *a4;
    v36 = v32;
    v37 = *(a4 + 32);
    v33 = PVMIsCurrentDeviceRoute(&v35);
    if (!(v24 | a5) || !v33)
    {
      goto LABEL_21;
    }

    if (a7)
    {
      v25 = @"ImplicitVolumeChange";
    }

    else
    {
      v25 = @"ExplicitVolumeChange";
    }

    v26 = *(sStorage + 232);
    v27 = *(sStorage + 240);
    v28 = a9;
    v29 = a10;
    v30 = a3;
    v31 = 1;
  }

  pvmUpdatePreferredVolumeAndLimit(v25, 0, v26, v27, v30, v31, a6, v28, v29);
LABEL_21:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return v20;
}

uint64_t PVMSetRawVolumePreference(__CFString *a1, const void *a2, uint64_t a3, uint64_t a4, int a5, int a6, float a7)
{
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = *(a3 + 32);
  return pvmSetVolumePreferenceInternal(a1, a2, a6, v9, 1, a4, a5, a7, 0.0, 0.0);
}

uint64_t PVMSetVolumeLimit(uint64_t a1, float a2)
{
  v5 = PVMInitialize();
  if (!v5)
  {
    v6 = 0.0;
    if (a2 >= 0.0)
    {
      v6 = a2;
    }

    if (v6 <= 1.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }

    FigSimpleMutexLock();
    if (!PVMVolumePrefExistsForRouteAndCategory(*(sStorage + 272), *(sStorage + 288), *(sStorage + 280), 0, 0))
    {
      DefaultVolume = pvmGetDefaultVolume();
      v9 = *(sStorage + 232);
      v10 = *(sStorage + 240);
      v11 = *(sStorage + 280);
      v18[0] = *(sStorage + 264);
      v18[1] = v11;
      v19 = *(sStorage + 296);
      pvmSetVolumePref(v9, v10, v18, 0, DefaultVolume);
    }

    *v18 = v7;
    v12 = *MEMORY[0x1E695E480];
    if (*(sStorage + 32) || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(sStorage + 32) = Mutable) != 0))
    {
      v14 = CFNumberCreate(v12, kCFNumberFloat32Type, v18);
      if (v14)
      {
        v15 = v14;
        CFDictionarySetValue(*(sStorage + 32), @"Headphone", v14);
        CFRelease(v15);
        *(sStorage + 56) = 1;
        pvmWritePrefs();
        v5 = 0;
LABEL_16:
        pvmReassertAllPreferredVolumesForRoute(a1);
        pvmUpdatePreferredVolumeAndLimit(@"VolumeLimitChange", 0, *(sStorage + 232), *(sStorage + 240), 0, 1, a1, 0.0, 0.0);
        FigSimpleMutexUnlock();
        return v5;
      }

      v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB75DFE0, 4294938296, "-PVM-", 4304, v2);
    }

    else
    {
      v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB75DFE0, 4294938296, "-PVM-", 4294, v2);
    }

    v5 = v16;
    goto LABEL_16;
  }

  return v5;
}

void pvmReassertAllPreferredVolumesForRoute(uint64_t a1)
{
  context = a1;
  v1 = *(sStorage + 16);
  if (v1)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    if (Copy)
    {
      v3 = Copy;
      CFDictionaryApplyFunction(Copy, pvmReassertDeviceVolumesIfMatchesRoute, &context);
      CFRelease(v3);
    }
  }
}

float PVMGetVolumeLimit()
{
  VolumeLimitPref = 1.0;
  if (!PVMInitialize())
  {
    v3 = 0u;
    v4 = 0u;
    FigSimpleMutexLock();
    v2 = @"Headphones";
    VolumeLimitPref = pvmGetVolumeLimitPref(&v2);
    FigSimpleMutexUnlock();
  }

  return VolumeLimitPref;
}

BOOL PVMIsOKToMuteCurrentCategory()
{
  FigSimpleMutexLock();
  pvmAssureCurrentCategoryAndDeviceRoute();
  v0 = !FigCFEqual() && !FigCFEqual();
  FigSimpleMutexUnlock();
  return v0;
}

float PVMGetVolumeMultiplier()
{
  v0 = 1.0;
  if (!PVMInitialize())
  {
    FigSimpleMutexLock();
    v0 = *(sStorage + 316);
    valuePtr = v0;
    v1 = *(sStorage + 104);
    if (v1)
    {
      Value = CFDictionaryGetValue(v1, @"global");
      if (Value)
      {
        v3 = Value;
        v4 = CFGetTypeID(Value);
        if (v4 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr);
          v0 = valuePtr;
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  return v0;
}

uint64_t PVMGetThirdPartyVolumeMultiplier()
{
  FigSimpleMutexLock();
  PVMGetVolumeMultiplier();
  return FigSimpleMutexUnlock();
}

void PVMSaveEndpointDisconnectionTimeInfo(uint64_t a1, void *a2)
{
  [a2 timeIntervalSince1970];
  v4 = MXCFNumberCreateFromDouble(v3);
  DeviceRouteString = pvmCreateDeviceRouteString(*(a1 + 8), *(a1 + 24), *(a1 + 16));
  Mutable = *(sStorage + 136);
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(sStorage + 136) = Mutable) != 0))
  {
    CFDictionarySetValue(Mutable, DeviceRouteString, v4);
    *(sStorage + 144) = 1;
    pvmWritePrefs();
    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  if (v4)
  {
LABEL_4:
    CFRelease(v4);
  }

LABEL_5:
  if (DeviceRouteString)
  {

    CFRelease(DeviceRouteString);
  }
}

uint64_t pvmWritePrefs()
{
  FigSimpleMutexLock();
  v0 = sStorage;
  v1 = *(sStorage + 24);
  if (*(sStorage + 24))
  {
    v2 = *(sStorage + 16);
    if (v2)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"volumes", v2);
      v0 = sStorage;
      *(sStorage + 24) = 0;
      v1 = 1;
    }

    else
    {
      v1 = 0;
    }
  }

  if (*(v0 + 40))
  {
    v3 = *(v0 + 48);
    if (v3)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"inputVolumes", v3);
      v0 = sStorage;
      *(sStorage + 40) = 0;
      v1 = 1;
    }
  }

  if (*(v0 + 56))
  {
    v4 = *(v0 + 32);
    if (v4)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"volumeLimits", v4);
      v0 = sStorage;
      *(sStorage + 56) = 0;
      v1 = 1;
    }
  }

  if (*(v0 + 100))
  {
    if (*(v0 + 92))
    {
      v5 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    MXCFPreferencesSetAndSynchronizeUserPreference(@"isMaxVolumeLimitForBuiltInSpeakerEnabled", *v5);
    v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, (sStorage + 96));
    MXCFPreferencesSetAndSynchronizeUserPreference(@"maxVolumeLimitForBuiltInSpeaker", v6);
    v0 = sStorage;
    *(sStorage + 100) = 0;
    if (v6)
    {
      CFRelease(v6);
      v0 = sStorage;
    }

    v1 = 1;
  }

  if (*(v0 + 112))
  {
    v7 = *(v0 + 104);
    if (v7)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"volumeMultiplier", v7);
      v0 = sStorage;
      *(sStorage + 112) = 0;
      v1 = 1;
    }
  }

  if (*(v0 + 72))
  {
    v8 = *(v0 + 64);
    if (v8)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"vibeIntensity", v8);
      *(sStorage + 72) = 0;
LABEL_25:
      global_queue = dispatch_get_global_queue(0, 0);
      MXDispatchAsync("pvmWritePrefs", "MXPreferredVolumeManager.m", 1989, 0, 0, global_queue, &__block_literal_global_265);
      v0 = sStorage;
      goto LABEL_26;
    }
  }

  if (v1)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (*(v0 + 128))
  {
    v10 = *(v0 + 120);
    if (v10)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"endpointTypeInfo", v10);
      v0 = sStorage;
      *(sStorage + 128) = 0;
    }
  }

  if (*(v0 + 144))
  {
    v11 = *(v0 + 136);
    if (v11)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"endpointDisconnectionTimeInfo", v11);
      *(sStorage + 144) = 0;
    }
  }

  return FigSimpleMutexUnlock();
}

const __CFNumber *PVMCopyEndpointDisconnectionTimeInfo(uint64_t a1)
{
  valuePtr = 0.0;
  DeviceRouteString = pvmCreateDeviceRouteString(*(a1 + 8), *(a1 + 24), *(a1 + 16));
  if (DeviceRouteString)
  {
    v2 = DeviceRouteString;
    v3 = *(sStorage + 136);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, v2);
      v5 = Value;
      if (!Value)
      {
LABEL_8:
        CFRelease(v2);
        return v5;
      }

      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
        v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:valuePtr];
        v7 = v5;
        goto LABEL_8;
      }
    }

    v5 = 0;
    goto LABEL_8;
  }

  return 0;
}

void *PVMGetMostRecentSynchronizedVolumeActivityTimestamp(uint64_t a1)
{
  DeviceRouteString = pvmCreateDeviceRouteString(*(a1 + 8), *(a1 + 24), *(a1 + 16));
  if (DeviceRouteString)
  {
    v2 = gRouteTimestampPrefs == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v4 = 0;
    result = 0;
    if (!DeviceRouteString)
    {
      return result;
    }
  }

  else
  {
    FigSimpleMutexLock();
    v4 = [objc_msgSend(objc_msgSend(gRouteTimestampPrefs objectForKey:{DeviceRouteString), "objectForKey:", @"voiceCommandSynchroizedVolumeActivityTimestamp", "unsignedLongLongValue"}];
    FigSimpleMutexUnlock();
  }

  CFRelease(DeviceRouteString);
  return v4;
}

void PVMSetMostRecentSynchronizedVolumeActivityTimestamp(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  DeviceRouteString = pvmCreateDeviceRouteString(a1[1], a1[3], a1[2]);
  v4 = DeviceRouteString;
  if (DeviceRouteString)
  {
    v5 = gRouteTimestampPrefs == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    if (!DeviceRouteString)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a2];
    FigSimpleMutexLock();
    v9 = [objc_msgSend(gRouteTimestampPrefs objectForKey:{v4), "mutableCopy"}];
    v6 = v9;
    if (!v9)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v6 setObject:v8 forKey:@"voiceCommandSynchroizedVolumeActivityTimestamp"];
    if (dword_1EB75DFE8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [gRouteTimestampPrefs setValue:v6 forKey:v4];
    FigSimpleMutexUnlock();
  }

  CFRelease(v4);
  v7 = v6;
LABEL_14:
}

void PVMApplyVolumeReductionToHeadphoneRoutes(float a1)
{
  v70[16] = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v2 = [*(sStorage + 16) copy];
  v3 = [*(sStorage + 120) copy];
  FigSimpleMutexUnlock();
  if (v2)
  {
    if (v3)
    {
      obj = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v5 = [v3 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v58;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v58 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v57 + 1) + 8 * i);
            if ([objc_msgSend(v3 objectForKeyedSubscript:{v9), "isEqualToString:", @"Headphones"}] && objc_msgSend(v9, "containsString:", @"Headphone"))
            {
              [obj addObject:v9];
            }
          }

          v6 = [v3 countByEnumeratingWithState:&v57 objects:v69 count:16];
        }

        while (v6);
      }

      v43 = v3;
      v44 = v2;
      if ([obj count])
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v10 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v54;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v54 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v53 + 1) + 8 * j);
              [objc_msgSend(objc_msgSend(v2 objectForKey:{v14), "objectForKey:", @"Audio/Video", "floatValue"}];
              if (v15 > a1)
              {
                [v4 addObject:v14];
              }
            }

            v11 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
          }

          while (v11);
        }

        if ([v4 count])
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = [v4 countByEnumeratingWithState:&v49 objects:v67 count:16];
          if (!v47)
          {
            goto LABEL_65;
          }

          v46 = *v50;
          v16 = &qword_1EB75D000;
          v45 = v4;
          while (1)
          {
            for (k = 0; k != v47; ++k)
            {
              if (*v50 != v46)
              {
                objc_enumerationMutation(v4);
              }

              v18 = *(*(&v49 + 1) + 8 * k);
              v19 = [v18 componentsSeparatedByString:@"~"];
              v20 = [v19 count];
              if (!v20)
              {
                v23 = 0;
                v22 = 0;
                v25 = 0;
                goto LABEL_37;
              }

              v21 = v20;
              v22 = [v19 objectAtIndex:0];
              v23 = 0;
              if (v21 == 2)
              {
                v24 = 1;
                goto LABEL_35;
              }

              if (v21 == 3)
              {
                v23 = [v19 objectAtIndex:1];
                v24 = 2;
LABEL_35:
                v25 = [v19 objectAtIndex:v24];
                goto LABEL_37;
              }

              v25 = 0;
LABEL_37:
              VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
              if (dword_1EB75DFE8)
              {
                v62 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v27 = v16;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v29 = v62;
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
                  v63 = 136315394;
                  v64 = "PVMApplyVolumeReductionToHeadphoneRoutes";
                  v65 = 2114;
                  v66 = v18;
                  LODWORD(v42) = 22;
                  _os_log_send_and_compose_impl(v31, 0, v70, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v30, "-PVM- %s: Applying volume limit reduction to route: %{public}@", &v63, v42, v43, v44);
                }

                v16 = v27;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              FigSimpleMutexLock();
              *(sStorage + 8) = 0;
              FigSimpleMutexUnlock();
              v70[0] = @"Headphones";
              v70[1] = v22;
              v70[2] = v23;
              v70[3] = v25;
              v70[4] = 0;
              pvmSetVolumePreferenceInternal(@"Audio/Video", @"Default", 0, v70, 1, VolumeSequenceNumber, 0, a1, 0.0, 0.0);
              FigSimpleMutexLock();
              *(sStorage + 8) = 1;
              FigSimpleMutexUnlock();
              v4 = v45;
            }

            v47 = [v45 countByEnumeratingWithState:&v49 objects:v67 count:16];
            if (!v47)
            {
LABEL_65:

              goto LABEL_67;
            }
          }
        }

        if (!dword_1EB75DFE8)
        {
          goto LABEL_65;
        }

        v62 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v39 = v62;
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
          v63 = 136315138;
          v64 = "PVMApplyVolumeReductionToHeadphoneRoutes";
          _os_log_send_and_compose_impl(v41, 0, v70, 128, &dword_1B17A2000, v38, v40, "-PVM- %s: No valid route to apply the volume reduction.", &v63);
        }
      }

      else
      {
        if (!dword_1EB75DFE8)
        {
          goto LABEL_65;
        }

        v62 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v35 = v62;
        v36 = type;
        if (os_log_type_enabled(v34, type))
        {
          v37 = v35;
        }

        else
        {
          v37 = v35 & 0xFFFFFFFE;
        }

        if (v37)
        {
          v63 = 136315138;
          v64 = "PVMApplyVolumeReductionToHeadphoneRoutes";
          _os_log_send_and_compose_impl(v37, 0, v70, 128, &dword_1B17A2000, v34, v36, "-PVM- %s: Not applying volume limit as we did not find any valid route.", &v63);
        }
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_65;
    }

    if (dword_1EB75DFE8)
    {
      v62 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = 0;
  }

  else
  {
    if (dword_1EB75DFE8)
    {
      v62 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = v3;
  }

LABEL_67:
}

uint64_t PVMSetVibeIntensityPreference(float a1)
{
  *valuePtr = a1;
  FigSimpleMutexLock();
  v1 = *(sStorage + 64);
  if (v1)
  {
    CFRelease(v1);
    *(sStorage + 64) = 0;
  }

  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
  v3 = sStorage;
  *(sStorage + 64) = v2;
  if (v2)
  {
    *(v3 + 72) = 1;
    pvmWritePrefs();
    v4 = 0;
  }

  else
  {
    v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, valuePtr[1]);
  }

  FigSimpleMutexUnlock();
  return v4;
}

float PVMGetVibeIntensityPreference()
{
  valuePtr = 1.0;
  FigSimpleMutexLock();
  v0 = *(sStorage + 64);
  if (v0)
  {
    CFNumberGetValue(v0, kCFNumberFloat32Type, &valuePtr);
    if (valuePtr > 0.1)
    {
      valuePtr = 1.0;
    }
  }

  FigSimpleMutexUnlock();
  return valuePtr;
}

uint64_t PVMSetInputVolumePreference(const void *a1, unint64_t a2, uint64_t a3, float a4)
{
  valuePtr = a4;
  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  if (DeviceRouteString)
  {
    v5 = DeviceRouteString;
    FigSimpleMutexLock();
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    if (v7)
    {
      v8 = v7;
      Mutable = *(sStorage + 48);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(sStorage + 48) = Mutable;
      }

      CFDictionarySetValue(Mutable, v5, v8);
      *(sStorage + 40) = 1;
      pvmWritePrefs();
      CFRelease(v8);
    }

    FigSimpleMutexUnlock();
    CFRelease(v5);
  }

  return 0;
}

float PVMGetInputVolumePreference(const void *a1, unint64_t a2, uint64_t a3)
{
  valuePtr = 1065353216;
  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  v4 = 1.0;
  if (DeviceRouteString)
  {
    v5 = DeviceRouteString;
    if (*(sStorage + 48))
    {
      FigSimpleMutexLock();
      Value = CFDictionaryGetValue(*(sStorage + 48), v5);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
      }

      FigSimpleMutexUnlock();
      CFRelease(v5);
      return *&valuePtr;
    }

    else
    {
      CFRelease(DeviceRouteString);
    }
  }

  return v4;
}

BOOL PVMInputVolumePrefExistsForDeviceRoute(const void *a1, unint64_t a2, uint64_t a3)
{
  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  if (!DeviceRouteString)
  {
    return 0;
  }

  v4 = DeviceRouteString;
  if (*(sStorage + 48))
  {
    FigSimpleMutexLock();
    v5 = CFDictionaryGetValue(*(sStorage + 48), v4) != 0;
    FigSimpleMutexUnlock();
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v4);
  return v5;
}

uint64_t PVMToggleMaxVolumeLimitForBuiltInSpeaker(int a1, __n128 a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = sStorage;
  *(sStorage + 92) = a1;
  if (a1)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 1.0;
  }

  pvmApplyMaxVolumeLimitForBuiltInSpeaker(v3);
  if (dword_1EB75DFE8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = +[MXPreferredVolumeManager sharedInstance];
  LODWORD(v6) = *(sStorage + 308);
  [(MXPreferredVolumeManager *)v5 postNotification:@"PVMStateDidChange" category:0 mode:0 volume:1 rampUpwardDuration:0 rampDownwardDuration:0 silenceVolumeHUD:v6 reason:0.0 refCon:0.0 sequenceNumber:0];
  return 0;
}

uint64_t pvmApplyMaxVolumeLimitForBuiltInSpeaker(float a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(sStorage + 96);
  *(sStorage + 96) = 1065353216;
  *&v7 = 0;
  *(&v7 + 1) = @"Speaker";
  v8 = 0;
  v9 = @"Speaker";
  v10 = 0;
  v3 = PVMGetVolumePreference(@"Audio/Video", 0, &v7);
  if (v3 < a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = a1;
  }

  FigSimpleMutexLock();
  *&v7 = 0;
  *(&v7 + 1) = @"Speaker";
  v8 = 0;
  v9 = @"Speaker";
  v10 = 0;
  pvmSetVolumePref(@"Audio/Video", 0, &v7, 0, v4);
  FigSimpleMutexUnlock();
  if (*(sStorage + 92))
  {
    *(sStorage + 96) = a1;
    if (dword_1EB75DFE8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *(sStorage + 96) = v2;
  }

  if (FigCFEqual() && FigCFEqual())
  {
    FigSimpleMutexLock();
    *(sStorage + 8) = 0;
    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    pvmUpdatePreferredVolumeAndLimit(@"VolumeLimitChange", 0, @"Audio/Video", 0, 0, 1, 0, 0.0, 0.0);
    FigSimpleMutexUnlock();
  }

  *(sStorage + 100) = 1;
  return pvmWritePrefs();
}

uint64_t PVMSetMaxVolumeLimitForBuiltInSpeaker(float a1)
{
  v2 = 1.0;
  if (a1 < 1.0)
  {
    v2 = a1;
    if (a1 <= 0.2)
    {
      v2 = 0.2;
    }
  }

  if (!*(sStorage + 92) || *(sStorage + 96) == v2)
  {
    *(sStorage + 96) = v2;
  }

  else
  {
    pvmApplyMaxVolumeLimitForBuiltInSpeaker(v2);
  }

  return 0;
}

float PVMComputeSynchronizedVolume(float a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 <= 0.3)
  {
    v4 = 0.0;
    v2 = 0.2;
    v3 = 0.35;
    v1 = 0.3;
LABEL_5:
    v5 = v2 + (((v3 - v2) / v1) * (a1 - v4));
    if (dword_1EB75DFE8)
    {
      goto LABEL_8;
    }

    return v5;
  }

  if (a1 <= 0.8)
  {
    v1 = 0.5;
    v2 = 0.35;
    v3 = 0.65;
    v4 = 0.3;
    goto LABEL_5;
  }

  v5 = 0.65;
  if (dword_1EB75DFE8)
  {
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v5;
}

uint64_t PVMGetVolumeToBeAppliedOnHardware(double a1, float a2)
{
  if (vabds_f32(*&a1, a2) <= 0.06251)
  {
    a2 = 0.2;
    if (*&a1 >= 0.2)
    {
      a2 = 0.65;
      if (*&a1 <= 0.65)
      {
        return 0;
      }
    }
  }

  *&a1 = a2;
  return [MEMORY[0x1E696AD98] numberWithFloat:a1];
}

void __pvmInitialize_block_invoke()
{
  v64 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E8B8];
  v1 = *MEMORY[0x1E695E898];
  v2 = CFPreferencesCopyValue(@"volumes", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v2)
  {
    v3 = v2;
    v52 = v1;
    Count = CFDictionaryGetCount(v2);
    v5 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    cf = v3;
    v54 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    v55 = v5;
    CFDictionaryGetKeysAndValues(v3, v5, v54);
    v53 = Count;
    if (Count >= 1)
    {
      v6 = 0;
      do
      {
        v7 = v54[v6];
        v8 = CFDictionaryGetCount(v7);
        v9 = malloc_type_calloc(v8, 8uLL, 0x80040B8603338uLL);
        v10 = malloc_type_calloc(v8, 8uLL, 0x80040B8603338uLL);
        CFDictionaryGetKeysAndValues(v7, v9, v10);
        if (dword_1EB75DFE8)
        {
          valuePtr = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v8 >= 1)
        {
          v12 = 0;
          v13 = dword_1EB75DFE8;
          do
          {
            if (v13)
            {
              valuePtr = 0;
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v13 = dword_1EB75DFE8;
            }

            ++v12;
          }

          while (v8 != v12);
        }

        free(v9);
        free(v10);
        ++v6;
      }

      while (v6 != v53);
    }

    free(v55);
    free(v54);
    CFRelease(cf);
    v1 = v52;
  }

  v15 = MXCFPreferencesCopyPreference(@"isMaxVolumeLimitForBuiltInSpeakerEnabled");
  FigCFEqual();
  if (dword_1EB75DFE8)
  {
    valuePtr = 0;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v17 = MXCFPreferencesCopyPreference(@"maxVolumeLimitForBuiltInSpeaker");
  if (v17)
  {
    v18 = v17;
    valuePtr = 0;
    CFNumberGetValue(v17, kCFNumberFloat32Type, &valuePtr);
    if (dword_1EB75DFE8)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFRelease(v18);
  }

  if (dword_1EB75DFE8)
  {
    valuePtr = 0;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = valuePtr;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v23 = *(sStorage + 312);
      v57 = 136315394;
      v58 = "pvmDumpVolumePreferences";
      v59 = 2048;
      v60 = v23;
      LODWORD(v50) = 22;
      _os_log_send_and_compose_impl(v22, 0, v63, 128, &dword_1B17A2000, v20, 0, "-PVM- %s: personalAudioDevicesMediaVolumeResetTimerDuration = %f sec", &v57, v50);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v24 = CFPreferencesCopyValue(@"volumeMultiplier", @"com.apple.mediaexperience", v0, v1);
  if (v24)
  {
    v25 = v24;
    v26 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    v27 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(v25, v26, v27);
    if (dword_1EB75DFE8)
    {
      v28 = *v26;
      v29 = *v27;
      valuePtr = 0;
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v31 = valuePtr;
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
        v57 = 136315650;
        v58 = "pvmDumpVolumePreferences";
        v59 = 2114;
        v60 = *&v28;
        v61 = 2114;
        v62 = v29;
        LODWORD(v50) = 32;
        _os_log_send_and_compose_impl(v32, 0, v63, 128, &dword_1B17A2000, v30, 0, "-PVM- %s: Multiplier = %{public}@, Value = %{public}@", &v57, *&v50);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    free(v26);
    free(v27);
    CFRelease(v25);
  }

  if (dword_1EB75DFE8)
  {
    valuePtr = 0;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v34 = valuePtr;
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
      v36 = CMSMDeviceState_RingerIsOn(1);
      v37 = "not silenced";
      if (!v36)
      {
        v37 = "silenced";
      }

      v57 = 136315394;
      v58 = "pvmDumpVolumePreferences";
      v59 = 2082;
      v60 = *&v37;
      LODWORD(v50) = 22;
      _os_log_send_and_compose_impl(v35, 0, v63, 128, &dword_1B17A2000, v33, 0, "-PVM- %s: Ringer switch preference: Device is %{public}s", &v57, *&v50);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DFE8)
    {
      valuePtr = 0;
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v39 = valuePtr;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v39;
      }

      else
      {
        v40 = v39 & 0xFFFFFFFE;
      }

      if (v40)
      {
        if (CMSMDeviceState_VibrateOnRing(1))
        {
          v41 = "ON";
        }

        else
        {
          v41 = "OFF";
        }

        v57 = 136315394;
        v58 = "pvmDumpVolumePreferences";
        v59 = 2082;
        v60 = *&v41;
        LODWORD(v50) = 22;
        _os_log_send_and_compose_impl(v40, 0, v63, 128, &dword_1B17A2000, v38, 0, "-PVM- %s: Vibrate on ring preference: %{public}s", &v57, *&v50);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DFE8)
      {
        valuePtr = 0;
        v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v43 = valuePtr;
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
          if (CMSMDeviceState_VibrateOnSilent(1))
          {
            v45 = "ON";
          }

          else
          {
            v45 = "OFF";
          }

          v57 = 136315394;
          v58 = "pvmDumpVolumePreferences";
          v59 = 2082;
          v60 = *&v45;
          LODWORD(v50) = 22;
          _os_log_send_and_compose_impl(v44, 0, v63, 128, &dword_1B17A2000, v42, 0, "-PVM- %s: Vibrate on silent preference: %{public}s", &v57, *&v50);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EB75DFE8)
        {
          valuePtr = 0;
          v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v47 = valuePtr;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 0xFFFFFFFE;
          }

          if (v48)
          {
            if (CMSMDeviceState_ButtonsCanChangeRingerVolume())
            {
              v49 = "ON";
            }

            else
            {
              v49 = "OFF";
            }

            v57 = 136315394;
            v58 = "pvmDumpVolumePreferences";
            v59 = 2082;
            v60 = *&v49;
            LODWORD(v50) = 22;
            _os_log_send_and_compose_impl(v48, 0, v63, 128, &dword_1B17A2000, v46, 0, "-PVM- %s: Ringer volume can change with volume buttons preference: %{public}s", &v57, *&v50);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }
}

void pvmApplierFunction_CopyValidatedVolumes(const void *a1, CFNumberRef number, __CFDictionary *a3)
{
  if (a3)
  {
    valuePtr = 0.0;
    CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
    if (valuePtr > 1.0)
    {
      valuePtr = 1.0;
    }

    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    CFDictionarySetValue(a3, a1, v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t __pvmInitializeLogging_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  result = fig_note_initialize_category_with_default_work();
  if ((dword_1EB75DFE8 & 0x100) != 0)
  {
    dword_1EB75DFE8 = 0;
  }

  return result;
}

void pvmApplierFunction_ValidateVolumesForRoute(const void *a1, const __CFDictionary *a2, __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryApplyFunction(a2, pvmApplierFunction_ValidateVolumesForCategory, Mutable);
  CFDictionarySetValue(a3, a1, Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void pvmApplierFunction_ValidateVolumesForCategory(const void *a1, const void *a2, __CFDictionary *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!FigCFEqual())
  {
    valuePtr = 1056964608;
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a2, kCFNumberFloat32Type, &valuePtr);
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
      CFDictionarySetValue(a3, a1, v7);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      if (dword_1EB75DFE8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXSimulateCrash("PVM volume entry contained something other than a CFNumber. Please file a radar to MediaExperience (New Bugs) | All.");
    }
  }
}

uint64_t pvmGetMappedBluetoothRouteWithDeviceIDAppended(void *a1)
{
  if (([a1 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(a1, "hasPrefix:", @"HeadsetBT"))
  {
    return 0;
  }

  v2 = [objc_msgSend(a1 componentsSeparatedByString:{@"~", "lastObject"}];
  if (v2)
  {
    v3 = [objc_msgSend(v2 componentsSeparatedByString:{@"-", "firstObject"}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [@"HeadphonesBT" stringByAppendingString:@"~"];

  return [v4 stringByAppendingString:v3];
}

uint64_t __pvmAdd100dBVolumeLimitChangedListener_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (dword_1EB75DFE8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(sStorage + 8) = 0;
  FigSimpleMutexUnlock();
  return pvmUpdate100dBVolumeLimit(CFPreferenceNumberWithDefault != 0);
}

float pvmGet100dBVolumeLimit()
{
  Value = CFDictionaryGetValue(*(sStorage + 80), @"HighVolumeLimit");
  valuePtr = 1062668861;
  v1 = *"=\nW?";
  if (Value)
  {
    v2 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      CFNumberGetValue(v2, kCFNumberFloatType, &valuePtr);
      return *&valuePtr;
    }
  }

  return v1;
}

void pvmSetSystemSoundVolumeMultiplierForVolumeGuts(float a1)
{
  FigSimpleMutexLock();
  v3 = *(sStorage + 160);
  v4 = *(sStorage + 168);
  if (((v3 + a1) * v4) >= v3)
  {
    v3 = (v3 + a1) * v4;
  }

  if (v3 > *(sStorage + 164))
  {
    v3 = *(sStorage + 164);
  }

  valuePtr = v3;
  v5 = *MEMORY[0x1E695E480];
  if (*(sStorage + 104) || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(sStorage + 104) = Mutable) != 0))
  {
    v7 = CFNumberCreate(v5, kCFNumberFloat32Type, &valuePtr);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(*(sStorage + 104), @"global", v7);
      CFRelease(v8);
      *(sStorage + 112) = 1;
      pvmWritePrefs();
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB75DFE0, 4294938296, "-PVM-", 4371, v1);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB75DFE0, 4294938296, "-PVM-", 4361, v1);
  }

  FigSimpleMutexUnlock();
}

void pvmReassertDeviceVolumesIfMatchesRoute(const __CFString *a1, const __CFDictionary *a2, uint64_t *a3)
{
  v6 = @"HeadphonesBT";
  if (CFStringHasPrefix(a1, @"HeadphonesBT") || (v6 = @"Headphone", CFStringHasPrefix(a1, @"Headphone")))
  {
    v7 = *MEMORY[0x1E695E480];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
    CFStringAppend(MutableCopy, @"~");
    HasPrefix = CFStringHasPrefix(a1, MutableCopy);
    CFRelease(MutableCopy);
    if (HasPrefix)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v7, a1, @"~");
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      v12 = *a3;
      v15 = 0;
      ValueAtIndex = 0;
      v18 = v12;
      context = v6;
      if (Count >= 2)
      {
        v13 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
        if (v13 != 2)
        {
          v15 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
        }
      }

      v17 = *(sStorage + 264);
      CFDictionaryApplyFunction(a2, pvmReassertVolume, &context);
      CFRelease(ArrayBySeparatingStrings);
    }
  }
}

void pvmReassertVolume(void *a1, const void *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  cf = 0;
  v6 = a3[4];
  if (!FigCFEqual())
  {
    valuePtr = 0.0;
    v7 = CFGetTypeID(a2);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a2, kCFNumberFloat32Type, &valuePtr);
      v9 = a3[2];
      v8 = a3[3];
      v11 = *a3;
      v10 = a3[1];
      v12 = valuePtr;
      v20 = v8;
      v21 = v11;
      v22 = v9;
      v23 = v10;
      v24 = 0;
      VolumeLimitPref = pvmGetVolumeLimitPref(&v20);
      v20 = v8;
      v21 = v11;
      v22 = v9;
      v23 = v10;
      v24 = 0;
      v14 = v12 / (VolumeLimitPref * pvmGetCurrentVolumeLimitForRoute(&v20, 0));
      if (v14 <= 1.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1.0;
      }

      pvmCreateSeparateCategoryAndModeStrings(a1, &cf, &v18);
      v20 = v8;
      v21 = v11;
      v22 = v9;
      v23 = v10;
      v24 = 0;
      pvmSetVolumePreferenceInternal(cf, v18, 0, &v20, 0, v6, 0, v15, 0.0, 0.0);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    else
    {
      if (dword_1EB75DFE8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXSimulateCrash("pvmReassertVolume contained something other than a CFNumber. Please file a radar to MediaExperience (New Bugs) | All.");
    }
  }
}

void sub_1B192FC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id obj, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v62);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1B1932174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id obj, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v48);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void CMScreenInitialize()
{
  gCMScreen_0 = 0;
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  gCMScreen_1 = dispatch_queue_create("com.apple.coremedia.cmsession.screenqueue", v0);
  MXDispatchAsync("CMScreenInitialize", "CMSessionManager_Screen.m", 131, 0, 0, gCMScreen_1, &__block_literal_global_67);
  CMScreenSetMirroringMode(0);

  CMScreenSetVirtualDisplayClientPID(0);
}

CFTypeRef cmscreenSetCurrentState(CFTypeRef cf)
{
  if (gCMScreen_2)
  {
    CFRelease(gCMScreen_2);
  }

  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  gCMScreen_2 = result;
  return result;
}

void CMScreenSetMirroringMode(int a1)
{
  if (BackBoardServicesLibrary_sOnce != -1)
  {
    CMScreenSetMirroringMode_cold_1();
  }

  if (BackBoardServicesLibrary_sLib)
  {
    if (dlsym(BackBoardServicesLibrary_sLib, "BKSDisplayServicesSetCloneMirroringMode"))
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __CMScreenSetMirroringMode_block_invoke;
      v2[3] = &__block_descriptor_36_e5_v8__0l;
      v3 = a1;
      MXDispatchAsync("CMScreenSetMirroringMode", "CMSessionManager_Screen.m", 698, 0, 0, gCMScreen_1, v2);
    }
  }
}

void CMScreenSetVirtualDisplayClientPID(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (BackBoardServicesLibrary_sOnce != -1)
  {
    CMScreenSetMirroringMode_cold_1();
  }

  if (BackBoardServicesLibrary_sLib && dlsym(BackBoardServicesLibrary_sLib, "BKSDisplayServicesSetVirtualDisplayClientPID"))
  {
    if (dword_1EB75DE40)
    {
      v6 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __CMScreenSetVirtualDisplayClientPID_block_invoke;
    v3[3] = &__block_descriptor_36_e5_v8__0l;
    v4 = a1;
    MXDispatchAsync("CMScreenSetVirtualDisplayClientPID", "CMSessionManager_Screen.m", 714, 0, 0, gCMScreen_1, v3);
  }
}

uint64_t CMScreenHandleActivation(CFTypeRef cf, CFTypeRef a2)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMScreenHandleActivation_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = cf;
  v5[5] = a2;
  MXDispatchAsync("CMScreenHandleActivation", "CMSessionManager_Screen.m", 217, 0, 0, gCMScreen_1, v5);
  return 0;
}

void __CMScreenHandleActivation_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!cmscreenIsActivated())
  {
    if (!gCMScreen_0)
    {
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      v5 = "unknown endpoint type";
      if (CStringPtrAndBufferToFree)
      {
        v5 = CStringPtrAndBufferToFree;
      }

      snprintf(__str, 0x80uLL, "CMSessionManager-%s", v5);
      free(0);
      gCMScreen_0 = FigOSTransactionCreate();
    }

    cmscreenSetCurrentState(@"ScreenState_Suspended");
    if (cmscreenEndpointIsStarkWiFi(v2, v3) && !sCMScreenStarkWiFiIdleSleepPreventor)
    {
      v6 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v8 = CFDateCreate(v6, Current);
      PowerLogDataForStarkWiFi = CMSMPowerLogCreatePowerLogDataForStarkWiFi(@"WiFiCarPlayScreenActivate", sCMScreenStarkWiFiIdleSleepPreventor, @"com.apple.cmsession.WiFiCarPlay.IsConnected", v8);
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

    CMSMPowerLogPostScreenMirroringPowerLogs(*MEMORY[0x1E695E4D0]);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t CMScreenHandleDeactivation(CFTypeRef cf, CFTypeRef a2)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMScreenHandleDeactivation_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = cf;
  v5[5] = a2;
  MXDispatchAsync("CMScreenHandleDeactivation", "CMSessionManager_Screen.m", 268, 0, 0, gCMScreen_1, v5);
  return 0;
}

void __CMScreenHandleDeactivation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  cmscreenSetCurrentState(@"ScreenState_Deactivated");
  if (cmscreenEndpointIsStarkWiFi(v2, v3))
  {
    v4 = sCMScreenStarkWiFiIdleSleepPreventor == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *MEMORY[0x1E695E480];
    Current = CFAbsoluteTimeGetCurrent();
    v7 = CFDateCreate(v5, Current);
    PowerLogDataForStarkWiFi = CMSMPowerLogCreatePowerLogDataForStarkWiFi(@"WiFiCarPlayScreenDeactivate", sCMScreenStarkWiFiIdleSleepPreventor, @"com.apple.cmsession.WiFiCarPlay.IsConnected", v7);
    CMSMSleep_ReleaseIdleSleepPreventor(sCMScreenStarkWiFiIdleSleepPreventor, @"WiFiCarPlayScreen", PowerLogDataForStarkWiFi);
    sCMScreenStarkWiFiIdleSleepPreventor = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    if (PowerLogDataForStarkWiFi)
    {
      CFRelease(PowerLogDataForStarkWiFi);
    }
  }

  CMSMPowerLogPostScreenMirroringPowerLogs(*MEMORY[0x1E695E4C0]);
  if (gCMScreen_0)
  {

    gCMScreen_0 = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {

    CFRelease(v10);
  }
}

void __CMScreenSuspendStream_block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[6];
    if (FigCFEqual())
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
    }

    else
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (cmscreenEndpointIsStarkWiFi(v2, v3) && sCMScreenStarkWiFiIdleSleepPreventor)
      {
        v5 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v7 = CFDateCreate(v5, Current);
        PowerLogDataForStarkWiFi = CMSMPowerLogCreatePowerLogDataForStarkWiFi(@"WiFiCarPlayScreenSuspend", sCMScreenStarkWiFiIdleSleepPreventor, @"com.apple.cmsession.WiFiCarPlay.IsConnected", v7);
        CMSMSleep_ReleaseIdleSleepPreventor(sCMScreenStarkWiFiIdleSleepPreventor, @"WiFiCarPlayScreen", PowerLogDataForStarkWiFi);
        sCMScreenStarkWiFiIdleSleepPreventor = 0;
        if (v7)
        {
          CFRelease(v7);
        }

        if (PowerLogDataForStarkWiFi)
        {
          CFRelease(PowerLogDataForStarkWiFi);
        }
      }

      FigEndpointStreamSuspend();
      cmscreenSetCurrentState(@"ScreenState_Suspended");
    }
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[6];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[7];
  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t CMScreenGetScreenState()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __CMScreenGetScreenState_block_invoke;
  v2[3] = &unk_1E7AE73A0;
  v2[4] = &v3;
  MXDispatchSync("CMScreenGetScreenState", "CMSessionManager_Screen.m", 577, 0, 0, gCMScreen_1, v2);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B19347CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMScreenIsSuspended()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __CMScreenIsSuspended_block_invoke;
  v2[3] = &unk_1E7AE73A0;
  v2[4] = &v3;
  MXDispatchSync("CMScreenIsSuspended", "CMSessionManager_Screen.m", 679, 0, 0, gCMScreen_1, v2);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B19348C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMScreenIsSuspended_block_invoke(uint64_t a1)
{
  result = FigCFEqual();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t cmscreenEndpointIsStarkWiFi(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    return FigCFEqual() != 0;
  }

  return result;
}

uint64_t __cmscreenIsTetheredDemoModeOn_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  cmscreenIsTetheredDemoModeOn_isThetheredDemoModeOn = result;
  return result;
}

void *__BackBoardServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices", 2);
  BackBoardServicesLibrary_sLib = result;
  return result;
}

uint64_t initBKSDisplayServicesSetCloneMirroringMode(uint64_t a1)
{
  if (BackBoardServicesLibrary_sOnce != -1)
  {
    CMScreenSetMirroringMode_cold_1();
  }

  v2 = dlsym(BackBoardServicesLibrary_sLib, "BKSDisplayServicesSetCloneMirroringMode");
  softLinkBKSDisplayServicesSetCloneMirroringMode = v2;

  return v2(a1);
}

uint64_t initBKSDisplayServicesSetVirtualDisplayClientPID(uint64_t a1)
{
  if (BackBoardServicesLibrary_sOnce != -1)
  {
    CMScreenSetMirroringMode_cold_1();
  }

  v2 = dlsym(BackBoardServicesLibrary_sLib, "BKSDisplayServicesSetVirtualDisplayClientPID");
  softLinkBKSDisplayServicesSetVirtualDisplayClientPID = v2;

  return v2(a1);
}

void *CMSM_IDSClient_Initialize()
{
  if (cmsm_IDSClient_GetClient_once != -1)
  {
    CMSM_IDSClient_Initialize_cold_1();
  }

  idsFrameworkLib = dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 4);
  result = dlsym(idsFrameworkLib, "IDSSendMessageOptionQueueOneIdentifierKey");
  kMXSession_IDSSendMessageOptionQueueOneIdentifierKey = result;
  return result;
}

id CMSM_IDSClient_CreateSessionInfoDictionary(void *a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [a1 clientName];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"ClientName"];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v4 setObject:objc_msgSend(a1 forKey:{"ID"), @"CMSessionID"}];
  [v4 setObject:objc_msgSend(a1 forKey:{"audioCategory"), @"AudioCategory"}];
  [v4 setObject:objc_msgSend(a1 forKey:{"audioMode"), @"AudioMode"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a1, "interruptionStyle")), @"InterruptionStyle"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a1, "clientPriority")), @"ClientPriority"}];
  if (a2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "handsOverInterruptionsToInterruptor")}];
    [v4 setObject:v7 forKey:kMXSession_IDSMessage_HandoverInterruption];
  }

  return v4;
}

uint64_t CMSM_IDSClient_QueryRemote_BTDeviceConnectionStatus()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_BTDeviceConnectionStatusQuery);
  valuePtr = 1065353216;
  v2 = CFNumberCreate(v0, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t CMSM_IDSClient_SendNotificationMessage(uint64_t a1)
{
  v14[23] = *MEMORY[0x1E69E9840];
  if (cmsm_IDSClient_GetClient_once != -1)
  {
    CMSM_IDSClient_Initialize_cold_1();
  }

  v2 = cmsm_IDSClient_GetClient_idsClient;
  v3 = CMSM_IDSConnection_CopyNearbyPairedDevice();
  if (!v3)
  {
    FigCFDictionaryGetValue();
    goto LABEL_17;
  }

  v4 = CMSM_IDSCopyIDForDevice();
  Value = FigCFDictionaryGetValue();
  if (!v4)
  {
LABEL_17:
    LODWORD(v14[0]) = 0;
    v13[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = 0;
    v10 = 0;
    goto LABEL_23;
  }

  *v13 = 0;
  v14[0] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    FigCFDictionarySetValue();
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  if (!CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() && Value != kMXSession_IDSMessage_Type_BTDeviceConnectionStatusChanged && Value != kMXSession_IDSMessage_Type_BTDeviceConnectionStatusReply)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = [v2 sendMessage:a1 toDestinations:v7 priority:300 options:Mutable identifier:v13 error:v14];
  if (!v10 || dword_1EB75DE40)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_23:

  return v10;
}

uint64_t CMSM_IDSClient_ReplyToRemote_BTDeviceConnectionStatus(int a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_BTDeviceConnectionStatusReply);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = MEMORY[0x1E695E4C0];
  if (a1)
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_BTDeviceIsConnectedKey, *v5);
  v6 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t CMSM_IDSClient_NotifyRemote_BTDeviceConnectionStatusChanged(int a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_BTDeviceConnectionStatusChanged);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = MEMORY[0x1E695E4C0];
  if (a1)
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_BTDeviceIsConnectedKey, *v5);
  v6 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t CMSM_IDSClient_QueryRemote_PlayingInfo()
{
  CMSM_IDSConnection_UpdateRemoteRepliedWithInitialPlayingInfo(0);
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_RemotePlayingInfoQuery);
  valuePtr = 1065353216;
  v2 = CFNumberCreate(v0, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3 && !CMSM_IDSConnection_DidRemoteReplyWithInitialPlayingInfo())
  {
    CMSM_IDSConnection_StartWaitForRemoteToReplyWithInitialPlayingInfoTimer(20.0);
  }

  return v3;
}

uint64_t CMSM_IDSClient_ReplyToRemote_PlayingInfo(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_RemotePlayingInfoReply);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, kMXSession_IDSMessage_AllPlayingSessionsKey, a1);
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  CMSMUtility_GetCurrentRouteInfoAtIndex(0, &v10);
  DoesPortSupportMultipleConnections = vaeDoesPortSupportMultipleConnections(DWORD2(v12));
  v6 = MEMORY[0x1E695E4C0];
  if (DoesPortSupportMultipleConnections)
  {
    v6 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_CurrentRouteIsSharedKey, *v6);
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v7 = &stru_1F2890CF0;
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_CurrentRouteUIDKey, v7);
  v8 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t CMSM_IDSClient_NotifyRemote_LocalIsBeingInitialized()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_LocalIsBeingInitialized);
  valuePtr = 1065353216;
  v2 = CFNumberCreate(v0, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

id CMSM_IDSClient_NotifyRemote_InterruptionStartAndCopyIdentifier(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  SessionInfoDictionary = CMSM_IDSClient_CreateSessionInfoDictionary(a1, 1);
  FigCFDictionarySetValue();
  if (cmsm_IDSClient_GetClient_once != -1)
  {
    CMSM_IDSClient_NotifyRemote_InterruptionStartAndCopyIdentifier_cold_1();
  }

  v6 = cmsm_IDSClient_GetClient_idsClient;
  v7 = CMSM_IDSConnection_CopyNearbyPairedDevice();
  v9 = v7;
  if (v7)
  {
    v7 = CMSM_IDSCopyIDForDevice();
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x3052000000;
  v43 = __Block_byref_object_copy__11;
  v44 = __Block_byref_object_dispose__11;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (v10)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3052000000;
    v33 = __Block_byref_object_copy__11;
    v34 = __Block_byref_object_dispose__11;
    v35 = 0;
    MessagingQueue = CMSM_IDSConnection_GetMessagingQueue(v7, v8);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __CMSM_IDSClient_SendMessageAsyncAndCopyIdentifier_block_invoke;
    v29[3] = &unk_1E7AEC910;
    v29[4] = v6;
    v29[5] = v10;
    v29[6] = &v36;
    v29[7] = &v40;
    v29[8] = &v30;
    v29[9] = Mutable;
    MXDispatchSync("CMSM_IDSClient_SendMessageAsyncAndCopyIdentifier", "CMSessionManager_IDSClient.m", 635, 0, 0, MessagingQueue, v29);
    if (Mutable)
    {
      Value = CFDictionaryGetValue(Mutable, kMXSession_IDSMessage_TypeKey);
    }

    else
    {
      Value = 0;
    }

    if (*(v37 + 24))
    {
      if (!dword_1EB75DE40)
      {
LABEL_25:
        _Block_object_dispose(&v30, 8);
        goto LABEL_26;
      }

      v28 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v28;
      v15 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v16 = v14;
      }

      else
      {
        v16 = v14 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = v41[5];
        v46 = 136315650;
        v47 = "CMSM_IDSClient_SendMessageAsyncAndCopyIdentifier";
        v48 = 2114;
        v49 = Value;
        v50 = 2114;
        v51 = v17;
        _os_log_send_and_compose_impl(v16, 0, v54, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v15, "-CMSM_IDSClient- %s: Successfully sent the message %{public}@ with identifier=%{public}@", &v46, 32);
      }
    }

    else
    {
      v28 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = v28;
      v20 = type;
      if (os_log_type_enabled(v18, type))
      {
        v21 = v19;
      }

      else
      {
        v21 = v19 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = v41[5];
        v23 = v31[5];
        v46 = 136315906;
        v47 = "CMSM_IDSClient_SendMessageAsyncAndCopyIdentifier";
        v48 = 2114;
        v49 = Value;
        v50 = 2114;
        v51 = v22;
        v52 = 2114;
        v53 = v23;
        _os_log_send_and_compose_impl(v21, 0, v54, 128, &dword_1B17A2000, v18, v20, "-CMSM_IDSClient- %s: Failed to send the message %{public}@ with identifier=%{public}@ and error %{public}@.", &v46, 42);
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_25;
  }

LABEL_26:

  v24 = v41[5];
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  if (SessionInfoDictionary)
  {
    CFRelease(SessionInfoDictionary);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v24;
}

void sub_1B1935F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMSM_IDSClient_NotifyRemote_InterruptionDone(int a1, const void *a2)
{
  v10 = a1;
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_RemoteInterruptionDone);
  valuePtr = 1065353216;
  v5 = CFNumberCreate(v3, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = CFNumberCreate(v3, kCFNumberSInt32Type, &v10);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_RemoteInterruptionDoneErrorCode, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_IdentifierKey, a2);
  v7 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t CMSM_IDSClient_NotifyRemote_LocalIsPlayingStart(void *a1)
{
  if (CMSM_GetLocalSessionPriority(a1, 0) == 100)
  {
    return 1;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_LocalIsPlayingStart);
  valuePtr = 1065353216;
  v5 = CFNumberCreate(v3, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  SessionInfoDictionary = CMSM_IDSClient_CreateSessionInfoDictionary(a1, 0);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_PlayingSessionKey, SessionInfoDictionary);
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  CMSMUtility_GetCurrentRouteInfoAtIndex(0, &v11);
  DoesPortSupportMultipleConnections = vaeDoesPortSupportMultipleConnections(DWORD2(v13));
  v8 = MEMORY[0x1E695E4C0];
  if (DoesPortSupportMultipleConnections)
  {
    v8 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_CurrentRouteIsSharedKey, *v8);
  if (v12)
  {
    v9 = v12;
  }

  else
  {
    v9 = &stru_1F2890CF0;
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_CurrentRouteUIDKey, v9);
  v2 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (SessionInfoDictionary)
  {
    CFRelease(SessionInfoDictionary);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t CMSM_IDSClient_NotifyRemote_LocalIsPlayingDone(void *a1)
{
  if (CMSM_GetLocalSessionPriority(a1, 0) == 100)
  {
    return 1;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_LocalIsPlayingDone);
  valuePtr = 1065353216;
  v5 = CFNumberCreate(v3, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  SessionInfoDictionary = CMSM_IDSClient_CreateSessionInfoDictionary(a1, 0);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_PlayingSessionKey, SessionInfoDictionary);
  v2 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (SessionInfoDictionary)
  {
    CFRelease(SessionInfoDictionary);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t CMSM_IDSClient_NotifyRemote_LocalIsDoingEndInterruption(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_LocalIsDoingEndInterruption);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, kMXSession_IDSMessage_LocalEndInterruptionStatusKey, a1);
  }

  v5 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

uint64_t CMSM_IDSClient_NotifyRemote_UpdateSharedAudioRouteMacAddress(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_UpdateSharedAudioRouteMacAddress);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, kMXSession_IDSMessage_SharedAudioRouteMacAddress, a1);
    v5 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_ClearSharedAudioRoute, *v5);
  v6 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

__CFString *CMSMVAUtility_MapVASiriInputSourceToString(int a1)
{
  if (a1 <= 1936289390)
  {
    if (a1 == 1936024681)
    {
      return @"ExternalDeviceInput";
    }

    if (a1 == 1936286822)
    {
      return @"DefaultDevice";
    }
  }

  else
  {
    switch(a1)
    {
      case 1936289391:
        return @"None";
      case 1936290660:
        return @"SpeechDetectionDevice";
      case 1936679529:
        return @"OutOfBandSpeechInput";
    }
  }

  return 0;
}

NSDictionary *CMSMVAUtility_GetVADOutputPortTypeFromFigRouteName(NSDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = [+[MXSessionManager sharedInstance](MXSessionManager figRouteToVADOutputPortTypeDict];
    if (result)
    {
      return -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager figRouteToVADOutputPortTypeDict], "objectForKey:", v1);
    }
  }

  return result;
}

NSDictionary *CMSMVAUtility_GetVADInputPortTypeFromFigRouteName(NSDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = [+[MXSessionManager sharedInstance](MXSessionManager figRouteToVADInputPortTypeDict];
    if (result)
    {
      return -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager figRouteToVADInputPortTypeDict], "objectForKey:", v1);
    }
  }

  return result;
}

BOOL CMSMVAUtility_MakeConnectedPortRoutable(AudioObjectID a1, int a2)
{
  PortRoutable = vaeMakePortRoutable(a1, a2, 0, qword_1EB75E190);
  v4 = vaeCopyNameForPort(a1);
  if (v4)
  {
    CFRelease(v4);
  }

  return PortRoutable == 0;
}

uint64_t CMSMVAUtility_MakeLowLatencyAirPlayPortRoutable(uint64_t a1)
{
  v2 = CMSMVAUtility_CopyConnectedWirelessPorts();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    goto LABEL_10;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    valuePtr = 0;
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
    v8 = valuePtr;
    if (vaeGetPortTypeFromPortID(valuePtr) == 1885433964)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    v9 = 1;
    vaeMakePortRoutable(v8, 1, 1u, a1);
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  CFRelease(v3);
  return v9;
}

BOOL CMSMVAUtility_ShouldAutoRouteOnConnect(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);
  v5 = vaeCopyDeviceIdentifierFromVADPort(a1);
  v6 = FigRoutingManagerCopyEndpointWithDeviceID(v5, 1, *MEMORY[0x1E69618E0], 0);
  if (v6)
  {
    CFRelease(v6);
LABEL_3:
    ShouldBTPortBeTreatedAsInEar = 0;
    goto LABEL_4;
  }

  if (PortTypeFromPortID > 1885433970)
  {
    if (PortTypeFromPortID == 1885433975)
    {
      ShouldBTPortBeTreatedAsInEar = 0;
      goto LABEL_75;
    }

    if (PortTypeFromPortID != 1885433971)
    {
LABEL_22:
      ShouldBTPortBeTreatedAsInEar = 1;
      if (PortTypeFromPortID > 1886152040)
      {
        if (PortTypeFromPortID != 1886152041 && PortTypeFromPortID != 1886152047)
        {
          v14 = 1886216820;
          goto LABEL_30;
        }
      }

      else if (PortTypeFromPortID != 1885565807)
      {
        if (PortTypeFromPortID == 1885892674)
        {
          goto LABEL_31;
        }

        v14 = 1885892706;
LABEL_30:
        if (PortTypeFromPortID != v14)
        {
          goto LABEL_4;
        }

LABEL_31:
        if (!vaeDoesPortSupportMultipleConnections(a1))
        {
          ShouldBTPortBeTreatedAsInEar = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(a1);
          if (PortTypeFromPortID != 1885892674)
          {
            goto LABEL_74;
          }

          if (CMSMDeviceState_ItsAnAppleTV())
          {
            goto LABEL_74;
          }

          if (!vaemLineOutIsConnected() && !vaemUSBAudioOutputIsConnected() && !vaemHDMIAudioOutputIsConnected() && !vaemDisplayPortAudioOutputIsConnected() && !vaemThunderboltOutputIsConnected())
          {
            IsCurrentlyActive = vaemStarkAudioPortIsCurrentlyActive();
            if (!IsCurrentlyActive && !vaemContinuityScreenOutputIsConnected(IsCurrentlyActive, v17))
            {
              goto LABEL_74;
            }
          }

          if (!dword_1EB75DE40)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        }

        if ([+[MXAudioAccessoryServices isPortManaged:"isPortManaged:"]
        {
          if (CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(a1))
          {
            if ([+[MXAudioAccessoryServices hijackWirelessPort:"hijackWirelessPort:reason:portWentInEar:"]
            {
              if (!vaeRequestOwnershipOnBTPort(a1, 16))
              {
                goto LABEL_74;
              }

              goto LABEL_70;
            }

            if (dword_1EB75DE40)
            {
LABEL_70:
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              goto LABEL_72;
            }
          }

          else if (dword_1EB75DE40)
          {
            goto LABEL_70;
          }
        }

        else if (vaeDoesBTPortSupportInEarDetection(a1))
        {
          if (FigEndpointUtility_EndpointPredicate_EqualsAudioStreamID())
          {
            if (!cmsmShouldSetupForCoordinatedInterruptions(a1, 0))
            {
              goto LABEL_74;
            }

            if (dword_1EB75DE40)
            {
              v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (!vaeRequestOwnershipOnBTPort(a1, 12))
            {
LABEL_71:
              ShouldBTPortBeTreatedAsInEar = 1;
              goto LABEL_74;
            }

            goto LABEL_70;
          }

          if (CMSMVAUtility_IsBTPortKnownToNotBeInEar(a1))
          {
            if (dword_1EB75DE40)
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (vaeGetBTPortOwnsSharedAudioConnection(a1))
            {
              goto LABEL_74;
            }

            if (dword_1EB75DE40)
            {
              goto LABEL_70;
            }
          }
        }

        else
        {
          if (vaeGetBTPortOwnsSharedAudioConnection(a1))
          {
            goto LABEL_74;
          }

          if (dword_1EB75DE40)
          {
            goto LABEL_70;
          }
        }

LABEL_73:
        ShouldBTPortBeTreatedAsInEar = 0;
        goto LABEL_74;
      }

      if (dword_1EB75DE40)
      {
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
LABEL_72:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_73;
      }

      goto LABEL_73;
    }

LABEL_20:
    if (a2)
    {
      ShouldBTPortBeTreatedAsInEar = FigEndpointUtility_EndpointPredicate_EqualsAudioStreamID() != 0;
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (PortTypeFromPortID == 1885433953)
  {
    goto LABEL_20;
  }

  if (PortTypeFromPortID != 1885433964)
  {
    goto LABEL_22;
  }

  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  if (!NumberOfCurrentOutputPorts)
  {
    goto LABEL_71;
  }

  v9 = 0;
  v10 = 0;
  v11 = NumberOfCurrentOutputPorts;
  do
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v9, v21);
    v12 = v22;
    if ((vaeGetPortTypeFromPortID(v22) & 0xFFFFFFDF) == 0x70687042 && CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(v12))
    {
      v10 = 1;
    }

    ++v9;
  }

  while (v11 != v9);
  if (v10)
  {
    if (dword_1EB75DE40)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_3;
  }

  ShouldBTPortBeTreatedAsInEar = 1;
LABEL_4:
  if (PortTypeFromPortID != 1885433975)
  {
LABEL_74:
    FigPredictedRouting_StopPreemptivePortChangedTimer(!ShouldBTPortBeTreatedAsInEar);
  }

LABEL_75:
  if (v5)
  {
    CFRelease(v5);
  }

  return ShouldBTPortBeTreatedAsInEar;
}

uint64_t CMSMVAUtility_IsBTPortKnownToNotBeInEar(AudioObjectID a1)
{
  result = vaeHasUserEnabledInEarDetectionForBTPort(a1, 0);
  if (result)
  {
    return vaeIsInEarStatusTrueForBTPort(a1) == 0;
  }

  return result;
}

uint64_t CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(const __CFArray *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v9 = Count;
  v39 = CMSMVAUtility_ArePortsHFPOnly(a1);
  v37 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v9 >= 1)
  {
    v38 = a4;
    v11 = a3;
    v12 = 0;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v15 = ValueAtIndex;
      if (ValueAtIndex)
      {
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        v16 = valuePtr;
      }

      else
      {
        v16 = 0;
      }

      if (CMSMVAUtility_ShouldAutoRouteOnConnect(v16, a2))
      {
        CFArrayAppendValue(Mutable, v15);
        if (vaeDoesPortSupportMultipleConnections(v16))
        {
          if (vaeGetPortTypeFromPortID(v16) == 1885892674 || vaeGetPortTypeFromPortID(v16) == 1885892706)
          {
            v12 = v16;
          }
        }
      }
    }

    a3 = v11;
    a4 = v38;
    if (v12)
    {
      ArrayFromPortID = CMSMVAUtility_CreateArrayFromPortID(v12);
      Routable = cmsmCopyPartnerPortsToMakeRoutable(ArrayFromPortID);
      if (Routable)
      {
        v19 = Routable;
        v20 = CFArrayGetCount(Routable);
        if (v20 >= 1)
        {
          v21 = v20;
          for (j = 0; j != v21; ++j)
          {
            v23 = CFArrayGetValueAtIndex(v19, j);
            if (!FigCFArrayContainsValue())
            {
              CFArrayAppendValue(Mutable, v23);
            }
          }
        }

        CFRelease(v19);
      }

      if (ArrayFromPortID)
      {
        CFRelease(ArrayFromPortID);
      }
    }
  }

  if (!Mutable)
  {
    return 0;
  }

  v24 = CFArrayGetCount(Mutable);
  if (v24 < 1)
  {
    ArrayOfPortsRoutable = 0;
  }

  else
  {
    v25 = v24;
    valuePtr = 0;
    if (a2)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        v27(CMBaseObject, *MEMORY[0x1E69620F8], v37, &valuePtr);
      }
    }

    v28 = 0;
    while (1)
    {
      v29 = CFArrayGetValueAtIndex(Mutable, v28);
      v40 = 0;
      CFNumberGetValue(v29, kCFNumberSInt32Type, &v40);
      v30 = vaeCopyDeviceIdentifierFromVADPort(v40);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(v40);
      if (MXCFStringHasCaseInsensitivePrefix(v30, valuePtr) || PortTypeFromPortID == 1885433964)
      {
        break;
      }

      if (v30)
      {
        CFRelease(v30);
      }

      if (v25 == ++v28)
      {
        v33 = 0;
        goto LABEL_43;
      }
    }

    if (v30)
    {
      CFRelease(v30);
    }

    v33 = 1;
LABEL_43:
    if (a4)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(Mutable, v35, v33, a3, v39);
    if (valuePtr)
    {
      CFRelease(valuePtr);
    }
  }

  CFRelease(Mutable);
  return ArrayOfPortsRoutable;
}

uint64_t CMSMVAUtility_ArePortsHFPOnly(const __CFArray *a1)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v3 = Count;
    v4 = 0;
    v5 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
      if (PortTypeFromPortID != 1886216820 && PortTypeFromPortID != 1885892706)
      {
        v5 = 0;
      }

      v9 = PortTypeFromPortID == 1886216820 || PortTypeFromPortID == 1885892706;
      ++v4;
    }

    while (v9 && v3 != v4);
  }

  else
  {
    return 1;
  }

  return v5;
}

__CFArray *CMSMVAUtility_CreateArrayFromPortID(unsigned int a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  SInt64 = FigCFNumberCreateSInt64();
  CFArrayAppendValue(Mutable, SInt64);
  if (SInt64)
  {
    CFRelease(SInt64);
  }

  return Mutable;
}

uint64_t CMSMVAUtility_AggregateEndpoints(const __CFArray *a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(a1, i);
        value = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(CMBaseObject, 0x1F289CDB0, v7, &value);
        }

        CFArrayAppendValue(Mutable, value);
        if (value)
        {
          CFRelease(value);
        }
      }
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  IsBluetoothSharingSessionEnabled = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);
  v13 = vaemAggregatePorts(Mutable, a2, IsBluetoothSharingSessionEnabled, a3);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v13;
}

uint64_t CMSMVAUtility_AggregatePorts(uint64_t a1, unsigned int a2, uint64_t a3)
{
  IsBluetoothSharingSessionEnabled = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);

  return vaemAggregatePorts(a1, a2, IsBluetoothSharingSessionEnabled, a3);
}

void CMSMVAUtility_RouteToPreferredDeviceAddressIfInEar(const __CFString *a1)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  v2 = CMSMVAUtility_CopyWirelessPortsSupportingMultipleConnections();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    goto LABEL_34;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    IsPortPresentInConnectedOutputPorts = vaemIsPortPresentInConnectedOutputPorts(ValueAtIndex);
    v9 = CFArrayGetValueAtIndex(v3, v6);
    valuePtr[0] = 0;
    CFNumberGetValue(v9, kCFNumberSInt64Type, valuePtr);
    v10 = valuePtr[0];
    ShouldBTPortBeTreatedAsInEar = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(valuePtr[0]);
    if (!IsPortPresentInConnectedOutputPorts || !ShouldBTPortBeTreatedAsInEar)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_11;
    }

    v12 = vaeCopyDeviceIdentifierFromVADPort(v10);
    if (MXCFStringHasCaseInsensitivePrefix(v12, a1))
    {
      break;
    }

    if (v12)
    {
      CFRelease(v12);
    }

LABEL_11:
    if (v5 == ++v6)
    {
      goto LABEL_34;
    }
  }

  ArrayFromPortID = CMSMVAUtility_CreateArrayFromPortID(v10);
  Routable = cmsmCopyPartnerPortsToMakeRoutable(ArrayFromPortID);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Routable && CFArrayGetCount(Routable) >= 1)
  {
    v21.length = CFArrayGetCount(Routable);
    v21.location = 0;
    CFArrayAppendArray(Mutable, Routable, v21);
  }

  if (ArrayFromPortID && CFArrayGetCount(ArrayFromPortID) >= 1)
  {
    v22.length = CFArrayGetCount(ArrayFromPortID);
    v22.location = 0;
    CFArrayAppendArray(Mutable, ArrayFromPortID, v22);
  }

  A2DPPort = cmsmGetA2DPPort(Mutable);
  if (vaeGetBTPortOwnsSharedAudioConnection(A2DPPort))
  {
    v18 = vaeCopyNameForPort(A2DPPort);
    if (dword_1EB75DE40)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemMakeArrayOfPortsRoutable(Mutable, 1, 0, qword_1EB75E190, 0);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else if (!vaeRequestOwnershipOnBTPort(A2DPPort, 17))
  {
    vaemMakeArrayOfPortsRoutable(Mutable, 1, 0, qword_1EB75E190, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Routable)
  {
    CFRelease(Routable);
  }

  if (ArrayFromPortID)
  {
    CFRelease(ArrayFromPortID);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_34:
  CFRelease(v3);
}

const __CFArray *CMSMVAUtility_CopyWirelessPortsToEnableBluetoothSharing(const __CFArray *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (vaeIsPortBluetoothShareable(valuePtr))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v7 = vaeCopyBluetoothShareablePortsForPort(valuePtr);
          if (v7)
          {
            v8 = v7;
            if (CFArrayGetCount(v7) > 0)
            {
              return v8;
            }

            CFRelease(v8);
          }
        }
      }
    }
  }

  return 0;
}

id CMSMVAUtility_CopyPartnerPorts(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(outData, 0, 32);
  LODWORD(v2) = vaeGetPartnersForPort(a1, outData);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v2)
  {
    v2 = v2;
    v5 = outData;
    do
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*v5];
      if (vaemIsPortPresentInConnectedOutputPorts(v6))
      {
        if (dword_1EB75DE40)
        {
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *v5)}];
      }

      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void CMSMVAUtility_LogPartnerPorts(uint64_t a1)
{
  v1 = a1;
  v2 = CMSMVAUtility_CopyPartnerPorts(a1);
  if (vaemCopyEndpointForPort(v1))
  {
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

const void *CMSMVAUtility_CopyBluetoothDeviceModelID(unsigned int a1)
{
  v7 = 0;
  result = vaemCopyEndpointForPort(a1);
  if (result)
  {
    v2 = result;
    v3 = FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint(result);
    if (v3)
    {
      v4 = v3;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, *MEMORY[0x1E69621D8], *MEMORY[0x1E695E480], &v7);
      }

      CFRelease(v2);
      CFRelease(v4);
      return v7;
    }

    else
    {
      CFRelease(v2);
      return 0;
    }
  }

  return result;
}

const __CFArray *CMSMVAUtility_GetPortOfTypeInConnectedPortsList(int a1)
{
  v2 = vaemCopyConnectedPortsListForRouteConfiguration(0, 0, 0, 0, 0);
  PortOfTypeInArray = CMSMVAUtility_GetPortOfTypeInArray(a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return PortOfTypeInArray;
}

uint64_t CMSMVAUtility_DoesCurrentOutputPortSupportSoftwareVolume()
{
  v0 = CMSMUtility_CopyCurrentOutputPorts();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFArrayGetCount(v0) < 1)
  {
    DoesPortSupportSoftwareVolume = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
    valuePtr = 0;
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
    DoesPortSupportSoftwareVolume = vaeDoesPortSupportSoftwareVolume(valuePtr);
  }

  CFRelease(v1);
  return DoesPortSupportSoftwareVolume;
}

void CMSMVAUtility_SetIndividualVolumeOnCurrentBluetoothShareableRoutes(__CFString *a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  CMSMUtility_CopyCurrentRoutesInfo(&v2);
}

const __CFDictionary *CMSMVAUtility_GetUIDFromRouteDescription(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"RouteUID");
  }

  return result;
}

BOOL CMSMVAUtility_IsNewVirtualFormatRedundantForDeviceAndScope(AudioObjectID a1, uint64_t a2, int a3)
{
  outData = 0;
  memset(v7, 0, sizeof(v7));
  Stream0 = vaemGetStream0(a1, a3, &outData);
  v5 = 0.0;
  if (!Stream0 && outData)
  {
    vaemGetStreamASBD(outData, v7);
    v5 = *v7;
  }

  return v5 == *a2 && *&v7[8] == *(a2 + 8) && *&v7[16] == *(a2 + 16) && *&v7[20] == *(a2 + 20) && *&v7[28] == *(a2 + 28) && *&v7[36] == *(a2 + 36);
}

uint64_t CMSMVAUtility_IsAnyRouteAvailableForRouteConfiguration(uint64_t a1, NSDictionary *a2, uint64_t a3, const void *a4, int a5)
{
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a2);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a3);
  v11 = vaemCopyConnectedPortsListForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a4, a5, 0);
  v12 = v11;
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (!a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    Count = 0;
    if (!a1)
    {
      goto LABEL_15;
    }
  }

  v14 = CFArrayGetCount(a1);
  if (v14 >= 1)
  {
    v15 = v14;
    v16 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(a1, v16);
      if (Count >= 1)
      {
        break;
      }

LABEL_13:
      if (++v16 == v15)
      {
        goto LABEL_14;
      }
    }

    v17 = 0;
    while (1)
    {
      FigCFArrayGetInt64AtIndex();
      PortTypeFromPortID = vaeGetPortTypeFromPortID(0);
      v19 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
      v20 = FigCFEqual();
      if (v19)
      {
        CFRelease(v19);
      }

      if (v20)
      {
        break;
      }

      if (Count == ++v17)
      {
        goto LABEL_13;
      }
    }

    a1 = 1;
    if (v12)
    {
      goto LABEL_16;
    }

    return a1;
  }

LABEL_14:
  a1 = 0;
LABEL_15:
  if (v12)
  {
LABEL_16:
    CFRelease(v12);
  }

  return a1;
}

BOOL CMSMVAUtility_IsA2DPPortAvailableForEndpoint(_BOOL8 result, _DWORD *a2)
{
  if (result)
  {
    v3 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &cf);
    }

    if (v3 && (Count = CFArrayGetCount(v3), Count >= 1))
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        v10 = valuePtr;
        v11 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
        if (vaeGetPortTypeFromPortID(v10) == 1885892674 && MXCFStringHasCaseInsensitivePrefix(v11, cf))
        {
          v12 = CFArrayGetValueAtIndex(v3, v8);
          if (vaemIsPortPresentInConnectedOutputPorts(v12))
          {
            break;
          }
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v7 == ++v8)
        {
          goto LABEL_13;
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
LABEL_13:
      LODWORD(v10) = 0;
    }

    if (a2)
    {
      *a2 = v10;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v3)
    {
      CFRelease(v3);
    }

    return v10 != 0;
  }

  return result;
}

uint64_t CMSMVAUtility_IsPortAvailableForEndpoint(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &cf);
  }

  if (a2)
  {
    v6 = CFRetain(a2);
  }

  else
  {
    v6 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
  }

  v8 = v6;
  if (v6)
  {
    Count = CFArrayGetCount(v6);
  }

  else
  {
    Count = 0;
  }

  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B0]))
  {
    if (Count >= 1)
    {
      v10 = 0;
      do
      {
        FigCFArrayGetInt64AtIndex();
        if (vaeGetPortTypeFromPortID(0) == 1885433975)
        {
          goto LABEL_30;
        }
      }

      while (Count != ++v10);
    }

LABEL_23:
    v7 = 0;
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (Count < 1)
  {
    goto LABEL_23;
  }

  v11 = 0;
  while (1)
  {
    FigCFArrayGetInt64AtIndex();
    v12 = vaeCopyDeviceIdentifierFromVADPort(0);
    if (MXCFStringHasCaseInsensitivePrefix(v12, cf))
    {
      break;
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (Count == ++v11)
    {
      goto LABEL_23;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_30:
  v7 = 1;
  if (v8)
  {
LABEL_24:
    CFRelease(v8);
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

__CFArray *CMSMVAUtility_CreateArrayFromPortIDAndPartners(unsigned int a1)
{
  ArrayFromPortID = CMSMVAUtility_CreateArrayFromPortID(a1);
  Routable = cmsmCopyPartnerPortsToMakeRoutable(ArrayFromPortID);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Routable && CFArrayGetCount(Routable) >= 1)
  {
    v5.length = CFArrayGetCount(Routable);
    v5.location = 0;
    CFArrayAppendArray(Mutable, Routable, v5);
  }

  if (ArrayFromPortID)
  {
    if (CFArrayGetCount(ArrayFromPortID) >= 1)
    {
      v6.length = CFArrayGetCount(ArrayFromPortID);
      v6.location = 0;
      CFArrayAppendArray(Mutable, ArrayFromPortID, v6);
    }

    CFRelease(ArrayFromPortID);
  }

  if (Routable)
  {
    CFRelease(Routable);
  }

  return Mutable;
}

const __CFString *CMSMVAUtility_CopyDeviceIDFromBTAddress(const __CFString *a1)
{
  v2 = cmsmCopyWirelessPortsArrayForRouteConfiguration(0, 0, 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v8 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
      if (MXCFStringHasCaseInsensitivePrefix(v8, a1))
      {
        break;
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  CFRelease(v3);
  return v8;
}

uint64_t CMSMVAUtility_CreateMusicVADIfNeeded(const __CFArray *a1, const void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (vaemMusicVADExists())
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
  if (vaeGetPortTypeFromPortID(valuePtr) == 1885433964)
  {
    v6 = CMSMVAUtility_CopyConnectedWirelessPorts();
    if (dword_1EB75DE40)
    {
      *type = 0;
      v23[0] = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (!v6)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (a1)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a1);
    }

    else
    {
      Copy = CMSMVAUtility_CopyConnectedWirelessPorts();
    }

    v6 = Copy;
  }

  if (!v6)
  {
LABEL_14:
    Count = 0;
    goto LABEL_15;
  }

LABEL_12:
  Count = CFArrayGetCount(v6);
LABEL_15:
  if (dword_1EB75DE40)
  {
    *type = 0;
    v23[0] = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Count >= 1)
  {
    v11 = 0;
    while (1)
    {
      *type = 0;
      v12 = CFArrayGetValueAtIndex(v6, v11);
      CFNumberGetValue(v12, kCFNumberSInt32Type, type);
      if (vaeGetPortTypeFromPortID(*type) == 1885433975)
      {
        break;
      }

      if (Count == ++v11)
      {
        goto LABEL_34;
      }
    }

    v13 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
    v16 = CFNumberCreate(v13, kCFNumberSInt32Type, type);
    CFArrayAppendValue(v15, v16);
    if (v15)
    {
      CFDictionarySetValue(Mutable, @"port id array", v15);
      CFRelease(v15);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    *v23 = 1986884979;
    v17 = CFNumberCreate(v13, kCFNumberSInt32Type, v23);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(Mutable, @"VAD type 4cc", v17);
      CFRelease(v18);
    }

    if (dword_1EB75DE40)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    VADWithRouteConfigurationDictionary = vaemCreateVADWithRouteConfigurationDictionary(Mutable, a2, 1u, 1);
    if (FigRoutingManagerUtilities_IsCurrentRouteHandoff(VADWithRouteConfigurationDictionary, v21))
    {
      CMSMAP_MakeAirPlayHandOffPortRoutable(0, a2);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

LABEL_34:
  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t CMSMVAUtility_DestroyMusicVADIfNeeded(const void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (vaemMusicVADExists())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSessionManager musicVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "musicVADID")}];
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(Mutable, @"VAD type 4cc", v3);
      CFRelease(v4);
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemDeleteVADWithRouteConfigurationDictionary(Mutable, a1, 0, 1);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return 0;
}

uint64_t CMSMVAUtility_CreatePerAppAirPlayVADWithHandOffPort(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (vaemPerAppAirPlayVADExists())
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSessionManager perAppAirPlayVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "perAppAirPlayVADID")}];
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(Mutable, @"VAD type 4cc", v4);
      CFRelease(v5);
    }

    vaemDeleteVADWithRouteConfigurationDictionary(Mutable, a1, 0, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v6 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v8 = CFNumberCreate(v2, kCFNumberSInt32Type, &dword_1EB75E0B8);
  CFArrayAppendValue(v7, v8);
  if (v7)
  {
    CFDictionarySetValue(v6, @"port id array", v7);
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  valuePtr = 1986095474;
  v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(v6, @"VAD type 4cc", v9);
    CFRelease(v10);
  }

  byte_1EB75E0AB = 1;
  VADWithRouteConfigurationDictionary = vaemCreateVADWithRouteConfigurationDictionary(v6, a1, 0, 1);
  if (v6)
  {
    CFRelease(v6);
  }

  return VADWithRouteConfigurationDictionary;
}

uint64_t CMSMVAUtility_CreatePerAppAirPlayVADIfNeeded(CFArrayRef theArray, uint64_t a2, const void *a3)
{
  if (theArray)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], theArray);
  }

  else
  {
    Copy = CMSMVAUtility_CopyConnectedWirelessPorts();
  }

  v5 = Copy;
  if (!Copy)
  {
    return 0;
  }

  Count = CFArrayGetCount(Copy);
  if (!Count)
  {
    CFRelease(v5);
    return 0;
  }

  v8 = Count;
  if (Count < 1)
  {
LABEL_13:
    VADWithRouteConfigurationDictionary = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
      Count = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
      v12 = Count;
      if (PortTypeFromPortID == 1885433953)
      {
        Count = FigEndpointUtility_EndpointPredicate_ContainsID();
        if (Count)
        {
          break;
        }
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v8 == ++v9)
      {
        goto LABEL_13;
      }
    }

    v14 = vaemPerAppAirPlayVADExists();
    v15 = *MEMORY[0x1E695E480];
    if (v14)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSessionManager perAppAirPlayVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "perAppAirPlayVADID")}];
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(Mutable, @"VAD type 4cc", v17);
        CFRelease(v18);
      }

      vaemDeleteVADWithRouteConfigurationDictionary(Mutable, a3, 0, 0);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v19 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v20 = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
    v21 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
    CFArrayAppendValue(v20, v21);
    if (v20)
    {
      CFDictionarySetValue(v19, @"port id array", v20);
      CFRelease(v20);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    v25 = 1986095474;
    v22 = CFNumberCreate(v15, kCFNumberSInt32Type, &v25);
    if (v22)
    {
      v23 = v22;
      CFDictionarySetValue(v19, @"VAD type 4cc", v22);
      CFRelease(v23);
    }

    byte_1EB75E0AB = 0;
    VADWithRouteConfigurationDictionary = vaemCreateVADWithRouteConfigurationDictionary(v19, a3, 1u, 1);
    if (v19)
    {
      CFRelease(v19);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    Count = CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID(a3);
  }

  if (FigRoutingManagerUtilities_IsCurrentRouteHandoff(Count, v7))
  {
    CMSMAP_MakeAirPlayHandOffPortRoutable(0, a3);
  }

  CFRelease(v5);
  return VADWithRouteConfigurationDictionary;
}

uint64_t CMSMVAUtility_DestroyPerAppAirPlayVAD(const void *a1)
{
  if (vaemPerAppAirPlayVADExists())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSessionManager perAppAirPlayVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "perAppAirPlayVADID")}];
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(Mutable, @"VAD type 4cc", v3);
      CFRelease(v4);
    }

    vaemDeleteVADWithRouteConfigurationDictionary(Mutable, a1, 0, 1);
    CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID(a1);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return 0;
}

void CMSMVAUtility_DisableBluetoothSharingSession()
{
  v5 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CMSMUtility_GetCurrentOutputPortAtIndex(0);
    SInt64 = FigCFNumberCreateSInt64();
    CFArrayAppendValue(Mutable, SInt64);
    if (SInt64)
    {
      CFRelease(SInt64);
    }

    CMSMUtility_GetCurrentOutputPortAtIndex(1);
    v2 = FigCFNumberCreateSInt64();
    CFArrayAppendValue(Mutable, v2);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = CMSMUtility_CopySystemAudioRoutingContextUUID();
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemDeaggregatePorts(Mutable, Mutable, 1u, v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

uint64_t CMSMVAUtility_IsInputDeviceAvailableForSession(void *a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v2 = qword_1EB75E090;
  v3 = [a1 audioCategory];
  v4 = [a1 audioMode];
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v5)
  {
    v5(v2, 0x1F289BAB0, *MEMORY[0x1E695E480], v3, v4, 0, cf);
  }

  v6 = FigCFEqual();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v6;
}

uint64_t CMSMVAUtility_SetSharePlayMediaSessionInfoOnVA(int a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = vaemShouldSetSharePlayMediaInfoInRouteConfiguration(a1, a2, 1);
  if (result)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    memset(v7, 0, sizeof(v7));
    v8 = 1;
    v9 = 0;
    v10 = a1;
    v11 = a2;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    return cmsmSetVADRouteConfiguration(v7, 0, 0);
  }

  else if (dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

BOOL CMSMVAUtility_IsInputPortBluetoothMicrophone(_BOOL8 result)
{
  if (result)
  {
    PortTypeFromPortID = vaeGetPortTypeFromPortID(result);
    return PortTypeFromPortID == 1886216820 || PortTypeFromPortID == 1886152041;
  }

  return result;
}

uint64_t CMSMVAUtility_OverrideToPartnerPort()
{
  v10 = 0u;
  theDict = 0;
  DWORD2(v10) = 0;
  p_theDict = &theDict;
  v12 = 8;
  v7 = 0x676C6F62766F7670;
  v8 = 0;
  if (!unk_1EB75E060)
  {
    return 4294954310;
  }

  v0 = unk_1EB75E060(dword_1EB75E0AC, &v7, 0, 0, 32, &v10);
  v1 = theDict;
  if (v0)
  {
    v2 = 1;
  }

  else
  {
    v2 = theDict == 0;
  }

  if (v2)
  {
    v3 = 4294954310;
    if (!theDict)
    {
      return v3;
    }

    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(theDict, @"route change reason");
  if (Value)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (CMSMVAUtility_MapVADReasonToCMSReason(valuePtr) != 9)
    {
      vaemAQMERouteChanged(theDict, 0, 0);
      vaemVADRouteChangeListener(0, theDict, 0, 0, qword_1EB75E190, 0);
    }
  }

  v3 = 0;
  v1 = theDict;
  if (theDict)
  {
LABEL_14:
    CFRelease(v1);
  }

  return v3;
}

uint64_t CMSMVAUtility_IsPortOfTypeBluetooth(unsigned int a1)
{
  v1 = vaemCopyEndpointForPort(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  number = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &number);
    if (number)
    {
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
      v5 = 1;
      if (valuePtr <= 1886152040)
      {
        if (valuePtr != 1885892674)
        {
          v6 = 1885892706;
LABEL_14:
          if (valuePtr != v6)
          {
            v5 = 0;
          }
        }
      }

      else if (valuePtr != 1886152041 && valuePtr != 1886152047)
      {
        v6 = 1886216820;
        goto LABEL_14;
      }

      if (number)
      {
        CFRelease(number);
      }

      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:
  CFRelease(v2);
  return v5;
}

BOOL CMSMVAUtility_IsPortOfTypeBluetoothVehicle(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = vaeGetVADEndpointTypeForPort(a1) == 1701869160;
  if (CMSMVAUtility_IsPortOfTypeBluetooth(a1))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

uint64_t CMSMVAUtility_IsPortOfTypeCarPlay(unsigned int a1)
{
  result = vaemCopyEndpointForPort(a1);
  number = 0;
  if (result)
  {
    v2 = result;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v4)
    {
      goto LABEL_9;
    }

    v4(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &number);
    if (!number)
    {
      goto LABEL_9;
    }

    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    result = 1;
    if (valuePtr != 1886609775 && valuePtr != 1886614625 && valuePtr != 1886614639)
    {
      if (number)
      {
        CFRelease(number);
        number = 0;
      }

LABEL_9:
      CFRelease(v2);
      return 0;
    }
  }

  return result;
}

uint64_t CMSMVAUtility_IsAnyBluetoothVehicleConnected()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x676C6F62u);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
LABEL_6:
    v6 = 0;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    while (1)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      if (CMSMVAUtility_IsPortOfTypeBluetoothVehicle(valuePtr))
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 1;
  }

  CFRelease(v1);
  return v6;
}

void CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(CFArrayRef theArray, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  PortOfTypeInArray = CMSMVAUtility_GetPortOfTypeInArray(1886614639, theArray);
  if (PortOfTypeInArray)
  {
    v4 = PortOfTypeInArray;
    v5 = CMSMUtility_CopyMostImportantPlayingSession();
    if (cmsmRequestCarMainAudioForSession(v5))
    {
      CMSMVAUtility_MakeConnectedPortRoutable(v4, a2);
    }

    else if (!v5 && [+[MXSessionManager shouldResumeNowPlayingAppOnDelayedCarPlayPortPublication] sharedInstance]
    {
      IsDoingActivity = FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E5F0, @"PhoneCall");
      if (IsDoingActivity | FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E5F0, @"Speech"))
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
        [+[MXSessionManager sharedInstance](MXSessionManager resumeNowPlayingAppForCarPlay];
      }
    }

    [+[MXSessionManager sharedInstance](MXSessionManager setShouldResumeNowPlayingAppOnDelayedCarPlayPortPublication:"setShouldResumeNowPlayingAppOnDelayedCarPlayPortPublication:", 0];
  }
}

void CMSMVAUtility_ChangeCarPlayPortFallbackRoutabilityIfNecessary(uint64_t a1)
{
  v1 = a1;
  if (+[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled](MXSystemController, "preferHeadphonesOverCarsAndSpeakersEnabled") && [+[MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:"]
  {

    CMSMVAUtility_ChangeCarPlayPortFallbackRoutability(v1);
  }
}

void CMSMVAUtility_ChangeCarPlayPortFallbackRoutability(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x676C6F62u);
  PortOfTypeInArray = CMSMVAUtility_GetPortOfTypeInArray(1886614639, v2);
  if (PortOfTypeInArray)
  {
    v4 = PortOfTypeInArray;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMVAUtility_MakeConnectedPortRoutable(v4, a1);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t CMSMVAUtility_CancelAnyInProgressVolumeRamp(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled(a1, a2);
  if (result)
  {
    result = vaemIsVolumeRampInProgress(a1, v5);
    if (result)
    {

      return vaemDeviceCancelVolumeRamp(a1, v2);
    }
  }

  return result;
}

uint64_t CMSMVAUtility_DoesSessionConfigurationSupportEchoCancelledInput(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a1];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a2];
  [v4 setObject:v5 forKey:0x1F2897170];
  [v4 setObject:v6 forKey:0x1F2897150];
  *&inAddress.mSelector = *"sicebolg";
  inAddress.mElement = 0;
  ioDataSize = 4;
  outData = 0;
  if (AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8u, v4, &ioDataSize, &outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return outData;
}

uint64_t CMSMVAUtility_DoesVADHaveEchoCancelledInput(AudioObjectID a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"cesrbolg";
  inAddress.mElement = 0;
  ioDataSize = 4;
  outData = 0;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_5:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return outData;
  }

  if (dword_1EB75DE40)
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    goto LABEL_5;
  }

  return outData;
}

void sub_1B193BE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B193C0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B193C340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B193C538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B193C69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __routingSessionManagerRemote_ensureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"RoutingSessionManager_ServerConnectionDied");
  _MergedGlobals_10 = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void routingSessionManagerRemote_DeadConnectionCallback(const void *a1)
{
  *(CMBaseObjectGetDerivedStorage() + 8) = 1;
  if (a1)
  {
    CFRetain(a1);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerRemote_DeadConnectionCallback_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = a1;
  MXDispatchAsync("routingSessionManagerRemote_DeadConnectionCallback", "FigRoutingSessionManagerRemoteXPC.m", 587, 0, 0, global_queue, v3);
}

uint64_t routingSessionManagerRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 8) && *DerivedStorage && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  FigSimpleMutexDestroy();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  return FigXPCRelease();
}

uint64_t CMBaseObjectNotificationBarrier(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t routingSessionManagerRemote_StartSessionForHighConfidenceDestination(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v8 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"Callback", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(v8, @"CallbackContext", a3);
  }

  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  CFDictionarySetValue(v8, @"Manager", v9);
  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = v10 + 1;
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(*(DerivedStorage + 24), UInt64, v8);
  FigSimpleMutexUnlock();
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v17);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v13 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, v10);
    v13 = FigXPCRemoteClientSendSyncMessage();
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 24), UInt64);
  if (Value)
  {
    v15 = CFRetain(Value);
  }

  else
  {
    v15 = 0;
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 24), UInt64);
  FigSimpleMutexUnlock();
  if (v15)
  {
    if (a1)
    {
      CFRelease(a1);
    }

    CFRelease(v15);
LABEL_18:
    if (!UInt64)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v13 = 0;
  if (UInt64)
  {
LABEL_19:
    CFRelease(UInt64);
  }

LABEL_20:
  if (v8)
  {
    CFRelease(v8);
  }

  FigXPCRelease();
  return v13;
}

uint64_t routingSessionManagerRemote_PrepareForPlayback(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v8 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"Callback", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(v8, @"CallbackContext", a3);
  }

  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  CFDictionarySetValue(v8, @"Manager", v9);
  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = v10 + 1;
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(*(DerivedStorage + 24), UInt64, v8);
  FigSimpleMutexUnlock();
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v14);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, v10);
      ObjectID = FigXPCRemoteClientSendSyncMessage();
      if (!ObjectID)
      {
        if (!UInt64)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

  routingSessionManagerRemote_dequeueAndInvokeCallback(a1, v10, ObjectID);
  if (UInt64)
  {
LABEL_12:
    CFRelease(UInt64);
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  return FigXPCRelease();
}

uint64_t routingSessionManagerRemote_UpdateCurrentSessionFromLikelyDestinations(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v8 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"Callback", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(v8, @"CallbackContext", a3);
  }

  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  CFDictionarySetValue(v8, @"Manager", v9);
  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = v10 + 1;
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(*(DerivedStorage + 24), UInt64, v8);
  FigSimpleMutexUnlock();
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v17);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v13 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, v10);
    v13 = FigXPCRemoteClientSendSyncMessage();
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 24), UInt64);
  if (Value)
  {
    v15 = CFRetain(Value);
  }

  else
  {
    v15 = 0;
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 24), UInt64);
  FigSimpleMutexUnlock();
  if (v15)
  {
    if (a1)
    {
      CFRelease(a1);
    }

    CFRelease(v15);
LABEL_18:
    if (!UInt64)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v13 = 0;
  if (UInt64)
  {
LABEL_19:
    CFRelease(UInt64);
  }

LABEL_20:
  if (v8)
  {
    CFRelease(v8);
  }

  FigXPCRelease();
  return v13;
}

uint64_t routingSessionManagerRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    routingSessionManagerRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else if (a2)
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  else
  {
    routingSessionManagerRemote_getObjectID_cold_2(&v7);
    return v7;
  }

  return result;
}

void sub_1B193ED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B193F870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1940500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B19409E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingContextStartServer()
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

void FigRoutingContextXPCHandleReportModificationMetricsMessage(uint64_t a1, uint64_t a2)
{
  FigXPCMessageCopyCFDictionary();
  v3 = [[MXRoutingContextModificationMetrics alloc] initWithDictionary:0];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 232);
  if (v4)
  {
    v4(a1, v3);
  }
}

uint64_t FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage(uint64_t a1, uint64_t a2)
{
  v3 = FigXPCMessageCopyCFDictionary();
  if (v3)
  {
    v5 = v3;
    FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage_cold_1();
    return v5;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 184);
  if (!v4)
  {
    v5 = 4294954514;
    goto LABEL_6;
  }

  v5 = v4(a1, 0);
  if (v5)
  {
LABEL_6:
    FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage_cold_2();
  }

  return v5;
}

uint64_t CloseCommChannelApplier(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16);
  result = VTable + 16;
  v8 = *(v7 + 168);
  if (v8)
  {

    return v8(v3, v4, a1);
  }

  return result;
}

void DestroyCompletionCallbackParameters(void *a1)
{
  if (a1)
  {
    FigXPCRelease();

    free(a1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7AE6E00, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *CMSM_IDS_Initialize()
{
  result = dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 1);
  sIDSHandle = result;
  if (result)
  {
    sIDSCopyIDForDevice = dlsym(result, "IDSCopyIDForDevice");
    result = objc_getClass("IDSService");
    sIDSServiceClass = result;
  }

  return result;
}

uint64_t CMSM_IDSCopyIDForDevice()
{
  if (sIDSCopyIDForDevice)
  {
    return sIDSCopyIDForDevice();
  }

  else
  {
    return 0;
  }
}

uint64_t FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager(uint64_t a1, void *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (a2)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_block_invoke;
    v9 = &unk_1E7AE7168;
    v10 = &v12;
    v11 = a1;
    if (FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_onceToken != -1)
    {
      dispatch_once(&FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_onceToken, &v6);
    }

    v3 = *(v13 + 6);
    if (!v3)
    {
      v4 = FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_sLongFormManager;
      if (FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_sLongFormManager)
      {
        v4 = CFRetain(FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_sLongFormManager);
        v3 = *(v13 + 6);
      }

      else
      {
        v3 = 0;
      }

      *a2 = v4;
    }
  }

  else
  {
    fig_log_get_emitter();
    v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
    *(v13 + 6) = v3;
  }

  _Block_object_dispose(&v12, 8);
  return v3;
}

void sub_1B1941DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingSessionManagerResilientRemote_startObservingRemoteManager(uint64_t a1, uint64_t a2)
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
    if (v2 == 32)
    {

      return FigNotificationCenterAddWeakListener();
    }
  }

  return result;
}

void routingSessionManagerResilientRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    _Block_release(*DerivedStorage);
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    routingSessionManagerResilientRemote_stopObservingRemoteManager(a1, v3);
  }

  if (*(DerivedStorage + 8))
  {
    FigSimpleMutexDestroy();
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t CMBaseObjectNotificationBarrier_0(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t routingSessionManagerResilientRemote_stopObservingRemoteManager(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  for (i = 0; i != 32; i += 8)
  {
    FigNotificationCenterRemoveWeakListener();
  }

  return FigNotificationCenterRemoveWeakListener();
}

void routingSessionManagerResilientRemote_serverConnectionDied(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
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

  v7 = *(DerivedStorage + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __routingSessionManagerResilientRemote_serverConnectionDied_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  v8[4] = DerivedStorage;
  v8[5] = a2;
  v8[6] = a4;
  MXDispatchAsync("routingSessionManagerResilientRemote_serverConnectionDied", "FigRoutingSessionManagerResilientRemote.m", 212, 0, 0, v7, v8);
}

uint64_t routingSessionManagerResilientRemote_CopyCurrentSession(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_CopyCurrentSession_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_StartSessionForHighConfidenceDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingSessionManagerResilientRemote_StartSessionForHighConfidenceDestination_block_invoke;
  v4[3] = &__block_descriptor_48_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v4);
}

uint64_t routingSessionManagerResilientRemote_CopyLikelyDestinations(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_CopyLikelyDestinations_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_PrepareForPlayback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingSessionManagerResilientRemote_PrepareForPlayback_block_invoke;
  v4[3] = &__block_descriptor_48_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v4);
}

uint64_t routingSessionManagerResilientRemote_GetAirPlayVideoActive(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_GetAirPlayVideoActive_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_GetAirPlayVideoPlaying(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_GetAirPlayVideoPlaying_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_UpdateCurrentSessionFromLikelyDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingSessionManagerResilientRemote_UpdateCurrentSessionFromLikelyDestination_block_invoke;
  v4[3] = &__block_descriptor_48_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v4);
}

uint64_t routingSessionManagerResilientRemote_GetPrefersLikelyDestinationsOverCurrentSession(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_GetPrefersLikelyDestinationsOverCurrentSession_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_StartSessionWithRouteDescriptors(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_StartSessionWithRouteDescriptors_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_withServerDeathRetry(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  v7 = 0;
  v8 = 0;
  cf = v6;
  while (1)
  {
    v9 = (*(a2 + 16))(a2, cf);
    v10 = v9;
    ++v8;
    if (v9 == -15394 || v9 == -16155)
    {
      break;
    }

LABEL_25:
    if (v10 != -16155 && v10 != -15394 || v8 >= 5)
    {
      v15 = v10;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  v12 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v13 = routingSessionManagerResilientRemote_replaceRemoteManager(a1);
    v14 = v13 == -15394;
    if (v13 == -16155)
    {
      v14 = 1;
LABEL_20:
      ++v8;
      goto LABEL_21;
    }

    v15 = v13;
    if (v13)
    {
      break;
    }

LABEL_21:
    if (v8 >= 5)
    {
      v14 = 0;
    }

    if (!v14)
    {
      v7 = v12;
      goto LABEL_25;
    }
  }

  if (v13 == -15394)
  {
    goto LABEL_20;
  }

  v7 = v12;
  if (v12)
  {
LABEL_33:
    CFRelease(v7);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

CFPropertyListRef CMSMNP_CopyNowPlayingAppWasPlayingUponCarPlayDisconnectFromDisk()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"nowPlayingAppWasPlayingUponCarPlayDisconnect", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v0;
}

void CMSMNP_WriteNowPlayingAppWasPlayingUponCarPlayDisconnectToDisk(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppWasPlayingUponCarPlayDisconnect", *v3);
}

void *CMSMNP_SaveCarPlayNowPlayingState()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
  if ([+[MXSessionManager starkMainAudioIsOwnedByiOSButBorrowedByCar] sharedInstance]
  {
    IsInterrupted = CMSMNP_GetNowPlayingAppIsInterrupted();
  }

  else
  {
    IsInterrupted = CMSMNP_GetNowPlayingAppIsPlaying();
  }

  v2 = IsInterrupted;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMNP_WriteNowPlayingAppWasPlayingUponCarPlayDisconnectToDisk(v2);
  if (v2)
  {
    CMSMNP_WriteNowPlayingAppDisplayIDUponCarPlayDisconnectToDisk(v0);
  }

  result = [+[MXSessionManager sharedInstance](MXSessionManager setShouldResumeNowPlayingAppOnDelayedCarPlayPortPublication:"setShouldResumeNowPlayingAppOnDelayedCarPlayPortPublication:", 0];
  byte_1EB75E1D9 = 1;
  return result;
}

void CMSMNP_WriteNowPlayingAppDisplayIDUponCarPlayDisconnectToDisk(const void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppDisplayIDUponCarPlayDisconnect", a1);
}

CFPropertyListRef CMSMNP_CopyNowPlayingAppDisplayIDUponCarPlayDisconnectFromDisk()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"nowPlayingAppDisplayIDUponCarPlayDisconnect", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v0;
}

void CMSMNP_ResumeNowPlayingAppOverCarPlay(CFTypeRef cf, uint64_t a2)
{
  v2 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v3 = MXGetNotificationSenderQueue(cf, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNP_ResumeNowPlayingAppOverCarPlay_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = v2;
  MXDispatchAsync("CMSMNP_ResumeNowPlayingAppOverCarPlay", "CMSessionManager_NowPlaying.m", 476, 0, 0, v3, v4);
}

uint64_t CMSMNP_IsNowPlayingAppPlayingToPort(unsigned int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CMSMNP_CopyNowPlayingAppSession();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ([v2 isSharePlayMediaSession])
  {
    return 0;
  }

  theArray = 0;
  FigRoutingManagerCopyPickedRouteDescriptorsForRoutingContext([v3 routingContextUUID], &theArray);
  if (!theArray)
  {
    Count = 0;
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v4 = 0;
  for (i = 0; i != Count; ++i)
  {
    v13 = 0;
    CFArrayGetValueAtIndex(theArray, i);
    FigCFDictionaryGetInt32IfPresent();
    if (v13 == a1)
    {
      v4 = 1;
    }
  }

  if (v4)
  {
    goto LABEL_22;
  }

  v7 = 1;
LABEL_14:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v7)
  {
    v9 = 0;
    do
    {
      CFArrayGetValueAtIndex(theArray, v9);
      FigCFDictionaryGetInt32IfPresent();
      if (dword_1EB75DE40)
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ++v9;
    }

    while (Count != v9);
  }

  v4 = 0;
LABEL_22:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  return v4;
}

uint64_t CMSMDeviceState_Initialize(NSObject *a1)
{
  state64[16] = *MEMORY[0x1E69E9840];
  CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
  if (dword_1EB75DE40)
  {
    LODWORD(valuePtr) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  gDeviceState = CFPreferenceBooleanWithDefault;
  v4 = MGCopyAnswer();
  v5 = FigCFEqual();
  if (v4)
  {
    CFRelease(v4);
  }

  byte_1EB75D326 = v5 != 0;
  v6 = MGCopyAnswer();
  if (v6)
  {
    v7 = v6;
    byte_1EB75D329 = CFBooleanGetValue(v6);
    CFRelease(v7);
  }

  else
  {
    byte_1EB75D329 = 0;
  }

  byte_1EB75D327 = FigDebugIsInternalBuild();
  qword_1EB75D3C0 = FigReentrantMutexCreate();
  v8 = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 4);
  sMKBLockStatusHandle = v8;
  if (v8 && (sMKBGetLockStatus = dlsym(v8, "MKBGetDeviceLockState")) != 0)
  {
    if (a1)
    {
LABEL_11:
      v9 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &dword_1EB75D32C, a1, &__block_literal_global_109) == 0;
      goto LABEL_14;
    }
  }

  else
  {
    LODWORD(valuePtr) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (a1)
    {
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_14:
  byte_1EB75D330 = v9;
  if (sMKBGetLockStatus)
  {
    v11 = sMKBGetLockStatus(0) != 0;
  }

  else
  {
    v11 = 0;
  }

  FigSimpleMutexLock();
  byte_1EB75D32A = v11;
  FigSimpleMutexUnlock();
  if (a1)
  {
    v12 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &dword_1EB75D344, a1, &__block_literal_global_112_0) == 0;
  }

  else
  {
    v12 = 0;
  }

  byte_1EB75D348 = v12;
  state64[0] = 0;
  if (notify_get_state(dword_1EB75D344, state64))
  {
    v13 = 1;
  }

  else
  {
    v13 = state64[0] == 0;
  }

  v14 = !v13;
  byte_1EB75D340 = v14;
  if (a1)
  {
    v15 = notify_register_dispatch("com.apple.backboard.proximity.changed", &dword_1EB75D35C, a1, &__block_literal_global_115) == 0;
  }

  else
  {
    v15 = 0;
  }

  byte_1EB75D360 = v15;
  state64[0] = 0;
  state = notify_get_state(dword_1EB75D35C, state64);
  if (state)
  {
    v18 = 1;
  }

  else
  {
    v18 = state64[0] == 0;
  }

  v19 = !v18;
  byte_1EB75D358 = v19;
  if (a1)
  {
    state = notify_register_dispatch("com.apple.springboard.ringerstate", &dword_1EB75D364, a1, &__block_literal_global_117);
  }

  if (cmsmdevicestate_RegisterForRingerIsOnNotification_onceToken != -1)
  {
    CMSMDeviceState_Initialize_cold_1();
  }

  if (!MX_FeatureFlags_IsMXSilentModeEnabled(state, v17))
  {
    cmsmdevicestate_UpdateRingerIsOn();
    v23 = +[MXSessionManager sharedInstance];
    v24 = byte_1EB75D361 == 0;
LABEL_53:
    [(MXSessionManager *)v23 setSilentModeEnabled:v24];
    goto LABEL_54;
  }

  if (byte_1EB75D323 || byte_1EB75D325 || byte_1EB75D326)
  {
    v23 = +[MXSessionManager sharedInstance];
    v24 = 0;
    goto LABEL_53;
  }

  if (CMSMDeviceState_DeviceHasHardwareRingerSwitch_once != -1)
  {
    CMSMDeviceState_Initialize_cold_2();
  }

  if (CMSMDeviceState_DeviceHasHardwareRingerSwitch_hasPhysicalSwitch)
  {
    if (BackBoardServicesLibrary_sOnce_0 != -1)
    {
      CMSMDeviceState_Initialize_cold_3();
    }

    if (BackBoardServicesLibrary_sLib_0 && (v20 = dlsym(BackBoardServicesLibrary_sLib_0, "BKSHIDServicesGetRingerState")) != 0)
    {
      v22 = MXGetSerialQueue(v20, v21);
      MXDispatchAsync("CMSMDeviceState_Initialize", "CMSessionManager_DeviceState.m", 355, 0, 0, v22, &__block_literal_global_74);
    }

    else
    {
      LODWORD(valuePtr) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_54:
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, &byte_1EB75D36C, cmsmdevicestate_VibrateOnRingChangedNotificationCallback, @"com.apple.springboard.ring-vibrate.changed", 0, 0);
  cmsmdevicestate_UpdateVibrateOnRing();
  v26 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v26, &byte_1EB75D36D, cmsmdevicestate_VibrateOnSilentChangedNotificationCallback, @"com.apple.springboard.silent-vibrate.changed", 0, 0);
  cmsmdevicestate_UpdateVibrateOnSilent();
  CelestialGetModelSpecificName();
  v27 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v27)
  {
    v28 = v27;
    Value = CFDictionaryGetValue(v27, @"ChangesRingerVolume");
    if (Value && (v30 = Value, v31 = CFGetTypeID(Value), v31 == CFBooleanGetTypeID()))
    {
      v32 = CFBooleanGetValue(v30);
    }

    else
    {
      v32 = 1;
    }

    byte_1EB75D36E = v32;
    CFRelease(v28);
  }

  else
  {
    byte_1EB75D36E = 1;
  }

  v33 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v33, &byte_1EB75D36E, cmsmdevicestate_ButtonsCanChangeRingerVolumeChangedNotificationCallback, @"com.apple.preferences.sounds.buttons-can-change-ringer-volume.changed", 0, 0);
  cmsmdevicestate_UpdateButtonsCanChangeRingerVolume();
  v34 = *MEMORY[0x1E695E8B8];
  v35 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.Accessibility", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  byte_1EB75D36F = FigGetCFPreferenceNumberWithDefault() != 0;
  v36 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v36, &byte_1EB75D36F, cmsmdevicestate_VibrationDisabledPreferenceChangedNotificationCallback, @"VibrationDisabledPreferenceDidChange", 0, 0);
  state64[0] = MEMORY[0x1E69E9820];
  state64[1] = 3221225472;
  state64[2] = __cmsmdevicestate_RegisterForDeviceIsChargingNotification_block_invoke;
  state64[3] = &unk_1E7AE7CE0;
  state64[4] = a1;
  if (cmsmdevicestate_RegisterForDeviceIsChargingNotification_onceToken != -1)
  {
    dispatch_once(&cmsmdevicestate_RegisterForDeviceIsChargingNotification_onceToken, state64);
  }

  v37 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v37, &byte_1EB75D380, cmsmdevicestate_VoiceOverIsOnChangeCallback, @"com.apple.accessibility.voiceovertouch.status", 0, 0);
  cmsmdevicestate_UpdateVoiceOverIsOn();
  if (byte_1EB75D325 | byte_1EB75D323)
  {
    v38 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v38, &qword_1EB75D398, cmsmdevicestate_AirPlayPrefsChangedCallback, @"com.apple.airplay.prefsChanged", 0, 0);
    v39 = CFPreferencesCopyValue(@"tightSyncUUID", @"com.apple.airplay", v34, v35);
    cmsmdevicestate_UpdateTightSyncUUID(v39);
    CFPreferencesSynchronize(@"com.apple.airplay", v34, v35);
    byte_1EB75D390 = FigGetCFPreferenceNumberWithDefault() == 0;
    valuePtr = 0;
    v40 = CFPreferencesCopyValue(@"persistentGroupSize", @"com.apple.airplay", v34, v35);
    if (v40)
    {
      v41 = v40;
      v42 = CFGetTypeID(v40);
      if (v42 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v41, kCFNumberCFIndexType, &valuePtr);
        v43 = valuePtr;
      }

      else
      {
        v43 = 2 * (v39 != 0);
        valuePtr = v43;
      }

      qword_1EB75D3A0 = v43;
      CFRelease(v41);
    }

    else
    {
      valuePtr = 2 * (v39 != 0);
      qword_1EB75D3A0 = valuePtr;
    }

    if (dword_1EB75DE40)
    {
      *type = 0;
      v62 = OS_LOG_TYPE_DEFAULT;
      v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v45 = *type;
      v46 = v62;
      if (os_log_type_enabled(v44, v62))
      {
        v47 = v45;
      }

      else
      {
        v47 = v45 & 0xFFFFFFFE;
      }

      if (v47)
      {
        if (byte_1EB75D390)
        {
          v48 = "True";
        }

        else
        {
          v48 = "False";
        }

        v64 = 136315906;
        v65 = "cmsmdevicestate_RegisterForAirPlayPrefsChangedNotification";
        v66 = 2114;
        v67 = qword_1EB75D398;
        v68 = 2082;
        v69 = v48;
        v70 = 1026;
        v71 = valuePtr;
        _os_log_send_and_compose_impl(v47, 0, state64, 128, &dword_1B17A2000, v44, v46, "-CMSMDevState- %s: Initial tightSyncUUID set to : %{public}@, tightSyncBuddyReachable set to : %{public}s and clusterSize set to : %{public}d", &v64, 38);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v39)
    {
      CFRelease(v39);
    }
  }

  result = MX_FeatureFlags_IsSeparatePlayerProcessEnabled();
  if (result)
  {
    LODWORD(valuePtr) = 0;
    v51 = *MEMORY[0x1E69E98C0];
    global_queue = dispatch_get_global_queue(2, 0);
    result = notify_register_dispatch(v51, &valuePtr, global_queue, &__block_literal_global_177);
    if (result)
    {
      *type = 0;
      v62 = OS_LOG_TYPE_DEFAULT;
      v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v54 = *type;
      v55 = v62;
      if (os_log_type_enabled(v53, v62))
      {
        v56 = v54;
      }

      else
      {
        v56 = v54 & 0xFFFFFFFE;
      }

      if (v56)
      {
        v64 = 136315138;
        v65 = "cmsmdevicestate_RegisterForDeviceThermalLevelNotification";
        _os_log_send_and_compose_impl(v56, 0, state64, 128, &dword_1B17A2000, v53, v55, "-CMSMDevState- %s: Failed to register for ThermalNotificationPressureLevel", &v64);
      }
    }

    else
    {
      if (!dword_1EB75DE40)
      {
        return result;
      }

      *type = 0;
      v62 = OS_LOG_TYPE_DEFAULT;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v58 = *type;
      v59 = v62;
      if (os_log_type_enabled(v57, v62))
      {
        v60 = v58;
      }

      else
      {
        v60 = v58 & 0xFFFFFFFE;
      }

      if (v60)
      {
        v64 = 136315138;
        v65 = "cmsmdevicestate_RegisterForDeviceThermalLevelNotification";
        _os_log_send_and_compose_impl(v60, 0, state64, 128, &dword_1B17A2000, v57, v59, "-CMSMDevState- %s: Successfully registered for ThermalNotificationPressureLevel", &v64);
      }
    }

    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void cmsmdevicestate_UpdateRingerIsOn()
{
  if (byte_1EB75D323)
  {
    v2 = 0;
  }

  else
  {
    v2 = byte_1EB75D325 == 0;
  }

  if (v2 && byte_1EB75D326 == 0)
  {
    state64[1] = v0;
    state64[2] = v1;
    state64[0] = 0;
    if (!notify_get_state(dword_1EB75D364, state64))
    {
      byte_1EB75D361 = state64[0] != 0;
    }
  }

  else
  {
    byte_1EB75D361 = 1;
  }
}

uint64_t CMSMDeviceState_DeviceHasHardwareRingerSwitch(uint64_t a1, uint64_t a2)
{
  if (CMSMDeviceState_DeviceHasHardwareRingerSwitch_once != -1)
  {
    CMSMDeviceState_DeviceHasHardwareRingerSwitch_cold_1();
  }

  return CMSMDeviceState_DeviceHasHardwareRingerSwitch_hasPhysicalSwitch;
}

void CMSMDeviceState_UpdateDeviceClass()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  if (FigCFEqual())
  {
    byte_1EB75D322 = 1;
  }

  else if (FigCFEqual())
  {
    byte_1EB75D321 = 1;
  }

  else if (FigCFEqual())
  {
    byte_1EB75D323 = 1;
  }

  else if (FigCFEqual())
  {
    byte_1EB75D324 = 1;
  }

  else if (FigCFEqual())
  {
    byte_1EB75D325 = 1;
  }

  if (MGGetProductType() == 4231109337)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    byte_1EB75D328 = 1;
  }

  if (MGGetProductType() == 1908832379)
  {
    if (dword_1EB75DE40)
    {
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    byte_1EB75D328 = 1;
  }

  if (v0)
  {
    CFRelease(v0);
  }
}

void CMSMDeviceState_AddQueueToWatchDogMonitoring(uint64_t a1)
{
  if (CMSMDeviceState_IsAudiomxd_onceToken != -1)
  {
    CMSMDeviceState_AddQueueToWatchDogMonitoring_cold_1();
  }

  if (CMSMDeviceState_IsAudiomxd_sIsAudiomxd)
  {

    MEMORY[0x1EEE508D8](a1);
  }
}

uint64_t CMSMDeviceState_SupportsBeacon(uint64_t a1, uint64_t a2)
{
  if (CMSMDeviceState_SupportsBeacon_once != -1)
  {
    CMSMDeviceState_SupportsBeacon_cold_1();
  }

  return CMSMDeviceState_SupportsBeacon_supportsBeaconMode;
}

CFTypeRef CMSMDeviceState_CopyHardwareSafetySession(uint64_t a1)
{
  if (CMSMDeviceState_CopyHardwareSafetySession_onceToken != -1)
  {
    CMSMDeviceState_CopyHardwareSafetySession_cold_1();
  }

  result = qword_1EB75D3C8;
  if (qword_1EB75D3C8)
  {

    return CFRetain(result);
  }

  return result;
}

void CMSMDeviceState_InterruptAllActiveSessionsAndSystemSounds()
{
  CMSystemSoundMgr_DeactivateAllSystemSounds();
  v1 = CMSMDeviceState_CopyHardwareSafetySession(v0);
  if (v1)
  {
    v2 = v1;
    MXCoreSessionBeginInterruption_WithSecTaskAndFlags(v1[2], 0, 0, 1);

    CFRelease(v2);
  }
}

uint64_t CMSMDeviceState_DeactivateHardwareSafetySession(const __CFString *a1)
{
  v2 = CMSMDeviceState_CopyHardwareSafetySession(a1);
  if (!v2)
  {
    return 4294954315;
  }

  v3 = v2;
  v4 = MXCoreSessionEndInterruption_WithSecTaskAndStatus(v2[2], 0, a1, 1);
  CFRelease(v3);
  return v4;
}

uint64_t CMSMDeviceState_SupportsMediaMultitasking(uint64_t a1, uint64_t a2)
{
  if (CMSMDeviceState_SupportsMediaMultitasking_onceToken != -1)
  {
    CMSMDeviceState_SupportsMediaMultitasking_cold_1();
  }

  return CMSMDeviceState_SupportsMediaMultitasking_supportsMediaMultitasking;
}

void CMSMDeviceState_UpdateSmartCoverState(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  byte_1EB75D331 = a1;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = FigSimpleMutexUnlock();
  if (a1)
  {
    v5 = MXGetSerialQueue(v3, v4);
    qword_1EB75D338 = MXDispatchUtilityCreateOneShotTimer("CMSMDeviceState_UpdateSmartCoverState", "CMSessionManager_DeviceState.m", 1160, 0, 0, v5, &__block_literal_global_56, 0, 2.0, 0);
  }

  else if (qword_1EB75D338)
  {
    MXDispatchUtilityCancelTimer(&qword_1EB75D338);
  }
}

uint64_t CMSMDeviceState_UpdateRingerStateForSilentMode(int a1)
{
  byte_1EB75D361 = a1 == 0;
  v1 = +[MXSessionManager sharedInstance];
  v2 = byte_1EB75D361 != 0;

  return [(MXSessionManager *)v1 ringerIsOnChanged:v2];
}

uint64_t CMSMDeviceState_PostRingerStateDarwinNotification(int a1)
{
  v1 = a1 == 0;
  notify_set_state(dword_1EB75D364, a1 != 0);
  notify_post("com.apple.springboard.ringerstate");
  notify_set_state(dword_1EB75D368, v1);

  return notify_post("com.apple.mediaexperience.silentmode");
}

uint64_t cmsmdevicestate_UpdateVibrateOnRing()
{
  v2 = *MEMORY[0x1E69E9840];
  CFPreferencesSynchronize(@"com.apple.springboard", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D36C = result != 0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t cmsmdevicestate_UpdateVibrateOnSilent()
{
  v2 = *MEMORY[0x1E69E9840];
  CFPreferencesSynchronize(@"com.apple.springboard", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D36D = result != 0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t (*CMSMDeviceState_RegisterForTightSyncUUIDChangeNotification(uint64_t (*result)(void)))(void)
{
  if (byte_1EB75D325)
  {
    off_1EB75D3A8 = result;
  }

  return result;
}

uint64_t CMSMDeviceState_HasMonoSpeakerConfiguration(uint64_t a1, uint64_t a2)
{
  if (CMSMDeviceState_HasMonoSpeakerConfiguration_onceToken != -1)
  {
    CMSMDeviceState_HasMonoSpeakerConfiguration_cold_1();
  }

  return CMSMDeviceState_HasMonoSpeakerConfiguration_hasMonoSpeakerConfiguration;
}

void *__BackBoardServicesLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices", 2);
  BackBoardServicesLibrary_sLib_0 = result;
  return result;
}

uint64_t initBKSHIDServicesGetRingerState()
{
  if (BackBoardServicesLibrary_sOnce_0 != -1)
  {
    initBKSHIDServicesGetRingerState_cold_1();
  }

  v0 = dlsym(BackBoardServicesLibrary_sLib_0, "BKSHIDServicesGetRingerState");
  softLinkBKSHIDServicesGetRingerState = v0;

  return v0();
}

uint64_t cmsmdevicestate_VibrationDisabledPreferenceChangedNotificationCallback()
{
  CFPreferencesSynchronize(@"com.apple.Accessibility", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D36F = result != 0;
  return result;
}

uint64_t cmsmdevicestate_UpdateVoiceOverIsOn()
{
  v0 = byte_1EB75D380;
  CFPreferencesSynchronize(@"com.apple.Accessibility", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D380 = result != 0;
  v2 = off_1EB75D388;
  if (off_1EB75D388)
  {

    return v2(v0);
  }

  return result;
}

void cmsmdevicestate_AirPlayPrefsChangedCallback()
{
  valuePtr[21] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E8B8];
  v1 = *MEMORY[0x1E695E898];
  v2 = CFPreferencesCopyValue(@"tightSyncUUID", @"com.apple.airplay", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!FigCFEqual())
  {
    cmsmdevicestate_UpdateTightSyncUUID(v2);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (off_1EB75D3A8)
    {
      off_1EB75D3A8(qword_1EB75D398);
    }
  }

  CFPreferencesSynchronize(@"com.apple.airplay", v0, v1);
  v4 = FigGetCFPreferenceNumberWithDefault() == 0;
  if (byte_1EB75D390 != v4)
  {
    byte_1EB75D390 = v4;
    if (dword_1EB75DE40)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (off_1EB75D3B0)
    {
      off_1EB75D3B0(byte_1EB75D390 == 0, v4);
    }
  }

  valuePtr[0] = 0;
  v6 = CFPreferencesCopyValue(@"persistentGroupSize", @"com.apple.airplay", v0, v1);
  v7 = v6;
  if (v6 && (v8 = CFGetTypeID(v6), v8 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v7, kCFNumberCFIndexType, valuePtr);
    v9 = valuePtr[0];
  }

  else
  {
    v9 = 2 * (v2 != 0);
    valuePtr[0] = v9;
  }

  v10 = qword_1EB75D3A0;
  if (v9 != qword_1EB75D3A0)
  {
    qword_1EB75D3A0 = v9;
    if (dword_1EB75DE40)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (off_1EB75D3B8)
    {
      off_1EB75D3B8(v10, valuePtr[0]);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void cmsmdevicestate_UpdateTightSyncUUID(const void *a1)
{
  v1 = qword_1EB75D398;
  qword_1EB75D398 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v1)
  {

    CFRelease(v1);
  }
}

__CFString *cmsmdevicestate_GetThermalPressureLevelAsString(unsigned int a1)
{
  if (a1 > 29)
  {
    if (a1 == 30)
    {
      return @"Heavy";
    }

    if (a1 != 40)
    {
      if (a1 == 50)
      {
        return @"Sleeping";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
    }

    return @"Trapping";
  }

  else
  {
    if (!a1)
    {
      return @"Nominal";
    }

    if (a1 != 10)
    {
      if (a1 == 20)
      {
        return @"Moderate";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
    }

    return @"Light";
  }
}

uint64_t cmsmdevicestate_UpdateButtonsCanChangeRingerVolume()
{
  v2 = *MEMORY[0x1E69E9840];
  CFPreferencesSynchronize(@"com.apple.preferences.sounds", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D36E = result != 0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t PowerManager_InitializeCPMSForAudio()
{
  v42 = *MEMORY[0x1E69E9840];
  if (sCMSMPowerManagerForAudio_1)
  {
    return 0;
  }

  sCMSMPowerManagerForAudio_2 = [MEMORY[0x1E6991F30] sharedCPMSAgent];
  if (sCMSMPowerManagerForAudio_2)
  {
    sCMSMPowerManagerForAudio_5 = vaemCopyCPMSPowerBudgetRangeInMilliWatts(5);
    if (!sCMSMPowerManagerForAudio_5)
    {
      v0 = 4294954513;
      goto LABEL_41;
    }

    *v33 = 0;
    v1 = sCMSMPowerManagerForAudio_2;
    v2 = objc_alloc_init(MEMORY[0x1E6991F38]);
    [v2 setClientId:5];
    [v2 setPowerLevels:sCMSMPowerManagerForAudio_5];
    [v2 setIsContinuous:1];
    [v2 setNotificationCallback:&__block_literal_global_5_2];
    [v2 setGetCurrentPower:&__block_literal_global_75];
    [v2 setPowerBudgetUpdateMinimumPeriod:10];
    v3 = sCMSMPowerManagerForAudio_1;
    if ((sCMSMPowerManagerForAudio_1 & 1) == 0)
    {
      if (![v1 registerClientWithDescription:v2 error:v33])
      {
        v0 = 4294954513;
        goto LABEL_33;
      }

      sCMSMPowerManagerForAudio_1 = 1;
    }

    v36 = 0;
    v4 = sCMSMPowerManagerForAudio_2;
    PowerBudgetRequestDict = PowerManager_CreatePowerBudgetRequestDict(sCMSMPowerManagerForAudio_5, 1);
    if (PowerBudgetRequestDict)
    {
      v6 = PowerBudgetRequestDict;
      v7 = [v4 copyPowerBudgetForRequest:PowerBudgetRequestDict forClient:5 error:&v36];
      if (v7)
      {
        v8 = v7;
        if (sCMSMPowerManagerForAudio_6)
        {
          CFRelease(sCMSMPowerManagerForAudio_6);
        }

        sCMSMPowerManagerForAudio_6 = v8;
        if (dword_1EB75DE40)
        {
          *v35 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v10 = *v35;
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
            v37 = 136315394;
            v38 = "powerManager_RequestPowerBudgetFromCPMSForAudioResource";
            v39 = 2114;
            v40 = sCMSMPowerManagerForAudio_6;
            _os_log_send_and_compose_impl(v12, 0, v41, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v11, "-PowerManager- %s: Budget granted by CPMS for audio is %{public}@.", &v37, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRelease(v6);
        v0 = PowerManager_SetPowerBudgetOnVAAndSendAcknowledgementToCPMSForResource(5, sCMSMPowerManagerForAudio_2, sCMSMPowerManagerForAudio_6);
        if ((v3 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      *v35 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = *v35;
      v15 = type;
      if (os_log_type_enabled(v13, type))
      {
        v16 = v14;
      }

      else
      {
        v16 = v14 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = [v36 description];
        v37 = 136315394;
        v38 = "powerManager_RequestPowerBudgetFromCPMSForAudioResource";
        v39 = 2114;
        v40 = v17;
        _os_log_send_and_compose_impl(v16, 0, v41, 128, &dword_1B17A2000, v13, v15, "-PowerManager- %s: Failed to request power budget from CPMS for audio with error %{public}@", &v37, 22);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      CFRelease(v6);
    }

    LODWORD(v36) = 0;
    v35[0] = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = v36;
    v20 = v35[0];
    if (os_log_type_enabled(v18, v35[0]))
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v37 = 136315138;
      v38 = "powerManager_RequestInitialBudgetFromCPMSForAudioResource";
      _os_log_send_and_compose_impl(v21, 0, v41, 128, &dword_1B17A2000, v18, v20, "-PowerManager- %s: Failed to create initial budget request dictionary for audio.", &v37);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v0 = 4294954510;
    if (!v3)
    {
LABEL_39:

      if (sCMSMPowerManagerForAudio_6)
      {
        if (!v0)
        {
          return v0;
        }

        goto LABEL_41;
      }

      goto LABEL_48;
    }

LABEL_33:
    LODWORD(v36) = 0;
    v35[0] = OS_LOG_TYPE_DEFAULT;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = v36;
    v24 = v35[0];
    if (os_log_type_enabled(v22, v35[0]))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v26 = [*v33 description];
      v37 = 136315394;
      v38 = "powerManager_RequestInitialBudgetFromCPMSForAudioResource";
      v39 = 2114;
      v40 = v26;
      LODWORD(v32) = 22;
      _os_log_send_and_compose_impl(v25, 0, v41, 128, &dword_1B17A2000, v22, v24, "-PowerManager- %s: Failed to register client with CPMS for audio with error '%{public}@'", &v37, v32);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_39;
  }

LABEL_48:
  v0 = 4294954510;
LABEL_41:
  LODWORD(v36) = 0;
  v33[0] = OS_LOG_TYPE_DEFAULT;
  v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v28 = v36;
  v29 = v33[0];
  if (os_log_type_enabled(v27, v33[0]))
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 & 0xFFFFFFFE;
  }

  if (v30)
  {
    v37 = 136315394;
    v38 = "PowerManager_InitializeCPMSForAudio";
    v39 = 1024;
    LODWORD(v40) = v0;
    _os_log_send_and_compose_impl(v30, 0, v41, 128, &dword_1B17A2000, v27, v29, "-PowerManager- %s: Failed to register CPMS client audio with err = %d", &v37, 18);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v0;
}

void sub_1B1947A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CMSystemSoundMgr_Initialize(uint64_t a1, uint64_t a2)
{
  v473 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695E480];
  if (!gSystemSoundRingerSettings)
  {
    CelestialGetModelSpecificName();
    v3 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v3)
    {
      v4 = v3;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v4))
      {
        Count = CFDictionaryGetCount(v4);
        v7 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        v65 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        values = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(v4, v7, v65);
        v8 = *v2;
        if (Count >= 1)
        {
          v9 = v7;
          v11 = v65;
          v10 = values;
          v12 = Count;
          do
          {
            context = xmmword_1B19D91A0;
            v68 = unk_1B19D91B0;
            v13 = CFStringGetTypeID();
            if (v13 != CFGetTypeID(*v9))
            {
              break;
            }

            v14 = CFDictionaryGetTypeID();
            if (v14 != CFGetTypeID(*v11))
            {
              break;
            }

            *&context = *v9;
            CFDictionaryApplyFunction(*v11, cmsmWordyToCompact, &context);
            if (!BYTE8(v68))
            {
              break;
            }

            *v10++ = CFDataCreate(v8, &context + 8, 8);
            ++v11;
            ++v9;
            --v12;
          }

          while (v12);
        }

        v15 = CFDictionaryCreate(v8, v7, values, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        free(v7);
        free(v65);
        if (values)
        {
          if (Count >= 1)
          {
            v16 = values;
            do
            {
              if (*v16)
              {
                CFRelease(*v16);
              }

              ++v16;
              --Count;
            }

            while (Count);
          }

          free(values);
        }

        v2 = MEMORY[0x1E695E480];
      }

      else
      {
        v15 = 0;
      }

      gSystemSoundRingerSettings = v15;
      CFRelease(v4);
    }
  }

  if (!gSystemSoundAudioBehaviors)
  {
    CelestialGetModelSpecificName();
    v17 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v17)
    {
      v18 = v17;
      v19 = CFDictionaryGetTypeID();
      if (v19 == CFGetTypeID(v18))
      {
        v20 = CFRetain(v18);
      }

      else
      {
        v20 = 0;
      }

      gSystemSoundAudioBehaviors = v20;
      CFRelease(v18);
    }
  }

  if (!gRegionalSystemSoundsThatShareBehaviour)
  {
    CelestialGetModelSpecificName();
    v21 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v21)
    {
      v22 = v21;
      v23 = CFDictionaryGetTypeID();
      if (v23 == CFGetTypeID(v22) && (v24 = MGCopyAnswer()) != 0 && (v25 = v24, v26 = CFBooleanGetValue(v24), CFRelease(v25), v26))
      {
        gCMSS_3 = MGGetBoolAnswer();
        if ((gCMSS_3 & 1) == 0 && dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v29 = MGCopyAnswer();
        if (dword_1EB75DE40)
        {
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        Value = CFDictionaryGetValue(v22, v29);
        v28 = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        if (v29)
        {
          CFRelease(v29);
        }
      }

      else
      {
        v28 = 0;
      }

      gRegionalSystemSoundsThatShareBehaviour = v28;
      CFRelease(v22);
    }
  }

  if (!gSystemSoundVibrationPatterns)
  {
    CelestialGetModelSpecificName();
    v32 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v32)
    {
      v33 = v32;
      v34 = CFDictionaryGetTypeID();
      if (v34 == CFGetTypeID(v33))
      {
        v35 = CFRetain(v33);
      }

      else
      {
        v35 = 0;
      }

      gSystemSoundVibrationPatterns = v35;
      CFRelease(v33);
    }
  }

  if (!gSystemSoundRoutingForCategories)
  {
    CelestialGetModelSpecificName();
    v36 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v36)
    {
      v37 = v36;
      v38 = CFDictionaryGetTypeID();
      if (v38 == CFGetTypeID(v37))
      {
        v39 = CFRetain(v37);
      }

      else
      {
        v39 = 0;
      }

      gSystemSoundRoutingForCategories = v39;
      CFRelease(v37);
    }
  }

  if (!gSystemSoundLowersMusicVolume)
  {
    CelestialGetModelSpecificName();
    v40 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v40)
    {
      v41 = v40;
      v42 = CFDictionaryGetTypeID();
      if (v42 == CFGetTypeID(v41))
      {
        v43 = CFRetain(v41);
      }

      else
      {
        v43 = 0;
      }

      gSystemSoundLowersMusicVolume = v43;
      CFRelease(v41);
    }
  }

  if (!gSystemSoundMaxVolume)
  {
    CelestialGetModelSpecificName();
    v44 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v44)
    {
      v45 = v44;
      v46 = CFDictionaryGetTypeID();
      if (v46 == CFGetTypeID(v45))
      {
        v47 = CFRetain(v45);
      }

      else
      {
        v47 = 0;
      }

      gSystemSoundMaxVolume = v47;
      CFRelease(v45);
    }
  }

  if (!gSystemSoundMaxVibrationIntensity)
  {
    CelestialGetModelSpecificName();
    v48 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v48)
    {
      v49 = v48;
      v50 = CFDictionaryGetTypeID();
      if (v50 == CFGetTypeID(v49))
      {
        v51 = CFRetain(v49);
      }

      else
      {
        v51 = 0;
      }

      gSystemSoundMaxVibrationIntensity = v51;
      CFRelease(v49);
    }
  }

  if (!gSystemSoundsWithNoVolumeAdjustment || !gSystemSoundsDoNotObeyAccessibilityVibrationSetting)
  {
    CelestialGetModelSpecificName();
    v52 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v52)
    {
      v53 = v52;
      v54 = CFDictionaryGetTypeID();
      if (v54 == CFGetTypeID(v53))
      {
        v55 = CFDictionaryGetValue(v53, @"NoVolumeAdjustment");
        if (v55)
        {
          v55 = CFRetain(v55);
        }
      }

      else
      {
        v55 = 0;
      }

      gSystemSoundsWithNoVolumeAdjustment = v55;
      v56 = CFDictionaryGetTypeID();
      if (v56 == CFGetTypeID(v53))
      {
        v57 = CFDictionaryGetValue(v53, @"DoNotObeyAccessibilityVibrationSetting");
        if (v57)
        {
          v57 = CFRetain(v57);
        }
      }

      else
      {
        v57 = 0;
      }

      gSystemSoundsDoNotObeyAccessibilityVibrationSetting = v57;
      CFRelease(v53);
    }
  }

  if (!gSystemSoundMinVolume)
  {
    CelestialGetModelSpecificName();
    v58 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v58)
    {
      gSystemSoundMinVolume = v58;
    }
  }

  memset(&keyCallBacks, 0, sizeof(keyCallBacks));
  *&context = 0x1F2895470;
  *(&context + 1) = 0x1F2895470;
  *&v68 = 0x1F2895470;
  *(&v68 + 1) = 0x1F2895470;
  v69 = 0x1F2895470;
  v70 = 0x1F2895470;
  v71 = 0x1F2895230;
  v72 = 0x1F2895470;
  v73 = 0x1F2895470;
  v74 = 0x1F2895470;
  v75 = 0x1F2894F90;
  v76 = 0x1F2894F90;
  v77 = @"SystemSoundPreview";
  v78 = @"MailReceived";
  v79 = @"MailSent";
  v80 = @"VoicemailReceived";
  v81 = @"SMSReceived";
  v82 = @"SMSSent";
  v83 = @"CalendarAlert";
  v84 = @"LowPower";
  v85 = @"SMSReceived_Alert";
  v86 = @"SMSReceived_Alert";
  v87 = @"SMSReceived_Alert";
  v88 = @"SMSReceived_Alert";
  v89 = @"SMSReceived_Alert";
  v90 = @"SMSReceived_Vibrate";
  v91 = @"SMSReceived_Alert";
  v92 = @"SMSReceived_Alert";
  v93 = @"MailSent";
  v94 = @"ReminderAlert";
  v95 = @"MailSent";
  v96 = @"SMSReceived_Alert";
  v97 = @"SMSReceived_Alert";
  v98 = @"SMSReceived_Alert";
  v99 = @"SMSReceived_Alert";
  v100 = @"SMSReceived_Alert";
  v101 = @"SMSReceived_Alert";
  v102 = @"SMSReceived_Alert";
  v103 = @"SMSReceived_Alert";
  v104 = @"SMSReceived_Alert";
  v105 = @"SMSReceived_Alert";
  v106 = @"SMSReceived_Alert";
  v107 = @"SMSReceived_Alert";
  v108 = @"SMSReceived_Alert";
  v109 = @"SMSReceived_Alert";
  v110 = @"SMSReceived_Alert";
  v111 = @"SMSReceived_Alert";
  v112 = @"SMSReceived_Alert";
  v113 = @"USSDAlert";
  v114 = @"SIMToolkitTone";
  v115 = @"SIMToolkitTone";
  v116 = @"SIMToolkitTone";
  v117 = @"SIMToolkitTone";
  v118 = @"SIMToolkitTone";
  v119 = @"PINKeyPressed";
  v120 = @"ScreenLocked";
  v121 = @"FailedUnlock";
  v122 = @"KeyPressed";
  v123 = @"KeyPressed";
  v124 = @"KeyPressed";
  v125 = @"ConnectedToPower";
  v126 = @"RingerSwitchIndication";
  v127 = @"CameraShutter";
  v128 = 0x1F2894FF0;
  v129 = 0x1F2895010;
  v130 = 0x1F2895030;
  v131 = 0x1F2895050;
  v132 = 0x1F2895070;
  v133 = 0x1F2895090;
  v134 = 0x1F28950B0;
  v135 = 0x1F28950D0;
  v136 = 0x1F28950F0;
  v137 = 0x1F2895110;
  v138 = 0x1F2895130;
  v139 = 0x1F2895170;
  v140 = 0x1F2895130;
  v141 = 0x1F2895130;
  v142 = 0x1F2895130;
  v143 = 0x1F2895130;
  v144 = 0x1F2895130;
  v145 = 0x1F2895490;
  v146 = 0x1F2896F70;
  v147 = 0x1F2896F90;
  v148 = 0x1F2896FB0;
  v149 = 0x1F2896FD0;
  v150 = 0x1F2896FF0;
  v151 = 0x1F2897010;
  v152 = 0x1F2897030;
  v153 = 0x1F2897050;
  v154 = 0x1F2897070;
  v155 = 0x1F2895210;
  v156 = 0x1F2895190;
  v157 = 0x1F28951B0;
  v158 = 0x1F28951D0;
  v159 = 0x1F28951F0;
  v160 = @"KeyPressed";
  v161 = @"KeyPressed";
  v162 = @"KeyPressed";
  v163 = 0x1F2895250;
  v164 = 0x1F2895270;
  v165 = 0x1F28954B0;
  v166 = 0x1F2895290;
  v167 = 0x1F28952B0;
  v168 = 0x1F28954B0;
  v169 = 0x1F28952D0;
  v170 = 0x1F28952F0;
  v171 = 0x1F2895470;
  v172 = 0x1F2895470;
  v173 = 0x1F2895310;
  v174 = 0x1F2895330;
  v175 = 0x1F2895350;
  v176 = 0x1F2895370;
  v177 = @"TouchTone";
  v178 = @"TouchTone";
  v179 = @"TouchTone";
  v180 = @"TouchTone";
  v181 = @"TouchTone";
  v182 = @"TouchTone";
  v183 = @"TouchTone";
  v184 = @"TouchTone";
  v185 = @"TouchTone";
  v186 = @"TouchTone";
  v187 = @"TouchTone";
  v188 = @"TouchTone";
  v189 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v190 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v191 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v192 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v193 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v194 = @"SystemSoundPreview";
  v195 = @"KeyPressClickPreview";
  v196 = @"SMSReceived_Selection";
  v197 = @"SMSReceived_Selection";
  v198 = @"SMSReceived_Selection";
  v199 = @"SMSReceived_Selection";
  v200 = @"SMSReceived_Selection";
  v201 = @"SMSReceived_Vibrate";
  v202 = @"SMSReceived_Selection";
  v203 = @"SMSReceived_Selection";
  v204 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v205 = @"SystemSoundPreview_IgnoreRingerSwitch_NoVibe";
  v206 = @"SMSReceived_Selection";
  v207 = @"SMSReceived_Selection";
  v208 = @"SMSReceived_Selection";
  v209 = @"SMSReceived_Selection";
  v210 = @"SMSReceived_Selection";
  v211 = @"SMSReceived_Selection";
  v212 = @"SMSReceived_Selection";
  v213 = @"SMSReceived_Selection";
  v214 = @"SMSReceived_Selection";
  v215 = @"SMSReceived_Selection";
  v216 = @"SMSReceived_Selection";
  v217 = @"SMSReceived_Selection";
  v218 = @"SMSReceived_Selection";
  v219 = @"SMSReceived_Selection";
  v220 = @"SMSReceived_Selection";
  v221 = @"SMSReceived_Selection";
  v222 = @"SMSReceived_Selection";
  v223 = @"RingerVibeChanged";
  v224 = @"SilentVibeChanged";
  v225 = 0x1F2896CD0;
  v226 = @"Headset_StartCall";
  v227 = @"Headset_Redial";
  v228 = @"Headset_AnswerCall";
  v229 = @"Headset_EndCall";
  v230 = @"Headset_CallWaitingActions";
  v231 = @"Headset_TransitionEnd";
  v232 = 0x1F2894FB0;
  v233 = 0x1F2894FD0;
  v234 = 0x1F28917D0;
  v235 = 0x1F28917D0;
  v236 = 0x1F28917D0;
  v237 = 0x1F28953B0;
  v238 = 0x1F28953D0;
  v239 = 0x1F28953F0;
  v240 = 0x1F2895410;
  v241 = 0x1F2895430;
  v242 = 0x1F2895450;
  v243 = 0x1F28954B0;
  v244 = 0x1F28954D0;
  v245 = 0x1F28954D0;
  v246 = 0x1F28954F0;
  v247 = 0x1F2895510;
  v248 = 0x1F2895530;
  v249 = 0x1F2895550;
  v250 = 0x1F2895570;
  v251 = 0x1F2895590;
  v252 = 0x1F28955B0;
  v253 = 0x1F28955D0;
  v254 = 0x1F28955F0;
  v255 = 0x1F2895610;
  v256 = 0x1F2895630;
  v257 = 0x1F2895650;
  v258 = 0x1F2895670;
  v259 = 0x1F2895690;
  v260 = 0x1F28956B0;
  v261 = 0x1F28956D0;
  v262 = 0x1F28956F0;
  v263 = 0x1F2895710;
  v264 = 0x1F2895730;
  v265 = 0x1F2895750;
  v266 = 0x1F2895770;
  v267 = 0x1F2895790;
  v268 = 0x1F28957B0;
  v269 = 0x1F28957D0;
  v270 = 0x1F28957F0;
  v271 = 0x1F2895810;
  v272 = 0x1F2895830;
  v273 = 0x1F2895850;
  v274 = 0x1F2895870;
  v275 = 0x1F2895890;
  v276 = 0x1F28958B0;
  v277 = 0x1F28958D0;
  v278 = 0x1F28958F0;
  v279 = 0x1F2895910;
  v280 = 0x1F2895930;
  v281 = 0x1F2895950;
  v282 = 0x1F2895970;
  v283 = 0x1F2895990;
  v284 = 0x1F28959B0;
  v285 = 0x1F28959D0;
  v286 = 0x1F28959F0;
  v287 = 0x1F2895A10;
  v288 = 0x1F2895A30;
  v289 = 0x1F2895A50;
  v290 = 0x1F2895A70;
  v291 = 0x1F2895A90;
  v292 = 0x1F2895AB0;
  v293 = 0x1F2895AD0;
  v294 = 0x1F2895AF0;
  v295 = 0x1F2895B10;
  v296 = 0x1F2895B30;
  v297 = 0x1F2895B50;
  v298 = 0x1F2895B70;
  v299 = 0x1F2895B90;
  v300 = 0x1F2895BB0;
  v301 = 0x1F2895BD0;
  v302 = 0x1F2895BF0;
  v303 = 0x1F2895C10;
  v304 = 0x1F2895C30;
  v305 = 0x1F2895C50;
  v306 = 0x1F2895C70;
  v307 = 0x1F2895C90;
  v308 = 0x1F2895CB0;
  v309 = 0x1F2895CD0;
  v310 = 0x1F2895CF0;
  v311 = 0x1F2895D10;
  v312 = 0x1F2895D30;
  v313 = 0x1F2895D50;
  v314 = 0x1F2895D70;
  v315 = 0x1F2895D90;
  v316 = 0x1F2895DB0;
  v317 = 0x1F2895DD0;
  v318 = 0x1F2895DF0;
  v319 = 0x1F2895E10;
  v320 = 0x1F2895E30;
  v321 = 0x1F2895E50;
  v322 = 0x1F2895E70;
  v323 = 0x1F2895E90;
  v324 = 0x1F2895EB0;
  v325 = 0x1F2895ED0;
  v326 = 0x1F2895EF0;
  v327 = 0x1F2895F10;
  v328 = 0x1F2895F30;
  v329 = 0x1F2895F50;
  v330 = 0x1F2895F70;
  v331 = 0x1F2895F90;
  v332 = 0x1F2895FB0;
  v333 = 0x1F2895FD0;
  v334 = 0x1F2895FF0;
  v335 = 0x1F2896010;
  v336 = 0x1F2896030;
  v337 = 0x1F2896050;
  v338 = 0x1F2896070;
  v339 = 0x1F2896090;
  v340 = 0x1F28960B0;
  v341 = 0x1F28960D0;
  v342 = 0x1F28960F0;
  v343 = 0x1F2896110;
  v344 = 0x1F2896130;
  v345 = 0x1F2896150;
  v346 = 0x1F2896170;
  v347 = 0x1F2896190;
  v348 = 0x1F28961B0;
  v349 = 0x1F28961D0;
  v350 = 0x1F28961F0;
  v351 = 0x1F2896210;
  v352 = 0x1F2896230;
  v353 = 0x1F2896250;
  v354 = 0x1F2896270;
  v355 = 0x1F2896290;
  v356 = 0x1F28962B0;
  v357 = 0x1F28962D0;
  v358 = 0x1F28962F0;
  v359 = 0x1F2896310;
  v360 = 0x1F2896330;
  v361 = 0x1F2896350;
  v362 = 0x1F2896370;
  v363 = 0x1F2896390;
  v364 = 0x1F28963B0;
  v365 = 0x1F28963D0;
  v366 = 0x1F28963F0;
  v367 = 0x1F2896410;
  v368 = 0x1F2896430;
  v369 = 0x1F2896450;
  v370 = 0x1F2896470;
  v371 = 0x1F2896490;
  v372 = 0x1F28964B0;
  v373 = 0x1F28964D0;
  v374 = 0x1F28964F0;
  v375 = 0x1F2896510;
  v376 = 0x1F2896530;
  v377 = 0x1F2896550;
  v378 = 0x1F2896570;
  v379 = 0x1F2896590;
  v380 = 0x1F28965B0;
  v381 = 0x1F28965D0;
  v382 = 0x1F28965F0;
  v383 = 0x1F2896610;
  v384 = 0x1F2896630;
  v385 = 0x1F2896650;
  v386 = 0x1F2896670;
  v387 = 0x1F2896690;
  v388 = 0x1F28966B0;
  v389 = 0x1F28966D0;
  v390 = 0x1F28966F0;
  v391 = 0x1F2896710;
  v392 = 0x1F2896730;
  v393 = 0x1F2896750;
  v394 = 0x1F2896770;
  v395 = 0x1F2896790;
  v396 = 0x1F28967B0;
  v397 = 0x1F28967D0;
  v398 = 0x1F28967F0;
  v399 = 0x1F2896810;
  v400 = 0x1F2896830;
  v401 = 0x1F2896850;
  v402 = 0x1F2896870;
  v403 = 0x1F2896890;
  v404 = 0x1F28968B0;
  v405 = 0x1F28968D0;
  v406 = 0x1F28968F0;
  v407 = 0x1F2896910;
  v408 = 0x1F2896930;
  v409 = 0x1F2896950;
  v410 = 0x1F2896970;
  v411 = 0x1F2896990;
  v412 = 0x1F28969B0;
  v413 = 0x1F2895390;
  v414 = 0x1F2895470;
  v415 = 0x1F2895470;
  v416 = 0x1F28969D0;
  v417 = 0x1F28969F0;
  v418 = 0x1F2896B30;
  v419 = 0x1F2896B50;
  v420 = 0x1F2896B70;
  v421 = 0x1F2896B90;
  v422 = 0x1F2896BB0;
  v423 = 0x1F2896A10;
  v424 = 0x1F2896A30;
  v425 = 0x1F2896BD0;
  v426 = 0x1F2896BF0;
  v427 = 0x1F2896C10;
  v428 = 0x1F2896C30;
  v429 = 0x1F2896C50;
  v430 = 0x1F2896C70;
  v431 = 0x1F2898130;
  v432 = 0x1F2898150;
  v433 = 0x1F2896A50;
  v434 = 0x1F2896A70;
  v435 = 0x1F2896A90;
  v436 = 0x1F2895C90;
  v437 = 0x1F2896AB0;
  v438 = 0x1F2896AD0;
  v439 = 0x1F2896AF0;
  v440 = 0x1F2896B10;
  v441 = 0x1F2895470;
  v442 = 0x1F2895470;
  v443 = 0x1F2895470;
  v444 = 0x1F2895470;
  v445 = 0x1F2896C90;
  v446 = 0x1F2896CB0;
  v447 = 0x1F2896CF0;
  v448 = 0x1F2896D10;
  v449 = 0x1F2896D30;
  v450 = 0x1F2896D50;
  v451 = 0x1F2896D70;
  v452 = 0x1F2896D90;
  v453 = 0x1F2896DB0;
  v454 = 0x1F2896DD0;
  v455 = 0x1F2896DF0;
  v456 = 0x1F2896E10;
  v457 = 0x1F2896E30;
  v458 = 0x1F2896E50;
  v459 = 0x1F2896E70;
  v460 = 0x1F2896E90;
  v461 = 0x1F2896EB0;
  v462 = 0x1F2896ED0;
  v463 = 0x1F2896EF0;
  v464 = 0x1F2896F10;
  v465 = 0x1F2896F30;
  v466 = 0x1F2896F50;
  v467 = 0x1F2897090;
  v468 = 0x1F28970B0;
  v469 = 0x1F28970D0;
  v59 = *v2;
  v470 = 0x1F28970F0;
  v471 = 0x1F2897110;
  gSystemSoundIDToCategory = CFDictionaryCreate(v59, &cmsmInitializeSSIDCategoryMappings_ssids, &context, 407, &keyCallBacks, MEMORY[0x1E695E9E8]);
  gCMSS_12 = FigReentrantMutexCreate();
  CelestialGetModelSpecificName();
  v60 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v60)
  {
    v61 = v60;
    v62 = CFDictionaryGetValue(v60, @"DefaultVADToSystemSoundVADVolumeRatio");
    v63 = v62;
    if (v62)
    {
      CFRetain(v62);
    }

    CFRelease(v61);
  }

  else
  {
    v63 = 0;
  }

  gCMSS_4 = v63;
  gCMSS_5 = CFDictionaryCreateMutable(v59, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gCMSS_6 = CFArrayCreateMutable(v59, 0, MEMORY[0x1E695E9C0]);
  gCMSS_7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!gCMSS_7)
  {
    v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXDebugInstallSysdiagnoseBlock(@"CMSessionSystemSoundManagerState", &__block_literal_global_76);
}