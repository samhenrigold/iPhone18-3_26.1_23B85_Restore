uint64_t remoteXPCVideoTarget_CreateVideoTargetObject(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  FigVideoTargetGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  remoteXPCVideoTarget_CreateVideoTargetObject_cold_1(&v6);
  return v6;
}

uint64_t RemoteVideoTargetGetRemoteClient()
{
  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_2();
  }

  return *(qword_1ED4CAAC8 + 16);
}

uint64_t remoteXPCVideoTarget_CompleteVideoTargetObjectSetup(const void *a1, uint64_t a2, __CFString *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  *(DerivedStorage + 8) = 0;
  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_2();
  }

  v7 = FigXPCRemoteClientAssociateObject();
  if (v7)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = @"Failed";
  }

  remoteXPCVideoTarget_updateReceiverLoadingState(a1, a3, v7, 1);
  return v7;
}

void __remoteXPCVideoTarget_establishServerConnection_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  if (a2 || (v3 = videoTargetRemote_completeObjectSetupWithServerReply(*(a1 + 32), a3)) != 0)
  {
    remoteXPCVideoTarget_updateReceiverLoadingState(*(a1 + 32), @"Failed", v3, 1);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

void remoteXPCVideoTarget_updateReceiverLoadingState(const void *a1, const void *a2, int a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF17100)
  {
    LODWORD(v19) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = FigCFEqual();
  *(DerivedStorage + 96) = a3;
  v11 = *(DerivedStorage + 88);
  *(DerivedStorage + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  FigSimpleMutexUnlock();
  if (!v10)
  {
    if (!FigCFEqual())
    {
LABEL_15:
      if (a4)
      {
        v15 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v15, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v17 = Mutable;
          FigCFDictionarySetInt64();
          FigCFDictionarySetValue();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          CFRelease(v17);
        }

        else
        {
          remoteXPCVideoTarget_updateReceiverLoadingState_cold_1();
        }
      }

      return;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    LODWORD(v23) = 0;
    v19 = 0;
    v12 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*(v12 + 65) || (active = remoteXPCVideoTarget_informServerActiveStateChanged(a1, *(v12 + 64)), (*(v21 + 6) = active) == 0))
    {
      if (CFDictionaryGetCount(*(v12 + 72)) >= 1)
      {
        ObjectID = remoteXPCVideoTarget_GetObjectID(a1, &v19);
        *(v21 + 6) = ObjectID;
        if (ObjectID)
        {
          goto LABEL_14;
        }

        v24 = MEMORY[0x1E69E9820];
        v25 = 0x40000000;
        v26 = __remoteXPCVideoTarget_setCachedPropertiesOnServer_block_invoke;
        v27 = &unk_1E7487030;
        v28 = &v20;
        v29 = v19;
        FigCFDictionaryApplyBlock();
      }

      *(v12 + 65) = 0;
      CFDictionaryRemoveAllValues(*(v12 + 72));
    }

LABEL_14:
    FigSimpleMutexUnlock();
    v14 = *(v21 + 6);
    _Block_object_dispose(&v20, 8);
    if (v14)
    {
      return;
    }

    goto LABEL_15;
  }
}

void __videoTargetRemote_establishServerConnectionAsync_block_invoke(void *a1, int a2)
{
  cf = 0;
  if (a2 || remoteXPCVideoTarget_createConnectionEstablishedXPCMessage(a1[6], a1[7], &cf))
  {
    goto LABEL_6;
  }

  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_2();
  }

  if (FigXPCRemoteClientSendAsyncMessageWithReplyHandler())
  {
LABEL_6:
    (*(a1[4] + 16))();
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = cf;
  if (cf)
  {

    CFRelease(v6);
  }
}

uint64_t remoteXPCVideoTarget_createConnectionEstablishedXPCMessage(void *a1, uint64_t a2, xpc_object_t *a3)
{
  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    return v5;
  }

  value = xpc_dictionary_get_value(a1, kFigVideoReceiverEndpoint);
  if (!value)
  {
    v10 = 1292;
LABEL_10:
    FigVideoTargetCreateRemoteSharingVideoReceiverFromRemoteVideoTarget_cold_2(v10, &v11);
    return v11;
  }

  v7 = value;
  if (MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E90])
  {
    v10 = 1293;
    goto LABEL_10;
  }

  xpc_dictionary_set_value(0, "ReceiverEndpoint", v7);
  v8 = FigXPCMessageSetCFDictionary();
  if (!v8)
  {
    *a3 = 0;
  }

  return v8;
}

void FigVideoTargetRemoteConnectionEstablisherCreateOnce(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405E66F15BuLL);
  v10 = v2;
  if (!v2)
  {
    FigVideoTargetRemoteConnectionEstablisherCreateOnce_cold_3(0, v3, v4, v5, v6, v7, v8, v9, v19, v20, SHIDWORD(v20), v21);
    goto LABEL_7;
  }

  *v2 = 0;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v10[1] = Mutable;
  if (!Mutable)
  {
    v17 = 188;
    goto LABEL_11;
  }

  v13 = FigSimpleMutexCreate();
  v10[3] = v13;
  if (!v13)
  {
    v17 = 190;
LABEL_11:
    if (FigVideoTargetRemoteConnectionEstablisherCreateOnce_cold_2(v17))
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v25 = 1;
  v26 = remoteXPCVideoTargetClient_DeadConnectionCallback;
  v27 = remoteXPCVideoTargetClient_NotificationFilter;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v14 = CFDictionaryCreateMutable(v11, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v14)
  {
    v15 = v14;
    CFDictionarySetValue(v14, *MEMORY[0x1E69633B0], @"FigVideoTarget_ServerConnectionDied");
    *v10 = 0;
    FigRemote_ShouldConnectToMediaparserdForFileParsing();
    FigRemote_ShouldConnectToMediaplaybackd();
    v20 = MEMORY[0x1E69E9820];
    v21 = 0x40000000;
    v22 = __FigVideoTargetRemoteConnectionEstablisher_EstablishConnectionInternal_block_invoke;
    v23 = &__block_descriptor_tmp_11_5;
    v24 = v10;
    Async = FigXPCRemoteClientCreateAsync();
    CFRelease(v15);
    if (!Async)
    {
LABEL_6:
      *a1 = v10;
      v10 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    FigVideoTargetRemoteConnectionEstablisherCreateOnce_cold_1(&v20);
    if (!v20)
    {
      goto LABEL_6;
    }
  }

LABEL_12:
  if (v10[3])
  {
    FigSimpleMutexDestroy();
    v10[3] = 0;
  }

  v18 = v10[1];
  if (v18)
  {
    CFRelease(v18);
    v10[1] = 0;
  }

LABEL_7:
  free(v10);
}

uint64_t FigVideoTargetConnectionEstablisher_EstablishConnectionAsync(CFMutableArrayRef *a1, void *a2)
{
  if (!a1)
  {
    v6.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    v5 = v7;
    v4 = 2;
LABEL_13:
    v11 = a2[2];

    return v11(a2, v5, v4, v6);
  }

  FigSimpleMutexLock();
  v4 = *a1;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 0;
    }

    else if (v4 == 2)
    {
      v5 = *(a1 + 1);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
      v5 = v10;
      v4 = 2;
    }

    FigSimpleMutexUnlock();
    goto LABEL_13;
  }

  v8 = _Block_copy(a2);
  CFArrayAppendValue(a1[1], v8);
  _Block_release(v8);

  return FigSimpleMutexUnlock();
}

void remoteXPCVideoTargetClient_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigVideoTargetGetTypeID())
  {
    *(CMBaseObjectGetDerivedStorage() + 8) = 1;

    remoteXPCVideoTarget_updateReceiverLoadingState(a1, @"Failed", -15561, 1);
  }
}

uint64_t remoteXPCVideoTargetClient_NotificationFilter(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"PreferredDataChannelGroupsChanged"))
  {
    Value = FigCFDictionaryGetValue();
    cf[0] = 0;
    v8 = CFGetAllocator(a1);
    v9 = FigDataChannelGroupsArrayCreateFromDictionary(v8, Value, cf);
    FigSimpleMutexLock();
    v10 = *(DerivedStorage + 40);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 40) = 0;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      *(DerivedStorage + 40) = cf[0];
      cf[0] = 0;
      v11 = 1;
    }

    *(DerivedStorage + 48) = v11;
LABEL_17:
    FigSimpleMutexUnlock();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    return 0;
  }

  if (CFEqual(a2, @"DataChannelSettingsChanged"))
  {
    v12 = FigCFDictionaryGetValue();
    cf[0] = 0;
    v13 = FigVideoReceiverDataChannelSettingsCopyDeserialized(v12, cf);
    FigSimpleMutexLock();
    v14 = *(DerivedStorage + 24);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 24) = 0;
    }

    if (v13)
    {
      v15 = 0;
    }

    else
    {
      *(DerivedStorage + 24) = cf[0];
      cf[0] = 0;
      v15 = 1;
    }

    *(DerivedStorage + 32) = v15;
    goto LABEL_17;
  }

  if (CFEqual(a2, @"ReceiverLoadingStateChanged"))
  {
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetInt64IfPresent();
    remoteXPCVideoTarget_updateReceiverLoadingState(a1, @"Loading", 0, 0);
  }

  return 0;
}

uint64_t __remoteXPCVideoTarget_setCachedPropertiesOnServer_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_2();
  }

  result = FigXPCSendStdSetPropertyMessage();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

__CFString *remoteXPCVideoTarget_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigVideoTargetRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteXPCVideoTarget_isValid(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v1 = 0;
  }

  else if (FigCFEqual())
  {
    if (_MergedGlobals_57 != -1)
    {
      figVideoTargetRemoteCreateCommon_cold_2();
    }

    FigXPCRemoteClientGetServerPIDSync();
    v1 = 0;
  }

  else
  {
    FigCFEqual();
    v1 = 1;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t remoteXPCVideoTarget_isFullySetupWithServer(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = FigCFEqual();
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t remoteXPCVideoTarget_copyPreferredDataChannelGroups(uint64_t a1, const __CFAllocator *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    remoteXPCVideoTarget_copyPreferredDataChannelGroups_cold_3(&v16);
    return v16;
  }

  v7 = DerivedStorage;
  if (!remoteXPCVideoTarget_isFullySetupWithServer(a1))
  {
    remoteXPCVideoTarget_copyPreferredDataChannelGroups_cold_2(&v16);
    return v16;
  }

  FigSimpleMutexLock();
  if (*(v7 + 48))
  {
    Copy = FigCFArrayCreateCopy();
    FigSimpleMutexUnlock();
LABEL_23:
    v13 = 0;
    *a3 = Copy;
    return v13;
  }

  FigSimpleMutexUnlock();
  v9 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v16 = 0;
  v10 = FigXPCCreateBasicMessage();
  if (v10)
  {
    goto LABEL_25;
  }

  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_1();
  }

  v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v10 || (v10 = FigXPCMessageCopyCFDictionary(), v10) || (v10 = FigDataChannelGroupsArrayCreateFromDictionary(a2, v16, &cf), v10))
  {
LABEL_25:
    v13 = v10;
    Copy = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v11 = *(v9 + 40);
    v12 = cf;
    *(v9 + 40) = cf;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    *(v9 + 48) = 1;
    FigSimpleMutexUnlock();
    v13 = 0;
    Copy = cf;
    cf = 0;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, FigVideoTargetRemoteConnectionEstablisherCreateOnce);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  if (!v13)
  {
    goto LABEL_23;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return v13;
}

uint64_t remoteXPCVideoTarget_copyDataChannelSettings(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    remoteXPCVideoTarget_copyDataChannelSettings_cold_3(&v15);
    return v15;
  }

  v6 = DerivedStorage;
  if (!remoteXPCVideoTarget_isFullySetupWithServer(a1))
  {
    remoteXPCVideoTarget_copyDataChannelSettings_cold_2(&v15);
    return v15;
  }

  FigSimpleMutexLock();
  if (*(v6 + 32))
  {
    Copy = FigCFArrayCreateCopy();
    FigSimpleMutexUnlock();
LABEL_23:
    v12 = 0;
    *a3 = Copy;
    return v12;
  }

  FigSimpleMutexUnlock();
  v8 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v15 = 0;
  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
    goto LABEL_25;
  }

  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_1();
  }

  v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v9 || (v9 = FigXPCMessageCopyCFArray(), v9) || (v9 = FigVideoReceiverDataChannelSettingsCopyDeserialized(v15, &cf), v9))
  {
LABEL_25:
    v12 = v9;
    Copy = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v10 = *(v8 + 24);
    v11 = cf;
    *(v8 + 24) = cf;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    *(v8 + 32) = 1;
    FigSimpleMutexUnlock();
    v12 = 0;
    Copy = cf;
    cf = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, FigVideoTargetRemoteConnectionEstablisherCreateOnce);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  if (!v12)
  {
    goto LABEL_23;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return v12;
}

uint64_t remoteXPCVideoTarget_setActive(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 64) = v2;
  *(DerivedStorage + 65) = 1;
  FigSimpleMutexUnlock();
  result = remoteXPCVideoTarget_isFullySetupWithServer(a1);
  if (result)
  {

    return remoteXPCVideoTarget_informServerActiveStateChanged(a1, v2);
  }

  return result;
}

uint64_t remoteXPCVideoTarget_addLayersToLayerSynchronizerConfiguration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2 && (v5 = DerivedStorage, v6 = CFGetTypeID(a2), v6 == FigLayerSynchronizerConfigurationGetTypeID(v6, v7)))
    {
      v8 = *(v5 + 80);
      if (v8)
      {
        v9 = *(*(CMBaseObjectGetVTable() + 24) + 104);
        if (v9)
        {

          return v9(v8, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        return 4294951630;
      }
    }

    else
    {
      remoteXPCVideoTarget_addLayersToLayerSynchronizerConfiguration_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    remoteXPCVideoTarget_addLayersToLayerSynchronizerConfiguration_cold_2(&v12);
    return v12;
  }
}

uint64_t remoteXPCVideoTarget_updateDurationWithDeferredTransaction(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v7 = *(DerivedStorage + 80);
    if (v7)
    {
      v12 = *a2;
      v14 = *(a2 + 2);
      v8 = *(*(CMBaseObjectGetVTable() + 24) + 120);
      if (!v8)
      {
        return 0;
      }

      v16 = v12;
      v17 = v14;
      v9 = v8(v7, &v16, a3);
      if (v9 == -12782)
      {
        return 0;
      }
    }

    else
    {
      v13 = *a2;
      v15 = *(a2 + 2);
      CMBaseObjectGetDerivedStorage();
      v18 = 0;
      v10 = FigXPCCreateBasicMessage();
      if (!v10)
      {
        v16 = v13;
        v17 = v15;
        v10 = FigXPCMessageSetCMTime();
        if (!v10)
        {
          if (_MergedGlobals_57 != -1)
          {
            figVideoTargetRemoteCreateCommon_cold_1();
          }

          v10 = FigXPCRemoteClientSendAsyncMessage();
        }
      }

      v9 = v10;
      FigXPCRelease();
      if (_MergedGlobals_57 != -1)
      {
        figVideoTargetRemoteCreateCommon_cold_1();
      }

      FigXPCRemoteClientKillServerOnTimeout();
    }
  }

  else
  {
    remoteXPCVideoTarget_updateDurationWithDeferredTransaction_cold_3(&v16);
    return v16;
  }

  return v9;
}

uint64_t OUTLINED_FUNCTION_5_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return _os_log_send_and_compose_impl(a1, 0, va, 128, a5, v19, v20, a8);
}

void OUTLINED_FUNCTION_6_51(uint64_t a1, uint64_t a2, void (__cdecl *a3)(void *))
{

  dispatch_once_f(v3, v3 + 1, a3);
}

uint64_t FigTTMLDocumentWriterCreateStyleOptimizer(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateStyleOptimizer_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateStyleOptimizer_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterStyleOptimizer_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t figTTMLDocumentWriterStyleOptimizer_StartElement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], v2, *(DerivedStorage + 16), &cf);
  if (v4)
  {
    v7 = cf;
    if (!cf)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    FigTTMLDocumentWriterElementAddChildElement(v5, cf);
  }

  else
  {
    if (cf)
    {
      v6 = CFRetain(cf);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 8) = v6;
  }

  v7 = cf;
  *(DerivedStorage + 16) = cf;
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

  return v4;
}

uint64_t figTTMLDocumentWriterStyleOptimizer_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t figTTMLDocumentWriterStyleOptimizer_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 16), a2, a3);
  return 0;
}

uint64_t figTTMLDocumentWriterStyleOptimizer_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    return 4294950721;
  }

  v2 = *DerivedStorage;

  return FigTTMLDocumentWriterFlush(v2);
}

void optimizeStyleAttributesAux(const void *a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  ChildrenCount = FigTTMLDocumentWriterElementGetChildrenCount(a2);
  v6 = *MEMORY[0x1E695E738];
  if (ChildrenCount >= 1)
  {
    v7 = 0;
    while (1)
    {
      ChildAtIndex = FigTTMLDocumentWriterElementGetChildAtIndex(a2, v7);
      if (ChildAtIndex)
      {
        v9 = ChildAtIndex;
        v10 = CFGetTypeID(ChildAtIndex);
        if (v10 == FigCaptionDataGetTypeID())
        {
          goto LABEL_5;
        }

        v14 = CFGetTypeID(v9);
        if (v14 == FigTTMLDocumentWriterElementGetTypeID())
        {
          break;
        }
      }

LABEL_10:
      if (ChildrenCount == ++v7)
      {
        goto LABEL_11;
      }
    }

    optimizeStyleAttributesAux(a1, v9);
    Attribute = FigTTMLDocumentWriterElementGetAttribute(v9, a1);
    if (Attribute)
    {
      v16 = Attribute;
      v13 = CFDictionaryGetValue(Mutable, Attribute) + 1;
      v11 = Mutable;
      v12 = v16;
    }

    else
    {
LABEL_5:
      v11 = Mutable;
      v12 = v6;
      v13 = 0x7FFFFFFFLL;
    }

    CFDictionarySetValue(v11, v12, v13);
    goto LABEL_10;
  }

LABEL_11:
  cf2[0] = v6;
  cf2[1] = 0;
  CFDictionaryApplyFunction(Mutable, findMostCommonStyleValue, cf2);
  if (cf2[0] != v6)
  {
    v17 = FigTTMLDocumentWriterElementGetAttribute(a2, a1);
    if (!v17 || CFEqual(v17, cf2[0]))
    {
      FigTTMLDocumentWriterElementSetAttribute(a2, a1, cf2[0]);
      if (ChildrenCount >= 1)
      {
        for (i = 0; i != ChildrenCount; ++i)
        {
          v19 = FigTTMLDocumentWriterElementGetChildAtIndex(a2, i);
          if (v19)
          {
            v20 = v19;
            v21 = CFGetTypeID(v19);
            if (v21 == FigTTMLDocumentWriterElementGetTypeID())
            {
              FigTTMLDocumentWriterElementGetAttribute(v20, a1);
              if (FigCFEqual())
              {
                FigTTMLDocumentWriterElementRemoveAttribute(v20, a1);
              }
            }
          }
        }
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t findMostCommonStyleValue(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 8) < a2)
  {
    *a3 = result;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t FigPlaybackCoordinatorGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigPlaybackCoordinatorGetClassID_onceToken != -1)
  {
    FigPlaybackCoordinatorGetClassID_cold_1();
  }

  return sFigPlaybackCoordinatorClassID;
}

uint64_t RegisterFigPlaybackCoordinatorBaseTypeOnce()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPlaybackCoordinatorGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigPlaybackCoordinatorGetClassID_onceToken != -1)
  {
    FigPlaybackCoordinatorGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t __FigSFBSKeepForegroundAssertionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigSFBSKeepForegroundAssertionGetTypeID_sFigSFBSKeepForegroundAssertionTypeID = result;
  return result;
}

double figSFBSKFAssertion_finalize(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17120)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

CFStringRef figSFBSKFAssertion_copyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigSFBSKeepForegroundAssertion %p retainCount: %ld>", a1, v3);
}

uint64_t FigSFBSKeepForegroundAssertionCreate(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    FigSFBSKeepForegroundAssertionCreate_cold_3(v10);
    return v10[0];
  }

  if (FigSFBSKeepForegroundAssertionGetTypeID_sRegisterFigSFBSKeepForegroundAssertionTypeOnce != -1)
  {
    FigSFBSKeepForegroundAssertionCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigSFBSKeepForegroundAssertionCreate_cold_2(v10);
    return v10[0];
  }

  v7 = Instance;
  *(Instance + 16) = a3;
  if (dword_1EAF17120)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = 0;
  *a4 = v7;
  return result;
}

void FigImageQueueCreateForCoreVideoWithOptions(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    FigImageQueueGetClassID();
    if (!CMDerivedObjectCreate())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = FigReentrantMutexCreate();
      *(DerivedStorage + 16) = DerivedStorage + 16;
      *(DerivedStorage + 24) = DerivedStorage + 16;
      *(DerivedStorage + 8) = v8;
      *(DerivedStorage + 144) = 1;
      *(DerivedStorage + 152) = 0x100000001;
      *(DerivedStorage + 1128) = FigSimpleMutexCreate();
      *(DerivedStorage + 1124) = 1;
      piqcv_setupLoggingID(0, a2);
      CMBaseObjectGetDerivedStorage();
      if (dword_1EAF170E0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *a3 = 0;
    }
  }

  else
  {
    v6 = qword_1EAF170D8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954486, "<<<< IQ-CV >>>>", 785, v3);
  }
}

void piqcv_setupLoggingID(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1192) = 0;
  if (a2)
  {
    v4 = DerivedStorage;
    Value = CFDictionaryGetValue(a2, @"BaseLoggingIdentifier");
    v6 = *MEMORY[0x1E695E480];
    LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
    v8 = CFStringCreateWithFormat(v6, 0, @"%@:IQ/%@", Value, LoggingIdentifierOfLength);
    v9 = v8;
    if (v8)
    {
      CFStringGetCString(v8, (v4 + 1192), 32, 0x600u);
    }

    if (LoggingIdentifierOfLength)
    {
      CFRelease(LoggingIdentifierOfLength);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

uint64_t FigImageQueueCreateForDiscardingWithOptions(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  v10[22] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  FigImageQueueCreateForCoreVideoWithOptions(a1, 0, v10);
  v6 = v5;
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 1176) = 1;
    *(DerivedStorage + 1124) = 2;
    piqcv_setupLoggingID(v10[0], a2);
    if (dword_1EAF170E0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  *a3 = v10[0];
  return v6;
}

uint64_t piqcv_finalize(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF170E0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  piqUnhookVisualContext(a1);
  piqDrop(a1, MEMORY[0x1E6960C70]);
  if (*(DerivedStorage + 1184))
  {
    FigImageQueueGaugeGetCMBaseObject();
    if (v4)
    {
      v5 = v4;
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v6)
      {
        v6(v5);
      }
    }

    v7 = *(DerivedStorage + 1184);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 1184) = 0;
    }
  }

  FigSimpleMutexDestroy();
  result = *(DerivedStorage + 1128);
  if (result)
  {
    return FigSimpleMutexDestroy();
  }

  return result;
}

uint64_t piqcv_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
  {
    LODWORD(valuePtr) = FigImageQueueFrameRateGetCurrent((DerivedStorage + 1128));
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (CFEqual(@"FigImageQueueProperty_FirstImageEnqueued", a2))
  {
    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 172);
LABEL_7:
    if (!v10)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    v8 = CFRetain(*v9);
    goto LABEL_10;
  }

  if (CFEqual(@"FigImageQueueProperty_LimitCapacityToOneFrame", a2))
  {
    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 170);
    goto LABEL_7;
  }

  if (!CFEqual(@"ImageQueueGauge", a2))
  {
    return 4294954512;
  }

  v8 = *(DerivedStorage + 1184);
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v13 = (DerivedStorage + 1184);
    AllocatorForMedia = FigGetAllocatorForMedia();
    v11 = FigImageQueueGaugeCreate(AllocatorForMedia, 0, (DerivedStorage + 1184));
    if (!v11)
    {
      v15 = *v13;
      FigImageQueueGetSafeDisplayDuration(a1, &valuePtr);
      v11 = FigImageQueueGaugeSetSafeDisplayDuration(v15, &valuePtr);
    }

    v8 = *v13;
    if (!*v13)
    {
      goto LABEL_11;
    }
  }

  v8 = CFRetain(v8);
