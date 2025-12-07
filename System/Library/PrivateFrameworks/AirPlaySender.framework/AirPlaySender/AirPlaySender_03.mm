void __emp_copyAvailableEndpoints_block_invoke(uint64_t a1, int a2, int a3, void *value)
{
  if (!*(a1 + 40) || !APSGetFBOPropertyInt64())
  {
    v6 = *(a1 + 32);

    CFArrayAppendValue(v6, value);
  }
}

void __emp_setupCache_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
  if (!v5)
  {
    __emp_setupCache_block_invoke_cold_6((DerivedStorage + 24));
    return;
  }

  v6 = v5;
  CFSetAddValue(*(DerivedStorage + 80), v5);
  v7 = APEndpointPlusUtils_CopyClusterIDFromBonjourInfo(a2);
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *(v8 + 88);
  if (v7)
  {
    CFDictionarySetValue(v9, v6, v7);
    v13 = emp_removeCachedEndpointWithType(v3, a2, v6, 1);
    if (v13)
    {
      __emp_setupCache_block_invoke_cold_1(v13);
      goto LABEL_21;
    }

    v14 = emp_ensureCachedEndpointWithType(v3, a2, v7, 2);
    if (v14)
    {
      __emp_setupCache_block_invoke_cold_2(v14);
      goto LABEL_21;
    }

LABEL_10:
    v15 = emp_ensureCachedEndpointWithType(v3, a2, v6, 3);
    if (v15)
    {
      __emp_setupCache_block_invoke_cold_5(v15);
    }

    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v9, v6);
  if (Value)
  {
    v11 = emp_removeCachedEndpointWithType(v3, a2, Value, 2);
    if (v11)
    {
      __emp_setupCache_block_invoke_cold_3(v11);
      goto LABEL_21;
    }

    CFDictionaryRemoveValue(*(v8 + 88), v6);
  }

  v12 = emp_ensureCachedEndpointWithType(v3, a2, v6, 1);
  if (!v12)
  {
    goto LABEL_10;
  }

  __emp_setupCache_block_invoke_cold_4(v12);
LABEL_21:
  APSLogErrorAt();
LABEL_12:
  FigSimpleMutexUnlock();
  CFRelease(v6);
  if (v7)
  {

    CFRelease(v7);
  }
}

const __CFString *APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(const __CFDictionary *a1)
{
  v2 = BonjourDevice_CopyCFString();
  v3 = v2;
  if (v2 && !CFStringHasPrefix(v2, @"00000000-0000-0000-0000"))
  {
    return v3;
  }

  Value = CFDictionaryGetValue(a1, @"deviceID");
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

uint64_t APEndpointPlusUtils_CopyClusterIDFromBonjourInfo(uint64_t a1)
{
  result = BonjourDevice_CopyCFString();
  if (!result)
  {

    return BonjourDevice_CopyCFString();
  }

  return result;
}

uint64_t emp_ensureCachedEndpointWithType(uint64_t a1, const __CFDictionary *a2, const void *a3, uint64_t a4)
{
  v4 = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = 56;
  if (v4 == 3)
  {
    v10 = 64;
  }

  if (v4 == 2)
  {
    v10 = 72;
  }

  v11 = *(v9 + v10);
  v29 = 0;
  if (!emp_shouldAllowCacheableType(v4))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v11, a3);
  if (!Value)
  {
    v30 = 0;
LABEL_26:
    v25 = APEndpointPlusCreateWithBonjourInfo(v4, a2, *(DerivedStorage + 8), &v30);
    if (v25)
    {
      v24 = v25;
      APSLogErrorAt();
    }

    else
    {
      emp_addEndpoint(a1, a3, v30, v4);
      if (v4 == 2)
      {
        v26 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
        APEndpointPlusCopySubEndpoint(v30, v26, &v29);
        if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_2(&dword_280FB1478, "OSStatus emp_ensureCachedEndpointWithType(FigEndpointManagerRef, CFDictionaryRef, CFStringRef, APEndpointPlusType)", v27, "[%{ptr}] %s subEndpointPlus [%{ptr}] %@ for clusterPlus [%{ptr}] %@");
        }
      }

      else
      {
        v26 = 0;
      }

      emp_restartCachePromotionDeadlineIfNecessary(a1);
      emp_postDelayedAvailableEndpointsChanged(a1, &unk_2835843E0);
      if (v26)
      {
        CFRelease(v26);
      }

      v24 = 0;
    }

LABEL_36:
    v14 = v30;
    if (!v30)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v13 = CFRetain(Value);
  v30 = v13;
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = v13;
  if (v4 == 2)
  {
    v15 = CMBaseObjectGetDerivedStorage();
    v32 = 0;
    cf = 0;
    v16 = APEndpointPlusUtils_CopyDeviceIDFromBonjourInfo(a2);
    if (!v16)
    {
      v24 = 4294960591;
      APSLogErrorAt();
LABEL_24:
      emp_postDelayedAvailableEndpointsChanged(a1, &unk_2835843E0);
      goto LABEL_36;
    }

    v17 = v16;
    v18 = APEndpointPlusCopySubEndpoint(v14, v16, &cf);
    if (v18 == -6727)
    {
      v19 = APEndpointPlusCreateWithBonjourInfo(1, a2, *(v15 + 8), &cf);
      if (v19)
      {
        v24 = v19;
      }

      else
      {
        v20 = APEndpointPlusAddSubEndpoint(v14, cf);
        if (!v20)
        {
          CMBaseObject = FigEndpointGetCMBaseObject();
          v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v23)
          {
            v23(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &v32);
          }

          if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_2(&dword_280FB1478, "OSStatus emp_addCachedSubEndpoint(FigEndpointManagerRef, FigEndpointRef, CFDictionaryRef)", v22, "[%{ptr}] %s subEndpointPlus [%{ptr}] %@ for clusterPlus [%{ptr}] %@");
          }

          v24 = 0;
          goto LABEL_20;
        }

        v24 = v20;
      }

      APSLogErrorAt();
    }

    else
    {
      v24 = v18;
    }

LABEL_20:
    CFRelease(v17);
    if (v32)
    {
      CFRelease(v32);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_24;
  }

  v24 = 0;
LABEL_37:
  CFRelease(v14);
LABEL_38:
  if (v29)
  {
    CFRelease(v29);
  }

  return v24;
}

void manager_removeEndpointForTransportDevice(void *a1, const __CFDictionary *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a2, a3);
  if (Value)
  {
    v8 = Value;
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
    {
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v9, v10, v11, v12, "void manager_removeEndpointForTransportDevice(FigEndpointManagerRef, CFMutableDictionaryRef, APTransportDeviceRef)", v8);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_10();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_1_12();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_6_4();
    FigNotificationCenterRemoveWeakListener();
    manager_updateEndpointClusterMembershipIfNeeded(a1, v8, 1, 0);
    if (!APSGetFBOPropertyInt64())
    {
      manager_updateAggregatedInterruptingSessionStateIfNeeded(a1, v8, 0);
    }

    v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v13)
    {
      v13(v8);
    }

    if (APTransportDeviceIsAssistedDevice())
    {
      APBrowserControllerRemoveInjectedEndpoint(*(DerivedStorage + 312), a3);
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v14, v15, v16, v17, a1, v8);
      }
    }

    CFDictionaryRemoveValue(a2, a3);
    if (!CFDictionaryContainsKey(*(DerivedStorage + 168), a3) && !CFDictionaryContainsKey(*(DerivedStorage + 176), a3))
    {
      CFSetRemoveValue(*(DerivedStorage + 184), a3);
    }

    manager_notifyAvailableEndpointsChangedWithThrottleIfNeeded(a1, 1);
  }
}

uint64_t endpoint_Dissociate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v47 = 0u;
  *theDict = 0u;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    if (*(DerivedStorage + 48))
    {
      v3 = "RC";
    }

    else
    {
      v3 = "AP";
    }

    v43 = v3;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v4, v5, v6, v7, a1, v43);
  }

  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 120);
  *(DerivedStorage + 120) = 1;
  if (!v8)
  {
    CFRetain(a1);
    v9 = *(DerivedStorage + 440);
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = *(DerivedStorage + 216);
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    theDict[0] = v10;
    v11 = *(DerivedStorage + 160);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    theDict[1] = v11;
    v12 = *(DerivedStorage + 184);
    if (v12)
    {
      CFRetain(v12);
    }

    v13 = *(DerivedStorage + 304);
    v14 = MEMORY[0x277CBECE8];
    if (v13)
    {
      v47[0] = CFSetCreateCopy(*MEMORY[0x277CBECE8], v13);
    }

    v15 = *(DerivedStorage + 328);
    if (v15)
    {
      v47[1] = CFDictionaryCreateCopy(*v14, v15);
    }

    CFGetAllocator(a1);
    APEndpointDescriptionGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v16 = OUTLINED_FUNCTION_11_8();
      v17(v16);
    }

    v18 = *(DerivedStorage + 288);
    if (v18)
    {
      CFRetain(v18);
    }

    v19 = *(DerivedStorage + 296);
    if (v19)
    {
      CFRetain(v19);
    }
  }

  APEndpointDescriptionGetCMBaseObject();
  v21 = v20;
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v22)
  {
    v22(v21, @"uglServerInfo", 0);
  }

  endpoint_resetActivationState(DerivedStorage + 128);
  if (theDict[1] && CFDictionaryContainsKey(theDict[1], *MEMORY[0x277CC1968]))
  {
    v23 = MEMORY[0x277CC0D10];
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
    {
      v44 = *v23;
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v24, v25, v26, v27, a1, v44);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  if (!v8)
  {
    endpoint_removeAPEndpointManagerNotificationsListenerIfNeeded(a1);
    endpoint_removeHDMILatencyNotificationListenerIfNeeded(a1);
    endpoint_stopListeningToSenderSessionAndStreamsNotifications(a1, theDict[0], theDict[1]);
    v28 = *(CMBaseObjectGetDerivedStorage() + 40);
    if (v28)
    {
      v29 = CFRetain(v28);
      if (v29)
      {
        v30 = v29;
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CFRelease(v30);
      }
    }

    if (v47[1])
    {
      CFDictionaryApplyFunction(v47[1], endpoint_unsubscribeRCS, a1);
    }

    if (v47[0])
    {
      OUTLINED_FUNCTION_5_19();
      CFSetApplyFunction(v31, v32, a1);
    }

    if (theDict[0])
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 96))
      {
        OUTLINED_FUNCTION_9_5();
        v33();
      }

      APSenderSessionGetCMBaseObject();
      if (v34)
      {
        v35 = v34;
        v36 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v36)
        {
          v36(v35);
        }
      }

      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
      {
        if (*(DerivedStorage + 48))
        {
          v37 = "RC";
        }

        else
        {
          v37 = "AP";
        }

        v45 = v37;
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v38, v39, v40, v41, a1, v45, theDict[0]);
      }
    }

    FigSimpleMutexLock();
    endpoint_clearEndpointState(a1);
    APSDispatchAsyncFHelper();
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_11_5()
{
  *(v0 - 160) = *(v0 - 256);
  *(v0 - 144) = *(v0 - 240);
  return v0 - 160;
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return CFDictionarySetCString();
}

uint64_t endpoint_removeAPEndpointManagerNotificationsListenerIfNeeded(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 48))
  {
    v2 = result;
    if (*(result + 32))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      result = FigNotificationCenterRemoveWeakListener();
      if (*(v2 + 96) == 7)
      {
        CMNotificationCenterGetDefaultLocalCenter();

        return FigNotificationCenterRemoveWeakListener();
      }
    }
  }

  return result;
}

uint64_t endpoint_removeHDMILatencyNotificationListenerIfNeeded(uint64_t a1)
{
  result = endpoint_isInLocalClusterOfAppleTV(a1);
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_4_28();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void endpoint_dissociateInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = 0;
  if (qword_280FB1BF8 != -1)
  {
    dispatch_once(&qword_280FB1BF8, &__block_literal_global_32);
  }

  if (_MergedGlobals_24)
  {
    v3 = *_MergedGlobals_24;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __endpoint_dissociateInternal_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = _MergedGlobals_24;
    block[5] = a1;
    dispatch_sync(v3, block);
  }

  FigSimpleMutexLock();
  APEndpointDescriptionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"DeviceID", *MEMORY[0x277CBECE8], &v30);
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpoint)))
  {
    v7 = *a1;
    v8 = a1[1];
    if (*(DerivedStorage + 48))
    {
      v9 = "RC";
    }

    else
    {
      v9 = "AP";
    }

    v28 = CFGetHardwareAddress();
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v10, v11, v12, v13, v7, v8, v9, v28);
  }

  v14 = *(DerivedStorage + 24);
  if (v14)
  {
    v15 = a1[6];
    if (v15)
    {
      APBrowserControllerDeregisterEndpoint(v14, v15, *(DerivedStorage + 48));
    }
  }

  v16 = a1[3];
  if (v16)
  {
    CFDictionaryApplyFunction(v16, endpoint_dissociateStreamsDictionaryEntry, 0);
  }

  v17 = a1[9];
  if (v17)
  {
    CFDictionaryApplyFunction(v17, endpoint_invalidateRCS, *a1);
  }

  if (a1[8])
  {
    CFSetApplyBlock();
  }

  endpoint_stopMediaRemoteAndMetadataServices(*a1, a1[7]);
  FigSimpleMutexLock();
  endpoint_updateStatus(*a1, 4294950573, 1);
  FigSimpleMutexUnlock();
  if (*DerivedStorage)
  {
    v18 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v18, a1[5], a1[4], &v31);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v31)
    {
      CFRelease(v31);
    }
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v19 = a1[1];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = a1[6];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = a1[3];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = a1[2];
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = a1[7];
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = a1[8];
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = a1[9];
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = a1[10];
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = a1[11];
  if (v27)
  {
    CFRelease(v27);
  }
}

uint64_t browserController_deregisterEndpoint(uint64_t *a1)
{
  v10 = 0;
  v2 = *MEMORY[0x277CBECE8];
  browserController_copyDeviceName(a1[1], &v10);
  DiscoveryID = APTransportDeviceGetDiscoveryID();
  if (*(a1 + 16))
  {
    v4 = "-remote";
  }

  else
  {
    v4 = "";
  }

  v5 = CFStringCreateWithFormat(v2, 0, @"%@%s", DiscoveryID, v4);
  if (!CFDictionaryContainsKey(*(*a1 + 120), v5))
  {
    goto LABEL_11;
  }

  CFDictionaryRemoveValue(*(*a1 + 120), v5);
  v6 = APTransportDeviceStopTracking();
  if (v6)
  {
    v8 = v6;
    browserController_deregisterEndpoint_cold_1(v6);
LABEL_12:
    v7 = v10;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  browserController_updateDiscoveryMode(*a1);
  if (gLogCategory_APBrowserController > 40 || gLogCategory_APBrowserController == -1 && !_LogCategory_Initialize())
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v7 = v10;
  LogPrintF(&gLogCategory_APBrowserController, "OSStatus browserController_deregisterEndpoint(void *)", 33554472, "Deregister connection for endpoint %@ with ID: %@\n", v10, v5);
  v8 = 0;
  if (v7)
  {
LABEL_13:
    CFRelease(v7);
  }

LABEL_14:
  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

CFIndex manager_updateAggregatedInterruptingSessionStateIfNeeded(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  Count = CFSetGetCount(*(v7 + 224));
  v9 = CFSetContainsValue(*(DerivedStorage + 224), a2);
  if (a3)
  {
    if (v9)
    {
      if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        manager_updateAggregatedInterruptingSessionStateIfNeeded_cold_1(a2, v10, v11);
      }
    }

    else
    {
      CFSetSetValue(*(DerivedStorage + 224), a2);
    }
  }

  else if (v9)
  {
    CFSetRemoveValue(*(DerivedStorage + 224), a2);
  }

  else if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_updateAggregatedInterruptingSessionStateIfNeeded_cold_2(a2);
  }

  v12 = Count > 0;
  v13 = CMBaseObjectGetDerivedStorage();
  result = CFSetGetCount(*(v13 + 224));
  v15 = result > 0;
  if (v12 != v15)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManager, "void manager_updateAggregatedInterruptingSessionStateIfNeeded(FigEndpointManagerRef, FigEndpointRef, Boolean)", 33554482, "*** Posting sender session state: %d -> %d\n", v12, v15);
    }

    return manager_getAndPostSenderStateUpdate(a1);
  }

  return result;
}

uint64_t endpoint_stopListeningToSenderSessionAndStreamsNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  return FigCFDictionaryApplyBlock();
}

void browserController_copyDeviceName(uint64_t a1, uint64_t *a2)
{
  if (APTransportDeviceGetAdvertiserInfo())
  {
    *a2 = APAdvertiserInfoCopyProperty();
  }

  else
  {
    browserController_copyDeviceName_cold_2();
  }
}

void endpoint_stopMediaRemoteAndMetadataServices(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 584))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (*(v5 + 592))
    {
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpoint, "void endpoint_stopMediaRemoteAndMetadataServices(FigEndpointRef, APMetadataSourceRef)", 33554482, "[%{ptr}] Removing MediaRemote CommandReceiver [%{ptr}]\n", a1, *(v5 + 584));
      }

      APMediaRemoteCommandReceiverRemoveClient(*(v5 + 584), *(v5 + 592), v6);
    }

    v7 = *(v5 + 584);
    *(v5 + 592) = 0;
    if (v7)
    {
      CFRelease(v7);
      *(v5 + 584) = 0;
    }
  }

  else
  {
    *(DerivedStorage + 592) = 0;
  }

  v8 = *(v5 + 600);
  if (v8)
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || (v9 = _LogCategory_Initialize(), v8 = *(v5 + 600), v9))
      {
        LogPrintF(&gLogCategory_APEndpoint, "void endpoint_stopMediaRemoteAndMetadataServices(FigEndpointRef, APMetadataSourceRef)", 33554482, "[%{ptr}] Invalidating MetadataSender [%{ptr}]\n", a1, v8);
        v8 = *(v5 + 600);
      }
    }

    APMetadataSenderInvalidate(v8);
    v10 = *(v5 + 600);
    if (v10)
    {
      CFRelease(v10);
      *(v5 + 600) = 0;
    }
  }

  if (a2)
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "void endpoint_stopMediaRemoteAndMetadataServices(FigEndpointRef, APMetadataSourceRef)", 33554482, "[%{ptr}] Stopping MetadataSource [%{ptr}]\n", a1, a2);
    }

    APMetadataSourceStop(a2);
  }
}

void endpoint_updateStatus(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 120) || !a2)
  {
    goto LABEL_29;
  }

  v7 = DerivedStorage;
  *(DerivedStorage + 148) = a2;
  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = CFGetAllocator(a1);
    v12 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v12)
    {
      APSLogErrorAt();
      goto LABEL_28;
    }

    v13 = v12;
    CFDictionarySetInt64();
    if (a2 == 200470 || a2 == 200401)
    {
      if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint)))
      {
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "void endpoint_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState)", v14, "[%{ptr}] Posting kFigEndpointNotification_AuthorizationRequired\n");
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      goto LABEL_27;
    }

    CFDictionarySetInt64();
    CFDictionarySetInt64();
    v16 = MEMORY[0x277CC0CA8];
    v17 = a3 == 0;
    if (a3)
    {
      v16 = MEMORY[0x277CC0CA0];
    }

    v18 = *v16;
    if (v17)
    {
      v19 = MEMORY[0x277CC0BD0];
    }

    else
    {
      v19 = MEMORY[0x277CC0BC8];
    }

    v20 = *v19;
    CFDictionarySetValue(v10, *MEMORY[0x277CC0CC8], v18);
    CFDictionarySetValue(v13, *MEMORY[0x277CC0BD8], v20);
    if (v7[45])
    {
      if (v7[52] && (v21 = FigCFWeakReferenceHolderCopyReferencedObject(), v7[52]) && !v21)
      {
        if (gLogCategory_APEndpoint > 90)
        {
LABEL_39:
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_39_0();
          FigDispatchAsyncPostNotification();
          if (a2 == -16613)
          {
            v23 = CFGetAllocator(a1);
            APEndpointDescriptionGetCMBaseObject();
            v25 = v24;
            v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v26)
            {
              v26(v25, @"TransportDevice", v23, &cf);
              v27 = cf;
              v28 = v7[3];
              if (v28 && cf)
              {
                APBrowserControllerReconfirmEndpoint(v28, cf);
                v27 = cf;
              }

              if (v27)
              {
                CFRelease(v27);
              }
            }
          }

LABEL_27:
          CFRelease(v13);
LABEL_28:
          CFRelease(v10);
LABEL_29:
          OUTLINED_FUNCTION_46_0();
          return;
        }

        if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APEndpoint, "void endpoint_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState)", 33554522, "%{ptr} %###s weakDelegateContextRouting is not NULL, but handleFailureCallbackContext is NULL.\n", a1, "void endpoint_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState)");
        }
      }

      else
      {
        CFRetain(a1);
        CFRetain(v13);
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpoint, "void endpoint_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState)", 33554482, "[%{ptr}] Notifying about endpoint failure %#m (%@)...\n", a1, a2, v18);
        }

        APSDispatchAsyncFHelper();
      }
    }

    if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpoint)))
    {
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpoint, "void endpoint_updateStatus(FigEndpointRef, OSStatus, APEndpointSessionState)", v22, "[%{ptr}] Posting %@\n");
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_46_0();

  APSLogErrorAt();
}

uint64_t APEndpointCreateEndpointActivationNotificationPayload(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      result = 0;
      *a4 = v6;
    }

    else
    {
      APEndpointCreateEndpointActivationNotificationPayload_cold_1();
      return 4294950575;
    }
  }

  else
  {
    APEndpointCreateEndpointActivationNotificationPayload_cold_2();
    return 4294950576;
  }

  return result;
}

uint64_t manager_handleBrowserRemoveEvent(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = manager_areEndpointsPresent(a2);
  manager_removeAllEndpointsForTransportDeviceIfNeeded();
  if (v3 != manager_areEndpointsPresent(a2))
  {
    if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleBrowserRemoveEvent_cold_1();
    }

    manager_postEndpointPresentChangedNotification(a2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t emp_removeEndpoint(uint64_t a1, const void *a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 56;
  if (a3 == 3)
  {
    v6 = 64;
  }

  if (a3 == 2)
  {
    v6 = 72;
  }

  v7 = *(DerivedStorage + v6);
  APEndpointPlusUtils_GetTypeString(a3);
  cf = 0;
  if (!CFDictionaryGetValue(v7, a2))
  {
    return 4294960569;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, *MEMORY[0x277CC1450], *MEMORY[0x277CBECE8], &cf);
  }

  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2(&dword_280FB1478, "OSStatus emp_removeEndpoint(FigEndpointManagerRef, CFStringRef, APEndpointPlusType)", v9, "[%{ptr}] %s %s Plus [%{ptr}] %@ %'@");
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CFDictionaryRemoveValue(v7, a2);
  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return result;
}

uint64_t __emp_handleNotification_block_invoke_cold_13(uint64_t a1, const void *a2, int a3)
{
  result = emp_removeEndpoint(a1, a2, a3);
  if (result)
  {
    return APSLogErrorAt();
  }

  return result;
}

void manager_updateEndpointPSGInfoIfNeeded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = 0;
  v4 = APSGetFBOPropertyInt64();
  if (!*(DerivedStorage + 320))
  {
    return;
  }

  v5 = MEMORY[0x277CEA2E8];
  v6 = MEMORY[0x277CBECE8];
  if (v4)
  {
    cf = 0;
    theDict = 0;
    if (!*(CMBaseObjectGetDerivedStorage() + 320))
    {
LABEL_33:
      if (theDict)
      {
        CFRelease(theDict);
      }

      goto LABEL_35;
    }

    CMBaseObject = APSPSGDataSourceGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = *v5;
      v10 = *v6;
      v11 = v8(CMBaseObject, *v5, *v6, &theDict);
      if (theDict)
      {
        if (!v11)
        {
          v12 = FigEndpointGetCMBaseObject();
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v14 = v13(v12, *MEMORY[0x277CC1368], v10, &cf);
            v15 = cf;
            if (!cf || v14)
            {
LABEL_31:
              if (v15)
              {
                CFRelease(v15);
              }

              goto LABEL_33;
            }

            Value = FigCFDictionaryGetValue();
            if (Value)
            {
              v17 = Value;
              if (CFDictionaryGetInt64())
              {
                if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointManager)))
                {
                  v40 = cf;
                  OUTLINED_FUNCTION_3();
                  LogPrintF(v32, v33, v34, v35, a2, v40, v17);
                }
              }

              else
              {
                MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, theDict);
                if (MutableCopy)
                {
                  v19 = MutableCopy;
                  v20 = CFDictionaryCreateMutableCopy(v10, 0, v17);
                  if (v20)
                  {
                    v21 = v20;
                    FigCFDictionarySetValue();
                    FigCFDictionarySetValue();
                    v22 = FigEndpointGetCMBaseObject();
                    v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v23)
                    {
                      v23(v22, @"PermanentSpeakerGroupingInfo", v21);
                    }

                    v24 = APSPSGDataSourceGetCMBaseObject();
                    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v25)
                    {
                      v25(v24, v9, v19);
                    }

                    v26 = APSPSGDataSourceGetCMBaseObject();
                    v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v27)
                    {
                      v27(v26, *MEMORY[0x277CEA2F0], v21);
                    }

                    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointManager)))
                    {
                      v39 = cf;
                      OUTLINED_FUNCTION_3();
                      LogPrintF(v28, v29, v30, v31, a2, v39, v21);
                    }

                    CFRelease(v21);
                  }

                  CFRelease(v19);
                }
              }
            }
          }
        }
      }
    }

    v15 = cf;
    goto LABEL_31;
  }

LABEL_35:
  v36 = APSPSGDataSourceGetCMBaseObject();
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v37)
  {
    v37(v36, *v5, *v6, &v41);
    v38 = v41;
  }

  else
  {
    v38 = 0;
  }

  manager_updatePSGInfoOnEndpoint(a2, v38);
  if (v41)
  {
    CFRelease(v41);
  }
}