LABEL_11:
  *a4 = v8;
  return v11;
}

double piqcv_setProperty(uint64_t a1, const void *a2, CFTypeRef a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"FigImageQueueProperty_LimitCapacityToOneFrame", a2))
  {
    if (a3 && (v8 = CFGetTypeID(a3), v8 == CFBooleanGetTypeID()))
    {
      *(DerivedStorage + 170) = *MEMORY[0x1E695E4D0] == a3;
    }

    else
    {
      piqcv_setProperty_cold_1(&v16);
    }
  }

  else if (CFEqual(@"ImageQueueGauge", a2))
  {
    v10 = *(DerivedStorage + 1184);
    if (!v10 || v10 == a3)
    {
      if (v10)
      {
        CFRelease(v10);
        *(DerivedStorage + 1184) = 0;
      }

      if (a3)
      {
        a3 = CFRetain(a3);
      }

      *(DerivedStorage + 1184) = a3;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v12)
      {
        v12(&v14, a1);
      }

      else
      {
        v14 = *MEMORY[0x1E6960C70];
        v15 = *(MEMORY[0x1E6960C70] + 16);
      }

      v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v13)
      {
        v16 = v14;
        v17 = v15;
        v13(a3, &v16);
      }
    }

    else
    {
      v11 = qword_1EAF170D8;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954514, "<<<< IQ-CV >>>>", 2074, v3);
    }
  }

  return result;
}

void piqUnhookVisualContext(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v4 = DerivedStorage;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v5)
    {
      v5(v3, 0, 0, 0, 0, a1);
    }

    if (*v4)
    {
      CFRelease(*v4);
      *v4 = 0;
    }
  }
}

uint64_t piqDrop(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage + 16;
  v4 = *(DerivedStorage + 16);
  if (v4 == (DerivedStorage + 16))
  {
    return 0;
  }

  else
  {
    v6 = DerivedStorage;
    v7 = 0;
    v8 = DerivedStorage + 248;
    do
    {
      if (*(a2 + 12))
      {
        v9 = *v4;
        if (v9 == v5)
        {
          return v7;
        }

        if (v6[39] < 1)
        {
          time1 = *(v9 + 16);
          time2 = *a2;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            return v7;
          }
        }

        else
        {
          time1 = *(v9 + 16);
          time2 = *a2;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            return v7;
          }
        }
      }

      v10 = *v5;
      if (*(*v5 + 68))
      {
        ++v6[263];
      }

      else if (*(a2 + 12))
      {
        v11 = v6[56];
        if (v11 <= 0x63)
        {
          time1 = *(v10 + 16);
          CMTimeConvertScale(&v13, &time1, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          *(v8 + 4 * v6[56]) = v13.value;
          v11 = v6[56];
        }

        v6[56] = v11 + 1;
      }

      else
      {
        ++v6[264];
      }

      piqRemoveItemFromQueue(v10);
      v4 = *v5;
      v7 = 1;
    }

    while (*v5 != v5);
  }

  return v7;
}

void piqRemoveItemFromQueue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *v3 = *a1;
  *(v2 + 8) = v3;
  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void piqcv_setOutputVisualContext(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (a2)
    {
      if (*DerivedStorage != a2)
      {
        v8 = qword_1EAF170D8;

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954485, "<<<< IQ-CV >>>>", 877, v3);
      }
    }

    else
    {
      piqUnhookVisualContext(a1);
    }
  }

  else if (a2)
  {
    v9 = DerivedStorage;
    v10 = CFRetain(a2);
    *v9 = v10;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v11)
    {
      v11(v10, a3, piqIsNewImageAvailable, piqCopyImageForTime, piqGetEarliestSequentialImageTimeAfterTime, a1);
    }
  }
}

uint64_t piqcv_flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 16);
  v4 = *v3;
  *(DerivedStorage + 16) = *v3;
  *(v4 + 8) = DerivedStorage + 16;
  v5 = MEMORY[0x1E6960C70];
  v6 = piqDrop(a1, MEMORY[0x1E6960C70]);
  *v3 = DerivedStorage + 16;
  v3[1] = DerivedStorage + 16;
  *(DerivedStorage + 24) = v3;
  *v3[1] = v3;
  ++*(DerivedStorage + 144);
  *(DerivedStorage + 171) = 257;
  v7 = *(v5 + 2);
  *(DerivedStorage + 192) = v7;
  v8 = *v5;
  *(DerivedStorage + 176) = *v5;
  *(DerivedStorage + 216) = v7;
  *(DerivedStorage + 200) = v8;
  *(DerivedStorage + 88) = 0;
  FigSimpleMutexUnlock();
  if (v6)
  {
    piqcv_postOccupancyChanged(a1);
  }

  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return 0;
}

uint64_t piqcv_canEnqueueImage(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 170))
  {
    return *(DerivedStorage + 16) == DerivedStorage + 16;
  }

  else
  {
    return 99;
  }
}

void piqcv_enqueueImage(uint64_t a1, __CVBuffer *a2, const void *a3, __int128 *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v12 = qword_1EAF170D8;
    v13 = v5;
    v14 = 1288;
    goto LABEL_5;
  }

  if ((*(a4 + 12) & 1) == 0)
  {
    v12 = qword_1EAF170D8;
    v13 = v5;
    v14 = 1290;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294954486, "<<<< IQ-CV >>>>", v14, v13);
    return;
  }

  v15 = DerivedStorage;
  if (*(DerivedStorage + 1176))
  {
    return;
  }

  FigSimpleMutexLock();
  v16 = *(v15 + 1184);
  if (v16)
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v17(v16, 0);
    }
  }

  if (a5)
  {
    ++*(v15 + 144);
    v18 = MEMORY[0x1E6960C70];
    v19 = *MEMORY[0x1E6960C70];
    *(v15 + 176) = *MEMORY[0x1E6960C70];
    v20 = *(v18 + 16);
    *(v15 + 192) = v20;
    *(v15 + 200) = v19;
    *(v15 + 216) = v20;
  }

  if (*(v15 + 188))
  {
    if (*(v15 + 156) < 1)
    {
      time1 = *(v15 + 176);
      v33 = *a4;
      if ((CMTimeCompare(&time1, &v33) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      time1 = *(v15 + 176);
      v33 = *a4;
      if (CMTimeCompare(&time1, &v33) <= 0)
      {
        goto LABEL_15;
      }
    }

    ++*(v15 + 1048);
LABEL_55:
    FigSimpleMutexUnlock();
    return;
  }

LABEL_15:
  if (*(v15 + 171))
  {
    a5 = a5 | 1;
    *(v15 + 171) = 0;
  }

  v21 = malloc_type_malloc(0x48uLL, 0x10600402FA6333DuLL);
  if (!v21)
  {
    goto LABEL_55;
  }

  v22 = v21;
  v21[6] = CVBufferRetain(a2);
  v22[7] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v23 = *a4;
  v22[4] = *(a4 + 2);
  *(v22 + 1) = v23;
  v22[5] = *(v15 + 144);
  *(v22 + 16) = a5 & 3;
  *(v22 + 34) = 0;
  v24 = CMBaseObjectGetDerivedStorage();
  for (i = *(v24 + 16); i != v24 + 16; i = *i)
  {
    if (*(i + 40) < *(v24 + 144))
    {
      v26 = *(i + 8);
      if (*(i + 68))
      {
        ++*(v24 + 1052);
      }

      else
      {
        ++*(v24 + 1056);
      }

      piqRemoveItemFromQueue(i);
      i = v26;
    }
  }

  v28 = (v15 + 16);
  v27 = *(v15 + 16);
  if (v27 != (v15 + 16))
  {
    v29 = (v15 + 16);
    do
    {
      if (*(v15 + 156) < 1)
      {
        time1 = *(v22 + 2);
        v33 = *(v27 + 2);
        if (CMTimeCompare(&time1, &v33) >= 1)
        {
          break;
        }
      }

      else
      {
        time1 = *(v22 + 2);
        v33 = *(v27 + 2);
        if (CMTimeCompare(&time1, &v33) < 0)
        {
          break;
        }
      }

      v29 = *v29;
      v27 = *v29;
    }

    while (*v29 != v28);
    v27 = *v29;
    v28 = v29;
  }

  *v22 = v27;
  v22[1] = v28;
  v27[1] = v22;
  *v22[1] = v22;
  time1 = *a4;
  IsImageTimeSequentialSafe = piqIsImageTimeSequentialSafe(a1, a5, &time1);
  if (IsImageTimeSequentialSafe)
  {
    *(v22 + 69) = 1;
  }

  FigSimpleMutexUnlock();
  v31 = *v15;
  if (*v15)
  {
    v33 = *a4;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v32)
    {
      time1 = v33;
      v32(v31, &time1, a5);
    }

    if (IsImageTimeSequentialSafe)
    {
      time1 = *a4;
      piqReportImageAvailableSequential(a1, &time1, a5);
    }
  }

  if (!*(v15 + 168))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (!*(v15 + 172))
  {
    *(v15 + 172) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  piqcv_postOccupancyChanged(a1);
}

uint64_t piqcv_setDirection(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 152);
  if (a2 >= 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (a2 > 0.0)
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    *(DerivedStorage + 152) = v7;
    if (v7)
    {
      if (*(DerivedStorage + 156) != v7)
      {
        *(DerivedStorage + 156) = v7;
        if (v6 || *(DerivedStorage + 160) == *(DerivedStorage + 144))
        {
          piqcv_flush(a1);
        }
      }
    }
  }

  else
  {
    *(DerivedStorage + 160) = *(DerivedStorage + 144);
    *(DerivedStorage + 152) = 0;
  }

  *(v5 + 169) = a2 == 1.0;
  return 0;
}

void piqcv_setUpcomingImageInfo(uint64_t a1, unsigned int a2, __int128 *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v27[32], 0, 24);
  if (a2 >= 4)
  {
    v10 = qword_1EAF170D8;
    v11 = v4;
    v12 = 1820;
LABEL_17:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954486, "<<<< IQ-CV >>>>", v12, v11);
    return;
  }

  v13 = DerivedStorage;
  if (a2 == 2 && ((*(a3 + 3) & 0x1D) != 1 || (*(a4 + 12) & 0x1D) != 1))
  {
    v10 = qword_1EAF170D8;
    v11 = v4;
    v12 = 1826;
    goto LABEL_17;
  }

  FigSimpleMutexLock();
  v14 = *a3;
  v15 = *(a3 + 2);
  v16 = v13 + 16;
  v17 = *(v13 + 16);
  *(v13 + 108) = v15;
  *(v13 + 92) = v14;
  v18 = *(a4 + 16);
  *(v13 + 116) = *a4;
  *(v13 + 132) = v18;
  *(v13 + 88) = a2;
  if (v17 != (v13 + 16))
  {
    v19 = 1;
    do
    {
      while (*(v17 + 68))
      {
LABEL_11:
        v17 = *v17;
        if (v17 == v16)
        {
          v22 = v19 == 0;
          goto LABEL_20;
        }
      }

      if (*(v17 + 69) || (v20 = *(v17 + 16), *v27 = *(v17 + 2), !piqIsImageTimeSequentialSafe(a1, v20, v27)))
      {
        v19 = 0;
        goto LABEL_11;
      }

      *&v27[32] = *(v17 + 2);
      v21 = *(v17 + 16);
      v19 = 1;
      *(v17 + 69) = 1;
      FigSimpleMutexUnlock();
      *v27 = *&v27[32];
      piqReportImageAvailableSequential(a1, v27, v21);
      FigSimpleMutexLock();
      v17 = *(v13 + 16);
    }

    while (v17 != v16);
  }

  v22 = 0;
LABEL_20:
  FigSimpleMutexUnlock();
  if (a2 == 3)
  {
    if (!v22)
    {
      v23 = *v13;
      if (*v13)
      {
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (v24)
        {
          v24(v23);
        }

        *(v13 + 173) = 1;
      }
    }

    goto LABEL_32;
  }

  *(v13 + 173) = 0;
  if (a2 != 1)
  {
LABEL_32:
    *(v13 + 174) = 0;
    return;
  }

  if (!v22)
  {
    v25 = *v13;
    if (*v13)
    {
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v26)
      {
        v26(v25);
      }

      *(v13 + 174) = 1;
    }
  }
}

uint64_t piqcv_getOccupancyInfo(uint64_t a1, _DWORD *a2, CMTime *a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = **&MEMORY[0x1E6960C70];
  v13 = v14;
  ++*(DerivedStorage + 1068);
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 16);
  if (v8 != (DerivedStorage + 16))
  {
    v9 = 0;
    while (*(v8 + 68))
    {
LABEL_12:
      v8 = *v8;
      if (v8 == (DerivedStorage + 16))
      {
        goto LABEL_15;
      }
    }

    if (v9)
    {
      time1 = *(v8 + 2);
      v11 = v14;
      if (CMTimeCompare(&time1, &v11) < 0)
      {
        v14 = *(v8 + 2);
      }

      time1 = v13;
      v11 = *(v8 + 2);
      if ((CMTimeCompare(&time1, &v11) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = *(v8 + 2);
    }

    v13 = *(v8 + 2);
LABEL_11:
    ++v9;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_15:
  FigSimpleMutexUnlock();
  if (a2)
  {
    *a2 = v9;
  }

  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    *a4 = v13;
  }

  return 0;
}

uint64_t piqcv_copyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = -1;
  v5 = (DerivedStorage + 16);
  do
  {
    v5 = *v5;
    ++v4;
  }

  while (v5 != (DerivedStorage + 16));
  FigSimpleMutexUnlock();
  *(DerivedStorage + 1060) = v4;
  v6 = *MEMORY[0x1E695E480];

  return PIQCopyPerformanceDictionaryForInstanceStatistics(v6, (DerivedStorage + 224), a2);
}

CMTime *piqcv_getSafeDisplayDuration@<X0>(CMTime *a1@<X0>, uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 156);
  v6 = *(DerivedStorage + 88);
  v9 = *(DerivedStorage + 92);
  v8 = *(DerivedStorage + 116);
  return FigImageQueueCalculateSafeDisplayDuration(a1, v5, v6, &v9, &v8, a2);
}

uint64_t piqcv_postNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t piqcv_flushFramesFollowingCurrent(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  piqcv_flush(a1);
  v3 = *(DerivedStorage + 1184);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {
      v4(v3, 1);
    }
  }

  return 0;
}

uint64_t piqIsNewImageAvailable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 12) & 1) == 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11.value, v11.timescale, LODWORD(v11.epoch));
    return 0;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  v7 = v6 + 16;
  for (i = *(v6 + 16); i != v7; i = *i)
  {
    if (*(i + 68))
    {
      continue;
    }

    if ((i[8] & 2) != 0)
    {
      goto LABEL_17;
    }

    if (*(v6 + 156) < 1)
    {
      time1 = *(i + 2);
      v11 = *a2;
      if (CMTimeCompare(&time1, &v11) < 0)
      {
        continue;
      }
    }

    else
    {
      time1 = *(i + 2);
      v11 = *a2;
      if (CMTimeCompare(&time1, &v11) >= 1)
      {
        continue;
      }
    }

    v9 = *i;
    if (*i == v7)
    {
      goto LABEL_17;
    }

    if (*(v6 + 156) < 1)
    {
      time1 = *a2;
      v11 = *(v9 + 2);
      if (CMTimeCompare(&time1, &v11) > 0)
      {
LABEL_17:
        v5 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      time1 = *a2;
      v11 = *(v9 + 2);
      if (CMTimeCompare(&time1, &v11) < 0)
      {
        goto LABEL_17;
      }
    }
  }

  v5 = 0;
LABEL_19:
  FigSimpleMutexUnlock();
  return v5;
}

void piqCopyImageForTime(uint64_t a1, uint64_t a2, CMTime *a3, char a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v74 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a3->flags & 1) == 0)
  {
    v15 = qword_1EAF170D8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 4294954486, "<<<< IQ-CV >>>>", 1517, v8);
    return;
  }

  v16 = DerivedStorage;
  v62 = a7;
  FigSimpleMutexLock();
  v18 = v16 + 16;
  v17 = *(v16 + 16);
  if (v17 == v16 + 16)
  {
    v42 = 0;
    v63 = 0;
    goto LABEL_70;
  }

  v59 = a5;
  v60 = a6;
  v61 = a8;
  v63 = 0;
  while (1)
  {
    v19 = *(v17 + 64);
    if (*(v16 + 156) < 1)
    {
      if (((v72 = *(v17 + 16), v25 = *(v17 + 28), v73 = *(v17 + 24), v26 = *(v17 + 32), value = a3->value, flags = a3->flags, timescale = a3->timescale, epoch = a3->epoch, (v25 & 0x1F) == 3) || (flags & 0x1F) == 3) && (memset(&time1, 0, sizeof(time1)), rhs.epoch = epoch, lhs.value = v72, lhs.timescale = v73, lhs.flags = v25, lhs.epoch = v26, rhs.value = a3->value, rhs.timescale = a3->timescale, rhs.flags = flags, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) < 1))
      {
        v24 = 1;
      }

      else
      {
        time1.value = v72;
        time1.timescale = v73;
        time1.flags = v25;
        time1.epoch = v26;
        time.value = value;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        v24 = CMTimeCompare(&time1, &time) >= 0;
      }
    }

    else
    {
      v72 = *(v17 + 16);
      v20 = *(v17 + 28);
      v73 = *(v17 + 24);
      v21 = *(v17 + 32);
      value = a3->value;
      v22 = a3->flags;
      timescale = a3->timescale;
      v23 = a3->epoch;
      if ((v20 & 0x1F) != 3 && (v22 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.epoch = v23, lhs.value = v72, lhs.timescale = v73, lhs.flags = v20, lhs.epoch = v21, rhs.value = a3->value, rhs.timescale = a3->timescale, rhs.flags = v22, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), v24 = 1, CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
      {
        time1.value = v72;
        time1.timescale = v73;
        time1.flags = v20;
        time1.epoch = v21;
        time.value = value;
        time.timescale = timescale;
        time.flags = v22;
        time.epoch = v23;
        v24 = CMTimeCompare(&time1, &time) < 1;
      }
    }

    v29 = *v17;
    if (*v17 == v18)
    {
      break;
    }

    if (*(v16 + 156) < 1)
    {
      v72 = a3->value;
      v36 = a3->flags;
      v73 = a3->timescale;
      v37 = a3->epoch;
      value = *(v29 + 16);
      v38 = *(v29 + 28);
      timescale = *(v29 + 24);
      v39 = *(v29 + 32);
      if ((v36 & 0x1F) != 3 && (v38 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v40 = a3->value, rhs.epoch = v39, lhs.value = v40, lhs.timescale = a3->timescale, lhs.flags = v36, lhs.epoch = v37, rhs.value = value, rhs.timescale = timescale, rhs.flags = v38, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
      {
        time1.value = v72;
        time1.timescale = v73;
        time1.flags = v36;
        time1.epoch = v37;
        time.value = value;
        time.timescale = timescale;
        time.flags = v38;
        time.epoch = v39;
        LOBYTE(v35) = CMTimeCompare(&time1, &time) > 0;
        if (!v24)
        {
          goto LABEL_42;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v72 = a3->value;
      v30 = a3->flags;
      v73 = a3->timescale;
      v31 = a3->epoch;
      value = *(v29 + 16);
      v32 = *(v29 + 28);
      timescale = *(v29 + 24);
      v33 = *(v29 + 32);
      if ((v30 & 0x1F) != 3 && (v32 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v34 = a3->value, rhs.epoch = v33, lhs.value = v34, lhs.timescale = a3->timescale, lhs.flags = v30, lhs.epoch = v31, rhs.value = value, rhs.timescale = timescale, rhs.flags = v32, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
      {
        time1.value = v72;
        time1.timescale = v73;
        time1.flags = v30;
        time1.epoch = v31;
        time.value = value;
        time.timescale = timescale;
        time.flags = v32;
        time.epoch = v33;
        v35 = CMTimeCompare(&time1, &time) >> 31;
        if (!v24)
        {
          goto LABEL_42;
        }

        goto LABEL_29;
      }
    }

    LOBYTE(v35) = 0;
    if (!v24)
    {
LABEL_42:
      if ((v19 & 2) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

LABEL_29:
    if (v35)
    {
      goto LABEL_37;
    }

    v41 = *v17;
    if (a4)
    {
      piqRemoveItemFromQueue(v17);
      v63 = 1;
    }

    v17 = v41;
    if (v41 == v18)
    {
      goto LABEL_43;
    }
  }

  if (((v24 | ((v19 & 2) >> 1)) & 1) == 0)
  {
LABEL_43:
    v42 = 0;
    a8 = v61;
    goto LABEL_70;
  }

LABEL_37:
  if (v62)
  {
    v43 = *(v17 + 16);
    *(v62 + 16) = *(v17 + 32);
    *v62 = v43;
  }

  if (FigIsNullPixelBuffer(*(v17 + 48)))
  {
    if (v59)
    {
      *v59 = 0;
    }
  }

  else if (v59)
  {
    v44 = *(v17 + 48);
    *v59 = v44;
    if (v44)
    {
      CFRetain(v44);
    }
  }

  a8 = v61;
  if (v60)
  {
    v45 = *(v17 + 56);
    *v60 = v45;
    if (v45)
    {
      CFRetain(v45);
    }
  }

  if ((a4 & 4) != 0 || *(v17 + 68))
  {
    v42 = 0;
  }

  else
  {
    if (*(v16 + 168))
    {
      if (*(v16 + 169))
      {
        memset(&time1, 0, sizeof(time1));
        time = *a3;
        lhs = *(v17 + 16);
        CMTimeSubtract(&time1, &time, &lhs);
        CMTimeMake(&time, 1, 60);
        lhs = time1;
        if ((CMTimeCompare(&lhs, &time) & 0x80000000) == 0)
        {
          v47 = *(v16 + 240);
          if (v47 <= 0x63)
          {
            time = *(v17 + 16);
            CMTimeConvertScale(&v65, &time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            *(v16 + 4 * *(v16 + 240) + 648) = v65.value;
            v47 = *(v16 + 240);
          }

          *(v16 + 240) = v47 + 1;
        }
      }
    }

    v42 = 1;
    *(v17 + 68) = 1;
    v63 = 1;
  }

  if (a4)
  {
    if (*(v16 + 188))
    {
      if (*(v16 + 156) < 1)
      {
        time1 = *(v16 + 176);
        time = *(v17 + 16);
        if (CMTimeCompare(&time1, &time) >= 1)
        {
          goto LABEL_55;
        }
      }

      else
      {
        time1 = *(v16 + 176);
        time = *(v17 + 16);
        if (CMTimeCompare(&time1, &time) < 0)
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
LABEL_55:
      if (*(v17 + 40) == *(v16 + 144))
      {
        v46 = *(v17 + 16);
        *(v16 + 192) = *(v17 + 32);
        *(v16 + 176) = v46;
      }
    }
  }

  if ((a4 & 2) != 0)
  {
    piqRemoveItemFromQueue(v17);
    v63 = 1;
  }

LABEL_70:
  v48 = *(v16 + 88);
  if (v48 == 3)
  {
    if (*(v16 + 173))
    {
      v49 = 1;
      goto LABEL_76;
    }

    v55 = v16 + 16;
    do
    {
      v55 = *v55;
      v56 = v55 == v18 || v55 == 0;
      v49 = !v56;
    }

    while (!v56 && *(v55 + 68));
  }

  else
  {
    v49 = 1;
  }

  if (v48 == 1 && !*(v16 + 174))
  {
    v57 = v16 + 16;
    do
    {
      v57 = *v57;
      v58 = v57 == v18 || v57 == 0;
      v50 = !v58;
    }

    while (!v58 && *(v57 + 68));
  }

  else
  {
LABEL_76:
    v50 = 1;
  }

  FigSimpleMutexUnlock();
  if (v63)
  {
    piqcv_postOccupancyChanged(a8);
  }

  if ((v49 & 1) == 0)
  {
    v51 = *v16;
    if (*v16)
    {
      *(v16 + 173) = 1;
      v52 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v52)
      {
        v52(v51);
      }
    }
  }

  if ((v50 & 1) == 0)
  {
    v53 = *v16;
    if (*v16)
    {
      *(v16 + 174) = 1;
      v54 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v54)
      {
        v54(v53);
      }
    }
  }

  if (v42)
  {
    FigImageQueueFrameRateIncrementCounter((v16 + 1128));
  }
}

uint64_t piqGetEarliestSequentialImageTimeAfterTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = *MEMORY[0x1E6960C70];
  v20 = *(MEMORY[0x1E6960C70] + 16);
  FigSimpleMutexLock();
  v12 = DerivedStorage + 16;
  v11 = *(DerivedStorage + 16);
  if (*(a3 + 12))
  {
    while (v11 != v12)
    {
      if (*(DerivedStorage + 156) < 1)
      {
        time1 = *(v11 + 2);
        v17 = *a3;
        if (CMTimeCompare(&time1, &v17) < 0)
        {
          break;
        }
      }

      else
      {
        time1 = *(v11 + 2);
        v17 = *a3;
        if (CMTimeCompare(&time1, &v17) > 0)
        {
          break;
        }
      }

      v11 = *v11;
    }
  }

  if (v11 == v12)
  {
    v15 = *(DerivedStorage + 88) == 3;
  }

  else
  {
    v13 = *(v11 + 16);
    time1 = *(v11 + 2);
    if (piqIsImageTimeSequentialSafe(a6, v13, &time1))
    {
      v14 = 0;
      v15 = 0;
      v19 = *(v11 + 1);
      v20 = v11[4];
      goto LABEL_14;
    }

    v15 = 0;
  }

  v14 = 4294954483;
LABEL_14:
  FigSimpleMutexUnlock();
  if (a4)
  {
    *a4 = v19;
    *(a4 + 16) = v20;
  }

  if (a5)
  {
    *a5 = v15;
  }

  return v14;
}

uint64_t piqcv_postOccupancyChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  result = CMNotificationCenterPostNotification();
  v4 = *(DerivedStorage + 1184);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v5)
    {
      v5(&v9, a1);
    }

    else
    {
      v9 = *MEMORY[0x1E6960C70];
      v10 = *(MEMORY[0x1E6960C70] + 16);
    }

    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v11 = v9;
      v12 = v10;
      return v8(v4, &v11);
    }
  }

  return result;
}

uint64_t piqIsImageTimeSequentialSafe(uint64_t a1, char a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a2 & 2) == 0)
  {
    v6 = *(DerivedStorage + 88);
    if (!v6)
    {
      return 0;
    }

    if (v6 == 2)
    {
      if (*(DerivedStorage + 156) < 1)
      {
        time1 = *a3;
        v8 = *(DerivedStorage + 116);
        if (CMTimeCompare(&time1, &v8) <= 0)
        {
          return 0;
        }
      }

      else
      {
        time1 = *a3;
        v8 = *(DerivedStorage + 92);
        if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

uint64_t piqReportImageAvailableSequential(uint64_t a1, CMTime *a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v6 = result;
  if (*(result + 212))
  {
    time1 = *(result + 200);
    v12 = *a2;
    result = CMTimeCompare(&time1, &v12);
  }

  v7 = *&a2->value;
  *(v6 + 216) = a2->epoch;
  *(v6 + 200) = v7;
  v8 = *v6;
  if (v8)
  {
    v12 = *a2;
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 16);
    result = VTable + 16;
    v11 = *(v10 + 88);
    if (v11)
    {
      time1 = v12;
      return v11(v8, &time1, a3);
    }
  }

  return result;
}

__CFString *getFigFileTypeForFormatWriterFileFormatBits(char a1)
{
  v1 = kFigFileType_AppleM4A;
  v2 = kFigFileType_3GPP;
  v3 = kFigFileType_MPEG4;
  if ((a1 & 0x20) == 0)
  {
    v3 = kFigFileType_QuickTimeMovie;
  }

  if ((a1 & 2) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 0xC) != 0)
  {
    v2 = kFigFileType_AppleM4V;
  }

  if ((a1 & 0x10) == 0)
  {
    v1 = v2;
  }

  return *v1;
}

BOOL FigMovieFormatWriterCanFileTypeSupportMediaType(const void *a1, int a2, int a3)
{
  if (CFEqual(a1, @"QuickTimeMovie"))
  {
    return 1;
  }

  if (CFEqual(a1, @"MP4Family"))
  {
    result = 1;
    if (a2 <= 1936684397)
    {
      if (a2 == 1668047728)
      {
        return result;
      }

      v7 = 1835365473;
      goto LABEL_8;
    }

    if (a2 == 1936684398 || a2 == 1986618469)
    {
      return result;
    }

    v9 = 1952807028;
    goto LABEL_19;
  }

  if (CFEqual(a1, @"3GPFamily"))
  {
    if (a2 == 1936684398)
    {
      return 1;
    }

    if (a2 == 1952807028)
    {
      return a3 == 0;
    }

    v9 = 1986618469;
LABEL_19:
    if (a2 != v9)
    {
      return 0;
    }

    return a3 == 0;
  }

  if (!CFEqual(a1, @"iTunesVideoFamily"))
  {
    if (CFEqual(a1, @"iTunesAudioFamily"))
    {
      if (a2 <= 1952807027)
      {
        result = 1;
        if (a2 == 1751216244)
        {
          return result;
        }

        v8 = 1936684398;
        goto LABEL_10;
      }

      if (a2 != 1952807028 && a2 != 1986618469)
      {
        return 0;
      }

      v10 = a3 == 0;
    }

    else
    {
      v10 = CFEqual(a1, @"AppleImmersiveVideo") == 0;
    }

    return !v10;
  }

  result = 1;
  if (a2 > 1936684397)
  {
    if (a2 == 1936684398 || a2 == 1952807028)
    {
      return result;
    }

    v8 = 1986618469;
    goto LABEL_10;
  }

  v7 = 1668047728;
LABEL_8:
  if (a2 == v7)
  {
    return result;
  }

  v8 = 1935832172;
LABEL_10:
  if (a2 != v8)
  {
    return 0;
  }

  return result;
}

BOOL FigMovieFormatWriterCanFileTypeSupportFormatDescription(const void *a1, CMFormatDescriptionRef desc, int a3)
{
  MediaType = CMFormatDescriptionGetMediaType(desc);
  result = FigMovieFormatWriterCanFileTypeSupportMediaType(a1, MediaType, a3);
  if (!result)
  {
    return result;
  }

  if (!a3 && MediaType == 1952807028)
  {
    if (CFEqual(a1, @"iTunesVideoFamily"))
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
      if (MediaSubType != 2021028980 && MediaSubType != 2004251764)
      {
        return 0;
      }
    }
  }

  v9 = CMFormatDescriptionGetMediaSubType(desc);
  if (v9 <= 1903522656)
  {
    if (v9 != 1668641633)
    {
      v10 = 1886745441;
LABEL_13:
      if (v9 != v10)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v9 != 1903522657 && v9 != 2054517601)
  {
    v10 = 1970495843;
    goto LABEL_13;
  }

  if (CFEqual(a1, @"iTunesAudioFamily"))
  {
    return 0;
  }

LABEL_16:
  blockBufferOut = 0;
  v11 = CMFormatDescriptionGetMediaType(desc);
  v12 = CMFormatDescriptionGetMediaSubType(desc);
  v13 = figMovieWriter_fileFormatBitsForFileType(a1);
  if (v11 <= 1935832171)
  {
    if (v11 <= 1751216243)
    {
      v15 = 0;
      if (v11 == 1635088502)
      {
        goto LABEL_56;
      }

      if (v11 == 1668047728)
      {
        v16 = CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(0, desc, 0, &blockBufferOut);
        goto LABEL_57;
      }
    }

    else
    {
      if (v11 == 1751216244)
      {
        v16 = CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer();
        goto LABEL_57;
      }

      if (v11 == 1835365473)
      {
        v16 = CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(0, desc, 0, &blockBufferOut);
        goto LABEL_57;
      }

      v15 = 0;
      if (v11 == 1885954932)
      {
LABEL_56:
        SystemEncoding = CFStringGetSystemEncoding();
        v16 = CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(0, desc, SystemEncoding, v15, &blockBufferOut);
        goto LABEL_57;
      }
    }

LABEL_45:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, blockBufferOut, v22);
    goto LABEL_57;
  }

  if (v11 > 1952807027)
  {
    switch(v11)
    {
      case 1952807028:
        goto LABEL_40;
      case 1953325924:
        v16 = CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(0, desc, 0, &blockBufferOut);
        goto LABEL_57;
      case 1986618469:
        if ((v13 & 2) != 0)
        {
          v17 = MEMORY[0x1E69601C8];
        }

        else if ((v13 & 4) != 0)
        {
          v17 = MEMORY[0x1E69601D8];
        }

        else
        {
          if ((v13 & 1) == 0)
          {
            v15 = 0;
            goto LABEL_56;
          }

          if (v12 == 1635148595 || v12 == 1751479857 || v12 == 1685481573)
          {
            v17 = MEMORY[0x1E6962858];
          }

          else
          {
            v17 = MEMORY[0x1E69601D0];
          }
        }

        v15 = *v17;
        goto LABEL_56;
    }

    goto LABEL_45;
  }

  if (v11 == 1935832172)
  {
LABEL_40:
    v16 = CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(0, desc, 0, &blockBufferOut);
    goto LABEL_57;
  }

  if (v11 != 1935893870)
  {
    if (v11 == 1936684398)
    {
      if ((v13 & 2) != 0)
      {
        v14 = *MEMORY[0x1E6960610];
      }

      else if (v13)
      {
        v14 = *MEMORY[0x1E6960618];
      }

      else
      {
        v14 = 0;
      }

      v16 = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(0, desc, v14, &blockBufferOut);
      goto LABEL_57;
    }

    goto LABEL_45;
  }

  v16 = CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer();
LABEL_57:
  v19 = v16;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v19 == 0;
}

uint64_t createFigMovieFormatWriterObject(const __CFAllocator *a1, int a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  cf = 0;
  v7 = @"com.apple.quicktime-movie";
  v32 = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"FileFormat");
    if (Value)
    {
      if (FigCFEqual())
      {
        v10 = kFigFileType_QuickTimeMovie;
      }

      else if (FigCFEqual())
      {
        v10 = kFigFileType_AppleM4A;
      }

      else if (FigCFEqual() || FigCFEqual())
      {
        v10 = kFigFileType_AppleM4V;
      }

      else if (FigCFEqual())
      {
        v10 = kFigFileType_3GPP;
      }

      else if (FigCFEqual() || FigCFEqual())
      {
        v10 = kFigFileType_MPEG4;
      }

      else
      {
        if (!FigCFEqual())
        {
          value_low = 4294954662;
          goto LABEL_31;
        }

        v10 = kFigFileType_AppleImmersiveVideo;
      }

      v7 = *v10;
      LODWORD(Value) = figMovieWriter_fileFormatBitsForFileType(Value);
    }

    v14 = CFDictionaryGetValue(theDict, @"WriteFileType");
    if (v14)
    {
      v15 = v14;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v15))
      {
        if (CFEqual(@"WriteFileType_Never", v15))
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
          if (!CFEqual(@"WriteFileType_BeforeMediaData", v15))
          {
            if (CFEqual(@"WriteFileType_OnlyInWriteHeaderToByteStream", v15))
            {
              v13 = 3;
            }

            else
            {
              v13 = 2;
            }
          }
        }
      }

      else
      {
        v17 = CFBooleanGetTypeID();
        v13 = 2;
        if (v17 == CFGetTypeID(v15))
        {
          if (CFEqual(v15, *MEMORY[0x1E695E4D0]))
          {
            v13 = 2;
          }

          else
          {
            v13 = 3;
          }
        }
      }
    }

    else
    {
      v13 = 2;
    }

    v18 = CFDictionaryGetValue(theDict, @"AudioPrimingFormat");
    if (v18 && (v19 = v18, !CFEqual(v18, @"AudioPrimingFormat_Manual")))
    {
      if (CFEqual(v19, @"AudioPrimingFormat_NoPrimingInfo"))
      {
        v12 = 1;
      }

      else if (CFEqual(v19, @"AudioPrimingFormat_iTunesGaplessInfo"))
      {
        v12 = 2;
      }

      else if (CFEqual(v19, @"AudioPrimingFormat_RollSampleGroup"))
      {
        v12 = 3;
      }

      else if (CFEqual(v19, @"AudioPrimingFormat_DetermineFromSampleOrFileFormat"))
      {
        v12 = 5;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v11 = CFDictionaryGetValue(theDict, @"FileTypeProfile");
    FigCFDictionaryGetBooleanIfPresent();
  }

  else
  {
    LODWORD(Value) = 0;
    v11 = 0;
    v12 = 0;
    v13 = 2;
  }

  FigFormatWriterGetClassID();
  v20 = CMDerivedObjectCreate();
  if (v20)
  {
    goto LABEL_30;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = cf;
  *(DerivedStorage + 20) = 600;
  v23 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 40) = *(v23 + 16);
  CMTimeMake(&v31, 1, 2);
  *(DerivedStorage + 48) = v31;
  CMTimeMake(&v31, 5, 1);
  *(DerivedStorage + 72) = v31;
  v24 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 96) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 112) = *(v24 + 16);
  *(DerivedStorage + 268) = 0;
  *(DerivedStorage + 320) = v13;
  *(DerivedStorage + 324) = v12;
  *(DerivedStorage + 16) = v32;
  *(DerivedStorage + 334) = 1;
  if (v7)
  {
    v25 = CFRetain(v7);
  }

  else
  {
    v25 = 0;
  }

  *(DerivedStorage + 720) = v25;
  if (v11)
  {
    v26 = CFRetain(v11);
  }

  else
  {
    v26 = 0;
  }

  *(DerivedStorage + 728) = v26;
  *(DerivedStorage + 692) = Value;
  *(DerivedStorage + 376) = 1;
  *(DerivedStorage + 360) = -1;
  *(DerivedStorage + 520) = FigSimpleMutexCreate();
  *(DerivedStorage + 336) = FigSimpleMutexCreate();
  if (a2 | v32)
  {
    *(DerivedStorage + 18) = 1;
  }

  if ((*(DerivedStorage + 576) = FigSemaphoreCreate(), *(DerivedStorage + 584) = FigSemaphoreCreate(), *(DerivedStorage + 592) = FigSemaphoreCreate(), *(DerivedStorage + 600) = FigSemaphoreCreate(), *(DerivedStorage + 552) = 0, v20 = MovieInformationCreate(a1, 0, (DerivedStorage + 736)), v20) || (MovieHeaderMakerCreateWithMovieInformation(a1, *(DerivedStorage + 736), 0, (DerivedStorage + 744)), v20) || (v13 == 2 ? (v27 = a2 == 0) : (v27 = 0), !a2 ? ((*(DerivedStorage + 692) & 1) == 0 ? (v28 = 1) : (v28 = 3)) : (v28 = 2), (v20 = MovieSampleDataWriterCreate(a1, v7, v11, a2 != 0, v27, v28, (DerivedStorage + 752)), v20) || (v20 = MovieInformationSetMovieTimeScale(*(DerivedStorage + 736), *(DerivedStorage + 20)), v20)))
  {
LABEL_30:
    value_low = v20;
  }

  else
  {
    Mutable = CFArrayCreateMutable(a1, 0, 0);
    if (Mutable)
    {
      value_low = 0;
      *(DerivedStorage + 488) = Mutable;
      *a4 = cf;
      return value_low;
    }

    createFigMovieFormatWriterObject_cold_1(&v31);
    value_low = LODWORD(v31.value);
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t FigMovieFormatWriterCreateForWritingMovieFragments(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, void *a5)
{
  cf = 0;
  if (!a2)
  {
    FigMovieFormatWriterCreateForWritingMovieFragments_cold_2(&v14);
    return v14;
  }

  if (!a5)
  {
    FigMovieFormatWriterCreateForWritingMovieFragments_cold_1(&v14);
    return v14;
  }

  v8 = createFigMovieFormatWriterObject(a1, 1, theDict, &cf);
  v9 = cf;
  if (v8)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 392) = a2;
    *(DerivedStorage + 400) = a3;
    v11 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 408) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 384) = 1;
    *(DerivedStorage + 424) = *(v11 + 16);
    *(DerivedStorage + 432) = 0;
    *(DerivedStorage + 529) = 1;
    *(DerivedStorage + 332) = 257;
    *(DerivedStorage + 352) = 1;
    *a5 = v9;
  }

  return v8;
}

BOOL validateFigTrackID(uint64_t a1, int a2)
{
  Count = *(a1 + 488);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return a2 > 0 && Count != 0 && Count >= a2;
}

uint64_t figMovieWriter_fileFormatBitsForFileType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      if (CFEqual(v1, @"3GPFamily"))
      {
        return 3;
      }

      else if (CFEqual(v1, @"iTunesVideoFamily"))
      {
        return 13;
      }

      else if (CFEqual(v1, @"iTunesAudioFamily"))
      {
        return 21;
      }

      else if (CFEqual(v1, @"iTunesFamily"))
      {
        return 5;
      }

      else
      {
        if (CFEqual(v1, @"ISOFamily"))
        {
          return 33;
        }

        result = CFEqual(v1, @"MP4Family");
        if (result)
        {
          return 33;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *figMovieWriter_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigMovieWriter %p>", a1);
  return Mutable;
}

void editBuilderRelease(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    FigCEA608DataInspectorRelease(*(a1 + 2));
    *(a1 + 2) = 0;
    v3 = *(a1 + 3);
    if (v3)
    {
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3), i);
          FigCEA608DataInspectorRelease(ValueAtIndex);
        }
      }

      v8 = *(a1 + 3);
      if (v8)
      {
        CFRelease(v8);
      }

      *(a1 + 3) = 0;
    }

    FigCEA608DataInspectorRelease(*(a1 + 1));
    *(a1 + 1) = 0;
    CFAllocatorDeallocate(v2, a1);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

__n128 getLongestMediaDecodeDuration@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Count = CFArrayGetCount(*(a1 + 488));
  v18 = **&MEMORY[0x1E6960CC0];
  v17 = v18;
  if (Count < 1)
  {
    goto LABEL_14;
  }

  v5 = Count;
  v6 = 0;
  v7 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v6);
    if (!ValueAtIndex[25])
    {
      v9 = ValueAtIndex;
      memset(&v16, 0, sizeof(v16));
      getMediaDecodeDuration(ValueAtIndex, &v16);
      if (*v9 == 1986618469 || *v9 == 1936684398)
      {
        ++v7;
        time1 = v16;
        v14 = v18;
        v11 = &v18;
      }

      else
      {
        time1 = v16;
        v14 = v17;
        v11 = &v17;
      }

      CMTimeMaximum(v11, &time1, &v14);
    }

    ++v6;
  }

  while (v5 != v6);
  if (v7 <= 0)
  {
LABEL_14:
    v12 = &v17;
  }

  else
  {
    v12 = &v18;
  }

  result = *&v12->value;
  *a2 = *&v12->value;
  *(a2 + 16) = v12->epoch;
  return result;
}

uint64_t copyFigMatrixAsArray(const __CFAllocator *a1, char *valuePtr, CFArrayRef *a3)
{
  v6 = 0;
  v7 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  *values = 0u;
  v20 = 0u;
  v8 = *MEMORY[0x1E695E480];
  while (2)
  {
    v9 = valuePtr;
    v10 = 3;
    v11 = v6;
    do
    {
      v12 = CFNumberCreate(v8, kCFNumberFloat32Type, v9);
      if (!v12)
      {
        copyFigMatrixAsArray_cold_2(&v18);
        goto LABEL_9;
      }

      v6 = v11 + 1;
      values[v11] = v12;
      v9 += 4;
      ++v11;
      --v10;
    }

    while (v10);
    ++v7;
    valuePtr += 12;
    if (v7 != 3)
    {
      continue;
    }

    break;
  }

  v13 = CFArrayCreate(a1, values, 9, MEMORY[0x1E695E9C0]);
  if (v13)
  {
    v14 = 0;
    *a3 = v13;
    goto LABEL_10;
  }

  copyFigMatrixAsArray_cold_1(&v18);
LABEL_9:
  v14 = v18;
LABEL_10:
  for (i = 0; i != 9; ++i)
  {
    v16 = values[i];
    if (v16)
    {
      CFRelease(v16);
    }
  }

  return v14;
}

void createMetadataWritersDictionary(const __CFAllocator *a1, uint64_t a2, CFDictionaryRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  keys = 0;
  v15 = 0;
  v16 = 0;
  v6 = *(a2 + 692);
  if ((v6 & 4) != 0)
  {
    keys = @"com.apple.itunes";
    v15 = @"org.mp4ra";
    v7 = 2;
  }

  else if (v6)
  {
    keys = @"org.mp4ra";
    v7 = 1;
  }

  else
  {
    keys = @"com.apple.quicktime.udta";
    v15 = @"com.apple.quicktime.mdta";
    v16 = @"com.apple.itunes";
    v7 = 3;
  }

  v8 = 0;
  memset(values, 0, sizeof(values));
  while (1)
  {
    v12 = 0;
    getMetadataSerializer(a1, a2, *(&keys + v8), &v12);
    if (v9)
    {
      break;
    }

    FigMetadataSerializerGetFigMetadataWriter();
    values[v8++] = v10;
    if (v7 == v8)
    {
      v11 = CFDictionaryCreate(a1, &keys, values, v7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v11)
      {
        *a3 = v11;
      }

      else
      {
        createMetadataWritersDictionary_cold_1(&v12);
      }

      return;
    }
  }
}

uint64_t copyPredeterminedSizesAsDictionary(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  if (!*(a1 + 448))
  {
    v5 = 0;
LABEL_7:
    v7 = 0;
    *a3 = v5;
    return v7;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    copyPredeterminedSizesAsDictionary_cold_1(&v9);
    return v9;
  }

  v5 = Mutable;
  v6 = FigCFDictionarySetInt64();
  if (!v6)
  {
    v6 = FigCFDictionarySetInt64();
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v7 = v6;
  CFRelease(v5);
  return v7;
}

uint64_t copyMediaDataCheckpointIntervalAsDictionary(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  if (!*(a1 + 330))
  {
    v6 = 0;
LABEL_6:
    v8 = 0;
    *a3 = v6;
    return v8;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    copyMediaDataCheckpointIntervalAsDictionary_cold_1(&v10);
    return v10;
  }

  v6 = Mutable;
  v10 = *(a1 + 144);
  v11 = *(a1 + 160);
  v7 = FigCFDictionarySetCMTime();
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  CFRelease(v6);
  return v8;
}

CFTypeRef copy64BitDataOffsetInTrackRunAtomPolicy(uint64_t a1, void *a2)
{
  v3 = *(a1 + 536);
  if (v3 == 1)
  {
    v4 = kFigFormatWriter64BitDataOffsetInTrackRunAtomPolicy_Allow;
  }

  else
  {
    if (v3 != 2)
    {
      result = 0;
      goto LABEL_8;
    }

    v4 = kFigFormatWriter64BitDataOffsetInTrackRunAtomPolicy_DoNotAllow;
  }

  result = *v4;
  if (*v4)
  {
    result = CFRetain(result);
  }

LABEL_8:
  *a2 = result;
  return result;
}

double getFigTimeMappingFromDictionary(const __CFDictionary *a1, _OWORD *a2)
{
  result = 0.0;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      Value = CFDictionaryGetValue(a1, @"MediaStart");
      v7 = CFDictionaryGetValue(a1, @"MediaDuration");
      v8 = CFDictionaryGetValue(a1, @"TrackStart");
      v9 = CFDictionaryGetValue(a1, @"TrackDuration");
      if (Value)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10 && v8 != 0 && v9 != 0)
      {
        v13 = v9;
        CMTimeMakeFromDictionary(v18, Value);
        CMTimeMakeFromDictionary(&v17, v7);
        v18[1] = v17;
        CMTimeMakeFromDictionary(&v17, v8);
        v19 = *&v17.value;
        *&v20[0] = v17.epoch;
        CMTimeMakeFromDictionary(&v17, v13);
        *(v20 + 8) = v17;
        v14 = v19;
        a2[2] = *&v18[1].timescale;
        a2[3] = v14;
        v15 = v20[1];
        a2[4] = v20[0];
        a2[5] = v15;
        result = *&v18[0].value;
        v16 = *&v18[0].epoch;
        *a2 = *&v18[0].value;
        a2[1] = v16;
      }
    }
  }

  return result;
}