void OUTLINED_FUNCTION_24_0(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

__n128 OUTLINED_FUNCTION_24_2()
{
  result = *&STACK[0x280];
  *(v0 - 256) = *&STACK[0x280];
  *(v0 - 240) = STACK[0x290];
  return result;
}

uint64_t APEndpointPlusCreateWithInnerEndpoint(const void *a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a1)
  {
    APEndpointPlusCreateWithInnerEndpoint_cold_4();
    return 4294954516;
  }

  if (a3)
  {
    EndpointType = APEndpointPlusUtils_GetEndpointType(a1);
    v7 = APEndpointPlusCreate(EndpointType, a2, &cf);
    if (v7)
    {
      v9 = v7;
      APEndpointPlusCreateWithInnerEndpoint_cold_1(v7);
    }

    else
    {
      v8 = APEndpointPlusSetInner(cf, a1);
      v9 = v8;
      if (!v8)
      {
        *a3 = cf;
        return v9;
      }

      APEndpointPlusCreateWithInnerEndpoint_cold_2(v8);
    }
  }

  else
  {
    APEndpointPlusCreateWithInnerEndpoint_cold_3();
    v9 = 4294954516;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t APEndpointPlusCreate(int a1, const void *a2, CFTypeRef *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  cf = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *label = 0u;
  if (a3)
  {
    v6 = *MEMORY[0x277CBECE8];
    FigEndpointExtendedGetClassID();
    v7 = CMDerivedObjectCreate();
    if (v7)
    {
      v15 = v7;
      APEndpointPlusCreate_cold_1(v7);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a1;
      *(DerivedStorage + 32) = FigSimpleMutexCreate();
      SNPrintF(label, 80, "AirPlayEndpointPlus.%{ptr}.activation", cf);
      v9 = dispatch_queue_create(label, 0);
      *(DerivedStorage + 8) = v9;
      if (v9)
      {
        if (a2)
        {
          v10 = CFRetain(a2);
        }

        else
        {
          v10 = 0;
        }

        *(DerivedStorage + 24) = 2000;
        *(DerivedStorage + 16) = v10;
        APSSettingsGetUInt32IfPresent();
        if (a1 == 2)
        {
          *(DerivedStorage + 80) = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *(DerivedStorage + 88) = CFArrayCreateMutable(v6, 0, 0);
          *(DerivedStorage + 96) = CFArrayCreateMutable(v6, 0, 0);
        }

        v11 = cf;
        v12 = CMBaseObjectGetDerivedStorage();
        v13 = FigSimpleMutexCreate();
        v12[15] = epp_delegate_handleFailed;
        v12[13] = v11;
        v12[14] = epp_delegate_handleAuthRequired;
        v12[17] = epp_delegate_handleStreamsChanged;
        v12[18] = v11;
        v12[16] = epp_delegate_handleConnectedStateChanged;
        v12[21] = epp_delegate_handleDidCloseCommChannel;
        v12[22] = v11;
        v12[20] = epp_delegate_handleDidReceiveDataFromCommChannel;
        v12[19] = epp_delegate_handleIncomingRemoteControlSessionCreated;
        v12[24] = epp_delegate_handleSetProperty;
        v12[25] = v13;
        v12[23] = epp_delegate_handleCopyProperty;
        if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
        {
          APEndpointPlusCreate_cold_2(&cf, DerivedStorage, v14);
        }

        v15 = 0;
        *a3 = cf;
        return v15;
      }

      APEndpointPlusCreate_cold_3();
      v15 = 4294960568;
    }
  }

  else
  {
    APEndpointPlusCreate_cold_4();
    v15 = 4294954516;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t APEndpointPlusSetInner(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40) && APSGetFBOPropertyInt64() || a2 && APSGetFBOPropertyInt64())
  {
    APSLogErrorAt();
    v12 = 4294950576;
    APSLogErrorAt();
  }

  else
  {
    v6 = *(DerivedStorage + 40);
    if (v6 != a2)
    {
      if (gLogCategory_APEndpointPlus <= 50)
      {
        if (gLogCategory_APEndpointPlus != -1 || (v7 = _LogCategory_Initialize(), v6 = *(DerivedStorage + 40), v7))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointPlus, "OSStatus epp_setInner(FigEndpointRef, FigEndpointRef)", v4, "[%{ptr}] inner is updated [%{ptr}] -> [%{ptr}]");
          v6 = *(DerivedStorage + 40);
        }
      }

      epp_removeInnerListeners(a1, v6);
      v8 = *(DerivedStorage + 40);
      *(DerivedStorage + 40) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      v9 = *(DerivedStorage + 40);
      v10 = CMBaseObjectGetDerivedStorage();
      CMNotificationCenterGetDefaultLocalCenter();
      if (v9)
      {
        OUTLINED_FUNCTION_6_1();
        FigNotificationCenterAddWeakListener();
        if (!APSGetFBOPropertyInt64())
        {
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v14)
          {
            v14(v9, v10 + 104);
          }

          v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v15)
          {
            v15(v9, v10 + 144);
          }

          v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (v16)
          {
            v16(v9, v10 + 176);
          }
        }
      }

      v11 = *(DerivedStorage + 64);
      if (v11)
      {
        dispatch_semaphore_signal(v11);
      }

      if (a2)
      {
        epp_updateDescriptionFromInner(a1);
      }

      epp_postNotificationAsync(a1, *MEMORY[0x277CC0D48], 0);
    }

    v12 = 0;
  }

  FigSimpleMutexUnlock();
  return v12;
}

uint64_t endpoint_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    endpoint_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_SetDelegateRouting(FigEndpointRef, const FigEndpointDelegateRouting *)", 33554482, "[%{ptr}] Setting endpoint routing delegate %{ptr}.\n", a1, a2);
    }

    v5 = *(DerivedStorage + 416);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 416) = 0;
    }

    v6 = (DerivedStorage + 344);
    if (a2)
    {
      v7 = *a2;
      v8 = *(a2 + 16);
      *(DerivedStorage + 376) = *(a2 + 32);
      *v6 = v7;
      *(DerivedStorage + 360) = v8;
      a2 = 0;
      *(DerivedStorage + 416) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 376) = 0;
      *v6 = 0u;
      *(DerivedStorage + 360) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpoint_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    endpoint_SetDelegateRemoteControl_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpoint, "OSStatus endpoint_SetDelegateRemoteControl(FigEndpointRef, const FigEndpointDelegateRemoteControl *)", 33554482, "[%{ptr}] Setting endpoint remote control delegate %{ptr}.\n", a1, a2);
    }

    v5 = *(DerivedStorage + 424);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 424) = 0;
    }

    if (a2)
    {
      v6 = *(a2 + 16);
      *(DerivedStorage + 384) = *a2;
      *(DerivedStorage + 400) = v6;
      a2 = 0;
      *(DerivedStorage + 424) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 384) = 0u;
      *(DerivedStorage + 400) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

void emp_addEndpoint(uint64_t a1, const void *a2, const void *a3, int a4)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 56;
  if (a4 == 3)
  {
    v9 = 64;
  }

  if (a4 == 2)
  {
    v9 = 72;
  }

  v10 = *(DerivedStorage + v9);
  TypeString = APEndpointPlusUtils_GetTypeString(a4);
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x277CC1450], *MEMORY[0x277CBECE8], &cf);
  }

  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_280FB1478, "OSStatus emp_addEndpoint(FigEndpointManagerRef, CFStringRef, FigEndpointRef, APEndpointPlusType)", 33554482, "[%{ptr}] %s %s Plus [%{ptr}] %@ %'@", a1, "ADD", TypeString, a3, a2, cf);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CFDictionarySetValue(v10, a2, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void __manager_notifyAvailableEndpointsChangedWithThrottle_block_invoke_2(uint64_t a1)
{
  CFRetain(*(a1 + 32));
  v2 = *(a1 + 32);

  manager_notifyAvailableEndpointsChanged(v2);
}

void __manager_notifyAvailableEndpointsChangedWithThrottle_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t endpoint_copyAirPlayEndpointProperties(uint64_t a1, int a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a2)
  {
    v6 = kAPEndpointDescriptionProperty_AirPlayClusterCompatibleEndpointProperties;
  }

  else
  {
    v6 = kAPEndpointDescriptionProperty_AirPlayEndpointProperties;
  }

  APEndpointDescriptionGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v14 = 4294954514;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  v10 = v9(v8, *v6, *MEMORY[0x277CBECE8], &cf);
  if (v10)
  {
    v14 = v10;
    goto LABEL_13;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v12 = MutableCopy;
    if (!a2)
    {
      v13 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 49))
      {
        v13 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(MutableCopy, @"IsLocalDevice", *v13);
    }

    v14 = 0;
    *a3 = v12;
  }

  else
  {
    endpoint_copyAirPlayEndpointProperties_cold_1();
    v14 = 4294950575;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

BOOL endpointCluster_isSubEndpointOfType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a2)
  {
    endpointCluster_isSubEndpointOfType_cold_2();
    return 0;
  }

  if (a3)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = v6(CMBaseObject, *MEMORY[0x277CC14F0], *MEMORY[0x277CBECE8], &cf);
      if (!v7)
      {
        v8 = FigCFEqual() != 0;
        goto LABEL_12;
      }

      v9 = v7;
    }

    else
    {
      v9 = 4294954514;
    }

    if (gLogCategory_APEndpointCluster <= 90 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_isSubEndpointOfType(FigEndpointRef, FigEndpointRef, CFStringRef)", 33554522, "[%{ptr}] Obtaining subtype for SubEndpoint [%{ptr}] returned %#m", a1, a2, v9);
    }
  }

  else
  {
    endpointCluster_isSubEndpointOfType_cold_1();
  }

  v8 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void OUTLINED_FUNCTION_22_2()
{
  *(v3 - 240) = v0;
  *(v2 + 60) = *(v3 - 208);
  v4 = *(v3 - 200);
  *(v3 - 232) = v1;
  *(v3 - 220) = v4;
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return CMBaseObjectGetVTable();
}

CFTypeRef manager_copyPropertyInternal_cold_6(uint64_t a1, void *a2)
{
  v3 = manager_areEndpointsPresent(a1);
  v4 = MEMORY[0x277CBED28];
  if (!v3)
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t manager_handleDevicePresenceChanged(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  manager_setAVDevicePresence(a2, v3);
  if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleDevicePresenceChanged_cold_1();
  }

  return FigSimpleMutexUnlock();
}

uint64_t manager_setAVDevicePresence(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = manager_areEndpointsPresent(a1);
  *(DerivedStorage + 96) = a2;
  result = manager_areEndpointsPresent(a1);
  if (v5 != result)
  {
    if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_setAVDevicePresence_cold_1();
    }

    return manager_postEndpointPresentChangedNotification(a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_61(const __CFAllocator *a1, void *a2, uint64_t a3, const __CFAllocator *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return CMBlockBufferCreateWithMemoryBlock(a1, a2, 0xCuLL, a4, 0, 0, 0xCuLL, 0, a9);
}

uint64_t APAudioEngineBufferedCreate_cold_11(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = (CMBaseObjectGetDerivedStorage() + 392);
  }

  else
  {
    v6 = "";
  }

  v13 = *a2;
  v12 = v6;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v7, v8, v9, v10, v5, v12, a3, v13);
}

uint64_t APAudioEngineBufferedCreate_cold_13()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioEngineBufferedCreate_cold_15()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioEngineBufferedCreate_cold_18()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = (DerivedStorage + 392);
  }

  else
  {
    v9 = "";
  }

  v18 = OUTLINED_FUNCTION_5_11(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v19, v20, v21);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v10, v11, v12, v13, v0, v9, *&v18);
}

uint64_t APAudioEngineBufferedCreate_cold_19()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t carAudioStream_control(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (!CFEqual(cf1, @"APCarPlayStreamAudioControl_SpeechEvent"))
  {
    return 4294960561;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a3);
  v5 = *(DerivedStorage + 416);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __carAudioStream_handleSpeechEvent_block_invoke;
  v7[3] = &__block_descriptor_tmp_190_0;
  v7[4] = DerivedStorage;
  v7[5] = a3;
  dispatch_async(v5, v7);
  return 0;
}

void __carAudioStream_handleSpeechEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 424) && *(v2 + 176))
  {
    CFStringGetTypeID();
    if (CFDictionaryGetTypedValue())
    {
      APSAudioStats_MarkEvent();
    }

    else
    {
      __carAudioStream_handleSpeechEvent_block_invoke_cold_2();
    }
  }

  CFRelease(*(a1 + 40));
}

uint64_t epp_copyCachedDescriptionProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (epp_getDescriptionKeyMap_onceToken != -1)
  {
    epp_copyCachedDescriptionProperty_cold_1();
  }

  v9 = epp_getDescriptionKeyMap_keyMap;
  v29 = 0;
  if (*DerivedStorage == 2)
  {
    epp_copyCachedDescriptionProperty_cold_8();
    return 4294950576;
  }

  if (!*(DerivedStorage + 48))
  {
    epp_copyCachedDescriptionProperty_cold_7();
    return 4294960587;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    UInt64 = APEndpointPlusUtils_CopyDeviceIDFromEndpointDescription();
    if (!UInt64)
    {
      epp_copyCachedDescriptionProperty_cold_2();
      return 4294954512;
    }

    goto LABEL_48;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14F8]))
  {
    v11 = CMBaseObjectGetDerivedStorage();
    DeviceClass = GestaltGetDeviceClass();
    v30 = 0;
    cf = 0;
    if (*v11 == 2)
    {
      epp_copyCachedDescriptionProperty_cold_5();
      goto LABEL_43;
    }

    v13 = DeviceClass;
    if (!*(v11 + 48))
    {
      epp_copyCachedDescriptionProperty_cold_4();
      goto LABEL_43;
    }

    if (*v11 == 1)
    {
      APSGetFBOPropertyInt64();
      v14 = *(v11 + 48);
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v15)
      {
        v16 = v15(v14, &cf);
        if (!v16)
        {
          APSFeaturesHasFeature();
          APSFeaturesHasFeature();
          if (v13 != 13 && v13 != 7)
          {
            if (v13 == 4)
            {
              APEndpointDescriptionGetCMBaseObject();
              v18 = v17;
              v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v19 && !v19(v18, @"ClusterUUID", *MEMORY[0x277CBECE8], &v30) && v30 && APSHasSamePersistentGroupUUID())
              {
                APSGetFBOPropertyInt64();
              }
            }

            else if (!APSFeaturesHasFeature())
            {
              APSFeaturesHasFeature();
            }
          }

          goto LABEL_43;
        }
      }

      else
      {
        v16 = 4294954514;
      }

      epp_copyCachedDescriptionProperty_cold_3(v16);
    }

LABEL_43:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    UInt64 = FigCFNumberCreateUInt64();
    if (!UInt64)
    {
      epp_copyCachedDescriptionProperty_cold_6();
      return 4294954512;
    }

    goto LABEL_48;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1258]))
  {
    v20 = *(DerivedStorage + 48);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v21 && v21(v20, 86))
    {
      v22 = MEMORY[0x277CBED28];
    }

    else
    {
      v22 = MEMORY[0x277CBED10];
    }

    UInt64 = *v22;
LABEL_29:
    UInt64 = CFRetain(UInt64);
LABEL_48:
    v27 = 0;
    *a4 = UInt64;
    return v27;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1558]))
  {
    v23 = APSGetFBOPropertyInt64();
    v24 = MEMORY[0x277CC1A08];
    if (!v23)
    {
      v24 = MEMORY[0x277CC1A10];
    }

    UInt64 = *v24;
    if (!*v24)
    {
      goto LABEL_48;
    }

    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(v9, a2);
  if (!Value)
  {
    if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_copyCachedDescriptionProperty(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] Unhandled copy cached description property: %@", a1, a2);
    }

    return 4294954512;
  }

  v26 = APEndpointDescriptionCopyProperty(*(DerivedStorage + 48), Value, a3, &v29);
  if (!v26)
  {
    UInt64 = v29;
    goto LABEL_48;
  }

  v27 = v26;
  APSLogErrorAt();
  if (v29)
  {
    CFRelease(v29);
  }

  return v27;
}

void jitterBuffer_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigDispatchAsyncPostNotification();
}

uint64_t OUTLINED_FUNCTION_18_8()
{
  result = 4294954514;
  *(v0 - 108) = -12782;
  return result;
}

uint64_t APAudioEngineBufferedCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a4)
  {
    APAudioEngineBufferedCreate_cold_39();
    return 4294951815;
  }

  if (!a2)
  {
    APAudioEngineBufferedCreate_cold_38();
LABEL_123:
    value_low = 4294951815;
    goto LABEL_100;
  }

  if (!a3)
  {
    APAudioEngineBufferedCreate_cold_37();
    goto LABEL_123;
  }

  if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_1();
  }

  FigEndpointStreamAudioEngineGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    value_low = v7;
    APAudioEngineBufferedCreate_cold_2(v7);
    goto LABEL_100;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 392) = 0;
  *(DerivedStorage + 408) = APSSettingsGetIntWithDefault();
  *(DerivedStorage + 8) = CFStringCreateWithCString(a1, "AudioEngineBuffered", 0x8000100u);
  v9 = APSDispatchSectionCreate();
  if (v9)
  {
    value_low = v9;
    APAudioEngineBufferedCreate_cold_3(v9);
    goto LABEL_100;
  }

  *(DerivedStorage + 884) = 1;
  *(DerivedStorage + 456) = 36;
  v10 = dispatch_queue_create("AudioEngineDataProcessingQueue", 0);
  *(DerivedStorage + 448) = v10;
  if (!v10)
  {
    APAudioEngineBufferedCreate_cold_36(&time);
LABEL_131:
    value_low = LODWORD(time.value);
    goto LABEL_100;
  }

  v11 = APSPriorityDispatchQueuePoolCreate();
  if (v11)
  {
    value_low = v11;
    APAudioEngineBufferedCreate_cold_4(v11);
    goto LABEL_100;
  }

  v12 = APSPriorityDispatcherCreate();
  if (v12)
  {
    value_low = v12;
    APAudioEngineBufferedCreate_cold_5(v12);
    goto LABEL_100;
  }

  v13 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 344) = v13;
  if (!v13)
  {
    APAudioEngineBufferedCreate_cold_35(&time);
    goto LABEL_131;
  }

  v14 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 352) = v14;
  if (!v14)
  {
    APAudioEngineBufferedCreate_cold_34(&time);
    goto LABEL_131;
  }

  DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  if (!DefaultAirPlayMallocZoneCFAllocator)
  {
    *(DerivedStorage + 360) = 0;
    goto LABEL_98;
  }

  v16 = CFRetain(DefaultAirPlayMallocZoneCFAllocator);
  *(DerivedStorage + 360) = v16;
  if (!v16)
  {
LABEL_98:
    APAudioEngineBufferedCreate_cold_33();
LABEL_99:
    value_low = 4294951816;
    goto LABEL_100;
  }

  *(DerivedStorage + 416) = CFDictionaryGetInt64() != 0;
  APSSettingsIsFeatureEnabled();
  *(DerivedStorage + 56) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_6();
  }

  *(DerivedStorage + 980) = 0;
  *(DerivedStorage + 984) = 0;
  *(DerivedStorage + 1112) = 0;
  *(DerivedStorage + 1144) = 0u;
  v17 = MEMORY[0x277CC0898];
  v50 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 1116) = *MEMORY[0x277CC0898];
  v18 = *(v17 + 16);
  *(DerivedStorage + 1132) = v18;
  *(DerivedStorage + 64) = APSSettingsIsFeatureEnabled();
  *(DerivedStorage + 16) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 20) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 336) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 436) = APSSettingsIsFeatureEnabled();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 432) = CFPreferenceNumberWithDefault;
  if (*(DerivedStorage + 436) && CFPreferenceNumberWithDefault != 2 || *(DerivedStorage + 64))
  {
    v20 = APSDataPacerHoseCountCreateWithDefaultCapacityForCurrentDevice();
    if (v20)
    {
      value_low = v20;
      APAudioEngineBufferedCreate_cold_7(v20);
      goto LABEL_100;
    }
  }

  *(DerivedStorage + 437) = APSSettingsIsFeatureEnabled();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_8();
  }

  *(DerivedStorage + 160) = v50;
  *(DerivedStorage + 176) = v18;
  *(DerivedStorage + 188) = v50;
  *(DerivedStorage + 204) = v18;
  *(DerivedStorage + 212) = v50;
  *(DerivedStorage + 228) = v18;
  bufferedAudioEngine_updateStartupConfiguration(cf, 0);
  *(DerivedStorage + 184) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_9();
  }

  *(DerivedStorage + 264) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_10();
  }

  v21 = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 256) = MillisecondsToUpTicks();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_11(&cf, (DerivedStorage + 256), v21);
  }

  *(DerivedStorage + 1800) = CFDictionaryGetInt64() != 0;
  *(DerivedStorage + 1800) = FigGetCFPreferenceBooleanWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_12();
  }

  *(DerivedStorage + 116) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_13();
  }

  APSIsAPMSpeaker();
  *(DerivedStorage + 152) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 156) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 120) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_14();
  }

  *(DerivedStorage + 124) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_15();
  }

  v22 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v22, 1);
  *(DerivedStorage + 128) = time;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_16();
  }

  v23 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v23, 1);
  *(DerivedStorage + 68) = time;
  v24 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v24, 1);
  *(DerivedStorage + 92) = time;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    v25 = cf;
    if (cf)
    {
      v26 = (CMBaseObjectGetDerivedStorage() + 392);
    }

    else
    {
      v26 = "";
    }

    time = *(DerivedStorage + 68);
    Seconds = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 92);
    v28 = CMTimeGetSeconds(&time);
    LogPrintF(&gLogCategory_APAudioEngineBuffered, "OSStatus APAudioEngineBufferedCreate(CFAllocatorRef, APSNetworkClockRef, CFDictionaryRef, FigEndpointStreamAudioEngineRef *)", 33554482, "BAE [%{ptr}] %sMin audio to buffer (seconds):  %1.1f max over lowest stream:  %1.1f\n", v25, v26, *&Seconds, *&v28);
  }

  *(DerivedStorage + 704) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_17();
  }

  *(DerivedStorage + 24) = 300;
  if (APSSettingsIsFeatureEnabled())
  {
    v29 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(&time, v29, 1000);
    *(DerivedStorage + 296) = time;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineBufferedCreate_cold_18();
    }
  }

  else
  {
    *(DerivedStorage + 292) = FigGetCFPreferenceNumberWithDefault();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineBufferedCreate_cold_19();
    }
  }

  *(DerivedStorage + 320) = FigGetCFPreferenceNumberWithDefault() != 0;
  IsFeatureEnabled = APSSettingsIsFeatureEnabled();
  *(DerivedStorage + 321) = IsFeatureEnabled;
  if (IsFeatureEnabled)
  {
    v31 = APSSettingsGetIntWithDefault() != 0;
  }

  else
  {
    v31 = 0;
  }

  *(DerivedStorage + 322) = v31;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedCreate_cold_20();
  }

  *(DerivedStorage + 880) = 0;
  *(DerivedStorage + 652) = 0;
  *(DerivedStorage + 1080) = v50;
  *(DerivedStorage + 1096) = v18;
  v32 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 1104) = Mutable;
  if (!Mutable)
  {
    APAudioEngineBufferedCreate_cold_32();
    goto LABEL_99;
  }

  v34 = CFArrayCreateMutable(v32, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 1248) = v34;
  if (!v34)
  {
    APAudioEngineBufferedCreate_cold_31();
    goto LABEL_99;
  }

  *(DerivedStorage + 1256) = v50;
  *(DerivedStorage + 1272) = v18;
  *(DerivedStorage + 1160) = 0;
  *(DerivedStorage + 1164) = v50;
  *(DerivedStorage + 1180) = v18;
  *(DerivedStorage + 580) = 0;
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v36 = CMBufferQueueCreate(a1, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 1192));
  if (v36)
  {
    value_low = v36;
    APAudioEngineBufferedCreate_cold_21(v36);
    goto LABEL_100;
  }

  CMTimeMake(&time, 10000, 1000);
  CMTimeMake(&v51, 2000, 1000);
  v37 = FigSampleBufferConsumerCreateForBufferQueue();
  if (v37)
  {
    value_low = v37;
    APAudioEngineBufferedCreate_cold_22(v37);
    goto LABEL_100;
  }

  *(DerivedStorage + 1224) = 0;
  v38 = CFDictionaryCreateMutable(v32, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 1216) = v38;
  if (!v38)
  {
    APAudioEngineBufferedCreate_cold_30();
    goto LABEL_99;
  }

  *(DerivedStorage + 1048) = 0;
  v39 = CFDictionaryCreateMutable(v32, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 1056) = v39;
  if (!v39)
  {
    APAudioEngineBufferedCreate_cold_29();
    goto LABEL_99;
  }

  v40 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v40, 1);
  *(DerivedStorage + 268) = time;
  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
    {
      APAudioEngineBufferedCreate_cold_23();
    }

    if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineBufferedCreate_cold_24(&cf);
    }
  }

  v41 = APSOasisCPUFloorRaiserCreate();
  if (v41)
  {
    value_low = v41;
    APAudioEngineBufferedCreate_cold_25(v41);
  }

  else
  {
    if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APAudioEngineBufferedCreate_cold_26(&cf);
    }

    *(DerivedStorage + 328) = CFRetain(a2);
    v42 = MEMORY[0x277CEA280];
    *(DerivedStorage + 1536) = *MEMORY[0x277CEA280];
    *(DerivedStorage + 1552) = *(v42 + 16);
    *(DerivedStorage + 1560) = v50;
    *(DerivedStorage + 1576) = v18;
    *(DerivedStorage + 1584) = v50;
    *(DerivedStorage + 1600) = v18;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    *(DerivedStorage + 1608) = time;
    v44 = MEMORY[0x277CC08A0];
    v45 = *MEMORY[0x277CC08A0];
    *(DerivedStorage + 1656) = *MEMORY[0x277CC08A0];
    v46 = *(v44 + 16);
    *(DerivedStorage + 1672) = v46;
    *(DerivedStorage + 1632) = v45;
    *(DerivedStorage + 1648) = v46;
    *(DerivedStorage + 708) = v50;
    *(DerivedStorage + 724) = v18;
    CMNotificationCenterGetDefaultLocalCenter();
    v47 = FigNotificationCenterAddWeakListener();
    if (!v47)
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        APAudioEngineBufferedCreate_cold_28(&cf);
      }

      value_low = 0;
      *a4 = cf;
      return value_low;
    }

    value_low = v47;
    APAudioEngineBufferedCreate_cold_27(v47);
  }

LABEL_100:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t APAudioEngineBufferedCreate_cold_8()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

Float64 OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, uint64_t a38)
{
  *(v38 - 240) = a37;
  *(v38 - 224) = a38;

  return CMTimeGetSeconds((v38 - 240));
}

uint64_t APAudioEngineBufferedCreate_cold_9()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioEngineBufferedCreate_cold_10()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioEngineBufferedCreate_cold_12()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioEngineBufferedCreate_cold_16()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = (DerivedStorage + 392);
  }

  else
  {
    v9 = "";
  }

  v18 = OUTLINED_FUNCTION_5_11(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v19, v20, v21);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v10, v11, v12, v13, v0, v9, *&v18);
}