uint64_t getFirstEditBuilder(uint64_t a1)
{
  v2 = *(a1 + 424);
  if (!v2)
  {
    return *(a1 + 496);
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    return *(a1 + 496);
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    v6 = *(CFArrayGetValueAtIndex(*(a1 + 424), v5) + 34);
    v7 = CFArrayGetCount(*(v6 + 24));
    if (v7 + editMediaTimeIsValid(*(v6 + 16)))
    {
      break;
    }

    if (v4 == ++v5)
    {
      return *(a1 + 496);
    }
  }

  return v6;
}

const void *editBuilderGetEditMediaTimeAtIndex(uint64_t a1, CFIndex a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count <= a2)
  {
    if (Count == a2)
    {
      v7 = *(a1 + 16);
      if (editMediaTimeIsValid(v7))
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);

    return CFArrayGetValueAtIndex(v5, a2);
  }
}

uint64_t copyFigTimeMappingAsDictionary(CFAllocatorRef allocator, uint64_t a2, CFDictionaryRef *a3)
{
  keys[4] = *MEMORY[0x1E69E9840];
  keys[0] = @"MediaStart";
  keys[1] = @"MediaDuration";
  keys[2] = @"TrackStart";
  keys[3] = @"TrackDuration";
  time = *a2;
  time.value = CMTimeCopyAsDictionary(&time, allocator);
  v11 = *(a2 + 24);
  *&time.timescale = CMTimeCopyAsDictionary(&v11, allocator);
  v11 = *(a2 + 48);
  time.epoch = CMTimeCopyAsDictionary(&v11, allocator);
  v11 = *(a2 + 72);
  v13 = CMTimeCopyAsDictionary(&v11, allocator);
  v6 = CFDictionaryCreate(allocator, keys, &time, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v6)
  {
    value_low = 0;
    *a3 = v6;
  }

  else
  {
    copyFigTimeMappingAsDictionary_cold_1(&v11);
    value_low = LODWORD(v11.value);
  }

  for (i = 0; i != 32; i += 8)
  {
    v9 = *(&time.value + i);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return value_low;
}

uint64_t editBuilderCreateTimeMappingArray(uint64_t a1, int32_t a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, CFAllocatorRef allocator, const __CFArray **a8, uint64_t a9)
{
  v58 = 0;
  if (*(a4 + 12))
  {
    *&time1[0].start.value = *a4;
    time1[0].start.epoch = *(a4 + 16);
    *&time2.start.value = *a3;
    time2.start.epoch = *(a3 + 16);
    if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v38);
      return v21;
    }
  }

  cf = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!cf)
  {
    editBuilderCreateTimeMappingArray_cold_1(time1);
    return LODWORD(time1[0].start.value);
  }

  Count = CFArrayGetCount(*(a1 + 24));
  v45 = Count + editMediaTimeIsValid(*(a1 + 16));
  v17 = *(a4 + 12);
  if (!v45)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_10:
    *&time1[0].start.value = *a3;
    time1[0].start.epoch = *(a3 + 16);
    *&time2.start.value = *a4;
    time2.start.epoch = *(a4 + 16);
    *&duration.start.value = *&a6->value;
    duration.start.epoch = a6->epoch;
    appended = appendEmptyEditTimeMappingDictionary(cf, allocator, a2, time1, &time2, &duration.start, a6);
    if (!appended)
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  v18 = MEMORY[0x1E6960CC0];
  if (v17)
  {
    *&time1[0].start.value = *a4;
    time1[0].start.epoch = *(a4 + 16);
    *&time2.start.value = *MEMORY[0x1E6960CC0];
    time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
    {
      goto LABEL_10;
    }
  }

  v57 = *v18;
  *&time1[0].start.value = *a3;
  time1[0].start.epoch = *(a3 + 16);
  v41 = *&v57.value;
  time2.start = v57;
  epoch = v57.epoch;
  v37 = a5;
  v39 = a8;
  allocatora = allocator;
  if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
  {
    *&time1[0].start.value = *a3;
    time1[0].start.epoch = *(a3 + 16);
    *&time2.start.value = *&a6->value;
    time2.start.epoch = a6->epoch;
    appended = appendEmptyEditTimeMappingDictionary(cf, allocator, a2, time1, MEMORY[0x1E6960CC0], &time2.start, a6);
    if (appended)
    {
      goto LABEL_49;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  if (v45 < 1)
  {
LABEL_39:
    if (*(a4 + 12))
    {
      time1[0].start = v57;
      *&time2.start.value = *a3;
      time2.start.epoch = *(a3 + 16);
      if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
      {
        *&time1[0].start.value = *a3;
        v32 = *(a3 + 16);
LABEL_44:
        time1[0].start.epoch = v32;
        *&time2.start.value = *a4;
        time2.start.epoch = *(a4 + 16);
        *&duration.start.value = *&a6->value;
        duration.start.epoch = a6->epoch;
        appended = appendEmptyEditTimeMappingDictionary(cf, allocatora, a2, time1, &time2, &duration.start, a6);
        if (!appended)
        {
          goto LABEL_45;
        }

LABEL_49:
        v22 = appended;
        goto LABEL_50;
      }

      time1[0].start = v57;
      *&time2.start.value = *a4;
      time2.start.epoch = *(a4 + 16);
      if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
      {
        *&time1[0].start.value = *&v57.value;
        v32 = v57.epoch;
        goto LABEL_44;
      }
    }

LABEL_45:
    a8 = v39;
LABEL_46:
    *a8 = cf;
    v22 = 0;
    if (a9)
    {
      v33 = *&a6->value;
      *(a9 + 16) = a6->epoch;
      *a9 = v33;
    }

    return v22;
  }

  v23 = 0;
  while (1)
  {
    EditMediaTimeAtIndex = editBuilderGetEditMediaTimeAtIndex(a1, v23);
    v25 = *(EditMediaTimeAtIndex + 14);
    memset(&v56, 0, sizeof(v56));
    memset(&duration, 0, 24);
    v26 = *(EditMediaTimeAtIndex + 12);
    time1[0].start.epoch = *(EditMediaTimeAtIndex + 28);
    *&time1[0].start.value = v26;
    *&time2.start.value = *(EditMediaTimeAtIndex + 60);
    time2.start.epoch = *(EditMediaTimeAtIndex + 76);
    CMTimeAdd(&duration.start, &time1[0].start, &time2.start);
    memset(&v59, 0, sizeof(v59));
    *&time1[0].start.value = *(EditMediaTimeAtIndex + 36);
    time1[0].start.epoch = *(EditMediaTimeAtIndex + 52);
    *&time2.start.value = *(EditMediaTimeAtIndex + 84);
    time2.start.epoch = *(EditMediaTimeAtIndex + 100);
    CMTimeSubtract(&v59, &time1[0].start, &time2.start);
    time1[0].start = v59;
    *&time2.start.value = *&duration.start.value;
    time2.start.epoch = duration.start.epoch;
    CMTimeSubtract(&v56, &time1[0].start, &time2.start);
    memset(&v59, 0, sizeof(v59));
    time1[0].start = v56;
    CMTimeMultiplyByFloat64(&v59, &time1[0].start, 1.0 / v25);
    memset(&time2, 0, sizeof(time2));
    time1[0].start = v57;
    duration.start = v59;
    CMTimeRangeMake(&time2, &time1[0].start, &duration.start);
    memset(&v54, 0, sizeof(v54));
    v27 = *(EditMediaTimeAtIndex + 12);
    time1[0].start.epoch = *(EditMediaTimeAtIndex + 28);
    *&time1[0].start.value = v27;
    *&duration.start.value = *(EditMediaTimeAtIndex + 60);
    duration.start.epoch = *(EditMediaTimeAtIndex + 76);
    CMTimeAdd(&v54, &time1[0].start, &duration.start);
    v53 = v54;
    memset(&start, 0, sizeof(start));
    *&time1[0].start.value = *(EditMediaTimeAtIndex + 36);
    time1[0].start.epoch = *(EditMediaTimeAtIndex + 52);
    *&duration.start.value = *(EditMediaTimeAtIndex + 84);
    duration.start.epoch = *(EditMediaTimeAtIndex + 100);
    CMTimeSubtract(&start, &time1[0].start, &duration.start);
    if (!v19)
    {
      time1[0] = time2;
      *&duration.start.value = *a3;
      duration.start.epoch = *(a3 + 16);
      if (!CMTimeRangeContainsTime(time1, &duration.start))
      {
        v19 = 0;
        v28 = 1;
        goto LABEL_21;
      }

      memset(time1, 0, 24);
      *&duration.start.value = *a3;
      duration.start.epoch = *(a3 + 16);
      rhs = time2.start;
      CMTimeSubtract(&time1[0].start, &duration.start, &rhs);
      rhs = time1[0].start;
      CMTimeMultiplyByFloat64(&duration.start, &rhs, v25);
      *&time1[0].start.value = *&duration.start.value;
      time1[0].start.epoch = duration.start.epoch;
      rhs = v54;
      CMTimeAdd(&v53, &duration.start, &rhs);
    }

    v28 = 0;
    v19 = 1;
LABEL_21:
    time1[0] = time2;
    *&duration.start.value = *a4;
    duration.start.epoch = *(a4 + 16);
    v29 = CMTimeRangeContainsTime(time1, &duration.start);
    if (v29)
    {
      memset(time1, 0, 24);
      *&duration.start.value = *a4;
      duration.start.epoch = *(a4 + 16);
      rhs = v57;
      CMTimeSubtract(&time1[0].start, &duration.start, &rhs);
      rhs = time1[0].start;
      CMTimeMultiplyByFloat64(&duration.start, &rhs, v25);
      time1[0].start.epoch = duration.start.epoch;
      *&time1[0].start.value = *&duration.start.value;
      rhs = duration.start;
      v50 = v54;
      CMTimeAdd(&duration.start, &rhs, &v50);
      start = duration.start;
    }

    if ((v28 & 1) == 0)
    {
      if (EditMediaTimeAtIndex[8])
      {
        time1[0].start = v53;
        duration.start = start;
        rhs = *a6;
        appended = appendEmptyEditTimeMappingDictionary(cf, allocatora, a2, time1, &duration, &rhs, a6);
        if (appended)
        {
          goto LABEL_49;
        }

        goto LABEL_35;
      }

      time1[0].start = start;
      duration.start = v53;
      CMTimeSubtract(&rhs, &time1[0].start, &duration.start);
      duration.start = rhs;
      CMTimeConvertScale(&time1[0].start, &duration.start, a2, kCMTimeRoundingMethod_QuickTime);
      rhs = time1[0].start;
      CMTimeMultiplyByFloat64(&v50, &time1[0].start, 1.0 / v25);
      *&time1[0].start.value = v41;
      time1[0].start.epoch = epoch;
      duration.start = v50;
      if (CMTimeCompare(&time1[0].start, &duration.start) < 0)
      {
        break;
      }
    }

LABEL_35:
    time1[0] = time2;
    CMTimeRangeGetEnd(&v57, time1);
    if (v29)
    {
      goto LABEL_45;
    }

    if (v45 == ++v23)
    {
      goto LABEL_39;
    }
  }

  memset(time1, 0, sizeof(time1));
  if (EditMediaTimeAtIndex[132])
  {
    lhs = v53;
    v47 = *(EditMediaTimeAtIndex + 5);
    CMTimeSubtract(&duration.start, &lhs, &v47);
    v53 = duration.start;
    *&lhs.value = v41;
    lhs.epoch = epoch;
    v47 = duration.start;
    CMTimeMaximum(&duration.start, &lhs, &v47);
    v53 = duration.start;
  }

  lhs = v53;
  v47 = *v37;
  CMTimeAdd(&duration.start, &lhs, &v47);
  v53 = duration.start;
  lhs = rhs;
  CMTimeRangeMake(time1, &duration.start, &lhs);
  lhs = *a6;
  v47 = v50;
  CMTimeRangeMake(&duration, &lhs, &v47);
  time1[1] = duration;
  v30 = copyFigTimeMappingAsDictionary(allocatora, time1, &v58);
  v31 = v58;
  if (!v30)
  {
    appendTrackEditSegmentDictionary(cf, v58);
    if (!v30)
    {
      if (v31)
      {
        CFRelease(v31);
        v58 = 0;
      }

      lhs = *a6;
      v47 = time1[1].duration;
      CMTimeAdd(&duration.start, &lhs, &v47);
      *&a6->value = *&duration.start.value;
      a6->epoch = duration.start.epoch;
      goto LABEL_35;
    }
  }

  v22 = v30;
  if (v31)
  {
    CFRelease(v31);
  }

LABEL_50:
  CFRelease(cf);
  return v22;
}

uint64_t appendEmptyEditTimeMappingDictionary(const __CFArray *a1, const __CFAllocator *a2, int32_t a3, uint64_t a4, uint64_t a5, CMTime *a6, uint64_t a7)
{
  v23 = 0;
  *&lhs[0].start.value = *a5;
  lhs[0].start.epoch = *(a5 + 16);
  *&rhs.start.value = *a4;
  rhs.start.epoch = *(a4 + 16);
  CMTimeSubtract(&start, &lhs[0].start, &rhs.start);
  rhs.start = start;
  CMTimeConvertScale(&lhs[0].start, &rhs.start, a3, kCMTimeRoundingMethod_QuickTime);
  epoch = lhs[0].start.epoch;
  start = lhs[0].start;
  v13 = *&lhs[0].start.value;
  *&lhs[0].start.value = *MEMORY[0x1E6960CC0];
  lhs[0].start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  *&rhs.start.value = v13;
  rhs.start.epoch = epoch;
  v14 = 0;
  if (CMTimeCompare(&lhs[0].start, &rhs.start) < 0)
  {
    *&rhs.start.value = *MEMORY[0x1E6960C70];
    rhs.start.epoch = *(MEMORY[0x1E6960C70] + 16);
    duration = rhs.start;
    CMTimeRangeMake(lhs, &rhs.start, &duration);
    memset(&lhs[1], 0, sizeof(CMTimeRange));
    duration = *a6;
    v18 = start;
    CMTimeRangeMake(&rhs, &duration, &v18);
    lhs[1] = rhs;
    v15 = copyFigTimeMappingAsDictionary(a2, lhs, &v23);
    v14 = v23;
    if (v15 || (appendTrackEditSegmentDictionary(a1, v23), v15))
    {
      v16 = v15;
      if (!v14)
      {
        return v16;
      }

      goto LABEL_5;
    }
  }

  *&rhs.start.value = *&a6->value;
  rhs.start.epoch = a6->epoch;
  duration = start;
  CMTimeAdd(&lhs[0].start, &rhs.start, &duration);
  v16 = 0;
  *a7 = *&lhs[0].start.value;
  *(a7 + 16) = lhs[0].start.epoch;
  if (v14)
  {
LABEL_5:
    CFRelease(v14);
  }

  return v16;
}

CFStringRef createiTunesGaplessInfoString(const __CFDictionary *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  valuePtr = 0;
  v9 = 0;
  Value = CFDictionaryGetValue(a1, @"EncodingDelayInFrame");
  v3 = CFDictionaryGetValue(a1, @"EncodingDrainInFrames");
  v4 = CFDictionaryGetValue(a1, @"DurationInFrames");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  if (v3)
  {
    CFNumberGetValue(v3, kCFNumberSInt32Type, &v10);
  }

  if (v4)
  {
    CFNumberGetValue(v4, kCFNumberSInt64Type, &v9);
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  *&v14[15] = 808464432;
  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  *v14 = v6;
  v13[5] = v6;
  v13[4] = v6;
  v13[3] = v6;
  v13[2] = v6;
  v13[1] = v6;
  v13[0] = v6;
  bytes = 32;
  snprintf(v13 + 8, 0x24uLL, " %08X %08X %016llX", valuePtr, v10, v5);
  v7 = 44;
  do
  {
    *(&bytes + v7) = 32;
    v7 += 9;
  }

  while (v7 != 116);
  return CFStringCreateWithBytes(*MEMORY[0x1E695E480], &bytes, 116, 0x600u, 0);
}

void copyMetadataSerializer(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  v10 = 0;
  if (a4)
  {
    getMetadataSerializer(a1, a2, a3, &v10);
    if (!v6)
    {
      v7 = v10;
      if (v10)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 16);
        if (v8)
        {
          if (v8(a1, v7, &cf))
          {
            if (cf)
            {
              CFRelease(cf);
            }
          }

          else
          {
            *a4 = cf;
          }
        }
      }
    }
  }

  else
  {
    copyMetadataSerializer_cold_1(&v11);
  }
}

CFArrayRef copyMetadataDestinationFormat(uint64_t a1, __CFString *cf1, CFArrayRef *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a1 + 692);
  if ((v4 & 4) != 0)
  {
    v8 = @"com.apple.itunes";
    v9 = @"org.mp4ra";
  }

  else
  {
    if (v4)
    {
      v8 = @"org.mp4ra";
      goto LABEL_10;
    }

    if (cf1)
    {
      if (CFEqual(cf1, @"com.apple.quicktime.mdta") || CFEqual(cf1, @"com.apple.quicktime.udta"))
      {
        v8 = cf1;
LABEL_10:
        v6 = 1;
        goto LABEL_11;
      }

      if (CFEqual(cf1, @"com.apple.itunes"))
      {
        v8 = @"com.apple.itunes";
        v9 = @"com.apple.quicktime.mdta";
        v6 = 3;
        v10 = @"com.apple.quicktime.udta";
        goto LABEL_11;
      }

      if (!CFEqual(cf1, @"org.mp4ra"))
      {
        v6 = 0;
        goto LABEL_11;
      }

      v8 = @"com.apple.quicktime.mdta";
      v9 = @"com.apple.quicktime.udta";
    }

    else
    {
      v8 = @"com.apple.quicktime.mdta";
      v9 = @"com.apple.quicktime.udta";
    }
  }

  v6 = 2;
LABEL_11:
  result = CFArrayCreate(*MEMORY[0x1E695E480], &v8, v6, MEMORY[0x1E695E9C0]);
  *a3 = result;
  return result;
}

uint64_t copyMetadataSourceAndDestinationFormats(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFArrayRef *a4)
{
  cf = 0;
  if (!(a3 | a4))
  {
    copyMetadataSourceAndDestinationFormats_cold_1(&v14);
    return v14;
  }

  FigMetadataReaderGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(v8, @"format", *MEMORY[0x1E695E480], &cf);
  if (v10)
  {
    v11 = cf;
  }

  else
  {
    if (a4)
    {
      copyMetadataDestinationFormat(a1, cf, a4);
    }

    v11 = cf;
    if (a3)
    {
      v10 = 0;
      *a3 = cf;
      return v10;
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v10;
}

uint64_t registerSourceIndexPair()
{
  result = _CFRuntimeRegisterClass();
  sSourceIndexPairID = result;
  return result;
}

CFStringRef sourceIndexPair_copyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (a1)
  {
    return CFStringCreateWithFormat(v2, 0, @"[SourceIndexPair %p] arraySource: %p index: %ld", a1, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    return CFStringCreateWithFormat(v2, 0, @"[SourceIndexPair %p]", 0);
  }
}

uint64_t appendBBufFromMetadataSerializerToBlockBuffer(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  targetBBuf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(a1, &targetBBuf);
  v6 = targetBBuf;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = targetBBuf == 0;
  }

  if (v7)
  {
    appended = v5;
    if (!targetBBuf)
    {
      return appended;
    }

    goto LABEL_7;
  }

  appended = CMBlockBufferAppendBufferReference(a2, targetBBuf, 0, 0, 0);
  v6 = targetBBuf;
  if (targetBBuf)
  {
LABEL_7:
    CFRelease(v6);
  }

  return appended;
}

void copyTrackMetadataSerializer(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v9 = 0;
  v10 = 0;
  if (a4)
  {
    getTrackMetadataSerializer(a1, a2, a3, &v10);
    if (!v6)
    {
      v7 = v10;
      if (v10)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 16);
        if (v8)
        {
          if (v8(a1, v7, &v9))
          {
            if (v9)
            {
              FigMetadataSerializerRelease(v9);
            }
          }

          else
          {
            *a4 = v9;
          }
        }
      }
    }
  }

  else
  {
    copyTrackMetadataSerializer_cold_1(&v11);
  }
}