uint64_t APAudioEngineBufferedCreate_cold_17()
{
  OUTLINED_FUNCTION_34_0();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t APAudioEngineBufferedCreate_cold_20()
{
  OUTLINED_FUNCTION_2_19();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

uint64_t bufferedAudioEngine_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered > 30 || gLogCategory_APAudioEngineBuffered == -1 && !_LogCategory_Initialize())
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_10:
    bufferedAudioEngine_CopyProperty_cold_4();
    return 4294951815;
  }

  bufferedAudioEngine_CopyProperty_cold_1();
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!a4)
  {
    bufferedAudioEngine_CopyProperty_cold_3();
    return 4294951815;
  }

  v6 = APSPriorityDispatcherSyncTask();
  v7 = v6;
  if (v6)
  {
    bufferedAudioEngine_CopyProperty_cold_2(v6);
  }

  return v7;
}

uint64_t bufferedAudioEngine_copyPropertyDispatch(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  if (!v2)
  {
    bufferedAudioEngine_copyPropertyDispatch_cold_12();
    return 4294951815;
  }

  if (!v4)
  {
    bufferedAudioEngine_copyPropertyDispatch_cold_11();
    return 4294951815;
  }

  v6 = DerivedStorage;
  if (CFEqual(v2, *MEMORY[0x277CD6240]))
  {
    if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_copyPropertyDispatch_cold_1();
    }

    v7 = *(v6 + 592);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!CFEqual(v2, *MEMORY[0x277CD6250]))
  {
    if (CFEqual(v2, @"currentRTPTime"))
    {
      time = **&MEMORY[0x277CC0898];
      v17 = time;
      if (APSAudioFormatDescriptionListSupports44kHz() && APSAudioFormatDescriptionListSupports48kHz())
      {
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_copyPropertyDispatch_cold_2(v1);
        }
      }

      else
      {
        bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v20, &time);
        if (v20)
        {
          bufferedAudioEngine_copyPropertyDispatch_cold_3(v20);
          return v20;
        }

        if (APSAudioFormatDescriptionListSupports44kHz())
        {
          v11 = 44100;
        }

        else
        {
          v11 = 48000;
        }

        v16 = time;
        CMTimeConvertScale(&v17, &v16, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      }

      v16 = v17;
      v12 = CMTimeCopyAsDictionary(&v16, v3);
      if (v12)
      {
        *v4 = v12;
      }

      else
      {
        bufferedAudioEngine_copyPropertyDispatch_cold_4(&v20);
      }

      return v20;
    }

    if (CFEqual(v2, *MEMORY[0x277CD6268]))
    {
      if (*(v6 + 1000))
      {
        FigEndpointStreamAudioFormatDescriptionArray = APSAudioFormatDescriptionListCreateFigEndpointStreamAudioFormatDescriptionArray();
        if (FigEndpointStreamAudioFormatDescriptionArray)
        {
          APSLogErrorAt();
          return FigEndpointStreamAudioFormatDescriptionArray;
        }

        value = v19;
        goto LABEL_35;
      }

      bufferedAudioEngine_copyPropertyDispatch_cold_5();
      return 4294951814;
    }

    if (CFEqual(v2, *MEMORY[0x277CD6260]))
    {
      time = *(v6 + 160);
      v7 = CMTimeCopyAsDictionary(&time, v3);
      if (v7)
      {
        goto LABEL_14;
      }

      bufferedAudioEngine_copyPropertyDispatch_cold_6();
    }

    else
    {
      if (CFEqual(v2, *MEMORY[0x277CD6270]))
      {
        time.value = 0;
        if (*(v6 + 1008))
        {
          v14 = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription();
          FigEndpointStreamAudioFormatDescriptionArray = v14;
          if (v14)
          {
            bufferedAudioEngine_copyPropertyDispatch_cold_7(v14);
            return FigEndpointStreamAudioFormatDescriptionArray;
          }

          value = time.value;
LABEL_35:
          *v4 = value;
          return FigEndpointStreamAudioFormatDescriptionArray;
        }

        bufferedAudioEngine_copyPropertyDispatch_cold_8();
        return 4294951814;
      }

      if (CFEqual(v2, *MEMORY[0x277CD6248]))
      {
        v7 = *(v6 + 1200);
        if (!v7)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (CFEqual(v2, @"currentPlaybackState"))
      {
        v15 = CFNumberCreate(v3, kCFNumberSInt64Type, (v6 + 884));
        *v4 = v15;
        if (v15)
        {
          return 0;
        }

        bufferedAudioEngine_copyPropertyDispatch_cold_9();
      }

      else
      {
        if (!CFEqual(v2, @"NextRemoteMediaTimestamp"))
        {
          return 4294954509;
        }

        time = *(v6 + 756);
        v7 = CMTimeCopyAsDictionary(&time, v3);
        if (v7)
        {
          goto LABEL_14;
        }

        bufferedAudioEngine_copyPropertyDispatch_cold_10();
      }
    }

    return 4294951816;
  }

  v8 = MEMORY[0x277CBED28];
  if (!*(v6 + 528))
  {
    v8 = MEMORY[0x277CBED10];
  }

  v7 = *v8;
LABEL_13:
  v7 = CFRetain(v7);
LABEL_14:
  FigEndpointStreamAudioFormatDescriptionArray = 0;
  *v4 = v7;
  return FigEndpointStreamAudioFormatDescriptionArray;
}

uint64_t bufferedAudioEngine_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered > 30 || gLogCategory_APAudioEngineBuffered == -1 && !_LogCategory_Initialize())
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_9:
    bufferedAudioEngine_SetProperty_cold_3();
    return 4294951815;
  }

  bufferedAudioEngine_SetProperty_cold_1();
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = APSPriorityDispatcherSyncTask();
  v5 = v4;
  if (v4)
  {
    bufferedAudioEngine_SetProperty_cold_2(v4);
  }

  return v5;
}

uint64_t bufferedAudioEngine_setPropertyDispatch(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  values = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(v1, *MEMORY[0x277CD6230]))
  {
    if (!v2 || (v4 = CFGetTypeID(v2), v4 == CFNumberGetTypeID()))
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_setPropertyDispatch_cold_2();
      }

      v5 = *(DerivedStorage + 376);
      *(DerivedStorage + 376) = v2;
      if (v2)
      {
LABEL_8:
        CFRetain(v2);
      }

LABEL_9:
      if (!v5)
      {
        return 0;
      }

LABEL_10:
      CFRelease(v5);
      return 0;
    }

    bufferedAudioEngine_setPropertyDispatch_cold_1();
    return 4294951815;
  }

  if (CFEqual(v1, *MEMORY[0x277CD6228]))
  {
    if (!v2 || (v7 = CFGetTypeID(v2), v7 == CFDataGetTypeID()))
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_setPropertyDispatch_cold_4();
      }

      v5 = *(DerivedStorage + 384);
      *(DerivedStorage + 384) = v2;
      if (v2)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    bufferedAudioEngine_setPropertyDispatch_cold_3();
    return 4294951815;
  }

  if (!CFEqual(v1, *MEMORY[0x277CD6258]))
  {
    if (!CFEqual(v1, *MEMORY[0x277CD6238]))
    {
      return 4294954509;
    }

    if (!v2 || (v10 = CFGetTypeID(v2), v10 == CFNumberGetTypeID()))
    {
      if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_setPropertyDispatch_cold_9();
      }

      CFNumberGetValue(v2, kCFNumberSInt32Type, (DerivedStorage + 580));
      return 0;
    }

    bufferedAudioEngine_setPropertyDispatch_cold_8();
    return 4294951815;
  }

  if (!v2 || (v8 = CFGetTypeID(v2), v8 != CFStringGetTypeID()))
  {
    bufferedAudioEngine_setPropertyDispatch_cold_7();
    return 4294951815;
  }

  if (gLogCategory_APAudioEngineBuffered <= 40 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setPropertyDispatch_cold_5();
  }

  *(DerivedStorage + 392) = 0;
  CFStringGetCString(v2, (DerivedStorage + 392), 16, 0x600u);
  if (*(DerivedStorage + 592) && APSGetFBOPropertyInt64())
  {
    __strlcat_chk();
  }

  __strlcat_chk();
  if (*(DerivedStorage + 1072))
  {
    return 0;
  }

  v9 = CFDictionaryCreate(*MEMORY[0x277CBECE8], MEMORY[0x277CEA398], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9)
  {
    v5 = v9;
    APSWirelessCoexManagerCreateWithOptions();
    goto LABEL_10;
  }

  bufferedAudioEngine_setPropertyDispatch_cold_6();
  return 4294951816;
}

uint64_t bufferedAudioEngine_setPropertyDispatch_cold_4()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_42_0();
  return OUTLINED_FUNCTION_6(&gLogCategory_APAudioEngineBuffered, "OSStatus bufferedAudioEngine_setPropertyInternal(FigEndpointStreamAudioEngineRef, CFStringRef, CFTypeRef)", v1, "BAE [%{ptr}] %sSetting clientAuditToken: %@\n");
}

CFTypeRef airPlayDescription_copyPasswordRequired(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (CFObjectGetPropertyInt64Sync())
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
    v3 = MEMORY[0x277CBED28];
    if ((PropertyInt64Sync & 0x80) == 0)
    {
      v3 = MEMORY[0x277CBED10];
    }
  }

  result = CFRetain(*v3);
  *a2 = result;
  return result;
}

CFTypeRef airPlayDescription_copyOneTimePairingRequired(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  v4 = MEMORY[0x277CBED28];
  if ((PropertyInt64Sync & 0x200) == 0)
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t APEndpointDescriptionHasFeature(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 0;
  }

  return v4(a1, a2);
}

uint64_t airPlayDescription_HasFeature(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    airPlayDescription_HasFeature_cold_1(a1, v4, v5);
  }

  FigSimpleMutexLock();
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1, a2);
  FigSimpleMutexUnlock();
  return hasFeatureInternal;
}

uint64_t manager_postEndpointPresentChangedNotification(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 40)
  {
    if (gLogCategory_APEndpointManager != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      manager_postEndpointPresentChangedNotification_cold_1(DerivedStorage, v2, v3);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t manager_handleEndpointDescriptionChanged(uint64_t a1, void *a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = FigCFEqual();
  if (!a5 || !v9)
  {
    if (!a5)
    {
      goto LABEL_61;
    }

    if (!CFDictionaryGetInt64())
    {
      goto LABEL_61;
    }

    if (!APSGetFBOPropertyInt64())
    {
      goto LABEL_61;
    }

    CFDictionaryGetValue(a5, @"ChangeSource");
    if (FigCFEqual())
    {
      goto LABEL_61;
    }

    v38 = 0;
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = v15(CMBaseObject, @"EndpointDescription", *MEMORY[0x277CBECE8], &cf);
      if (!v17)
      {
        v18 = FigEndpointGetCMBaseObject();
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v20 = v19(v18, @"TransportDevice", v16, &v38);
          if (!v20)
          {
            v21 = APSGetFBOPropertyInt64();
            if (gLogCategory_APEndpointManager <= 50)
            {
              v22 = v21;
              if (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize())
              {
                v23 = "yes";
                if (!v22)
                {
                  v23 = "no";
                }

                LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleEndpointUGLSessionActiveChange(FigEndpointManagerRef, FigEndpointRef)", 33554482, "<APUGL> Endpoint [%{ptr}] UGL Session active changed to %s", a4, v23);
              }
            }

            v32 = v38;
            v33 = cf;
            v34 = APSGetFBOPropertyInt64() != 0;
            manager_handleShadowEndpointEvent(a2, v32, v33, a4, v34, 1);
            goto LABEL_57;
          }
        }

        else
        {
          v20 = 4294954514;
        }

        manager_handleEndpointDescriptionChanged_cold_1(v20);
LABEL_57:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        goto LABEL_61;
      }
    }

    else
    {
      v17 = 4294954514;
    }

    manager_handleEndpointDescriptionChanged_cold_2(v17);
    goto LABEL_57;
  }

  Int64 = CFDictionaryGetInt64();
  v11 = CFDictionaryGetInt64();
  v12 = CFDictionaryGetInt64();
  if (!*(DerivedStorage + 160) && Int64)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleEndpointDescriptionChanged_cold_3(a2);
    }

    *(DerivedStorage + 160) = 1;
    CFRetain(a2);
    dispatch_async_f(*(DerivedStorage + 8), a2, manager_notifyAvailableEndpointsChanged);
  }

  else if (!(Int64 | v11))
  {
    goto LABEL_6;
  }

  v38 = 0;
  cf = 0;
  v24 = *(DerivedStorage + 296);
  if (*(DerivedStorage + 256) == v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(DerivedStorage + 256);
  }

  manager_copyOrCreateClusterForEndpoint(a2, v24, &cf);
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "Cluster change: Old cluster endpoint [%{ptr}] vs. new [%{ptr}]\n", v25, cf);
  }

  if (v25 && Int64)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleEndpointDescriptionChanged_cold_4(v25);
    }

    v26 = a2;
    v27 = v25;
    v28 = 1;
  }

  else
  {
    v29 = manager_determineLocalClusterAction(a2, cf);
    if (v29 != 2)
    {
      if (v29 == 1)
      {
        manager_activateLocalCluster(a2, cf);
      }

      goto LABEL_49;
    }

    v27 = cf;
    v26 = a2;
    v28 = 0;
  }

  manager_deactivateLocalCluster(v26, v27, v28);
LABEL_49:
  v30 = FigEndpointGetCMBaseObject();
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v31)
  {
    v31(v30, *MEMORY[0x277CC1490], *MEMORY[0x277CBECE8], &v38);
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "Local endpoint [%{ptr}] cluster ID changed: %@ -> %@ / cluster [%{ptr}] -> [%{ptr}]. Simulate system request to stop.\n", *(DerivedStorage + 296), *(DerivedStorage + 128), v38, v25, cf);
    }

    v36 = *(DerivedStorage + 128);
    v37 = v38;
    *(DerivedStorage + 128) = v38;
    if (v37)
    {
      CFRetain(v37);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_6:
  if (!*(DerivedStorage + 161) || !v12)
  {
LABEL_61:
    v13 = APSGetFBOPropertyInt64() != 0;
    goto LABEL_62;
  }

  *(DerivedStorage + 161) = 0;
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleEndpointDescriptionChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Local endpoint [%{ptr}] first complete update received.\n", a2, *(DerivedStorage + 296));
  }

  manager_updateEndpointPSGInfoIfNeeded(a2, *(DerivedStorage + 296));
  v13 = 1;
LABEL_62:
  manager_notifyAvailableEndpointsChangedWithThrottleIfNeeded(a2, v13);
  return FigSimpleMutexUnlock();
}

uint64_t airPlayDescription_copyMXDescriptor(uint64_t a1, __CFDictionary **a2)
{
  CMBaseObjectGetDerivedStorage();
  v41 = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v7 = airPlayDescription_copyPropertyInternal(a1, @"MACAddress", 0, &cf);
    if (v7 == -12784 || v7 == 0)
    {
      FigCFDictionarySetValue();
    }

    else
    {
      APSLogErrorAt();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v9 = airPlayDescription_copyPropertyInternal(a1, @"Model", 0, &cf);
    if (v9 == -12784 || v9 == 0)
    {
      FigCFDictionarySetValue();
    }

    else
    {
      APSLogErrorAt();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v11 = airPlayDescription_copyPropertyInternal(a1, @"Manufacturer", 0, &cf);
    if (v11 != -12784 && v11)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v12 = airPlayDescription_copyPropertyInternal(a1, @"FirmwareVersion", 0, &cf);
    if (v12 != -12784 && v12)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v13 = airPlayDescription_copyPropertyInternal(a1, @"SerialNumber", 0, &cf);
    if (v13 != -12784 && v13)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v14 = airPlayDescription_copyPropertyInternal(a1, @"TightSyncUUID", 0, &cf);
    if (v14 != -12784 && v14)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v15 = airPlayDescription_copyPropertyInternal(a1, @"TightSyncIsGroupLeader", 0, &cf);
    if (v15 != -12784 && v15)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v16 = airPlayDescription_copyPropertyInternal(a1, @"ClusterUUID", 0, &cf);
    if (v16 != -12784 && v16)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v17 = airPlayDescription_copyPropertyInternal(a1, @"ClusterUUID", 0, &cf);
    if (v17 != -12784 && v17)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v18 = airPlayDescription_copyPropertyInternal(a1, @"IsClusterLeader", 0, &cf);
    if (v18 != -12784 && v18)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v19 = airPlayDescription_copyPropertyInternal(a1, @"ClusterSize", 0, &cf);
    if (v19 != -12784 && v19)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v20 = airPlayDescription_copyPropertyInternal(a1, @"IsAppleMusicSubscriber", 0, &cf);
    if (v20 != -12784 && v20)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v21 = airPlayDescription_copyPropertyInternal(a1, @"CloudLibraryIsOn", 0, &cf);
    if (v21 != -12784 && v21)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v22 = airPlayDescription_copyPropertyInternal(a1, @"DeviceSupportsRelay", 0, &cf);
    if (v22 != -12784 && v22)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v23 = airPlayDescription_copyPropertyInternal(a1, @"SupportsOverlayUI", 0, &cf);
    if (v23 != -12784 && v23)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v24 = airPlayDescription_copyPropertyInternal(a1, @"IsMediaRemoteControllable", 0, &cf);
    if (v24 != -12784 && v24)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v25 = airPlayDescription_copyPropertyInternal(a1, @"GroupContainsDiscoverableLeader", 0, &cf);
    if (v25 != -12784 && v25)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v26 = airPlayDescription_copyPropertyInternal(a1, @"IsGroupLeader", 0, &cf);
    if (v26 != -12784 && v26)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v27 = airPlayDescription_copyPropertyInternal(a1, @"SilentPrimary", 0, &cf);
    if (v27 != -12784 && v27)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v28 = airPlayDescription_copyPropertyInternal(a1, @"SupportsExtendedWHA", 0, &cf);
    if (v28 != -12784 && v28)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v29 = airPlayDescription_copyPropertyInternal(a1, @"AdvertisesHAPSupport", 0, &cf);
    if (v29 != -12784 && v29)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v30 = airPlayDescription_copyPropertyInternal(a1, @"GroupID", 0, &cf);
    if (v30 != -12784 && v30)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v31 = airPlayDescription_copyPropertyInternal(a1, @"SupportsAirPlayFromCloud", 0, &cf);
    if (v31 != -12784 && v31)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v32 = airPlayDescription_copyPropertyInternal(a1, @"VodkaVersion", 0, &cf);
    if (v32 != -12784 && v32)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v33 = airPlayDescription_copyPropertyInternal(a1, @"AirPlaySecurity", 0, &cf);
    if (v33 != -12784 && v33)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v34 = airPlayDescription_copyPropertyInternal(a1, @"IsHKAccessControlEnabled", 0, &cf);
    if (v34 != -12784 && v34)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v35 = airPlayDescription_copyPropertyInternal(a1, @"HKAccessControlLevel", 0, &cf);
    if (v35 != -12784 && v35)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v36 = airPlayDescription_copyPropertyInternal(a1, @"AirPlayEndpointProperties", 0, &cf);
    if (v36 != -12784 && v36)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    CMBaseObjectGetDerivedStorage();
    v37 = airPlayDescription_copyPropertyInternal(a1, @"IsLowFidelitySpeaker", 0, &cf);
    if (v37 != -12784 && v37)
    {
      APSLogErrorAt();
    }

    else
    {
      FigCFDictionarySetValue();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    airPlayDescription_copyPropertyInternal(a1, @"ClusterType", v4, &v41);
    result = v41;
    if (v41)
    {
      FigCFNumberGetUInt64();
      v39 = *MEMORY[0x277D26EE8];
      v40 = APSClusterTypeToFigEndpointDescriptorClusterType();
      CFDictionarySetValue(v6, v39, v40);
      result = v41;
      *a2 = v6;
      if (result)
      {
        CFRelease(result);
        return 0;
      }
    }

    else
    {
      *a2 = v6;
    }
  }

  else
  {
    airPlayDescription_copyMXDescriptor_cold_1();
    return 4294895546;
  }

  return result;
}

CFTypeRef airPlayDescription_copyDeviceSupportsRelay(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  canBeRemoteControlled = airplayDescription_canBeRemoteControlled(a1);
  isSourceVersionAtLeast = airPlayDescription_isSourceVersionAtLeast(a1, 0x37D8E0u);
  v8 = !canBeRemoteControlled || !isSourceVersionAtLeast || (PropertyInt64Sync & 0x800) == 0;
  v9 = MEMORY[0x277CBED10];
  if (!v8)
  {
    v9 = MEMORY[0x277CBED28];
  }

  result = CFRetain(*v9);
  *a2 = result;
  return result;
}

CFTypeRef airplayDescription_copySupportsAirPlayFromCloud(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_hasFeatureInternal(a1, 34) && (CFObjectGetPropertyInt64Sync() & 0x40) != 0)
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

void airPlayDescription_copyAirPlaySecurity(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  v7 = 0;
  BOOLean = 0;
  v6 = 0;
  airPlayDescription_copyPasswordRequired(a1, &BOOLean);
  airplayDescription_copyStatusFlagsContainsFlag(a1, 8, &v7);
  airPlayDescription_copyOneTimePairingRequired(a1, &v6);
  v4 = BOOLean;
  if (!CFBooleanGetValue(BOOLean) && !CFBooleanGetValue(v7))
  {
    CFBooleanGetValue(v6);
  }

  *a2 = CFNumberCreateInt64();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v5 = v6;
  if (v6)
  {

    CFRelease(v5);
  }
}

CFTypeRef airPlayDescription_copyIsHKAccessControlEnabled(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1, 46);
  v6 = MEMORY[0x277CBED28];
  if (((hasFeatureInternal != 0) & (PropertyInt64Sync >> 10)) == 0)
  {
    v6 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v6);
  *a2 = result;
  return result;
}

uint64_t airPlayDescription_copyHKAccessControlLevel(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  AccessControlType = airPlayDescription_getAccessControlType(a1);
  if (AccessControlType == 1)
  {
    PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  }

  else
  {
    PropertyInt64Sync = 0;
  }

  if (APSAccessControlIsValidConfig())
  {
    v6 = 0;
    *a2 = CFNumberCreateInt64();
  }

  else
  {
    v6 = 4294895542;
    if (gLogCategory_APEndpointDescriptionAirPlay <= 90 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointDescriptionAirPlay, "OSStatus airPlayDescription_copyHKAccessControlLevel(APEndpointDescriptionRef, CFNumberRef *)", 33554522, "[%{ptr}] Invalid access control config: ACT=%d, ACL=%d.\n", a1, AccessControlType, PropertyInt64Sync);
    }
  }

  return v6;
}

void airPlayDescription_copyAirPlayEndpointProperties(uint64_t a1, int a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = kAPEndpointDescriptionProperty_TXTRecordAirPlayClusterCompatible;
    if (!a2)
    {
      v10 = kAPEndpointDescriptionProperty_TXTRecordAirPlay;
    }

    airPlayDescription_copyPropertyInternal(a1, *v10, v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!a2)
    {
      airPlayDescription_copyPropertyInternal(a1, @"BluetoothIdentifier", v7, &cf);
      FigCFDictionarySetValue();
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1, 82);
      v14 = *MEMORY[0x277CBED28];
      v15 = *MEMORY[0x277CBED10];
      if (hasFeatureInternal)
      {
        v16 = *MEMORY[0x277CBED28];
      }

      else
      {
        v16 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v9, @"SupportsClusterEngageOnActivation", v16);
      if (airPlayDescription_hasFeatureInternal(a1, 85))
      {
        v17 = v14;
      }

      else
      {
        v17 = v15;
      }

      CFDictionarySetValue(v9, @"SupportsLocalStereoPairClusterPersistentConnection", v17);
      cf = APAdvertiserInfoCopyProperty();
      FigCFDictionarySetValue();
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (airPlayDescription_isSourceVersionAtLeast(a1, 0x6C6FC4u))
      {
        airplayDescription_copyStatusFlagsContainsFlag(a1, 0x100000, &cf);
        if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
        {
          airPlayDescription_copyAirPlayEndpointProperties_cold_1(&cf, v18, v19);
        }

        FigCFDictionarySetValue();
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }
    }

    airPlayDescription_copyPropertyInternal(a1, @"GroupPublicName", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (*(DerivedStorage + 8))
    {
      if (a2)
      {
        v11 = *MEMORY[0x277CBED28];
        v12 = *MEMORY[0x277CBED10];
      }

      else
      {
        cf = APTransportDeviceCopyCUDNSNames();
        FigCFDictionarySetValue();
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        TransportsRequiringBroker = APTransportDeviceGetTransportsRequiringBroker();
        v11 = *MEMORY[0x277CBED28];
        v12 = *MEMORY[0x277CBED10];
        if (TransportsRequiringBroker)
        {
          v21 = *MEMORY[0x277CBED28];
        }

        else
        {
          v21 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v9, @"IsDiscoveredWithBroker", v21);
      }

      if (APTransportDeviceIsPresentOnInfra())
      {
        v22 = v11;
      }

      else
      {
        v22 = v12;
      }

      CFDictionarySetValue(v9, @"IsDiscoveredOverInfra", v22);
    }

    airPlayDescription_copyPropertyInternal(a1, @"ParentGroupID", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"ParentGroupContainsDiscoverableLeader", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"ReceiverSessionIsActive", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"SupportsHangdogRemoteControl", v7, &cf);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"SupportsRapportRemoteControlTransport", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"SupportsMultiplayer", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"SupportsSharePlayHandoff", v7, &cf);
    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!a2)
    {
      if (APSIsProximitySenderEnabled())
      {
        if (airPlayDescription_hasFeatureInternal(a1, 71))
        {
          CFDictionarySetValue(v9, @"SupportsNIRanging", *MEMORY[0x277CBED28]);
          if (*(DerivedStorage + 8))
          {
            cf = APTransportDeviceCopyProximityData();
            FigCFDictionarySetValue();
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }
      }
    }

    *a3 = v9;
  }

  else
  {
    airPlayDescription_copyAirPlayEndpointProperties_cold_2();
  }
}

void endpoint_setPropertyOnMXDescriptor(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpoint_copyStaticProperty(a1, a2, &cf, &v9) || (v6 = *MEMORY[0x277CBECE8], endpoint_copyPropertyFromEndpointDescription(a1, a2, *MEMORY[0x277CBECE8], &cf, &v9)))
  {
    v7 = v9;
    if (!v9)
    {
LABEL_4:
      FigCFDictionarySetValue();
      goto LABEL_5;
    }
  }

  else
  {
    v7 = endpoint_copyPropertyInternal(a1, a2, v6, &cf);
    v9 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  endpoint_setPropertyOnMXDescriptor_cold_1(v7);
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t endpoint_copyIsGroupable(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 56);
  if (v3)
  {
    v4 = 0;
    *a2 = CFRetain(v3);
  }

  else
  {
    APEndpointDescriptionGetCMBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v4 = v7(v6, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
      v8 = cf;
      if (!v4)
      {
        IsModernPresentOnInfra = APTransportDeviceIsModernPresentOnInfra();
        Int64 = APSSettingsGetInt64();
        if (Int64 && gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          endpoint_copyIsGroupable_cold_1();
        }

        if (!APSGetFBOPropertyInt64() || !APSGetFBOPropertyInt64() || ((v11 = APSGetFBOPropertyInt64(), IsModernPresentOnInfra) ? (v12 = v11 == 0) : (v12 = 0), v12 ? (v13 = 0) : (v13 = 1), Int64 || v13))
        {
          v14 = MEMORY[0x277CBED10];
        }

        else
        {
          v14 = MEMORY[0x277CBED28];
        }

        *a2 = CFRetain(*v14);
        v8 = cf;
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return v4;
}

CFTypeRef airplayDescription_copySupportsPTP(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_isSourceVersionAtLeast(a1, 0x36193Eu) && airPlayDescription_hasFeatureInternal(a1, 41))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t endpoint_copyPropertyFromEndpointDescription_cold_5()
{
  OUTLINED_FUNCTION_10_11();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_11_8();
    result = v2(v1);
  }

  else
  {
    result = 4294954514;
  }

  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1)
{

  return _LogCategory_Initialize();
}

void OUTLINED_FUNCTION_16_0(int a1@<W8>)
{
  *(v2 - 116) = a1;

  carAudioStream_teardownTransportStreams(v1, 0);
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{

  return CUObfuscatedPtr();
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigNotificationCenterAddWeakListener();
}

void OUTLINED_FUNCTION_16_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, int a36)
{
  STACK[0x330] = a35;
  *(v36 + 188) = *(v37 - 168);
  v38 = *(v37 - 160);
  LODWORD(STACK[0x338]) = a36;
  LODWORD(STACK[0x344]) = v38;
}

void __manager_updateEndpointClusterMembershipIfNeeded_block_invoke(uint64_t a1, void *value)
{
  if (*(a1 + 32) == value && *(a1 + 48))
  {
    CFArrayInsertValueAtIndex(*(a1 + 40), 0, value);
  }

  else
  {
    CFArrayAppendValue(*(a1 + 40), value);
  }
}

uint64_t APEndpointClusterCreate(const __CFAllocator *a1, const void *a2, const void *a3, unsigned int a4, const void *a5, uint64_t a6, const void *a7, uint64_t a8, CFTypeRef *a9)
{
  v43 = *MEMORY[0x277D85DE8];
  cf = 0;
  v40 = 0;
  if (!a4)
  {
    APEndpointClusterCreate_cold_14();
    goto LABEL_43;
  }

  if (!a7)
  {
    APEndpointClusterCreate_cold_13();
    goto LABEL_43;
  }

  FigEndpointExtendedGetClassID();
  v16 = CMDerivedObjectCreate();
  if (v16)
  {
    v29 = v16;
    APEndpointClusterCreate_cold_1(v16);
    goto LABEL_54;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a4;
  v18 = FigSimpleMutexCreate();
  *(DerivedStorage + 280) = v18;
  if (!v18)
  {
    APEndpointClusterCreate_cold_12();
LABEL_53:
    v29 = 4294950575;
    goto LABEL_54;
  }

  *(DerivedStorage + 16) = CFRetain(a3);
  *(DerivedStorage + 24) = a6;
  *(DerivedStorage + 32) = CFRetain(a7);
  TextToHardwareAddress();
  *(DerivedStorage + 96) = CFDataCreate(a1, bytes, 6);
  v19 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 632) = Mutable;
  if (!Mutable)
  {
    APEndpointClusterCreate_cold_11();
    goto LABEL_53;
  }

  *(DerivedStorage + 440) = 1;
  if (a5)
  {
    v21 = CFRetain(a5);
  }

  else
  {
    v21 = 0;
  }

  *(DerivedStorage + 288) = v21;
  *(DerivedStorage + 296) = CFRetain(&stru_283570B70);
  v22 = CFArrayCreateMutable(v19, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 336) = v22;
  if (!v22)
  {
    APEndpointClusterCreate_cold_10();
    goto LABEL_53;
  }

  v23 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 344) = v23;
  if (!v23)
  {
    APEndpointClusterCreate_cold_9();
    goto LABEL_53;
  }

  v24 = CFArrayCreateMutable(v19, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 624) = v24;
  if (!v24)
  {
    APEndpointClusterCreate_cold_8();
    goto LABEL_53;
  }

  *(DerivedStorage + 112) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 168) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 120) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 128) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 136) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 144) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 152) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 160) = APSSettingsGetIntWithOverrideAndDefault();
  *(DerivedStorage + 176) = 0x3C000001E0;
  if (IsAppleInternalBuild())
  {
    *(DerivedStorage + 176) = APSSettingsGetIntWithOverrideAndDefault();
    *(DerivedStorage + 180) = APSSettingsGetIntWithOverrideAndDefault();
  }

  if (FigCFDictionaryGetIntIfPresent())
  {
    *(DerivedStorage + 184) = v40;
    if (a2 && endpointCluster_getSubEndpointDeviceClass(cf, a2) != *(DerivedStorage + 184))
    {
      APEndpointClusterCreate_cold_2();
LABEL_43:
      v29 = 4294950576;
      goto LABEL_54;
    }
  }

  else
  {
    *(DerivedStorage + 184) = GestaltGetDeviceClass();
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    Copy = CFDictionaryCreateCopy(v19, Value);
    *(DerivedStorage + 104) = Copy;
    if (!Copy)
    {
      APEndpointClusterCreate_cold_3();
      goto LABEL_53;
    }
  }

  SNPrintF(label, 128, "APEndpointCluster.%{ptr}.%@", cf, *(DerivedStorage + 16));
  v27 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 40) = v27;
  if (!v27)
  {
    APEndpointClusterCreate_cold_7();
    goto LABEL_53;
  }

  if (a2)
  {
    v28 = CFRetain(a2);
    *(DerivedStorage + 8) = v28;
    CFArrayAppendValue(*(DerivedStorage + 336), v28);
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      APEndpointClusterCreate_cold_4(&cf);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    FigSimpleMutexLock();
    v29 = endpointCluster_updateFromSubEndpoint(cf, *(DerivedStorage + 8), 0, 1, 1, 0);
    FigSimpleMutexUnlock();
    if (v29)
    {
      APEndpointClusterCreate_cold_5(v29);
LABEL_54:
      if (cf)
      {
        CFRelease(cf);
      }

      return v29;
    }
  }

  v30 = (CMBaseObjectGetDerivedStorage() + 192);
  if (*v30)
  {
    CFRelease(*v30);
    *v30 = 0;
  }

  v31 = APSEventRecorderCreate();
  if (v31)
  {
    APEndpointClusterCreate_cold_6(v31);
  }

  else
  {
    APSEventRecorderAddSignPostForEvent();
  }

  v32 = cf;
  v33 = CMBaseObjectGetDerivedStorage();
  *(v33 + 248) = 0u;
  v33 += 248;
  *(v33 - 40) = 0u;
  *(v33 - 24) = 0u;
  *(v33 + 16) = 0u;
  *(v33 - 8) = 0;
  *v33 = v32;
  *(v33 - 40) = v32;
  *(v33 - 32) = endpointCluster_handleAuthRequiredInternal;
  *(v33 - 24) = endpointCluster_handleFailedInternal;
  *(v33 + 16) = endpointCluster_handleDidReceiveDataFromCommChannelInternal;
  *(v33 + 24) = endpointCluster_handleDidCloseCommChannelInternal;
  *(DerivedStorage + 200) = CFAbsoluteTimeGetCurrent();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    v34 = cf;
    v35 = *(DerivedStorage + 16);
    if (*(DerivedStorage + 8))
    {
      v36 = "Local";
    }

    else
    {
      v36 = "Remote";
    }

    v37 = APSClusterTypeToDescriptionString();
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus APEndpointClusterCreate(CFAllocatorRef, FigEndpointRef, CFStringRef, APSClusterType, CFStringRef, CFIndex, APSNetworkClockRef, CFDictionaryRef, FigEndpointRef *)", 33554482, "APEndpointCluster created: [%{ptr}], clusterUUID: %@, type: %s %@, initial name: %@, expected size: %u.\n", v34, v35, v36, v37, a5, *(DerivedStorage + 24));
  }

  v29 = 0;
  *a9 = cf;
  return v29;
}

uint64_t airPlayDescription_copyTightSyncClusterInfo(uint64_t a1, CFMutableDictionaryRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  theString = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = APAdvertiserInfoCopyProperty();
    cf = v7;
    FigCFDictionarySetValue();
    if (v7)
    {
      CFRelease(v7);
      cf = 0;
    }

    airPlayDescription_copyPropertyInternal(a1, @"GroupPublicName", v4, &cf);
    if (!cf)
    {
      cf = CFRetain(@"Unknown Pair");
    }

    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v8 = APAdvertiserInfoCopyProperty();
    cf = v8;
    if (v8 && (v9 = CFGetTypeID(v8), v9 == CFStringGetTypeID()))
    {
      CFGetInt64Ranged();
      APSGetClusterModelForTightSyncGroupModel();
      v10 = 0;
    }

    else
    {
      airPlayDescription_copyModel(a1, &theString);
      v10 = theString;
      if (theString && !CFStringHasPrefix(theString, @"AudioAccessory5"))
      {
        CFStringHasPrefix(v10, @"AudioAccessory6");
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    APSGetClusterModelNameForClusterTypeAndModel();
    FigCFDictionarySetValue();
    *a2 = v6;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }

  else
  {
    airPlayDescription_copyTightSyncClusterInfo_cold_1();
    return 4294950575;
  }
}

uint64_t endpointCluster_shouldActivateSubEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 376);
  if ((v6 - 4) <= 0xFFFFFFFD)
  {
    if (gLogCategory_APEndpointCluster > 30)
    {
      return 0;
    }

    if (gLogCategory_APEndpointCluster == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

      v6 = *(v5 + 376);
    }

    v18 = a2;
    v19 = v6;
    v17 = a1;
    v15 = "[%{ptr}] Should activate subEndpoint [%{ptr}]: no - bad stage (%d)\n";
LABEL_27:
    v16 = 33554462;
LABEL_31:
    LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_shouldActivateSubEndpoint(FigEndpointRef, FigEndpointRef)", v16, v15, v17, v18, v19);
LABEL_32:
    v12 = 0;
    v13 = "no";
    goto LABEL_13;
  }

  v7 = *(DerivedStorage + 392);
  if (v7)
  {
    if (gLogCategory_APEndpointCluster > 30)
    {
      return 0;
    }

    if (gLogCategory_APEndpointCluster == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

      v7 = *(v5 + 392);
    }

    v18 = a2;
    v19 = v7;
    v17 = a1;
    v15 = "[%{ptr}] Should activate subEndpoint [%{ptr}]: no - bad status (%#m)\n";
    goto LABEL_27;
  }

  CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, *MEMORY[0x277CC14E8], *MEMORY[0x277CBECE8], &cf);
  }

  v10 = FigCFArrayContainsValue();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    if (gLogCategory_APEndpointCluster > 30)
    {
      return 0;
    }

    if (gLogCategory_APEndpointCluster == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_32;
    }

    v17 = a1;
    v18 = a2;
    v15 = "[%{ptr}] Should activate subEndpoint [%{ptr}]: no - already added to aggregate\n";
    goto LABEL_27;
  }

  v11 = *(v5 + 432);
  if (v11 && CFSetContainsValue(v11, a2))
  {
    if (gLogCategory_APEndpointCluster <= 50)
    {
      if (gLogCategory_APEndpointCluster == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

      v17 = a1;
      v18 = a2;
      v15 = "[%{ptr}] Should activate subEndpoint [%{ptr}]: no - subEndpoint is in failed subEndpoint set\n";
      v16 = 33554482;
      goto LABEL_31;
    }

    return 0;
  }

  v12 = endpointCluster_wantSubEndpointActivation();
  if (v12)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

LABEL_13:
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_shouldActivateSubEndpoint(FigEndpointRef, FigEndpointRef)", 33554462, "[%{ptr}] Should activate subEndpoint [%{ptr}]: returning %s\n", a1, a2, v13);
  }

  return v12;
}

void endpointCluster_failDelayManageSubEndpoint(const void *a1, const void *a2, unsigned int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 456);
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    if (a3 > 3)
    {
      v8 = "unknown";
    }

    else
    {
      v8 = off_27849FFE8[a3];
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_failDelayManageSubEndpoint(FigEndpointRef, FigEndpointRef, FailureDelayAction)", 33554482, "[%{ptr}] Scheduling fail delay change for subEndpoint [%{ptr}] (action: %s) activationSeed: %llu\n", a1, a2, v8, v7);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9 = *(DerivedStorage + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __endpointCluster_failDelayManageSubEndpoint_block_invoke;
  block[3] = &__block_descriptor_tmp_314;
  v11 = a3;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = v7;
  block[7] = a2;
  dispatch_async(v9, block);
}

void endpointCluster_updateHealthState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 420);
  v4 = *(DerivedStorage + 420);
  CMBaseObjectGetDerivedStorage();
  cf = a1;
  v5 = CMBaseObjectGetDerivedStorage();
  if (*(v5 + 376) && !*(v5 + 392) && *(v5 + 441))
  {
    if (endpointCluster_isComplete(a1) && (v4 == 2 || endpointCluster_desiredSubEndpointsActivated(a1)))
    {
      v7 = 2;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7 != *v3)
  {
    CFRetain(a1);
    if (v6)
    {
      endpointCluster_sendActivationMetrics(a1, 252);
    }

    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      endpointCluster_updateHealthState_cold_1(v3, v7, a1);
    }

    *(DerivedStorage + 420) = v7;
    APSDispatchAsyncFHelper();
  }

  v8 = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  v30 = 0;
  v9 = *(v8 + 24);
  v10 = *(v8 + 336);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
  }

  else
  {
    Count = 0;
  }

  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    endpointCluster_updateHealthState_cold_6();
    v24 = 0;
    v13 = 0;
LABEL_77:
    v25 = 0;
    goto LABEL_59;
  }

  v13 = CFStringCreateF(&v30, "[%{ptr}] %d / %d SubEndpoints present", cf, Count, v9);
  if (v30)
  {
    endpointCluster_updateHealthState_cold_2(v30);
    v24 = 0;
    goto LABEL_77;
  }

  v26 = v13;
  if (Count >= 1)
  {
    v14 = 0;
    v27 = *MEMORY[0x277CC14F0];
    v15 = *MEMORY[0x277CC19F0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 336), v14);
      CMBaseObject = FigEndpointGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        v19 = v18(CMBaseObject, v27, alloc, &v31);
        v30 = v19;
        if (!v19)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v19 = 4294954514;
        v30 = -12782;
      }

      if (gLogCategory_APEndpointCluster <= 60)
      {
        if (gLogCategory_APEndpointCluster == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_31;
          }

          v19 = v30;
        }

        LogPrintF(&gLogCategory_APEndpointCluster, "void endpointCluster_logSubEndpoints(FigEndpointRef)", 33554492, "[%{ptr}] Error obtaining subtype for SubEndpoint [%{ptr}]: %#m)", cf, ValueAtIndex, v19);
      }

LABEL_31:
      if (v15)
      {
        v20 = CFRetain(v15);
      }

      else
      {
        v20 = 0;
      }

      v31 = v20;
      v30 = 0;
LABEL_35:
      v21 = "ATV";
      if (!FigCFEqual())
      {
        v21 = "Mac";
        if (!FigCFEqual())
        {
          v21 = "HP";
          if (!FigCFEqual())
          {
            if (FigCFEqual())
            {
              v21 = "3P_SPK";
            }

            else
            {
              v21 = "?";
            }
          }
        }
      }

      v32 = 0;
      v22 = APSGetFBOPropertyInt64();
      if (v32)
      {
        endpointCluster_updateHealthState_cold_3(v32);
        v23 = "?";
      }

      else
      {
        v23 = "N";
        if (v22 <= 2)
        {
          v23 = off_27849FFD0[v22];
        }
      }

      v24 = CFStringCreateF(&v30, "[%{ptr}] (%s, %s)", ValueAtIndex, v21, v23);
      if (v30)
      {
        endpointCluster_updateHealthState_cold_4(v30);
        v25 = 0;
LABEL_58:
        v13 = v26;
        goto LABEL_59;
      }

      CFArrayAppendValue(Mutable, v24);
      if (v31)
      {
        CFRelease(v31);
        v31 = 0;
      }

      if (v24)
      {
        CFRelease(v24);
      }

      ++v14;
    }

    while (Count != v14);
  }

  v25 = CFStringCreateByCombiningStrings(alloc, Mutable, @", ");
  if (gLogCategory_APEndpointCluster > 50)
  {
    v24 = 0;
    goto LABEL_58;
  }

  v13 = v26;
  if (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize())
  {
    endpointCluster_updateHealthState_cold_5();
  }

  v24 = 0;
LABEL_59:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

void __endpointCluster_failDelayManageSubEndpoint_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == 1)
  {
    v3 = *(*(a1 + 32) + 168);
    if (v3)
    {
      OUTLINED_FUNCTION_10_9();
      if (v6 ^ v7 | v5 && (v4 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
      {
        v48 = *(a1 + 48);
        v46 = *(a1 + 40);
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v8, v9, v10, v11, v46, v3, v48);
      }

      usleep(1000 * v3);
      v2 = *(a1 + 64);
    }

    else
    {
      v2 = 1;
    }
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_10_9();
  if (v6 ^ v7 | v5 && (v16 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
  {
    if (v2 > 3)
    {
      v17 = "unknown";
    }

    else
    {
      v17 = off_27849FFE8[v2];
    }

    v50 = *(DerivedStorage + 456);
    v51 = *(DerivedStorage + 376);
    v49 = v17;
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v18, v19, v20, v21, v14, v13, v49, v12, v50, v51);
  }

  if (v2 - 2 < 2)
  {
    if (!endpointCluster_isComplete(v14))
    {
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      goto LABEL_42;
    }

    v22 = *(DerivedStorage + 72);
    if (v22)
    {
      dispatch_source_cancel(*(DerivedStorage + 72));
      dispatch_release(v22);
      *(DerivedStorage + 72) = 0;
    }

LABEL_25:
    if (*(DerivedStorage + 424))
    {
      OUTLINED_FUNCTION_10_9();
      if (v6 ^ v7 | v5 && (v23 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
      {
        OUTLINED_FUNCTION_2_0();
        LogPrintF(v24, v25, v26, v27, v14);
      }

      *(DerivedStorage + 424) = 0;
    }

    goto LABEL_42;
  }

  if (*(DerivedStorage + 376))
  {
    if (*(DerivedStorage + 456) == v12)
    {
      v28 = CMBaseObjectGetDerivedStorage();
      if (!*(v28 + 72))
      {
        v29 = v28;
        v30 = *(v28 + 120);
        OUTLINED_FUNCTION_10_9();
        if (v6 ^ v7 | v5 && (v31 != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
        {
          v47 = *(v29 + 456);
          OUTLINED_FUNCTION_2_0();
          LogPrintF(v32, v33, v34, v35, v14, v47, v30);
        }

        v36 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
        if (v36)
        {
          v37 = v36;
          v38 = CFRetain(v14);
          v39 = *(v29 + 456);
          *v37 = v38;
          v37[1] = v39;
          v40 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v29 + 40));
          *(v29 + 72) = v40;
          dispatch_set_context(v40, v37);
          dispatch_source_set_event_handler_f(*(v29 + 72), endpointCluster_failureDelayTimerFired);
          dispatch_source_set_cancel_handler_f(*(v29 + 72), endpointCluster_failureDelayTimerCancelled);
          v41 = *(v29 + 72);
          v42 = dispatch_time(0, 1000000000 * v30);
          dispatch_source_set_timer(v41, v42, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          dispatch_resume(*(v29 + 72));
        }

        else
        {
          APSLogErrorAt();
        }
      }
    }
  }

LABEL_42:
  FigSimpleMutexUnlock();
  v43 = *(a1 + 40);
  if (v43)
  {
    CFRelease(v43);
  }

  if (*(a1 + 56))
  {
    OUTLINED_FUNCTION_12();

    CFRelease(v44);
  }

  else
  {
    OUTLINED_FUNCTION_12();
  }
}

uint64_t endpointCluster_updateHealthState_cold_5()
{
  OUTLINED_FUNCTION_3_7();
  v8 = CFStringGetLength(v2) == 0;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v3, v4, v5, v6, v0, v8, v1);
}

uint64_t endpointCluster_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_SetDelegateRouting(FigEndpointRef, const FigEndpointDelegateRouting *)", 33554482, "[%{ptr}] Setting endpoint routing delegate %{ptr}.\n", a1, a2);
    }

    v5 = *(DerivedStorage + 592);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 592) = 0;
    }

    v6 = (DerivedStorage + 520);
    if (a2)
    {
      v7 = *a2;
      v8 = *(a2 + 16);
      *(DerivedStorage + 552) = *(a2 + 32);
      *v6 = v7;
      *(DerivedStorage + 536) = v8;
      a2 = 0;
      *(DerivedStorage + 592) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 552) = 0;
      *v6 = 0u;
      *(DerivedStorage + 536) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpointCluster_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 442))
  {
    endpointCluster_SetDelegateRemoteControl_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_SetDelegateRemoteControl(FigEndpointRef, const FigEndpointDelegateRemoteControl *)", 33554482, "[%{ptr}] Setting endpoint remote control delegate %{ptr}.\n", a1, a2);
    }

    v5 = *(DerivedStorage + 600);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 600) = 0;
    }

    if (a2)
    {
      v6 = *(a2 + 16);
      *(DerivedStorage + 560) = *a2;
      *(DerivedStorage + 576) = v6;
      a2 = 0;
      *(DerivedStorage + 600) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 560) = 0u;
      *(DerivedStorage + 576) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpointCluster_copyClusterHierarchyAsArray(uint64_t a1, CFTypeRef *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 360);
  if (v5)
  {
    *a2 = CFRetain(v5);
  }

  else
  {
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
      if (v9)
      {
        v10 = v9;
        CFDictionaryApplyBlock();
        CFDictionaryApplyBlock();
        if (gLogCategory_APEndpointCluster <= 30)
        {
          endpointCluster_copyClusterHierarchyAsArray_cold_1(gLogCategory_APEndpointCluster, a1, v10);
        }

        if (!*(v15 + 6))
        {
          v11 = CFRetain(v10);
          *(DerivedStorage + 360) = v11;
          if (v11)
          {
            v11 = CFRetain(v11);
          }

          *a2 = v11;
        }

        CFRelease(v10);
      }

      else
      {
        endpointCluster_copyClusterHierarchyAsArray_cold_2();
      }

      CFRelease(v8);
    }

    else
    {
      endpointCluster_copyClusterHierarchyAsArray_cold_3();
    }
  }

  v12 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v12;
}

void __endpointCluster_copyClusterHierarchyAsArray_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
  v7 = *MEMORY[0x277CC1550];
  Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC1550]);
  CFDictionaryGetValue(a3, @"TightSyncName");
  CFDictionaryGetValue(a3, @"TightSyncModel");
  if (!MutableCopy)
  {
    __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_4();
    return;
  }

  CFDictionaryRemoveValue(MutableCopy, v7);
  CFDictionaryRemoveValue(MutableCopy, @"TightSyncName");
  CFDictionaryRemoveValue(MutableCopy, @"TightSyncModel");
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC0AB0]);
  if (Value)
  {
    v9 = CFDictionaryGetValue(*(a1 + 40), Value);
    if (v9)
    {
      v10 = v9;
      CFRetain(v9);
      v11 = CFDictionaryGetValue(v10, *MEMORY[0x277CC0AE8]);
      v12 = v11;
      if (!v11)
      {
        __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_1(a1);
        goto LABEL_22;
      }

      CFRetain(v11);
      if (!CFDictionaryContainsKey(v10, *MEMORY[0x277CC0AB8]))
      {
        FigCFDictionarySetValue();
      }

      if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_copyClusterHierarchyAsArray(FigEndpointRef, CFArrayRef *)_block_invoke", 33554462, "[%{ptr}] <AirPlayClusterComp> Found pair dict %@.\n", *(a1 + 48), v10);
      }

LABEL_21:
      CFArrayAppendValue(v12, MutableCopy);
LABEL_22:
      CFRelease(MutableCopy);
      CFRelease(v10);
      if (!v12)
      {
        return;
      }

      v13 = v12;
      goto LABEL_24;
    }

    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      v12 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
      if (!v12)
      {
        __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_2();
        goto LABEL_22;
      }

      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_copyClusterHierarchyAsArray(FigEndpointRef, CFArrayRef *)_block_invoke", 33554462, "[%{ptr}] <AirPlayClusterComp> Created pair dict %@.\n", *(a1 + 48), v10);
      }

      FigCFDictionarySetValue();
      goto LABEL_21;
    }

    __endpointCluster_copyClusterHierarchyAsArray_block_invoke_cold_3();
  }

  else
  {
    CFArrayAppendValue(*(a1 + 56), MutableCopy);
  }

  v13 = MutableCopy;
LABEL_24:

  CFRelease(v13);
}

void __endpointCluster_copyClusterHierarchyAsArray_block_invoke_2(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  if (!CFDictionaryContainsKey(theDict, *MEMORY[0x277CC0AB8]))
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CC0AE8]);
    endpointCluster_getClusterModelBasedOnAnyMemberModels(1, Value, &__block_literal_global_29);
    FigCFDictionarySetValue();
  }

  v5 = *(a1 + 32);

  CFArrayAppendValue(v5, theDict);
}

uint64_t endpointCluster_copyClusterCompositionAsArray(uint64_t a1, CFTypeRef *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 352);
  if (!v5)
  {
    v6 = *MEMORY[0x277CBECE8];
    Count = CFDictionaryGetCount(*(DerivedStorage + 344));
    Mutable = CFArrayCreateMutable(v6, Count, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      endpointCluster_copyClusterCompositionAsArray_cold_1();
      goto LABEL_14;
    }

    v9 = Mutable;
    v13 = MEMORY[0x277D85DD0];
    v14 = Mutable;
    CFDictionaryApplyBlock();
    if (*(v16 + 6))
    {
      goto LABEL_13;
    }

    v10 = CFRetain(v9);
    *(DerivedStorage + 352) = v10;
    if (gLogCategory_APEndpointCluster > 30)
    {
LABEL_10:
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      *a2 = v10;
LABEL_13:
      CFRelease(v9);
      goto LABEL_14;
    }

    if (gLogCategory_APEndpointCluster == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v10 = *(DerivedStorage + 352);
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_copyClusterCompositionAsArray(FigEndpointRef, CFArrayRef *)", 33554462, "[%{ptr}] <AirPlayClusterComp> Composition results = %@.\n", a1, v10, v13, 0x40000000, __endpointCluster_copyClusterCompositionAsArray_block_invoke, &unk_27849FDB8, &v15, v14);
LABEL_9:
    v10 = *(DerivedStorage + 352);
    goto LABEL_10;
  }

  *a2 = CFRetain(v5);
LABEL_14:
  v11 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v11;
}