double getTrackMetadataSerializer(uint64_t a1, void *a2, CFTypeRef cf1, void *a4)
{
  if (!cf1)
  {
    getTrackMetadataSerializer_cold_2(&v17);
    return result;
  }

  if (!a4)
  {
    getTrackMetadataSerializer_cold_1(&v16);
    return result;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.udta"))
  {
    if (*(a2[2] + 692))
    {
      return result;
    }

    v10 = a2[69];
    if (v10)
    {
      goto LABEL_18;
    }

    v11 = (a2 + 69);
    result = FigMetadataSerializerCreateForQuickTimeUserData(a1, v11);
    if (v12)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (CFEqual(cf1, @"org.mp4ra"))
  {
    if ((*(a2[2] + 692) & 1) == 0)
    {
      return result;
    }

    v10 = a2[69];
    if (v10)
    {
      goto LABEL_18;
    }

    v11 = (a2 + 69);
    result = FigMetadataSerializerCreateForISOUserData(a1, v11);
    if (v14)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.mdta"))
  {
    v10 = a2[68];
    if (v10)
    {
LABEL_18:
      *a4 = v10;
      return result;
    }

    v11 = (a2 + 68);
    result = FigMetadataSerializerCreateForQuickTimeMetadata(a1, v11);
    if (v13)
    {
      return result;
    }

LABEL_17:
    v10 = *v11;
    goto LABEL_18;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", 10553, v4);
}

void setTrackReferences(uint64_t *a1, const __CFDictionary *a2)
{
  v5 = MovieInformationRemoveAllTrackReferences(a1);
  if (a2)
  {
    if (!v5)
    {
      Count = CFDictionaryGetCount(a2);
      if (Count)
      {
        v7 = Count;
        if (Count >> 61)
        {
          emitter = fig_log_get_emitter();

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954660, "<<< FFW_QT/ISO >>>", 2602, v2);
        }

        else
        {
          v9 = *MEMORY[0x1E695E480];
          v10 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 8 * Count, 3838129463, 0);
          if (v10)
          {
            v11 = v10;
            v12 = MEMORY[0x19A8CC720](v9, 8 * v7, 227515377, 0);
            if (v12)
            {
              v13 = v12;
              allocator = v9;
              CFDictionaryGetKeysAndValues(a2, v11, v12);
              v14 = 0;
              while (1)
              {
                if (v13[v14])
                {
                  v15 = CFArrayGetCount(v13[v14]);
                  if (v15 >= 1)
                  {
                    break;
                  }
                }

LABEL_20:
                if (++v14 == v7)
                {
LABEL_21:
                  v20 = allocator;
                  goto LABEL_25;
                }
              }

              v16 = v15;
              v17 = 0;
              while (1)
              {
                if (!FigCFArrayGetInt32AtIndex())
                {
                  v20 = allocator;
                  v21 = 2624;
                  goto LABEL_24;
                }

                v18 = v17 + 1;
                if (!FigCFArrayGetInt32AtIndex())
                {
                  break;
                }

                if (FigCFStringGetOSTypeValue())
                {
                  MovieInformationAddOneTrackReference(a1, 0, 0, 0);
                  if (v19)
                  {
                    goto LABEL_21;
                  }
                }

                v17 = v18 + 1;
                if (v17 >= v16)
                {
                  goto LABEL_20;
                }
              }

              v21 = 2625;
              v20 = allocator;
LABEL_24:
              setTrackReferences_cold_1(v21, &v23);
LABEL_25:
              CFAllocatorDeallocate(v20, v11);
              CFAllocatorDeallocate(v20, v13);
            }

            else
            {
              setTrackReferences_cold_2(v9, v11, &v23);
            }
          }

          else
          {
            setTrackReferences_cold_3(&v23);
          }
        }
      }
    }
  }
}

uint64_t ffr_updateThreadPriority(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (!*(CMBaseObjectGetDerivedStorage() + 560))
  {
    return 0;
  }

  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v3 = FigThreadSetProperty();
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t setMediaDataCheckpointInterval(uint64_t a1, uint64_t a2)
{
  v7 = **&MEMORY[0x1E6960C70];
  if (!a2)
  {
    v3 = 0;
    goto LABEL_7;
  }

  if (FigCFDictionaryGetCMTimeIfPresent() != 1)
  {
    setMediaDataCheckpointInterval_cold_1(&time1);
    return LODWORD(time1.value);
  }

  if ((v7.flags & 1) == 0)
  {
    setMediaDataCheckpointInterval_cold_3(&time1);
    return LODWORD(time1.value);
  }

  time1 = **&MEMORY[0x1E6960CC0];
  v5 = v7;
  if ((CMTimeCompare(&time1, &v5) & 0x80000000) == 0)
  {
    setMediaDataCheckpointInterval_cold_2(&time1);
    return LODWORD(time1.value);
  }

  v3 = 1;
LABEL_7:
  result = 0;
  *(a1 + 144) = v7;
  *(a1 + 330) = v3;
  return result;
}

double set64BitDataOffsetInTrackRunAtomPolicy(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(a1 + 536) = 0;
    return result;
  }

  if (FigCFEqual())
  {
    v5 = 1;
LABEL_7:
    *(a1 + 536) = v5;
    return result;
  }

  if (FigCFEqual())
  {
    v5 = 2;
    goto LABEL_7;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", 3315, v2);
}

double figMovieWriter_CopyTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFAllocator *a4, CFArrayRef *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, CFIndex a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    figMovieWriter_CopyTrackProperty_cold_2(&v57);
    return result;
  }

  if (!a5)
  {
    figMovieWriter_CopyTrackProperty_cold_1(&v57);
    return result;
  }

  v26 = DerivedStorage;
  if (!DerivedStorage || *(DerivedStorage + 335))
  {
    emitter = fig_log_get_emitter();
    v28 = v20;
    v29 = 4442;
LABEL_6:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", v29, v28);
  }

  v62 = 0;
  getTrackInfoForTrackID(DerivedStorage, v24, &v62);
  if (v31)
  {
    return result;
  }

  v32 = v62;
  v33 = *(v62 + 736);
  if (CFEqual(@"MediaTimeScale", a3))
  {
    LODWORD(v57) = *(v32 + 104);
    v34 = *MEMORY[0x1E695E480];
    v35 = &v57;
LABEL_12:
    v36 = kCFNumberSInt32Type;
LABEL_13:
    SInt32 = CFNumberCreate(v34, v36, v35);
    goto LABEL_14;
  }

  if (CFEqual(@"QTLoadSettings", a3))
  {
    *&v57 = 0;
    if (*(v32 + 40))
    {
      if (copyFigTrackLoadSettingsAsDictionary(a4, v32 + 44, &v57))
      {
        return result;
      }

      v38 = v57;
LABEL_29:
      *a5 = v38;
      return result;
    }

    goto LABEL_28;
  }

  if (CFEqual(@"MediaDataPrecedence", a3))
  {
    v34 = *MEMORY[0x1E695E480];
    v35 = (v32 + 100);
    goto LABEL_12;
  }

  if (CFEqual(@"InterleavingAdvance", a3))
  {
    v57 = *(v32 + 108);
    *&v58 = *(v32 + 124);
    SInt32 = CMTimeCopyAsDictionary(&v57, a4);
    goto LABEL_14;
  }

  if (CFEqual(@"InterleavingOrder", a3))
  {
    SInt32 = FigCFNumberCreateSInt32();
    goto LABEL_14;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a3))
  {
    v39 = *(v32 + 608);
    if (v39)
    {
      CFRetain(v39);
      v38 = *(v32 + 608);
      goto LABEL_29;
    }

LABEL_28:
    v38 = 0;
    goto LABEL_29;
  }

  if (CFEqual(@"PreferredChunkAlignment", a3))
  {
    LODWORD(v57) = 0;
    PreferredChunkAlignment = MovieSampleDataWriterTrackGetPreferredChunkAlignment(*(v26 + 752), *(v32 + 760), &v57);
LABEL_37:
    if (PreferredChunkAlignment)
    {
      return result;
    }

    SInt32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v57);
    goto LABEL_14;
  }

  if (CFEqual(@"PreferredChunkSize", a3))
  {
    LODWORD(v57) = 0;
    PreferredChunkAlignment = MovieSampleDataWriterTrackGetPreferredChunkSize(*(v26 + 752), *(v32 + 760), &v57);
    goto LABEL_37;
  }

  if (CFEqual(@"PreferredChunkDuration", a3))
  {
    v57 = *MEMORY[0x1E6960C70];
    *&v58 = *(MEMORY[0x1E6960C70] + 16);
    if (MovieSampleDataWriterTrackGetPreferredChunkDuration(*(v26 + 752), *(v32 + 760), &v57))
    {
      return result;
    }

    *&time.value = v57;
    time.epoch = v58;
    SInt32 = CMTimeCopyAsDictionary(&time, a4);
    goto LABEL_14;
  }

  if (CFEqual(@"AlternateGroupID", a3))
  {
    TrackAlternateGroupID = MovieInformationGetTrackAlternateGroupID(*(v26 + 736), v33);
LABEL_46:
    LOWORD(v57) = TrackAlternateGroupID;
LABEL_47:
    v34 = *MEMORY[0x1E695E480];
    v35 = &v57;
    v36 = kCFNumberSInt16Type;
    goto LABEL_13;
  }

  if (CFEqual(@"DefaultAlternateGroupID", a3))
  {
    TrackAlternateGroupID = MovieTrackGetDefaultAlternateGroupID(v33);
    goto LABEL_46;
  }

  if (CFEqual(@"ProvisionalAlternateGroupID", a3))
  {
    LOWORD(v57) = 0;
    if (MovieTrackGetProvisionalAlternateGroupID(v33, &v57))
    {
      goto LABEL_47;
    }

LABEL_50:
    SInt32 = 0;
    goto LABEL_14;
  }

  if (CFEqual(@"TrackVolume", a3))
  {
    if (*v32 != 1936684398)
    {
      emitter = fig_log_get_emitter();
      v28 = v20;
      v29 = 4529;
      goto LABEL_6;
    }

    LODWORD(v57) = MovieTrackGetVolume(v33);
    v34 = *MEMORY[0x1E695E480];
    v35 = &v57;
    v36 = kCFNumberFloat32Type;
    goto LABEL_13;
  }

  if (CFEqual(@"DefaultEditList", a3))
  {

    createDefaultTrackEditSegmentArray(a4, v32, a5);
  }

  else
  {
    if (CFEqual(@"EditList", a3))
    {
      SInt32 = *(v32 + 400);
      if (!SInt32)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"LanguageTag", a3))
    {
      SInt32 = *(v32 + 408);
      if (!SInt32)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"ExtendedLanguageTag", a3))
    {
      SInt32 = *(v32 + 416);
      if (!SInt32)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"EnableTrack", a3))
    {
      IsEnabled = MovieTrackIsEnabled(v33);
      v43 = MEMORY[0x1E695E4D0];
      if (!IsEnabled)
      {
        v43 = MEMORY[0x1E695E4C0];
      }

LABEL_75:
      SInt32 = *v43;
LABEL_76:
      SInt32 = CFRetain(SInt32);
      goto LABEL_14;
    }

    if (CFEqual(@"InterleaveTrack", a3))
    {
      v43 = MEMORY[0x1E695E4D0];
      if (!*(v32 + 352))
      {
        v43 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_75;
    }

    if (CFEqual(@"TrackDimensions", a3))
    {
      LODWORD(v57) = 0;
      LODWORD(time.value) = 0;
      MovieTrackGetSpatialInformation(v33, &v57, &time, 0);
      copyDimensionsAsDictionary(a4, a5, *&v57, *&time.value);
      return result;
    }

    if (CFEqual(@"CleanApertureDimensions", a3))
    {
      *&v57 = 0;
      if (*(v32 + 34))
      {
        v60 = 0.0;
        LODWORD(time.value) = 0;
        MovieTrackGetCleanApertureDimensions(v33, &time, &v60);
LABEL_91:
        if (copyDimensionsAsDictionary(a4, &v57, *&time.value, v60))
        {
          return result;
        }

        SInt32 = v57;
LABEL_14:
        *a5 = SInt32;
        return result;
      }

      if (*(v32 + 33))
      {
        goto LABEL_50;
      }

      goto LABEL_98;
    }

    if (CFEqual(@"ProductionApertureDimensions", a3))
    {
      *&v57 = 0;
      if (*(v32 + 36))
      {
        v60 = 0.0;
        LODWORD(time.value) = 0;
        MovieTrackGetProductionApertureDimensions(v33, &time, &v60);
        goto LABEL_91;
      }

      if (*(v32 + 35))
      {
        goto LABEL_50;
      }

      goto LABEL_98;
    }

    if (CFEqual(@"EncodedPixelsDimensions", a3))
    {
      *&v57 = 0;
      if (*(v32 + 38))
      {
        v60 = 0.0;
        LODWORD(time.value) = 0;
        MovieTrackGetEncodedPixelsDimensions(v33, &time, &v60);
        goto LABEL_91;
      }

      if (*(v32 + 37))
      {
        goto LABEL_50;
      }

LABEL_98:
      v44 = kFigFormatWriter_NoDimensions;
      goto LABEL_99;
    }

    if (CFEqual(@"TrackMatrix", a3))
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      MovieTrackGetSpatialInformation(v33, 0, 0, &v57);
      copyFigMatrixAsArray(a4, &v57, a5);
      return result;
    }

    if (CFEqual(@"FormatDescriptionArray", a3))
    {
      SInt32 = MovieTrackCopyFormatDescriptionArray(v33);
      goto LABEL_14;
    }

    if (CFEqual(@"TrackMetadataWriters", a3))
    {

      createTrackMetadataWritersDictionary(a4, v32, a5);
      return result;
    }

    if (CFEqual(@"TrackMetadataToTransfer", a3))
    {
      v45 = *(v32 + 560);
      if (!v45)
      {
        goto LABEL_116;
      }

LABEL_112:
      SInt32 = CFPropertyListCreateDeepCopy(a4, v45, 0);
      goto LABEL_14;
    }

    if (CFEqual(@"TrackMetadataToWrite", a3))
    {
      v45 = *(v32 + 568);
      if (v45)
      {
        goto LABEL_112;
      }

LABEL_116:
      *a5 = 0;
      return result;
    }

    if (CFEqual(@"TrackMetadataAllowList", a3))
    {
      v46 = *(v32 + 576);
      if (v46)
      {
        SInt32 = CFDictionaryCreateCopy(a4, v46);
        goto LABEL_14;
      }

      goto LABEL_116;
    }

    if (CFEqual(@"ExcludeFromAutoSelection", a3))
    {
      IsExcludedFromAutoSelection = MovieTrackIsExcludedFromAutoSelection(v33);
      v44 = MEMORY[0x1E695E4D0];
      if (!IsExcludedFromAutoSelection)
      {
        v44 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_99;
    }

    if (CFEqual(@"WriteCompactSampleSizeIfPossible", a3))
    {
      v44 = MEMORY[0x1E695E4D0];
      v48 = *(v32 + 584);
      goto LABEL_125;
    }

    if (CFEqual(@"WriteQTSoundSampleTableLieIfPossible", a3))
    {
      v44 = MEMORY[0x1E695E4D0];
      v48 = *(v32 + 585);
LABEL_125:
      if (!v48)
      {
        v44 = MEMORY[0x1E695E4C0];
      }

LABEL_99:
      SInt32 = *v44;
      if (!*v44)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"Layer", a3))
    {
      TrackAlternateGroupID = MovieTrackGetLayer(v33);
      goto LABEL_46;
    }

    if (CFEqual(@"SampleReferenceBaseURL", a3))
    {
      SInt32 = *(v32 + 456);
      if (!SInt32)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"NegativeCompositionOffsetsInISOFilePolicy", a3))
    {

      copyNegativeCompositionOffsetsInISOFilePolicy(v26, v32, a5);
    }

    else if (CFEqual(@"HEVCSyncSampleNALUnitTypes", a3))
    {
      v54 = *(v32 + 736);

      MovieTrackCopySyncSampleCombinations(a4, v54, a5, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    else if (CFEqual(@"HEVCTemporalLevelInfoCombinations", a3))
    {
      v55 = *(v32 + 736);

      MovieTrackCopyTemporalLevelCombinations(a4, v55, a5);
    }

    else if (CFEqual(@"SampleGroupDescriptions", a3))
    {
      v56 = *(v32 + 736);

      return MovieTrackCopySampleGroupDescriptionDictionary(a4, v56, a5);
    }
  }

  return result;
}

uint64_t editBoundaryDetectorCreate(const void *a1, void *a2)
{
  v4 = MEMORY[0x19A8CC720](a1, 24, 0x1060040C052FB36, 0);
  if (v4)
  {
    v5 = v4;
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *v5 = v6;
    *(v5 + 2) = 0;
    v5[2] = 0xBFF0000000000000;
    *a2 = v5;
  }

  else
  {
    editBoundaryDetectorCreate_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t wakeupWritingThreadForEndOfDataReached(uint64_t result)
{
  v1 = *(result + 16);
  if (!*(v1 + 335))
  {
    if (*(v1 + 560))
    {
      return FigSemaphoreSignal();
    }
  }

  return result;
}

uint64_t wakeupWritingThreadForOverflow(uint64_t result)
{
  v1 = *(result + 16);
  if (!*(v1 + 335))
  {
    if (*(v1 + 560))
    {
      return FigSemaphoreSignal();
    }
  }

  return result;
}

double setNegativeCompositionOffsetsInISOFilePolicy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FigCFEqual())
  {
    v6 = 0;
LABEL_7:
    v7 = *(a1 + 744);
    v8 = *(a2 + 744);

    MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy(v7, v8, v6);
    return result;
  }

  if (FigCFEqual())
  {
    v6 = 1;
    goto LABEL_7;
  }

  if (FigCFEqual())
  {
    v6 = 2;
    goto LABEL_7;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", 3260, v3);
}

uint64_t editMediaTimeCreate(const void *a1, void *a2)
{
  v4 = MEMORY[0x19A8CC720](a1, 144, 0x1060040C85BD49CLL, 0);
  if (v4)
  {
    v5 = v4;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *v5 = v6;
    *(v5 + 8) = 0;
    *(v5 + 14) = 0xBFF0000000000000;
    v8 = MEMORY[0x1E6960C70];
    v9 = *MEMORY[0x1E6960C70];
    *(v5 + 12) = *MEMORY[0x1E6960C70];
    v10 = *(v8 + 16);
    *(v5 + 28) = v10;
    *(v5 + 36) = v9;
    *(v5 + 52) = v10;
    *(v5 + 60) = v9;
    *(v5 + 76) = v10;
    *(v5 + 100) = v10;
    *(v5 + 84) = v9;
    *(v5 + 17) = v10;
    *(v5 + 120) = v9;
    *a2 = v5;
  }

  else
  {
    editMediaTimeCreate_cold_1(&v11);
    return v11;
  }

  return result;
}

CFTypeID getTrimDurationsAndSpeedMultiplierFromSbuf(opaqueCMSampleBuffer *a1, CMTime *a2, CMTime *a3, char *a4, double *a5)
{
  *&v24.value = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  v24.epoch = v10;
  v17 = *&v24.value;
  *&v23.value = *&v24.value;
  v23.epoch = v10;
  valuePtr = 0x3FF0000000000000;
  getTrimDurationFromSampleBuffer(a1, *MEMORY[0x1E6960560], &v24);
  getTrimDurationFromSampleBuffer(a1, *MEMORY[0x1E6960558], &v23);
  lhs = v24;
  rhs = v23;
  CMTimeAdd(&v22, &lhs, &rhs);
  CMSampleBufferGetDuration(&lhs, a1);
  rhs = lhs;
  time2 = v22;
  if (CMTimeCompare(&rhs, &time2) <= 0)
  {
    rhs = lhs;
    time2 = v22;
    if (CMTimeCompare(&rhs, &time2) < 0)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(a1);
      CMFormatDescriptionGetMediaType(FormatDescription);
    }

    v24 = v22;
    *&v23.value = v17;
    v23.epoch = v10;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  result = CMGetAttachment(a1, *MEMORY[0x1E6960540], 0);
  v14 = 1.0;
  if (result)
  {
    v15 = result;
    TypeID = CFNumberGetTypeID();
    result = CFGetTypeID(v15);
    if (TypeID == result)
    {
      result = CFNumberGetValue(v15, kCFNumberDoubleType, &valuePtr);
      v14 = *&valuePtr;
    }
  }

  *a2 = v24;
  *a3 = v23;
  *a5 = v14;
  if (a4)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t editBoundaryDetectorDetectBoundary(uint64_t a1, int a2, int a3, int a4, double a5)
{
  v5 = *(a1 + 8);
  if (v5 <= 1)
  {
    if (a4)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    if (a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = v15;
    }

    if (a4)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    if (a2)
    {
      v16 = 1;
    }

    if (v5 != 1)
    {
      v16 = 0;
    }

    if (v5)
    {
      v8 = v16;
    }

    LODWORD(v14) = 0;
  }

  else
  {
    v6 = a3 != 0;
    if (a4)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    if (a2)
    {
      v8 = 3;
    }

    else
    {
      v8 = v7;
    }

    if (a2)
    {
      v6 = 0;
    }

    if (a4)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    if (a2)
    {
      v10 = 3;
    }

    else
    {
      v10 = v9;
    }

    if (a4)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    if (a2)
    {
      v11 = 1;
    }

    if (v5 == 4)
    {
      v12 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    if (v5 == 3)
    {
      v11 = v10;
      v13 = a2 == 0;
    }

    else
    {
      v13 = v12;
    }

    if (v5 == 2)
    {
      LODWORD(v14) = v6;
    }

    else
    {
      v8 = v11;
      LODWORD(v14) = v13;
    }
  }

  v17 = *(a1 + 16);
  if (v17 == a5 || v17 == -1.0)
  {
    v14 = v14;
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 8) = v8;
  *(a1 + 16) = a5;
  return v14;
}

CMTime *getTrimDurationFromSampleBuffer@<X0>(const void *a1@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = CMGetAttachment(a1, a2, 0);
  memset(&v8, 0, sizeof(v8));
  result = CMTimeMakeFromDictionary(&v8, v4);
  if (v8.flags)
  {
    *a3 = *&v8.value;
    epoch = v8.epoch;
  }

  else
  {
    v6 = MEMORY[0x1E6960CC0];
    *a3 = *MEMORY[0x1E6960CC0];
    epoch = *(v6 + 16);
  }

  *(a3 + 16) = epoch;
  return result;
}

double setTrackHeaderDataCompleteFlagIfCumulatedInterleavingDurationReachesCumulatedMovieFragmentDuration(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 + 329))
  {
    v3 = (a1 + 648);
    time1 = *(a1 + 672);
    time2 = *(a1 + 648);
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      v5 = (a1 + 672);
      *v3 = *(a1 + 672);
      *(a1 + 664) = *(a1 + 688);
      v6 = MEMORY[0x1E6960CC0];
      *(a1 + 601) = 1;
      time1 = *v6;
      if (*(v2 + 329))
      {
        v7 = 96;
      }

      else
      {
        if (!*(v2 + 330))
        {
LABEL_8:
          *&lhs.value = *v5;
          lhs.epoch = *(a1 + 688);
          v8 = time1;
          CMTimeAdd(&time2, &lhs, &v8);
          result = *&time2.value;
          *v5 = *&time2.value;
          *(a1 + 688) = time2.epoch;
          return result;
        }

        v7 = 144;
      }

      time1 = *(v2 + v7);
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t mergeTrackInfoLinkedList(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a1 != 0;
  v5 = &v12;
  v12 = 0u;
  v13 = 0u;
  if (a1 && a2)
  {
    v5 = &v12;
    while (1)
    {
      v6 = *(v3 + 100);
      v7 = *(v2 + 100);
      if (v6 | v7)
      {
        if (v6 < v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        time1 = *(v3 + 108);
        time2 = *(v2 + 108);
        if (CMTimeCompare(&time1, &time2))
        {
          time1 = *(v3 + 108);
          time2 = *(v2 + 108);
          if (CMTimeCompare(&time1, &time2) <= 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = *(v3 + 132);
          v10 = *(v2 + 132);
          if (v9 == v10)
          {
            if (*(*(v3 + 16) + 18) && *v3 != 1986618469 && *v2 == 1986618469)
            {
LABEL_9:
              *(v5 + 3) = v2;
              v8 = *(v2 + 24);
              goto LABEL_17;
            }
          }

          else if (v9 >= v10)
          {
            goto LABEL_9;
          }
        }
      }

      *(v5 + 3) = v3;
      v8 = v2;
      v2 = v3;
      v3 = *(v3 + 24);
LABEL_17:
      v5 = v2;
      v4 = v3 != 0;
      if (v3)
      {
        v2 = v8;
        if (v8)
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  v8 = a2;
LABEL_21:
  if (v4)
  {
    v8 = v3;
  }

  *(v5 + 3) = v8;
  return *(&v13 + 1);
}

uint64_t createBlockBufferByteStreamForMovieSampleDataWriter(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v9 = 0;
  cf = 0;
  v3 = CMBlockBufferCreateEmpty(v2, 0x40u, 0, &v9);
  if (v3)
  {
    v6 = v3;
    goto LABEL_10;
  }

  WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
  v5 = cf;
  if (WritableForBlockBuffer)
  {
    v6 = WritableForBlockBuffer;
    if (cf)
    {
      CFRelease(cf);
    }

LABEL_10:
    v7 = v9;
    if (!v9)
    {
      return v6;
    }

    goto LABEL_5;
  }

  *(a1 + 440) = v9;
  v6 = MovieSampleDataWriterSetDefaultByteStream(*(a1 + 752), v5);
  if (v5)
  {
    v7 = v5;
LABEL_5:
    CFRelease(v7);
  }

  return v6;
}

uint64_t flushAllSampleBufferQueues(uint64_t a1)
{
  value = *(a1 + 504);
  if (!value)
  {
    return 0;
  }

  v3 = 1;
  while (1)
  {
    v11 = 0;
    do
    {
      v10 = 0;
      if (isReadyToWriteTrackHeaderWithNoSamples(value))
      {
        v4 = 6;
      }

      else if (reachedInterleavingPeriod(value))
      {
        v4 = 1;
      }

      else if (trackBufferQueueIsSampleAvailable(value))
      {
        v4 = 2;
      }

      else if (trackBufferQueueIsAtEndOfData(value))
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
      }

      v5 = handleWritingThreadEvent(value, v4, &v10, &v11);
      if (v10)
      {
        v6 = 7;
      }

      else
      {
        v6 = 0;
      }

      if (v5)
      {
        v6 = 8;
      }
    }

    while (!v6);
    v7 = v5;
    if (v6 != 7)
    {
      break;
    }

    if (v11)
    {
      setNextCumulatedInterleavingDuration(value);
    }

    if (trackBufferQueueIsSampleAvailable(value) || (v8 = v3, value[13].epoch))
    {
      v8 = 0;
      v3 = 0;
    }

    if (value[1].value)
    {
      value = value[1].value;
    }

    else
    {
      value = *(a1 + 496);
    }

    if (value == *(a1 + 504))
    {
      v3 = 1;
      if (v8)
      {
        *(a1 + 504) = *(a1 + 496);
        return v7;
      }
    }
  }

  return v7;
}

const __CFArray *isReadyToWriteTrackHeaderWithNoSamples(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1[329] && v1[332] && !v1[352] && !*(a1 + 600))
  {
    return doesTrackHaveFormatDescriptionAndNonZeroMediaTimeScale(a1);
  }

  else
  {
    return 0;
  }
}

BOOL trackBufferQueueIsSampleAvailable(uint64_t a1)
{
  result = 1;
  if (!CMBufferQueueGetHead(*(a1 + 616)))
  {
    Head = CMBufferQueueGetHead(*(a1 + 608));
    if (!Head || !CMSampleBufferDataIsReady(Head))
    {
      return 0;
    }
  }

  return result;
}

uint64_t trackBufferQueueIsAtEndOfData(uint64_t a1)
{
  result = CMBufferQueueIsAtEndOfData(*(a1 + 608));
  if (result)
  {
    return CMBufferQueueIsEmpty(*(a1 + 616)) != 0;
  }

  return result;
}

const __CFArray *doesTrackHaveFormatDescriptionAndNonZeroMediaTimeScale(uint64_t a1)
{
  result = MovieTrackGetNumFormatDescriptions(*(a1 + 736));
  if (result)
  {
    return (MovieTrackGetMediaTimeScale(*(a1 + 736)) != 0);
  }

  return result;
}

uint64_t trackBufferQueueDequeueAndRetain(uint64_t a1, CMTime *a2, opaqueCMSampleBuffer **a3)
{
  v6 = CMBufferQueueDequeueAndRetain(*(a1 + 616));
  if (v6 || (v9 = CMBufferQueueDequeueIfDataReadyAndRetain(*(a1 + 608)), (v6 = v9) == 0) || *a1 != 1936684398 || (NumSamples = CMSampleBufferGetNumSamples(v9), memset(&v41, 0, sizeof(v41)), time = *a2, CMTimeMultiplyByFloat64(&v41, &time, 0.5), !NumSamples))
  {
LABEL_2:
    value_low = 0;
    *a3 = v6;
    return value_low;
  }

  v11 = *(a1 + 616);
  value = v41.value;
  v40 = *&v41.timescale;
  sampleBufferOut = 0;
  timingArrayEntriesNeededOut = 0;
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v6, 0, 0, &timingArrayEntriesNeededOut);
  if (SampleTimingInfoArray)
  {
    value_low = SampleTimingInfoArray;
    v15 = 0;
    goto LABEL_54;
  }

  if (timingArrayEntriesNeededOut)
  {
    if (timingArrayEntriesNeededOut < 0)
    {
      goto LABEL_12;
    }

    if (timingArrayEntriesNeededOut > 0x38E38E38E38E38ELL)
    {
      goto LABEL_12;
    }

    v14 = 72 * timingArrayEntriesNeededOut;
    if (!(72 * timingArrayEntriesNeededOut))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = malloc_type_malloc(v14, 0x1000040FF89C88EuLL);
  if (!v16)
  {
LABEL_12:
    trackBufferQueueDequeueAndRetain_cold_1(&time);
    v15 = 0;
    value_low = LODWORD(time.value);
    goto LABEL_54;
  }

  v15 = v16;
  v17 = CMSampleBufferGetSampleTimingInfoArray(v6, timingArrayEntriesNeededOut, v16, 0);
  if (v17)
  {
    value_low = v17;
    goto LABEL_54;
  }

  allocator = CFGetAllocator(v6);
  v18 = CMSampleBufferGetNumSamples(v6);
  memset(&v43, 0, sizeof(v43));
  CMSampleBufferGetOutputPresentationTimeStamp(&v43, v6);
  v39 = v18;
  if (v18 < 1)
  {
    value_low = 0;
    goto LABEL_54;
  }

  v36 = a3;
  v37 = v15;
  v19 = 0;
  while (1)
  {
    if (timingArrayEntriesNeededOut == 1)
    {
      flags = v15->duration.flags;
      if ((flags & 0x1D) == 1 && (v21 = v15->duration.value, timescale = v15->duration.timescale, epoch = v15->duration.epoch, time.value = v15->duration.value, time.timescale = timescale, time.flags = flags, time.epoch = epoch, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time, &time2)))
      {
        time2.value = value;
        *&time2.timescale = v40;
        CMTimeConvertScale(&time, &time2, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v24 = v39 - v19 >= time.value / v21 ? time.value / v21 : v39 - v19;
      }

      else
      {
        v24 = v39 - v19;
      }
    }

    else
    {
      time = **&MEMORY[0x1E6960CC0];
      v24 = 0;
      v25 = timingArrayEntriesNeededOut - v19;
      if (timingArrayEntriesNeededOut > v19)
      {
        v26 = &v15[v19];
        while (1)
        {
          time2 = time;
          rhs.value = value;
          *&rhs.timescale = v40;
          if ((CMTimeCompare(&time2, &rhs) & 0x80000000) == 0)
          {
            break;
          }

          time2 = time;
          v27 = *&v26->duration.value;
          rhs.epoch = v26->duration.epoch;
          *&rhs.value = v27;
          CMTimeAdd(&time, &time2, &rhs);
          ++v24;
          ++v26;
          if (v25 == v24)
          {
            v24 = v25;
            break;
          }
        }
      }
    }

    v28 = v24 <= 1 ? 1 : v24;
    v49.location = v19;
    v49.length = v28;
    v29 = CMSampleBufferCopySampleBufferForRange(allocator, v6, v49, &sampleBufferOut);
    if (v29)
    {
      break;
    }

    time = v43;
    v29 = CMSampleBufferSetOutputPresentationTimeStamp(sampleBufferOut, &time);
    if (v29)
    {
      break;
    }

    v30 = *(a1 + 776);
    if (v30)
    {
      time.value = 0;
      AudioSampleBufferSplitterCreateSplitSampleBufferArray(v30, sampleBufferOut, 0, &time);
      if (v31)
      {
        goto LABEL_45;
      }

      if (!time.value)
      {
        goto LABEL_49;
      }

      Count = CFArrayGetCount(time.value);
      if (Count < 1)
      {
LABEL_42:
        value_low = 0;
      }

      else
      {
        v33 = Count;
        v34 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(time.value, v34);
          v31 = CMBufferQueueEnqueue(v11, ValueAtIndex);
          if (v31)
          {
            break;
          }

          if (v33 == ++v34)
          {
            goto LABEL_42;
          }
        }

LABEL_45:
        value_low = v31;
      }

      if (time.value)
      {
        CFRelease(time.value);
      }

      if (value_low)
      {
        goto LABEL_59;
      }

      goto LABEL_49;
    }

    v29 = CMBufferQueueEnqueue(v11, sampleBufferOut);
    if (v29)
    {
      break;
    }

LABEL_49:
    memset(&time, 0, sizeof(time));
    CMSampleBufferGetOutputDuration(&time, sampleBufferOut);
    rhs = v43;
    v42 = time;
    CMTimeAdd(&time2, &rhs, &v42);
    v43 = time2;
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
      sampleBufferOut = 0;
    }

    v19 += v28;
    v15 = v37;
    if (v19 >= v39)
    {
      value_low = 0;
      a3 = v36;
      goto LABEL_54;
    }
  }

  value_low = v29;
LABEL_59:
  a3 = v36;
  v15 = v37;
LABEL_54:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  free(v15);
  if (!value_low)
  {
    CFRelease(v6);
    v6 = CMBufferQueueDequeueIfDataReadyAndRetain(*(a1 + 616));
    goto LABEL_2;
  }

  CFRelease(v6);
  return value_low;
}

uint64_t clearAllTracksHeaderDataCompleteFlag(uint64_t a1)
{
  result = CFArrayGetCount(*(a1 + 488));
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      result = CFArrayGetValueAtIndex(*(a1 + 488), i);
      *(result + 600) = 0;
    }
  }

  return result;
}

double clearAllTracksFirstSampleInfoInFragment(uint64_t a1)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v11 = *(MEMORY[0x1E6960CF0] + 48);
      v12 = *(MEMORY[0x1E6960CF0] + 32);
      v7 = *(MEMORY[0x1E6960CF0] + 64);
      v9 = *MEMORY[0x1E6960CF0];
      v10 = *(MEMORY[0x1E6960CF0] + 16);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v6);
        ValueAtIndex[53] = v12;
        ValueAtIndex[54] = v11;
        *(ValueAtIndex + 110) = v7;
        ValueAtIndex[51] = v9;
        ValueAtIndex[52] = v10;
        ++v6;
        *(ValueAtIndex + 452) = 0;
        result = 0.0;
        *(ValueAtIndex + 888) = 0u;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t getDecodeTimeForTrackFragmentInitialBaseMediaDecodeTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 424);
  if (result)
  {
    result = CFArrayGetCount(result);
    v5 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 16) = *(v5 + 16);
    if (result >= 1)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        result = CFArrayGetValueAtIndex(*(a1 + 424), v7);
        if (*(result + 60))
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_9;
        }
      }

      v9 = *(result + 48);
      *(a2 + 16) = *(result + 64);
      *a2 = v9;
    }
  }

  else
  {
    v8 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 16) = *(v8 + 16);
  }