void __endpointCluster_copyClusterCompositionAsArray_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
  if (MutableCopy)
  {
    v5 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CC1550]);
    CFDictionaryRemoveValue(v5, @"TightSyncName");
    CFDictionaryRemoveValue(v5, @"TightSyncModel");
    CFArrayAppendValue(*(a1 + 40), v5);

    CFRelease(v5);
  }

  else
  {
    __endpointCluster_copyClusterCompositionAsArray_block_invoke_cold_1();
  }
}

const void *epp_getClusterLeaderOrAny(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage != 2)
  {
    return 0;
  }

  v9 = DerivedStorage;
  v10 = *(DerivedStorage + 80);
  v11 = OUTLINED_FUNCTION_12_1(DerivedStorage, v2, v3, v4, v5, v6, v7, v8, 0, 0, 0, 0, 0, 0, 0, 0, v32);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = *v26;
LABEL_4:
  v14 = 0;
  while (1)
  {
    if (*v26 != v13)
    {
      objc_enumerationMutation(v10);
    }

    Value = CFDictionaryGetValue(*(v9 + 80), *(v25 + 8 * v14));
    if (APSGetFBOPropertyInt64())
    {
      return Value;
    }

    if (v12 == ++v14)
    {
      v12 = OUTLINED_FUNCTION_12_1(0, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, v33);
      if (v12)
      {
        goto LABEL_4;
      }

      return Value;
    }
  }
}

uint64_t epp_copySubEndpointsArray(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    epp_copySubEndpointsArray_cold_4();
    return 4294950576;
  }

  if (*DerivedStorage != 2)
  {
    epp_copySubEndpointsArray_cold_1();
    return 4294950576;
  }

  if (*(DerivedStorage + 80))
  {
    v4 = FigCFDictionaryCopyArrayOfValues();
    if (v4)
    {
      v5 = v4;
      result = 0;
      *a2 = v5;
    }

    else
    {
      epp_copySubEndpointsArray_cold_2();
      return 4294960568;
    }
  }

  else
  {
    epp_copySubEndpointsArray_cold_3();
    return 4294960587;
  }

  return result;
}

id emp_syncSubEndpoints_createTable(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *MEMORY[0x277CC1368];
    v7 = *MEMORY[0x277CBECE8];
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        cf = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(CMBaseObject, v6, v7, &cf);
        }

        if (cf)
        {
          [v2 setObject:v9 forKeyedSubscript:?];
        }

        else
        {
          emp_syncSubEndpoints_createTable_cold_1();
        }

        if (cf)
        {
          CFRelease(cf);
        }

        ++v8;
      }

      while (v4 != v8);
      v12 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = v12;
    }

    while (v12);
  }

  return v2;
}

uint64_t APEndpointPlusAddSubEndpoint(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (!a2)
  {
    APEndpointPlusAddSubEndpoint_cold_4();
    v9 = 4294950576;
    goto LABEL_16;
  }

  v5 = DerivedStorage;
  if (*DerivedStorage == 2)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v8 = v7(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &key);
      if (!v8)
      {
        if (CFDictionaryContainsKey(v5[10], key))
        {
          APEndpointPlusAddSubEndpoint_cold_2();
          v9 = 4294960587;
        }

        else
        {
          if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointPlus, "OSStatus epp_addSubEndpoint(FigEndpointRef, FigEndpointRef)", 33554482, "[%{ptr}] Add subEndpointPlus [%{ptr}] %@", a1, a2, key);
          }

          CFDictionarySetValue(v5[10], key, a2);
          updated = epp_updateDescription(a1);
          v9 = updated;
          if (updated)
          {
            APEndpointPlusAddSubEndpoint_cold_3(updated);
          }

          else
          {
            epp_postNotificationAsync(a1, *MEMORY[0x277CC0D48], 0);
          }
        }

        goto LABEL_14;
      }

      v9 = v8;
    }

    else
    {
      v9 = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    APEndpointPlusAddSubEndpoint_cold_1();
    v9 = 4294950576;
  }

LABEL_14:
  if (key)
  {
    CFRelease(key);
  }

LABEL_16:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t epp_updateDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    updated = epp_updateDescriptionFromInner(a1);
    v3 = updated;
    if (updated)
    {
      epp_updateDescription_cold_1(updated);
    }
  }

  else if (*DerivedStorage == 2)
  {
    epp_updateDescription_cold_2(a1, &v6);
    return v6;
  }

  else
  {
    return 0;
  }

  return v3;
}

BOOL endpointCluster_isComplete(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = *(DerivedStorage + 336);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return Count >= *(DerivedStorage + 24);
}

BOOL apsession_IsConnected(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "Boolean apsession_IsConnected(APSenderSessionRef)", 33554462, "[%{ptr}] %###s %@.\n", a1, "Boolean apsession_IsConnected(APSenderSessionRef)", *(DerivedStorage + 8));
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 304))
  {
    v3 = *(DerivedStorage + 305) != 0;
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t endpointCluster_copyAirPlayEndpointProperties()
{
  OUTLINED_FUNCTION_3_7();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  cf = 0;
  SubEndpointWithPredicate = endpointCluster_getSubEndpointWithPredicate(v1, 3);
  if (!SubEndpointWithPredicate)
  {
    SubEndpointWithPredicate = endpointCluster_getSubEndpointWithPredicate(v1, 1);
    if (!SubEndpointWithPredicate)
    {
      SubEndpointWithPredicate = endpointCluster_getSubEndpointWithPredicate(v1, 0);
      if (!SubEndpointWithPredicate)
      {
        v12 = 4294949690;
        goto LABEL_15;
      }
    }
  }

  v4 = SubEndpointWithPredicate;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v12 = 4294954514;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = v6(CMBaseObject, @"AirPlayClusterCompatibleEndpointProperties", *MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
    v12 = v8;
    goto LABEL_14;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v10 = MutableCopy;
    if (*(DerivedStorage + 8))
    {
      v11 = *MEMORY[0x277CBED28];
    }

    else
    {
      v11 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(MutableCopy, @"IsLocalDevice", v11);
    if (*DerivedStorage == 2 && !endpointCluster_isSubEndpointOfType(v1, v4, *MEMORY[0x277CC19A0]) && !endpointCluster_isSubEndpointOfType(v1, v4, *MEMORY[0x277CC19C8]))
    {
      endpointCluster_copyPropertyFromSubEndpoint(v1, 1, @"AirPlayClusterCompatibleEndpointProperties", v7, &v20);
      FigCFDictionarySetValueFromKeyInDict();
      v14 = OUTLINED_FUNCTION_21_5();
      CFDictionarySetValue(v14, v15, v16);
      v17 = OUTLINED_FUNCTION_21_5();
      CFDictionarySetValue(v17, v18, v19);
    }

    v12 = 0;
    *v0 = v10;
  }

  else
  {
    APSLogErrorAt();
    v12 = 4294950575;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v12;
}

uint64_t endpoint_copyIsURLPlaybackEnabled(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  if (a2)
  {
    v5 = DerivedStorage;
    SupportedFeatures = endpoint_getSupportedFeatures(a1, &v10);
    v7 = SupportedFeatures;
    if (SupportedFeatures)
    {
      endpoint_copyIsURLPlaybackEnabled_cold_1(SupportedFeatures);
    }

    else
    {
      if (((v10 >> 2) & 1 & (*(v5 + 136) >> 2)) != 0)
      {
        v8 = MEMORY[0x277CBED28];
      }

      else
      {
        v8 = MEMORY[0x277CBED10];
      }

      *a2 = CFRetain(*v8);
    }
  }

  else
  {
    endpoint_copyIsURLPlaybackEnabled_cold_2();
    return 4294950576;
  }

  return v7;
}

CFTypeRef endpointCluster_getClusterModelBasedOnClusterAdvertisementInfo(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  endpointCluster_copyPropertyFromSubEndpoint(a1, 0, @"ClusterModel", *MEMORY[0x277CBECE8], &cf);
  result = cf;
  if (cf)
  {
    CFGetInt64Ranged();
    CFRelease(cf);
    return APSGetClusterModelNameForClusterTypeAndModel();
  }

  return result;
}

uint64_t endpointCluster_copyPropertyFromSubEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 336)) < 1 || !endpointCluster_getSubEndpointWithPredicate(a1, v8))
  {
    return 4294949690;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v14 = v13(CMBaseObject, a3, a4, a5);
    if (!v14)
    {
      return v14;
    }
  }

  else
  {
    v14 = 4294954514;
  }

  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCluster)))
  {
    OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_copyPropertyFromSubEndpoint(FigEndpointRef, APEndpointClusterSubEndpointPredicate, CFStringRef, CFAllocatorRef, void *)", v12, "[%{ptr}] Failed to copy property '%@' from subEndpoint [%{ptr}] with error: %#m\n");
  }

  return v14;
}

uint64_t APEndpointAPSClusterTypeToFigEndpointClusterType(int a1)
{
  switch(a1)
  {
    case 3:
      v1 = MEMORY[0x277CC0AF0];
      return *v1;
    case 2:
      v1 = MEMORY[0x277CC0AF8];
      return *v1;
    case 1:
      v1 = MEMORY[0x277CC0B00];
      return *v1;
  }

  return 0;
}

void __manager_updateEndpointClusterMembershipIfNeeded_block_invoke_2(uint64_t a1, const void *a2)
{
  cf = 0;
  if (*(a1 + 48) && *(a1 + 32) == a2)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
    {
      v19 = *(a1 + 40);
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v4, v5, v6, v7, v19, a2);
    }
  }

  else
  {
    v8 = manager_copyOrCreateClusterForEndpoint(*(a1 + 40), a2, &cf);
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointManager)))
    {
      v21 = cf;
      v20 = *(a1 + 40);
      OUTLINED_FUNCTION_2_0();
      LogPrintF(v9, v10, v11, v12, v20, a2, v21);
    }

    if (v8)
    {
      APSLogErrorAt();
    }

    else
    {
      if (!cf)
      {
        return;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      value = 0;
      if (*(DerivedStorage + 2))
      {
        v14 = DerivedStorage;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16 && (v16(CMBaseObject, *MEMORY[0x277CC1490], *MEMORY[0x277CBECE8], &value), value))
        {
          CFDictionarySetValue(*(v14 + 232), a2, value);
          if (!APSGetFBOPropertyInt64())
          {
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_2_10();
            FigNotificationCenterRemoveWeakListener();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_1_12();
            FigNotificationCenterRemoveWeakListener();
            v17 = OUTLINED_FUNCTION_12_4();
            APEndpointClusterAddSubEndpoint(v17, v18);
          }
        }

        else
        {
          APSLogErrorAt();
        }

        if (value)
        {
          CFRelease(value);
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t manager_copyOrCreateClusterForEndpoint(const void *a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  key = 0;
  v17 = 0;
  value = 0;
  cf = 0;
  if (a3)
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 2) && (APEndpointCopyClusterInfo(a2, &key, &v18, &v17, 0, 0, 0, &cf), key))
    {
      v8 = CFDictionaryGetValue(*(v7 + 240), key);
      if (v8)
      {
        v9 = CFRetain(v8);
        value = v9;
        if (v9)
        {
LABEL_16:
          v13 = 0;
          *a3 = v9;
          value = 0;
          goto LABEL_17;
        }
      }

      else
      {
        value = 0;
      }

      v10 = APSGetFBOPropertyInt64();
      if (v10)
      {
        v11 = a2;
      }

      else
      {
        v11 = 0;
      }

      v12 = APEndpointClusterCreate(*MEMORY[0x277CBECE8], v11, key, v17, cf, v18, *(v7 + 304), 0, &value);
      if (!v12)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_6_2();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_6_2();
        FigNotificationCenterAddWeakListener();
        if (v10)
        {
          manager_updateExposedLocalEndpoint(a1, value);
          if (manager_determineLocalClusterAction(a1, value) == 1)
          {
            *(v7 + 368) = 0;
            manager_activateLocalCluster(a1, value);
          }
        }

        CFDictionarySetValue(*(v7 + 240), key, value);
        v9 = value;
        goto LABEL_16;
      }

      v13 = v12;
      APSLogErrorAt();
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    v13 = 4294960591;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (key)
  {
    CFRelease(key);
  }

  return v13;
}

uint64_t APEndpointClusterAddSubEndpoint(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCluster)))
  {
    OUTLINED_FUNCTION_2_0();
    LogPrintF(v5, v6, v7, v8, a2, a1);
  }

  FigSimpleMutexLock();
  if (!APSGetFBOPropertyInt64())
  {
    v33.length = CFArrayGetCount(*(DerivedStorage + 336));
    v33.location = 0;
    if (CFArrayGetFirstIndexOfValue(*(DerivedStorage + 336), v33, a2) == -1)
    {
      CFArrayAppendValue(*(DerivedStorage + 336), a2);
      v9 = *(DerivedStorage + 384);
      if (v9)
      {
        CompletionCallbackContextAddSubEndpoint(v9, a2);
      }

      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_26(DefaultLocalCenter, v11, v12, *MEMORY[0x277CC0DC0]);
      v13 = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_26(v13, v14, v15, *MEMORY[0x277CC0D60]);
      v16 = CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_4_26(v16, v17, v18, *MEMORY[0x277CC0D48]);
      if (*(DerivedStorage + 8) && *DerivedStorage == 2)
      {
        v19 = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_4_26(v19, v20, v21, @"HTSecondaryNonPersistentReceiverSessionStarted");
      }

      v22 = OUTLINED_FUNCTION_17_4();
      v24 = endpointCluster_updateFromSubEndpoint(v22, v23, 0, 1, 1, 1);
      if (v24)
      {
        v31 = v24;
        APSLogErrorAt();
        goto LABEL_17;
      }

      v25 = OUTLINED_FUNCTION_17_4();
      if (endpointCluster_shouldActivateSubEndpoint(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_17_4();
        endpointCluster_activateSubEndpoint(v27, v28);
      }

      v29 = OUTLINED_FUNCTION_17_4();
      endpointCluster_failDelayManageSubEndpoint(v29, v30, 3u);
      endpointCluster_updateHealthState(a1);
    }

    else
    {
      APSLogErrorAt();
    }
  }

  v31 = 0;
LABEL_17:
  FigSimpleMutexUnlock();
  return v31;
}

uint64_t endpointCluster_updateFromSubEndpoint(const void *a1, const void *a2, int a3, int a4, int a5, int a6)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    v11 = "yes";
    if (a3)
    {
      v12 = "yes";
    }

    else
    {
      v12 = "no";
    }

    if (a4)
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (!a5)
    {
      v11 = "no";
    }

    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_updateFromSubEndpoint(FigEndpointRef, FigEndpointRef, Boolean, Boolean, Boolean, Boolean)", 33554482, "[%{ptr}] updateFromSubEndpoint([%{ptr}], rm=%s, comp=%s, grp=%s)\n", a1, a2, v12, v13, v11);
  }

  v85 = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v95 = 0;
  alloc = *MEMORY[0x277CBECE8];
  if (a2 && !a3)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(CMBaseObject, @"GroupPublicName", alloc, &v95);
    }

    v18 = FigCFEqual();
    v15 = 0;
    if (!v18 && v95)
    {
      if (CFStringGetLength(v95) < 1)
      {
        v15 = 0;
      }

      else
      {
        if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_updateClusterNameFromSubEndpoint(FigEndpointRef, FigEndpointRef)", 33554482, "[%{ptr}] Cluster endpoint group name changed: %'@ -> %'@\n", a1, *(DerivedStorage + 288), v95);
        }

        v19 = *(DerivedStorage + 288);
        v20 = v95;
        *(DerivedStorage + 288) = v95;
        if (v20)
        {
          CFRetain(v20);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        v15 = 1;
      }
    }
  }

  v82 = a3;
  v83 = v15;
  v86 = a2;
  v21 = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(alloc, 0);
  if (CFArrayGetCount(*(v21 + 336)) >= 1)
  {
    v23 = 0;
    v24 = *MEMORY[0x277CC1450];
    do
    {
      v96[0] = 0;
      CFArrayGetValueAtIndex(*(v21 + 336), v23);
      v25 = CFGetAllocator(a1);
      v26 = FigEndpointGetCMBaseObject();
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        v27(v26, v24, v25, v96);
      }

      v28 = v96[0];
      if (v96[0])
      {
        if (v23)
        {
          CFStringAppend(Mutable, @" + ");
          v28 = v96[0];
        }

        CFStringAppend(Mutable, v28);
        if (v96[0])
        {
          CFRelease(v96[0]);
        }
      }

      ++v23;
    }

    while (v23 < CFArrayGetCount(*(v21 + 336)));
  }

  v29 = CFEqual(Mutable, *(DerivedStorage + 296));
  if (!v29)
  {
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_updateClusterNameFromSubEndpoint(FigEndpointRef, FigEndpointRef)", 33554462, "[%{ptr}] Cluster endpoint full name changed: %'@ -> %'@\n", a1, *(DerivedStorage + 296), Mutable);
    }

    v30 = *(DerivedStorage + 296);
    *(DerivedStorage + 296) = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v30)
    {
      CFRelease(v30);
    }
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v29)
  {
    v31 = v83;
  }

  else
  {
    v31 = 1;
  }

  if (a5)
  {
    v84 = v31;
    v32 = CMBaseObjectGetDerivedStorage();
    v33 = 0;
    v96[0] = 0;
    v34 = *MEMORY[0x277CC1340];
    while (v33 < CFArrayGetCount(*(v32 + 336)))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v32 + 336), v33);
      if (!APSGetFBOPropertyInt64())
      {
        goto LABEL_65;
      }

      v95 = 0;
      v36 = FigEndpointGetCMBaseObject();
      v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v37)
      {
        v37(v36, v34, alloc, &v95);
      }

      if (v95)
      {
        if (FigCFEqual())
        {
          ValueAtIndex = 0;
        }

        else if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_updateGroupConfiguration(FigEndpointRef)", 33554462, "[%{ptr}] Group change: Relevant sub endpoint [%{ptr}] found.\n", a1, ValueAtIndex);
        }

        if (v95)
        {
          CFRelease(v95);
        }
      }

      else
      {
LABEL_65:
        ValueAtIndex = 0;
      }

      ++v33;
      if (ValueAtIndex)
      {
        goto LABEL_73;
      }
    }

    SubEndpointWithPredicate = endpointCluster_getSubEndpointWithPredicate(a1, 0);
    if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_updateGroupConfiguration(FigEndpointRef)", 33554462, "[%{ptr}] Group change: Deriving group info from first sub endpoint [%{ptr}].\n", a1, SubEndpointWithPredicate);
    }

    if (!SubEndpointWithPredicate)
    {
      v40 = 0;
      goto LABEL_76;
    }

LABEL_73:
    v38 = FigEndpointGetCMBaseObject();
    v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v39)
    {
      v39(v38, v34, alloc, v96);
    }

    v40 = APSGetFBOPropertyInt64() != 0;
LABEL_76:
    v41 = v86;
    v31 = v84;
    if (FigCFEqual() && v40 == *(v32 + 312))
    {
      v42 = 0;
    }

    else
    {
      if (gLogCategory_APEndpointCluster <= 50 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
      {
        v43 = "yes";
        if (*(v32 + 312))
        {
          v44 = "yes";
        }

        else
        {
          v44 = "no";
        }

        if (!v40)
        {
          v43 = "no";
        }

        LogPrintF(&gLogCategory_APEndpointCluster, "Boolean endpointCluster_updateGroupConfiguration(FigEndpointRef)", 33554482, "[%{ptr}] Group change: groupID: %'@ --> %'@, groupContainsGroupLeader: '%s' --> '%s'\n", a1, *(v32 + 304), v96[0], v44, v43);
      }

      v46 = *(v32 + 304);
      v47 = v96[0];
      *(v32 + 304) = v96[0];
      if (v47)
      {
        CFRetain(v47);
      }

      if (v46)
      {
        CFRelease(v46);
      }

      *(v32 + 312) = v40;
      v42 = 1;
    }

    v45 = v85;
    if (v96[0])
    {
      CFRelease(v96[0]);
    }
  }

  else
  {
    v42 = 0;
    v41 = v86;
    v45 = v85;
  }

  if (!v45)
  {
    v50 = 0;
    if (!a6)
    {
      return v50;
    }

    goto LABEL_176;
  }

  CMBaseObjectGetDerivedStorage();
  v48 = CMBaseObjectGetDerivedStorage();
  if (!v82)
  {
    v95 = 0;
    v96[0] = 0;
    v94 = 0;
    v92 = 0;
    cf = 0;
    v90 = 0;
    v91 = 0;
    v89 = 0;
    v51 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v51)
    {
      endpointCluster_updateFromSubEndpoint_cold_1();
      Int64 = 0;
      v50 = 4294950575;
      goto LABEL_154;
    }

    v52 = FigEndpointGetCMBaseObject();
    v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v53)
    {
      v54 = v53(v52, *MEMORY[0x277CC1368], alloc, v96);
      if (!v54)
      {
        CFDictionarySetValue(v51, *MEMORY[0x277CC0AD8], v96[0]);
        v55 = *MEMORY[0x277CC1450];
        v56 = FigEndpointGetCMBaseObject();
        v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v57)
        {
          v57(v56, v55, alloc, &v95);
        }

        FigCFDictionarySetValue();
        v58 = FigEndpointGetCMBaseObject();
        v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v59)
        {
          v60 = v59(v58, *MEMORY[0x277CC14F0], alloc, &v94);
          if (!v60)
          {
            CFDictionarySetValue(v51, *MEMORY[0x277CC0AE0], v94);
            v61 = FigEndpointGetCMBaseObject();
            v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v62)
            {
              v62(v61, *MEMORY[0x277CC1390], alloc, &cf);
            }

            FigCFDictionarySetValue();
            v63 = *MEMORY[0x277CC1440];
            v64 = FigEndpointGetCMBaseObject();
            v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v65)
            {
              v65(v64, v63, alloc, &v92);
            }

            FigCFDictionarySetValue();
            v66 = FigEndpointGetCMBaseObject();
            v67 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v67)
            {
              v67(v66, @"RoomUUID", alloc, &v91);
            }

            FigCFDictionarySetValue();
            v68 = FigEndpointGetCMBaseObject();
            v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v69)
            {
              v69(v68, @"RoomName", alloc, &v90);
            }

            FigCFDictionarySetValue();
            if (*v48 != 1)
            {
              v70 = FigEndpointGetCMBaseObject();
              v71 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v71)
              {
                v71(v70, @"TightSyncClusterInfo", alloc, &v89);
              }

              if (v89)
              {
                FigCFDictionarySetValueFromKeyInDict();
                FigCFDictionarySetValueFromKeyInDict();
                FigCFDictionarySetValueFromKeyInDict();
              }
            }

            if (FigCFEqual())
            {
              v72 = *(v48 + 368);
              if (v72)
              {
                CFRelease(v72);
                *(v48 + 368) = 0;
              }

              *(v48 + 368) = CFRetain(v96[0]);
            }

            CFHash(v41);
            Int64 = CFNumberCreateInt64();
            CFDictionarySetValue(*(v48 + 344), Int64, v51);
            if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_addOrUpdateClusterCompositionPropertiesForSubEndpoint(FigEndpointRef, FigEndpointRef)", 33554462, "[%{ptr}] <AirPlayClusterComp> Adding description %@ for %@ with name %@, contents is now %@.\n", a1, v51, v96[0], v95, *(v48 + 344));
            }

            v77 = *(v48 + 352);
            if (v77)
            {
              CFRelease(v77);
              *(v48 + 352) = 0;
            }

            v78 = *(v48 + 360);
            if (v78)
            {
              CFRelease(v78);
              v50 = 0;
              *(v48 + 360) = 0;
            }

            else
            {
              v50 = 0;
            }

            goto LABEL_154;
          }

          v50 = v60;
        }

        else
        {
          v50 = 4294954514;
        }

        APSLogErrorAt();
        Int64 = 0;
LABEL_154:
        if (v96[0])
        {
          CFRelease(v96[0]);
        }

        if (v95)
        {
          CFRelease(v95);
        }

        if (v94)
        {
          CFRelease(v94);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v92)
        {
          CFRelease(v92);
        }

        if (v91)
        {
          CFRelease(v91);
        }

        if (v90)
        {
          CFRelease(v90);
        }

        if (v51)
        {
          CFRelease(v51);
        }

        if (Int64)
        {
          CFRelease(Int64);
        }

        if (v89)
        {
          CFRelease(v89);
        }

        goto LABEL_174;
      }

      v50 = v54;
    }

    else
    {
      v50 = 4294954514;
    }

    APSLogErrorAt();
    Int64 = 0;
    goto LABEL_154;
  }

  CFHash(v41);
  v49 = CFNumberCreateInt64();
  CFDictionaryRemoveValue(*(v48 + 344), v49);
  if (gLogCategory_APEndpointCluster <= 30 && (gLogCategory_APEndpointCluster != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCluster, "OSStatus endpointCluster_removeClusterCompositionPropertiesForSubEndpoint(FigEndpointRef, FigEndpointRef)", 33554462, "[%{ptr}] <AirPlayClusterComp> Removing description for %@, contents is now %@.\n", a1, v49, *(v48 + 344));
  }

  v74 = *(v48 + 352);
  if (v74)
  {
    CFRelease(v74);
    *(v48 + 352) = 0;
  }

  v75 = *(v48 + 360);
  if (v75)
  {
    CFRelease(v75);
    *(v48 + 360) = 0;
  }

  if (v49)
  {
    CFRelease(v49);
  }

  v50 = 0;
LABEL_174:
  if (!a6)
  {
    return v50;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
LABEL_176:
  if ((v31 | v42) == 1)
  {
    v79 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v79)
    {
      endpointCluster_updateFromSubEndpoint_cold_2();
      return 4294950575;
    }

    v80 = v79;
    if (v42)
    {
      CFDictionarySetValue(v79, @"GroupInfoDidChange", *MEMORY[0x277CBED28]);
    }

    if (v31)
    {
      CFDictionarySetValue(v80, @"NameDidChange", *MEMORY[0x277CBED28]);
    }
  }

  else
  {
    v80 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (v80)
  {
    CFRelease(v80);
  }

  return v50;
}

const void *endpointCluster_getSubEndpointWithPredicate(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(*(DerivedStorage + 336)) < 1)
  {
    return 0;
  }

  if (!a2)
  {
    v11 = *(DerivedStorage + 336);
LABEL_18:

    return CFArrayGetValueAtIndex(v11, 0);
  }

  if (a2 == 1)
  {
    v12 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v12 + 336));
    if (Count < 1)
    {
      return 0;
    }

    if (*v12 == 2)
    {
      v14 = Count;
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v12 + 336), v15);
        if (endpointCluster_isSubEndpointStaticLeader(a1, ValueAtIndex))
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_17;
        }
      }

      if (ValueAtIndex)
      {
        return ValueAtIndex;
      }
    }

LABEL_17:
    v11 = *(v12 + 336);
    goto LABEL_18;
  }

  if (a2 != 2)
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = CFArrayGetCount(*(v5 + 336));
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 336), v8);
        if (APSGetFBOPropertyInt64())
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      return ValueAtIndex;
    }

    return 0;
  }

  return endpointCluster_getSubEndpointVolumeLeader(a1);
}

uint64_t endpoint_copyPropertyFromEndpointDescription_cold_7()
{
  OUTLINED_FUNCTION_10_11();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_11_8();
    result = v2(v1);
  }

  else
  {
    result = 4294954514;
  }

  *v0 = result;
  return result;
}

uint64_t endpoint_isURLPlaybackEnabled(uint64_t a1)
{
  cf = 0;
  endpoint_copyIsURLPlaybackEnabled(a1, &cf);
  v1 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

uint64_t endpointCluster_copyMXDescriptor(uint64_t a1, CFMutableDictionaryRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpointCluster_copyMXDescriptor_cold_1();
    return 4294950575;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CC1450];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v7, &cf, &v81))
  {
    v8 = v81;
    if (!v81)
    {
LABEL_4:
      FigCFDictionarySetValue();
      goto LABEL_5;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v7, v4, &cf);
    v81 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  if (v8 != -12784 && v8 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x277CC1368];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v9, &cf, &v81))
  {
    v10 = v81;
    if (!v81)
    {
LABEL_9:
      FigCFDictionarySetValue();
      goto LABEL_10;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v9, v4, &cf);
    v81 = v10;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  if (v10 != -12784 && v10 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  v11 = *MEMORY[0x277CC1428];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v11, &cf, &v81))
  {
    v12 = v81;
    if (!v81)
    {
LABEL_14:
      FigCFDictionarySetValue();
      goto LABEL_15;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v11, v4, &cf);
    v81 = v12;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  if (v12 != -12784 && v12 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  v13 = *MEMORY[0x277CC1440];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v13, &cf, &v81))
  {
    v14 = v81;
    if (!v81)
    {
LABEL_19:
      FigCFDictionarySetValue();
      goto LABEL_20;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v13, v4, &cf);
    v81 = v14;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  if (v14 != -12784 && v14 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  v15 = *MEMORY[0x277CC1430];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v15, &cf, &v81))
  {
    v16 = v81;
    if (!v81)
    {
LABEL_24:
      FigCFDictionarySetValue();
      goto LABEL_25;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v15, v4, &cf);
    v81 = v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if (v16 != -12784 && v16 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  v17 = *MEMORY[0x277CC1550];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v17, &cf, &v81))
  {
    v18 = v81;
    if (!v81)
    {
LABEL_29:
      FigCFDictionarySetValue();
      goto LABEL_30;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v17, v4, &cf);
    v81 = v18;
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  if (v18 != -12784 && v18 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  v19 = *MEMORY[0x277CC1548];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v19, &cf, &v81))
  {
    v20 = v81;
    if (!v81)
    {
LABEL_34:
      FigCFDictionarySetValue();
      goto LABEL_35;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v19, v4, &cf);
    v81 = v20;
    if (!v20)
    {
      goto LABEL_34;
    }
  }

  if (v20 != -12784 && v20 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  v21 = *MEMORY[0x277CC1490];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v21, &cf, &v81))
  {
    v22 = v81;
    if (!v81)
    {
LABEL_39:
      FigCFDictionarySetValue();
      goto LABEL_40;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v21, v4, &cf);
    v81 = v22;
    if (!v22)
    {
      goto LABEL_39;
    }
  }

  if (v22 != -12784 && v22 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  v23 = *MEMORY[0x277CC12B8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v23, &cf, &v81))
  {
    v24 = v81;
    if (!v81)
    {
LABEL_44:
      FigCFDictionarySetValue();
      goto LABEL_45;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v23, v4, &cf);
    v81 = v24;
    if (!v24)
    {
      goto LABEL_44;
    }
  }

  if (v24 != -12784 && v24 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  v25 = *MEMORY[0x277CC1390];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v25, &cf, &v81))
  {
    v26 = v81;
    if (!v81)
    {
LABEL_49:
      FigCFDictionarySetValue();
      goto LABEL_50;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v25, v4, &cf);
    v81 = v26;
    if (!v26)
    {
      goto LABEL_49;
    }
  }

  if (v26 != -12784 && v26 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  v27 = *MEMORY[0x277CC12C0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v27, &cf, &v81))
  {
    v28 = v81;
    if (!v81)
    {
LABEL_54:
      FigCFDictionarySetValue();
      goto LABEL_55;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v27, v4, &cf);
    v81 = v28;
    if (!v28)
    {
      goto LABEL_54;
    }
  }

  if (v28 != -12784 && v28 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  v29 = *MEMORY[0x277CC12C8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v29, &cf, &v81))
  {
    v30 = v81;
    if (!v81)
    {
LABEL_59:
      FigCFDictionarySetValue();
      goto LABEL_60;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v29, v4, &cf);
    v81 = v30;
    if (!v30)
    {
      goto LABEL_59;
    }
  }

  if (v30 != -12784 && v30 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_60:
  if (cf)
  {
    CFRelease(cf);
  }

  v31 = *MEMORY[0x277CC12A8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v31, &cf, &v81))
  {
    v32 = v81;
    if (!v81)
    {
LABEL_64:
      FigCFDictionarySetValue();
      goto LABEL_65;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v31, v4, &cf);
    v81 = v32;
    if (!v32)
    {
      goto LABEL_64;
    }
  }

  if (v32 != -12784 && v32 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_65:
  if (cf)
  {
    CFRelease(cf);
  }

  v33 = *MEMORY[0x277CC12B0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v33, &cf, &v81))
  {
    v34 = v81;
    if (!v81)
    {
LABEL_69:
      FigCFDictionarySetValue();
      goto LABEL_70;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v33, v4, &cf);
    v81 = v34;
    if (!v34)
    {
      goto LABEL_69;
    }
  }

  if (v34 != -12784 && v34 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_70:
  if (cf)
  {
    CFRelease(cf);
  }

  v35 = *MEMORY[0x277CC12A0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v35, &cf, &v81))
  {
    v36 = v81;
    if (!v81)
    {
LABEL_74:
      FigCFDictionarySetValue();
      goto LABEL_75;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v35, v4, &cf);
    v81 = v36;
    if (!v36)
    {
      goto LABEL_74;
    }
  }

  if (v36 != -12784 && v36 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_75:
  if (cf)
  {
    CFRelease(cf);
  }

  v37 = *MEMORY[0x277CC1378];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v37, &cf, &v81))
  {
    v38 = v81;
    if (!v81)
    {
LABEL_79:
      FigCFDictionarySetValue();
      goto LABEL_80;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v37, v4, &cf);
    v81 = v38;
    if (!v38)
    {
      goto LABEL_79;
    }
  }

  if (v38 != -12784 && v38 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_80:
  if (cf)
  {
    CFRelease(cf);
  }

  v39 = *MEMORY[0x277CC1298];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v39, &cf, &v81))
  {
    v40 = v81;
    if (!v81)
    {
LABEL_84:
      FigCFDictionarySetValue();
      goto LABEL_85;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v39, v4, &cf);
    v81 = v40;
    if (!v40)
    {
      goto LABEL_84;
    }
  }

  if (v40 != -12784 && v40 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_85:
  if (cf)
  {
    CFRelease(cf);
  }

  v41 = *MEMORY[0x277CC1400];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v41, &cf, &v81))
  {
    v42 = v81;
    if (!v81)
    {
LABEL_89:
      FigCFDictionarySetValue();
      goto LABEL_90;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v41, v4, &cf);
    v81 = v42;
    if (!v42)
    {
      goto LABEL_89;
    }
  }

  if (v42 != -12784 && v42 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_90:
  if (cf)
  {
    CFRelease(cf);
  }

  v43 = *MEMORY[0x277CC1538];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v43, &cf, &v81))
  {
    v44 = v81;
    if (!v81)
    {
LABEL_94:
      FigCFDictionarySetValue();
      goto LABEL_95;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v43, v4, &cf);
    v81 = v44;
    if (!v44)
    {
      goto LABEL_94;
    }
  }

  if (v44 != -12784 && v44 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_95:
  if (cf)
  {
    CFRelease(cf);
  }

  v45 = *MEMORY[0x277CC1520];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v45, &cf, &v81))
  {
    v46 = v81;
    if (!v81)
    {
LABEL_99:
      FigCFDictionarySetValue();
      goto LABEL_100;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v45, v4, &cf);
    v81 = v46;
    if (!v46)
    {
      goto LABEL_99;
    }
  }

  if (v46 != -12784 && v46 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_100:
  if (cf)
  {
    CFRelease(cf);
  }

  v47 = *MEMORY[0x277CC1438];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v47, &cf, &v81))
  {
    v48 = v81;
    if (!v81)
    {
LABEL_104:
      FigCFDictionarySetValue();
      goto LABEL_105;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v47, v4, &cf);
    v81 = v48;
    if (!v48)
    {
      goto LABEL_104;
    }
  }

  if (v48 != -12784 && v48 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_105:
  if (cf)
  {
    CFRelease(cf);
  }

  v49 = *MEMORY[0x277CC1338];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v49, &cf, &v81))
  {
    v50 = v81;
    if (!v81)
    {
LABEL_109:
      FigCFDictionarySetValue();
      goto LABEL_110;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v49, v4, &cf);
    v81 = v50;
    if (!v50)
    {
      goto LABEL_109;
    }
  }

  if (v50 != -12784 && v50 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_110:
  if (cf)
  {
    CFRelease(cf);
  }

  v51 = *MEMORY[0x277CC13B0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v51, &cf, &v81))
  {
    v52 = v81;
    if (!v81)
    {
LABEL_114:
      FigCFDictionarySetValue();
      goto LABEL_115;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v51, v4, &cf);
    v81 = v52;
    if (!v52)
    {
      goto LABEL_114;
    }
  }

  if (v52 != -12784 && v52 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_115:
  if (cf)
  {
    CFRelease(cf);
  }

  v53 = *MEMORY[0x277CC14C8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v53, &cf, &v81))
  {
    v54 = v81;
    if (!v81)
    {
LABEL_119:
      FigCFDictionarySetValue();
      goto LABEL_120;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v53, v4, &cf);
    v81 = v54;
    if (!v54)
    {
      goto LABEL_119;
    }
  }

  if (v54 != -12784 && v54 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_120:
  if (cf)
  {
    CFRelease(cf);
  }

  v55 = *MEMORY[0x277CC1510];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v55, &cf, &v81))
  {
    v56 = v81;
    if (!v81)
    {
LABEL_124:
      FigCFDictionarySetValue();
      goto LABEL_125;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v55, v4, &cf);
    v81 = v56;
    if (!v56)
    {
      goto LABEL_124;
    }
  }

  if (v56 != -12784 && v56 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_125:
  if (cf)
  {
    CFRelease(cf);
  }

  v57 = *MEMORY[0x277CC13C0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v57, &cf, &v81))
  {
    v58 = v81;
    if (!v81)
    {
LABEL_129:
      FigCFDictionarySetValue();
      goto LABEL_130;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v57, v4, &cf);
    v81 = v58;
    if (!v58)
    {
      goto LABEL_129;
    }
  }

  if (v58 != -12784 && v58 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_130:
  if (cf)
  {
    CFRelease(cf);
  }

  v59 = *MEMORY[0x277CC11F8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v59, &cf, &v81))
  {
    v60 = v81;
    if (!v81)
    {
LABEL_134:
      FigCFDictionarySetValue();
      goto LABEL_135;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v59, v4, &cf);
    v81 = v60;
    if (!v60)
    {
      goto LABEL_134;
    }
  }

  if (v60 != -12784 && v60 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_135:
  if (cf)
  {
    CFRelease(cf);
  }

  v61 = *MEMORY[0x277CC1340];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v61, &cf, &v81))
  {
    v62 = v81;
    if (!v81)
    {
LABEL_139:
      FigCFDictionarySetValue();
      goto LABEL_140;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v61, v4, &cf);
    v81 = v62;
    if (!v62)
    {
      goto LABEL_139;
    }
  }

  if (v62 != -12784 && v62 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_140:
  if (cf)
  {
    CFRelease(cf);
  }

  v63 = *MEMORY[0x277CC1208];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v63, &cf, &v81))
  {
    v64 = v81;
    if (!v81)
    {
LABEL_144:
      FigCFDictionarySetValue();
      goto LABEL_145;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v63, v4, &cf);
    v81 = v64;
    if (!v64)
    {
      goto LABEL_144;
    }
  }

  if (v64 != -12784 && v64 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_145:
  if (cf)
  {
    CFRelease(cf);
  }

  v65 = *MEMORY[0x277CC1238];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v65, &cf, &v81))
  {
    v66 = v81;
    if (!v81)
    {
LABEL_149:
      FigCFDictionarySetValue();
      goto LABEL_150;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v65, v4, &cf);
    v81 = v66;
    if (!v66)
    {
      goto LABEL_149;
    }
  }

  if (v66 != -12784 && v66 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_150:
  if (cf)
  {
    CFRelease(cf);
  }

  v67 = *MEMORY[0x277CC13B8];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v67, &cf, &v81))
  {
    v68 = v81;
    if (!v81)
    {
LABEL_154:
      FigCFDictionarySetValue();
      goto LABEL_155;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v67, v4, &cf);
    v81 = v68;
    if (!v68)
    {
      goto LABEL_154;
    }
  }

  if (v68 != -12784 && v68 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_155:
  if (cf)
  {
    CFRelease(cf);
  }

  v69 = *MEMORY[0x277CC1350];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v69, &cf, &v81))
  {
    v70 = v81;
    if (!v81)
    {
LABEL_159:
      FigCFDictionarySetValue();
      goto LABEL_160;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v69, v4, &cf);
    v81 = v70;
    if (!v70)
    {
      goto LABEL_159;
    }
  }

  if (v70 != -12784 && v70 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_160:
  if (cf)
  {
    CFRelease(cf);
  }

  v71 = *MEMORY[0x277CC12F0];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v71, &cf, &v81))
  {
    v72 = v81;
    if (!v81)
    {
LABEL_164:
      FigCFDictionarySetValue();
      goto LABEL_165;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v71, v4, &cf);
    v81 = v72;
    if (!v72)
    {
      goto LABEL_164;
    }
  }

  if (v72 != -12784 && v72 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_165:
  if (cf)
  {
    CFRelease(cf);
  }

  v73 = *MEMORY[0x277CC1318];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v73, &cf, &v81))
  {
    v74 = v81;
    if (!v81)
    {
LABEL_169:
      FigCFDictionarySetValue();
      goto LABEL_170;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v73, v4, &cf);
    v81 = v74;
    if (!v74)
    {
      goto LABEL_169;
    }
  }

  if (v74 != -12784 && v74 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_170:
  if (cf)
  {
    CFRelease(cf);
  }

  v75 = *MEMORY[0x277CC1310];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (endpointCluster_copyStaticProperty(a1, v75, &cf, &v81))
  {
    v76 = v81;
    if (!v81)
    {
LABEL_174:
      FigCFDictionarySetValue();
      goto LABEL_175;
    }
  }

  else
  {
    endpointCluster_copyPropertyInternal(a1, v75, v4, &cf);
    v81 = v76;
    if (!v76)
    {
      goto LABEL_174;
    }
  }

  if (v76 != -12784 && v76 != -12787)
  {
    APSLogErrorAt();
  }

LABEL_175:
  if (cf)
  {
    CFRelease(cf);
  }

  v77 = *MEMORY[0x277CC1200];
  v81 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (!endpointCluster_copyStaticProperty(a1, v77, &cf, &v81))
  {
    endpointCluster_copyPropertyInternal(a1, v77, v4, &cf);
    v81 = v78;
    if (!v78)
    {
      goto LABEL_179;
    }

LABEL_325:
    if (v78 != -12784 && v78 != -12787)
    {
      APSLogErrorAt();
    }

    goto LABEL_180;
  }

  v78 = v81;
  if (v81)
  {
    goto LABEL_325;
  }

LABEL_179:
  FigCFDictionarySetValue();
LABEL_180:
  if (cf)
  {
    CFRelease(cf);
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t endpointCluster_anySubEndpointReportsTrueForProperty(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 336));
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 336), v5);
    if (APSGetFBOPropertyInt64())
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return 1;
}

void carPlayAnalytics_addValueToReportingString(uint64_t a1, __CFString *theString, double a3)
{
  if (a1)
  {
    if (theString)
    {
      Length = CFStringGetLength(theString);
      v7 = " ";
      if (!Length)
      {
        v7 = "";
      }

      CFStringAppendFormat(theString, 0, @"%s%@:%.3lf", v7, a1, *&a3);
    }

    else
    {
      carPlayAnalytics_addValueToReportingString_cold_1();
    }
  }

  else
  {
    carPlayAnalytics_addValueToReportingString_cold_2();
  }
}

CFStringRef carPlayAnalytics_createAnalyticsKeyForStreamType(int a1, CFStringRef format, uint64_t a3)
{
  v3 = a3 - 96;
  if (a3 - 96) < 0x19 && ((0x100FCF1u >> v3))
  {
    v4 = off_27849DFB8[v3];
  }

  else
  {
    v4 = "?";
    if (a3 == 130)
    {
      v4 = "RemoteControl";
    }
  }

  return CFStringCreateStringWithValidatedFormat(*MEMORY[0x277CBECE8], 0, @"%s", format, 0, v4);
}

uint64_t APCarPlay_AddAnalyticsValues(const void *a1, const __CFString *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v4 = objc_alloc_init(getCRSAppHistoryControllerClass());
  v14[5] = v4;
  if (!v4)
  {
    APSLogErrorAt();
    v10 = -6728;
LABEL_24:
    *(v20 + 6) = v10;
    goto LABEL_21;
  }

  if (CFStringCompare(a2, @"SessionStarted", 0) == kCFCompareEqualTo)
  {
    v5 = 0;
    goto LABEL_6;
  }

  if (CFStringCompare(a2, @"SessionEnded", 0))
  {
    APSLogErrorAt();
    v10 = -6735;
    goto LABEL_24;
  }

  v5 = 1;
LABEL_6:
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_AddAnalyticsValues(CFDictionaryRef, CFStringRef)", 33554462, "Calling addAnalyticsValues, inAnalyticsEventName: %@, inAnalyticsValues:\n%@\n", a2, a1);
  }

  if (IsAppleInternalBuild())
  {
    v6 = mach_absolute_time();
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v6 = 0;
  if (a1)
  {
LABEL_14:
    CFRetain(a1);
  }

LABEL_15:
  if (a2)
  {
    CFRetain(a2);
  }

  v7 = v14[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __APCarPlay_AddAnalyticsValues_block_invoke;
  v11[3] = &unk_27849FA00;
  v11[4] = &v19;
  v11[5] = v12;
  v11[8] = a1;
  v11[9] = v6;
  v11[6] = &v13;
  v11[7] = a2;
  [v7 addAnalyticsValues:a1 toEvent:v5 completion:v11];
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_AddAnalyticsValues(CFDictionaryRef, CFStringRef)", 33554462, "Returned from addAnalyticsValues\n");
  }

LABEL_21:
  v8 = *(v20 + 6);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v8;
}

void sub_22203BA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t getCRSAppHistoryControllerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__5;
  v0 = getCRSAppHistoryControllerClass_softClass;
  v7 = __Block_byref_object_dispose__5;
  v8 = getCRSAppHistoryControllerClass_softClass;
  if (!getCRSAppHistoryControllerClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getCRSAppHistoryControllerClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getCRSAppHistoryControllerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22203BB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22203C408(_DWORD *a1)
{
  v1 = a1[2] + 1520698633 * ((2 * (a1 & 0x48FF6608) - a1 + 922786295) ^ 0x9CEE8172);
  v2 = (*(*a1 + 16) >> 3) & 0x3F;
  *(*a1 + 24 + v2) = 0x80;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_22203C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = v34 - 152;
  STACK[0xD28] = a17;
  *(v34 - 144) = (a20 + 2089148240) ^ (439532179 * ((v34 - 152) ^ 0xDEA63D82));
  (*(a1 + 8 * (a20 + 1120)))(v34 - 152, a2, a3, a4, a5, a6, a7, a8);
  v36 = 2021301169 * ((217174587 - (v35 | 0xCF1D23B) + (v35 | 0xF30E2DC4)) ^ 0x78F87A64);
  STACK[0xD30] = a17;
  STACK[0xD28] = *(&off_2835705E0 + ((a20 + 519) ^ 0x3C7)) - 8;
  *(v34 - 136) = v36 + 469501837;
  *(v34 - 132) = (a20 + 227) ^ v36;
  (*(a34 + 8 * (a20 + 1083)))(v34 - 152);
  v37 = 2021301169 * ((~(v35 | 0x33F44066) + (v35 & 0x33F44066)) ^ 0x47FDE839);
  STACK[0xD28] = a12;
  *(v34 - 136) = v37 + 469501793;
  *(v34 - 132) = (a20 + 227) ^ v37;
  STACK[0xD30] = a17;
  (*(a34 + 8 * (a20 + 1083)))(v34 - 152);
  *a16 = *a17;
  LODWORD(STACK[0xC44]) = STACK[0xBEC];
  LODWORD(STACK[0xC48]) = STACK[0xBF0];
  STACK[0xC4C] = STACK[0xBF4];
  LODWORD(STACK[0xC54]) = STACK[0xBFC];
  v38 = *(a17 + 40);
  *(a16 + 24) = *(a17 + 24);
  *(a16 + 40) = v38;
  return (*(a34 + 8 * ((51 * ((((((a20 - 2009127629) & 0x77C0DBBD) - 494) | 0x304u) ^ 0x38ELL) == 64)) ^ (a20 - 2009127629) & 0x77C0DBBD)))(a34, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22203C810@<X0>(int a1@<W1>, uint64_t a2@<X2>, int a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  v10 = (v7 + 4 * v6);
  v11 = v6 + 1;
  *v10 = v10[397] ^ v8 ^ *(a2 + 4 * (*(v7 + 4 * v11) & 1)) ^ ((*(v7 + 4 * v11) & (((a5 - 434) | a1) + a3) | v5 & 0x80000000) >> 1);
  return (*(v9 + 8 * (((v11 == 227) * a4) ^ a5)))();
}

uint64_t sub_22203C870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27)
{
  v30 = *(*(v27 + 8 * (v28 - 979)) - 4);
  a13 = -95 * *v30 - 25;
  a14 = -95 * v30[1] - 25;
  a15 = -95 * v30[2] - 25;
  a16 = v30[3] * (((3 * (v28 ^ 0x61) - 68) & 0x35) - 95) - 25;
  a17 = -95 * v30[4] - 25;
  a18 = -95 * v30[5] - 25;
  a19 = -95 * v30[6] - 25;
  a20 = -95 * v30[7] - 25;
  a21 = -95 * v30[8] - 25;
  a22 = -95 * v30[9] - 25;
  a23 = -95 * v30[10] - 25;
  a24 = -95 * v30[11] - 25;
  a25 = -95 * v30[12] - 25;
  a26 = -95 * v30[13] - 25;
  a27 = -95 * v30[14] - 25;
  v31 = (*(v29 + 8 * (v28 ^ 0x238)))(a1, a2, a3, a4, a5, a6, a7, a8);
  v32 = (*(v29 + 8 * (v28 + 509)))(0, &a13, v31);
  return (*(v29 + 8 * ((125 * (v32 == 0)) ^ v28)))(v32, v33, v34, v35, v36);
}

uint64_t sub_22203C9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  *v20 = *a17;
  LODWORD(STACK[0xC44]) = STACK[0xBEC];
  LODWORD(STACK[0xC48]) = STACK[0xBF0];
  *(v17 + 2892) = *(v17 + 2804);
  LODWORD(STACK[0xC54]) = STACK[0xBFC];
  v21 = *(v18 - 88);
  *(v18 - 1) = *(v18 - 104);
  *v18 = v21;
  return (*(a3 + 8 * ((254 * (((16 * ((v19 | 0x100u) - 2)) ^ 0x37A0) != 32)) ^ ((v19 | 0x100) - 2))))(a1, a2);
}

uint64_t sub_22203C9B0@<X0>(uint64_t a1@<X1>, unsigned int *a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *a18 = 1;
  v29 = *a2;
  *(v28 - 120) = a6;
  *(v28 - 144) = (a3 + 1804447514) ^ a7;
  *(v28 - 128) = ((a3 + 1804447475) ^ 0x59) + a7;
  *(v28 - 124) = a7 | 1;
  *(v28 - 104) = -310332759 - a7 + a3;
  *(v28 - 112) = a3 + 1804447475 - a7;
  *(v28 - 136) = v29 - a7;
  v30 = (*(a1 + 8 * (a3 ^ v27)))(v28 - 144);
  return (*(a27 + 8 * *(v28 - 108)))(v30);
}

uint64_t sub_22203C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v31 = *(v26 + 4 * (v27 - 1));
  *(v26 + 4 * v27) = ((1566083941 * (v31 ^ (v31 >> 30))) ^ *(v26 + 4 * v27)) - v27;
  v32 = v30 - 152;
  *(v32 + 24) = a25;
  *(v30 - 112) = 1166607131 - v28 + v25;
  *(v32 + 8) = v27 + 1 - v28;
  *(v30 - 120) = v25 - 2038580541 - v28;
  *(v30 - 152) = (v25 - 2038580755) ^ v28;
  *(v30 - 136) = v28 + v25 - 2038580541 - 75;
  *(v30 - 132) = v28 ^ 1;
  v33 = (*(v29 + 8 * (v25 ^ 0xCB)))(v30 - 152, a2, a3, a4, a5, a6, a7, a8);
  return (*(v29 + 8 * *(v30 - 116)))(v33);
}

uint64_t sub_22203CAA4(uint64_t a1, int a2)
{
  v6 = (v4 + 32);
  v7 = (a1 + 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v3 != 32) * a2) ^ v2)))();
}