LABEL_9:
  if ((*(a2 + 12) & 1) == 0)
  {
    *a2 = *(a1 + 232);
    *(a2 + 16) = *(a1 + 248);
  }

  if (*a1 == 1936684398)
  {
    result = FigCFEqual();
    v10 = result != 0;
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 492) && !v10)
  {
    FirstEditBuilder = getFirstEditBuilder(a1);
    Count = CFArrayGetCount(*(FirstEditBuilder + 24));
    result = editMediaTimeIsValid(*(FirstEditBuilder + 16));
    if (Count + result)
    {
      v13 = *(editBuilderGetEditMediaTimeAtIndex(FirstEditBuilder, 0) + 60);
      lhs = *a2;
      return CMTimeSubtract(a2, &lhs, &v13);
    }
  }

  return result;
}

CMBufferRef trackBufferQueueGetHead(uint64_t a1)
{
  result = CMBufferQueueGetHead(*(a1 + 616));
  if (!result)
  {
    v3 = *(a1 + 608);

    return CMBufferQueueGetHead(v3);
  }

  return result;
}

uint64_t isFirstSampleAttachmentSync(const __CFArray *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (CFArrayGetCount(a1))
  {
    CFArrayGetValueAtIndex(a1, 0);
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 1;
}

uint64_t createSynthesizedAudioPrimingSampleBuffer(CMTime *a1, CMTime *a2, CMSampleBufferRef sbuf, uint64_t a4, uint64_t a5, CMTime *a6, void *a7, uint64_t *a8, CMTime *a9)
{
  blockBufferOut = 0;
  v102 = 0;
  timingArrayEntriesNeededOut = 0;
  sizeArrayEntriesNeededOut = 0;
  memset(&timingInfoOut, 0, sizeof(timingInfoOut));
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  lhs = *a1;
  rhs = *a6;
  CMTimeAdd(&v105, &lhs, &rhs);
  rhs = *a2;
  v97 = v105;
  CMTimeSubtract(&lhs, &rhs, &v97);
  v104 = *&lhs.timescale;
  v17 = *a4;
  rhs = lhs;
  CMTimeConvertScale(&lhs, &rhs, v17, kCMTimeRoundingMethod_RoundAwayFromZero);
  v104 = *&lhs.timescale;
  v18 = *(a4 + 20);
  v19 = (LODWORD(lhs.value) + v18 - 1) / v18;
  CMTimeMake(&v97, v19 * v18, *a4);
  lhs = v97;
  v96 = *a6;
  CMTimeAdd(&rhs, &lhs, &v96);
  v20 = CMSampleBufferGetSampleSizeArray(sbuf, 0, 0, &sizeArrayEntriesNeededOut);
  if (v20)
  {
    v51 = v20;
    v38 = 0;
    v23 = 0;
    goto LABEL_51;
  }

  v93 = a5;
  if (sizeArrayEntriesNeededOut == 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = sizeArrayEntriesNeededOut + v19;
  }

  v22 = v19;
  if (v21)
  {
    v23 = 0;
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (v21 >> 61)
    {
      goto LABEL_49;
    }

    v24 = 8 * v21;
    if (!(8 * v21))
    {
      goto LABEL_49;
    }
  }

  else
  {
    v24 = 0;
  }

  v23 = malloc_type_malloc(v24, 0x100004000313F17uLL);
  if (!v23)
  {
    goto LABEL_49;
  }

  SampleSize = CMSampleBufferGetSampleSize(sbuf, 0);
  v26 = *MEMORY[0x1E695E480];
  appended = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
  if (appended)
  {
    goto LABEL_50;
  }

  v95 = v22;
  if (v22 >= 1)
  {
    v28 = 0;
    do
    {
      appended = CMBlockBufferAppendBufferReference(blockBufferOut, DataBuffer, 0, SampleSize, 0);
      if (appended)
      {
        goto LABEL_50;
      }
    }

    while (++v28 < v95);
  }

  appended = CMBlockBufferAppendBufferReference(blockBufferOut, DataBuffer, 0, 0, 0);
  if (appended)
  {
    goto LABEL_50;
  }

  if (v21 == 1)
  {
    *v23 = SampleSize;
  }

  else
  {
    if (v95 >= 1)
    {
      v29 = (v95 + 1) & 0xFFFFFFFE;
      v30 = vdupq_n_s64(v95 - 1);
      v31 = xmmword_196E73090;
      v32 = v23 + 1;
      v33 = vdupq_n_s64(2uLL);
      do
      {
        v34 = vmovn_s64(vcgeq_u64(v30, v31));
        if (v34.i8[0])
        {
          *(v32 - 1) = SampleSize;
        }

        if (v34.i8[4])
        {
          *v32 = SampleSize;
        }

        v31 = vaddq_s64(v31, v33);
        v32 += 2;
        v29 -= 2;
      }

      while (v29);
    }

    appended = CMSampleBufferGetSampleSizeArray(sbuf, sizeArrayEntriesNeededOut, &v23[v95], 0);
    if (appended)
    {
      goto LABEL_50;
    }
  }

  appended = CMSampleBufferGetSampleTimingInfoArray(sbuf, 0, 0, &timingArrayEntriesNeededOut);
  if (appended)
  {
LABEL_50:
    v51 = appended;
    v38 = 0;
    goto LABEL_51;
  }

  v88 = a8;
  v35 = timingArrayEntriesNeededOut == 1 ? 1 : timingArrayEntriesNeededOut + v95;
  if (v35)
  {
    if ((v35 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (v35 > 0x38E38E38E38E38ELL)
    {
      goto LABEL_49;
    }

    v36 = 72 * v35;
    if (!(72 * v35))
    {
      goto LABEL_49;
    }
  }

  else
  {
    v36 = 0;
  }

  v89 = malloc_type_malloc(v36, 0x1000040FF89C88EuLL);
  if (!v89)
  {
LABEL_49:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v84, sampleSizeArray);
    goto LABEL_50;
  }

  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(sbuf, 0, &timingInfoOut);
  if (SampleTimingInfo)
  {
    v51 = SampleTimingInfo;
    v38 = v89;
LABEL_51:
    if (v102)
    {
      CFRelease(v102);
    }

    goto LABEL_53;
  }

  if (v35 == 1)
  {
    v38 = v89;
    *&v89->duration.value = *&timingInfoOut.duration.value;
    v39 = *&timingInfoOut.duration.epoch;
    v40 = *&timingInfoOut.presentationTimeStamp.timescale;
    v41 = *&timingInfoOut.decodeTimeStamp.value;
    v89->decodeTimeStamp.epoch = timingInfoOut.decodeTimeStamp.epoch;
    *&v89->presentationTimeStamp.timescale = v40;
    *&v89->decodeTimeStamp.value = v41;
    *&v89->duration.epoch = v39;
  }

  else
  {
    v38 = v89;
    if (v95 >= 1)
    {
      v42 = 0;
      v43 = v89;
      do
      {
        *&v43->duration.value = *&timingInfoOut.duration.value;
        v44 = *&timingInfoOut.duration.epoch;
        v45 = *&timingInfoOut.presentationTimeStamp.timescale;
        v46 = *&timingInfoOut.decodeTimeStamp.value;
        v43->decodeTimeStamp.epoch = timingInfoOut.decodeTimeStamp.epoch;
        *&v43->presentationTimeStamp.timescale = v45;
        *&v43->decodeTimeStamp.value = v46;
        *&v43->duration.epoch = v44;
        ++v42;
        ++v43;
      }

      while (v42 < v95);
    }

    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sbuf, timingArrayEntriesNeededOut, &v89[v95], 0);
    if (SampleTimingInfoArray)
    {
      goto LABEL_48;
    }
  }

  v48 = blockBufferOut;
  IsReady = CMSampleBufferDataIsReady(sbuf);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  SampleTimingInfoArray = CMSampleBufferCreate(v26, v48, IsReady, 0, 0, FormatDescription, v95 + v93, v35, v38, v21, v23, &v102);
  if (SampleTimingInfoArray)
  {
LABEL_48:
    v51 = SampleTimingInfoArray;
    goto LABEL_51;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  blockBufferOut = 0;
  v53 = CMCopyDictionaryOfAttachments(v26, sbuf, 1u);
  if (v53)
  {
    v54 = v53;
    CMSetAttachments(v102, v53, 1u);
    CFRelease(v54);
  }

  v86 = v95 + v93;
  v55 = CMCopyDictionaryOfAttachments(v26, sbuf, 0);
  if (v55)
  {
    v56 = v55;
    CMSetAttachments(v102, v55, 0);
    CFRelease(v56);
  }

  v87 = v23;
  v57 = v102;
  lhs = rhs;
  v58 = CMTimeCopyAsDictionary(&lhs, v26);
  if (v58)
  {
    v59 = v58;
    CMSetAttachment(v57, *MEMORY[0x1E6960560], v58, 1u);
    CFRelease(v59);
  }

  theArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (theArray)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v102, 1u);
    if (SampleAttachmentsArray)
    {
      v61 = SampleAttachmentsArray;
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        i = 0;
        v63 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v63);
          v65 = CFDictionaryGetCount(ValueAtIndex);
          v66 = malloc_type_malloc(8 * v65, 0x80040B8603338uLL);
          v67 = malloc_type_malloc(8 * v65, 0x80040B8603338uLL);
          CFDictionaryGetKeysAndValues(ValueAtIndex, v66, v67);
          if (!v63)
          {
            i = 0;
          }

          v94 = v63;
          if (!v63 && v95 >= 1)
          {
            for (i = 0; i < v95; ++i)
            {
              v68 = CFArrayGetValueAtIndex(v61, i);
              if (v65 >= 1)
              {
                v69 = v68;
                v70 = v66;
                v71 = v67;
                v72 = v65;
                do
                {
                  v74 = *v70++;
                  v73 = v74;
                  v75 = *v71++;
                  CFDictionarySetValue(v69, v73, v75);
                  --v72;
                }

                while (v72);
              }
            }
          }

          v76 = CFArrayGetValueAtIndex(v61, i + v94);
          if (v65 >= 1)
          {
            v77 = v76;
            v78 = v66;
            v79 = v67;
            do
            {
              v81 = *v78++;
              v80 = v81;
              v82 = *v79++;
              CFDictionarySetValue(v77, v80, v82);
              --v65;
            }

            while (v65);
          }

          free(v66);
          free(v67);
          v63 = v94 + 1;
        }

        while (v94 + 1 != Count);
      }
    }
  }

  v51 = 0;
  *a7 = v102;
  v102 = 0;
  v23 = v87;
  *v88 = v86;
  *a9 = rhs;
  v38 = v89;
LABEL_53:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v23)
  {
    free(v23);
  }

  if (v38)
  {
    free(v38);
  }

  return v51;
}

uint64_t editBuilderResetCurrentEditMediaTime(uint64_t a1)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (editMediaTimeIsValid(v3))
  {
    CFArrayAppendValue(*(a1 + 24), v3);
  }

  else
  {
    FigCEA608DataInspectorRelease(v3);
  }

  return editMediaTimeCreate(*a1, v2);
}

void trackEndSession(uint64_t a1, __int128 *a2, int a3)
{
  if (*(a1 + 480))
  {
    v8 = *(a1 + 16);
    v9 = malloc_type_calloc(1uLL, 0x118uLL, 0x102004013D73AF6uLL);
    if (v9)
    {
      v10 = v9;
      *v9 = *(a1 + 184);
      v11 = *(a1 + 200);
      v12 = *(a1 + 216);
      v13 = *(a1 + 232);
      *(v9 + 8) = *(a1 + 248);
      *(v9 + 2) = v12;
      *(v9 + 3) = v13;
      *(v9 + 1) = v11;
      v14 = *(v8 + 24);
      *(v9 + 11) = *(v8 + 40);
      *(v9 + 72) = v14;
      v15 = MEMORY[0x1E6960C70];
      v16 = *(MEMORY[0x1E6960C70] + 16);
      *(v9 + 14) = v16;
      v26 = *v15;
      *(v9 + 6) = *v15;
      *(v9 + 30) = *(a1 + 464);
      v17 = *(a1 + 484);
      *(v9 + 124) = *(a1 + 468);
      *(v9 + 140) = v17;
      *(v9 + 37) = a3;
      v18 = *(a2 + 2);
      *(v9 + 152) = *a2;
      *(v9 + 21) = v18;
      v27 = *(a1 + 136);
      v19 = *(a1 + 104);
      if (v19)
      {
        time = *(a1 + 136);
        CMTimeConvertScale(&v27, &time, v19, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      }

      *(v10 + 176) = v27;
      getSessionMediaDisplayStartTime(a1, &time);
      *(v10 + 200) = time;
      v27 = *(a1 + 160);
      v20 = *(a1 + 104);
      if (v20)
      {
        time = *(a1 + 160);
        CMTimeConvertScale(&v27, &time, v20, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      }

      *(v10 + 224) = v27;
      v21 = *(a1 + 432);
      *(v10 + 33) = *(a1 + 448);
      *(v10 + 248) = v21;
      *(v10 + 34) = *(a1 + 496);
      CFArrayAppendValue(*(a1 + 424), v10);
      if (a3 == 2)
      {
        Count = CFArrayGetCount(*(a1 + 424));
        if (Count >= 1)
        {
          v23 = Count + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 424), v23 - 2);
            if (ValueAtIndex[108])
            {
              break;
            }

            v25 = *a2;
            *(ValueAtIndex + 14) = *(a2 + 2);
            *(ValueAtIndex + 6) = v25;
            --v23;
          }

          while (v23 > 1);
        }
      }

      *(a1 + 496) = 0;
      if (*(v8 + 329) && *(v8 + 352))
      {
        *(a1 + 353) = 1;
      }

      *(a1 + 468) = v26;
      *(a1 + 484) = v16;
    }

    else
    {
      trackEndSession_cold_1(&time);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", 5315, v3);
  }
}

double trackBeginSession(uint64_t a1, __n128 *a2, int a3)
{
  if (*(a1 + 480))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", 5232, v3);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = a1 + 468;
    getMediaDecodeDuration(a1, &v20);
    v9 = MEMORY[0x1E6960CF0];
    *(a1 + 432) = *&v20.value;
    v10 = *v9;
    *(a1 + 200) = v9[1];
    v11 = v9[3];
    *(a1 + 216) = v9[2];
    *(a1 + 448) = v20.epoch;
    *(a1 + 232) = v11;
    *(a1 + 248) = *(v9 + 8);
    *(a1 + 184) = v10;
    v12 = MEMORY[0x1E6960CC0];
    v13 = *MEMORY[0x1E6960CC0];
    *(a1 + 256) = *MEMORY[0x1E6960CC0];
    v14 = *(v12 + 16);
    *(a1 + 272) = v14;
    v15 = MEMORY[0x1E6960C88];
    *(a1 + 280) = *MEMORY[0x1E6960C88];
    *(a1 + 296) = *(v15 + 16);
    *(a1 + 152) = v14;
    *(a1 + 136) = v13;
    v16 = *MEMORY[0x1E6960C80];
    *(a1 + 320) = *(MEMORY[0x1E6960C80] + 16);
    *(a1 + 304) = v16;
    *(a1 + 176) = v14;
    *(a1 + 160) = v13;
    *(a1 + 464) = a3;
    v17 = *a2;
    *(v8 + 16) = a2[1].n128_u64[0];
    *v8 = v17;
    if (!*(a1 + 492) || *(a1 + 496) || !editBuilderCreate(*MEMORY[0x1E695E480], (a1 + 496)))
    {
      if (*(v7 + 329))
      {
        if (*(v7 + 352))
        {
          *(a1 + 353) = 1;
        }
      }

      MediaSampleTimingGeneratorReset(*(a1 + 752));
    }
  }

  return result;
}

uint64_t getSampleSizeArrayFromSbuf(opaqueCMSampleBuffer *a1, CMItemCount a2, size_t *a3, CMItemCount *a4)
{
  sizeArrayEntriesNeededOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (ImageBuffer)
  {
    if (a2 > 0)
    {
      v9 = ImageBuffer;
      BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer);
      Height = CVPixelBufferGetHeight(v9);
      result = 0;
      *a3 = Height * BytesPerRow;
      if (!a4)
      {
        return result;
      }

      v13 = 1;
      goto LABEL_16;
    }

    v13 = 1;
LABEL_11:
    result = 4294954559;
    if (!a4)
    {
      return result;
    }

LABEL_16:
    *a4 = v13;
    return result;
  }

  result = CMSampleBufferGetSampleSizeArray(a1, 0, 0, &sizeArrayEntriesNeededOut);
  if (result)
  {
    if (result != -12735)
    {
      return result;
    }

    result = 0;
    if (!a4)
    {
      return result;
    }

LABEL_15:
    v13 = sizeArrayEntriesNeededOut;
    goto LABEL_16;
  }

  v13 = sizeArrayEntriesNeededOut;
  if (sizeArrayEntriesNeededOut > a2)
  {
    goto LABEL_11;
  }

  result = CMSampleBufferGetSampleSizeArray(a1, a2, a3, 0);
  if (a4 && !result)
  {
    goto LABEL_15;
  }

  return result;
}

void getTrackInfoForTrackID(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 488);
  if (v5 && (Count = CFArrayGetCount(v5), Count >= 1))
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v10);
      if (ValueAtIndex[183] == a2)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_6;
      }
    }

    *a3 = ValueAtIndex;
  }

  else
  {
LABEL_6:
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", 9207, v3);
  }
}

uint64_t copyFigTrackLoadSettingsAsDictionary(CFAllocatorRef allocator, uint64_t a2, CFDictionaryRef *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *keys = 0u;
  v21 = 0u;
  *values = 0u;
  v19 = 0u;
  if (*(a2 + 12))
  {
    v17 = *a2;
    v6 = CMTimeCopyAsDictionary(&v17, allocator);
    if (!v6)
    {
      copyFigTrackLoadSettingsAsDictionary_cold_1(&v17);
      return LODWORD(v17.value);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 36))
  {
    v17 = *(a2 + 24);
    v7 = CMTimeCopyAsDictionary(&v17, allocator);
    if (!v7)
    {
      copyFigTrackLoadSettingsAsDictionary_cold_2(&v17);
      v9 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a2 + 48));
  if (!v9)
  {
    copyFigTrackLoadSettingsAsDictionary_cold_5(&v17);
LABEL_29:
    v11 = 0;
LABEL_30:
    value_low = LODWORD(v17.value);
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt32Type, (a2 + 52));
  v11 = v10;
  if (!v10)
  {
    copyFigTrackLoadSettingsAsDictionary_cold_4(&v17);
    goto LABEL_30;
  }

  if (v6)
  {
    keys[0] = @"PreloadStart";
    values[0] = v6;
    v12 = 1;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = 0;
  if (v7)
  {
LABEL_11:
    *(keys | (8 * v12)) = @"PreloadDuration";
    *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v12++ & 1))) = v7;
  }

LABEL_12:
  keys[v12] = @"PreloadFlags";
  values[v12] = v9;
  v13 = v12 + 1;
  keys[v13] = @"DefaultHints";
  values[v13] = v10;
  v14 = CFDictionaryCreate(allocator, keys, values, v12 + 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v14)
  {
    copyFigTrackLoadSettingsAsDictionary_cold_3(&v17);
    goto LABEL_30;
  }

  value_low = 0;
  *a3 = v14;
  if (v6)
  {
LABEL_14:
    CFRelease(v6);
  }

LABEL_15:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return value_low;
}

uint64_t copyDimensionsAsDictionary(const __CFAllocator *a1, CFDictionaryRef *a2, double a3, double a4)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &v14);
  if (!v7)
  {
    copyDimensionsAsDictionary_cold_3(keys);
    return LODWORD(keys[0]);
  }

  v8 = v7;
  v9 = CFNumberCreate(v6, kCFNumberCGFloatType, &v15);
  if (!v9)
  {
    copyDimensionsAsDictionary_cold_2(v8, keys);
    return LODWORD(keys[0]);
  }

  v10 = v9;
  keys[0] = @"Width";
  keys[1] = @"Height";
  values[0] = v8;
  values[1] = v9;
  v11 = CFDictionaryCreate(a1, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v11)
  {
    v12 = 0;
    *a2 = v11;
  }

  else
  {
    copyDimensionsAsDictionary_cold_1(&v16);
    v12 = v16;
  }

  CFRelease(v8);
  CFRelease(v10);
  return v12;
}

void createTrackMetadataWritersDictionary(const __CFAllocator *a1, void *a2, CFDictionaryRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  v16 = 0;
  if (*(v6 + 692))
  {
    v7 = @"org.mp4ra";
    v8 = 1;
  }

  else
  {
    v7 = @"com.apple.quicktime.mdta";
    v16 = @"com.apple.quicktime.udta";
    v8 = 2;
  }

  v9 = 0;
  values[0] = 0;
  values[1] = 0;
  keys = v7;
  while (1)
  {
    v13 = 0;
    getTrackMetadataSerializer(a1, a2, *(&keys + v9), &v13);
    if (v10)
    {
      break;
    }

    FigMetadataSerializerGetFigMetadataWriter();
    values[v9++] = v11;
    if (v8 == v9)
    {
      v12 = CFDictionaryCreate(a1, &keys, values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v12)
      {
        *a3 = v12;
      }

      else
      {
        createTrackMetadataWritersDictionary_cold_1(&v13);
      }

      return;
    }
  }
}

uint64_t getFigTrackLoadSettingsFromDictionary(const void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6960C70];
  v22 = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  valuePtr = 0;
  v20 = v22;
  v21 = timescale;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 4294954516;
  }

  v6 = *(v4 + 12);
  v7 = *(v4 + 16);
  Value = CFDictionaryGetValue(a1, @"PreloadStart");
  v9 = CFDictionaryGetValue(a1, @"PreloadDuration");
  v10 = CFDictionaryGetValue(a1, @"PreloadFlags");
  v11 = CFDictionaryGetValue(a1, @"DefaultHints");
  flags = v6;
  epoch = v7;
  if (Value)
  {
    CMTimeMakeFromDictionary(&v18, Value);
    v22 = v18.value;
    flags = v18.flags;
    timescale = v18.timescale;
    if ((v18.flags & 0x1D) != 1)
    {
      return 4294954516;
    }

    epoch = v18.epoch;
  }

  if (v9)
  {
    CMTimeMakeFromDictionary(&v18, v9);
    v20 = v18.value;
    v6 = v18.flags;
    v21 = v18.timescale;
    if ((v18.flags & 0x1D) == 1)
    {
      v7 = v18.epoch;
      goto LABEL_8;
    }

    return 4294954516;
  }

LABEL_8:
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr + 4);
  }

  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
    v14 = valuePtr;
  }

  else
  {
    v14 = 0;
  }

  result = 0;
  v16 = HIDWORD(valuePtr);
  *a2 = v22;
  *(a2 + 8) = timescale;
  *(a2 + 12) = flags;
  v17 = v20;
  *(a2 + 16) = epoch;
  *(a2 + 24) = v17;
  *(a2 + 32) = v21;
  *(a2 + 36) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v16;
  *(a2 + 52) = v14;
  return result;
}

uint64_t getDimensionsFromDictionary(const void *a1, _OWORD *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"Width");
  v6 = CFDictionaryGetValue(a1, @"Height");
  if (!Value || v6 == 0)
  {
    return 4294954516;
  }

  v8 = v6;
  v10 = 0uLL;
  if (!CFNumberGetValue(Value, kCFNumberCGFloatType, &v10) || !CFNumberGetValue(v8, kCFNumberCGFloatType, &v10 + 8))
  {
    return 4294954516;
  }

  result = 0;
  *a2 = v10;
  return result;
}

CMTime *OUTLINED_FUNCTION_17_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *rhs, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 rhsa, uint64_t rhs_16, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, uint64_t a34)
{
  *(v35 - 192) = *(v34 + 508);
  *(v35 - 176) = *(v34 + 524);
  rhsa = a33;
  rhs_16 = a34;

  return CMTimeAdd((v35 - 160), (v35 - 192), &rhsa);
}

__n128 OUTLINED_FUNCTION_18_21()
{
  result = *v0;
  *&STACK[0x250] = *v0;
  STACK[0x260] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_30_14@<X0>(unint64_t a1@<X8>)
{
  STACK[0x260] = a1;

  return CMTimeCompare(&STACK[0x270], &STACK[0x250]);
}

void *OUTLINED_FUNCTION_32_12(size_t a1)
{

  return malloc_type_malloc(a1, 0x1000040FF89C88EuLL);
}

CMTimeRange *OUTLINED_FUNCTION_33_13@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *duration, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *start, uint64_t a13, uint64_t a14, uint64_t a15, __int128 durationa, uint64_t duration_16, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t starta, uint64_t start_8, uint64_t start_16, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  durationa = *a1;
  duration_16 = *(a1 + 2);

  return CMTimeRangeMake(&a27, &starta, &durationa);
}

uint64_t OUTLINED_FUNCTION_39_12()
{

  return CMTimeCompare(&STACK[0x270], &STACK[0x250]);
}

uint64_t OUTLINED_FUNCTION_41_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return CMByteStreamAppendBlockBuffer();
}

CFTypeRef OUTLINED_FUNCTION_45_10(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_46_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  v21 = *(v17 + 720);
  v22 = *(v17 + 376);

  return MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer(v18, v19, v21, v22, va);
}

__n128 OUTLINED_FUNCTION_48_9@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 160) = *a1;
  *(v1 - 144) = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_59_5()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

__n128 OUTLINED_FUNCTION_63_5()
{
  result = *v0;
  *&STACK[0x270] = *v0;
  STACK[0x280] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_67_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v19 = va_arg(va1, CFArrayRef);

  return copyMetadataSourceAndDestinationFormats(v16, a1, va1, va);
}

CFTypeID OUTLINED_FUNCTION_68_6()
{

  return CFGetTypeID(v0);
}

uint64_t FigFormatWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigFormatWriterGetClassID_sRegisterFigFormatWriterTypeOnce, RegisterFigFormatWriterType);

  return CMBaseClassGetCFTypeID();
}

_BYTE *sbp_bq_dataBecameAvailable(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_BYTE *sbp_bq_UpcomingOutputPTSRangeChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v7 = result;
    FigSimpleMutexLock();
    v8 = *MEMORY[0x1E695E4D0];
    Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960590]);
    v7[48] = v8 == Value;
    if (v8 == Value)
    {
      v10 = CFDictionaryGetValue(a5, *MEMORY[0x1E6960578]);
      v11 = CFDictionaryGetValue(a5, *MEMORY[0x1E6960570]);
      CMTimeMakeFromDictionary(&v12, v10);
      *(v7 + 52) = v12;
      CMTimeMakeFromDictionary(&v12, v11);
      *(v7 + 76) = v12;
    }

    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }

  return result;
}

_BYTE *sbp_bq_CollectorCoherence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

__CFString *sbp_bq_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProviderForBufferQueue %p>", a1);
  return Mutable;
}

CMBufferRef sbp_bq_getAndRetainNextSampleBuffer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
    return 0;
  }

  else
  {
    v3 = *(DerivedStorage + 8);

    return CMBufferQueueDequeueAndRetain(v3);
  }
}

CMItemCount sbp_bq_scanForSampleBufferThatWillBeDisplayed(opaqueCMSampleBuffer *a1, _BYTE *a2)
{
  result = CMSampleBufferGetNumSamples(a1);
  if (result)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
    if (SampleAttachmentsArray && (v6 = SampleAttachmentsArray, CFArrayGetCount(SampleAttachmentsArray) >= 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v6, 0)) != 0 && *MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]))
    {
      return 0;
    }

    else
    {
      *a2 = 1;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t FigSampleBufferProviderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferProviderGetClassID_sRegisterFigSampleBufferProviderTypeOnce, RegisterFigSampleBufferProviderType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigClusterSynchronizationManager_ClientIsPlaying(char a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (qword_1ED4CAAE8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __FigClusterSynchronizationManager_ClientIsPlaying_block_invoke;
    v3[3] = &unk_1E74874F0;
    v4 = a1;
    v3[4] = &v5;
    dispatch_sync(qword_1ED4CAAE8, v3);
    v1 = *(v6 + 6);
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v1;
}

uint64_t figClusterSynchManager_shouldDisableOdeonStereoClockLink()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return FigGetCFPreferenceNumberWithDefault() == 1;
  }

  return result;
}

double figClusterSynchManager_ensureStopped()
{
  v2 = *MEMORY[0x1E69E9840];
  figClusterSynchManager_stopAndClearBonjourAdvertiser();
  result = figClusterSynchManager_stopAndClearBonjourBrowser();
  if (qword_1ED4CAAF8)
  {
    CFSetApplyFunction(qword_1ED4CAAF8, figClusterSynchManager_RemovePort, 0);
  }

  if (qword_1ED4CAAF0)
  {
    CFRelease(qword_1ED4CAAF0);
    qword_1ED4CAAF0 = 0;
  }

  if (qword_1ED4CAAF8)
  {
    CFRelease(qword_1ED4CAAF8);
    qword_1ED4CAAF8 = 0;
  }

  if (qword_1ED4CAB18)
  {
    CFRelease(qword_1ED4CAB18);
    qword_1ED4CAB18 = 0;
  }

  if (qword_1ED4CAB20)
  {
    CFRelease(qword_1ED4CAB20);
    qword_1ED4CAB20 = 0;
  }

  byte_1ED4CAAE1 = 0;
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t figClusterSynchManager_AddPort(const __CFData *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CM8021ASClockAddIPv6Port())
  {
    return figClusterSynchManager_AddPort_cold_1();
  }

  if (figClusterSynchManager_getPeerMACAddress_in6(BytePtr, &v4))
  {
    return figClusterSynchManager_AddPort_cold_2();
  }

  return figClusterSynchManager_toggleRequisiteAWDLTrafficRegistration(1, &v4);
}

uint64_t FigClusterSynchronizationManager_OneTimeInitialization()
{
  v0 = MGCopyAnswer();
  if (FigCFEqual())
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      FigNote_AllowInternalDefaultLogs();
      fig_note_initialize_category_with_default_work_cf();
      fig_note_initialize_category_with_default_work_cf();
      if (FigClusterSynchronizationManager_OneTimeInitialization_sfigClusterSynchronizationManager_InitOnce != -1)
      {
        FigClusterSynchronizationManager_OneTimeInitialization_cold_1();
        if (!v0)
        {
          return 0;
        }

        goto LABEL_5;
      }
    }
  }

  if (v0)
  {
LABEL_5:
    CFRelease(v0);
  }

  return 0;
}

void figClusterSynchManager_InitOnce()
{
  v0 = dispatch_queue_create("ClusterSynchManager callback queue", 0);
  qword_1ED4CAAE8 = v0;

  dispatch_async_f(v0, 0, figClusterSynchManager_DeferredInitOnce);
}

uint64_t figClusterSynchManager_toggleRequisiteAWDLTrafficRegistration(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  updated = sAPConnectivityHelperUpdateTrafficRegistration(qword_1ED4CAB00, @"timeSync", a2, a1);
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return updated;
}

void figClusterSynchManager_RemovePort(const __CFData *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v3 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CM8021ASClockRemoveIPv6Port())
  {
    figClusterSynchManager_RemovePort_cold_1();
  }

  else
  {
    figClusterSynchManager_RemovePort_cold_2(BytePtr, &v3);
  }
}

uint64_t figClusterSynchManager_updateMyClusterID()
{
  v17 = *MEMORY[0x1E69E9840];
  if (figClusterSynchManager_shouldDisableOdeonStereoClockLink())
  {
    if (dword_1EAF17140)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_16;
  }

  v1 = CFPreferencesCopyAppValue(@"tightSyncGroupUUID", @"com.apple.airplay");
  if (v1 || (v1 = CFPreferencesCopyAppValue(@"tightSyncUUID", @"com.apple.airplay")) != 0)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 != CFStringGetTypeID())
    {
      figClusterSynchManager_ensureStopped();
    }

    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      figClusterSynchManager_updateMyClusterID_cold_1(v16);
      v9 = v16[0];
LABEL_19:
      v10 = v2;
LABEL_20:
      CFRelease(v10);
      return v9;
    }

    v5 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v2);
    v6 = v5;
    if (v5 && (v7 = CFGetTypeID(v5), v7 == CFUUIDGetTypeID()))
    {
      if (!qword_1ED4CAB20)
      {
LABEL_14:
        if (dword_1EAF17140)
        {
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        qword_1ED4CAB20 = v6;
        v9 = figClusterSynchManager_ensureStarted();
        if (!v9)
        {
          dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_34);
        }

        goto LABEL_19;
      }

      if (!CFEqual(qword_1ED4CAB20, v6))
      {
        figClusterSynchManager_updateMyClusterID_cold_2();
        goto LABEL_14;
      }

      CFRelease(v2);
      v9 = 0;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
      v9 = v12;
      CFRelease(v2);
      if (!v6)
      {
        return v9;
      }
    }

    v10 = v6;
    goto LABEL_20;
  }

LABEL_16:
  figClusterSynchManager_ensureStopped();
  return 4294954514;
}

uint64_t _FigClusterSynchronizationManagerBonjourQueryRegisterClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void _FigClusterSynchronizationManagerBonjourQueryFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    DNSServiceRefDeallocate(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    DNSServiceRefDeallocate(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    DNSServiceRefDeallocate(v5);
  }
}

void figClusterSynchManager_srvInfoCallBack(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, void *a11)
{
  v14 = a11;
  v40[134] = *MEMORY[0x1E69E9840];
  sdRef = 0;
  bzero(&__s, 0x431uLL);
  if (a4)
  {
    figClusterSynchManager_srvInfoCallBack_cold_1(a4, v15, v16, v17, v18, v19, v20, v21, v36, cf, SHIDWORD(cf), sdRef);
  }

  else
  {
    if (a8 < 7 || (a2 & 2) == 0 || !a9 || !a11 || a11[4])
    {
      goto LABEL_32;
    }

    v23 = a9 + 6;
    v22 = *(a9 + 6);
    if (!*(a9 + 6))
    {
      p_s = v40;
      __s = 46;
      goto LABEL_24;
    }

    v24 = 0;
    p_s = &__s;
    v26 = 1004;
    v27 = a9 + 6;
LABEL_9:
    if (v24 + 1 + v22 <= 0xFE && v22 <= 0x3F && v26 >= v22)
    {
      v28 = v27 + v22;
      v29 = p_s;
      while (1)
      {
        v31 = *++v27;
        v30 = v31;
        if (v31 == 92 || v30 == 46)
        {
          *v29++ = 92;
        }

        else if (v30 <= 0x20)
        {
          *v29 = 12380;
          v33 = (205 * v30) >> 11;
          v32 = v29 + 3;
          v29[2] = v33 | 0x30;
          LOBYTE(v30) = (v30 - 10 * v33) | 0x30;
          goto LABEL_17;
        }

        v32 = v29;
LABEL_17:
        *v32 = v30;
        v29 = v32 + 1;
        if (v27 >= v28)
        {
          v32[1] = 0;
          v26 -= strlen(p_s);
          v24 += 1 + *(v23 + v24);
          p_s = v32 + 2;
          v32[1] = 46;
          v27 = v23 + v24;
          v22 = *(v23 + v24);
          if (!*(v23 + v24))
          {
LABEL_24:
            *p_s = 0;
            break;
          }

          goto LABEL_9;
        }
      }
    }

    v34 = if_nametoindex("awdl0");
    v14 = a11;
    v35 = CFRetain(a11);
    if (DNSServiceGetAddrInfo(&sdRef, 0x100000u, v34, 2u, &__s, figClusterSynchManager_addressInfoCallBack, v35))
    {
      figClusterSynchManager_srvInfoCallBack_cold_2(a11);
    }

    else
    {
      if (!DNSServiceSetDispatchQueue(sdRef, qword_1ED4CAAE8))
      {
        a11[4] = sdRef;
        sdRef = 0;
        goto LABEL_28;
      }

      figClusterSynchManager_srvInfoCallBack_cold_3();
    }
  }

LABEL_32:
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  if (v14)
  {
LABEL_28:
    CFRelease(v14);
  }
}

void figClusterSynchManager_addressInfoCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *cf)
{
  if (a4 == -65791)
  {
    goto LABEL_30;
  }

  if (!a4)
  {
    if (!a6 || !cf)
    {
      goto LABEL_30;
    }

    if (*(a6 + 1) == 30)
    {
      v10 = cf[3];
      memset(v20, 0, 24);
      *bytes = 0;
      v11 = getifaddrs(bytes);
      v12 = *bytes;
      if (v11 || !*bytes)
      {
LABEL_12:
        if (!v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = *bytes;
        while (1)
        {
          v14 = v13[3];
          if (*(v14 + 1) == 30 && !strcmp(v13[1], "awdl0"))
          {
            break;
          }

          v13 = *v13;
          if (!v13)
          {
            goto LABEL_12;
          }
        }

        *v20 = *v14;
        *&v20[12] = *(v14 + 12);
        if (!v12)
        {
          goto LABEL_14;
        }
      }

      MEMORY[0x19A8D58B0](v12);
LABEL_14:
      *bytes = *(a6 + 8);
      if (*bytes)
      {
        v15 = 0;
      }

      else
      {
        v15 = *&bytes[8] == 0;
      }

      if (!v15 && (*&v20[8] != *bytes || *&v20[16] != *&bytes[8]))
      {
        v17 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
        if (!CFSetContainsValue(qword_1ED4CAAF8, v17))
        {
          if (CFDictionaryGetValueIfPresent(qword_1ED4CAB18, v10, 0))
          {
            figClusterSynchManager_removePeerEndpoint(v10);
          }

          if (_MergedGlobals_58 == 1)
          {
            figClusterSynchManager_AddPort(v17);
          }

          CFSetAddValue(qword_1ED4CAAF8, v17);
          CFDictionaryAddValue(qword_1ED4CAB18, v10, v17);
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

LABEL_30:
      if (!cf)
      {
        return;
      }

      goto LABEL_31;
    }

    figClusterSynchManager_addressInfoCallBack_cold_1(a1, a2, a3, a4, a5, a6, a7, cf, v18, v19, SHIDWORD(v19), *v20);
LABEL_31:
    CFRelease(cf);
    return;
  }

  figClusterSynchManager_addressInfoCallBack_cold_2(a4, a2, a3, a4, a5, a6, a7, cf, v18, v19, SHIDWORD(v19), *v20);
  if (cf)
  {
    goto LABEL_31;
  }
}

uint64_t figClusterSynchManager_DeferredInitOnce()
{
  v16 = *MEMORY[0x1E69E9840];
  out_token = 0;
  v0 = dlopen("/System/Library/PrivateFrameworks/APTransport.framework/APTransport", 4);
  if (v0)
  {
    v8 = v0;
    off_1ED4CAB28 = dlsym(v0, "APConnectivityHelperCreate");
    if (off_1ED4CAB28)
    {
      sAPConnectivityHelperUpdateTrafficRegistration = dlsym(v8, "APConnectivityHelperUpdateTrafficRegistration");
      if (sAPConnectivityHelperUpdateTrafficRegistration)
      {
        goto LABEL_4;
      }

      v11 = 340;
    }

    else
    {
      v11 = 339;
    }
  }

  else
  {
    v11 = 344;
  }

  figClusterSynchManager_DeferredInitOnce_cold_1(v11, v1, v2, v3, v4, v5, v6, v7, v12, v13, SHIDWORD(v13), v14);
LABEL_4:
  gManagerWorkSemaphore = dispatch_semaphore_create(0);
  qword_1ED4CAB30 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  notify_register_dispatch("com.apple.airplay.prefsChanged", &out_token, qword_1ED4CAAE8, &__block_literal_global_49);
  return figClusterSynchManager_updateMyClusterID();
}

uint64_t OUTLINED_FUNCTION_2_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return _os_log_send_and_compose_impl(a1, 0, va, 128, a5, v15, v16, a8);
}

uint64_t OUTLINED_FUNCTION_4_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_10_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_14_27(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

unint64_t ADTSGetFrameSize(uint64_t a1)
{
  HIDWORD(v1) = *(a1 + 3);
  LODWORD(v1) = bswap32(*(a1 + 4));
  return (v1 >> 21) & 0x1FFF;
}

uint64_t ADTSGetChannelLayout(uint64_t a1)
{
  v1 = ((*(a1 + 3) >> 6) & 0xFFFFFFFB | (4 * (*(a1 + 2) & 1))) - 1;
  if (v1 > 6)
  {
    return 6619138;
  }

  else
  {
    return dword_196E77320[v1];
  }
}

uint64_t ADTSGetADTSHeaderSize(uint64_t a1)
{
  if (*(a1 + 1))
  {
    return 7;
  }

  else
  {
    return 9;
  }
}

uint64_t FigSCCFormatWriterCreateWithByteStream(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a2)
  {
    FigSCCFormatWriterCreateWithByteStream_cold_2(&v14);
    return LODWORD(v14.value);
  }

  if (!a4)
  {
    FigSCCFormatWriterCreateWithByteStream_cold_1(&v14);
    return LODWORD(v14.value);
  }

  FigFormatWriterGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = cf;
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Mutable = CFArrayCreateMutable(a1, 1, 0);
    *(DerivedStorage + 88) = Mutable;
    if (Mutable)
    {
      if (a1)
      {
        v11 = CFRetain(a1);
      }

      else
      {
        v11 = 0;
      }

      *DerivedStorage = v11;
      *(DerivedStorage + 16) = CFRetain(a2);
      CMTimeMake(&v14, 1001, 30000);
      v7 = 0;
      *(DerivedStorage + 28) = v14;
      *(DerivedStorage + 52) = 30;
      *(DerivedStorage + 56) = 0;
      *(DerivedStorage + 84) = -1;
      *a4 = cf;
      return v7;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14.value, v14.timescale, LODWORD(v14.epoch));
    v7 = v13;
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t sccFormatWriter_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v2 = DerivedStorage;
    v3 = *(DerivedStorage + 88);
    if (v3)
    {
      v4 = *v2;
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 88), i);
          CFAllocatorDeallocate(v4, ValueAtIndex);
        }
      }

      v9 = *(v2 + 88);
      if (v9)
      {
        CFRelease(v9);
        *(v2 + 88) = 0;
      }
    }

    v10 = *(v2 + 16);
    if (v10)
    {
      CFRelease(v10);
      *(v2 + 16) = 0;
    }

    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }

    *(v2 + 8) = 1;
  }

  return 0;
}