uint64_t sub_22203CAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v23 - 136) = (v21 + 623) ^ (1021229753 * ((v23 - 144) ^ 0xBEEDBBEA));
  *(v23 - 132) = ((((a20 ^ 0xF7) - 43) ^ ((a20 ^ 0xA) + 42) ^ (a20 + ((v21 + 102) ^ 0x53) - 50)) - 119) ^ (-71 * ((v23 + 112) ^ 0xEA));
  *(v23 - 144) = a1;
  *(v23 - 120) = v22 + 144;
  *(v23 - 131) = 93 - -71 * ((v23 + 112) ^ 0xEA);
  v24 = (*(v20 + 8 * (v21 + 902)))(v23 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v20 + 8 * ((79 * (*(v23 - 128) != 95751194)) ^ v21)))(v24);
}

uint64_t sub_22203CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unint64_t a45, unint64_t a46)
{
  *a27 = *a29;
  a27[1] = a29[1];
  a27[2] = a29[2];
  a27[3] = a29[3];
  a27[4] = a29[4];
  a27[5] = a29[5];
  return (*(v47 + 8 * (((v46 - 830) * (a46 < a45)) ^ v46)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22203CDF4@<X0>(int a1@<W8>)
{
  *(v2 - 7 + ~v5 + v3) = veor_s8(*(v1 - 7 + ~v5 + v3), 0x9C9C9C9C9C9C9C9CLL);
  v7 = ((a1 + 6) ^ 0xDDLL) + v5 == v3 - (v4 & 7);
  return (*(v6 + 8 * (((2 * v7) | (16 * v7)) ^ a1)))();
}

uint64_t sub_22203CE4C@<X0>(int a1@<W8>)
{
  v6 = v1;
  v5 = a1 + 827685407 * (((&v5 | 0x157FA1F5) - &v5 + (&v5 & 0xEA805E08)) ^ 0xEFD23A5) + 615;
  result = (*(v2 + 8 * (a1 ^ 0x4F9)))(&v5);
  *(v3 + 4) = 95751194;
  return result;
}

uint64_t sub_22203CEB8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + a8 - 1);
  v16 = (v15 ^ v13) + (v14 & (2 * v15)) - 12;
  v17 = v15 - 97;
  v18 = v15 + 3;
  if (((((((v8 + v9 - 96) ^ (v8 - 97)) + v11) & v12) ^ a4) & 0xFEu) <= v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  return (*(v10 + 8 * ((((v19 - 100) < 6u) * a5) ^ (v8 + v9 - 352) ^ (v8 + 415))))();
}

uint64_t sub_22203CF40()
{
  *(v4 - 152) = 55 * (((~(v4 + 88) | 0x28) + ((v4 + 88) | 0xD7)) ^ 0x9C) + (v0 + (v1 ^ 0xA1) - 5) * *(v2 + 6) + 5;
  *(v4 - 164) = (v1 + 1912812201) ^ (1511064119 * (((~(v4 - 168) | 0x3C1D5D28) + ((v4 - 168) | 0xC3E2A2D7)) ^ 0x4B9DFD9C));
  *(v4 - 160) = v2;
  v5 = (*(v3 + 8 * (v1 + 1328)))(v4 - 168);
  return (*(v3 + 8 * ((1223 * (*(v4 - 168) == 293435294)) ^ v1)))(v5);
}

uint64_t sub_22203D0D8()
{
  v5 = (v1 + 314) - 1089 + v0;
  v6 = *(v2 + v5 - 15);
  v7 = *(v2 + v5 - 31);
  v8 = v4 - 184 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v3 + 8 * ((52 * ((v0 & 0x7FFFFFE0) == 32)) ^ (v1 + 25))))();
}

uint64_t sub_22203D134(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = a2 ^ v5;
  v11 = (v6 - v4) < 0x20 || v9 < 8;
  return (*(v8 + 8 * (((a4 + (v7 ^ 0xD240389F) + ((v7 - 1055) | 0x42A) - 1203) * v11) ^ v7)))();
}

uint64_t sub_22203D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  (*(a4 + 8 * ((v34 + 790) ^ 0x58085595)))(a13 + 0x4094302000004DLL, 0x100004077774924, a3);
  v35 = (*(a32 + 8 * ((v34 - 26) ^ 0x58085595)))();
  *v33 = v35;
  v33[1] = 1812433253 * ((v35 >> 30) ^ v35) + 1;
  return (*(a32 + 6096))(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, v32, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_22203D258(uint64_t result)
{
  v1 = *(result + 8) ^ (44841361 * ((-2 - ((result | 0x365F344C) + (~result | 0xC9A0CBB3))) ^ 0xA9CE36EF));
  v2 = *result;
  *v2 = HIBYTE(v1) ^ 0x16;
  v2[1] = BYTE2(v1) ^ 0x44;
  v2[2] = BYTE1(v1) ^ 0xF6;
  v2[3] = v1 ^ 0x38;
  return result;
}

void Mib5yocT()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *(&off_2835705E0 + ((-119 * (dword_27CFF2070 ^ 0x98 ^ dword_27CFFD0A0)) ^ byte_2222A7DB0[byte_2222A58E0[(-119 * (dword_27CFF2070 ^ 0x98 ^ dword_27CFFD0A0))] ^ 0x8D]) - 215);
  v1 = *(&off_2835705E0 + (*(off_283570688 + (*(off_283570950 + (-119 * ((dword_27CFFD0A0 + *v0) ^ 0x98))) ^ 0x7Au) - 8) ^ (-119 * ((dword_27CFFD0A0 + *v0) ^ 0x98))) + 91);
  v2 = (*(v1 - 4) - *v0) ^ &v4;
  *v0 = (1667229833 * v2) ^ 0xD89E539CF9C77798;
  *(v1 - 4) = 1667229833 * (v2 ^ 0xD89E539CF9C77798);
  v5[1] = 1159261966 - 439532179 * ((v5 + 563738863 - 2 * (v5 & 0x2199F8EF)) ^ 0xFF3FC56D);
  LOBYTE(v1) = -119 * ((*(v1 - 4) - *v0) ^ 0x98);
  v3 = *(&off_2835705E0 + ((-119 * (dword_27CFF2070 ^ 0x98 ^ dword_27CFFD0A0)) ^ byte_22229CF10[byte_2222A7CB0[(-119 * (dword_27CFF2070 ^ 0x98 ^ dword_27CFFD0A0))] ^ 0x29]) + 61);
  (*(v3 + 8 * ((*(off_2835706E8 + (*(off_283570970 + v1 - 4) ^ 0x74u) - 12) ^ v1) + 1398)))(v5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22203D500@<X0>(uint64_t a1@<X3>, _OWORD *a2@<X4>, uint64_t a3@<X8>)
{
  v7 = a2[1];
  v8 = (a1 + a3);
  *v8 = *a2;
  v8[1] = v7;
  LODWORD(v8) = (v5 & 0x60) - v4 == -850;
  return (*(v6 + 8 * ((2 * v8) | (4 * v8) | v3)))();
}

uint64_t sub_22203D864(int a1)
{
  *(v1 + 4) = 0x396965E2C380BFCLL;
  *v1 = 20;
  v3 = ((a1 - 1583722669) & 0x5E65B166) + 12;
  v5 = (4 << ((((a1 + 83) & 0x66) - 1) & 0x55 ^ 0x54)) >= 8 && v1 != -12;
  v6 = *(v2 + 8 * ((22 * v5) ^ v3));
  return v6(v6, 283, 156, -1172284735);
}

uint64_t sub_22203D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 263) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(v10 + 262) = (&a10 + ((v12 - 33) ^ 0x28)) * (&a10 ^ 0xBB);
  return (*(v11 + 8 * ((v12 - 68) ^ 0x4C)))();
}

uint64_t sub_22203DA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, unsigned int a12, char *a13, uint64_t a14, uint64_t a15, int a16)
{
  a12 = v20 + 439532179 * ((((2 * &a12) | 0x581215C6) - &a12 - 738790115) ^ 0xF2AF3761) + 713;
  a14 = v17;
  a15 = v21 + v16;
  a13 = &a10;
  v22 = (*(v18 + 8 * (v20 + 1283)))(&a12, a2, a3, a4, a5, a6, a7, a8);
  return (*(v18 + 8 * ((891 * (a16 == ((v20 - 795101498) & 0x2F644D1D ^ v19))) ^ v20)))(v22);
}

uint64_t sub_22203DAEC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 12);
  *(v6 - 144) = (v5 + 1613849755) ^ (2072138273 * ((2 * ((v6 - 144) & 0x75CC798) - (v6 - 144) + 2023962727) ^ 0x91169A84));
  *(v6 - 135) = (v7 ^ 0xFC) - 33 * ((2 * ((v6 + 112) & 0x98) - (v6 + 112) + 103) ^ 0x84) + ((2 * v7) & 0xF8) + 48;
  *(v6 - 136) = ((((v3 ^ 0xF9) - 117) ^ ((v3 ^ 3) + 113) ^ ((v3 ^ 0x7B ^ (v5 + 120) ^ 3) - 110)) - 48) ^ (33 * ((2 * ((v6 + 112) & 0x98) - (v6 + 112) + 103) ^ 0x84));
  v8 = (*(v4 + 8 * (v5 + 976)))(v6 - 144);
  return (*(v4 + 8 * ((1783 * (*(v6 - 140) == 95751194)) ^ v5)))(v8, a2);
}

uint64_t sub_22203DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v12 + 1) = 5;
  *v11 = 0;
  v14 = bswap32(*(v10 + 8));
  v15 = (v14 + v10 + 11);
  *v15 = (&a9 ^ 0xBA) * (&a9 + 17);
  *(v15 - 1) = (&a9 + ((((v13 - 118) ^ 0x61) - 109) & 0xFB) + 90) * (&a9 ^ 0xBB);
  return (*(v9 + 8 * ((97 * (((v14 + 12) & (((v13 + 650) ^ 0x61u) + 0x1FFFFFCD5)) != 2)) ^ (v13 + 650) ^ 0x61)))(a1);
}

uint64_t sub_222042D80(unint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = a1 < a7;
  *(v7 + v11) = a3;
  if (v12 == v11 + 1 > (v9 ^ a2) + a4)
  {
    v12 = v8 + v11 + 847 < a1;
  }

  return (*(v10 + 8 * ((2 * v12) | (8 * v12) | v9)))();
}

uint64_t sub_222042DD4()
{
  v4 = v3 + 1618189698 + ((v1 - 2105750990) & 0x7D83350D);
  v6 = v4 > 0xCB4A77CA && -884312053 - v0 > v4;
  return (*(v2 + 8 * ((28 * v6) ^ v1)))();
}

uint64_t sub_222042E78@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = a1 < v8;
  v10 = *(v4 + v6);
  v11 = v6 + 1;
  *(v3 + a2) = v10 - ((v10 << (((v5 - 82) ^ 0x11) & 0xB5)) & 0x38) - 100;
  if (v9 == v11 > v7)
  {
    v9 = v11 + v8 < a1;
  }

  return (*(v2 + 8 * (v5 | (4 * !v9))))();
}

uint64_t sub_222042EEC(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18.n128_u64[0] = 0x9C9C9C9C9C9C9C9CLL;
  v18.n128_u64[1] = 0x9C9C9C9C9C9C9C9CLL;
  return (*(v16 + 8 * ((228 * (a15 - ((((v15 + 350) ^ 0x369uLL) + v17) << ((6 * ((v15 + 94) ^ 0x43)) ^ 4u)) < 0x20)) ^ (v15 + 350))))(a3, a4, a5, a6, a7, a8, a9, a10, a1, a2, v18);
}

uint64_t sub_222042F7C@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W6>, int a5@<W8>)
{
  HIDWORD(v16) = a1 ^ v15;
  LODWORD(v16) = a1 ^ 0x68000000;
  v17 = (v7 ^ 0x20D8D07C) & (a4 ^ a5) ^ a4 & 0xB1F01719;
  v18 = (a3 ^ v14) + (v16 >> 27) + (*(v5 + 4 * (a2 + v11)) ^ v13) + (v17 & 0x57281115 ^ 0x46081014 ^ (v17 ^ 0x6EDFF8FE) & (v6 ^ 0x39FF298F) | a4 & 0x45045CF3 ^ 0x44041892 ^ (v7 ^ 0x2BD36469) & (a4 ^ v14)) + 142371045;
  v19 = (v18 ^ 0x461F53F6) & (2 * (v18 & 0x869F53F7)) ^ v18 & 0x869F53F7;
  v20 = ((2 * (v18 ^ 0x4F1152BA)) ^ 0x931C029A) & (v18 ^ 0x4F1152BA) ^ (2 * (v18 ^ 0x4F1152BA)) & v9;
  v21 = v20 ^ 0x48820145;
  v22 = (v20 ^ 0xC0008) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x26380534) & v21 ^ (4 * v21) & v9;
  v24 = (v23 ^ 0x80100) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC9860049)) ^ 0x98E014D0) & (v23 ^ 0xC9860049) ^ (16 * (v23 ^ 0xC9860049)) & (v9 - 12);
  v26 = v24 ^ (v9 + 1) ^ (v25 ^ 0x88800000) & (v24 << 8);
  return (*(v10 + 8 * ((29 * (a2 + 1 != v12 + 60)) ^ v8)))(v18 ^ (2 * ((v26 << 16) & 0x498E0000 ^ v26 ^ ((v26 << 16) ^ 0x14D0000) & (((v25 ^ 0x410E010D) << 8) & (v9 - 332) ^ 0x418E0000 ^ (((v25 ^ 0x410E010D) << 8) ^ 0xE010000) & (v25 ^ 0x410E010D)))) ^ 0x794C69F7);
}

uint64_t sub_222043448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32)
{
  v38 = v33 - v34 - 146;
  v39 = (*(v32 + 8 * (v33 + 749)))(a31 + 4, 0, a3, a4, a5, a6, a7, a8);
  v40 = a31[4] + 1333457439 - ((2 * a31[4]) & 0x9EF5E43E);
  a31[1] = a31[6] + 1333457439 - ((v38 ^ 0xC6FDB1AB) & (2 * a31[6]));
  a31[2] = v40;
  v41 = v33 + 757;
  v42 = (*(a32 + 8 * v41))(v39);
  a31[3] = v42 + 1333457439 - ((2 * v42) & 0x9EF5E43E);
  v43 = (*(a32 + 8 * v41))();
  *a31 = v43 + 1333457439 - ((2 * v43) & 0x9EF5E43E);
  v44 = 1511064119 * ((v37 - 144) ^ 0x9D8EB5BC887F5F4ALL);
  v35[1] = (*a31 ^ 0x4F7AF21F) + ((1664525 * (*v35 ^ (*v35 >> 30))) ^ v35[1]);
  *(v37 - 144) = (v38 + 1683596189) ^ v44;
  *(v37 - 120) = 623 - v44;
  *(v37 - 128) = ((v38 + 1683596197) ^ 0x90) + v44;
  *(v37 - 124) = v44 | 1;
  *(v37 - 112) = v38 + 1683596197 - v44;
  *(v37 - 104) = -310332759 - v44 + v38;
  *(v37 - 136) = 2 - v44;
  v45 = (*(a32 + 8 * (v38 ^ v36)))(v37 - 144);
  return (*(a32 + 8 * *(v37 - 108)))(v45);
}

uint64_t sub_2220436B0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v32 = a1 - 4;
  v33 = (a1 + 1991425306) & 0x894D42DF;
  v34 = (a1 + 21) | 0x496;
  *(v31 - 120) = v30 + 12;
  *(v31 - 112) = a1 - 4 - 2021301169 * (((v31 - 144) & 0x520BC394 | ~((v31 - 144) | 0x520BC394)) ^ 0x26026BCB) + 595;
  *(v31 - 144) = a23;
  *(v31 - 136) = &a28;
  (*(v28 + 8 * ((a1 - 4) ^ 0x62F)))(v31 - 144);
  return (*(v28 + 8 * (((*(v31 - 128) == v29) * (v34 ^ v33 ^ 0x6CB)) ^ v32)))(a25);
}

uint64_t sub_2220437E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, __int16 a22)
{
  *v23 = v27;
  v29 = *v24;
  *(v29 + 3) = 16908633;
  *(v29 + 2) = 76;
  *v29 = 20550;
  *(v29 + 7) = 0;
  *(v29 + 8) = bswap32(((2 * (a14 ^ 0x4C1)) ^ 0x33E) + v25);
  *(v29 + 12) = *v22;
  *(v29 + 13) = 0;
  *(v29 + 14) = a11;
  *(v29 + 15) = 0;
  a22 = (((&a19 - 2 * (&a19 & 0x3935C7BE) - 14402) ^ 0xFA3C) * v28) ^ 0xE4F;
  a21 = (a14 - 37) ^ (((&a19 - 2 * (&a19 & 0x3935C7BE) + 959825854) ^ 0xE793FA3C) * v28);
  a19 = v29 + 16;
  v30 = (*(v26 + 8 * (a14 + 254)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  *(v29 + 32) = bswap32(a13);
  return (*(v26 + 8 * ((221 * (v25 == (((a14 - 45) ^ 0xF650CCEE) & (2 * v25)))) ^ a14)))(v30);
}

uint64_t sub_222043910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *a1 = 1498173510;
  *(a1 + 4) = v21 ^ 0x18;
  *(a1 + 5) = 513;
  *(a1 + 7) = 0;
  *(a1 + 8) = -2113929216;
  *(a1 + 12) = 2;
  *(a1 + 13) = *(v20 + 14);
  *(v24 - 128) = (v23 + 702) ^ (344723623 * ((((v24 - 144) | 0x52A8889B) - (v24 - 144) + ((v24 - 144) & 0xAD577760)) ^ 0xA50BE552));
  *(v24 - 140) = (4263 * ((((v24 - 144) | 0x889B) - (v24 - 144) + ((v24 - 144) & 0x7760)) ^ 0xE552)) ^ 0x32D6;
  *(v24 - 136) = a1 + 14;
  v26 = (*(v22 + 8 * (v23 + 1280)))(v24 - 144, a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 14) = 256;
  v27 = a1 - a20 - 118 < ((v23 + 12) ^ 0x13DuLL);
  return (*(v22 + 8 * ((4 * v27) | (8 * v27) | v23)))(v26);
}

uint64_t sub_222043D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, char a32)
{
  v62 = *(v34 + 8 * v32);
  v53 = &a32 + a30;
  v54 = *(a18 + 76);
  v56 = *(a18 + 80);
  v55 = *(a18 + 84);
  v57 = *(a18 + 96);
  if (v57 == 2)
  {
    v60 = (v33 + v38 + 568841313);
    v61 = ((*v60 ^ v39) << 24) | ((v60[1] ^ v39) << 16) | ((v60[2] ^ v39) << 8);
    *v53 = (v61 | v60[3] ^ v39) + v36 - 2 * ((v61 | v60[3] ^ v39) & 0x7EB2B15F ^ (v60[3] ^ v39) & 1);
    return (*(v34 + 8 * ((((v38 + 568841317) < 0x40) | (32 * ((v38 + 568841317) < 0x40))) ^ a29)))(v54);
  }

  else if (v57 == 1)
  {
    v59 = *(v33 + v38 + 568841313) ^ v39 | ((*(v33 + v38 + 568841313 + 1) ^ (v37 + 110)) << 8) | ((*(v33 + v38 + 568841313 + 2) ^ v39) << 16) | ((*(v33 + v38 + 568841313 + 3) ^ v39) << 24);
    *&v53[4 * (v35 ^ 0x879F518)] = v59 + v36 - ((2 * v59) & 0xFD6562BC);
    return (*(v34 + 8 * (((2 * ((v38 + 568841317) > 0x3F)) | (4 * ((v38 + 568841317) > 0x3F))) ^ (v37 - 515))))(v54);
  }

  else
  {
    v40 = (((*(a18 + 72) ^ 0xD896D8BA) + 661202758) ^ ((*(a18 + 72) ^ 0xEC8F9E92) + 326132078) ^ ((*(a18 + 72) ^ 0x5ACE7EB2) - 1523482290)) + (((*(a18 + 72) ^ 0x183A9245) - 406491717) ^ ((*(a18 + 72) ^ 0x24C580C9) - 616923337) ^ ((*(a18 + 72) ^ 0x52282A16) - 1378363926)) - 166019446;
    v41 = v40 ^ ((v40 ^ 0xD5FB4BDB) + 845740403) ^ ((v40 ^ 0xA1CC0881) + 1180678697) ^ ((v40 ^ 0x9384F273) + 1947680987) ^ ((v40 ^ 0xFFDFFC7F) + 407654103) ^ 0x76BB75CC;
    v42 = (((v54 ^ 0x528522C) - 86528556) ^ ((v54 ^ 0x30FA23E4) - 821699556) ^ ((v54 ^ 0x5B054952) - 1527073106)) + (((*(a18 + 76) ^ 0xEAF92146) + 352771770) ^ ((*(a18 + 76) ^ 0xEB9D4A14) + 342013420) ^ ((*(a18 + 76) ^ 0x6FB353C8) - 1874023368)) + 1013324049;
    v43 = (v42 ^ 0x3C4C3FA2) & (2 * (v42 & 0xA1485823)) ^ v42 & 0xA1485823 ^ (((((v42 & 0xA1485823) >> 12) & 1) << 13) | 0x10004600);
    v44 = (2 * (v42 ^ 0x3C4C3FA2)) & 0x9D046780 ^ 0x85042081 ^ ((2 * (v42 ^ 0x3C4C3FA2)) ^ 0x3A08CF02) & (v42 ^ 0x3C4C3FA2);
    v45 = (4 * v43) & 0x9D046780 ^ v43 ^ ((4 * v43) ^ 0x40011800) & v44;
    v46 = (4 * v44) & 0x9D046780 ^ 0x89046181 ^ ((4 * v44) ^ 0x74119E04) & v44;
    v47 = (16 * v45) & 0x9D046780 ^ v45 ^ ((16 * v45) ^ 0x46000) & v46;
    v48 = (16 * v46) & 0x9D046780 ^ 0xD000781 ^ ((16 * v46) ^ 0xD0467810) & v46;
    v49 = v47 ^ 0x89044181 ^ (v47 << 8) & 0x9D046700 ^ ((v47 << 8) ^ 0x4260000) & v48;
    *(a18 + 72) = v41;
    *(a18 + 76) = v42 ^ (2 * ((v49 << 16) & 0x1D040000 ^ v49 ^ ((v49 << 16) ^ 0x67810000) & ((v48 << 8) & 0x1D040000 ^ 0x19000000 ^ ((v48 << 8) ^ 0x4670000) & v48))) ^ 0xFF97AFBB;
    v50 = (((v56 ^ 0xF92989E8) + 114718232) ^ ((v56 ^ 0x7AE2EB2) - 128855730) ^ ((v56 ^ 0x90509FC0) + 1873764416)) + (((*(a18 + 80) ^ 0xFD978895) + 40400747) ^ ((*(a18 + 80) ^ 0xF400959E) + 201288290) ^ ((*(a18 + 80) ^ 0x67402591) - 1732257169)) + 1347799582;
    v51 = (((v55 ^ 0xD2BCEFB7) + 759369801) ^ ((v55 ^ 0x51383F5B) - 1362640731) ^ ((v55 ^ 0xED53E876) + 313268106)) + (((*(a18 + 84) ^ 0x5031034F) - 1345389391) ^ ((*(a18 + 84) ^ 0xA4971A3) - 172585379) ^ ((*(a18 + 84) ^ 0x34AF4A76) - 883903094)) - 71760699;
    *(a18 + 80) = v50 ^ ((v50 ^ 0x204CDC1D) - 1391166711) ^ ((v50 ^ 0x6F04C07E) - 497260692) ^ ((v50 ^ 0x52383B66) - 547316620) ^ ((v50 ^ 0x6FD77FEF) - 493889285) ^ 0x1C706070;
    *(a18 + 84) = v51 ^ ((v51 ^ 0x74F1D98B) - 1794853402) ^ ((v51 ^ 0xA6F394F6) + 1191639193) ^ ((v51 ^ 0x33E70113) - 770544258) ^ ((v51 ^ 0xFFEFDFFF) + 505066386) ^ 0x70DDAB0B;
    return v62(486801408, 2298757505, a18, a23, a22, HIDWORD(a21), 3834510960, 968312894, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }
}

uint64_t sub_222043E8C()
{
  if (v3 <= ((v4 + 218) ^ (v1 + 2131)) + v0)
  {
    v6 = 16 - v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v5 + 8 * (v4 + 408)))(v3 + v6 + 56, 0x100004077774924);
  *v2 = v7;
  return (*(v5 + 8 * ((178 * (v7 != 0)) ^ v4)))(v7, v8, v9, v10, v11);
}

uint64_t sub_222043F14(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7, uint64_t a8)
{
  v18 = (v14 + 32 * a8);
  v19 = *(v11 + 9) * v12 % a2;
  *v18 = v8 + ((v16 + ((v19 + a5 - (v15 & (2 * v19))) << 10)) ^ (a4 + a6 - 502));
  *v9 += 1024;
  v20 = *(v11 + 9) * (v12 + 1) % a2;
  v18[1] = v8 + ((v16 + ((v20 + a5 - (v15 & (2 * v20))) << 10)) ^ a4);
  *v9 += 1024;
  v21 = *(v11 + 9) * (v12 + 2) % a2;
  v18[2] = v8 + ((v16 + ((v21 + a5 - (v15 & (2 * v21))) << 10)) ^ a4);
  *v9 += 1024;
  v22 = *(v11 + 9) * (v12 + 3) % a2;
  v18[3] = v8 + ((v16 + ((v22 + a5 - (v15 & (2 * v22))) << 10)) ^ a4);
  *v9 += 1024;
  return (*(v10 + 8 * (((a8 + 1 == v13) * v17) | a7)))(a1);
}

uint64_t sub_222044130@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v8 = v6 - 1;
  *(a2 + v8) = *(v3 + (v8 & 0xF)) ^ *(v2 + v8) ^ *((v8 & 0xF) + v4 + 2) ^ *((v8 & 0xF) + v5 + 6) ^ ((v8 & 0xF) * ((62 * (a1 ^ 0x62)) ^ 0x97));
  return (*(v7 + 8 * ((a1 - 110) | (8 * (v8 == 0)))))();
}

uint64_t sub_222044198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, unint64_t a22, uint64_t a23, _DWORD *a24)
{
  *a24 = v26 + 1 - ((((v26 ^ 0x13FF) & v26) >> (__clz(v26 ^ 0x13FF | 1) ^ (((v28 - 126) ^ 0x95) - 75))) & 1);
  v29 = ((v25 ^ (v25 >> 11)) << 7) & 0x9D2C5680 ^ v25 ^ (v25 >> 11);
  *(*a20 + a22) ^= (v29 << (((v28 - 126) ^ 0x95) - 91)) & v27 ^ v29 ^ (((v29 << (((v28 - 126) ^ 0x95) - 91)) & v27 ^ v29) >> 18);
  return (*(v24 + 8 * ((v28 + 386) ^ 0x58085595 ^ (227 * (a22 < 0x1FC)))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_222044260()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x13D)))();
  v3 = (*(v0 + 8 * (v1 + 352)))();
  return (*(v0 + 8 * (((v2 == v3) * ((((v1 - 1217) | 0x10E) + 1086) ^ v1 ^ 0xC2)) ^ v1)))(v3, v4);
}

uint64_t sub_2220442C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + v8 + 16);
  v11 = (v7 + v8);
  *v11 = *(a5 + v8);
  v11[1] = v10;
  return (*(v9 + 8 * ((2 * (v5 == v8)) | (4 * (v5 == v8)) | v6)))();
}

uint64_t sub_2220442F8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 3 * (a1 ^ 0x222);
  *(a10 + 141) = (v30 - 4 + &a29) * (&a29 ^ 0xBA);
  *(a10 + 140) = (&a29 ^ 0xBB) * (&a29 + 18);
  return (*(v29 + 8 * (v30 ^ 0x30)))(a10);
}

void sub_22204438C(uint64_t a1)
{
  v1 = *(a1 + 16) + 827685407 * (a1 ^ 0x1B828250);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_2220444EC()
{
  if (v0)
  {
    v2 = 981;
  }

  else
  {
    v2 = 980;
  }

  return (*(v1 + 8 * v2))();
}

uint64_t sub_222044510@<X0>(int a1@<W8>)
{
  v5 = (v2 ^ 0xFFFFFFFFFFFFFD3CLL ^ ((v3 - 1254) | 0x2C3u)) + v1;
  v6 = __CFADD__(a1, v5);
  v7 = HIDWORD(v5);
  v9 = v6 || v7 != 0;
  return (*(v4 + 8 * ((v9 * (((v3 - 1254) ^ 0xA6) - 156)) ^ v3)))();
}

uint64_t sub_222044564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14)
{
  v18 = (*(v14 + 8 * (v16 + 1047)))(a13 - *(v15 + 14), 0x100004077774924, a3, a4, a5, a6, a7, a8);
  *v17 = v18;
  return (*(v14 + 8 * (((v18 != 0) * ((v16 + 368) ^ 0x34F)) ^ v16)))(a14);
}

uint64_t sub_2220445CC()
{
  *v1 = v3 - 352 + v1[623] - (((((v3 - 352) ^ v0) & v0) >> (__clz((v3 - 352) ^ v0 | 1) ^ 0x1F)) & 1) - 622;
  v5 = ~(((v3 - 740) ^ 0xFFFFFD7A) + v3 - 352) + v2 == ((v3 - 740) ^ 0xEB);
  return (*(v4 + 8 * (((2 * v5) | (16 * v5)) ^ (v3 - 740))))();
}

uint64_t sub_222044618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v35 = v32 ^ v33;
  *v34 = (v32 ^ v33) + 670542443 + (((a15 - v32) | (v32 - a15)) >> 31);
  (*(a3 + 8 * (v32 + 1533)))(a30, a2);
  v36 = vld1q_dup_f32(v34);
  v37.i64[0] = 0x8000000080000000;
  v37.i64[1] = 0x8000000080000000;
  v38.i64[0] = 0x100000001;
  v38.i64[1] = 0x100000001;
  v39.i64[0] = *(v34 + 4);
  v39.i32[2] = *(v34 + 12);
  v40 = vextq_s8(v36, v39, 0xCuLL);
  v41 = v39;
  v41.i32[3] = *(v34 + 16);
  v42 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v41, vnegq_f32(v38)), vandq_s8(v40, v37)), 1uLL), *(v34 + 1588));
  v40.i32[0] = *(&STACK[0x4E8] + (*(v34 + 4) & (103 * (v35 ^ 0x5808559Fu) - 1029)));
  v40.i32[1] = *(&STACK[0x4E8] + (*(v34 + 8) & 1));
  v40.i32[2] = *(&STACK[0x4E8] + (*(v34 + 12) & 1));
  v40.i32[3] = *(&STACK[0x4E8] + (v41.i8[12] & 1));
  *v34 = veorq_s8(vaddq_s32(vsubq_s32(v42, vandq_s8(vaddq_s32(v42, v42), vdupq_n_s32(0x5168AEF6u))), vdupq_n_s32(0xA8B4577B)), v40);
  return (*(a32 + 8 * (v35 - 1476940142)))();
}

uint64_t sub_22204483C@<X0>(unint64_t a1@<X8>)
{
  v7 = a1 + v4;
  v8 = (v5 - 1197) & (v4 + 15);
  v9 = v1 - v4 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 + v2 + 2;
  v12 = v8 + v3;
  v13 = v12 + ((v5 + 254) ^ 0x5BELL) - v4;
  v14 = v12 + 4;
  v16 = v11 > a1 && v11 - v4 < v7;
  v18 = v10 > a1 && v9 < v7 || v16;
  if (v14 <= a1 || v13 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((78 * v20) ^ v5)))();
}

uint64_t sub_222044914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, char a12, char a13, int a14, uint64_t a15)
{
  a15 = v17 + 12;
  a10 = v18;
  a11 = (v19 + 1104) ^ (1021229753 * ((2 * (&a10 & 0x5754798) - &a10 - 91572124) ^ 0x4467038E));
  a13 = 93 - -71 * ((2 * (&a10 & 0x98) - &a10 + 100) ^ 0x8E);
  a12 = ((v15 ^ 0x4D) + ((2 * v15) & 0xF3 ^ 0x60) - 17) ^ (-71 * ((2 * (&a10 & 0x98) - &a10 + 100) ^ 0x8E));
  (*(v16 + 8 * (v19 ^ 0x69B)))(&a10, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8 * (((a14 != 95751194) * (((v19 - 614228675) & 0x249C627D) + 312)) ^ v19)))(a1);
}

uint64_t sub_222044A58()
{
  v6 = *v4;
  *(v3 - 1) = *(v4 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v2 == 0) * v1) | v0)))();
}

uint64_t sub_222044AFC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a1 <= 0x30)
  {
    v7 = 48;
  }

  else
  {
    v7 = a1;
  }

  return (*(v5 + 8 * ((319 * (((((a5 + 106) ^ (v6 - 632)) + v7 + 1) & 0x7FFFFFC0) == v6)) ^ (a5 + 106))))();
}

uint64_t sub_222044F2C@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 1);
  *v1 = 2;
  return (*(v4 + 8 * (((v5 == 72) * (v2 ^ 0x475)) ^ a1)))();
}

uint64_t sub_222044F64@<X0>(_BYTE *a1@<X2>, unint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _BYTE *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = v42 - 849;
  v45 = (v44 - 2054160150) | 0x122688CD;
  v46 = v45 + 50;
  v87 = *(v43 + 8 * v44);
  v90 = (v45 - 758122958) & 0x957983A8;
  v89 = *(a42 + 18);
  v47 = *(a42 + 19);
  v48 = *(a3 - 12);
  v49 = *(a3 - 8);
  LOBYTE(v44) = *(a3 - 4);
  v50 = *(a3 - 3);
  v51 = *(a3 - 7);
  v52 = *(a3 - 11);
  LOBYTE(v45) = *(a3 - 15);
  v88 = (v46 & 0xA8 ^ 0xABu) % v47;
  v53 = *(a3 - 14);
  v54 = *(a3 - 6);
  v55 = *(a3 - 10);
  v56 = *(a3 - 2);
  v57 = *(a3 - 13);
  v58 = *(a3 - 9);
  v59 = *(a3 - 5);
  v60 = *(a3 - 1);
  v61 = *(a25 - 15) ^ *(*(a26 - 15) + (*a1 ^ (v90 - 12)));
  *a1 = v61 ^ a2;
  v62 = *(a25 - 11) ^ *(*(a26 - 11) + (v48 ^ a2));
  *(a3 - 12) = v62 ^ a2;
  v63 = *(a25 - 7) ^ *(*(a26 - 7) + (v49 ^ a2));
  *(a3 - 8) = v63 ^ a2;
  v64 = *(a25 - 3) ^ *(*(a26 - 3) + (v44 ^ a2));
  *(a3 - 4) = v64 ^ a2;
  LOBYTE(v44) = *(a25 - 2) ^ *(*(a26 - 2) + (v51 ^ a2));
  *(a3 - 3) = v44 ^ a2;
  v65 = *(a25 - 6) ^ *(*(a26 - 6) + (v52 ^ a2));
  *(a3 - 7) = v65 ^ a2;
  v66 = *(a25 - 10) ^ *(*(a26 - 10) + (v45 ^ a2));
  *(a3 - 11) = v66 ^ a2;
  LOBYTE(v45) = *(a25 - 14) ^ *(*(a26 - 14) + (v50 ^ a2));
  *(a3 - 15) = v45 ^ a2;
  v67 = *(a25 - 13) ^ *(*(a26 - 13) + (v54 ^ a2));
  *(a3 - 14) = v67 ^ a2;
  v68 = *(a25 - 5) ^ *(*(a26 - 5) + (v53 ^ a2));
  *(a3 - 6) = v68 ^ a2;
  v69 = *(a25 - 9) ^ *(*(a26 - 9) + (v56 ^ a2));
  *(a3 - 10) = v69 ^ a2;
  v70 = *(a25 - 1) ^ *(*(a26 - 1) + (v55 ^ a2));
  *(a3 - 2) = v70 ^ a2;
  v71 = *(a25 - 12) ^ *(*(a26 - 12) + (v58 ^ a2));
  *(a3 - 13) = v71 ^ a2;
  v72 = *(a25 - 8) ^ *(*(a26 - 8) + (v59 ^ a2));
  *(a3 - 9) = v72 ^ a2;
  v73 = *(a25 - 4) ^ *(*(a26 - 4) + (v60 ^ a2));
  *(a3 - 5) = v73 ^ a2;
  v74 = *a25 ^ *(*a26 + (v57 ^ a2));
  *(a3 - 1) = v74 ^ a2;
  v75 = (a42 + ((8 % v89) << 7));
  v76 = *(v75[148] + 4 * v45) ^ *(v75[147] + 4 * v61) ^ *(v75[149] + 4 * v67) ^ *(v75[150] + 4 * v71);
  *(a3 - 13) = HIBYTE(v76) ^ 0x9C;
  *(a3 - 14) = BYTE2(v76) ^ 0x9C;
  *(a3 - 15) = BYTE1(v76) ^ 0x9C;
  *a1 = v76 ^ 0x9C;
  v77 = &v75[4 * (v47 != 1) + 147];
  LODWORD(v77) = *(*(v77 + 8) + 4 * v66) ^ *(*v77 + 4 * v62) ^ *(*(v77 + 16) + 4 * v69) ^ *(*(v77 + 24) + 4 * v72);
  *(a3 - 9) = BYTE3(v77) - ((v77 >> 23) & 0x38) - 100;
  *(a3 - 10) = BYTE2(v77) - ((v77 >> 15) & 0x38) - 100;
  *(a3 - 11) = BYTE1(v77) - ((v77 >> 7) & 0x38) - 100;
  v78 = v77 ^ 0xFFFFFF9C;
  *(a3 - 12) = v77 ^ 0x9C;
  v79 = &v75[4 * (2 % v47) + 147];
  v80 = *(v79[1] + 4 * v65) ^ *(*v79 + 4 * v63) ^ *(v79[2] + 4 * v68) ^ *(v79[3] + 4 * v73);
  *(a3 - 5) = (~(v80 >> 23) | 0xC7) + HIBYTE(v80) - 99;
  *(a3 - 6) = BYTE2(v80) - ((v80 >> 15) & 0x38) - 100;
  *(a3 - 7) = BYTE1(v80) - ((v80 >> 7) & 0x38) - 100;
  *(a3 - 8) = v80 - ((2 * v80) & 0x38) - 100;
  v81 = &v75[4 * v88 + 147];
  v82 = *(*v81 + 4 * v64);
  v83 = *(*(v81 + 8) + 4 * v44);
  v84 = *(v81 + 16);
  LODWORD(v81) = *(*(v81 + 24) + 4 * v74);
  v85 = v82 ^ 0x8DBA06DE ^ v83 ^ *(v84 + 4 * v70) ^ (v81 - 1917188386 - ((2 * v81) & 0x1B740DBC));
  LODWORD(v81) = (v85 >> 8) - ((v85 >> 7) & 0x38);
  *(a3 - 1) = HIBYTE(v85) - ((v85 >> 23) & 0x38) - 100;
  *(a3 - 2) = BYTE2(v85) - ((v85 >> 15) & 0x38) - 100;
  *(a3 - 3) = v81 - 100;
  *(a3 - 4) = v85 - ((2 * v85) & 0x38) - 100;
  return (*(a32 + 8 * v90))(*(a32 + 8 * v90), 8, v90, (v81 - 100), v78, 0, a2, v75 + 147, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v87, a31, a32, v88);
}

uint64_t sub_222044FDC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v10 = a7[1];
  *(v8 + a6) = *a7;
  *(v8 + a6 + 16) = v10;
  return (*(v9 + 8 * ((95 * (((((((v7 - 1103) | 0x220) ^ 0xFFFFFFC3) & a2) == 32) ^ (53 * (((v7 - 79) | 0x20) ^ 0x24))) & 1)) ^ ((v7 - 1103) | 0x220))))();
}

uint64_t sub_222045044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v37 = v35 + v33 + 112;
  v38 = (*(v32 + 8 * (v33 | 0x146)))(&STACK[0x500], 0, a3, a4, a5, a6, a7, a8);
  v39 = LODWORD(STACK[0x508]) + 148739216 - ((2 * LODWORD(STACK[0x508])) & 0x11BB2920);
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x500]) + (v37 ^ 0x50D5C105) - ((2 * LODWORD(STACK[0x500])) & 0x11BB2920);
  LODWORD(STACK[0x4F4]) = v39;
  v40 = (*(a32 + 8 * (v33 + 334)))(v38);
  LODWORD(STACK[0x4FC]) = v40 + 148739216 - ((2 * v40) & 0x11BB2920);
  v41 = (*(a32 + 8 * (v33 ^ 0x15E)))();
  LODWORD(STACK[0x4F0]) = v41 + 148739216 - ((2 * v41) & 0x11BB2920);
  v34[1] = (LODWORD(STACK[0x4F0]) ^ 0x8DD9490) + ((1664525 * (*v34 ^ (*v34 >> 30))) ^ v34[1]);
  *(v36 - 120) = a28;
  *(v36 - 144) = a29 ^ (v37 + 1905148400) ^ 0x51;
  *(v36 - 136) = 2 - a29;
  *(v36 - 104) = -310332759 - a29 + v37;
  *(v36 - 112) = v37 + 1905148400 - a29;
  *(v36 - 128) = ((v37 + 1905148400) ^ 0x70) + a29;
  *(v36 - 124) = a29 ^ 1;
  v42 = (*(a32 + 8 * (v37 - 1476939693)))(v36 - 144);
  return (*(a32 + 8 * *(v36 - 108)))(v42);
}

uint64_t sub_2220453F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v30 = 1021229753 * ((((v29 - 136) ^ 0x51507ACC) + 943157138 - 2 * (((v29 - 136) ^ 0x51507ACC) & 0x38376F92)) ^ 0xD78AAEB4);
  v31 = (*(v27 + 96) - ((2 * *(v27 + 96)) & 0x1CDE375C) + 242162606) ^ v30;
  *(v29 - 136) = v30 + a14;
  *(v29 - 132) = v31;
  *(v29 - 128) = v27;
  v32 = (*(v28 + 8 * (a3 + 1433)))(v29 - 136, a2);
  return (*(v28 + 8 * ((75 * ((*(v27 + 68) & ((a27 + 499) ^ 0x20Bu)) + 64 > 0x3F)) ^ (a27 + 874))))(v32, a13);
}

uint64_t sub_222045504(char a1)
{
  v8 = v2 + 2;
  v9 = v5 - 2;
  *(v9 + 527) = ((v3 + v8) ^ a1) * (v3 + v8 + 17);
  *(v9 + v1) = ((v3 + v8) ^ 0xBB) * (v3 + v8 + 18);
  return (*(v6 + 8 * (v7 ^ (8 * (v4 == v8)))))();
}

uint64_t sub_222045510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *a1 = 256;
  memset((a1 + 8), 156, 48);
  *(a1 + 56) = 2627509404;
  memset((a1 + 64), 156, 48);
  *(a1 + 112) = 2627509404;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 131) = 0;
  *(a1 + 259) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(a1 + 258) = (&a10 ^ 0xBB) * (&a10 + 18);
  return (*(v10 + 8 * ((57 * (((v11 - 774) ^ 0x1E8) != 128)) ^ (v11 - 302))))();
}

uint64_t sub_22204564C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + (v3 << ((7 * (v4 ^ 0x41)) ^ 0x15u)));
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * ((((v2 & 0x1FFFFFFF8) - 8 == v3) | (8 * ((v2 & 0x1FFFFFFF8) - 8 == v3))) ^ v4)))();
}

uint64_t sub_2220456B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = ((a11 & 0x8DF06606) << (v11 ^ 0x1D)) & (a11 ^ 0x6DEA56A7) ^ a11 & 0x8DF06606;
  v15 = ((2 * (a11 ^ 0x6F6ADEAB)) ^ 0xC535715A) & (a11 ^ 0x6F6ADEAB) ^ (2 * (a11 ^ 0x6F6ADEAB)) & 0xE29AB8AC;
  v16 = v15 ^ 0x228A88A5;
  v17 = (v15 ^ 0x4008308D) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0x8A6AE2B4) & v16 ^ (4 * v16) & 0xE29AB8AC;
  v19 = (v18 ^ 0x820AA0A9) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x60901809)) ^ 0x29AB8AD0) & (v18 ^ 0x60901809) ^ (16 * (v18 ^ 0x60901809)) & 0xE29AB8A0;
  v21 = v19 ^ 0xE29AB8AD ^ (v20 ^ 0x208A882D) & (v19 << 8);
  v22 = (v21 << 16) & 0x629A0000 ^ v21 ^ ((v21 << 16) ^ 0x38AD0000) & (((v20 ^ 0xC210302D) << 8) & 0xE29A0000 ^ 0x60020000 ^ (((v20 ^ 0xC210302D) << 8) ^ 0x1AB80000) & (v20 ^ 0xC210302D));
  v23 = ((((v13 - 120) | 0xF7403CA9) - ((v13 - 120) & 0xF7403CA9)) ^ 0x49AD8743) * a5;
  *(v13 - 120) = v23 + v11 - 1083642136;
  *(v13 - 116) = v23 ^ a11 ^ (2 * v22) ^ 0x7BA0CF2;
  *(v13 - 112) = a7;
  v24 = (*(v12 + 8 * (v11 + 1470)))(v13 - 120, a2, a3, a4);
  return (*(v12 + 8 * ((446 * ((*(a7 + 68) & ((2 * (v11 ^ 0x29E)) ^ 0x53Bu)) + 64 > 0x3F)) ^ v11 ^ 0x29E)))(v24);
}

uint64_t sub_222045930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = v29 - 144;
  *(v29 - 144) = v26 + 2856;
  *(v29 - 136) = (v28 + 2089147696) ^ (439532179 * ((((v29 - 144) | 0x73FD012C) - (v29 - 144) + ((v29 - 144) & 0x8C02FED0)) ^ 0xAD5B3CAE));
  (*(v27 + 8 * (v28 + 576)))(v29 - 144, a2, a3, a4, a5, a6, a7, a8);
  v31 = 2021301169 * ((((2 * v30) | 0x292B9992) - v30 - 345361609) ^ 0x9F639B69);
  *(v29 - 128) = v31 + 469501837;
  *(v29 - 124) = (v28 - 317) ^ v31;
  *(v29 - 144) = *(&off_2835705E0 + v28 - 862) - 8;
  *(v29 - 136) = v26 + 2856;
  (*(v27 + 8 * (v28 + 539)))(v29 - 144);
  v32 = 2021301169 * ((2 * (v30 & 0x7AF25DA0) - v30 + 84779614) ^ 0x8EFBF5FE);
  *(v29 - 144) = a26;
  *(v29 - 136) = v26 + 2856;
  *(v29 - 128) = v32 + 469501822;
  *(v29 - 124) = (v28 - 317) ^ v32;
  v33 = (*(v27 + 8 * (v28 ^ 0x625)))(v29 - 144);
  *(v26 + 2944) = *(v26 + 2856);
  LODWORD(STACK[0xC64]) = STACK[0xC0C];
  LODWORD(STACK[0xC68]) = STACK[0xC10];
  STACK[0xC6C] = STACK[0xC14];
  LODWORD(STACK[0xC74]) = STACK[0xC1C];
  v34 = *&STACK[0xC30];
  *&STACK[0xC78] = *&STACK[0xC20];
  *&STACK[0xC88] = v34;
  return (*(v27 + 8 * ((308 * (v28 == 999)) ^ (v28 - 223))))(v33);
}

uint64_t sub_222045B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, unsigned int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54)
{
  v59 = v57 + a36;
  *(v58 - 144) = v54 - 44841361 * ((2 * (((v58 - 144) ^ 0x498770B4) & 0x1F079048) - ((v58 - 144) ^ 0x498770B4) + 1626894261) ^ 0x4911E25D) + 1276;
  *(v58 - 120) = v59;
  *(v58 - 112) = &a54;
  *(v58 - 136) = a30;
  *(v58 - 128) = &a35;
  (*(v55 + 8 * (v54 ^ 0x615)))(v58 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v55 + 8 * (((*(v58 - 104) == v56) * (((2 * v54) ^ 0x4A4) - 31)) ^ v54)))(a32);
}

uint64_t sub_222045C24@<X0>(int a1@<W0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = ((a1 ^ 0x2A0u) + 123 - 461) & (v6 + 15);
  v9 = -a3 - v6;
  v11 = a2 >= 0x10 && (v9 + v3 + v8 + 1) >= 0x10 && (v9 + v4 + v8 + 3) >= 0x10;
  v12 = v9 + v5 + v8 + 7;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * ((56 * v14) | a1)))();
}

uint64_t sub_222045C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, uint64_t a30, int a31, uint64_t a32)
{
  v46 = v44 + 1;
  v47 = (a9 + 16);
  v48 = (v32 + 128);
  v49 = *(*(v48 - 15) + v42);
  *a8 = v49;
  v50 = *(*(v48 - 11) + v37);
  a8[4] = v50;
  v51 = *(*(v48 - 7) + v36);
  a8[8] = v51;
  v52 = *(*(v48 - 3) + v35);
  a8[12] = v52;
  v53 = *(*(v48 - 10) + v40);
  a8[1] = v53;
  v54 = *(*(v48 - 6) + v45);
  a8[5] = v54;
  v55 = *(*(v48 - 2) + a3);
  a8[9] = v55;
  v56 = *(*(v48 - 14) + a2);
  a8[13] = v56;
  v57 = *(*(v48 - 5) + a5);
  a8[2] = v57;
  v58 = *(*(v48 - 13) + v34);
  a8[10] = v58;
  v59 = *(*(v48 - 1) + v33);
  a8[6] = v59;
  v60 = *(*(v48 - 9) + a6);
  a8[14] = v60;
  v61 = *(*(v48 - 4) + a7);
  a8[15] = v61;
  v62 = *(*(v48 - 8) + a4);
  a8[11] = v62;
  v63 = *(*(v48 - 12) + v39);
  a8[7] = v63;
  v64 = *(*v48 + v43);
  a8[3] = v64;
  v65 = (a32 + ((v46 % v38) << 7));
  v66 = v65 + 147;
  LODWORD(v49) = *(v65[148] + 4 * v53) ^ *(v65[147] + 4 * v49) ^ *(v65[149] + 4 * v57) ^ *(v65[150] + 4 * v64);
  a8[3] = BYTE3(v49);
  a8[2] = v49 >> a24;
  *a8 = v49;
  v67 = *(v66[4 * a30 + 1] + 4 * v54) ^ *(v66[4 * a30] + 4 * v50) ^ *(v66[4 * a30 + 2] + 4 * v59) ^ *(v66[4 * a30 + 3] + 4 * v63);
  a8[7] = HIBYTE(v67);
  a8[6] = BYTE2(v67);
  a8[5] = BYTE1(v67);
  *a29 = v67;
  LODWORD(v51) = *(v66[4 * a26 + 1] + 4 * v55) ^ *(v66[4 * a26] + 4 * v51) ^ *(v66[4 * a26 + 2] + 4 * v58) ^ *(v66[4 * a26 + 3] + 4 * v62);
  a8[11] = BYTE3(v51);
  a8[10] = BYTE2(v51);
  a8[9] = BYTE1(v51);
  *a28 = v51;
  LODWORD(v52) = *(v66[4 * a25 + 1] + 4 * v56) ^ *(v66[4 * a25] + 4 * v52) ^ *(v66[4 * a25 + 2] + 4 * v60) ^ *(v66[4 * a25 + 3] + 4 * v61);
  a8[15] = BYTE3(v52);
  a8[14] = BYTE2(v52);
  a8[13] = BYTE1(v52);
  *a27 = v52;
  *a8 = *(v47 - 15) ^ v49;
  v68 = (*(v47 - 14) ^ BYTE1(v49));
  a8[1] = *(v47 - 14) ^ BYTE1(v49);
  a8[2] = *(v47 - 13) ^ (v49 >> a24);
  a8[3] = *(v47 - 12) ^ BYTE3(v49);
  *(a8 + 2) = *(v47 - 11) ^ v67;
  v69 = (*(v47 - 9) ^ BYTE2(v67));
  a8[6] = *(v47 - 9) ^ BYTE2(v67);
  v70 = (*(v47 - 8) ^ HIBYTE(v67));
  a8[7] = *(v47 - 8) ^ HIBYTE(v67);
  *(a8 + 4) = *(v47 - 7) ^ v51;
  v71 = (*(v47 - 5) ^ BYTE2(v51));
  a8[10] = *(v47 - 5) ^ BYTE2(v51);
  v72 = (*(v47 - 4) ^ BYTE3(v51));
  a8[11] = *(v47 - 4) ^ BYTE3(v51);
  a8[12] = *(v47 - 3) ^ v52;
  v73 = (*(v47 - 2) ^ BYTE1(v52));
  a8[13] = *(v47 - 2) ^ BYTE1(v52);
  a8[14] = *(v47 - 1) ^ BYTE2(v52);
  a8[15] = *v47 ^ BYTE3(v52);
  return (*(v41 + 8 * ((116 * (v46 != 8)) ^ a31)))(a1, v68, v73, v70, v71, v69, v72);
}