__CFString *sccFormatWriter_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    v4 = CFCopyDescription(v3);
    CFStringAppendFormat(Mutable, 0, @"<SCCFormatWriter: stream<%@>", v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"<SCCFormatWriter: stream<%@>", 0);
  }

  return Mutable;
}

double sccFormatWriter_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v9 = DerivedStorage;
      if (*(DerivedStorage + 8))
      {
        sccFormatWriter_CopyProperty_cold_1(&v12);
      }

      else if (FigCFEqual())
      {
        v12 = *(v9 + 60);
        *a4 = CMTimeCopyAsDictionary(&v12, a3);
      }

      else
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "< SCCFormatWriter >", 671, v4);
      }
    }

    else
    {
      sccFormatWriter_CopyProperty_cold_2(&v12);
    }
  }

  else
  {
    sccFormatWriter_CopyProperty_cold_3(&v12);
  }

  return result;
}

void sccFormatWriter_SetProperty(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(DerivedStorage + 8);
    emitter = fig_log_get_emitter();
    if (v5)
    {
      v7 = 4294954511;
      v8 = 684;
    }

    else
    {
      v7 = 4294954512;
      v8 = 686;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v7, "< SCCFormatWriter >", v8, v2);
  }

  else
  {
    sccFormatWriter_SetProperty_cold_1(&v9);
  }
}

uint64_t sccFormatWriter_AddTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 88);
  if (!v7)
  {
    if (a4)
    {
      v9 = 0;
      goto LABEL_7;
    }

LABEL_12:
    sccFormatWriter_AddTrack_cold_5(&v12);
    return v12;
  }

  Count = CFArrayGetCount(v7);
  if (!a4)
  {
    goto LABEL_12;
  }

  v9 = Count;
  if (Count >= 1)
  {
    sccFormatWriter_AddTrack_cold_1(&v12);
    return v12;
  }

LABEL_7:
  if (a2 != 1668047728)
  {
    sccFormatWriter_AddTrack_cold_2(&v12);
    return v12;
  }

  if (*(DerivedStorage + 8))
  {
    sccFormatWriter_AddTrack_cold_3(&v12);
    return v12;
  }

  v10 = MEMORY[0x19A8CC720](*DerivedStorage, 8, 0x100004000313F17, 0);
  if (!v10)
  {
    sccFormatWriter_AddTrack_cold_4(&v12);
    return v12;
  }

  *v10 = 0;
  CFArrayAppendValue(*(DerivedStorage + 88), v10);
  result = 0;
  *a4 = v9 + 1;
  return result;
}

void sccFormatWriter_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v9 = DerivedStorage;
      if (*(DerivedStorage + 8))
      {
        sccFormatWriter_CopyTrackProperty_cold_1(&v13);
      }

      else if (FigCFEqual())
      {
        v10 = MEMORY[0x1E695E4D0];
        if (!*(v9 + 56))
        {
          v10 = MEMORY[0x1E695E4C0];
        }

        if (*v10)
        {
          v11 = CFRetain(*v10);
        }

        else
        {
          v11 = 0;
        }

        *a5 = v11;
      }

      else
      {
        emitter = fig_log_get_emitter();

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "< SCCFormatWriter >", 705, v5);
      }
    }

    else
    {
      sccFormatWriter_CopyTrackProperty_cold_2(&v14);
    }
  }

  else
  {
    sccFormatWriter_CopyTrackProperty_cold_3(&v15);
  }
}

double sccFormatWriter_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, const __CFBoolean *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = DerivedStorage;
    if (*(DerivedStorage + 8))
    {
      sccFormatWriter_SetTrackProperty_cold_1(&v12);
    }

    else if (FigCFEqual())
    {
      if (a4 && (v9 = CFGetTypeID(a4), v9 == CFBooleanGetTypeID()))
      {
        *(v8 + 56) = CFBooleanGetValue(a4);
      }

      else
      {
        sccFormatWriter_SetTrackProperty_cold_2(&v13);
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "< SCCFormatWriter >", 726, v4);
    }
  }

  else
  {
    sccFormatWriter_SetTrackProperty_cold_3(&v14);
  }

  return result;
}

uint64_t sccFormatWriter_AddSampleBufferToTrack(uint64_t a1, int a2, opaqueCMSampleBuffer *a3)
{
  v12[3] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = *(DerivedStorage + 88);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v7 = (a2 - 1);
  if (!a3)
  {
    sccFormatWriter_AddSampleBufferToTrack_cold_3(v12);
    return LODWORD(v12[0]);
  }

  if (a2 < 1 || Count <= v7)
  {
    sccFormatWriter_AddSampleBufferToTrack_cold_2(v12);
    return LODWORD(v12[0]);
  }

  if (*(DerivedStorage + 8))
  {
    sccFormatWriter_AddSampleBufferToTrack_cold_1(v12);
    return LODWORD(v12[0]);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 88), v7);
  refcon[0] = DerivedStorage;
  refcon[1] = ValueAtIndex;
  if (*(DerivedStorage + 24))
  {
    return CMSampleBufferCallForEachSample(a3, sccFormatWriterEachSampleCallback, refcon);
  }

  strcpy(v12, "Scenarist_SCC V1.0");
  v11 = 0;
  result = CMByteStreamAppend();
  if (!result)
  {
    LODWORD(v11) = 168626701;
    v12[0] = 0;
    result = CMByteStreamAppend();
    if (!result)
    {
      *(DerivedStorage + 24) = 1;
      return CMSampleBufferCallForEachSample(a3, sccFormatWriterEachSampleCallback, refcon);
    }
  }

  return result;
}

uint64_t sccFormatWriter_Flush(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 0;
  }

  sccFormatWriter_Flush_cold_1(&v2);
  return v2;
}

uint64_t sccFormatWriter_WriteHeader(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 0;
  }

  sccFormatWriter_WriteHeader_cold_1(&v2);
  return v2;
}

uint64_t sccFormatWriter_BeginSession(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 0;
  }

  sccFormatWriter_BeginSession_cold_1(&v2);
  return v2;
}

uint64_t sccFormatWriter_EndSession(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 0;
  }

  sccFormatWriter_EndSession_cold_1(&v2);
  return v2;
}

uint64_t sccFormatWriterEachSampleCallback(opaqueCMSampleBuffer *a1, uint64_t a2, uint64_t *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v4 = a3[1];
  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  blockBufferOut = 0;
  if (!DataBuffer)
  {
    return 0;
  }

  v7 = DataBuffer;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  memset(&v68, 0, sizeof(v68));
  CMSampleBufferGetOutputPresentationTimeStamp(&v68, a1);
  SampleSize = CMSampleBufferGetSampleSize(a1, 0);
  dataPointerOut = 0;
  totalLengthOut = 0;
  if (!FormatDescription)
  {
    sccFormatWriterEachSampleCallback_cold_8(&time1);
    goto LABEL_104;
  }

  if ((v68.flags & 1) == 0)
  {
    sccFormatWriterEachSampleCallback_cold_7(&time1);
    goto LABEL_104;
  }

  if (!SampleSize)
  {
    sccFormatWriterEachSampleCallback_cold_6(&time1);
    goto LABEL_104;
  }

  LODWORD(time1.value) = 0;
  LODWORD(time2.value) = 0;
  FigClosedCaptionGetClosedCaptionServiceFormatAndServiceIndexFromFormatDescription(FormatDescription, &time1, &time2);
  if (DataPointer)
  {
    goto LABEL_38;
  }

  if (LODWORD(time2.value))
  {
    v12 = LODWORD(time1.value) == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    value = 1;
  }

  else
  {
    value = time2.value;
  }

  if (LODWORD(time2.value) && LODWORD(time1.value) && LODWORD(time1.value) != 1681272888)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54, v55, v56);
    goto LABEL_38;
  }

  if (*v4)
  {
    if (MediaSubType != *v4)
    {
      sccFormatWriterEachSampleCallback_cold_1(&time1);
      goto LABEL_104;
    }
  }

  else
  {
    *v4 = MediaSubType;
  }

  v15 = v4[1];
  if (v15)
  {
    if (value != v15)
    {
      sccFormatWriterEachSampleCallback_cold_2(&time1);
      goto LABEL_104;
    }
  }

  else
  {
    v4[1] = value;
  }

  time1 = **&MEMORY[0x1E6960CC0];
  time2 = v68;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    sccFormatWriterEachSampleCallback_cold_5(&time1);
    goto LABEL_104;
  }

  CMTimeMake(&time1, 360000, 1);
  time2 = v68;
  if ((CMTimeCompare(&time2, &time1) & 0x80000000) == 0)
  {
    sccFormatWriterEachSampleCallback_cold_4(&time1);
    goto LABEL_104;
  }

  if (!CMBlockBufferIsRangeContiguous(v7, 0, 0))
  {
    DataPointer = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v7, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut);
    if (DataPointer)
    {
      goto LABEL_38;
    }

    v7 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(v7, 0, 0, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_38;
  }

  v16 = dataPointerOut;
  v17 = totalLengthOut;
  v65 = v68;
  time1 = v68;
  v18 = (v5 + 28);
  v19 = CMTimeGetSeconds(&time1) * (*(v5 + 36) / *(v5 + 28));
  v20 = llroundf(v19);
  v21 = *(v5 + 84);
  if (v21 != -1 && v21 >= v20)
  {
    value_low = 4294954663;
    goto LABEL_109;
  }

  __str.timescale = 0;
  __str.value = 0;
  v70.value = 0;
  v61 = v20;
  v60 = (v5 + 28);
  if (!*(v5 + 56) || (CMTimeMake(&time1, 1001, 30000), *&time2.value = *v18, time2.epoch = *(v5 + 44), CMTimeCompare(&time1, &time2)) && (CMTimeMake(&time1, 100, 2997), *&time2.value = *v18, time2.epoch = *(v5 + 44), CMTimeCompare(&time1, &time2)))
  {
    v22 = *(v5 + 52);
    v23 = 58;
    v24 = v20;
  }

  else
  {
    v22 = *(v5 + 52);
    v25 = 600 * v22 - 18;
    v26 = 18 * (v20 / v25);
    v27 = v20 % v25;
    v28 = __OFSUB__(v27, 60 * v22);
    v29 = v27 - 60 * v22;
    if (v29 < 0 == v28)
    {
      v26 += 2 * (v29 / (60 * v22 - 2)) + 2;
    }

    v24 = v26 + v20;
    v23 = 59;
  }

  snprintf(&__str, 0xCuLL, "%02d:%02d:%02d%c%02d", ((v24 / v22) / 16), ((v24 / v22 / 60) % 60), (v24 / v22 % 60), v23, (v24 % v22));
  strlen(&__str);
  DataPointer = CMByteStreamAppend();
  if (DataPointer)
  {
LABEL_38:
    value_low = DataPointer;
    goto LABEL_109;
  }

  if (MediaSubType != 1635017571)
  {
    if (MediaSubType != 1664495672)
    {
      value_low = 4294954662;
      goto LABEL_109;
    }

    if ((value - 3) >= 2)
    {
      v30 = 1667522932;
    }

    else
    {
      v30 = 1667527730;
    }

    v57 = v5;
    if (v17 < 9)
    {
      goto LABEL_106;
    }

    v31 = 0;
    v32 = 0;
    v33 = *(v5 + 16);
    v58 = v30;
    while (1)
    {
      v34 = bswap32(*v16);
      if (v34 < 8 || v17 < v34)
      {
        value_low = 4294954659;
        goto LABEL_109;
      }

      if (v30 == bswap32(*(v16 + 1)))
      {
        v36 = v34 - 8;
        if (v34 != 8)
        {
          break;
        }
      }

LABEL_69:
      v16 += v34;
      v17 -= v34;
      if (v17 <= 8)
      {
        goto LABEL_107;
      }
    }

    v62 = v16;
    v37 = 0;
    if (v32)
    {
      v38 = 32;
    }

    else
    {
      v38 = 9;
    }

    while (1)
    {
      LOWORD(time2.value) = 0;
      if (v37 + 1 >= v36)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      __memcpy_chk();
      if (v37 + 1 >= v36)
      {
        BYTE1(time2.value) = 0x80;
      }

      LOBYTE(__str.value) = v38;
      time1.value = 0;
      DataPointer = CMByteStreamAppend();
      if (DataPointer)
      {
        goto LABEL_38;
      }

      DataPointer = sccFormatWriterWriteBytePair(v33, LOBYTE(time2.value), BYTE1(time2.value));
      if (DataPointer)
      {
        goto LABEL_38;
      }

      ++v31;
      v37 += v39;
      v38 = 32;
      if (v37 >= v36)
      {
        v32 = 1;
        v16 = v62;
        v30 = v58;
        goto LABEL_69;
      }
    }
  }

  v57 = v5;
  if (v17 < 8)
  {
LABEL_106:
    v31 = 0;
LABEL_107:
    LODWORD(time2.value) = 168626701;
    time1.value = 0;
    value_low = CMByteStreamAppend();
    if (!value_low)
    {
      time2 = *v60;
      memset(&time1, 0, sizeof(time1));
      CMTimeMultiply(&time1, &time2, v31);
      time2 = v65;
      __str = time1;
      CMTimeAdd(&v70, &time2, &__str);
      *(v57 + 60) = v70;
      *(v57 + 84) = v61 + v31 - 1;
    }

    goto LABEL_109;
  }

  v31 = 0;
  v40 = 0;
  v41 = *(v5 + 16);
  v42 = value - 3;
  while (*v16 != 71 || v16[1] != 65 || v16[2] != 57 || v16[3] != 52 || v16[4] != 3)
  {
    ++v16;
    --v17;
LABEL_96:
    if (v17 <= 7)
    {
      goto LABEL_107;
    }
  }

  v43 = v16[5];
  v44 = v43 & 0x1F;
  if (v17 - 7 >= 3 * (v43 & 0x1F))
  {
    v63 = v16 + 5;
    v59 = 3 * (v43 & 0x1F);
    if ((v16[5] & 0x40) != 0 && (v43 & 0x1F) != 0)
    {
      v45 = 0;
      v46 = (v16 + 9);
      v64 = v43 & 0x1F;
      do
      {
        v47 = *(v46 - 2);
        if ((v47 & 3) <= 1 && v47 >= 0xFC && v42 < 2 != ((v47 & 3) != 1))
        {
          v49 = *(v46 - 1);
          v50 = *v46;
          if (v40)
          {
            v51 = 32;
          }

          else
          {
            v51 = 9;
          }

          LOBYTE(time2.value) = v51;
          time1.value = 0;
          DataPointer = CMByteStreamAppend();
          if (DataPointer)
          {
            goto LABEL_38;
          }

          DataPointer = sccFormatWriterWriteBytePair(v41, v49, v50);
          if (DataPointer)
          {
            goto LABEL_38;
          }

          ++v31;
          v40 = 1;
          v44 = v64;
        }

        ++v45;
        v46 += 3;
      }

      while (v45 < v44);
    }

    v52 = (v59 + 2);
    v16 = &v63[v52];
    v17 = v17 - 5 - v52;
    goto LABEL_96;
  }

  if (sccFormatWriterEachSampleCallback_cold_3(&time1))
  {
    goto LABEL_106;
  }

LABEL_104:
  value_low = LODWORD(time1.value);
LABEL_109:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return value_low;
}

uint64_t sccFormatWriterWriteBytePair(uint64_t a1, int a2, int a3)
{
  v5 = 0;
  *__str = 0;
  snprintf(__str, 5uLL, "%02x%02x", a2, a3);
  strlen(__str);
  return CMByteStreamAppend();
}

uint64_t FigMetricDownloadSummaryEventCreate(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, double a9, CFTypeRef *a10)
{
  ensureMetricEventTrace();
  if (a10)
  {
    FigMetricEventGetClassID();
    v19 = CMDerivedObjectCreate();
    if (!v19)
    {
      v20 = a7;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = 0x100000000000000;
      if (a2)
      {
        v22 = CFRetain(a2);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v22 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 8) = v22;
      if (a3)
      {
        v24 = CFRetain(a3);
      }

      else
      {
        v24 = 0;
      }

      *(DerivedStorage + 16) = v24;
      if (a4)
      {
        v25 = CFRetain(a4);
      }

      else
      {
        v25 = 0;
      }

      *(DerivedStorage + 24) = v25;
      *(DerivedStorage + 32) = a5;
      *(DerivedStorage + 40) = a6;
      *(DerivedStorage + 48) = v20;
      *(DerivedStorage + 56) = a9;
      if (a8)
      {
        v26 = CFRetain(a8);
      }

      else
      {
        v26 = 0;
      }

      v19 = 0;
      *(DerivedStorage + 64) = v26;
      *a10 = 0;
    }
  }

  else
  {
    FigMetricDownloadSummaryEventCreate_cold_1(&v28);
    return v28;
  }

  return v19;
}

void meds_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[2];
  if (v5)
  {

    CFRelease(v5);
  }
}

CFTypeRef meds_copySessionID(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 16);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t DDPlusGetSyncFrameInfo(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a2 = *(a1 + 2) >> 6;
  *a3 = (*(a1 + 2) >> 3) & 7;
  return 0;
}

uint64_t DolbyCreateChannelLayout(uint64_t a1, void *a2, UInt32 *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  if (*(a1 + 16))
  {
    v5 = *(a1 + 14);
    if (v5 <= 3)
    {
      if (*(a1 + 15))
      {
        v14 = 9764866;
      }

      else
      {
        v14 = 6553601;
      }

      if (*(a1 + 15))
      {
        v15 = 8716291;
      }

      else
      {
        v15 = 6619138;
      }

      if (*(a1 + 15))
      {
        v16 = 9961476;
      }

      else
      {
        v16 = 9830403;
      }

      if (v5 == 3)
      {
        v17 = v16;
      }

      else
      {
        v17 = 6619138;
      }

      if (v5 == 2)
      {
        v17 = v15;
      }

      if (v5 == 1)
      {
        v11 = v14;
      }

      else
      {
        v11 = v17;
      }
    }

    else
    {
      if (*(a1 + 15))
      {
        v6 = 9043973;
      }

      else
      {
        v6 = 8650756;
      }

      if (*(a1 + 15))
      {
        v7 = 8060934;
      }

      else
      {
        v7 = 7798789;
      }

      if (v5 != 7)
      {
        v7 = 6619138;
      }

      if (v5 != 6)
      {
        v6 = v7;
      }

      if (*(a1 + 15))
      {
        v8 = 10027012;
      }

      else
      {
        v8 = 8585219;
      }

      if (*(a1 + 15))
      {
        v9 = 10092549;
      }

      else
      {
        v9 = 9895940;
      }

      if (v5 == 5)
      {
        v10 = v9;
      }

      else
      {
        v10 = 6619138;
      }

      if (v5 == 4)
      {
        v10 = v8;
      }

      if (*(a1 + 14) <= 5u)
      {
        v11 = v10;
      }

      else
      {
        v11 = v6;
      }
    }

    goto LABEL_52;
  }

  v12 = *(a1 + 12);
  if (v12 == 53505 || v12 == 41217)
  {
    if (v12 == 41217)
    {
      v11 = 10027012;
    }

    else
    {
      v11 = 10092549;
    }

LABEL_52:
    outPropertyData = v11;
    goto LABEL_53;
  }

  ioPropertyDataSize = 4;
  memset(__src, 0, sizeof(__src));
  v40 = 0;
  if ((v12 & 0x8000) == 0)
  {
    v20 = 0;
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v20 = 1;
  LODWORD(__src[0]) = 1;
  if ((v12 & 0x4000) != 0)
  {
LABEL_57:
    v21 = 20 * v20++;
    *(__src + v21) = 3;
  }

LABEL_58:
  if ((v12 & 0x2000) != 0)
  {
    v24 = 20 * v20++;
    *(__src + v24) = 2;
    if ((v12 & 0x1000) == 0)
    {
LABEL_60:
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_77;
    }
  }

  else if ((v12 & 0x1000) == 0)
  {
    goto LABEL_60;
  }

  v25 = 20 * v20++;
  *(__src + v25) = 5;
  if ((v12 & 0x800) == 0)
  {
LABEL_61:
    if ((v12 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_78;
  }

LABEL_77:
  v26 = 20 * v20++;
  *(__src + v26) = 6;
  if ((v12 & 1) == 0)
  {
LABEL_62:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_79;
  }

LABEL_78:
  v27 = 20 * v20++;
  *(__src + v27) = 4;
  if ((v12 & 0x400) == 0)
  {
LABEL_63:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(__src + 5 * v20) = 7;
  v28 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v28) = 8;
  if ((v12 & 0x200) == 0)
  {
LABEL_64:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(__src + 5 * v20) = 33;
  v29 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v29) = 34;
  if ((v12 & 0x100) == 0)
  {
LABEL_65:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_82;
  }

LABEL_81:
  v30 = 20 * v20++;
  *(__src + v30) = 9;
  if ((v12 & 0x80) == 0)
  {
LABEL_66:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_83;
  }

LABEL_82:
  v31 = 20 * v20++;
  *(__src + v31) = 12;
  if ((v12 & 0x40) == 0)
  {
LABEL_67:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(__src + 5 * v20) = 10;
  v32 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v32) = 11;
  if ((v12 & 0x20) == 0)
  {
LABEL_68:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(__src + 5 * v20) = 35;
  v33 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v33) = 36;
  if ((v12 & 0x10) == 0)
  {
LABEL_69:
    if ((v12 & 8) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(__src + 5 * v20) = 13;
  v34 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v34) = 15;
  if ((v12 & 8) == 0)
  {
LABEL_70:
    if ((v12 & 4) == 0)
    {
      goto LABEL_71;
    }

LABEL_87:
    *(__src + 5 * v20) = 38;
    v36 = v20 + 1;
    v20 += 2;
    *(__src + 5 * v36) = 39;
    if ((v12 & 2) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_86:
  v35 = 20 * v20++;
  *(__src + v35) = 14;
  if ((v12 & 4) != 0)
  {
    goto LABEL_87;
  }

LABEL_71:
  if ((v12 & 2) != 0)
  {
LABEL_72:
    v22 = 20 * v20++;
    *(__src + v22) = 37;
  }

LABEL_73:
  v23 = 20 * (v20 - 1) + 32;
  *a3 = v23;
  v18 = malloc_type_calloc(1uLL, v23, 0x1000040E0EAB150uLL);
  *v18 = 0;
  v18[2] = v20;
  memcpy(v18 + 3, __src, 20 * v20);
  if (AudioFormatGetProperty(0x636D7074u, *a3, v18, &ioPropertyDataSize, &outPropertyData))
  {
    goto LABEL_54;
  }

  free(v18);
LABEL_53:
  v18 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  *v18 = outPropertyData;
  *a3 = 32;
LABEL_54:
  *a2 = v18;
  return 0;
}